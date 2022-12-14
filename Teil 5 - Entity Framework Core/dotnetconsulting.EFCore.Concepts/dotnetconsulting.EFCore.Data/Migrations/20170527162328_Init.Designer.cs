using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using dotnetconsulting.EFCore.Data;
using dotnetconsulting.EFCore.Domains;

namespace dotnetconsulting.EFCore.Data.Migrations
{
    [DbContext(typeof(TechEventContext))]
    [Migration("20170527162328_Init")]
    partial class Init
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "1.1.2")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("dotnetconsulting.EFCore.Domains.Session", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Abstract");

                    b.Property<int>("Difficulty");

                    b.Property<int>("Duration");

                    b.Property<int?>("EventId");

                    b.Property<string>("Name");

                    b.Property<string>("Presenter");

                    b.Property<int>("SpeakerId");

                    b.Property<int>("TechEventId");

                    b.HasKey("Id");

                    b.HasIndex("TechEventId");

                    b.ToTable("Sessions");
                });

            modelBuilder.Entity("dotnetconsulting.EFCore.Domains.Speaker", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue("???")
                        .HasMaxLength(50)
                        .IsUnicode(false);

                    b.Property<string>("WebSite");

                    b.HasKey("Id");

                    b.ToTable("Speakers");
                });

            modelBuilder.Entity("dotnetconsulting.EFCore.Domains.SpeakerSession", b =>
                {
                    b.Property<int>("SessionId");

                    b.Property<int>("SpeakerId");

                    b.Property<string>("Tag")
                        .IsRequired()
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue("#TechEvent")
                        .HasMaxLength(20)
                        .IsUnicode(false);

                    b.HasKey("SessionId", "SpeakerId");

                    b.HasIndex("SpeakerId");

                    b.ToTable("SpeakerSession");
                });

            modelBuilder.Entity("dotnetconsulting.EFCore.Domains.TechEvent", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ImageUrl");

                    b.Property<string>("LocationCity");

                    b.Property<string>("LocationCountry");

                    b.Property<string>("Name");

                    b.Property<string>("OnlineUrl");

                    b.Property<decimal>("Price");

                    b.Property<DateTime>("Start");

                    b.HasKey("Id");

                    b.ToTable("TechEvents");
                });

            modelBuilder.Entity("dotnetconsulting.EFCore.Domains.Session", b =>
                {
                    b.HasOne("dotnetconsulting.EFCore.Domains.TechEvent", "TechEvent")
                        .WithMany("Sessions")
                        .HasForeignKey("TechEventId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("dotnetconsulting.EFCore.Domains.SpeakerSession", b =>
                {
                    b.HasOne("dotnetconsulting.EFCore.Domains.Session", "Session")
                        .WithMany("SpeakerSessions")
                        .HasForeignKey("SessionId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("dotnetconsulting.EFCore.Domains.Speaker", "Speaker")
                        .WithMany("SpeakerSessions")
                        .HasForeignKey("SpeakerId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
        }
    }
}
