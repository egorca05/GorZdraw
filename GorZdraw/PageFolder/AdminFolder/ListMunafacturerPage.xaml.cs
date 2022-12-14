using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для ListMunafacturerPage.xaml
    /// </summary>
    public partial class ListMunafacturerPage : Page
    {
        public ListMunafacturerPage()
        {
            InitializeComponent();
            ManufacturerDG.ItemsSource = DBEntities.Getcontext().Manufacturer
                .ToList().OrderBy(c => c.IdManufacturer);
        }

        private void Ref()
        {
            ManufacturerDG.ItemsSource = DBEntities.Getcontext().Manufacturer
                            .ToList().OrderBy(c => c.IdManufacturer);
        }

        private void DelBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ManufacturerDG.SelectedItem == null)
            {
                MBClass.ErrorMB("Выберите категорию для удаления");
            }
            else
            {
                try
                {
                    Manufacturer manufacturer = ManufacturerDG.SelectedItem as Manufacturer;
                    if (MBClass.QestionMB($"Удалить выбранную категорию?"))
                    {
                        DBEntities.Getcontext().Manufacturer.Remove(manufacturer);
                        DBEntities.Getcontext().SaveChanges();
                        Ref();
                    }
                }
                catch (Exception ex)
                {
                    MBClass.ErrorMB(ex);
                }
            }
        }

        private void EditBtn_Click(object sender, RoutedEventArgs e)
        {
            Manufacturer manufacturer = ManufacturerDG.SelectedItem as Manufacturer;
            VariableClass.IdManufacturer = manufacturer.IdManufacturer;
            this.NavigationService.Navigate(new EditMunafacturerPage(ManufacturerDG.SelectedItem as Manufacturer));
            Ref();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddMunafacturerPage());
            Ref();
        }
    }
}
