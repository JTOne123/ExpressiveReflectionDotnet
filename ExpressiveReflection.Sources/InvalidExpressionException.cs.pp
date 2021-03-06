﻿using global::System;
using global::System.Collections.Generic;
using global::System.Linq;
using global::System.Linq.Expressions;
using global::System.Text;
using global::System.Threading.Tasks;

#if !EXPRESSIVE_REFLECTION_ASSEMBLY
namespace $rootnamespace$.lib {
#endif

namespace ExpressiveReflection
{
#if EXPRESSIVE_REFLECTION_ASSEMBLY
    public 
#endif
    class InvalidExpressionException : Exception
    {
        public InvalidExpressionException(string message, Expression expr, params Type[] options)
            : base(message +
                  (expr == null ? " received null expression " : " received expression of type " + expr.GetType().Name) +
                  (options == null ? "" : " Valid options include: " + string.Join(",", options.Select(o=>o.Name)))
               )
        {
        }
    }
}

#if !EXPRESSIVE_REFLECTION_ASSEMBLY
}
#endif

