Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70F25CD11DD
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 14:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fh2rDrzBXsD42zGHjCUjeE84H+/PFGH9UUGoMN7EoFM=; b=xRZt+W29tBuWs7
	ppaELw8VUWYmxAmnNH7cqK7oVJu8cOc/3brE3+dCiIs3I0XpwS0Wjps1W/1fPtj8WYYdnvlV4LJ3d
	LTwl5ykoo6d8cAbPjrzldqW9hP1iAeoHeWra6x1NEjSi2r7E+2XJpbeX/VXm6L+k9E80O/56/DLma
	+d+ebqIjuOOhRzYA+GW+vzdLG96M6bhXudIZ5t2UkgFm0VfXfUsiYlqzNs6UiHRUPPHg6nqti9ZvK
	UzVfrq1otLLstjDFGYtBOR7rxW2pQr9Aw/yLelWdOAEvbwjAkird46g9YdHN5PVd08B9xh+QHKKcO
	GeGBEuZrDA43tddw5kQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqD6i-00000000sQH-0FwX;
	Fri, 29 Mar 2024 14:21:24 +0000
Received: from mail-am0eur02on20701.outbound.protection.outlook.com ([2a01:111:f403:2606::701] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqD6e-00000000sOP-3TQs;
	Fri, 29 Mar 2024 14:21:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nqlPDCJ5qAVLRz8e8JFYRUcdvLoVJ5iBq4qI5EOcz3hPZDy8SOqfvRJStY/N9KhEakFxW97Y5I7tEMM/NWq0WsOARgFqLwDkVh37cwkwxfL+EFapDolyyTnx093qpRkGWuj+cBMgzG5WOFivahqOP0N0i415ihvhqxHZXmtzd4ZMXwUG1i9DWQGjPxy3czMas51RhUvjbYTTF5MbJd/L63qZY8Ff87j88IOBvVO0gzjUl9J7tkp1c03mpwsS2XBcJ+m1PciT5ZwR+ZxT/6LZqoWO01PegSqMiMS6WIBlMjRZehcpqVkogB9mjYoJexZJZoI9lRmVs/u9G4WBN+UmDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osTK6bRdbUrsinA5q51pCXsxQgM0t2DqkN8ah0hwzoA=;
 b=NVhJbCsv1VnYZ22BZLrBMlCEii5/CU77CpKeMkPVQ5rpaYVQUO7gou9pA/1AJdKdS5DEC9CuOTwJww9Ogy8kchkDG5FUF5nftzd0O3Sfc/9RtkocX/VZ8V9xPht2pScW6G4GI3bUuCr5vYO6yxklpBKSS3IoDdczZ9VtUQnH/EfY/aMK9Ht8vBca7Hd5LpfkJs7JdBUTDsSDlQvEMyvRl/y7K1JKz31vdfCXPi6uCo0G3pVWgbLvNFuxp5LSBQQBKtH0njZ/qivzHEjCn+/DEx26hZB+/3R7cBcwu9ZL6GK8qnTO2oaPTJamuzGx/uXrPWHCQqYXtBnD9RkiZZmvZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=osTK6bRdbUrsinA5q51pCXsxQgM0t2DqkN8ah0hwzoA=;
 b=j6yaS6p8i57khGRWkWMDP8riK/JCqWu2VfO5MViXRq8e/g9RDpe5vfihlRGDc50f9vsEXywtQ/Cg11aegpAHei1T0xsd90Ci/1xm+SbbGT+yJOhrqFv8bNz2qunh8whKeVgH5zZlN2+7roexw/OxpWyyQfs6tPZ1xCJbsAauOaE=
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by GVXPR04MB9927.eurprd04.prod.outlook.com (2603:10a6:150:118::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.40; Fri, 29 Mar
 2024 14:21:10 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6%3]) with mapi id 15.20.7409.039; Fri, 29 Mar 2024
 14:21:10 +0000
Date: Fri, 29 Mar 2024 10:21:02 -0400
From: Frank Li <Frank.li@nxp.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v1 2/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
 i.MX8Q HSIO SerDes PHY
Message-ID: <ZgbOTgtdEBJyg/By@lizhi-Precision-Tower-5810>
References: <1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com>
 <1711699790-16494-3-git-send-email-hongxing.zhu@nxp.com>
