﻿using BusinessObjects;
using DataAccessObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories
{
    public class ModelRepository : IModelRepository
    {
        public IEnumerable<TblModel> GetAllModels() => ModelDAO.Instance.GetAllModels();
    }
}
