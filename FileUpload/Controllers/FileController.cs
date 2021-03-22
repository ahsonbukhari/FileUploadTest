using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FileUpload.Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FileController : ControllerBase
    {
        [HttpPost("upload", Name = "upload")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(typeof(string), StatusCodes.Status400BadRequest)]
        public async Task<IActionResult> UploadFile(
             IFormFile file,
             CancellationToken cancellationToken)
        {
            if (CheckIfPDFFile(file))
            {
                await WriteFile(file);
            }
            else
            {
                return BadRequest(new { message = "Invalid file extension" });
            }

            return Ok();
        }

        private bool CheckIfPDFFile(IFormFile file)
        {
            var extension = "." + file.FileName.Split('.')[file.FileName.Split('.').Length - 1];
            return (extension == ".pdf" || extension == ".pdf"); // Change the extension based on your need
        }

        private async Task<bool> WriteFile(IFormFile file)
        {
            bool isSaveSuccess = false;
            string fileName;
            try
            {
                var extension = "." + file.FileName.Split('.')[file.FileName.Split('.').Length - 1];
                fileName = DateTime.Now.Ticks + extension; //Create a new Name for the file due to security reasons.

                long length = file.Length;

                using var fileStream = file.OpenReadStream();
                byte[] bytes = new byte[length];
                fileStream.Read(bytes, 0, (int)file.Length);


                var docService = new Domain.Service.DocumentService();
                docService.Upload(new Model.Document
                {
                    Name = fileName,
                    Location = "",
                    FileSize = int.Parse(file.Length.ToString()),
                    FileData = bytes
                });


                //var pathBuilt = Path.Combine(Directory.GetCurrentDirectory(), "Upload\\files");

                //if (!Directory.Exists(pathBuilt))
                //{
                //    Directory.CreateDirectory(pathBuilt);
                //}

                //var path = Path.Combine(Directory.GetCurrentDirectory(), "Upload\\files",
                //   fileName);

                //using (var stream = new FileStream(path, FileMode.Create))
                //{
                //    await file.CopyToAsync(stream);
                //}

                isSaveSuccess = true;
            }
            catch (Exception e)
            {
                //log error
            }

            return isSaveSuccess;
        }
    }
}