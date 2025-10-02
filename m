Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92B7FCAC5B8
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 11:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLjfh0yWHPev05c2wc3wmhFhVn5wug+iDRSNVeT3Lno=; b=wqPitD5EXW2tqn
	khxizXdkQMMTSy2v3G5UkONMt1jD9qKiJCaOHmNRzB37PMnl3ZJohu0sMtodbZvdhAfeJHBtbLR2d
	PZ61Q9iubMZyyRukjVUzfOUGwSt+pTREM9I+FlyYQaMaMeaYWsIa7h9RONDG/bQewBF+nvhXXYw6y
	t+pFDcALplVdfEvCtBTKZsdpX8REgFeF2XhQf30ax2FebufG2qfE5AJ4UUbD7QHDJO02VHvqJhEoY
	TVE3MatqFFNWlbV6RIABU/lHqqcU4U7r0BE66ojwHlJoPvonIxaQ+A+UBLsDKwbQPmL8xR/HuWDaE
	Xwd/0P3HUk/Qsm3QMRJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4HYO-0000000AN64-44Uu;
	Thu, 02 Oct 2025 11:32:56 +0000
Received: from mail-northeuropeazon11010015.outbound.protection.outlook.com ([52.101.84.15] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4HYM-0000000AN5J-1BzY
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 11:32:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YXguEz7Oe/tMHBHI69hntxvqmR02hM3s5frmi84HoQYbFg87XSrIA/g5Jlgv3mf+jxYsgS3x2LesA4OIL3NUaixkMtbJue6iQUWAAy5QaCYWhdm+varYbGbylATrdRfS/94A3x5Cuw3yyl7zhhLMSOJW5/vz7CNbnbOQedPFba8nx8lRs0BrcjaeC5Bbi5tfimG+Ehq8VmMKKqQlL+qNjHVCXZasGhNL6GsOV7d4EXCHcqucFzlvfP7TxFvfSlxSS22il7/FFTAbAwPuDVo6PtpPQHP6P/c2i7t2cnR6OEOt/ClhgJ3YpaB9IDFym3o8PPWP1SAD3VHQDW+vJeEa+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+x84KANbGyLoie+N6fV2w7Xnd1xALuvla09u+TbbKo=;
 b=q8VoAkMokWH/h9XivBsi5/4sxQ/4qUDd30cZGpbpWzX/XMS0hbA50N/VVW/dGCgGzRSekATX3ufm/50oAMYDndaIhm9hh0esaPwS3UYGavYlT8ilomSJyRUUVVouqd8WJ4dEne/xEpZI6IGoMJNtAoa+CGjSkmL2Iow8NveZa48Wa0JFpHJ6SacndBFdeEaIa+D0qHZXhM8tNFPHXVLYDF/Be9L7zRKCQrwZZ32wM3WiTov/+DUmhaHHMJb7Hx51ccRxWzLGlIgp/g9fz7reYhi0ZSbyw3UiYtjlhEf8iBXviNAM0/zBcnMlUxQ20K7G9f7OJDH/1prcSmdlXCFn0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i+x84KANbGyLoie+N6fV2w7Xnd1xALuvla09u+TbbKo=;
 b=MeD2WtUeTb+OWqmOSorWQPGhwGQW1Es8AgskAuEVEDXzBkGU8EjNY6XsuikkmoG3JkDccKZGrJfoRDSDYTih0KVSBDUHa/CpGy1GfVBisk6IQWMu466cHx6wfITZG0amxPmwSN8TJKF5hIp6JN83HkhwvEuHvc/lKEgvGX2mpieEw4zq585hQ18hYYw4lB4rDpS2ZtApRo9IX31w7TKtxSB+79PpVfv24WNubrOI/2Gq/l11ke8fkYN2fZgcZYSDD+wkzw942UApTxWU4LYD5VpWUo2sgi3mw7ydkRVsAIg9vOxEN8HXJhoaaC2RUePuKpk+T01M8bedWVEvJFUA+w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VI0PR04MB11765.eurprd04.prod.outlook.com (2603:10a6:800:2e9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.16; Thu, 2 Oct
 2025 11:32:26 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9182.013; Thu, 2 Oct 2025
 11:32:26 +0000
Date: Thu, 2 Oct 2025 14:32:23 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 phy 12/17] dt-bindings: phy: lynx-28g: add compatible
 strings per SerDes and instantiation
Message-ID: <20251002113223.rwwgvpbgn7bmdspc@skbuf>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
 <20250926180505.760089-13-vladimir.oltean@nxp.com>
 <20250930140735.mvo3jii7wgmzh2bs@skbuf>
 <20251002030330.GA2964719-robh@kernel.org>
 <9c50af26-ac4c-46c0-a8ff-d6dde9c0ac0a@solid-run.com>
Content-Disposition: inline
In-Reply-To: <9c50af26-ac4c-46c0-a8ff-d6dde9c0ac0a@solid-run.com>
X-ClientProxiedBy: VI1PR07CA0311.eurprd07.prod.outlook.com
 (2603:10a6:800:130::39) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VI0PR04MB11765:EE_
X-MS-Office365-Filtering-Correlation-Id: 09c0984b-c509-4bfc-3a35-08de01a75cbf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aeZDxt2lLIhDurVZFfOtPZ6N4yGFRAEtW5p7LixEHpjya2QqBu20cyuTTrIz?=
 =?us-ascii?Q?4F6vPDWg+m0opi3IlEgxYWL3n1+fIqrdn7oZu6F5LvFhXpDOkvxwW3l7j9/q?=
 =?us-ascii?Q?1u1bynNNlvFoIhuxBmRks1netiO8rvsakFYZxwBYT5O7UMuDx1kGCLg3FH/s?=
 =?us-ascii?Q?sBdkgSJI22asjUXpcmpojmafsijHjTRUix3Zj0i7t39VL3UYX4MBCKwGVvL6?=
 =?us-ascii?Q?kRKYNqc0mHkPVtSLQDSD/URuKjHjpKR465aCbxyeJWpl2DqvYmPnncKxPxa9?=
 =?us-ascii?Q?pvA3Y1aNMDjNObgX2843QY3/raYFbQH3YAh6bm5+hpY0xD/5xanBlzsR1jND?=
 =?us-ascii?Q?cKj54jOo34q+KSYdSu8+xVt+qS6VPUtEeYJr3ak6S5Pdxm97nZvAZeB1JnGe?=
 =?us-ascii?Q?s6p6+8yOZwkOLT+ryVvtpAY2uXB/Mwg2agn0HUc00F4O/I234tT0fW5QCzh/?=
 =?us-ascii?Q?OhwUpzyPO1gnA2bZdfbRrgPBWiG8fkszIAUQm8/SM/iTORayWy/lBZRKIdhu?=
 =?us-ascii?Q?40KbwepuMop5VDpu+f53iEyCSDAgb4kLY3rhNvNF8mKnjrcPzPSplnq8i65j?=
 =?us-ascii?Q?2Xy0AAQxL15WGO7uC96mKoDgf5lTkZaDb0aP2Ht8dRbluMpp5mvGusSha2wB?=
 =?us-ascii?Q?Y68/DhwhSBPF8llamiPL3EU1sJNkgZNbCJwXmdK3N+rq74zuUJwkx30M2ZqS?=
 =?us-ascii?Q?TEacHAyItBwU1NmNTk2NqAuH/xS5M0l4YoumpMBxsIdFIbxb1tyawcl+TpZc?=
 =?us-ascii?Q?0w6EH0MRbWE+S9BGUCWybjAlUDE6RuBrmIcsmghddJ7ukVWAlQk17l80CWvZ?=
 =?us-ascii?Q?ta/H8aVdPutMuNV++ihdjMHj+sXm6yOYF4CgSVbps7Wr0/RhmyMnfB45XzUh?=
 =?us-ascii?Q?q6rK5VLmFJ83TPGQW32e/iORuU7CGVtF48WXJ00Msmxg3cq7/3I6gxTGeOPY?=
 =?us-ascii?Q?6E2HbVLkrraqb4+EIKKIR4dvMjEwXFt2Nh2/KPZX3e0IIZxeEFFW3OCBwZXJ?=
 =?us-ascii?Q?kRKbFoHqgvYUvttU7WdrVO2iOEQYiHxd6EVr+9EDJpNuSx5WG6AB4Z+1Si4A?=
 =?us-ascii?Q?/S6DoZttkHbS2AuSfdh1kkYeH8kr8uZLAtZlNWOpyG2O5SM4e2xVM+UOCTfD?=
 =?us-ascii?Q?09XlzEq/7QeqbdDRpVNHi0inp16VoNqtQyyQS3+/Tq3FGpIItu7iRANjXUH/?=
 =?us-ascii?Q?0H4BLFF1uSEOaFaMToig4Jyt+exSHQzpDC7BkpZX9JOqGESS9Lsy2FDK6nkZ?=
 =?us-ascii?Q?sBIE4kByrWNtu0c3LqOw9IQE5nP1Q5+oQL78VAy/fK0BA1JQKf86vjy5AIex?=
 =?us-ascii?Q?KuviCdFDiL5rc5sNmKjsWsT9bW23VnQL4EWZ7r94JtVGHCSt96NQlYLUNnGR?=
 =?us-ascii?Q?byp4MSezApNVMKaEiu0jP8IsdvsZ74b1VKHZf0WIetAf3C77+1mLMwBbwoP/?=
 =?us-ascii?Q?VQM6b51YGtE+7lQi/QtI/kWn9ITVbJ3yQXgDTm+nESrgfTtoIMwNfA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(376014)(366016)(1800799024)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V1u2BbVj942lV0LnykVS2Og/P09lyobEHDNYJXeVTzT5Uk+KoBCKKRlKJeqn?=
 =?us-ascii?Q?YXv2fEsIsjsm3+9IDMvpudcdsrOZ0g/EgeRuVj8P2O9X8+tcm4cclpWvuno7?=
 =?us-ascii?Q?MnnIdxn5ih4/rGJJjtcXLAHUIcVt5nbhQMrhPxsHj9Sg9Q2Z8/6XnEkgsAvz?=
 =?us-ascii?Q?vNxuCKNDtfYDlKiB20VlPpL3QzazzYe5iIIOteUD/ofyYoCTBBMiyKzrnRnC?=
 =?us-ascii?Q?5+EUz1avf5PDE6qlbjyj7IxNohWo/pP0iE7lMjszYrYAt/0m2RAI6NpzRCdO?=
 =?us-ascii?Q?cbwST6b0N3g5N5Goabljyy4zhosRwogCImoPGqXGPfeCShYeWCOrApIKRuYT?=
 =?us-ascii?Q?qHuQFEG+/C5i3Iv880RuIl+vOwCCDwSV76L1oeawcBm90VCIgCgK80cQtjeL?=
 =?us-ascii?Q?9LVQ/H+jlTqc5W+gUWg+LiPA755qmViKQFe+f/QZQnLeMc7ptdhlyicW5HOY?=
 =?us-ascii?Q?6kWPxXemBfeeQ5XCULY3O74wrYPpJ8em6hws0UgU1l4LlA+V5iXFMZyKe8lo?=
 =?us-ascii?Q?yoZHizaIQs7+kZYxf0w+45tOn2jLVpYlvAMZUMarMRQY3lzVgx2TGeWuaTly?=
 =?us-ascii?Q?50rNkvkNc0+nIlzZSB0cvMsNPCjVjsTRAnya5895g+O611qNEfR9AtF6xsKw?=
 =?us-ascii?Q?IWWFITQlyRG51o9+O7932oeIvKubWZkM2v9hh0eseEeqa7PH3sYFi/Bie56Q?=
 =?us-ascii?Q?cSvjQD1FzJzYdBniHMxHuwaPKU7RLKNseocse45dlNp9TpbBw+O7f7bOsdnw?=
 =?us-ascii?Q?YB2S0zbdX/G4EYTdn/wDmBOzwhKcAHusQJhRPjAYQOmiSUg5E03+NObBawSp?=
 =?us-ascii?Q?KMF0wzagJTaGrlPU5K9IArupn1kGlpJbSItn93pj5KibuYSd9CCbVXWApAAu?=
 =?us-ascii?Q?P2pjGSu29F6zyujcmI968a71yZhW9EjXT+uuUzKbgatQCKuvOL5u+cYUxpeH?=
 =?us-ascii?Q?TUMQ9VK/J7985n4aAI47/Azl3oDqzqJW1xOVZJha1od3avViUioLKXu/bsP7?=
 =?us-ascii?Q?FL/PK9PnogDWQsuUHzdml3IvntstMilDUsQcG56r9cJn5gW5ziq4TRPnayhR?=
 =?us-ascii?Q?I+5XdTRkmy9AFTvA4lpxULbXdOKiT3D8/LVJN81BcmhWzJdMT9vL0eYDnEzh?=
 =?us-ascii?Q?ryOECyeJC6mumLqQVfCok5HgwFv12aoshI5AQZFXyt0PTBtTDuE7AqPBIk6X?=
 =?us-ascii?Q?nz4NvoeeNDX4X86hlRN6MHr9GuxyDn4+yySQWtHh48OrX6wKCHhbLfdHA9qo?=
 =?us-ascii?Q?DbHi+gHXsJdLb/OhdKK+fv0jRgRbiUHVT2SBzHQVrNSsJIq7ATOxqTxei9g7?=
 =?us-ascii?Q?x6Ws2tbpC3S5hdEZvKDLcOmgGq+mwzKY7ri7ikqcD2NuDLp9m/D1okOfIRW7?=
 =?us-ascii?Q?AdG/1oZU9zEjJkQHzaOOxEVVpXaZUadEWTht7Uny+XMmLjEort/8/FMfIMOK?=
 =?us-ascii?Q?s6GWLiRATFKT5M+ziug6qEapLtkYLOXcoW7xk7o7g1X8emuoHm+TAidaEMeM?=
 =?us-ascii?Q?c9+UKDcPP7yIa3x4Pwt1TJKEdTpaY/Eac0GuR9F7qw2CguBEm7+GPJRe0twv?=
 =?us-ascii?Q?vPn8cjKF7tC7PNffzJoSLcBN+FOVOKzfrmSEHwj4Xsc3whtaKB7z1m2uR+j4?=
 =?us-ascii?Q?0WWOHImnSXkJhjtW3wDhAh3e7Fj8q8WRo0fgPYJ7LuQObyrIVKIaANpLsAyV?=
 =?us-ascii?Q?J7tAXQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09c0984b-c509-4bfc-3a35-08de01a75cbf
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2025 11:32:26.3039
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SI9vRq5GKv63YGA+1RHRiQ6QbfeCfX/11LawQE+t+ezN9vBQ3Nb7ayuvnTAW9JxnxpJHe2TXvhAC11CeaaAfbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB11765
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_043254_325215_E1A557C2 
X-CRM114-Status: GOOD (  34.36  )
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

On Thu, Oct 02, 2025 at 10:08:31AM +0000, Josua Mayer wrote:
> I would not expect being able to use a new schema in an older kernel.
> Maybe DT maintainers can confirm whether anyone expects that.

I can confirm from my own experience - some people expect that.
https://lore.kernel.org/lkml/87czlzjxmz.wl-maz@kernel.org/

> >> There are 2 directions to go from here:
> >> 1. Have optional per-lane "phy" OF node children, which exist solely for
> >>    tuning electrical parameters. We need to keep the top-level SerDes as
> >>    the only PHY provider, with #phy-cells = <1> denoting the lane.
> >>
> >> 2. Accept that keeping "fsl,lynx-28g" and overlaid properties has
> >>    absolutely no practical benefit, and drop them (effectively returning
> >>    to Conor's suggestion, as implemented in v2)
> I don't quite understand how keeping or dropping fsl,lynx-28g compatible
> impacts the ability to set phandles to the base and child nodes.

It doesn't "impact" it, but it doesn't help it either. It is an unnecessary
complication once you accept the fact that the consumer can have a single
phandle, either to the SerDes or to the lane, and that old kernels only
understand phandles to the SerDes, not to the lane.

> >> 3. Extend the schema and the driver support for it as a backportable bug
> >>    fix, to allow registering PHY providers for lanes with OF nodes in
> >>    stable kernels. This avoids regressing when the device trees are
> >>    updated, assuming the stable kernel is also updated.
> I think whatever will be done with phy sub-nodes on the serdes block node
> should not count as a fix to be backported in stable.
> Any attempt to backport reference to &serdes_1_lane_a will produce a
> compile-time error.

Changing the phandle from <&serdes_1> to <&serdes_1_lane_a> is a
breaking change for unpatched kernels, so your options are:
- never do it. If you still want to add OF nodes per lane, this is
  strange for the reason quoted below (summary: lane OF node exists, but
  the phandle does not point to it).
- fix stable kernels so it's not a breaking change.
- live with the breakage.

> >>
> >> It's not that I particularly like #2, but going with #1 would imply that
> >> lane OF nodes exist, but the "phys" phandles do not point to them.
> >>
> >> Combine that with the fact that anything we do with the 28G Lynx
> >> bindings will have to be replicated, for uniformity's sake, with the
> >> upcoming 10G Lynx SerDes binding (very similar hardware IP), and #1 is
> >> suddenly not looking so pretty at all. I.e. introducing the 10G Lynx
> >> bindings like the 28G Lynx ones would mean deviating from the widely
> >> established norm, and introducing them like the widely established norm
> >> would mean deviating from the 28G Lynx. I can easily see how someone
> >> might look at them one day and think "hmm, can't we make them more
> >> uniform?"
> >>
> >> OTOH, the fact that device tree updates require kernel updates (as
> >> implied by #2) is acceptably by everyone in this thread who expressed an
> >> opinion on this topic.
> >>
> >> As for option #3, while IMO it would be a justified "new feature as
> >> bug fix", it sounds a bit counterintuitive and I'm afraid I won't manage
> >> to convince all maintainers along the way that this is the way forward.
> >>
> >> I'll wait for the merge window to close before reposting anything, but
> >> I'd like an explicit ack from Rob and Josua in the meantime, whose
> >> change request I'd be effectively reverting, to make sure that this
> >> topic is closed.
> > If #2 is not going to upset anyone (that their device stopped working), 
> > then that route is fine.
> >
> > Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
