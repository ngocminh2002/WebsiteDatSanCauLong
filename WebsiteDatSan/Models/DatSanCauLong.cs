using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WebsiteDatSan.Models
{
    public partial class DatSanCauLong : DbContext
    {
        public DatSanCauLong()
            : base("name=DatSanCauLong")
        {
        }

        public virtual DbSet<AspNetRoles> AspNetRoles { get; set; }
        public virtual DbSet<AspNetUserClaims> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogins> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUsers> AspNetUsers { get; set; }
        public virtual DbSet<ChiTiet_DatSan> ChiTiet_DatSan { get; set; }
        public virtual DbSet<DatSan> DatSan { get; set; }
        public virtual DbSet<LoaiSan> LoaiSan { get; set; }
        public virtual DbSet<San> San { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<DatSan>()
                .HasMany(e => e.ChiTiet_DatSan)
                .WithRequired(e => e.DatSan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiSan>()
                .HasMany(e => e.San)
                .WithRequired(e => e.LoaiSan)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<San>()
                .Property(e => e.GIaTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<San>()
                .HasMany(e => e.ChiTiet_DatSan)
                .WithRequired(e => e.San)
                .WillCascadeOnDelete(false);
        }
    }
}
