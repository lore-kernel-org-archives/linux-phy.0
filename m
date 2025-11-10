Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD840CD13D2
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 09:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2zJJj9761tPIKDOPxZwwhvsBuXcv05jUSPWSoeeSQ8=; b=Wjv+S31EfnPpP7
	JN3T/RNg/4gncuE+m2sIwtDtf8QzyJkwSy/5+tbseQIIsX+5gup/XQU9nb2gs2aEJlwxj6JFF2nKo
	R7ep96eAVXfga5YKYGWbVi6tfzHyF77XIUD+LRmMk1Cwvjoqqqi5hoTX9VhcE8+lkP78QyicvGwFT
	Ow2FrjmccDwahiQYAw52ATjbBPI0H5GLYIY8627Hpw3ZaRtQe8m66uiIbegbxyOwjTD72zTcUEjlf
	CQQgchiO8j7h+0eAAUC7wm7x5dFh8FK7L7CVu+JsEptCaqjtbvV0NijQ48UvysKYbRofuNGt5oQPX
	jbhk99v/mWlx2BwXjWLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO7K-000000055HG-2EY6;
	Mon, 10 Nov 2025 09:23:18 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIO7H-0000000559f-3iHw
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 09:23:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t2NyoGAgXtm0cdgb9mOJcpwr9mfck19xvc+EAbm+zkJ9nthTSkiD33Vc9Au42UjDLBV/ihG4gn81wQp1ej5XbUS5RC0wCn5ewK8/Hr5xQBbsX5McxSpl87lxsEs7tMNBjjML8IHIkH9tYbPf6deCIPff8eXNkXNsdgWBjOi9Yq1Eav0g2AA6XOSiEmChxxTlqKlidLYE4ctsF0WbZnXGiCSE0KiEsg2irh1cIAhrflV2Sqx2BvzAgo0ENkm3SQH3d6dDV4dtUFGMpNxP9LZMvC4QYWMkA7QPUmrj05RFnNxDEZ8oqY6TmAhWoNeGOBl+oSdlbuOkuxiucmlV79oqXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dsM894J9dKPAdfZjtUcb8Og6CmYb222B0b42r5YLw/c=;
 b=GeoU+Vpv+9vMiPv+tvdtUI/mL1b0P2NHOrtMVJwDPQsR20j2KGVNWGBxOiyUqPr60an+h63WMMcLFsnr+cU580H9jwuJ6r7vXDGDEJ8+/qs3SDVPYRKbWxZ0aP+ZKBXEOuI6LIN+yraHI3spmE3VNuZkXKU+ShkrgISOSSsPxQP6xFL89TbewSjabOZjWE87Wjw79aZ1X9fgg9XluT4jwYH3BY/Au1EYaaoeNxLCdmbEvLDB5GTW2u+djOYSj89tZQHJONaYwlfVp3O9ZBAuBpe5zOv7uDhRyDo4yarloiRtB+Tn41Ac+PEN5X/CaTuVGIwZBytZdPzHbGj7ykvubA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dsM894J9dKPAdfZjtUcb8Og6CmYb222B0b42r5YLw/c=;
 b=UmdEwmWglai76putBw0i1esQzc/8TOKc5cuImysutE8n6eh/WNUSC2TBCRwAuwyB7Xs4d30rmD81BsIpR+B5xEEBfsx3BWFMo4+CukxbSbuZF36RauoH8x0TKvqC0akScLg6P3lBiGqGW5sbGDlCj/tBQ10uAoNYGcz85TuAauiyNQhToZjgj/w0PelK4oKf7XOYKvOgG4HNKhpP1E23CVvZ7Bp6JtaGVvmDp6UEOKcZ7VARu3VnnH2di31AdjByHq9fldHPalLDTVWZOHPL1eDE2Y3HksIf4kc19Kxb2eGQ8ztVirfr439UrJIPeTm+m14VakXw5KZid4eDCNi34Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA1PR04MB10468.eurprd04.prod.outlook.com (2603:10a6:102:448::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 09:23:14 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9298.010; Mon, 10 Nov 2025
 09:23:14 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v4 phy 15/16] dt-bindings: phy: lynx-28g: add compatible strings per SerDes and instantiation
