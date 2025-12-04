Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A172D29FB2
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 19:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IotQhwVKeVxUCwXNgetFTOFqHGd7Y4ul+QLe8zeipQ=; b=4qO2PS0BTl/Bxm
	3o4W0YkPcG4/SSkg+DxX3BliK5gNZyWzHKZuHHMwcQnaq5lwLkoAEdDnsIj4Y2lenJzYxXfpTWy9I
	eCJk+5/tF3uSdhUBFywZyaGL40YfWVLD8fcHZMGS/k9NMgUGZnjrdUnqS3hTmcW6If6vCgbVXitLu
	LZW03+MDAY2FOIRq8kc+ZoBzqjTn5xG1CFkswKsU2YU60sYMStvSUeHSm1EzTpuKfs4sOLELmSqRH
	WmcAkYbipsnTj2EMAOshvBOO+SFrEtxlB4iTGmQlh4UB27e6iV1Qvncvhh5M1xOX5ztgAmZ1jt0OI
	ffcgXyM73G/8dXSZrWFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRF5w-00000008VjN-0Kj0;
	Thu, 04 Dec 2025 19:34:28 +0000
Received: from mail-westeuropeazon11011009.outbound.protection.outlook.com ([52.101.70.9] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRF5t-00000008ViJ-0wKJ
	for linux-phy@lists.infradead.org;
	Thu, 04 Dec 2025 19:34:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pWOejZw2sTqVjJGLk7rsanEK5eRoJOQ+C+MqgF6n8oTmuQDieNrhd7mEeCJ3OOgA2aSC14RjhIhf+V3XwawIg9TCMf794NoXbkt1EwN54SU0xbgEW7ZK3Z1h8+7WGcgwhuAWOrb3ZlRwX05BAbJE7zPZ4lGPulZLEDRmHUwdH1+a/VirrxpZSJb0DdLZcsm383Crf6D0DpaTPefOgHjBVONzMpSkv2Ow8dVSvXJsrcJXPah8o6SqeTNvjrlIGhDIEsAweRUswIO9N/G/WtStOPTEi5XYgOaqEVQTFu2tbMknojZ7tU2hvR6ChThws8117m1Cv13DROCJ92cMmOliPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=foNbc7UAGy7AnPqugH4DXbo9kuz5kHjgeY0G+HWvgls=;
 b=w6GdFulyC9A2SoGm+mmfLUKX/Ph/4AD4hRqfIJUzSkIFRQYkRVAgSXvcNTYYjVW9GergFLdcK7o11mXQPNVNMsg+i7+DASaWoDW3IW6MrZTUXRnDfQPAiclvAhiXahUQ9aOpErJfzHjDiF3ynMw+bQICt+mdd6afv3OBDonKHohYIk3W8xhHjH+K0rG6ZJrEcNGSbfp9baxghwyeIMI/XupTWxRm8CKsEJgNfARoytkM4Z4wzt4++alM0+NCDGvulJJQcLNL6O1Y1slhY8tFGjsDoNB6W3xR9L7MqNBEtDab8PtCUEZ76amp7v2qgr6a+SETUgIcLdsDTe0fiUtiyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=foNbc7UAGy7AnPqugH4DXbo9kuz5kHjgeY0G+HWvgls=;
 b=FvvmemYzhT8HhqXQWNas/hZuW/NJgfn3okMCllUMW69ZuzMR1zRwNEn9OpwUceipvGLaHyydsNhi37lR4U+fjnyY5E8eyEPT8Pr+Vy7rqQCbkEcBznSn17FLE1moKOT1pwtJVo+ZXXiEDk3YTG8iDSTBCNOeX7p27laavfGdCy9Zq0fzrpZNDUgrojyUCht3M1kpkmeDRYtirqiBOmI9qV8D25kDcMvrlkKTdbn3pdTfvpzwAzVd+36zkA8kZKnlY4KAsgkr4RdLjw9+3/5SWpRBuTrG4jOzD3B+sgUpbJQuDz13Ls54gpENfsMtqarIIseardw3r+MInleOIfvACA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by AS5PR04MB9797.eurprd04.prod.outlook.com (2603:10a6:20b:679::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Thu, 4 Dec
 2025 19:34:18 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::8063:666f:9a2e:1dab%5]) with mapi id 15.20.9388.009; Thu, 4 Dec 2025
 19:34:18 +0000
