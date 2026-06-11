Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE46BCD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtY/x32BnGDQBdcTIQkui2VlXYVs4xRXMTUFfam/Ilo=; b=1vxxJ06gPPaus+
	zTrKANG0wWUexNVsc5ePSwxvcuuVU9nLQk5X/820XK++Q11lD+dWFiEHyqC8Bn7hA8NyYPZTkeNlu
	++nkkXQge3cHSKMCvo/suaKDERF+Xb3vDlU1cc9T8VO96Rj6SBHpVuTj+qTG0vCEcpmsHJajxtd2A
	4tKM4XVWA0W8maOIeEty6UTQqpTSUPF8zeHE7Ufzs2tmT0QbaZOo94efilY1AtLYAYOgrmy73D8iD
	DSKUTnFoN04mx7XU12KGLoHhbQZpNBtx8ns5KXTfY5qJw6D2k/HUAyJbl1rcAuEafyzSLXl42q66S
	FkTrrKWTweJLKzQEk5BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd2c-00000009FyJ-24Oh;
	Thu, 11 Jun 2026 10:53:42 +0000
Received: from mail-northeuropeazon11011011.outbound.protection.outlook.com ([52.101.65.11] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXd2Z-00000009Fxm-2hRJ
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:53:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vMjEnqW0aA1IogbzosT97ZO1SRW866zKxo/irpXSwSCnZ5ZhPjHjeeXUZmi0lqWo/vuCK17zTRTDUt0wik5cvQLjFf1brrMSnBZhWCWL3QSrynIJuatSVdOTj8q1wRShVhQ4fuLiarKNOlx/Qpf20j3/4aMZ1wRDBhmyKwshEIrDOl/7aIU0vcBd2QPypMGRcL+NzBSFPwXpUsjknf9ovYrHC/KsHRBwZ3reazj3X3JNb2bveCEBtobKp9y1+FhpQYZWcomlYUbC32ZLIOZQqoK9evMlCP8qc8Wfmsb3sti9UCX25We1lyv/80Cfj6FytOdoAbmzdA2q7+gJk+mtpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XMc7tq0sxatH6EwxPIuYrdvo2Frr3r4xWuhOVxMDKzw=;
 b=gSsfY2YyV+Q7Wc6swymbmixtP9J1u1wUjDfpaYbAhVgoOqyPf94huQbpKE9Uve9ENSejtYjcWajcBcZbFz8ifVu/LeY109xp8WNCmthAPrTywNf6i2ymDZkp3WTG5FIQRVfQnVlyMZ/osVRfgmX2H/+paAaXEDXWr6abKnxWZ7EjI+E9B/ETnJcIMo/JQhRnbDboJum+05ahSdR0tUcue4H1FgT8HlTHMm1nHvnbWwrJHK9X813B6fENKPU//3T6Ifv60PZDZnGNIPo0mMg3Hb/d40vxKLTIA1a3D3p7QT84WFYxsh7bkskXoViMpwZJIhpBTBLDYlYg5ymUKeuf3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XMc7tq0sxatH6EwxPIuYrdvo2Frr3r4xWuhOVxMDKzw=;
 b=i/hIglSXiekR4WVxTcWEgTVetnASELcXhSQkzUelGuD3CCk2Kn4PyDQc4L10G/2mgJMZjEUikbo25oeNJzP99+Kx4TL1FfYACi2A4s12e0lbHvZy2oG8kYKuekA8rI6l5to6LQIdFGt+DPF90AxAq122biSsixtaxs3zUawHaMBVY87U1SQIytBEtVpvTwWK6RLSISxmX89k9K6H3bIJB/sJmU34TTg9slwqDSLT5NKaje2fbJlIFbbwUiWgYDKtw3uVzAKDBhZ3VQsho/qFrZBIfy/Wap1P2YdKNMML5D05O849hGj6089Rc52r0HLyA2czVzJPmUtkbeORre5itg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13) by GV2PR04MB12293.eurprd04.prod.outlook.com
 (2603:10a6:150:32b::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.17; Thu, 11 Jun
 2026 10:53:34 +0000
Received: from GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd]) by GVXPR04MB12290.eurprd04.prod.outlook.com
 ([fe80::1739:3404:2175:33dd%6]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 10:53:34 +0000
Date: Thu, 11 Jun 2026 13:53:30 +0300
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Tanjeff Moos <tanjeff.moos@westermo.com>, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 phy-next 03/16] phy: lynx-28g: move lane mode helpers
 to new core module
