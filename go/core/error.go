package core

type ColoradoInformationMarketplaceError struct {
	IsColoradoInformationMarketplaceError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewColoradoInformationMarketplaceError(code string, msg string, ctx *Context) *ColoradoInformationMarketplaceError {
	return &ColoradoInformationMarketplaceError{
		IsColoradoInformationMarketplaceError: true,
		Sdk:              "ColoradoInformationMarketplace",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *ColoradoInformationMarketplaceError) Error() string {
	return e.Msg
}
