Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BB5D116F3
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 18:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kMJE7mXVcWBBy66QE3AGvzksDf0N1yjauHKFpA4Eww=; b=wctIazfxbssvWl
	YlDKWQHHSC0DZRB5UMBCUsqVwn5JWZj18+sx5+swOz5FkSuwYhpgk2Dlzzawht2GXVHAQWzMsOphw
	Za6rpZPmgIg5WJrQJhNs0VCpyNYY35HhBRrNP1A/h+qtxE2rSCa3BsG726HPV8GdqByzw3ZrYjsa0
	S5u5r/7THH869hsN9bdO+0rviGXqw5wIlq9nHzo0VfKIJIYr+/f101ZUcDEK81SnNiaBp5OBAfZOF
	OwWBPhM2i6RSXQAaJV+SZKvw6fuSss/cuv5bCxU/OZLDENiZWdKOQXb2v9CqhdnR8+3BiAxYUYlYs
	hCIcdyJ0yW6cYQ3egZSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ8EU-00000004OXA-1uhQ;
	Mon, 01 Dec 2025 18:02:42 +0000
Received: from mail-centralusazlp170100005.outbound.protection.outlook.com ([2a01:111:f403:c111::5] helo=DM1PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ8ER-00000004OWN-3S0z
	for linux-phy@lists.infradead.org;
	Mon, 01 Dec 2025 18:02:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q9NsMCRSzvoPCc0M2AgPZqZBI0fDVm0ABUg/GSupOcUqOCCZEfk9MRivZMV2Bbi9UehIYUivjB6/xLw6KBjW5pKxS7Of+7vs4OWYHohAfKPnvxIALo9aARqk/ExkQjs+2Te0BJTFTueuQeFrLijg0Yen4Qz8OO41n/Z9uaINz5zFTgcSnWpP+h4cYP7r0RkvBRgtLYguZtCohicSDWgWdXSqfU8Y0ZRbXM1podJ2tiBCdJfWIvJY4pOHx3qm2q8H4pawuKcxMzJpqSerNDu6sBI92NeeZAcIQe0SBwrrktrW46XtJV20vPN6P3VPsUW2YXLmtODnYvPu0HoUc/V7Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6kSudVzgAmRRD7vjKPkuAkRAaB6dhhZeP1wYM/K5Fxg=;
 b=P9Rij0XOENXa0h1u+wv2IaqCImF8SXQtcd0h3ppqN4RkmHo9T4XYvdYbGT1knKq8G7RhJR8Zq0YI2q1SOoVu6AMmv0GQPcVAcjpxGeZSoPbqTRRkRIH+/9NJwanElwDK7Y8EhY6+mBdi00nlvCw0a7RFqjDA3dLYLzywb+8oc8CeBb/TQm6lynNsx8qO2+K2cBqJejAqtIYs+QV9eA63jcAdO3/Kead1dVFAtgKWEWRYT/aK9t8PoG2OLGQkIwtS7ZdIzKYWVUmewfioNcdpQeipNXrwVjL3OP7txC1jIkh0X+vdPd0ZUH4zuebHDUlFaf/i+hlpAgv2i1OS63yu+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6kSudVzgAmRRD7vjKPkuAkRAaB6dhhZeP1wYM/K5Fxg=;
 b=TFhWGQj3mNBBon+bGyG29YpNBwNUz5h+J5XqEo5M7zm2jY33/mAP9ClbNIlCfp+Y333+2U7kFIs6may8SPdKob5AAWXUOB9gjskFpgdODU9bTu6xzOsy3oRy8+Vi84I4jFqvOYx0Q1meQqDtIM3a/FP9mQGqtS3BisyigP6exRI=
Received: from BN9PR03CA0127.namprd03.prod.outlook.com (2603:10b6:408:fe::12)
 by BY5PR10MB4179.namprd10.prod.outlook.com (2603:10b6:a03:206::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 18:02:26 +0000
Received: from BN1PEPF00006000.namprd05.prod.outlook.com
 (2603:10b6:408:fe:cafe::29) by BN9PR03CA0127.outlook.office365.com
 (2603:10b6:408:fe::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.17 via Frontend Transport; Mon,
 1 Dec 2025 18:01:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BN1PEPF00006000.mail.protection.outlook.com (10.167.243.232) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.8 via Frontend Transport; Mon, 1 Dec 2025 18:02:24 +0000
Received: from DLEE211.ent.ti.com (157.170.170.113) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 1 Dec
 2025 12:02:19 -0600
Received: from DLEE205.ent.ti.com (157.170.170.85) by DLEE211.ent.ti.com
 (157.170.170.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 1 Dec
 2025 12:02:19 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE205.ent.ti.com
 (157.170.170.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 1 Dec 2025 12:02:19 -0600
Received: from [10.249.42.149] ([10.249.42.149])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5B1I2JWF869456;
	Mon, 1 Dec 2025 12:02:19 -0600
Message-ID: <3ae82d10-a9d6-4ef9-91dd-4d0f6de56089@ti.com>
Date: Mon, 1 Dec 2025 12:02:19 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: ti: gmii-sel: fix regmap leak on probe failure
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>, "Kishon
 Vijay Abraham I" <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<stable@vger.kernel.org>
References: <20251127134834.2030-1-johan@kernel.org>
Content-Language: en-US
From: Andrew Davis <afd@ti.com>
In-Reply-To: <20251127134834.2030-1-johan@kernel.org>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF00006000:EE_|BY5PR10MB4179:EE_
X-MS-Office365-Filtering-Correlation-Id: a95d1fa2-58f4-44d8-2319-08de3103c84f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700013|376014|82310400026|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VzFwQ2lWWFUvMVd5NTIzTERPeXVHM2YxNjBNSkxNUUdzVXZkdzJvdEJIR1hh?=
 =?utf-8?B?YVhjQzk0b2tCRkdpNFN1dG5NbzB2U0RyN2JEUzgxVExWbTNHNkFEK2c3SnVO?=
 =?utf-8?B?bGlLOVJmZjFVUkorNmZQaS9sWXdXSk84NXVjMVgzcVRzUy95N3NqYVMxWlI2?=
 =?utf-8?B?ZDRuempaKys0bkFCSkhVSWx2TW9DN0s3WENQL2JVUTNaQmF4UnBoNE4zYUpY?=
 =?utf-8?B?azlwRkZsK1JCYWovVTVZdDFPWW1QbkU3VjA1S2JSblI4bS95V0pSWVBsMC9R?=
 =?utf-8?B?QWJkNXN4NGNJMHdpVEdTMi9xanFqSTk4c2ZLSGZPWmtkVjVFNEV3MGY2dXBX?=
 =?utf-8?B?TXRqOEF3ZUJ0V0crYi9JQzlPS0llNlJNU3FNZkd6Y2UyODRRcStnWmFzdExW?=
 =?utf-8?B?TDRoMHRXMXgyQ003anRFblpqRTJQa1hxV3MxVDh3dUkvUW11WXVEaHNhcGxn?=
 =?utf-8?B?cG5tUVBoaGh4UDAybUJIdXJNRTRBQXV5aE1WUDMrSGl4bkhTaFA4d0R6QS9U?=
 =?utf-8?B?cWgrVWRSdGN6QzFxajMyNHdlU2J1QUVtMVFRWUFIWGRXdUU1RGNwN2tLTWV3?=
 =?utf-8?B?UzB1VXV4Q1JWeVdSc2IybUNzVFFITWJCbDM3bkE0RHB3YmVCL1ViQVdYMmJO?=
 =?utf-8?B?YWJMdDZyRW84WWc3bjlNVnZQZmNOZnBrUVFaMWFHcnNvU3FUakV3UFljK2pN?=
 =?utf-8?B?N25CUStabVBRbHJLWjVDWnNWQjgybDlhRk5IYURxTUx1QVFVRWw5UFE4and3?=
 =?utf-8?B?T2h3cnJCdlFaVGs1VVEzNnpJdDFXVHJqVThrTk5aVjhTc1lCMExPTnh2ejR6?=
 =?utf-8?B?eG8yMnc5Uk1PRkgxZVlSK2dHdStKSHFBSjRhUmtoTzNOa2FjVlBtbHRFbnNC?=
 =?utf-8?B?RnVWU2g3dHA3WHd3RHprUDhKcjB1aGVtYVQyTjVLM1pVWGhXM0dROWRrUmkx?=
 =?utf-8?B?bTdGdzRIU0tGL3BjWXRhS3R0c1MzSDBGZUN0blBiYjMzUUxwQjUxSVNPcDEw?=
 =?utf-8?B?VkZRWWF2TkQ2ZlNhLytvcXZyT0plQ25MZzFMQ0ExY3gwUlRwMC8zYUhHRElG?=
 =?utf-8?B?Y1lHbFEyV1BWbk5hQWY3RkkyOGVKaTltNUlSTjJHQ0dXZE5xNXZJWXBNWnhE?=
 =?utf-8?B?bTNyUHcrdzd3R1B1cmZiVW94RlVrNGdvUzdIaTkrbHBpYS9raDNFZDF3MG9T?=
 =?utf-8?B?L2xWbE9OdUJVVlYwRkFDbUcrdktWREZvb2l1YVBSTDRnYU9YdERjTUxKMTVa?=
 =?utf-8?B?YkRvRS9haGE1b3o0Sk9RSEJSTmlIcktHQ0c3clo5RGF4ZjQ3UzNEMkRDVjNy?=
 =?utf-8?B?S0RjWlRkWTE5NVI1eTg1RVpNenljeE5PMHd2M1RFMWtRbzhQSXI5UnFGcWds?=
 =?utf-8?B?N3F2cHdNNCtBZnNodFRVQ0hNZFdYQWZ0TWMzWEpST2d3akFvSWdRQmMyMjlB?=
 =?utf-8?B?bDlXWTlXK2VscVNqTERURW1reU1YVkN5ZGFqZnlkTkVNRytWeXdDMjFmZ1V4?=
 =?utf-8?B?eGJBSzVIaGxrMXIvdVBpNWIreGhVZUpXOHdRTGRIMCt4RWUzRnVDSjFEb3Ft?=
 =?utf-8?B?bUkyNHpnSnBIaVk4UGs4ekhuWXprc3A0bW5YL01STzZWL1VseWlpdUNrUHVt?=
 =?utf-8?B?Yk5oNkFVSE5QVE9KV3lWMDg2TTNzMkgrR2wzZmpBaFlZUzUxMy8vd3hKTVRn?=
 =?utf-8?B?bzE4VGVkZytnaXEzajdmMkNKd1V0dzlOeDNpQSt3RXc0dzMrWHAzQk1OdzRJ?=
 =?utf-8?B?Z2ZON3NKUVpyWVQrSlptWWpVYm14U2g0QlFmNjNOaVRMaFhwbWNDYk5LMkhv?=
 =?utf-8?B?R3c4eDBBbE14eXNpZk96REJtQVdRRUIrUU5nNHFkWGRySDhDOW44QmJrNjlj?=
 =?utf-8?B?dnBDcnNWYVdRZWE0SE1oNVBodkNQSkJXY2ZIUVZOVHRMakR2UHExWm9YN1RH?=
 =?utf-8?B?MFNQNXBIUzZrZE9QZjhqS090eTU3UU1xcm5zSy9XTGs1TDJISE4xWlJGcFZB?=
 =?utf-8?B?U3dOdHRnQlExemFCWVBmbk9ISExSR2lFSXJUK3pUSG5ZTkExQUV1OGpURVI5?=
 =?utf-8?B?dWRNK0xzT21XUU8zcHhKcGVLQnZaOU1haG9hdEMyR3FTdCswWUthZzdiRUh4?=
 =?utf-8?Q?EUkg=3D?=
X-Forefront-Antispam-Report: CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(376014)(82310400026)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 18:02:24.7260
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a95d1fa2-58f4-44d8-2319-08de3103c84f
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource: BN1PEPF00006000.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_100239_978530_12444079 
X-CRM114-Status: GOOD (  14.27  )
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

On 11/27/25 7:48 AM, Johan Hovold wrote:
> The mmio regmap that may be allocated during probe is never freed.
> 
> Switch to using the device managed allocator so that the regmap is
> released on probe failures (e.g. probe deferral) and on driver unbind.
> 
> Fixes: 5ab90f40121a ("phy: ti: gmii-sel: Do not use syscon helper to build regmap")
> Cc: stable@vger.kernel.org	# 6.14
> Cc: Andrew Davis <afd@ti.com>
> Signed-off-by: Johan Hovold <johan@kernel.org>
> ---

Acked-by: Andrew Davis <afd@ti.com>

>   drivers/phy/ti/phy-gmii-sel.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index 50adabb867cb..26209a89703a 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -512,7 +512,7 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
>   			return dev_err_probe(dev, PTR_ERR(base),
>   					     "failed to get base memory resource\n");
>   
> -		priv->regmap = regmap_init_mmio(dev, base, &phy_gmii_sel_regmap_cfg);
> +		priv->regmap = devm_regmap_init_mmio(dev, base, &phy_gmii_sel_regmap_cfg);
>   		if (IS_ERR(priv->regmap))
>   			return dev_err_probe(dev, PTR_ERR(priv->regmap),
>   					     "Failed to get syscon\n");


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
