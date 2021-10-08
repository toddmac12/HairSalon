using System.Collections.Generic;
namespace HairSalon.Models
{
  public class Stylist
  {
    public override string ToString()
{
return $"id:{StylistId} | name:{StylistName} | description:{StylistDescription}";
}
public Stylist()
{
this.Clients = new HashSet<Client>();
}
public int StylistId {get;set;}
public string StylistName{get;set;}
public string StylistDescription{get;set;}
public virtual ICollection<Client> Clients{get;set;}
}  

}