namespace FileUpload.Model
{
    public class Document
    {
        public string Name { get; set; }
        public string Location { get; set; }
        public int FileSize { get; set; }
        public byte[] FileData { get; set; }
    }
}
