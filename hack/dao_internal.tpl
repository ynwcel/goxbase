// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT. {TplCreatedAtDatetimeStr}
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
    "github.com/ynwcel/goxbase/internal/svcx"
)

// {TplTableNameCamelCase}Dao is the data access object for table {TplTableName}.
type {TplTableNameCamelCase}Dao struct {
	table   string          // table is the underlying table name of the DAO.
	group   string          // group is the database configuration group name of current DAO.
	columns {TplTableNameCamelCase}Columns // columns contains all the column names of Table for convenient usage.
}

// {TplTableNameCamelCase}Columns defines and stores column names for table {TplTableName}.
type {TplTableNameCamelCase}Columns struct {
	{TplColumnDefine}
}

// {TplTableNameCamelLowerCase}Columns holds the columns for table {TplTableName}.
var {TplTableNameCamelLowerCase}Columns = {TplTableNameCamelCase}Columns{
	{TplColumnNames}
}

// New{TplTableNameCamelCase}Dao creates and returns a new DAO object for table data access.
func New{TplTableNameCamelCase}Dao() *{TplTableNameCamelCase}Dao {
	return &{TplTableNameCamelCase}Dao{
		group:   "{TplGroupName}",
		table:   "{TplTableName}",
		columns: {TplTableNameCamelLowerCase}Columns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *{TplTableNameCamelCase}Dao) DB() gdb.DB {
	return svcx.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *{TplTableNameCamelCase}Dao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *{TplTableNameCamelCase}Dao) Columns() {TplTableNameCamelCase}Columns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *{TplTableNameCamelCase}Dao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *{TplTableNameCamelCase}Dao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *{TplTableNameCamelCase}Dao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}