Date: Thu, 4 Dec 2025 21:34:15 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Tanjeff Moos <Tanjeff.Moos@westermo.com>
Cc: Sean Anderson <sean.anderson@seco.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: Lynx 10G SerDes Driver on my kernel
Message-ID: <20251204193415.d5zymxgziweiepgy@skbuf>
References: <a95dcad3-c684-4c2d-834c-07e92132eb85@westermo.com>
 <20251202162919.ow53dn7c3x2lguqr@skbuf>
 <a1dc8a14-56f2-4082-8081-0e29e2dbe35c@westermo.com>
 <20251203122601.72cwwpsp6loqpkpj@skbuf>
 <4287097e-a906-438f-b3a1-33e374477367@westermo.com>
 <20251203180022.adhggfqgfj4wsoqi@skbuf>
 <2f74aaae-1dc1-4657-9436-1f445d28ad66@westermo.com>
Content-Disposition: inline
In-Reply-To: <2f74aaae-1dc1-4657-9436-1f445d28ad66@westermo.com>
X-ClientProxiedBy: VI1PR10CA0087.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::16) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|AS5PR04MB9797:EE_
X-MS-Office365-Filtering-Correlation-Id: 34660cd5-717a-4311-619f-08de336c1d67
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|376014|19092799006|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zO0xNPxhBF6ct3TtLmzzIIgrXqnd1wuyYmy7bA19SPtaR3Qc5aqvpX/5GG2M?=
 =?us-ascii?Q?I7OaEOaVFHFiJJZBnY1VYnRIVNbpb6shre5t9Gs2gcMQkmoEoQAaE8EM3Hus?=
 =?us-ascii?Q?NexXX0GcYvs9ixV8NxNitSGH6iY1lLa3bro1u3v8Pzl/79Lutw3znLA8K/XX?=
 =?us-ascii?Q?TD+w+x1nZcpT0vdx08g0hQBpXd2v0+KYVcwTaH3X98M1d/79wtFyhUqrUhiN?=
 =?us-ascii?Q?hSIWluUgFROY8zZGyhOYkSgRDvOXUm52/xWmxwrtfLZCe2kDQVJohYB6xjT4?=
 =?us-ascii?Q?p3bXPcDS+OcrZ0myAndblastHuXMbfsguzunJeWonBm3IlHsygzj1ciGz2GQ?=
 =?us-ascii?Q?x9Zk+c/80BEqGrBCzPd8WsenO4OJi31KdyM/5BD9Uk64EOV5QocvyEN5Bedc?=
 =?us-ascii?Q?uCkNCHUSuBJX0BP0DjQwDra1xsV7Sg8hCRuFWZ7xVU4dX9GFyS74gkkwvfab?=
 =?us-ascii?Q?gvyVjlje/4vq/NMECqOXnu2VfjFUmKGHuOFqfCrPsspsUoQE/uyVpoibmVE9?=
 =?us-ascii?Q?1WSjAbYZDrWsDpufVOmA5YXKtK69UV/R2h/lUYThkPviDWXfCOUo+XbtQ6/e?=
 =?us-ascii?Q?6dUcyOGkczxXVWb0BxY0h6GPWPsxgZPoaZ140JVcUFEqXp8UIRWGveuP2RHc?=
 =?us-ascii?Q?KNKByFnsgBVLhvd/pTERLykIq5tbVp2zQ0KCCmbb0ojx5to/6tH5i15v7KDo?=
 =?us-ascii?Q?GZPuk1eJid/4gfhy2gyBe4l5Ndb+NTpyougLMPjHp9gCtuXhaXIA0jjE4PNY?=
 =?us-ascii?Q?1UqAoqhhA/cdATB7UFkbekvqXsgBYiTPNR2mAVy2hAvEpV9R5d17yyqGJLzs?=
 =?us-ascii?Q?EPGy45x9R8X8DrFuJRA6SNVAptHSIFLmFveWwj8bEHCw3YDdzibVsq11MiLy?=
 =?us-ascii?Q?KUVyoksrFkUrDyVOETlAeY1JA5psZNnZqB1pV+HwsST33P0Zofggeey1UQvX?=
 =?us-ascii?Q?tsfALUylD2k6maYA9QtvCKbDPZlJLzSgnIah0J8PcIOXm20/29c5BsKtzjlX?=
 =?us-ascii?Q?kcte48kYuvgJz0bvNLjHvbBnS+3iM/XTSTBIG0RLJ8nJGsf+T2wcr6O8Ksyn?=
 =?us-ascii?Q?/XW3cGlk/rEHTocZQgpjGmVflK8mhLUoNqCqX3ZIeNB/e6TIvu2CgWx9IDss?=
 =?us-ascii?Q?9b6oUlPWgsZNyMH7UX6Lq0RWA3Uf392McYIa+R8VZ/EiSXh2JoINqhVKdmlm?=
 =?us-ascii?Q?iKz0iAGm6FtBKQkPgleUYEAYWKjiKeuq0Gu9yugCIaO9cVykOU88dd8jE6q/?=
 =?us-ascii?Q?tnTzRNlNb++vLIp22C9zvx+gnv//GQgnhP21bdFC/EMkKsOAIighHtX52qfl?=
 =?us-ascii?Q?W/qUjnhAlmdwmxQTzqwZA/QfFUG8vBZvFT6cIkpEtgDQqRxyVFyyBc+Jm/64?=
 =?us-ascii?Q?+TX/jKH5nkQt1qHQMKMRkpvS/ybl2F/GcXBPz7FY7PhsL4C851jnDB1Sc/JV?=
 =?us-ascii?Q?puISQuz4XpY4Wu0aoTQ0qMVlxXd06Imx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8585.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(19092799006)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cIb1ns8b+MOWJm/73tEyG/DlU/jdD/CAosSILIRYP3gBfzYajt2qPCK6kw9c?=
 =?us-ascii?Q?iOiqSqYirYn9SrbSv/NohmvhUUnvIPxsx25sElDUlIJFjK2Nd3icdziwY+Du?=
 =?us-ascii?Q?KWb58tulI74r6xGHiiguwe5dITQ8Ag15/l7POuhN0FLnJJieY0kwM6ll5Cfd?=
 =?us-ascii?Q?U7RcwqXLJKkI3dxPnFd4uBJOjKJccrh4IsL+lrMgDI2TWSTGqItTqkXsUpes?=
 =?us-ascii?Q?FapnsyKAIvJMtn6r3mqMziS3QS8XLfcxG8c2Jm49k6J5cZCc49b9sBar21fm?=
 =?us-ascii?Q?kd8N5uzz5vdj2didCac8mjj7MRQxh0i+4NsAn0AnKTm10QNjbcwf4RPWm3AM?=
 =?us-ascii?Q?lCK2l4p2/oDSt1jFAucAFsJwMW2J6SECzkWyoA4xstZGRB2xa3KWPKXyaMu+?=
 =?us-ascii?Q?JCQFMIMybm5bZalsFK907Cl646Tzf6mKZ/lf+YdNyu2tyq/VDmqNYrbSg3QS?=
 =?us-ascii?Q?52q5Yulj20AGZ/hneE+TuEeywGjbrR2pHpPaWqkNE8Qot3VK4Yl53Ga3V/FW?=
 =?us-ascii?Q?PfYC0iyoQQmNFmvSRqcJxuD6xLDkJjX6vKAe3Q8E75zdFA8OZdfi0XNwLDap?=
 =?us-ascii?Q?89E1SUZy3EoTvCwsotTicowU9esgcrOI2c7RTVAMi73LiJ6mSUY0b66mDzOD?=
 =?us-ascii?Q?c12vdUzYnFEgav+pSTNu6cHAfDiCky9x1m+D7L44Xppu3uq8sLAg6i5MiR+q?=
 =?us-ascii?Q?5FjmN1mdFL9za0WshZJHJTslPDZkUQiDs74MN0fCVUS9OaRxcgMReCPtph0Q?=
 =?us-ascii?Q?/qtUzG07GIgaoU9jdGzgxq9bIc+NMtpA4yIm6ZDif+L/dRyx8pTJ1mU5CJir?=
 =?us-ascii?Q?UwcNxH2mJofVCiJzAu17VTedbGfOWNTV1qFzzrRJvla3+7Y1gW9uX6THagcQ?=
 =?us-ascii?Q?PLybFhAnUGgGSHEB6fhQ8NS5k6uje+UjM1s5U7GdHzuG/96qduUOfeUVwQiS?=
 =?us-ascii?Q?zkAt9OQbG9Z5lDZFJPwiV5oqtkP/Grl7zq1f8s+HIXUuSl4rsISqmbzinYvD?=
 =?us-ascii?Q?1rV4x4jhCCMRYA6pKS+j4ydq2ryUak0jcbFJ9QutyuXpbewZCe3c++u8eKN2?=
 =?us-ascii?Q?xeu6Dl+nSlSl+QknH8FvtIgrzwsTi6bx32bA+XhbDcJaL59UkrN7bgaDu7vW?=
 =?us-ascii?Q?K8D+UT50TowJ7a0zsHNQvYWNHW13vtLIMWwdCrZ9mLRXdWmiNOpsSmbRtXd7?=
 =?us-ascii?Q?fXXD/oGZhwTquUYTSIvLWGJh3GoTm92GWXkFdDICB8dvcOvDFNnG9QSQDRJt?=
 =?us-ascii?Q?oBbjcKAlJSnbGtsONIa7Z9XJWyDfR2niV9oK9x7jMKJJ5fseO9M+Nwk4YsYZ?=
 =?us-ascii?Q?UV9HZ2d5osuaq23MDECgt8ilLh4po+GhJ0tu3U30rxE7WO37n0Z+BFmYquXu?=
 =?us-ascii?Q?LJDYy4RSbtf1TzhTLXy2KyQDjnK14+yyToVovbxak/iDlxYIyjIAW7c05/GE?=
 =?us-ascii?Q?hEZLe3bnUhAk4QpJru/TyXjpNF5V7CwSbya0Asj2H5Cgfi5ki/uQTz/ctf6E?=
 =?us-ascii?Q?QZXKipbZTqO+0mL3kaqioKjP6fX4oOfDTmIjVlELcWSli3qNEX0Kr4s2kT9f?=
 =?us-ascii?Q?VrDJKDdqPTo7BzCcRZS7fUjKqsuiC9OisRacU7FgVHmVAJ+Wy1s/G12oETYo?=
 =?us-ascii?Q?GebcruXcHUAv36jPLlEfgVS0DBOz0oPhlOF+WEeYQrfo75BUQAyC/m3/hY/T?=
 =?us-ascii?Q?MGvBjw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34660cd5-717a-4311-619f-08de336c1d67
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 19:34:18.1009
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IdFiF0BytgaHogtVZaS6O1nFF7W+UIuCCM+bq9l7ALcY9+lMTpnAZ2WkVSB90AJmu904jX/oQNFj07L7NRCZMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS5PR04MB9797
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_113425_275994_C5A52C9F 
X-CRM114-Status: GOOD (  32.80  )
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

