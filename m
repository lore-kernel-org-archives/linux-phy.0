Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 680DDC6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 14:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T75v751QSS6opdfsIRA67hUixAeTj99FQKCOaPaYhq4=; b=cMMRKQMu8oOFEg
	cQZ9GNecUZ2jJVM5Xtbc0fDTQU+v2qrl2KSKf0FWAuhRipJcIFaSTFdcRyQt9fhCfDaLGbtrr5uSQ
	aDp+dr3YpKr7gzuSPN0fcqvSXV0gl52cm9SdgSFiYmeiVK3ZcC50ELqdybXAtf5eQbBsaHjhZrrCm
	Ny1OwLCV34GIRh2ZEXCuTB61itYeemEL+LoqOSXcEG9BHRZGhYA8Pf78ltaHmRB29IfeLrkS3+Ipr
	+HQor5PsSRo8DNeYcIa6RBT/MUy/AgHQZpKEZuUeSSM3gga+laZZIdHoDxYxbX+wFO9lxYlOaNQVQ
	FLzUXf2d1jcyaKYg3P6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqD0v-00000000qku-3rtn;
	Fri, 29 Mar 2024 14:15:25 +0000
Received: from mail-db5eur02on20701.outbound.protection.outlook.com ([2a01:111:f403:2608::701] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqD0l-00000000qeI-24tV;
	Fri, 29 Mar 2024 14:15:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/16Meob1YxvoUaaf3gwXYv7P+0u8fTI7NEUlIuKz4KLoF95I7TYPjUNfpWHNHWLc1LnzgZ9+lEXA5aJtZncCpN95P7prqGo/RMW3V29utvEHwpQ2VZP0wCSy8kOhHkn+AaHuyDD9xeyMJvLy+DhYh8xC3hCiklrU24o9Yeo09q17g9fyEEMBuNj2MLYvdRmEBed2O0RS1A75KSWXS9+zaIfG6SPGCO8iyDV7rg55T4f5PjLlLnvkTbDnqo8d+PANhEvaL4RWjysbymHYSPwXXfi/qPuZfKpRR8qQpkU/G6VFHBaPHM14psSYJQi00+8jWjXOlbhvKUEStbAPMKa3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y6F9XsAwS/CP/1HvhWdlpPmCx+oXfwOCWEpV6cB3zzY=;
 b=gDunempW7WHayxenlNH4xa8q4I3iNBYes1YjQY4tuLPnRK5BTotFNunmHbC6zWg/tWbMGa0hiINI13Z7e9gnSZ5+Aj0ccG3fgBuYPkon9tfM8qXirGvxwTt6DNCemHg4Fm1gAWdQ0sgWkbyFlZZr58B47ri/HihUI/HXLV028AViLaCMDgsiFOasY4P9LxP3WSqbxHwrz0mm5tUCug9tlGoWzCMJ1JL415kj+mypgGU5oc0KojaIuPY/T67C6mKzipv36EqP9uPDuGs3CCojuQAnXxDQdeJYMOGcnpMVGdZ9eWPhbtdtvvXDOFpJtU6FK9XzV2XapgJ9YE/qTzbzMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y6F9XsAwS/CP/1HvhWdlpPmCx+oXfwOCWEpV6cB3zzY=;
 b=FO9NW8cIE34NAwgpH5i+Biy43/GvdJPXv16SK/f6HJNiQC9zprisogfmI5i1RyFFNGyopEhiJBVwvrGSlte9+n1ANlyvmt/WKtRnSI3peEx+3KBqZSWRCOruAxWdIdrNHyn0Inx3VhLqwnZ2N145nVgHMRE29nXyENyMgZfqkyI=
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by AS8PR04MB9512.eurprd04.prod.outlook.com (2603:10a6:20b:40f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.39; Fri, 29 Mar
 2024 14:15:06 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::3168:91:27c6:edf6%3]) with mapi id 15.20.7409.039; Fri, 29 Mar 2024
 14:15:06 +0000