Content-Disposition: inline
In-Reply-To: <1711699790-16494-3-git-send-email-hongxing.zhu@nxp.com>
X-ClientProxiedBy: BY5PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::18) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|GVXPR04MB9927:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tDgNeV8Qx2K4m7h0hBKMFSmvTIoVfw7R7pYHH71Jkwt0l+qm6XMsHCppkJU25FKEarTBAHoNlqRr7n6XJofXFAatOPQsYndeJaFXAWAjv1UeCcbUx3Q8WFwa/WAbscYt+mI5YmzuDQ+GWpbnV1ZIynBANi3JV56WLfxXUbLNkSH2ZXEtRv0wraZbAFUTOCpJJLixp3qh2F2y3pBFLWXU8+vQiJO3yMgeeNQWNissqcnV7ZKdhqX7IzLc7JwzTWH9GRXjZZ0Eg8tpqvETiNJZsZWBeAYF8jP4OB8dKcQNgQ58bXMEgIHKqtHWCnny3YXeIgrM03A+JyCJ1Sm4jW6D6tR4iBvA4OTXbiZsDWVUAqXsS6HRz7Qiv92Ib3pB+86/hWGP9IUw0OfLiyPYFjp679WHRcsL79ynedojXx8XZDXy4u6zKbTh/MIimUtxH0XMt/scy99hJPiVy6sYIDyUNjaWsBtpyS/WLzf+1TVDnAucoua5OshoMlLpx03drOjQwFGO5r1EVYyRuTG5VP/TRpL5ccBeSNiaXQ0W6BgqQd+HKDn4f5/k6N7OubR0O7kX/MZaSm0iIMzwm3VYR9S/G8bFkwM1buVEUk0vY492syOqf0M7Wd+LtET9iv4/83ISHo8J6gWOHiPCB/xH5VPWqHaYqTZraBFbf/uBlAww22H9Hbp6NwXRfziFg+JsqrPD7Itv+auPthceSOfZehxDRXAsSvNjOkEZjFSCFnkzzH0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(52116005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Io46OtUq3yRyeSOH++KEkFPzj9zyIMx1wtvPOe//LSuaSUrjQC/V/QX8X+7C?=
 =?us-ascii?Q?uRMWu4UPainVebAJ6Qh4UDe/K26277uB50qc9Is8619pwVXRqyf6eCrZSpeZ?=
 =?us-ascii?Q?tmITsVoqjHrleUvZaRCkT99+4OdXViZPRRKEbzwzoGO4+e8o1dKwmJ4twl/I?=
 =?us-ascii?Q?Pzuigidq391g9QCHTwzehr3/KaQZLmh6qoyFqv9D7HM+jq+UI7LmZckg1uvg?=
 =?us-ascii?Q?6FxDUF+XGquj4P/TduvMVHllJfdHot5RPNfzokkcrnT/j/mP5sCVOPF0SJrn?=
 =?us-ascii?Q?Htuv53BSZmMGlSm+1e/yXSatljLpmehEnHG4ADtUmtmLr26fer3Cv6Fz0QsN?=
 =?us-ascii?Q?tuB+bg0Es5p/dI5MTZAFZ1ElBXuHXPRdFPMEPbuOczWfVoYfJerMpG3t6v9s?=
 =?us-ascii?Q?yVuFBIhyIDCKvc9k7BcVLtMRTu4KnchgtgVwtv8kUqYgGZMbFN9cRGGDfu8r?=
 =?us-ascii?Q?Fn7bSj8nHJf5xRdO0Zv5nQtq1H2RyYi0ipAD/Q+jFSRMQMeHRRUNaSpraNzb?=
 =?us-ascii?Q?Tx9NpHAPW03rzvLW8Jfg2KxS1BxaQUHTg+SxmYlwGx6cEmPc8nO+B67rTGZu?=
 =?us-ascii?Q?7HMi8bg5x/3pLsIF8ip4sC+O9GJGPhM1/TIoFrhXeTbCj2knhTiU9quO4lpK?=
 =?us-ascii?Q?Hp8pvMjwtPh6d5c/7qQgMyD2ucQBbmxPo6lAocUrnCgo2dVJYEUkvYuu6qah?=
 =?us-ascii?Q?BMHYbEJyJLqaowXWhgC64b8QkCnDS7XDEB8F5drIPVKus5CVIWQl91/Ihg30?=
 =?us-ascii?Q?OWGhCKy2Lqqw6mQfKq4T0R6whfaPEWorPU6KfNgNxn5gF0ncEx4jP7s7Lrct?=
 =?us-ascii?Q?XmbNSE8mopRGE3CcIhu6fMSK/Ujz3czJ0gNKyco89Cwg0su5qjb8Y/vwI11R?=
 =?us-ascii?Q?1hBrm/GkM5IXwA9qS5Wxkg6CreaZ7CsLnUS2SgL6xkXWViZRW34xc/CGKT91?=
 =?us-ascii?Q?9Y/EI48/n9rN2gnM+um1e/IQPH3Vsz4G07gWu3fCNRyHIPPU1dkCFNNzASid?=
 =?us-ascii?Q?UErVy6R5PqQoQauLtKvUmXjkPTzAsVv4o3CGMrLEZDBZjSBJ0f5mrSHPmvPt?=
 =?us-ascii?Q?ixDQGLAdFjkFKVTjNTILy4x1rRTqSZ05PWaA0KAsD5VYP69lBEslYiYEadm4?=
 =?us-ascii?Q?EuKDCWUBqhGaZCAEgvcU4fJfbz2q9y56oTyz1G+UajroZvgrGb+JNnvZHz8X?=
 =?us-ascii?Q?IsgUIni73TepTZjiglgWLGxte0hzOVvDvS81WeMUiSrzuQ6eLMVd0Pnr3as1?=
 =?us-ascii?Q?bW48YnvHFwIfn/8DxH4bnks16ySiVx/g6AcJvWbULD3IbjLW5BjfyIjLcGKH?=
 =?us-ascii?Q?EXkRlWpsi/5uiRufeUqz+ZZ/0PZk2OKbKoi8YMtr2BE9jAtQ6yF7FW0VPl9J?=
 =?us-ascii?Q?VexjYq9uFGSDzDf6LXsn8OY7jsOXl7YWFk0UhA2ajiu3GE7u+ZoiTp5Kkmvy?=
 =?us-ascii?Q?fkbOWppD9FXbnxbIjMzY556UvPb+TguJ31h+dyj7CapFFasigWLfo8rOsUwu?=
 =?us-ascii?Q?+Ura/8pWm101xNmWmkdiQH13kBRcovf9ghRTEGAw3SBx7iTOMncrFElC35KV?=
 =?us-ascii?Q?wlWW25YOYMf747U8Z16PTDokxeIKArJzjRMsIkav?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3357578c-fa26-4140-74a5-08dc4ffb7afb
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 14:21:09.9744
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aaQJ3df2fCzxmtsudOmOPqpyCo9jjydruXAsWaBVsaiMO+pIuCNe9JlpYY9vDcn72l3+F0m9oDmuAYJx47UmIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_072120_891741_B2BFDF30 
X-CRM114-Status: GOOD (  17.71  )
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

On Fri, Mar 29, 2024 at 04:09:49PM +0800, Richard Zhu wrote:
> Add binding for controller ID and HSIO configuration setting of the
> i.MX8Q HSIO SerDes PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 26 +++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)