Date: Mon, 10 Nov 2025 11:22:40 +0200
Message-Id: <20251110092241.1306838-16-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
References: <20251110092241.1306838-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P190CA0026.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:219::31) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA1PR04MB10468:EE_
X-MS-Office365-Filtering-Correlation-Id: ac2bd4f6-69e6-4e26-6ba2-08de203ac62c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|366016|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bLUYMpdwqYibDa4ysaW4Hd4nAlb5OXwbnvta83HcWojkkoWBof7BZwfShlhB?=
 =?us-ascii?Q?Z2GjhsVBV2xE+TJ5WoIzMioDF9+CNIFu48ecAjZsg3nJzTYki7LzTti3A1Xd?=
 =?us-ascii?Q?Hnpoe5qtc5RcmPcmTrTtTgyVpBlG3LCbTxmxqk/S+uFqRWSv4PopMSy9X/9i?=
 =?us-ascii?Q?H/x2KZzBbzsejBvwB8dk5fFMnGMhWxERBtMNuYAXK5eZjhVCvjx4xJ0dXRvx?=
 =?us-ascii?Q?F5Cg5T1jwp+nob0vWyDmrfpmlHqf11EQl1Tp189X8VdvStaLjxGY0jUpd4t3?=
 =?us-ascii?Q?Gmi4wkvJ27p4VI/pEDQuDNETsJmXWUr0xhR9x83tMsgmmugBglnd7fdbFEHU?=
 =?us-ascii?Q?sLD02K8kiy7BuXg5XacFeeV7h8KdVREKSRiJaLQ1RfAzB12M44MmnC+TGg9A?=
 =?us-ascii?Q?+J/+63cQBVt1YZB7WKEyqX2RDyQdUbudgDGR4RYy2VbxzeDwnqL8A9EjjGZ5?=
 =?us-ascii?Q?or2qOft7m+x1KPlwW2v8OjRJpX34N+LHeVPjSx7Ni7kePTG3Tv6IYAn+XSQ4?=
 =?us-ascii?Q?JqzKkeu0Y/1b+Xsyie/LrCD/RtaIK0v1vhaqUQeGklxsxuSeYt9rUxIMdzKp?=
 =?us-ascii?Q?oU/KBuJ4CGq92wDCQxPPh7keCzSbfAZIGsM5sCk3qv+qsdU0t1KJNMzHhm9M?=
 =?us-ascii?Q?MIkwpvDJyEMGXxLxGX6wy07aQGemXdx+V3XYoCkp1zGo6jqju/TiSS5w91mS?=
 =?us-ascii?Q?lgYRvT+If/p6mmljH9phm+pn4erx1Ytn5l3EGITEUL7LO6NT+hxnAC7wn/aM?=
 =?us-ascii?Q?IExjlCqB8DljguFJ1vNE2KmekIvzpt4xm+8f2NTFuOzCIh6aHBliQMUIUW9/?=
 =?us-ascii?Q?fWK+Yu2kn5z3Tm1Mkkt8cxb1PQF4USppLLSF+xQ7yKumTdEVkXxGiwADFR1+?=
 =?us-ascii?Q?Bp52xtJJq8HikIp/t9W631ORdVXkoRMMQdDM9AlZuNXR16sfFto16QXxa7E0?=
 =?us-ascii?Q?ZVj91Gj0bINqQ99aSlszi5HpUjAUrSrq6upSwV2uoSI91YKrq0WNgs3OtoF5?=
 =?us-ascii?Q?QEvK+4tEe3gAag8Se0Hl1JoTjvGIPQTzlfYCZFymRhRbBGmFxYjJm+Eht6wH?=
 =?us-ascii?Q?zrxOSEzJcHBLj9TXhfUKcPyUVyuDcIdAjuWmbkP8W/E8M1K+21YZ7TAG807y?=
 =?us-ascii?Q?9ixcq3ezZFu0Du+Z51qMBlK9/nye1zW9/1Ufs/gkH6T/GCvLXfvrjSOmgdhQ?=
 =?us-ascii?Q?lCAt8hSDKarH9KCpdGRjYRl3Vv8cnzAvJbj50vD/9ZVpN/3APfjQw0BLM4d2?=
 =?us-ascii?Q?lEy/NTBsJRoFbONjBgfGdOqZ/bWk5tAiXkALYzgxCN6n9lQo7A/MnT6KJlcT?=
 =?us-ascii?Q?fHO5lzLC4uB4ib7VpiRJriswuTDni6ASirJCMif7lb8IJtXWbqxdl6WkNNZC?=
 =?us-ascii?Q?6IGoLWsM/Ruz97D8m1jePGuDraH4jasP9bxybTcn2Q6B0EVJ5EumeEeGLc0e?=
 =?us-ascii?Q?eNvC0d7f+CHqEtQx9osSNs3mR3bqKkcC1F3if+B1kZX3kzKMBoUilqgHE//7?=
 =?us-ascii?Q?CvsxKdM9m7QyxmgeywPt7d6D5DySS0xAcThV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(366016)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nsJMZbzYbx/VpE1yKmXfvg/4gxJHlfZZ5DsqCHzw62EppuVv83CdtsYHskL9?=
 =?us-ascii?Q?JlPi27ZqeYPpKAvIPc0mhyjgll9WLyJXC8TOGoRK/hJKZWlWd8OIzUvWyHdV?=
 =?us-ascii?Q?UoBv39t+hgEhmG1orSs7GohfegIbAwbDb+ROcyhhOoeuNaO3TiUW1S3POA//?=
 =?us-ascii?Q?7Q2wdv36fWlzXg5blF6C1sL21wF9E6xfc1iLNne0DwLftjjsPjCo9derUQ2d?=
 =?us-ascii?Q?PimYZ5IOGn7KBNkCJ/9Lhx08c0hnCZGRLiH6NYZgbdEqjF3MYfPwFn11e660?=
 =?us-ascii?Q?K0przcwqz61LdEmUr2q9kcXR/sMm8i0UUpqGrtQ0C4o5/oTKC1VXXIlrsbRR?=
 =?us-ascii?Q?iTJRDTPexm+1Rj6/c4Hrmpmt4N5i3Z6YIN6Ovtk4MLvlhM4K2OSSHruMbLGx?=
 =?us-ascii?Q?dMEfix2oaAROuz2wip68dmOwruS67sy/+rKyUExzx5BsK4gKOGC35/0+O8Us?=
 =?us-ascii?Q?1yOgpKXHLzWA/HXDd3o9P1r75FQ5PMqQy4YFiM6Su21z6DVafx5Dp/weR411?=
 =?us-ascii?Q?lZmxb/GFop1Z+n8rdQc/nPeTXOoCnwCM+VmUMytuUpmv0tEcWbCn/+88S1a2?=
 =?us-ascii?Q?NEKfBkLlUUCIbeRJE9wef9MXtWEdRIU38iQohI5Eyy/p/e4Hzt97saE3PQik?=
 =?us-ascii?Q?ZXXGT7tj/vm1RuYKKKO0C7xUYJPWnlwNF7ceK0+s8HXqbqo/G9XNlFEF4c4G?=
 =?us-ascii?Q?Ed6F049XtFlGGVLemP92CNqHKFOr5X9ma75wKz/30SA5ZtAfS9UV4U9N/HHD?=
 =?us-ascii?Q?eTIQaOQt3aQvZo3e/gdxlO7BsmoF0YmUq2PqKq+/niw2luPtVdq/z9UAVqKl?=
 =?us-ascii?Q?4gmZaCRt9HXM13L5Uqtg0ZvheMMOBDYj+lr+211btyOVEOwr3QsNmGjynSVr?=
 =?us-ascii?Q?ivOD7jDRlOsYgFAjgf3Nuj+uVOGNWeGCN5hA/HN5JLT0JMfcdGJ1K+ZY6R6T?=
 =?us-ascii?Q?a+lXreMsS9HYZV5RSEnxQVEIhPf2nWfqSrBGAPDf6jS2XLrviwhK2VOh2yl6?=
 =?us-ascii?Q?KdtmHYy2gVfyW9XiKSFHMI8FZXI71Lj7+pm/fy5mUgmeMagGD1WmU3WrGaAt?=
 =?us-ascii?Q?UIccwJmvWI8rVYA64zU3gIuhjbLpmx4j4jUFafBvqLs+CD/IkpFgLySjhM9o?=
 =?us-ascii?Q?ftZNeyb6NxicFoLdDfqKskbMIMkwP5YmYuQccxnefnEs86RfUnJXNFaslFJc?=
 =?us-ascii?Q?InQloHjNNHDFL6toYrDZmiRgyWBO47UNwWGHZO9wThfxojGPS/Q7OAqVpTTe?=
 =?us-ascii?Q?GOgjI8BLsqzrD/lYEhlrEq7rv7qUE6FSi4bMVYQmPCB112q5an0A11NWh4SQ?=
 =?us-ascii?Q?gCiyrIXnRQr4VHNigdVDKAYHYPTMvb+wnntS3/iChmVXpuN31HD7jaCJQm0e?=
 =?us-ascii?Q?1QLf1MJDtTfeIJh9akt/OnvKrQ5+hYohceWvOM2H1RqDYvF50dktgfOBH/x8?=
 =?us-ascii?Q?GnSSgrFYIqTJxGpaJRTGiIIEgTqOwUCWUYBC0T3aMHXB1qz9Yq6IyZuRsQXa?=
 =?us-ascii?Q?Kkzg8vBH2Bz5krmRmNEnuZB5Ro7k+TQ/lP7bTrvleaVdYVbHs81jkLnTwYcm?=
 =?us-ascii?Q?qbwyH8vB95VBl/FKczlw/L9A6l3q0jzpmi+skA9fmJVZZTj9vfnTogFwGPp/?=
 =?us-ascii?Q?mw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac2bd4f6-69e6-4e26-6ba2-08de203ac62c
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 09:23:14.0753
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mP/Qq18P9px18zpJPDYK3vi1EMtd/iQ4dQmHxBxH2tf4XcjfmCqLFg8OHMXl0x6nvuf6OoRZPNRx0L04a6YEjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10468
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_012316_078035_0FDF60F5 
X-CRM114-Status: GOOD (  21.00  )
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

