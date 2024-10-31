Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68823D767D8
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 14:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbS4hka4Ao9JJQhQFqIL5oFGEdj3oHIxzllhxoEV61g=; b=dlV8E+CNw+KZcV
	EkgZgD2r+SvJKk+CKrNutrWg3yL9TZMgSRtrAtNZ3E9ITvXk1/gDm8zyIgIE2KMnLkkf0ytfi7LfO
	rEuGhCmuTfbfrZ1xR/MF0glgIWwEDcITiw4gpdIaSz4c+VoxFN2ERjzmEEOIgNGeMpbRHhySM4of/
	seLRWNPMz/OPRe0XMXfKYkn/Bd54S7weX2Y8uTfmLxgqRfouYUGmtF7WzL8xu3hoji7vzI+S4rdkP
	ReWeFarVh32kcDfhxzG6KcKTE8yxMIjK6jVZhnbfEUciR6cQ6VOl+HxoCOSJVfmCPcgd0UTmOOpE9
	a+EKqtUSA88FCWmKMDmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6WJu-00000003q4S-3cps;
	Thu, 31 Oct 2024 14:38:42 +0000
Received: from mail-bn8nam11on2070c.outbound.protection.outlook.com ([2a01:111:f403:2414::70c] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6WCq-00000003od9-0dMx
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 14:31:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uYwouUz24csRzZbPyYiuGJCCsd8KE3seI43DVFpA6jZ14a7wCHkbk8O4H4ZTshNo1RVjYqcevtCEhh2O+jxh5njd1OK9HBGLcYV6z+qSvjvHZNbxLuylPsYOMZMN9H7qxEtlstqEOoMFsmB8Dr1aY1bC0ByqQdDh8jgB17zVSialrG1bEddCeHtHHizSLgNQ9YTDjA/CFJoA28CcF+nSxTsrLB7fEXl7FSmZkaBDfEfqqPomOCLo1Ki0T9sIKeTtk81QSOZzsa5V+HxXGpQJ9HA2W0pXrPM93h7LWA+vU6PVXH1LAPQ601d0BbcJM7pZv8vFgS7k75VtbRy0GbVz4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gLreAuk+bolIm/Ha/C5GaDGLQt6CWuQAa2yZMB3Qmmk=;
 b=maEP9ooQJgbrGmVGyx4u5guA3s7LyoLrH+bBVGFrKDwpgzsDNvqW+CooZhbReXhf10EDLRtW+Y7dX3ADAyqLmTWL3l0SRA/aVSVCEWelYFCx4kvkumCmbJIGyk2zvZCkNm6MaWsBKnADdGv9NpWS0S7O9Vo2BZFl8VlxFDsNpnL7SnuryVpvjwRDNQeeeGaw+ZK4qmY19X+igWP/18C3bEYGGBOy6tIy8lEi+a0cAFuokoeZA7WqgVDOs+Kt55b/4Zz8h99Ogx5O+9nGVVFXl3uPYtlUYMSHMjWcSSmzjOyHrlSjmT8674A7SXSYE4BTNUlcE2IJS/gWohARzvn2kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=in-advantage.com; dmarc=pass action=none
 header.from=in-advantage.com; dkim=pass header.d=in-advantage.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=inadvantage.onmicrosoft.com; s=selector2-inadvantage-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gLreAuk+bolIm/Ha/C5GaDGLQt6CWuQAa2yZMB3Qmmk=;
 b=n93P2e1QLMpUzIjGgGwblOZq5grB4IPSVP2n9RwIF49ybntjvu9G2KAuabB/MjDNATlF3tAnpH/tL8NCBQyBOJCYTd/eSLZbjQbjS1Hbu89SRMPUgXXhI528m0BlZJElxHL4TZCn9Ctp8qtYa5i9LkcNKc2YYypLfQAWkWXW+ks=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=in-advantage.com;
Received: from DS0PR10MB6974.namprd10.prod.outlook.com (2603:10b6:8:148::12)
 by DS0PR10MB6894.namprd10.prod.outlook.com (2603:10b6:8:134::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Thu, 31 Oct
 2024 14:31:15 +0000
Received: from DS0PR10MB6974.namprd10.prod.outlook.com
 ([fe80::7603:d234:e4ab:3fea]) by DS0PR10MB6974.namprd10.prod.outlook.com
 ([fe80::7603:d234:e4ab:3fea%6]) with mapi id 15.20.8093.024; Thu, 31 Oct 2024
 14:31:15 +0000
Date: Thu, 31 Oct 2024 09:31:11 -0500
From: Colin Foster <colin.foster@in-advantage.com>
To: Jinjie Ruan <ruanjinjie@huawei.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linus.walleij@linaro.org,
	treding@nvidia.com, florian.fainelli@broadcom.com,
	krzysztof.kozlowski@linaro.org, davem@davemloft.net,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: ocelot-serdes: Fix IS_ERR vs NULL bug in
 serdes_probe()
Message-ID: <ZyOUr7iDa9nFBxgq@colin-ia-desktop>
References: <20241031123847.1356808-1-ruanjinjie@huawei.com>
Content-Disposition: inline
In-Reply-To: <20241031123847.1356808-1-ruanjinjie@huawei.com>
X-ClientProxiedBy: BL0PR02CA0139.namprd02.prod.outlook.com
 (2603:10b6:208:35::44) To DS0PR10MB6974.namprd10.prod.outlook.com
 (2603:10b6:8:148::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR10MB6974:EE_|DS0PR10MB6894:EE_
X-MS-Office365-Filtering-Correlation-Id: d8779dfb-05fc-40db-9fbb-08dcf9b8acf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VzoIBPvHtsBQZqjqdimtdUHhBySuRQhvM1o5YWQYQWZqIZoC4EIElaRUatLu?=
 =?us-ascii?Q?t51N16tIQAm6CaYFOlO5pelRaSaOCiDPIEABxx+e1CUGWJ/lO11jq9ol9Xji?=
 =?us-ascii?Q?18ZqE4KLxMS/X90p2bT/lxnY40A0hO9T2bejGYalwq259vLqtC0Au/m7Bj0e?=
 =?us-ascii?Q?GvEgE04MVN6B5Pbg0cEH3vbFM8Y5jkKBWAQqcxUheg33dpdt5BjzT5Xd2tjv?=
 =?us-ascii?Q?cqv+0POG2xJYhXIO8IyUWLN/RCeX96pPATM3DF9tiNk63F9fONZWB73GQnHy?=
 =?us-ascii?Q?jgy/U2kUBOKSoO7T+dGDuKRh7WbZ7XvRzArD8p4nqICYoUUAkCfxIPFJH2ZJ?=
 =?us-ascii?Q?KFMCdoEsyiI3hqYscKRCAX3St/khf91uZJ8ctQFdvVhAlI1P8DBGmyy1Fp1R?=
 =?us-ascii?Q?02GKw9VidqRLMNuM8LOdqMcz5SpMUlJqSI0CwnIw688stIY4C2FwEKmZfliu?=
 =?us-ascii?Q?YcCCsZFLFqaIqINNCTJsBsx9WcM8AE5htYSxivic187ybz1kgqfSN+4nWX13?=
 =?us-ascii?Q?aNfWXii4VCFZJoWM1keWeVO2Y0wg92F1Dm1kZ5fPv1T/ZvN8xp/sW+vJSxHo?=
 =?us-ascii?Q?nvpsVMxprzPkCpRfwD+Zn2+t5bKBcvtrFWAkBgWNz1AsWWmcCSnQ/0c7uaMx?=
 =?us-ascii?Q?5+KveH1ajjMt81FFR0BwiXcc5zFqCYdsVmm8YtFnQT6StnhnCUt76gtOLKqt?=
 =?us-ascii?Q?wEZqlq0XmA8H3mAg1xyfMjHh279ewN6CsFfLgB815WBxP/JCEyY72OqBzP7D?=
 =?us-ascii?Q?2r/gpK9wLpgdW57lHJxKY2pAhZsbZZDD3a7C0E8DQD9HcfALh24MNEjFyl/V?=
 =?us-ascii?Q?u0/BhbDk26M+y5zBUGlAlgL8K2VxOcjV0NmexsruP9hOPKu9cTwzj00cCyge?=
 =?us-ascii?Q?xm+1Ak9t8KtuD9BPOHBXK4oGaYXTdh9yRtXWnv4je5m2GJiFx0+Zeay1t29m?=
 =?us-ascii?Q?wFFk2cju32w3hsDocpAyXP80+9jrSVbxzac0ZdODv8JZ46ylBlf/JHnWwm3N?=
 =?us-ascii?Q?lh6XgEnNEV3Xxccr3eZHp8QgN/8W1PTMagY3WU5Xv9SoL6G1ov+h6V26By2C?=
 =?us-ascii?Q?BG7hXyKTDVLsdOx+nTkYTXXOCWztemk+POB6vm4+uThVg0cfLzmmGdxo4nn2?=
 =?us-ascii?Q?8Om/lbXVl6cSFmJyemqdxiTNxEbQlaKlz0Y6bZWiX+QhOq9GmFUVjWEIF0eD?=
 =?us-ascii?Q?EgLdXfd3wue/drD+eOX/9GfSkjmpTp7WrGhSeQ42uGfTGeABSC2ezUJQh+RL?=
 =?us-ascii?Q?kVhZHAzvsVh9FmEL+n5IwMIv2ZwFNfjjyEECRimE53UxtqRFlp2+COaLHKGh?=
 =?us-ascii?Q?JLYoErP67Wy1WPpm4kJC7vEo?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR10MB6974.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(366016)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TPelnYdLnqADCHEFCPWhZoWeOCQzZXoUiU00Kvy5rYZEwM7n0sk/Db3QdLfu?=
 =?us-ascii?Q?8VYdnsMhKAinLKnKh8DuNASs64jDf4nyAsSJcEOMFz9gedeXcHjvGxg9/uTG?=
 =?us-ascii?Q?xFpenmrp/VIRJht9OVDVP4guLS9Lc6zjZ5L1Xgbt/+onv3p/rGDMGoDJVseC?=
 =?us-ascii?Q?mDh4xWm6KJKn1zNP/qny4e9ExahG1fmBMqb4Np88Nf7cfe8WHrzkxxMWHx4U?=
 =?us-ascii?Q?aClTZ+26ElRys9zZOfhH9CocxhwMgZmzZFXLNgCCNgxicOGhqFfe31i6om5n?=
 =?us-ascii?Q?94huKeq0rauX2aTHUQrJl0hLVjANpO9Kmkeuaue9IKa4QE9h2jx5s48Gv+iM?=
 =?us-ascii?Q?zC7sQ1RpjDStBgCPy9tiZxuuzNz84M3eq/MVsZ6Xo3alPoxamcIvrP+5XLlr?=
 =?us-ascii?Q?CziVM5hTG4dP42Q5xjk9YMzsKA6HBx0KlggZGmyWIy1v+bzatghAk+V2J/Oa?=
 =?us-ascii?Q?STr8hnjk+3IEZ1zNJYICCaELdpkcuyDeFNM7DgVgBrG2dybFBx0Vsb70wCsN?=
 =?us-ascii?Q?EBN5Ifz7XPfzEIREbylR3p0HIP4C1NpnqVJyX6WCdjuhuVSD8pReO/HuxkrE?=
 =?us-ascii?Q?PAtSF35vFNSwUUIuVK4Vrip57zSFUG3b9Owp0W60Noz7zD6CC0bUHBkWLkRa?=
 =?us-ascii?Q?+bSi+DBnAZIDl8fFhJlRkYREhhXQ6SCk4FoiTv6QRWcwifjWKd/PGDnHN7FC?=
 =?us-ascii?Q?YIjTzr6TySTkTDJdpii5b/gIZOvL76KfoLCHvOGn4R+DkJUKDk1xGrVEhIwV?=
 =?us-ascii?Q?x/NwEe/Xb7KHblu2pdK7k2u4kDygpSSZUgiK0NlLvnEbeYbtIgP9fm8Mo272?=
 =?us-ascii?Q?Mooc1K4F5iPvKUalm4go9Lo0E6z0s7AHAe+HbIrvm26vc/WKWewQFtYx2oOP?=
 =?us-ascii?Q?hJ5iurmT4+s//4fb9fTkjFHkzVcNAg9QXuxZSwj1pVSw97XCqNintmL8zRdW?=
 =?us-ascii?Q?IJhNIEoItYei4/hieEZiaoyEdiIbC+LI/U/V2rmQ8stPwb9Z2gP2h0EdSY0b?=
 =?us-ascii?Q?0r0Hd+TcQD4hU0ZyqrQ6JYxJ1lvAN6W96XFeTzNitoYkVhOfm0PK8gjsCzkX?=
 =?us-ascii?Q?g6EuKy8pKIam99QrGSZZ4qoVkhlZqJkHbhXmZAyN9T7WS+QHJ0/HSM8/tPeR?=
 =?us-ascii?Q?czdWrugMl49eetsr4yU0Jm0YfZ7zqES2+BmItthHt7WDsz9xKJOJkq5TQagl?=
 =?us-ascii?Q?bJTe6h8t/tgdxtMvWbOdwBZHh7WPVAwI0vvj2LB0AeRRqmfCGCzk40y6YntX?=
 =?us-ascii?Q?9Csizma7z3GqHeDEv0jxrKIeqNK9urwk+N4uN6186xLvCNKAqF2aYbyFMNOL?=
 =?us-ascii?Q?q11cG/5W1N899zZScd3/60E1RckXdzap1PxLyw9IUJJj8p+O6IMncoGm8GAt?=
 =?us-ascii?Q?G7WjFwHomFmtHmdVl8l7t7j6XNtYj4M4vZ1iY7QB3UsXozf9REzpYhaheyvm?=
 =?us-ascii?Q?RFlrr/ZaHPJ4df8IuPCtl2iz1Dbg0TEaZO047Vj7r+BF58Vp+lrgrSyo+Gjp?=
 =?us-ascii?Q?D3LxGWD+zc+y9AMezgW1BRhZ48oBsr7Nv10aUHsR1h5xefprLDFXZWo99PHr?=
 =?us-ascii?Q?Wg9qcjpZnS9r+oJxOspkRP+eZJQOJ4Umxt2N/a8d9L9UXv+zqvUUa1zpsZG3?=
 =?us-ascii?Q?Hpo6sw7hX+YUilDyHfN/84Y=3D?=
X-OriginatorOrg: in-advantage.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8779dfb-05fc-40db-9fbb-08dcf9b8acf7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR10MB6974.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 14:31:15.3111
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 48e842ca-fbd8-4633-a79d-0c955a7d3aae
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jaycrBqRrX9gB47J8JQ+4C8hd8IqlxcS7zG1gXuw5eMrsLno8RyE5wePcMCLLeUiMuHJPW53MlvnoC6HjiAmZmzsNYd/wDa9yzfvQi0V174=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6894
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_073124_271542_8BD71C39 
X-CRM114-Status: GOOD (  16.72  )
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

On Thu, Oct 31, 2024 at 08:38:47PM +0800, Jinjie Ruan wrote:
> dev_get_regmap() return NULL and never return ERR_PTR().
> check NULL to fix it.
> 
> Cc: stable@vger.kernel.org
> Fixes: 672faa7bbf60 ("phy: phy-ocelot-serdes: add ability to be used in a non-syscon configuration")
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> ---
>  drivers/phy/mscc/phy-ocelot-serdes.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/mscc/phy-ocelot-serdes.c b/drivers/phy/mscc/phy-ocelot-serdes.c
> index 1cd1b5db2ad7..77ca67ce6e91 100644
> --- a/drivers/phy/mscc/phy-ocelot-serdes.c
> +++ b/drivers/phy/mscc/phy-ocelot-serdes.c
> @@ -512,8 +512,8 @@ static int serdes_probe(struct platform_device *pdev)
>  						    res->name);
>  	}
>  
> -	if (IS_ERR(ctrl->regs))
> -		return PTR_ERR(ctrl->regs);
> +	if (!ctrl->regs)
> +		return -EINVAL;
>  
>  	for (i = 0; i < SERDES_MAX; i++) {
>  		ret = serdes_phy_create(ctrl, i, &ctrl->phys[i]);
> -- 
> 2.34.1
> 

Good find.

Acked-by: colin.foster@in-advantage.com
Revieved-by: colin.foster@in-advantage.com


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
