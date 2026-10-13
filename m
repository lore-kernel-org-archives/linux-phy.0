Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C015CC6B12
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 18:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oZ00s/90w25e+rmCUHioPgbA8Ovi8NG0MMAB0m5pWy8=; b=M8NwDnkB0uJNQs9FidIFSjKdvB
	d/5eQRipJedaiedRsMxBRWK33RIaDzXfZvYcegalwdJyZbsFtOg2Vm8ALNKC94o6b4BNazrFIKSQ/
	o6Ww4R3NhdYCUDC/6HCpORuLpmYQNJKcsmvpqdRuAoRixWV1QVwq186G593yuh8Si/M4l73Iqj1/9
	R9O/69YJ8f17otm+jQxmdQKHY3ObSEJLx9QDqgCagO3oj4lNDl6mp7fiv46HIrIODbXA4Qz3Wq8H9
	t4cwO806RKiE+nxOjxwr12h0mmlgHa6MTyN3HIx76yW0SjRH/RUCK9AkJTHwI1tcCv6kofpO6ntL4
	FpEinzOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGh4m-0000000DoWM-3POa;
	Tue, 13 Oct 2026 18:18:13 +0000
Received: from mail-southcentralusazon11012026.outbound.protection.outlook.com ([40.93.195.26] helo=SN4PR2101CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGh4j-0000000DoVu-2r3n
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 18:18:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jyxoo3jC5cH4ODDIMRZEl29v3XNUcZ66EH19V4/+JuG54f65aC3dEJD8Bf4o7KjQobBAOm+j9VJ1ml3loQ5yX5hC5rlVnCEvdhUbcLWWlJpjCvxZcxEzr3VXvU3COVQ0gXO28yW48QYiAoxQ64PGRy6/MmhVyo8VLWFrj27DqGoN27JagDdiDMnvU8MRi0hHRUVb1y2H2WjCZkEUdt2VpvgOgtgXglJghBk+Kx0w4AxmeYJLKLUDsxCVDyI/4FJWYTE365JOxDUOHJvyQzu1pQj2/mn6YPxsuwDGKr1EnfaGgUK76Uj0AsJe8N1fEk5MV8AzrNjAzuzFpIiY4pv+1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gi90tKNLYtIbmNNhZiqDE4uGUNB8sMet3Uhx7Qjm8Q8=;
 b=OyqM5qoq41aRpdEcr3r0KSnpYDd+h3vjHxK5uARHzYO1yets9/yyP6HE9bGTz7+00KvWWBs/8xV2yX4c9Lbwh8qG7YBIEFra+jxrj9bCuFlDWyB41fkLuEp0p8h2adK3HgFh8YRaV3rwAXaJuGnC4dSCCTKq35XMdqDMYUwntl356SVAfUQRUkBBAxJk1CeOstCH1ZGpNg6Qgb6HiHi1fwzCSN3mgwYFLFix3u0XksFDEVCexhy33G75RqHoTLyD//L1wF2WPPbA4AMTPnW4aOJfZVHhKGMtT2QHvzqc69moQpOfgJYPc7Z0uBj+/i0sVHh5yCUXI1MqP29lwyFE+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gi90tKNLYtIbmNNhZiqDE4uGUNB8sMet3Uhx7Qjm8Q8=;
 b=tANm6/8sXV8f9UxAUqi9iVFnKwrGm1p0A0OGZ1xJiC07wQlAlbbPjouBdS+MupVWOJnxOmoji2CucWUfdabNUbaJKO6RQlJrtfo2fiEKCSSq0B9UHFWVmGfmtrMQ/UxVpTG2LGaMY5/umJ//CJN4UzhWbPcOc2ljuznefGfqv1BcxBtntTjgW5oYVCpQUrw6o5E5THyf6Q/ozhKdV0Q7gSwrU21rz5LHqM5faD+UwkW7MpdGl+9Q8IGPtkUBBQCYmDrY6a2KW2Ou9nw2y07q3+cq6OwuQpMO6JaUL3WmWCd+RlzAe/CPiDvemY4TZ4YAAfu6kV+WvwLqKunDGtdKkg==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from PH8PR12MB7110.namprd12.prod.outlook.com (2603:10b6:510:22e::11)
 by PH8PR12MB7303.namprd12.prod.outlook.com (2603:10b6:510:220::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.24; Tue, 13 Oct
 2026 18:18:01 +0000
Received: from PH8PR12MB7110.namprd12.prod.outlook.com
 ([fe80::736a:e1be:ec64:5740]) by PH8PR12MB7110.namprd12.prod.outlook.com
 ([fe80::736a:e1be:ec64:5740%6]) with mapi id 15.21.0496.021; Tue, 13 Oct 2026
 18:18:01 +0000
Message-ID: <3a37bd0d-104d-4c27-a97e-dca6a3f53aa4@nvidia.com>
Date: Tue, 13 Oct 2026 19:17:55 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: tegra: Clean-up Makefile for Tegra186
To: Thierry Reding <thierry.reding@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>,
 JC Kuo <jckuo@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261012-tegra-phy-v1-1-3241bf3c86e9@nvidia.com>
 <as5WkN6Wt08TeRax@orome>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <as5WkN6Wt08TeRax@orome>
X-ClientProxiedBy: FR4P281CA0440.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c6::19) To PH8PR12MB7110.namprd12.prod.outlook.com
 (2603:10b6:510:22e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR12MB7110:EE_|PH8PR12MB7303:EE_
X-MS-Office365-Filtering-Correlation-Id: ca5c3a6d-6d40-4066-4b50-08df295650a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|4143699003|261009223027099003|10067099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 6laxUdDHf1ug5jinzjM+jAbYZkfluxV9gh1veKJDDx61gwyctgUHCcRmnI2byY71QoJQeAqNMaTIJw4qJ7jsgqcovTA2vwHKc6dcWmcXmUgZUz5aN1xCbLDUuVUejT8nxSct25ZFIpfrU3gk9UESlTQg4XEARCotHUapbkxbwZXPT2ihaksPWojZJQ4HOj+CQ/Dffm5yFdp2lOq3VLX79795G5i0gt9uQlAeUcAEAAt/u7IuwLDM8L8H97uQ9U3q+278vjBQCAo6a9/UpqgXKZnSuyxqHJ3HWIEYX8vHBKZZp0iW7fjkxobjKNZH6XqPenAD+pVF07HqYGKUoxJUU7poIFv9MpiRanOn1ppjnFDcGJ1bQk+6GMILA9c633jzKW3aQrTi7qE+HywWy5papSSw6p0cSf6FNAxuauZ6gH+10LhW6PO5kxncaDCihXD3ZW8vWhz7TNoC0QbHSUIoPxVDCZmORmyBPUHsGrwGBWP02/H8DYBVQd0a8GGQGvy3CxOd0KftonpY2rpFeyqrWs8hE8v+DTk+4Sqw6W5GngT6jjf9q1phh3yYi5HrA1Yd2JKeyu/lKGeuhmb9/MU4xCyIml7UC5L8ZHh1AKRmmezXQ1TISp2w2/C05Nq28pTznfqWC6JyIk0RyL39+8HqltO+2TsaloHJNlRDyD4/pa4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR12MB7110.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(261009223027099003)(10067099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHdoTFY4U2hkVG12L2w2c1QvcUJUcklncStKandBdmhYTldQd1A0K1BhWUdp?=
 =?utf-8?B?SzZ5VVJnUitoQ2RHNzBaN0Z3WitaOVU2UGprNlhnVnkydm1kRVM2TW5maE1k?=
 =?utf-8?B?NDhmS1FhdldrMDNLTkJDYi9rM2R6ZVlLRnN3L0w3UUZXRGdPM1ZsLzFBZ25B?=
 =?utf-8?B?VHovZXl6b0M0QnpLVytUU3VZdlZ6QUpiTCt3VE5RazNpaHFKdjN0U0M0dnE4?=
 =?utf-8?B?Y3IyZW01MmdBY05UMm5RVkxPRnZyNzk5cmU2OXJPRHdOWkRIdTFWVFYwSndB?=
 =?utf-8?B?eWlvMHV4YlRiVzFqTEhIQ0NpYnFRLyt0cW1lZmYwblpGQlZLa05VOTJYeVFz?=
 =?utf-8?B?OE5Md1hsdFJYL1AvYlZmWVRtYzZCOWVwK3ZSN242V2hhZFIvVTZ3eStnbzJv?=
 =?utf-8?B?Q1NwbzBsMHJPckRJQU1SOHVWTVZJWC9sVWIra1A3SE03eHBLNE5STE5TWURZ?=
 =?utf-8?B?THZodUUyeHBKK1R5R2dDUnY5bkw5ZEphTEx2NktqVVJBc0pTUGt5c1d2SjdX?=
 =?utf-8?B?dXEyYmI4Nk1pMUUzYVVwOHZhOElEbUlkczFnTWxQZmR5djYyaUhMb3lHdXV1?=
 =?utf-8?B?T0IrQ21iYUZEWHB2cHp1eUFGZ3kvaFZYRGFFT2l2cFRWa1BIK1RkZTBJMUVT?=
 =?utf-8?B?amoxbjl0N0x0b2o4eGFDS080RjU2a3RFWXBORTBXd05CdDlOcUY0SHdMN1Az?=
 =?utf-8?B?YSthRDdXYWVQWnV3YVowdlo0SFN6S01HM3k2Sm93TnNmandZOWZGN05nR09X?=
 =?utf-8?B?K2ZHekpsQkxacE1FWExUdEY0a0pBNlhnOUZSU2FKZFIybnN1TXl0NCtFK1A2?=
 =?utf-8?B?bjRTZjJ4SXlycGJnYnNwQ1VhSThycGFVQTl2RjFVOXJBNk5mTzQ5anRNQkhG?=
 =?utf-8?B?NXp5OUFvV0VmK2VUanhLb21vamNvWGJiZlR5OE5PVzFLZUJVVGVhdG4ydDg3?=
 =?utf-8?B?bTFkTDYwd1B6eGl5c1owWUhSRXVsZFpGeGFuck5EemQ1RSs5T1lhT0RoOWEy?=
 =?utf-8?B?Y00xZEs3Y3pvWFZHajVQWjIvaTVDZThKUGZLa2xqcDRtQTdCNUZoWlVrbWpE?=
 =?utf-8?B?ZVpIczFnK0huYmREY3JjSXdVcEtKYmwrS3FFV1RYWFllYXZHQ21mOXNZVld5?=
 =?utf-8?B?OW5PODhzdDdpVS9OWmFBUzJQTHZmMUtUclZJcTZvS2U1OHkrSkp6WTRRWExK?=
 =?utf-8?B?b28vbk5weU5vN0FYRmFKbXAxVlI0NFozeHo3djZycEF6Rjl6R0JJNnZkQkly?=
 =?utf-8?B?VVcwajNzS3JyNytBQXltQmowOGpITlFnZ21GSHlhaElJMndmODhubGp2aHZo?=
 =?utf-8?B?OW1vazF2K1F5cmMrMUN1L1dneEkzT1QxUkZPU2Z6UTZvejQ1WG5oQTkvQlAy?=
 =?utf-8?B?UEdLalU3VUFqVERocHBpSlBPbHdxbTVaSTRYN1pLOEJUejJDQTlEaThXM01G?=
 =?utf-8?B?anhDSDBBVGRkdGdIT0JCZkFqSEJ3TlptbjNCK0ZzaTAxNGN5RFA4eWdKMzR0?=
 =?utf-8?B?UDFFL1lKc1hSSndidHdnNnNWbzRWdE4rd1UzdmNXRnkvOG1DRGh2bkxXa1Zx?=
 =?utf-8?B?REY2MVhVekdBSHpvMFNRTXpLU2hEbnBMdkkzS2lUMldnY25FZThGY2ZDelp1?=
 =?utf-8?B?UE1sS05FMkhDUTNoek1KUVRTWWorNlRCUzFEZWtaNnh1blpIRktZQS9zbzlo?=
 =?utf-8?B?V2hqL1JzYnNwaGZRVkRJUUFLTTJXQnVMVnBGN0c5dTFmU2NOK1RuRjhrN3JF?=
 =?utf-8?B?VDNQWHRXTm9oY2xSTFlvb2lkZmJpSjhONmxXbzFuOGVUNEJwZkhMTDJRTUNS?=
 =?utf-8?B?N3dZUm93dGhvOTMvb0pHeG0wZFhwVFVMTTFxSEJSbE90b3pPSjR5ZDBkNUxM?=
 =?utf-8?B?U2dVWmVFdFRDTllIN2hpdlNaZldsa0kxYmo4ck4xc2dnNEE5aVhFSm9mZEpB?=
 =?utf-8?B?R3l6dFhWb05JR0xQYXpIVm5XSnQxV2wwRUJYRGc3SU1EUDVYU0E4eXBBS3M3?=
 =?utf-8?B?blpTVExrU2phZXIyS1JmRjJKb2Z6b2xjQWIxU0VCWEZ3NjNZQU8yRFp1T0NZ?=
 =?utf-8?B?Y3VTKzBNWUdwdWhiZUYrZVVZc1k2M1VlWlRqbXlZT0VObnRXc1NqVUpsUU1J?=
 =?utf-8?B?SXlweFFpUi9Dek55YlJIazNVbTFoLzQyUm5uUm9XdzRyaXd3bFRuc2dsZG9O?=
 =?utf-8?B?eU43UEJvaVdEc1YrTWgyY0puTE44Q0dPYmxlQ2JNQzZ6cG5BQ2hVYWNORDBr?=
 =?utf-8?B?b1VldzFiYWtVSVZsVnFuMDRZdmgwZ21YUUhuWU9yV3B4cGFDbjh0d0srUHZB?=
 =?utf-8?B?TlpUNEF5UEhDbFBVb2Jiam9ybHlCMkl3YmlkNGEvci9sSGhRTXV1dz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5c3a6d-6d40-4066-4b50-08df295650a5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR12MB7110.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2026 18:18:01.2551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HOnEyW6Yj/UD1AidwcKNQ9tPlo8oF78GiSr/MZ43Mlki1Tmn5i+A4Vfzu7TX9ah57Q4EzgnRwJquG337RqYXyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_111809_735814_C4504C31 
X-CRM114-Status: GOOD (  15.94  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 13/10/2026 17:07, Thierry Reding wrote:
> On Mon, Oct 12, 2026 at 12:16:31PM +0100, Jon Hunter wrote:
>> The Makefile for the Tegra XUSB PHY driver has an entry for every Tegra
>> SoC that compiles the xusb-tegra186.c file. Clean this up by adding a
>> new Kconfig option called PHY_TEGRA186_XUSB that when defined compiles
>> the xusb-tegra186.c file.
>>
>> Finally, update the xusb.[ch] files to use this new config option as
>> well instead of using the individual SoC Kconfig options.
>>
>> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>

...

>> diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
>> index 89ce9ac87300..79a3624faa10 100644
>> --- a/drivers/phy/tegra/xusb.c
>> +++ b/drivers/phy/tegra/xusb.c
>> @@ -60,31 +60,23 @@ static const struct of_device_id tegra_xusb_padctl_of_match[] = {
>>  		.data = &tegra210_xusb_padctl_soc,
>>  	},
>>  #endif
>> -#if defined(CONFIG_ARCH_TEGRA_186_SOC)
>> +#if defined(CONFIG_PHY_TEGRA186_XUSB)
>>  	{
>>  		.compatible = "nvidia,tegra186-xusb-padctl",
>>  		.data = &tegra186_xusb_padctl_soc,
>>  	},
>> -#endif
>> -#if defined(CONFIG_ARCH_TEGRA_194_SOC)
>>  	{
>>  		.compatible = "nvidia,tegra194-xusb-padctl",
>>  		.data = &tegra194_xusb_padctl_soc,
>>  	},
>> -#endif
>> -#if defined(CONFIG_ARCH_TEGRA_234_SOC)
>>  	{
>>  		.compatible = "nvidia,tegra234-xusb-padctl",
>>  		.data = &tegra234_xusb_padctl_soc,
>>  	},
>> -#endif
>> -#if defined(CONFIG_ARCH_TEGRA_238_SOC)
>>  	{
>>  		.compatible = "nvidia,tegra238-xusb-padctl",
>>  		.data = &tegra238_xusb_padctl_soc,
>>  	},
>> -#endif
>> -#if defined(CONFIG_ARCH_TEGRA_264_SOC)
>>  	{
>>  		.compatible = "nvidia,tegra264-xusb-padctl",
>>  		.data = &tegra264_xusb_padctl_soc,
> 
> And this means you now get data for all SoCs as soon as one of them is
> enabled. Yes, I know that most of the time we want to build multi-SoC
> kernels anyway, but it now is not just a clean up anymore.
So you already get all the data for all the SoCs. This is simply
populating the compatible string and pointer for the data structure in
the match table.

Prior to commit 8f56fdf3d8cb ("phy: tegra: Add support for Tegra238 XUSB
pad controller") it was possible to only have some of the SoC data
present, however, due to all the inter-dependencies between all the
underlying structures, IMO it became pointless and messy.

So I still see this as a clean-up overall.

Jon

-- 
nvpublic


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