The 28G Lynx SerDes is instantiated 3 times in the NXP LX2160A SoC and
twice in the NXP LX2162A. All these instances share the same register
map, but the number of lanes and the protocols supported by each lane
differs in a way that isn't detectable by the programming model.

Going by the generic "fsl,lynx-28g" compatible string and expecting all
SerDes instantiations to use it was a mistake that needs to be fixed.

The two major options considered are
(a) encode the SoC and the SerDes instance in the compatible string,
    everything else is the responsibility of the driver to derive based
    on this sufficient information
(b) add sufficient device tree properties to describe the per-lane
    differences, as well as the different lane count

Another important consideration is that any decision made here should
be consistent with the decisions taken for the yet-to-be-introduced
10G Lynx SerDes (older generation for older SoCs), because of how
similar they are.

I've seen option (b) at play in this unmerged patch set for the 10G Lynx
here, and I didn't like it:
https://lore.kernel.org/linux-phy/20230413160607.4128315-3-sean.anderson@seco.com/

This is because there, we have a higher degree of variability in the
PCCR register values that need to be written per protocol. This makes
that approach more drawn-out and more prone to errors, compared to (a)
which is more succinct and obviously correct.

So I've chosen option (a) through elimination, and this also reflects
how the SoC reference manual provides different tables with protocol
combinations for each SerDes. NXP clearly documents these as not
identical, and refers to them as such (SerDes 1, 2, etc).