Date: Fri, 29 Mar 2024 10:14:58 -0400
From: Frank Li <Frank.li@nxp.com>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [v1 0/3] Add i.MX8Q HSIO PHY driver support
Message-ID: <ZgbM4hpFhYW0QCHm@lizhi-Precision-Tower-5810>
References: <1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com>
Content-Disposition: inline
In-Reply-To: <1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com>
X-ClientProxiedBy: SJ0PR03CA0337.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::12) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|AS8PR04MB9512:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6j6GcegMwjJyOFzlaukQJzeLnNNw0qTI+Ojq/xO1EV4t6EpQjh/HaslYFxItmF/7x1rbmpPqZEHCSRsQPuJl0bsb+/0SFRh6keBeYU3YtCGghNOkfU3bMdteZtffHofNSoYysQ32Kbirm337BCdV5ZWOcu4JHWrESaruJ/wBrrBBkNeZIQEoYsic2tbWlYTppF8ie0ZLVywMQU+lA/AYaw+GalsOBCN299kjFJ5oAg32MDA+IjFNwa5sCniOmbuoW8VYR+bLATAn93d/I09atU7I1p0BtNtNN34Hq5Ro10uoPWPlDtijui1gjX0d2zt8wXIBqlSwLo95Kd5hvK9qvWc63H1fMIquFNfZ3yY+9ybdNnVDascWFti2O6PBuI7y7JBpKjtdHgg5wHL69oR4sjr13tBocL8XPeBfbUBo4lIsXLu3bpfw7ddn1VMgVrqknWljTTUnprgJmnmVa2mlP3DdkMjSfZ1we1D25J3jMvH30GzDFtHQXiuueeCzspIMdZJVyBzkyguQbq54e/JJQlhb/6oGsu8P16230yfiigTdHojHHiUH+JmSpPm3RTQbFHF5lhm2u/73vjKMN4LctVJvT/inCtp87M4G3OCQ8aKaLHGfRbdbgUBtLRwxUozxD78H7cMQEXAz6RHUBDw912yMyOCWTaM++BLFWXkyy9N3dkO4b7eLLry5zCz8lsI+E8Dh+KQp5E957SmGgLW6hifm4YQ2ZvEZSgJzumLDwXo=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(52116005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BQIwueemWuZU4c1fG5/jtbvN9FaV/c6K8+WRKyH1CCBcAdQpPNHiKZrFd2vf?=
 =?us-ascii?Q?R20ALv/H1IxID3mdXApi3wm0nWKvHsfsPas1Z/6b/+96hnENUNpwncsETlK4?=
 =?us-ascii?Q?8y/yBGaRxyaUf9YZmF35vULm55ZsDgroNb9ZpvyKPC6qEdjp+7lKR3N2uT+T?=
 =?us-ascii?Q?A/0isLhmBi8sItJGe/SPG+ntr9l/1s6fJD2Be+xwGiRTGbxVN/P8ygR5Ib4k?=
 =?us-ascii?Q?audAbN34prTjhYmYFQMC/oIb+vVidz0QOBUnzuHZIx/M8GS4WFM6IPFVmPik?=
 =?us-ascii?Q?BhDlWhBxyPNto2Ox3IEo5TAvxwUO8lO5H38gjmBa49SWN7kgsEebFUHFTTNh?=
 =?us-ascii?Q?BjcHYFfPVWhXOv2SkbHDk5J0zT8JtSpJrjgzw8ReVxE+4ljrriRd2F70XKBD?=
 =?us-ascii?Q?rKAMIctomD6nM2+IHdG+ja2oDssmew9+LUzXsa/frefkoAz3xpwmR5oROFGV?=
 =?us-ascii?Q?uO/lkuRp6vyQ3zcRvobRC7Uldskck7+hTT8JGBqng4yihyYqCLl6EjcrVmKF?=
 =?us-ascii?Q?YvG8oEUzL4kynntDE/m6DhKmDT/MZnjLSMN3hCgk2wpdL9pbkC8dYEqahuf7?=
 =?us-ascii?Q?yrv54T9EiLStksFfTlLAS+PtxbtI6EnwG6fZCe6v/uXvpdF6lWDH3lQ1d5W7?=
 =?us-ascii?Q?/cQJXa7ng9TKpf33MYVfCu6PgmhcisA236rbotWIS3jRe/3ziOJv7u+BaOcn?=
 =?us-ascii?Q?Yu9QebKboDQILvqQMtaghPQRs06GvyI4HQnI1pBcyD3BVzREUH8qH6bXiPDd?=
 =?us-ascii?Q?0NQkrtfzsDtTcrrYKulU7pdIe/u53hXJUo6kM6AQ2ld3d/ONMdjqsdaqdY9j?=
 =?us-ascii?Q?+RXjHnty5EI35H3pPXDP8rjIEIGZb5dLyQWEUd9K+lydFoW3062X17HQDIJv?=
 =?us-ascii?Q?BuDhExjvUgkc2RtYIMQe8/5Wqe0/k5t1KtgA8EwLuB2B+VnVUsfXKqYkJ/f9?=
 =?us-ascii?Q?lnATZ2yEavx3P9I/zh9aGdfJd32TJDyk/noNfCJjc4Hww324KVog4apts2K2?=
 =?us-ascii?Q?jSo7lyu/dmcSMcBzB+2L5fUmhw3mTh4wk3yQoj6s2c3J+m/LVyXnr6TvHAQF?=
 =?us-ascii?Q?5lmog9vOYCcO80nDgKkY5sKKvmvgXVYF2EG3bRWzt+p4OOKNgNQ/wwWyCFWl?=
 =?us-ascii?Q?+6fCRDKivwhJk/L6uDnUQ9of0G6c1Edkc6GVwPorhDR9YjXAFrBc47jWGwPp?=
 =?us-ascii?Q?FRzJpVziPElg60lnXMwyakFM0INzWkm0exiT+iM9TOyGfsCsXZ/Iut/bKOwt?=
 =?us-ascii?Q?a4yiIJTBF5oaHt9paCTVVijTGexxJ73SAvG1fnl9e802mLjjOXHJXawS+m1r?=
 =?us-ascii?Q?uSMl3XfNJaUYs0TQ6kCmA3qlvtR2arsVFOjYRexIHvSvhR0kRnb8aQjR5bgK?=
 =?us-ascii?Q?W3VZ/4fbtYOhD+7ccw17ES/S9k+OfHMeAUosqv4P8hLXK4GwrrRHsoLUotTc?=
 =?us-ascii?Q?qISL1l2tIEMGJXw50y8tyT1a2q61Bz/vw9h4hmtdSkKzwYbu39Z5ztaIp3Sx?=
 =?us-ascii?Q?DpBRp3ZjxNO0CkC+EhhBdH4IebcewozZlazmfYEQsxbrbLJ5unhpNjH45tlG?=
 =?us-ascii?Q?AOiFf8sdEyvxNojMwew=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41806b3d-72bf-4b02-f0a8-08dc4ffaa216
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 14:15:06.0619
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tfWbXv/nzRmnUnGufYx4cCtbzzV6x9X3eyP0XJGT8sVISgAgpxRV3ntd0Y1be+GnJS90HQkD/2S8naNd9kXFnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB9512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_071516_154480_0B54CC60 
X-CRM114-Status: GOOD (  11.47  )
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

On Fri, Mar 29, 2024 at 04:09:47PM +0800, Richard Zhu wrote:
> v1 changes:
> - Rebase to the 6.9-rc1, and constify of_phandle_args in xlate.
> No other changes.

Next time please send to imx@lists.linux.dev instead of linux-imx@nxp.com.

Frank

> 
> i.MX8Q HSIO module has PHY and mix control regions.
> This patch-set adds i.MX8Q HSIO PHY driver support, and provides
> standard PHY phandles that can be used by i.MX8Q PCIe or
> SATA driver later.
> 
> [PATCH v1 1/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY binding
> [PATCH v1 2/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
> [PATCH v1 3/3] phy: freescale: imx8q-hsio: Add i.MX8Q HSIO PHY driver
> 
> Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml | 143 ++++++++++++++++++++++++
> drivers/phy/freescale/Kconfig                             |   8 ++
> drivers/phy/freescale/Makefile                            |   1 +
> drivers/phy/freescale/phy-fsl-imx8q-hsio.c                | 518 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> include/dt-bindings/phy/phy-imx8-pcie.h                   |  26 +++++
> 5 files changed, 696 insertions(+)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
