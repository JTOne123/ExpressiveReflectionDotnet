﻿$data = [xml](Get-Content Package.nuspec);
$version = $data.package.metadata.version;

$assemblyPackage = 'ExpressiveReflection.' + $version + '.nupkg';
$symbolsPackage = 'ExpressiveReflection.' + $version + '.symbols.nupkg';
$sourcePackage = 'ExpressiveReflection.Sources.' + $version + '.nupkg';

if (!(test-path $assemblyPackage) -or !(Test-Path $sourcePackage) -or !(Test-Path $symbolsPackage)) {
	if (!(test-path $assemblyPackage)) {
		Write-Error ('Unable teo find assembly package ' + $assemblyPackage);
	}
	if (!(Test-Path $sourcePackage)) {
		Write-Error ('Unable to find source package ' + $sourcePackage);
	}
	if (!(Test-Path $symbolsPackage)) {
		Write-Error ('Unable to find symbols package ' + $symbolsPackage);
	}
	return;
} else {
	nuget push $assemblyPackage;
	nuget push $symbolsPackage;
	nuget push $sourcePackage;
}