Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C0B0CA0FED
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 14:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oULu2bsUjK/UHzdp1SEmA8iSn8p/8GNYHyMfRmGoU8=; b=u2xnlaq/xc4NzY
	LXqcLj/0nfmIBnWBeFbs0LJiA+JUukRZ85BnqvKx+BL87XHkUWV1pN6rxp4GNl3Cs8ga4iPNq/wnf
	NgpwJoJgTXMCdg/A+s/CyT+gVGAXofuc1mcp22z1/K178/cdxuqYorhsTf5Ci100VdOkOi+Gl2ju9
	JEsC+KpH1SBEREZySd0nih1iUEF3VBDqdoGzzsKs4oF9NNjhndNXYJOoBVUwJVqJVp8cw1DrYfszq
	JSmk0S9uQtDX1+vb7Bni5DD7yo+BM1+RAmoj299BRq8jfQow/ojRH9+xcY1qwFEOMTykuTTxrwdfm
	UnTW4JP5qFLQcEhBXlxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXYS-00000002OXV-2vc2;
	Fri, 05 Sep 2025 14:36:44 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuTsh-000000017kT-1XkS
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 10:41:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PELGBe0eKu6tg26kuIWhuhKbBXq10ngKcO2Hq/44TQhhFvkGsCYAzzUOfGYpmtx9DePMs+3Ci2NWskDmg2/Enfeq9eBn93ZtGZkQjwIhmWvHhbeuCQn0j0DY9BVXWej7FIFPMk+v646dLP26J7fgUorZ0StSmxSF/j0eT5EGumvba1YcNIHTfPdZ4Ena7qcGc2fGq7l600RWx3VDp5xX3vFflv5jpnYFEfBZ75aST9cHB7q2SuooIMKaLFbvD7/U18k8zsf3vPZNRt/aUocX2dvdz6VNVSc9PM4AwOAep0Fn/KXGx1POm5TSmVhC/w70cFSkyCdXwbFQOxPDxBr/zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KwmdLcpwfMyuyXOCYpZBf/zH18FrHERPuUDAqGbsxx0=;
 b=Eo8pWipThC3KjmO+HlzxLt37R8j2Ev6zWYBb4ZJIPixQcSMlTXCTsBjZQdkidVWnir4X/isZGYPcydBdgSpCYhMoD52Q0qZawhPrLfzpIjMsDpse/moffoxg+xFOWfmvyXluPd/V9UVW4enrgTVfDYd7Bjyebj5tMfECMgNxLAqijQM/EvIcg2lUH8oYTvaeKUL3eDfXofP3275/oskkCtqlkruYpKqOEj8xnqHYR0/llJf4Pc71dlPQ9JmjMwbi/ctF1r1a+kurd81MnyOjnYSe1dNn1PRKZq7AZ5c0Yb2t5u78klJyXYuWMja0uUG5IMiydZqXKO0qiMMOW5JN+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KwmdLcpwfMyuyXOCYpZBf/zH18FrHERPuUDAqGbsxx0=;
 b=hWPJ4+I++bfqcQgK5FqHT2SBZZqAL1TSuTUGLXEya62GiVsU+rOWjcRY9wkWijXYein4W9ve1t04n5TsQmCglAuu9LckUmPBZV/2jka2AxUg8Ii7oupVqN9k/WHrhOQF2tAmCqRFoJ3QNfvzJSqr17hlzUi62JqqITiGa9w1N/Gjk5lsdlnuvZEo9aQJHHhcQY6Vb6h+KK6EXUGir5cKtgGTKEQmI4nHdkwZyvhHckWYm2ijzhLYfJeRLxhnLXh7Fxe8xDfWdqK+j44A2cp2IwdZkEJjqGP/FOERefksJVsjuX3WX94Aodc1tChc22t+vPmp8UsXMEUBMKmaRoVjyA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AS8PR04MB8868.eurprd04.prod.outlook.com (2603:10a6:20b:42f::6)
 by VE1PR04MB7296.eurprd04.prod.outlook.com (2603:10a6:800:1aa::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Fri, 5 Sep
 2025 10:41:15 +0000
Received: from AS8PR04MB8868.eurprd04.prod.outlook.com
 ([fe80::b317:9c26:147f:c06e]) by AS8PR04MB8868.eurprd04.prod.outlook.com
 ([fe80::b317:9c26:147f:c06e%7]) with mapi id 15.20.9094.015; Fri, 5 Sep 2025
 10:41:15 +0000
Date: Fri, 5 Sep 2025 13:41:12 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH phy 14/14] phy: lynx-28g: probe on per-SoC and
 per-instance compatible strings