The per-SoC compatible string is prepended to the "fsl,lynx-28g" generic
compatible, which is left there for compatibility with old kernels. An
exception would be LX2160A SerDes #3, which at the time of writing is
not described in fsl-lx2160a.dtsi, and is a non-networking SerDes, so
the existing Linux driver is useless for it. So there is no practical
reason to put the "fsl,lynx-28g" fallback for "fsl,lx2160a-serdes3".

The specific compatible strings give us the opportunity to express more
constraints in the schema that we weren't able to express before:
- We allow #phy-cells in the top-level SerDes node only for
  compatibility with old kernels that don't know how to translate
  "phys = <&serdes_1_lane_a>" to a PHY. We don't need that feature for
  the not-yet-introduced LX2160A SerDes #3, so make the presence of
  #phy-cells at the top level be dependent on the presence of the
  "fsl,lynx-28g" fallback compatible.
- The modernization of the compatible string should come together with
  per-lane OF nodes.
- LX2162A SerDes 1 has fewer lanes than the others, and trying to use
  lanes 0-3 would be a mistake that could be caught by the schema.

Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v3->v4:
- OF nodes per lane broken out as a separate "[PATCH v4 phy 01/16]
  dt-bindings: phy: lynx-28g: permit lane OF PHY providers"
- rewritten commit message
- s|"^phy@[0-9a-f]+$"|"^phy@[0-7]$"|g in patternProperties
- define "#address-cells" and "#size-cells" as part of common
  properties, only leave the part which marks them required in the allOf
  constraints area