This one should be first patch. (1/3).

After fix small improve

Reviewed-by: Frank Li <Frank.Li@nxp.com>

> 
> diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
> index 8bbe2d6538d8..5cd5580879fa 100644
> --- a/include/dt-bindings/phy/phy-imx8-pcie.h
> +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> @@ -11,4 +11,30 @@
>  #define IMX8_PCIE_REFCLK_PAD_INPUT	1
>  #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
>  
> +/*
> + * i.MX8QM HSIO subsystem has three lane PHYs and three controllers:
> + * PCIEA(2 lanes capapble PCIe controller), PCIEB (only support one
> + * lane) and SATA.

Suggest add empty line between segment.

> + * In the different use cases. PCIEA can be binded to PHY lane0, lane1
> + * or Lane0 and lane1. PCIEB can be binded to lane1 or lane2 PHY. SATA
> + * can only be binded to last lane2 PHY.
> + * Define i.MX8Q HSIO controller ID here to specify the controller
> + * binded to the PHY.
> + * Meanwhile, i.MX8QXP HSIO subsystem has one lane PHY and PCIEB(only
> + * support one lane) controller.
> + */
> +#define IMX8Q_HSIO_PCIEA_ID	0
> +#define IMX8Q_HSIO_PCIEB_ID	1
> +#define IMX8Q_HSIO_SATA_ID	2
> +
> +/*
> + * On i.MX8QM, PCIEA is mandatory required if the HSIO is enabled.
> + * Define configurations beside PCIEA is enabled.
> + * On i.MX8QXP, HSIO module only has PCIEB and one lane PHY.
> + * The "IMX8Q_HSIO_CFG_PCIEB" can be used on i.MX8QXP platforms.
> + */
> +#define IMX8Q_HSIO_CFG_SATA		1
> +#define IMX8Q_HSIO_CFG_PCIEB		2
> +#define IMX8Q_HSIO_CFG_PCIEBSATA	3
> +
>  #endif /* _DT_BINDINGS_IMX8_PCIE_H */
> -- 
> 2.37.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