Message-ID: <x6vnufvcng4glrltmifczyv6lxoa5ybre6fq26n6zggjgwslax@ayukzkpl5jvt>
References: <20250904154402.300032-1-vladimir.oltean@nxp.com>
 <20250904154402.300032-15-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20250904154402.300032-15-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR03CA0095.eurprd03.prod.outlook.com
 (2603:10a6:208:69::36) To AS8PR04MB8868.eurprd04.prod.outlook.com
 (2603:10a6:20b:42f::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8868:EE_|VE1PR04MB7296:EE_
X-MS-Office365-Filtering-Correlation-Id: bb8bdfc9-626d-437a-09ac-08ddec68bd0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eicbD4K/NHg4flrS56jiFFHND6SA3hUCltpNYSEySj0vWRCBugLFo9OjvIDH?=
 =?us-ascii?Q?UPl5QVIY7BilDRYG6bML+MbFCNfxAl8EuNvaRXPlp6NcyTBloYfn5b+V/B22?=
 =?us-ascii?Q?ROX+54OhZaAi9MquKdbIn6tGeqfQPn6qeLrozucvMNCzRiUoQU3HDX1QMJLC?=
 =?us-ascii?Q?Zi8k8/1zpABGB/SxMhoRnGwYhUzQv79TEHennIsnUGH29/azUPTbR0QDmkwM?=
 =?us-ascii?Q?eBCoSC2d9p6WqOGO1B3HwnE69PfjYI7F3x66BF+f/fF5fN9YkjWRrRfv1l/C?=
 =?us-ascii?Q?phnX0KeId2etMTVy3h7ocqDIFZ4GKsWuhIeAeVawmOZY1Rb7xwkccgWpfBEu?=
 =?us-ascii?Q?Jvk9y4XEg/XGtNxzprYJfoD5qTn3Zf8ClxpRCcvbjLwSSEO8giIZMBjDwX7d?=
 =?us-ascii?Q?Bix7eQmj+vmmKnCKoB36/h0idekQW9mYusiaHhT3LVZm0mfAg0TSQu00agGY?=
 =?us-ascii?Q?Ck4Jvp9XtF9Kol/0AkD4BpPKSjFZL5OrdtfWbX5TiALOiuvROpsjZ9cpgwa8?=
 =?us-ascii?Q?9JaYq1IGyFeW07bgd0rkdLuBYhMDGW4hl3ZDdB1twPW/OzJRYcAhvLlLLMgW?=
 =?us-ascii?Q?/bUXTYcGDZ5c+7/pbgulcX7mG/b6mRd3BbwkNv3wi9IknFnjJurAUyR7XFLz?=
 =?us-ascii?Q?mXppaHNdWwmlMnDsybCPqOrvxQdY3+ALtLY/CD4gjjL7eg0HHlKI44xeK8Qj?=
 =?us-ascii?Q?HpWMehyJxzem+DNgSM3rQhLs9NkG4SP2pShfNXBqwmfO/5TNKb1BFbHrYIpH?=
 =?us-ascii?Q?UIbzzwV80bi+ujJnf6puNYwe349oLyN0SzgzDOaCZ8XrxEIRFj34EVnK6JBQ?=
 =?us-ascii?Q?Mw+8LTnpnXcpLOQxT7vKtkTVRu8obUAKCtJARNIgTM3I9Hok6qB64YZqxfRu?=
 =?us-ascii?Q?gNJtXg3P0uH1SHLD/vC6tcW7iWCqjnkcZnfgkuG2Ejovj48LzD99lsA39Oq4?=
 =?us-ascii?Q?JjYpaRnuDnnLTUSWkEJF0AukqLiTHQYa6ig14QHFGxSxyW8gkG9rm+Fy4POs?=
 =?us-ascii?Q?eU6Ad/yk2jhFyPoLhMnu23lrxEvi/S8of30TJTnnwnM30BAqVStbAPDDEfD5?=
 =?us-ascii?Q?ppdpQeUT/uwVSYgAUi4n+qDM2jyrvwr9Bj7dFO+R+P2MFqXWlAYLzdedgoAm?=
 =?us-ascii?Q?5f6UfUHAXkzgPnrIM3ceZokqyLOYfT0EZSZRdz658FB5oxqWczsFNvB0JM2Q?=
 =?us-ascii?Q?T9dvr6LtpwQ28+itXTmyjVwrdT2DSdxgLlmBnFkXOYxIvTNaNDAuWsiztyxT?=
 =?us-ascii?Q?ZNjt+pkTaF/L4LMMw5E1GztZ5HTb33HUjxvbm8BqKGEIJ2CdyadskWCeQX73?=
 =?us-ascii?Q?0uQHFfvNLbRaBdxDsorBtDZL96yTyl8eOrx+QOV9YhW/zTe4OjP6ZJkS2fle?=
 =?us-ascii?Q?OxDoH8srbWWaA4nZOyVBiBpiJACSFloYmyrZQXWhwN2i4mZfcMukPIhrGNGY?=
 =?us-ascii?Q?8mHkYnHZMDQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8868.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?quA+GwwhJJm23qnnR53TDyFts28cyXRyVsCQllhUuyVY7gyXKnGS/DnV1Wkr?=
 =?us-ascii?Q?G86HCHM0ayXi88JZ0uBYcJXjWItF8ZrgpULBOs7MOjXi/7RL35oQNECjKDio?=
 =?us-ascii?Q?+ycPs1L8aDzxAZFx5jCamj87wnDKdlnn9Nfudagqpu8iA3g+ZEi+Xl94ODul?=
 =?us-ascii?Q?cRTWrfxDxZyv8CAIO3XvnfE36/lnM4XrPX+70ijEADOGkooqeafgNDgjNzXl?=
 =?us-ascii?Q?fo/U1YPbc06ciWI2zHgySMaiyO7/2lgbeOWRcaidtzdRxkXN/RL1SoJcp/kg?=
 =?us-ascii?Q?CT/20oOOV0TIPX7BdYeRZgIgI74oDAUY5SegZ3fTGYpJBAUbVFJGvsBhj1E1?=
 =?us-ascii?Q?ZahvYfuYywQJtUqoXsUKS68CreQROR9Pk4XQ/rBPJg2FLy0/QikSBbGSogUR?=
 =?us-ascii?Q?vRu//ZXRn2SOrRX9K8EuFPO6Oer3wjn5n0gjK7zLTBpdKLW4HLRrufzfJVhf?=
 =?us-ascii?Q?Y/QH5UdQDmb1jHgvNfWnYwv0WBuFl/F6ioaYlRWXlwJh3O2cebV8HTF2iyvl?=
 =?us-ascii?Q?dLMA7G87hijJxRw7KtU5I1rkW4ZsrD2HV5jZxnRvqI19gi/Bmi4WJmxSGQ6M?=
 =?us-ascii?Q?1hNHVqnXBKaxNLTGfSTt48vxJ236dbWEDgeh/x+yfREMAbB52oo3bOUek7WX?=
 =?us-ascii?Q?aN/13PhO18VgZaWcHYeO1vLGOPOrUBkA95Ktf7cT1X6Ik3qUMed+s3Mt/4KX?=
 =?us-ascii?Q?xjDPWKfbqUH/L8EyisU+Mt49jnJ1cI45bclGxObGYHQMMPRpt7GtuzrDgo8E?=
 =?us-ascii?Q?rgtqEA7DW5OkrK6k6Vf66tAMj7Bt7YkyW+I+TjF3QIYo4YYdNTl/Ecr3pQSB?=
 =?us-ascii?Q?iLSovng5bDOMZONkIbGoovlXOKph8py2KwNrVIqOgxEBHkdxNDivwn8j55e4?=
 =?us-ascii?Q?tmOPcXjy/mj+5itukva41yIN7geqDPyAZNmmsaDD23RTpzOMR2ZV/n+vrTy6?=
 =?us-ascii?Q?q7cG3RKHHdBvRx6kYnIfJT2NzcqgKkeXmR1qnLEtePBhD/LTOsq2M4sODPlB?=
 =?us-ascii?Q?uvmIUTZ9mB1If9cYIpWlnPHNQIxPxiFRg9dtWRvL8JvDjk5IqIxBMRDxjd3E?=
 =?us-ascii?Q?fwdA3PmW1UYUnC6atSYRXkVfN+bgez6expEHpcwNVMfhKRvntBgNh8LykbFF?=
 =?us-ascii?Q?iOMbMbiR/5YYVTAsENveD0aZZ5A6C6BcMbXwOG/4STazrwGJ7nCFnfNXQk1y?=
 =?us-ascii?Q?fLz7iW7RfjjjQ2W6xB8p8rNEWGZIr7kDxZLhvso+bRSFdkweOpmbKue24v1t?=
 =?us-ascii?Q?gf7+/rURtKZXLz/v1PgzAQwRxJZWU0dqP7zCSRHGAUTtL9ozEztH0AsFsffK?=
 =?us-ascii?Q?DPPlIxSvoDhzg71lZFW/4Th09jm/6SrMHsmuvdwSkdnkUZgItyUh+VPiT1KF?=
 =?us-ascii?Q?2SeXPwFlei89dCdhe0e/j3O01ZxwkNkjISPJsvEMsOyrwTZOoNFIrWW0bkZV?=
 =?us-ascii?Q?Injq9GFJdRhp5fZGE0VPTKTxKvsnczZd+kQIFl5Q2K361Dg6Aw63U5JbZlUG?=
 =?us-ascii?Q?S1/zJ8Ax2e1E5B2fCCApD7XfikCF87+QfLFYq/LOJXmnoafkKztBLOnoFmBo?=
 =?us-ascii?Q?AsgZKOd0TZAi5RxW/rYwUOAfVzxFOsLEcbICmPkI?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8bdfc9-626d-437a-09ac-08ddec68bd0d
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8868.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2025 10:41:15.0804
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3hgsyC7sdp2D3rI5oPB4+VueHK7093Afi1w8jlqP7hmDlXSk7kI1XUNGRA5YUmESYtwcad6/Fyip9bzIbEhf0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7296
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_034123_406172_618BBB10 
X-CRM114-Status: GOOD (  21.26  )
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

On Thu, Sep 04, 2025 at 06:44:02PM +0300, Vladimir Oltean wrote:
> There are 3 SerDes blocks on LX2160A and 2 on LX2162A, and they differ
> in some aspects, namely in the number of lanes per SerDes and in the
> protocol converters instantiated per lane.
> 
> All of this justifies introducing compatible strings for each SerDes and
> some driver structures for figuring out the differences. The
> "fsl,lynx-28g" compatible string is kind of the "maximal configuration".
> It corresponds to SerDes 1 of LX2160A. If we were to treat all SerDes
> blocks like this one, we would access lanes which do not exist (0-3) and
> we would fail to reject lane modes which don't work.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  drivers/phy/freescale/phy-fsl-lynx-28g.c | 97 +++++++++++++++++++++++-
>  1 file changed, 93 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> index 91a3b3928ab4..991587c453df 100644
> --- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
> +++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
> @@ -479,9 +479,18 @@ struct lynx_28g_lane {
>  	enum lynx_lane_mode mode;
>  };
>  
> +struct lynx_info {
> +	int (*get_pccr)(enum lynx_lane_mode lane_mode, int lane,
> +			struct lynx_pccr *pccr);
> +	int (*get_pcvt_offset)(int lane, enum lynx_lane_mode mode);
> +	bool (*lane_supports_mode)(int lane, enum lynx_lane_mode mode);
> +	int first_lane;
> +};
> +
>  struct lynx_28g_priv {
>  	void __iomem *base;
>  	struct device *dev;
> +	const struct lynx_info *info;
>  	/* Serialize concurrent access to registers shared between lanes,
>  	 * like PCCn
>  	 */
> @@ -800,6 +809,79 @@ static int lynx_28g_get_pcvt_offset(int lane, enum lynx_lane_mode lane_mode)
>  	}
>  }
>  
> +static bool lx2160a_serdes1_lane_supports_mode(int lane,
> +					       enum lynx_lane_mode mode)
> +{
> +	return true;
> +}

The SerDes block#1 does have one limitations - 25G is supported on all
lanes except 2 and 3.

This is the only restriction that I discovered looking through the list
of supported SerDes 1 protocol combinations.

Ioana



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
