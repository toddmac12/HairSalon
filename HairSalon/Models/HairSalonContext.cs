using Microsoft.EntityFrameworkCore;

namespace HairSalon.Models
{
  public class anthony_mcrae : DbContext
  {
    public virtual DbSet<Stylist> Stylists { get; set; }
    public DbSet<Client> Clients { get; set; }
    public anthony_mcrae(AddDbContextOptions options) : base(options){ }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
      optionsBuilder.UseLazyLoadingProxies();
    }
  }
}