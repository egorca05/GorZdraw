using GorZdraw.ClassFolder;
using GorZdraw.DataFolder;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
using static System.Net.Mime.MediaTypeNames;

namespace GorZdraw.PageFolder.AdminFolder
{
    /// <summary>
    /// Логика взаимодействия для EditProductPage.xaml
    /// </summary>
    public partial class EditProductPage : Page
    {
        public EditProductPage(Product Product)
        {
            InitializeComponent();
            DataContext = Product;
            СategoryCb.ItemsSource = DBEntities.Getcontext()
                .Category.ToList();
            ManufacturerCb.ItemsSource = DBEntities.Getcontext()
                .ManufacturerAndQualityControl.ToList();
            RecipeCb.ItemsSource = DBEntities.Getcontext()
                .Recipe.ToList();
            SuppliersCb.ItemsSource = DBEntities.Getcontext()
                .Suppliers.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            Product product = DBEntities.Getcontext().Product
                .FirstOrDefault(s => s.IdProduct == VariableClass.IdProduct);
            product.NameProduct = NameTb.Text;
            product.Composition = CompositionTb.Text;
            product.ReleaseForm = ReleaseFormTb.Text;
            product.IdСategory = Int32.Parse(СategoryCb.SelectedValue.ToString());
            product.IdManufacturer = Int32.Parse(ManufacturerCb.SelectedValue.ToString());
            product.IdSuppliers = Int32.Parse(SuppliersCb.SelectedValue.ToString());
            product.DosageForm = DosageFormTb.Text;
            product.ReleaseDate = Convert.ToDateTime(ReleaseDateDp.Text);
            product.ExpirationDate = Convert.ToDateTime(ExpirationDateDp.Text);
            product.Price = Convert.ToDecimal(PriceTb.Text);

            product.Indications = IndicationsTb.Text;
            product.Contraindications = ContraindicationsTb.Text;
            product.MethodOfAdministrationAndDosage = MethodOfAdministrationAndDosageTb.Text;
            product.SideEffects = SideEffectsTb.Text;
            product.Overdose = OverdoseTb.Text;
            product.DrugInteraction = DrugInteractionTb.Text;
            product.SpecialInstructions = SpecialInstructionsTb.Text;
            product.StorageConditions = StorageConditionsTb.Text;
            product.IdRecipe = Int32.Parse(RecipeCb.SelectedValue.ToString());
            product.Quantity = Int32.Parse(QuantityTb.Text);

            DBEntities.Getcontext().SaveChanges();
            MBClass.InformationMB("Успешно");
        }
    }
}
