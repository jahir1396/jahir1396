//using System;
//using DotLiquid;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace Sistema.Proyecto.Comun
//{
//    public static class PlantillaManager
//    {
//        public static string LlenarPlantilla(string html, object objeto)
//        {
//            RegisterViewModel(objeto.GetType());
//            var template = Template.Parse(html);
//            return RenderViewModel(template, objeto);
//        }

//        private static void RegisterViewModel(Type rootType)
//        {
//            rootType
//                .Assembly
//                .GetTypes()
//                .Where(t => t.Namespace == rootType.Namespace)
//                .ToList()
//                .ForEach(RegisterSafeTypeWithAllProperties);
//        }

//        private static void RegisterSafeTypeWithAllProperties(Type type)
//        {
//            Template.RegisterSafeType(type,
//                type
//                .GetProperties()
//                .Select(p => p.Name)
//                .ToArray());
//        }

//        private static string RenderViewModel(Template template, object root)
//        {
//            return template.Render(
//                Hash.FromAnonymousObject(root, true));
//        }
//    }
//}
