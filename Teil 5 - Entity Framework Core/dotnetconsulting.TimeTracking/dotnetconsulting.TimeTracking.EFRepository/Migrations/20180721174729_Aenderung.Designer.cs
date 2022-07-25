﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using dotnetconsulting.TimeTracking.EFRepository.EntityFramework;

namespace dotnetconsulting.TimeTracking.EFRepository.Migrations
{
    [DbContext(typeof(TimeTrackingContext))]
    [Migration("20180721174729_Aenderung")]
    partial class Aenderung
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasDefaultSchema("TimeTracking")
                .HasAnnotation("ProductVersion", "2.1.1-rtm-30846")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("dotnetconsulting.TimeTracking.EFRepository.EntityFramework.Customer", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Comment")
                        .HasMaxLength(200)
                        .IsUnicode(false);

                    b.Property<string>("Displayname")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false);

                    b.Property<bool>("IsActive")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(true);

                    b.HasKey("Id");

                    b.ToTable("Customers");
                });

            modelBuilder.Entity("dotnetconsulting.TimeTracking.EFRepository.EntityFramework.Entry", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<TimeSpan?>("Break")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("time")
                        .HasDefaultValue(new TimeSpan(0, 0, 0, 0, 0));

                    b.Property<DateTime>("CreatedOrModified")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("datetime")
                        .HasDefaultValueSql("getdate()");

                    b.Property<DateTime>("Day")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("date")
                        .HasDefaultValueSql("getdate()");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasMaxLength(250)
                        .IsUnicode(false);

                    b.Property<TimeSpan>("End")
                        .HasColumnType("time");

                    b.Property<int>("OrderId");

                    b.Property<string>("Place")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false);

                    b.Property<TimeSpan>("Start")
                        .HasColumnType("time");

                    b.HasKey("Id");

                    b.HasIndex("OrderId");

                    b.ToTable("Entries");
                });

            modelBuilder.Entity("dotnetconsulting.TimeTracking.EFRepository.EntityFramework.Order", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime>("Created")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("date")
                        .HasDefaultValueSql("getdate()");

                    b.Property<int?>("CustomerId");

                    b.Property<string>("Description")
                        .HasMaxLength(50)
                        .IsUnicode(false);

                    b.Property<string>("OrderNr")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(false);

                    b.HasKey("Id");

                    b.HasIndex("CustomerId");

                    b.ToTable("Orders");
                });

            modelBuilder.Entity("dotnetconsulting.TimeTracking.EFRepository.EntityFramework.Entry", b =>
                {
                    b.HasOne("dotnetconsulting.TimeTracking.EFRepository.EntityFramework.Order", "Order")
                        .WithMany("Entires")
                        .HasForeignKey("OrderId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("dotnetconsulting.TimeTracking.EFRepository.EntityFramework.Order", b =>
                {
                    b.HasOne("dotnetconsulting.TimeTracking.EFRepository.EntityFramework.Customer", "Customer")
                        .WithMany("Orders")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
