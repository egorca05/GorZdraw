﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GorZdraw.DataFolder
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBEntities : DbContext
    {
        private static DBEntities context;
        public DBEntities()
            : base("name=DBEntities")
        {
        }
        public static DBEntities Getcontext()
        {
            if (context == null)
                context = new DBEntities();
            return context;
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<City> City { get; set; }
        public virtual DbSet<Country> Country { get; set; }
        public virtual DbSet<LegalAddressMAQC> LegalAddressMAQC { get; set; }
        public virtual DbSet<LegalAddressOAC> LegalAddressOAC { get; set; }
        public virtual DbSet<LegalAddressPacker> LegalAddressPacker { get; set; }
        public virtual DbSet<Manufacturer> Manufacturer { get; set; }
        public virtual DbSet<ManufacturerAndQualityControl> ManufacturerAndQualityControl { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<OrganizationAcceptingClaims> OrganizationAcceptingClaims { get; set; }
        public virtual DbSet<Packer> Packer { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<Recipe> Recipe { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<Sell> Sell { get; set; }
        public virtual DbSet<Street> Street { get; set; }
        public virtual DbSet<Suppliers> Suppliers { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<User> User { get; set; }
    }
}