On Thu, Dec 04, 2025 at 08:01:10PM +0100, Tanjeff Moos wrote:
> For clarity, I like to re-state my PLL configuration:
> 
> - "slow" devices:
>   - RCW[SRDS_PRTCL_S1] = 0x2233
>   - RCW[SRDS_PLL_REF_CLK_SEL_S1] = 0b11
>   - PLL 1:     5 GHz (derived from external 125 MHz)
>   - PLL 2: 3.125 GHz (derived from external 156.25 MHz)
> 
> - "fast" devices:
>   - RCW[SRDS_PRTCL_S1] = 0x1133
>   - RCW[SRDS_PLL_REF_CLK_SEL_S1] = 0b11
>   - PLL 1:       5 GHz (derived from external 125 MHz)
>   - PLL 2: 5.15625 GHz (derived from external 156.25 MHz)
> 
> My patch never reconfigures the PLLs or their clock net frequencies. It 
> assigns lanes to PLL 1 (for SGMII) or PLL 2 (for 2.5SGMII). This is only
> done on "slow" devices. The "fast" devices always use XFI (PLL 2).

And the lynx-10g kernel driver does the same as your patch, plus more
(below).

> > In Linux we don't change the PLL refclk and clock net selection that was
> > made by the RCW. Doing so would mean powering down all lanes that use
> > that PLL, and unbinding and rebinding the Ethernet driver (because the
> > supported_interfaces mask will change, and the phylink instances need to
> > be destroyed and re-created to pick up that change). It is a very
> > invasive operation.
> The lynx-10g driver seems to alter PLL assignment in lynx_10g_lane_set_pll().

