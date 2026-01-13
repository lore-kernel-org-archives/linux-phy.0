Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28EB6D2F33E
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 16:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gLcafwmYWFtcicSy9Vu7U0TjtfjUL2RrL6KTG5vaMdU=; b=FfmRRuWboz1wBbIZdR8hOv/9+5
	OFAHciwleNssHIVGkFjIffKCluds8mhtEKcXeaD9YFEB2he0j4TWOjlX/lVKX2oaci9S+Onv/NcOS
	tVMFrVQj5VwSckmhOCI063W71+173GhT+CVBCaVqVvGy2LSKxp/1Z7aVTF1CRHBoWcForxZnE2mBw
	CyLzoT47UohPqqtLc9xzxBwgLG//DwG/yAUiI7zcIzVOAF9vep8jy4s/FAhK2ucmxwdTmW3jQatqo
	CNRgBMR3OG3j4KtKr4BF2Bk8OW7pwYPC7lw/2dA4G5Cl5Zxxz4YttupVW2Si6wjWTrHS9MYNwFq6Z
	24em+LnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfhOC-00000007U7A-2vUR;
	Tue, 13 Jan 2026 16:37:04 +0000
Received: from mail-southcentralusazlp170120001.outbound.protection.outlook.com ([2a01:111:f403:c10d::1] helo=SN4PR2101CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfhOA-00000007U6Z-0SSS
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 16:37:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VQF0CsgDEq0Iv09CXW/q3j7zKBkfqQB7YpKV4qJcNIfwa3U2nMT4MmKegEAO+G5loQ7XKb/DK9iCtSEtxPGRZnvSPTio7FgvOuihf/iL0PPA9BV1DFQpHqYIEiF467d+w3Te75yzjIYVGKIDU5IE2npeT14E+XwjDkpcA8tf42PzJCOgznzGKAx3vO7KfmTltqtU8gmKbsFljq/ORNpmbwq2iABjbiK6tP+mH5o3wkzuiau8+49Na3Oy8dvVjnsUPwLE1PEU44HTUM2cLyu9D1N0WR/D1klZxpieRfKAIoGrpXbA5MOMtSfYAmDxZaHu89gxTzJLSCGCR+x1/oFlWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dM+6c4Ktx8L9SRLnqyln0jYmWy4fcMtX773079/KVNo=;
 b=sWEDxViQVgzhZvbKM5fBmZ4MV8qXA/G6BeuWJ9FpmgyYAic+fv4JQn6d+whnrk9qMr5pz/5/GG6exet/nFFp/8MzapvOzrV3LDOilpSAeEdXE0cB2oVBEXyKEGGdZCjybVmAw5nPQ7RqAD8yn+CtNhFQ6vGx6z+atGkKhnkTPLAqEMY3I4//PNbfzgjXhFwPa5/eAPBKOdn480mmZZCFWz3d8FSX6ttGbX0AjHdoUHagkdkYODJMGUOAbbut0KZBtse4XIq+F2DPaG/+f+jriH6cmcr1UOLsMHKKVALWMJNO32rfDoJ8Dy58KuH60r2Qoub54/40KdxhS8hfiabsTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dM+6c4Ktx8L9SRLnqyln0jYmWy4fcMtX773079/KVNo=;
 b=uRFVGg7wAGEPefLaTt24DltSXE6ATeFB/rJq9rQshdq/IPwKmv7fsX1iAdnube3u9DiiIVbebCluS3JESpqYjUwdetIM4szw66HRFzGYHCuVFR4Jgb18eSoFRsfXpQvcW4RYMIkkdN1ClEyKOkiZuiNxDuA+cIrOM4R7+H5BI+ZaRtMv7dUs61CAFz51xE8JJnope9cSKPvexcreIbIIcVNi2Z4VZhX4mNdyj2B6lcBKQsGaJNXVM6DMo1/zKBFi4bnNe4MhMHKIAhZU1pwJ57u7xZQkUb5vya94OkH/BoLLyA8RHtf61pUBYBKRiyR42sFQFN95aOLg+EuCotQRQg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from DS2PR12MB9750.namprd12.prod.outlook.com (2603:10b6:8:2b0::12)
 by IA1PR12MB7589.namprd12.prod.outlook.com (2603:10b6:208:42b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 16:36:52 +0000
Received: from DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391]) by DS2PR12MB9750.namprd12.prod.outlook.com
 ([fe80::56a8:d6bf:e24c:b391%5]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 16:36:52 +0000
Message-ID: <85c760b1-2279-44f9-8dac-77cbf6a4835b@nvidia.com>
Date: Tue, 13 Jan 2026 16:36:47 +0000
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
To: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
 <86cd3ff0-1609-44cb-911c-f0e97652ca1b@nvidia.com>
 <ae36f759-e889-4371-8c08-b8ffd1b69250@tecnico.ulisboa.pt>
 <703a470d-87fc-4580-a743-952e422984d4@nvidia.com>
 <c3f54ffb-cf4b-47ae-871a-6dd60b17c9cb@tecnico.ulisboa.pt>
From: Jon Hunter <jonathanh@nvidia.com>
Content-Language: en-US
In-Reply-To: <c3f54ffb-cf4b-47ae-871a-6dd60b17c9cb@tecnico.ulisboa.pt>
X-ClientProxiedBy: LO6P123CA0020.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:313::8) To DS2PR12MB9750.namprd12.prod.outlook.com
 (2603:10b6:8:2b0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PR12MB9750:EE_|IA1PR12MB7589:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d8196d1-bcfa-4531-4a34-08de52c1f497
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGlQUjRPaVZMcDcyaTBIRm1rVGttaVQranNiWXUzb0RIcGxrdENqbVdKZGZG?=
 =?utf-8?B?dzVVUjF3bXgzL2k5MmsvTkpxYXp2enlTUStoNXp4TERaVTVmS29vYW9nOXpV?=
 =?utf-8?B?UWlYVWJYSFNFRmFtb3hBRVA0UU5WR2R4ZDBGZGwyUGlEYkYzUlAwN1dXSHR6?=
 =?utf-8?B?djFpeFl3aXdiUmN0WmR5TkQ1Wk9NVTd3cHdvU3dzV0FxMjNGQkx6U3QzVEhW?=
 =?utf-8?B?Y0pCNURxWTNJTG5tNFFkMzY4Q3VGWEp4anJXUEVNZU5uZjdRa0lMVlpYT0JL?=
 =?utf-8?B?bnZ4cHltRTJDUlRPUStGUSt6Zlg2d3JIakExcFFuYkRhTE5oTTNMYnBqYmVU?=
 =?utf-8?B?MjZOTzlKbk40bmtvUmU1b3FEWHJ6RmZJUEpxN3RwWmVtU2JtN2JsT0kyWTJy?=
 =?utf-8?B?T08zeUdJb3FHaWFtTWhvUzNZTlNSQ2ZtWXFZa3I5ckJhZW1PS1B4SUJScXFK?=
 =?utf-8?B?MmlQVU1uaXRURTdCWjh4ZmFZZG1NUXhFOFFPMkJIODJXdnVJczRJb0I2dmNs?=
 =?utf-8?B?NzA4UEVsTGtBcFQxQ2dJOThNZ0l1OVFuZEo4ZThNcDFyTStwUk4yR1FCdkdz?=
 =?utf-8?B?S0t6Uyt0UlMzaVFQdDZ2UlhxWjJvejNSWlg2ZGJBWFN1Y2hYZkNWK1lDNHFp?=
 =?utf-8?B?OWFtb0FBL2pvVGxGenIzYkVCY1MzcFVlR0Rhbmg3L3hqWllNY3hwQWh6djZr?=
 =?utf-8?B?ekk0VWwyZncyVzU0YmFpa0t5UWhkNzZ4MDZ1bWwreEEvLzdXWXZIbmRtcGpk?=
 =?utf-8?B?MHhsZ2lCL3NKSHpXK2ZyMkNTRVNYMktkSCtDYmpUTkxTS0h0V0VZVmFwTjVB?=
 =?utf-8?B?dnFlQ1Vnd01xaW11dDRRZ21XTHUycGEyWUpmaVJhSno4Tk0yZGFhNmRFbTFp?=
 =?utf-8?B?T1pybUJwS3A2ZWZoaFI0SnB5RWc4K1VTcU1OcFVwNUF2WmFxbGZCakhVTHlV?=
 =?utf-8?B?U2JTc3UwN2Q4YlJua2VlZWpoRzJndkducHNvbTUwdlozeU5jSUdOYlM4dDBa?=
 =?utf-8?B?RXE1c0M2K3IwbDltajdyU2sxNlZhTmg0MHY1N0R1OGZOMWxJamZGa3lqYlVM?=
 =?utf-8?B?QzlIQnpMQVQvSlFDMG1ZNEJ0UEk1YjV3WVlVWHRzQzRiSkMwQTlnTko4eUp1?=
 =?utf-8?B?MEFpUGh6Y3NTbFp5R2hsSE9uQlFITFJaMHFGZDRUd3BZUVNkbVpuaHFxZGlD?=
 =?utf-8?B?SXVxeU01eUpTQ21qVDNkTzFBUVk0T1lYemxJQStIYTZkdy9iOFVUZ09LOFhG?=
 =?utf-8?B?NWYrV2xiSzR0VTNBVkhxQXJmb1l3Y0xsbVlrQVd4Y3VjMmJ2Vzc2SHZDeGFO?=
 =?utf-8?B?aTZseHE4N0N3ODBCTzVHdjN4WHZ0T2h1REhJdVlLM2hiRFlhdy9VeEY3Ty9t?=
 =?utf-8?B?QXcxZW10SmhEbVZxaVVLaWhacjlYakxvbUQ0eDlOWGpEa1RQeW45dFZoR2hU?=
 =?utf-8?B?OTV1L0ZaSTMvajIvaGZnRVVhUVhBSDRTVlFBYzhoV0JUUVRCNHd0cHFzSGhP?=
 =?utf-8?B?L3diMkZPMUxDczJSNmo3L0M3YUlodHhmTTF6RFNveS91ZzlQY0pnVzNxcGVT?=
 =?utf-8?B?aU9nQStUbWs5aGJ3dWtkOUtwcDg0eHcwS0NLdDd1Y0hXMzhmQ3ZoVGh6amJq?=
 =?utf-8?B?bVhwNVNOWkp0V2xmV1Z6MnVEZXZpa01IVFVmS2RGWnNQTGhDblF4QVFNVjFP?=
 =?utf-8?B?YlJrUzRLbVZtdHZGSTdmVHgwU0o4dzJaTjRIV3FVandEalQ4RUlzSzBzcFdz?=
 =?utf-8?B?a0JkNlFvZEpZYmsrTjJQd2s0K25iTnoxSmRKWVExZzBvSEFHZG5WYjRsR2FG?=
 =?utf-8?B?Tk52a01PY0FzRVl1SXQ3MlVKMXU5VTVFd2RNbndlWkZZT2s3N1dWYTRHNXFh?=
 =?utf-8?B?MVViTkR5UFpKbVozMEJTWEJsQ0hCUW5HUi9FUVlWdzJGaGFDYmpHd1pIWm94?=
 =?utf-8?B?VUQ2UnBWMWRvTTlIdllId3NZU3lXZXl5aVdoMkh4QzBnY1RWQ2hYenE3bjMr?=
 =?utf-8?Q?I4ppdncv3Wa5FwkzQiiL+/s+LVA4hc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS2PR12MB9750.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azRuZzFHZHVPR29hbXJxdU14RkRLaG5qc3k2K1JyaDNHREcxaDc5eENTelkv?=
 =?utf-8?B?NnN2N3lPQVEwRFRyOWtYRGpMN2FuSXJjaFdHSzBLWUlqWW5OTHBWcmwzbHBG?=
 =?utf-8?B?MGFQV0oxa2FzNitaOVFSYmU4SjNkQ3M1L3FaVDJ4V1dHU2UrQVJkVW45dnhU?=
 =?utf-8?B?STRudUtURXJIWm9iclhxZ215T0RYdDdUTVFJNkNHdjhTRk1acTB6K1pVeFFE?=
 =?utf-8?B?SDBmbW44MDFLUklZclJJUFQxaUdTMTVkd2pwVjUvNENJTEorWEo2ZXN4R0k0?=
 =?utf-8?B?b1h4UHYxUVlRZWpaUlc0dUh0U3NveStVUGsxdExCejZVQUhLN0RxcHpwdE9X?=
 =?utf-8?B?NHZVenBMd2hXbzBCRjJYVUlEL3p6WVVxQlYvRXVpZjdzbUZWZ1MyZEFSdFhW?=
 =?utf-8?B?elVDNzgzbG1HK1NtS3hxRkc1T096by9rdUxJdENBWVJtRkxKN2Q1UWpBanJl?=
 =?utf-8?B?WVdiYmNCNFV5VnU1Q0hoWTZlRnFtZE5JcVkwNHNJa01VbVlGNVNUOEtjc29p?=
 =?utf-8?B?blNuR1l2UExrRG5VckdFczJDVm5hN3BPL1RXdDlqSzUydHpPQk9mWEpzdkhC?=
 =?utf-8?B?Y2k5YWpnWXJ5YkYrdmVKOTUxNGhBVEFvOGxzSlRoeFp0QnFFZlFLYnNPSUlI?=
 =?utf-8?B?aUtlbDdUR0dFWVN4dXhxbCtIdnFycThMTlpZbmMvYkdCQ1h0TU4wek1ISXVt?=
 =?utf-8?B?NHhabUNOREZSQjIrVTQrRjVaUnhuekxwNVBxc3VqenBtWnBmdW9pZDhhVWh1?=
 =?utf-8?B?dlVaODVLdTJKeU1VSXlyTWYvWFFQZGV6VEx2YlArUjYzSFRwbTk0Z0ZXNi9U?=
 =?utf-8?B?M3pIeGY3ZWwwb2ZXOUxjS0JzRVBIUWtibkwwV3RibHlnUTR4YTR4clFsUWV6?=
 =?utf-8?B?S0hna1k4N2dHd3NTUTlQZEtmTEZnc01IK0ZrMHBUb2JNaDBGbERjNW1kSnA0?=
 =?utf-8?B?N21YZzlwUEx3bEV5Y3E0cE8xRWNhZWx2b0Z0bXdyRmFFekdJTi84bUFNZzJ0?=
 =?utf-8?B?YWMxVmpZbFVYTnJKallEQ3k2amxDbWNUUDdVOU9nRW1RdGFQRVVZNEErMFlQ?=
 =?utf-8?B?Y1dwOG4vUUpXcmNva3lvVFNTSWplY0dPYThSY3FNdWpJMm43VDgyNTJlaUNM?=
 =?utf-8?B?eHVkc3J5UXYraFBVR0lrYWcwcDVpVCtHbWdmanBTemxVdzlJYmJMdHlNcnlC?=
 =?utf-8?B?VGxMdUpFbWlyVXk5cENNYzdvZ1lVekJWTXRYVnFPVC9RZXppWDdsdWx0T0l1?=
 =?utf-8?B?aThsN2pxZFhBZzQ0S0h4R0wvUU1vSUR3cjFDeVZnUzE1TnJkQTdnVGEwdVR2?=
 =?utf-8?B?bTN1Z1NWaG50dlcwM2wzekVGa1cwTHk1eHRDeHBxU3hNaGgxelRwMW1reGwy?=
 =?utf-8?B?ZStqMXk2cUdwRlpHd0QzZzJjOE8vMXFDdm1WZjFDRTJKZlZEZndFZThsd0J0?=
 =?utf-8?B?am5mdC9uWnk4VE5xQXMvMjMzQ3o2TDFZdklXaUlvb1RCQ3FaSDd4dDEzTkdQ?=
 =?utf-8?B?Zm1DeCs1SXpuYW1Wd3pQTm1IajJlTUVQcjhOMUticnZrdmNkMUJhc1JWNU9P?=
 =?utf-8?B?aHkwY1RDamxCbnNwbTB2V0hFQVBHNXAyblRIUWlVc1FrQjB2VUhoMkN5ZVl4?=
 =?utf-8?B?aElOTEVkV2EvVXVlSUMyK3dBNHRSMHVtbFp3OUZLSXhvSnFmOXNMdU9HZDJT?=
 =?utf-8?B?YVg1TkxJT3V0YVpMMzkySHBzRjdaSDZtMktpbzkzR241UFplTEhRRzdkUFRw?=
 =?utf-8?B?eTNiempNYkRjZ3JSbndlZG53bXphMXAwd1RqWlpmdjE3dmdTNHdKczJ6VEFG?=
 =?utf-8?B?N010MkxyNjZJbmtKN2V5bml4VWxsTDZMcmtHMXRzd29KL1NLNDAvc2hHbHVi?=
 =?utf-8?B?NXZNN2lRNVF4aERCMEpoanFXQk9HUHdBQWVaK0FOb3pxWktzMVpzN1F6VWk0?=
 =?utf-8?B?TmF4Qm9FNmVsa0dMTFczNTdVMC9NMWllbHVDdEpLaTgvVTZmMGhtMTlkOGtX?=
 =?utf-8?B?MCtIZFJadlRkWXJGR3hjOUxycW9oVkN1aFZDZHhZUy9obk5pUlYzdzBSK0tR?=
 =?utf-8?B?a3ExLy9iZEwzU2NmTTZJd0FFZE04UW01bmtPaC9la3h4ckIvaFloVm5BYVJq?=
 =?utf-8?B?cFArQUVpYndVWlZiK0hxWC8vZWZHRUdLdGVydGpQT05aa3l1dHZvaUpwUFB2?=
 =?utf-8?B?L0xEdmIrNGkxdlljR05MVU1VWTlXTGxBK3RLM2g1WDZOU2VaMlFnSzBrMHNa?=
 =?utf-8?B?NHY5emsrMjk1Z1pXOWFabit3VzcxdUtFMmFVZnE0a2xyQk5HZFhwbkx5Tlp5?=
 =?utf-8?B?VklWSUl5OWticWdKMlV3ZnczaEpGQnVsUUViSjd3dXB3SWRBdFdGdz09?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d8196d1-bcfa-4531-4a34-08de52c1f497
X-MS-Exchange-CrossTenant-AuthSource: DS2PR12MB9750.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 16:36:52.1024
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bQ4mbebXYPLTK8kFarss7TDkwY3Os0AsD1m1JOXo3j83UaPP6dXNxUrGFqFtCHVT6xfYtSHTSndoIage2WAFkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7589
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_083702_152920_258275D1 
X-CRM114-Status: GOOD (  13.12  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIDEzLzAxLzIwMjYgMTU6MTAsIERpb2dvIEl2byB3cm90ZToKCi4uLgoKPj4+Pj4gLcKgwqDC
oCBpZiAodGVncmEtPmhvc3RfbW9kZSkKPj4+Pj4gLcKgwqDCoMKgwqDCoMKgIHBoeV9zZXRfbW9k
ZV9leHQocGh5LCBQSFlfTU9ERV9VU0JfT1RHLCBVU0JfUk9MRV9IT1NUKTsKPj4+Pj4gLcKgwqDC
oCBlbHNlCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBwaHlfc2V0X21vZGVfZXh0KHBoeSwgUEhZX01P
REVfVVNCX09URywgVVNCX1JPTEVfTk9ORSk7Cj4+Pj4+ICvCoMKgwqAgaWYgKHRlZ3JhLT5ob3N0
X21vZGUpIHsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICghdGVncmFfeHVzYl91c2IyX3BvcnRf
d2FpdF9yb2xlX25vbmUodGVncmEtPnBhZGN0bCwKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRlZ3JhLT5vdGdfdXNiMl9wb3J0
KSkKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+Pj4+PiArwqDCoMKgwqDC
oMKgwqAgcm9sZSA9IFVTQl9ST0xFX0hPU1Q7Cj4+Pj4+ICvCoMKgwqAgfQo+Pj4+PiArCj4+Pj4+
ICvCoMKgwqAgbXV0ZXhfbG9jaygmdGVncmEtPmxvY2spOwo+Pj4+PiArwqDCoMKgIHBoeV9zZXRf
bW9kZV9leHQocGh5LCBQSFlfTU9ERV9VU0JfT1RHLCByb2xlKTsKPj4+Pj4gwqDCoMKgwqDCoCBt
dXRleF91bmxvY2soJnRlZ3JhLT5sb2NrKTsKPj4+Pgo+Pj4+IEkgYW0gdHJ5aW5nIHRvIHVuZGVy
c3RhbmQgd2h5IHlvdSBvcHRlZCB0byBpbXBsZW1lbnQgaXQgdGhpcyB3YXkgCj4+Pj4gYXJvdW5k
IGFuZCBub3QgYWRkIHRoZSB3YWl0IGxvb3AgYWZ0ZXIgc2V0dGluZyB0byB0aGUgbW9kZSB0byAK
Pj4+PiBVU0JfUk9MRV9OT05FIGluIHRoZSBvcmlnaW5hbCBjb2RlIGFsbCB3aXRoaW4gdGhlIGNv
bnRleHQgb2YgdGhlIG11dGV4Pwo+Pj4KPj4+IEkgZGlkIHRoYXQgdG8gbWluaW1pemUgdGhlIGFt
b3VudCBvZiB0aW1lIHdlIHdhaXQgd2hpbGUgaG9sZGluZyB0aGUKPj4+IG11dGV4LCBhcyB3ZSBj
YW4gbm93IHBvc3NpYmx5IHdhaXQgYSBzaWduaWZpY2FudCBhbW91bnQgb2YgdGltZSBmb3IgdGhl
Cj4+PiByb2xlIHN3aXRjaC4gSXMgdGhpcyBhbiB1bm5lY2Nlc3Nhcnkgb3B0aW1pemF0aW9uPwo+
Pgo+PiBEbyB5b3UgbWVhbiBpdCB3aWxsIGJlIGxvbmdlciB0aGFuIGEgZmV3IDEwMHVzPwo+IAo+
IEN1cnJlbnRseSB0aGUgd29yc3QgY2FzZSBpbiB3YWl0X3JvbGVfbm9uZSgpIGlzIGFyb3VuZCAz
MDB1cyBidXQgYWdhaW4KPiB0aGlzIGlzIHNpbXBseSBiZWNhdXNlIEkgY2hvc2UgdGhlIHZhbHVl
cyB3aXRoIG5vIGNyaXRlcmlhIGV4Y2VwdCB0aGF0Cj4gaW4gbXkgdGVzdGluZyB0aGV5IGhhdmUg
d29ya2VkIHRodXMgZmFyLiBEbyB5b3UgaGF2ZSBhY2Nlc3MgdG8gYW55Cj4gaW50ZXJuYWwgZG9j
dW1lbnRhdGlvbiB3aGVyZSB0aGUgdHJhbnNpdGlvbiBsZW5ndGggaXMgZG9jdW1lbnRlZD8KPiAK
PiBJbiBhbnkgY2FzZSBJIHRoaW5rIHRoYXQgdGhlIHVuZGVybHlpbmcgcHJpbmNpcGxlIG9mIG1p
bmltaXppbmcgdGhlIHRpbWUKPiB3ZSBob2xkIHRoZSBtdXRleCBpcyBzb2xpZCwgbm8/CgpZZXMs
IGJ1dCBpdCB3YXMgdW5jbGVhciB0byBtZSBpZiB0aGVyZSBjb3VsZCBiZSBhIGNhc2Ugd2hlcmUg
d2UgYXJlIAp3YWl0aW5nIGZvciBVU0JfUk9MRV9OT05FIGJ1dCB3ZSBoYXZlIGFscmVhZHkgdHJh
bnNpdGlvbmVkIHRvIGhvc3QuIE1heSAKYmUgdGhhdCB3aWxsIG5ldmVyIGhhcHBlbiwgYnV0IGl0
IHdhcyBub3QgY2xlYXIuCgpKb24KCi0tIApudnB1YmxpYwoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