v2->v3:
- re-add "fsl,lynx-28g" as fallback compatible, and #phy-cells = <1> in
  top-level "serdes" node
- drop useless description texts
- fix text formatting
- schema is more lax to allow overlaying old and new required properties
v1->v2:
- drop the usage of "fsl,lynx-28g" as a fallback compatible
- mark "fsl,lynx-28g" as deprecated
- implement Josua's request for per-lane OF nodes for the new compatible
  strings

 .../devicetree/bindings/phy/fsl,lynx-28g.yaml | 86 +++++++++++++++++--
 1 file changed, 79 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
index e96229c2f8fb..114dbb32fe7f 100644
--- a/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,lynx-28g.yaml
@@ -9,17 +9,41 @@ title: Freescale Lynx 28G SerDes PHY
 maintainers:
   - Ioana Ciornei <ioana.ciornei@nxp.com>
 
+description:
+  The Lynx 28G is a multi-lane, multi-protocol SerDes (PCIe, SATA, Ethernet)
+  present in multiple instances on NXP LX2160A and LX2162A SoCs. All instances
+  share a common register map and programming model, however they differ in
+  supported protocols per lane in a way that is not detectable by said
+  programming model without prior knowledge. The distinction is made through
+  the compatible string.
+
 properties:
   compatible:
-    enum:
-      - fsl,lynx-28g
+    oneOf:
+      - const: fsl,lynx-28g
+        deprecated: true
+        description:
+          Legacy compatibility string for Lynx 28G SerDes. Any assumption
+          regarding whether a certain lane supports a certain protocol may
+          be incorrect. Deprecated except when used as a fallback. Use
+          device-specific strings instead.
+      - items:
+          - const: fsl,lx2160a-serdes1
+          - const: fsl,lynx-28g
+      - items:
+          - const: fsl,lx2160a-serdes2
+          - const: fsl,lynx-28g
+      - items:
+          - const: fsl,lx2162a-serdes1
+          - const: fsl,lynx-28g
+      - items:
+          - const: fsl,lx2162a-serdes2
+          - const: fsl,lynx-28g
+      - const: fsl,lx2160a-serdes3
 
   reg:
     maxItems: 1
 
-  "#phy-cells":
-    const: 1
-
   "#address-cells":
     const: 1
 
@@ -49,7 +73,55 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#phy-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,lynx-28g
+    then:
+      # Legacy case: parent is the PHY provider, cell encodes lane index
+      properties:
+        "#phy-cells":
+          const: 1
+      required:
+        - "#phy-cells"
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,lx2160a-serdes1
+              - fsl,lx2160a-serdes2
+              - fsl,lx2160a-serdes3
+              - fsl,lx2162a-serdes1
+              - fsl,lx2162a-serdes2
+    then:
+      # Modern binding: lanes must have their own nodes
+      required:
+        - "#address-cells"
+        - "#size-cells"
+
+  # LX2162A SerDes 1 has fewer lanes than the others
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,lx2162a-serdes1
+    then:
+      patternProperties:
+        "^phy@[0-7]$":
+          properties:
+            reg:
+              enum: [4, 5, 6, 7]
+    else:
+      patternProperties:
+        "^phy@[0-7]$":
+          properties:
+            reg:
+              enum: [0, 1, 2, 3, 4, 5, 6, 7]
 
 additionalProperties: false
 
@@ -60,7 +132,7 @@ examples:
       #size-cells = <2>;
 
       serdes@1ea0000 {
-        compatible = "fsl,lynx-28g";
+        compatible = "fsl,lx2160a-serdes1", "fsl,lynx-28g";
         reg = <0x0 0x1ea0000 0x0 0x1e30>;
         #address-cells = <1>;
         #size-cells = <0>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