Yes.

> That means that a lane could be operated in SGMII or 2.5SGMII mode by assigning
> the correct PLL (given that the PLLs are properly pre-configured via RCW).

Yes.

> But it also means that in theory I could configure PLL1 = 5 GHz and PLL2 = 5.15625 GHz
> and then switch between SGMII (100M/1G) and XFI (2.5G / 5G / 10G via rate limiting).
> This way all media speeds would be possible.

Yes.

> However, switching to another PLL isn't enough, I also have to switch the lane's protocol.

Yes.

> This worked for SGMII and 2.5SGMII, but I never managed to switch between SGMII to XFI.

Yes, the SoC architecture on devices with the 10G Lynx didn't initially
target the use case of switching between SGMII and XFI, so you won't find
documentation on how to do that. We've since validated that the use case
works on LS1088A, LS2088A and LS1046A by implementing a procedure called
"RCW override", where you use undocumented SoC features in drivers/soc/fsl/guts.c
to essentially change the RCW[SRDS_PRTCL_S1] value to something different
than what was originally loaded at boot time. We've tested the feature
on the above SoCs and it is seamlessly integrated in the lynx-10g driver
(it is not invasive, the user is essentially unaware that this is taking
place).

As mentioned earlier, lynx-10g is in our upstreaming queue, but it may
take a while to reach it. You can get the driver with the RCW override
support from Linux Factory, though.

