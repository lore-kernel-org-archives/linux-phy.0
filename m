Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC5F3CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BRXk69PXRpKGjKB2J2ENxxktXm/oSYmE76qcZRuViuI=; b=U0GbM9sQt5NoJPqnELD6LxzjqQ
	YgV0YFp4S2Djv3pOAHMOCaUMURI5wbM1cScnMQlGjeABCnA7ovhcIZXzOEBmywmHckM//BbojwOdq
	6ghjlmpwhbE+o1b+HVrEGcfkKU5kmsd6z6ILiS9rQ8hcxYFhoPKsC7VaVTKOkFB1Cr3xkkrRbnyKQ
	1GA9bAmCIqHQIIv4LmoW+lFuYm33wg9y2mQUzATrQNjPgP+qvWpzIhks3PKZMHbm8Kriz7eZSCLyk
	6ODmjzwk3U7o5sVScqyHVktDK/PKvta1EyTPZvKgzRMIvTDnd52aLUcssk4ZZq62XrZrxMdr8mMTr
	Dl1G48PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPe53-00000004JiD-3YMw;
	Wed, 20 May 2026 10:23:13 +0000
Received: from mail-northcentralusazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c105::5] helo=CH5PR02CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPe4z-00000004JhO-3VWL
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 10:23:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mgkHLNvD2lxLb0f9cAx37ZIpvxHRRin/wDH4PjsGd8oHhF96tSIyQzv9h/N3+AM0yY7orhH7hcTasWdodmxs/Ka4B1DBQpUUsqSQHHO8L4jtUOARdf2/IPPhdW1XNUs35noWOMcTlnRPgtyUyqHWCz0akAFcFYVZm6ObI3H02ZUcAGQD+Vi9Rffdl3V6l9y+/xs62N8QZvz31QZxBUVhmI9GIYXSvQvT9GJQCcHP28L4DgOsRm+vgQj6GzL0iU1AHYEo3yMaPt3aBS8vHK6Lwwwlbqnh4sJtQ+aKvxaFE4jBk51Ncvg+NpkhMuqfV+uTPADB6zoXSgvsBwZ3TQmudA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FshDuj5adrhYn7h6+mnre+EzglTs0DYNKy12OHppksQ=;
 b=doa6vZiPY3d93pUMkc4yUo92e5WOowdwIV03z1dXoB0dxz30IfCdAf6KAGXPUhjnMl5XjRndsH50uKAIJ2kZaUumJM0Qa8M0SJFczp9EEs59Y4d017vQUvXXZKgeJKRkKsuNrLJalwzQNRHCFURW+IXhoBw5kD2nST74XEkO5poqCx4RTWhGEVIpTkUMTABE/BkT361RVPahF48FbUCXBXTEMuitiQBFBaY6LFj9b9WPp1R1symTcAqEB+4gEJS9xrYqecHB34DtB95qfb6+WoSihgewDnnUMiuCwzQHeB3Byyud68gQabMfD6Zkqno4RQyzNTxmPdTsPLYSjO0Y8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FshDuj5adrhYn7h6+mnre+EzglTs0DYNKy12OHppksQ=;
 b=utlyENzg4HhnOeSeNB2yUOQ1/l3wI2gC2CdHiA6rTC3WGBO78aWP2CvBeeaLW47FzpjqKl7hRpppjMRliI/ewJIwR1tg1vyH0C5Tfw0MbGIYVOKZOYZ9efv9qo9gbscrbc817CR/27si73zx6mI7gr0gF8F8cYtrS2Uc9iIDaYc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CY1PR12MB9697.namprd12.prod.outlook.com (2603:10b6:930:107::6)
 by IA1PR12MB8466.namprd12.prod.outlook.com (2603:10b6:208:44b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Wed, 20 May
 2026 10:23:04 +0000
Received: from CY1PR12MB9697.namprd12.prod.outlook.com
 ([fe80::3a41:55a0:8203:596d]) by CY1PR12MB9697.namprd12.prod.outlook.com
 ([fe80::3a41:55a0:8203:596d%5]) with mapi id 15.21.0048.013; Wed, 20 May 2026
 10:23:04 +0000
Message-ID: <506d4e8f-0b15-4e68-a527-751497b90172@amd.com>
Date: Wed, 20 May 2026 15:52:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: zynqmp: keep SERDES scrambler and 8b/10b enabled
 for USB
To: sashiko@lists.linux.dev, Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org,
 neil.armstrong@linaro.org
References: <20260511163135.2924642-4-radhey.shyam.pandey@amd.com>
 <20260512223142.1AFC4C2BCB0@smtp.kernel.org>
Content-Language: en-US
From: "Pandey, Radhey Shyam" <radheys@amd.com>
In-Reply-To: <20260512223142.1AFC4C2BCB0@smtp.kernel.org>
X-ClientProxiedBy: PN4P287CA0128.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:2b1::6) To CY1PR12MB9697.namprd12.prod.outlook.com
 (2603:10b6:930:107::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY1PR12MB9697:EE_|IA1PR12MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 41b2381f-8e50-4bd2-5137-08deb659c719
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|4143699003|56012099003|18002099003|22082099003|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: B2y8hPpvFEpXkCqOGmTKYG1W3arsvVRXVZW7aqPUEfQumAsKpkitDrIQEr7Ad5SVweGss9Wfq+jvOZ1S6UXcr2PHulZz6cbLwWKvI2cYT4Dqzbv3mvjXGxgsYh85zRfvIViPMZF6nw4QOxEtazPMlThw4A+DfnNN+eFgdO4Cke+hdfc3fpQTJResQ/WoO0KeruhyvBLxZJC5JyExzUkWxrMHxwLVEF4huu0cf2YBcJXCQb09nG2Ibb4LT7HUbLVnDyObuMhIbAwCzpCSbooXvZRy4ikIwbXMK3AYIeZ3eFG2RIErxDu0dRJ6tjBDx2QFNTF1ru6EyiPXgZvHXAkg6ATSStVi5AUy0iXCnGK+tP5aA5+F7kpXSxU6A2yr8Iv1w57nw6TzTPHstGTURjDoqbicWF9dbdZK3LS3A6BCPEmQZIjS26+7XrZbjxGI5GktVSvJG5iiTLkrhsCHtpxP4naiSh1BAmdLDaBf0SqLD3qT0YAzOp/NjcOl0ZN4sVnnur+EGVVGCmdYwjWfgcp/9+kwyWh6w/dCF16y2t373OrxSFDll/UzjCE/h0GHPLXN2YPt3Oztf7xHCLoiO7o4cmN9zwGgE+R0HO7knGBJF3MmZEb4xTI1hvcsABdT9k47OR0ufuBeudplFBI0FX9l/H4S+Qu6w4ByQsJbonok3lLxcG0Cw1G3aPZRNUH1vBNH
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY1PR12MB9697.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(56012099003)(18002099003)(22082099003)(11063799006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1JHNW1SZFZhdEVyamlrcGkwK0Y2WXBCVEJIUHI1NE83VnRIUlZFU2VDZFk0?=
 =?utf-8?B?RjVVcC9tOHJtTmxpUXpGTWN1Q0w0aUhIR0FxVHZqaEQ3YTNRVFRUc0xvNEwz?=
 =?utf-8?B?Z1VzcnBWOXVSWWoweHRSelBzNFRhYjBzaTIxZFVsWndDaWhmNW5xbHhOSldQ?=
 =?utf-8?B?cWFGUHdxMmdDMzhvdWp1K3FEeWY0QW1LRWZ2MUZyS1pLTE1nVGYzSlQ5RHlT?=
 =?utf-8?B?eVczdlRHZzZqYmF5MnRqd28xNnRvZlEvZzRlUWJwTmZoeVFLVEoyeWlEODdX?=
 =?utf-8?B?ZklUQ3prczVmY284bkJtakpKckJHMXRHRnA3c3RDeSszZGc0bU13TGYrZ2dl?=
 =?utf-8?B?SUJoZjBCbVBmTzRQbVQ0TnlHS0k3TVA3NDJZd09rSzlLMkZIeHFqOEdpTEJM?=
 =?utf-8?B?OVZvRFdGU0NGS0M1STJhT0ZjU2lZb1UzdEVxSjhMMG5IQWFaVlZ2TWdMSk5K?=
 =?utf-8?B?eUg3ajkzTFhlUHVzajlhcFhmQnN3RmZwRE1vSCtFK0o1RFR2di9tMnMwWFZ3?=
 =?utf-8?B?WDBVdk1nREg4d0VPU2d0dTEwSFBnSFFUaEp0OVNKRWtFNldVeUIxSjcxK0F2?=
 =?utf-8?B?ekRVVnc4aXlhRHBzR20wbDNucnM5Qlp5U1l4RGx4elNmN2pRaVhCMkxiN2JN?=
 =?utf-8?B?Tjl4TlhZUlBZSll5K3BNaHcxNXJ3MDBRcGxBVzBtd1VuMlgwWlBrVmd0OW1O?=
 =?utf-8?B?dXNPL1l3VTdPNUR2MzZxV3dyaVRrK1psTVZCaU9yM0NFWlh1S0ZlZW9xcHVT?=
 =?utf-8?B?WGFsMmNIUk9FMXB3WkpCVDI5Ym1nbFRqVzBYVjI5aStWT3RyVDhEVVE1UExo?=
 =?utf-8?B?WTZwSHhoVEdRTUxjNEVTTFhUaTJzYktHb2NmYjdrYW9qb2VqQXQ4Y1AwUzdG?=
 =?utf-8?B?R2k1ZmVSZlVuMExCYy9oWjdkMDZyYnlkSjBVWWtYSk5OOER3NXVHOXBmUDNl?=
 =?utf-8?B?L3hza0hLQXE5SkVQbnhzcTFNUmoxKzZiQzFtK08zZmY0QStYWlRXMkRjMXhp?=
 =?utf-8?B?T2Q3SExQdHdKUjJxY1NweDlDQmEvUWtqS3dvZlpmSlErYnh4S2ZwdkJraUJa?=
 =?utf-8?B?UlR5OTB5NCt1YU53WlpqNWVQYm1ES1FHODYvVXNVekhyYlhJU1lFN1Nhdkkx?=
 =?utf-8?B?VE94K2VUVFlRQlQwcnRocEhRSE1URTJkc1dqb1NCVzhLTCtvZHdHd256VFpN?=
 =?utf-8?B?NjdoRE4ydEh2ZTEvbUtCdVVEelplalliaWdzejA2Si9mL3pWVGpFVE5tUEdR?=
 =?utf-8?B?blcxbnNxcVl2K1VUMzg4bzUxdHRrU1I3OWVNdXAzWEE1ZkJkWkpzOE1KSkdX?=
 =?utf-8?B?RG53bUE0TUlIU21OZXZia0oxSWxOZ25iNVJBYjV2ZzVYUWJVUDhCL053TmFJ?=
 =?utf-8?B?aENaVUtJMEVZUjNZellNdW90ZUs5MERabGhiZDhPeUtPbXFFTzQ4NUZCUW9Z?=
 =?utf-8?B?SG5nWHlDWGFES0JLU21VeGEwdysvSjltUGdvVk91OFduS0dFZ2tPTkFoM0lF?=
 =?utf-8?B?V2h0TEdIMVk5K2JvSVk4bTNxVHlwUWw0M20yNlljUXo0eHFGWGMyTkhIU3pW?=
 =?utf-8?B?ZEg3eEt4RXUvTzNxWGhlcGpDdW1IVkF3RzR1TFJ5aUV6bk1QbFV5cmRIT2gw?=
 =?utf-8?B?M2JZTHBkWkttQTg4eDdaTGZqRzNWRVZVUFhaQ3VnUHUxaTlFaXlUKytkWjBm?=
 =?utf-8?B?Y28yb3JMVy9LdHJVcUowNFE0WGV2UXhJa1p5OXNxcHdURGpncVhza05tYzZ4?=
 =?utf-8?B?Q3BVcmR4QXRrZmhsN3J3bmVXcHhadEJhREwrYXpKbWk1MnhYMHU1dHppeUZn?=
 =?utf-8?B?T1hPaVVxTnZDMzlTSVlFOXFGMDc2OE12YnFKQmdzdmVQRUJKMlVEbVJ4M0VI?=
 =?utf-8?B?Wkh5TUE0cUQwNTR5K0NMTkxxRlgrcW1QS0FURXRYUGxXMTRMamJYY3VFekhM?=
 =?utf-8?B?blpNTktIalRWdERmN3RZd1R6aHdzZnpyVmMwVFZ6MlJ6anp5NGUxd1ErRndr?=
 =?utf-8?B?RFBoaGhIVlZSY3laaG5kc0dsdXVuT2QrMkY2aHp1R1hvMzg3TTZBSUV4dHVu?=
 =?utf-8?B?bHFoT3lmT09KWVNOVVQxZDhLSFd1Vm8yTzBtUXZ6RU5BRXdHRWJHSlpIc3Vq?=
 =?utf-8?B?M2tUWWhxQ2tDSTE2U2xRVG0wSitjWUxna1hZVThMdmRLTFhDOFJaVDhqZUN3?=
 =?utf-8?B?ZUxJK20xWFR3bFJsdHFERURmcE1IUVZjN0JRSmc4L25NdzZOL0JXd0pneDVH?=
 =?utf-8?B?TlllbmlVYkI2RWRWdFZMcWZZV2ZuaGY4V25jQ284Syt5MFV2L051VXgvTDFo?=
 =?utf-8?B?TWhMbzM1VE9EcHdHMmRrNHlBMCt1WkZiMjJFQk0vUzNoV1lhRk81QT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41b2381f-8e50-4bd2-5137-08deb659c719
X-MS-Exchange-CrossTenant-AuthSource: CY1PR12MB9697.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2026 10:23:04.5129
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XIpTd3RxF9XgAC4Ga2SQunY//GYivd0wbcVebOcK0wFxpkBTF5Gkmc9oUYcxDTEN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB8466
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_032309_887689_E886F441 
X-CRM114-Status: GOOD (  19.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 5/13/2026 4:01 AM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] This problem wasn't introduced by this patch, but the scrambler and 8b/10b bypass state is not explicitly initialized for DisplayPort (DP) and PCIe, leaving them vulnerable to inheriting an incorrect hardware state.

Since this series specifically targets USB fixes will send out separate
series addressing comment on DP/PCIe default state.

Vinod: Please let me know if you are fine /or have any objections.

> --
> 
> commit bd13b5595b6bf913b77d4b61fb704c7e56fa4847
> Author: Nava kishore Manne <nava.kishore.manne@amd.com>
> 
> phy: zynqmp: keep SERDES scrambler and 8b/10b enabled for USB
> 
> This commit ensures that physical layer scrambling and 8b/10b encoding are
> not bypassed for USB operations. It explicitly disables the scrambler bypass
> for USB3 while preserving it for SATA and SGMII modes where encoding is
> handled by the controller.
> 
>> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
>> index 6c56c4df8523c..087fe402e4e20 100644
>> --- a/drivers/phy/xilinx/phy-zynqmp.c
>> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> 
> [ ... ]
> 
>> @@ -707,6 +722,10 @@ static int xpsgtr_phy_init(struct phy *phy)
>>   	case ICM_PROTOCOL_SGMII:
>>   		xpsgtr_phy_init_sgmii(gtr_phy);
>>   		break;
>> +
>> +	case ICM_PROTOCOL_USB:
>> +		xpsgtr_bypass_scrambler_8b10b(gtr_phy, false);
>> +		break;
>>   	}
> 
> Does this leave the scrambler and 8b/10b bypass state uninitialized for
> DisplayPort (DP) and PCIe?
> 
> While this commit resolves the state leak for USB by explicitly clearing the
> bypass bits, it appears DP and PCIe might still be vulnerable to similar
> issues.
> 
> If a lane is repurposed from SATA or SGMII to DP or PCIe (for example, if a
> bootloader probes an M.2 slot for SATA, and Linux later configures it for
> PCIe NVMe), could the PHY inherit an erroneously bypassed state?
> 
> Should the bypass bits also be explicitly cleared for ICM_PROTOCOL_DP and
> ICM_PROTOCOL_PCIE to ensure they do not rely on potentially corrupted hardware
> defaults?
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