Message-ID: <t4xp5f5gsw65oorxpi7pstzwp7wqf6mxxrnwsfqspt4qpkm3cj@qau5mskewgta>
References: <20260610151952.2141019-1-vladimir.oltean@nxp.com>
 <20260610151952.2141019-4-vladimir.oltean@nxp.com>
Content-Disposition: inline
In-Reply-To: <20260610151952.2141019-4-vladimir.oltean@nxp.com>
X-ClientProxiedBy: FR4P281CA0403.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cf::9) To GVXPR04MB12290.eurprd04.prod.outlook.com
 (2603:10a6:150:319::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12290:EE_|GV2PR04MB12293:EE_
X-MS-Office365-Filtering-Correlation-Id: 94e8ef3a-66ad-4ba7-9522-08dec7a7af20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|366016|1800799024|23010399003|376014|3023799007|18002099003|22082099003|4143699003|11063799006|5023799004|56012099006;
X-Microsoft-Antispam-Message-Info: xitxF7m6jPjneOXPM/ng7HOgTzLL9Bvq1h6lk5fj2/AOxxJyUtS6UNEmaz6l3kNxUfFPczuDgbaROdf+73c3kXJgIrXEqwvM++Ot1Ks8t4oxq6cC4BzASx9r7yhD3P8o7V+hOff4rvKm/0/DS4dAZLHTHCA4gkjqkfXA4ydnwWLzwy2839W0J6afgc3f5/gXyENh/mXjx2p2xQzNekGK59ozZ8gHwH7r3PnfPiiM8BlHzglqe27OsHy1XWek9M27VPmYUEIU/5sM5Q48yV/t3xtl+BjlztzBe3KB1PJA7cgEv3ZaUI2PkCsQB4Y3pg4xcRVqpWBytfv9+Qsai4FJgdRmgYJ5Dp4UY1zLuxnWRkawnXIbOl7jFoQwjxqgQgvytK1gP/AWxTtnxA4mNZO79Y4w49k6qM2R4Gnz8jdzVBjzW5pPbOFz8nwR6hTSg4a/MZGowI+uSxRc6rlLkxRDAvHKV7GHITVAv7BLvJ2d62aUYgpgM6xaXUowN3ANCtaQal67BhUAvg6rIQdCSw9PXSiKtzZ/QSjEQeU8fdq4Tgg/Y5XGaWh6S6Ej1bwURiwOoWiywqxufQYfI+ko9UALhGA2sVjh+bSobTXWbW+woojn7WRl+FBhm+TrQh2qJaxqiPwsKYCy0FbAfeAK2IYLCu3Q4Z/B4ogFvrniGBRTHh8VTnUfLILa2G9o1rwWgBn/
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12290.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(1800799024)(23010399003)(376014)(3023799007)(18002099003)(22082099003)(4143699003)(11063799006)(5023799004)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DRN3camJ0W7m9FMJkhAENFIYl0geMSgcC9liNh23dOZGHm0LghecgjdzdEND?=
 =?us-ascii?Q?tFaaGCNRytCwGdAgqORjjvu87tsj4Az6OrgR9wHMFKW394xqyRoIvLRbMAdY?=
 =?us-ascii?Q?bBUk2CpJ9YhGC4FssiWn0tG0tyPRN7yaBzA4MoYMi20X+AY3/LpQ7ptD7Rz7?=
 =?us-ascii?Q?l27XwY5dnNyxFELnQMmP0cbkkGasRY6Rp4+1fgQDMgqeNOcEQtsBYPCmvxGt?=
 =?us-ascii?Q?dUlre+o2AIiAGGZE6SvOSIXyU1CiorTl4xmgNfEWPqiub9DyDeyS6Bh5dRUm?=
 =?us-ascii?Q?GyDXHjUfMD86Mg7gN5ksUvHKb2NlzPM1wteXPriufLXGmRSuu3fe3IsJzjne?=
 =?us-ascii?Q?izyuaSEmc89bC13LNpzQUjpGIbD22xuTPoOWiQDv9aIIwwU9gcS8HQV/WBF/?=
 =?us-ascii?Q?OQ59vD7yx491qGiZ729ZHOFIUOHyFwHm3A2NQ3I7ZfZ5yDOyZsxgAwx0KBOi?=
 =?us-ascii?Q?G3HtI4WqNaYGgU0jeQ6u+AtPI8WAa7qIqz7MbVRlBiOTNbjso2BOilZw+Xql?=
 =?us-ascii?Q?L/olOpFcXUBxafzfg1yVMnqoUvDkfWdlDQ/27Ek1W0vrXlz4tdWb08CG2T0+?=
 =?us-ascii?Q?nefdEJfKdr0E9B0K95G2kxCd2gl1iDGtU3xsFGmQVOEnjxgbTNbwBORXrgzb?=
 =?us-ascii?Q?2AVXQuPtmp3+CYA3hoQNPSSin27/mbGVtRmtVibYPPrKAKfH8TK86IXqqauj?=
 =?us-ascii?Q?sCW3x4xwV8ZyiEwEuttAyohK8vtfVmbAIqoaGFNPSrkxbg7QqERBxaRI0Ydx?=
 =?us-ascii?Q?FO2CS7bZnSxDT0K2ls59b43kbGtCdC3Vff5CCcFZjXeCER3uu4vhWBdnVPIE?=
 =?us-ascii?Q?5NzVojPzP6Z5s6G5CX4mQA+P8DcEttJkHcsdEAUZQ6p+0zzVZFn24/licsnB?=
 =?us-ascii?Q?NWPpOPHZ1K8TtwhWdbYiQGlh4POF9P242z7Bh3JGAgSmJlHcCZJrDQa47RdG?=
 =?us-ascii?Q?N17KLa3CRlYbe1qn6+ujQnzN+6ZHQXkcbmC28dzu9psxPucAkVCAykvY6Ciu?=
 =?us-ascii?Q?yYt+Y8R946+ZkJDr4w5l84SbYW0b/Iad8FSYNdFSCmwuSoqHVIxH3fWuNDn2?=
 =?us-ascii?Q?a2E1usuX73NHnf6yNdDbg73AN9wy6iCdIhcJICfTEJZNbJ56QycI/g1ma3Ma?=
 =?us-ascii?Q?xVzY1GoAVdxOr2ObCIoJB2BfP++XxpevXXvCf0lzMMN0RMd8M2RhRLA/Yc/B?=
 =?us-ascii?Q?EHED06J3aKX9uXsnqT70RplZZqwcmSRBiL9ES2bt3qAkqkkNWn5vNQ+ncnGx?=
 =?us-ascii?Q?jCINwKswhLDuxOVB4SQwLUutF4vqz3kW44UeBTHP5j/ON3dF66qrI/erj8ie?=
 =?us-ascii?Q?P+zQtfAKxkBu8bgZp6uuHy5fWccnsAvwwDpT0gAi03LrXPmu1WkvVEq8Juwg?=
 =?us-ascii?Q?L61h/eIhfW4aI1vTur2uOeg05uJx5GJfBMKEwkR06+CcngkPXQNf+kmrbAWp?=
 =?us-ascii?Q?w1WqdUBdK/yzgZQXzH7kyWS3Sdr7aDzQpYtvVBAQCRnmFoKRpsCDfJsYK17X?=
 =?us-ascii?Q?WuBa8AQoQHoX1vIazT4FrM31gTXKztWIUbOAHWkvdnufm0Oz2Ng/cf0pZHjF?=
 =?us-ascii?Q?YcrfjV4p9HtIdwLO0YLe+psiNgKHtti3FVyDqk2Ht6Ljy9Fcz03LeXzzOYJx?=
 =?us-ascii?Q?lDc2q0zEnalHBoLnQ0y3dGA2OLBaOkxxPd9Lw4NPZUObx7g53A62qfefJP6V?=
 =?us-ascii?Q?k4UxuDGKTlasCvftDGS/H+e+lGRibkfnqUIj8hl0qdXmpBEHqN5TllqsRin3?=
 =?us-ascii?Q?vxmCPztuqQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e8ef3a-66ad-4ba7-9522-08dec7a7af20
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12290.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 10:53:34.6093
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zGvwgGYnCFLybXmuhtvYVSMPejZ7GpBmVsMsw1x7fdQzFMs9Ouh8cWW5qBelZUE+4rVUuLKv2l3+LySUYRPwkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR04MB12293
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_035339_690253_061239E0 
X-CRM114-Status: GOOD (  10.83  )
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

On Wed, Jun 10, 2026 at 06:19:39PM +0300, Vladimir Oltean wrote:
> Do some preparation work for the introduction of the lynx-10g driver,
> which will share a common backbone with the 28G Lynx SerDes.
> 
> This is just trivial stuff which can be moved without any surgery, and
> is easy to follow but otherwise pollutes more serious changes.
> 
> The lane modes themselves are exported to a public header, because on
> the 10G Lynx, the hardware requires implementing a procedure called
> "RCW override". This requires coordination with drivers/soc/fsl/guts.c
> to tell it that a SerDes lane needs to be switched to a different
> protocol (enum lynx_lane_mode).
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