> >>> You are just requesting to support the 10G, 5G and 2.5G media speeds via
> >>> LANE_MODE_10GBASER (with pause-based rate adaptation in the Ethernet PHY),
> >>> and the 1G and 100M media speeds via LANE_MODE_1000BASEX_SGMII.
> >>
> >> Yes, that is my minimum target. I hoped that the "fast" device can support
> >> all speeds, but it's not mandatory.
> > 
> > What do you mean "can support all speeds", do you mean the media side
> > speeds?
> Yes, indeed.
> 
> > By switching from 10GBase-R to SGMII it would support them all,
> > wouldn't it?
> I don't think so. SGMII does only support 100M and 1G. Tell me if I'm wrong.

I hope I didn't confuse you by naming XFI "10GBase-R". This is what the
10GbE SerDes protocol should truly be called - XFI is the name of an
electrical standard.

All I meant to say here was that by using XFI for the >1G media speeds
and SGMII for the <=1G ones, and dynamically switching SerDes protocols
each time your Broadcom PHY changes phydev->interface as a result of a
media side auto-negotiation process, you should be able to support them
all. Basically, the lynx_pcs_config() function, called by phylink on
major protocol reconfig paths, calls phy_set_mode_ext(lynx->serdes[i],
PHY_MODE_ETHERNET, ifmode), and this is what triggers the SerDes
protocol change.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
