// Disclaimer
// Dieser Quellcode ist als Vorlage oder als Ideengeber gedacht. Er kann frei und ohne 
// Auflagen oder Einschränkungen verwendet oder verändert werden.
// Jedoch wird keine Garantie übernommen, dass eine Funktionsfähigkeit mit aktuellen und 
// zukünftigen API-Versionen besteht. Der Autor übernimmt daher keine direkte oder indirekte 
// Verantwortung, wenn dieser Code gar nicht oder nur fehlerhaft ausgeführt wird.
// Für Anregungen und Fragen stehe ich jedoch gerne zur Verfügung.

// Thorsten Kansy, www.dotnetconsulting.eu

using Newtonsoft.Json;

namespace dotnetconsulting.Samples.Domains;

public class SpeakerSession
{
    public int Id { get; set; }

    public int SpeakerId { get; set; }

    public virtual Speaker Speaker { get; set; }

    public int SessionId { get; set; }

    public virtual Session Session { get; set; }

    public string Tag { get; set; }

    public DateTime Created { get; set; }

    public DateTime? Updated { get; set; }

    public bool IsDeleted { get; set; }

    public override string ToString()
    {
        JsonSerializerSettings settings = new()
        {
            ReferenceLoopHandling = ReferenceLoopHandling.Ignore,
            Formatting = Formatting.Indented
        };

        return JsonConvert.SerializeObject(this, settings);
    }
}