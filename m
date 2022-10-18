Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93EC8C43219
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 17:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9ZXsWjuckXN5+YmvqBascmPHgLmDNKaSY7G7joudqwg=; b=BmSy3jLmxpo40t
	2NZqIvKJdXQ3Dkvhs1Ev4HA+lWlotvxwsMlqaBI2qejD3t5qHWvL6qLOxYCJI0GJqDZv5k13LnOMF
	TS/8gz3wlz3lzcjhOhvjk/exyqaIlJY4G5cjfMZSHSRGDLy0wBR9WbcpC+jntvkz/LnrSFEWz5Ljb
	lSCq0J5fofzF6vCwIfXkG+cW+PqmzaBUIPRxJWfCrjeryVJu5AB4W4T8bAIPI0RBSBFUfOM/2Z2Ch
	nOh9py156Zs9DGgUJp40zj9lFtqcm5zHNumw6JT7v/X4qgPTEonK0AEWwC5oC0upco7/Qw9GRY0gz
	tgC4XGV9I6yZpr777IjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okqs1-009fdh-1T; Tue, 18 Oct 2022 17:59:17 +0000
Received: from mail-vi1eur05on2088.outbound.protection.outlook.com ([40.107.21.88] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okqry-009fSI-6C
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 17:59:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GygW3pupz3NM6meP4siYelfXGKFJVrVYee4qBJj2iN99LCRFLsXbzL9AOEfI/s2k/dnqmX8GTZcN497/lo1Eg48XQhJ5ER6zrN2lmZta2hVrJJ7c+7mDtG7sXf6t8wUO6toM1EL58zgqqZBWYFm7vYXd9UXj2F+Wm8lE7ZMwWsVYchquhI/30nxkLevl39EvmDNMyan6sUsU0rCeSwM3iff22FQF4uy2cyei9T7L3fxpGNaKDQ17F1iV6rjENhyZnzqzZJIMQGm5EUGTHFEIwHiekILFQZ0EQVml7q3f1LHXXwNzKMwOgm4zAsv54aV9838hcYs4Rj5/vvv3tc3wbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PXiJfH6rnVxSzlLYx6sHM3LWPx8t9bM011SBzMApdaU=;
 b=goGCoKlU/Ic5iiwxZm7IDq+rSqr7WIJOhI4GHtFQLXbKLcwHYBT613adTJxaFU1dYJm043yB4+TlqTxWzQh/raRPgbA7ywtkRywGq50XdSumGvJT+0Aakyr9uIXFXlB1OP66FrvX3L3BEEqesOa9IftoJG/SMwTd+58t+bawDP3T1CjLah9CUOYx5jpFO5rYy2ys3OVIDwmxLgOzKUmYT+pQ3S2ZNZ1gl2++YPolpHvQ9NrEXJMQ7hcBADLThFHcGEUzQb75LLE46Hpm2NrqhIfbLEOV9YSb42aFBjNnOYEER2js3gzSdMoTYsZ25C8C3clNJTXg0gE1JsNKxETo9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PXiJfH6rnVxSzlLYx6sHM3LWPx8t9bM011SBzMApdaU=;
 b=k+HJxsAerZ4AJsO5rEQHV6Mp7eOWtE7EVFSBR9Gs2OC2rv9tx3foZTTLmU+HB/+wmHpx6hywj1ZSWe6zi9wx7FX5IENzaw4GFMaXwovGY4pfJpUl282XlD3bSD7HjbpBftCGqN/5P0vX3y88gbgm1zao+VNO9DaGddNTGpUQXUDGLy6EJ7mWCvdmzBYBTE7fl9cPB6mKQHzMfriY1R1xqVSHaCthgYrv7ZPixRJE3mX99DB2xZwkvjJTLj9XEPEpLGtbcx5NQ+NNtbJj3CtQoe6XHLFi3IWcogftBchApfcuI5pb0VzF0Vv2AJk1JnF8gCwT7P5eBPdv4qFDCec3/g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AM0PR03MB6292.eurprd03.prod.outlook.com (2603:10a6:20b:15e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Tue, 18 Oct
 2022 17:59:06 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::204a:de22:b651:f86d]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::204a:de22:b651:f86d%6]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 17:59:05 +0000
From: Sean Anderson <sean.anderson@seco.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Sean Anderson <sean.anderson@seco.com>
Subject: [PATCH] doc: phy: Document typical order of API calls
Date: Tue, 18 Oct 2022 13:58:41 -0400
Message-Id: <20221018175841.1906611-1-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
X-ClientProxiedBy: BLAPR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:208:32d::25) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR03MB4972:EE_|AM0PR03MB6292:EE_
X-MS-Office365-Filtering-Correlation-Id: 589ce681-c96f-4669-32b1-08dab13272bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	IUDQNWrYUbjWjYokqiRblyiSPXkSo8D54L6IwRmHg1wxubEwgX2U/MnqLYULGhKAXwIft5+RlyKorgHwlpy73WcUjPOO5xtN+hxGOI6zNbhoPkrkuSOTTDjwLidFLafQbelLdlbPV4wZElPwZzV2OGfCzYYj/y70S4/l6mbSt738DhxOW4QKuHuPglaY5ZYPlu73i0XoZsmkJTSYhgHH2MTcPkicWUnZek36HiRSlotzSG1eQYhLScBGzaDHSdKCEhoO02UduswwJp2TMxX7eV+A08RdWFo6NgWONDaP0x6BByg18wfIpNkYjI+Mq5UxVz/xeIs4zvCgTkHXjJXXLRazf/ZmUtJBG95B39+9IUorP9A6Br2SaihpThKHUIJ4LUJZtRZXwY+8LtoUAdliwJTpZWWoYEfp10Rn46U/5ojWIyMHtof2ZQBtUrPgyAdeyhKSsv2N+CKhbuc/TKRcNP8JdaMA2loUKzNxfYI96HOYudQAMLdr0iZqKAhla607YDwQHVYAIxJbTPyIo2vGED0GdRjMcK8HdtsNHqqKBkEuVTfUJmbNlm8Oc5TRCUXBkeUE4qNLbdnBCaxyTy9NVmRcgz7k4EynhCgw/FCSW69r3jOghI1S//yAZLyHigF1JC5jILXsBVjnCWazz2U8M05l1UpRYWOMYUu6OCyTXdtwJKRd6OMTrQ+dN6elkBOQMEeLiIOKlAPr1KyW+nB08MI2v9c1cX+5qiBzLoDkzi4vAlKxUW8qu0wr3gS7fT6ptDv3JshP4UJMDMV0gesQsA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39850400004)(366004)(376002)(136003)(396003)(346002)(451199015)(36756003)(107886003)(86362001)(38100700002)(38350700002)(6666004)(83380400001)(66946007)(66476007)(316002)(110136005)(54906003)(44832011)(6486002)(5660300002)(2906002)(186003)(1076003)(2616005)(8936002)(6506007)(8676002)(4326008)(478600001)(66556008)(41300700001)(26005)(52116002)(6512007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?Gj+8hKTXsT9Lzy1BxcJ06tbijQMO0XBDWM1jxjlVlnT8SUhs6rFmTNe2n2y8?=
 =?us-ascii?Q?oft2e/mNPVV/Wb6HDD7OpSxdPp8AISLckKMNiT3CifPMgG7CycNvbKyXK2W+?=
 =?us-ascii?Q?Mt5S3ipoyNR6BgWV0SDJr/nrEkH0axBPWK7VAbXe3NvzdXgLSQCFkKLlEHXT?=
 =?us-ascii?Q?EfKcXfTAddidHW97nfPh3/knv8CCb/H5x2bfM0xgNQDPv5ladglVd0PGmbex?=
 =?us-ascii?Q?MlirnVbcq2TWRZVavNHHCH6uGoeCnq/f9F4GIZv7E9Lrekjvzf2ajD4nmmoL?=
 =?us-ascii?Q?+Nj8qZJv9T0lYc2CtonseffTH40PXAitrmJuJKlR1CpRJUfV6OFTRVfCZSUI?=
 =?us-ascii?Q?JrGwqVJ9n/e9yn9a5WFs56wJr+7ltmRYyXuuBBRXph0xUE7dKx5UcLlVPtRJ?=
 =?us-ascii?Q?z+aCyMutMaFEGH56uBZQK/Ud0SjLTnpg20LKLSkj4S7VwMCYEKme2JLWFy6s?=
 =?us-ascii?Q?KdflMz5kiVrhB51ANbwvsqSfzG3MjYZ92Ow/0r92nhsvww/OixNmgOq/gHBH?=
 =?us-ascii?Q?RMVbkZ8TVCssR5wIamiOGqKJkqCCV2pTnbRUnadnH+smJghd109GMZ8eqg6N?=
 =?us-ascii?Q?I6lfOvmIHvgs1Ipozy4GMxFAKZO31x9IYQFq/SyLyK2HXL7b1DUX+RwNGwul?=
 =?us-ascii?Q?rxRg3P2fyOl8K3giFaDDgQHNuB1lJjC6NuSkLhh5ij7oig6Tyh6o16zvnGvA?=
 =?us-ascii?Q?7xoMopViL95HlJWi7pKX8bZInl8ZaScM203NtnKD9C9X6NNF+n/IE7jXM871?=
 =?us-ascii?Q?nGUDQV48tShzgs8pDzyBt5CHtG7CDtb7wGGL+nUGt4tjLQj4pd6svT5KgOgg?=
 =?us-ascii?Q?hjBANqZlG682VYjv83vAl6cljAOS8JQfAt4mO+njAMOBVgqm7gxeQMB6E3Tu?=
 =?us-ascii?Q?7/bhTNJxzjHHZvbIXTStayIH83l4uS7x3DAC9i4Nk8ODn6Ncy+YQAG34Wfnq?=
 =?us-ascii?Q?+Sj+MsUaIy4K/n8lR+jHUKvVSBr5WssSMgW7NEQFtcQTsIU/wTC+y8yTR7bq?=
 =?us-ascii?Q?YPz52Wg+MW0FwGXICPdvnL6QwpjpLWU2lfgPs+MagLy0L3We8d105iKcfZw7?=
 =?us-ascii?Q?Xz4CGg4w4X9jFIuKcDqtGzUtPR3s+xWizYAdYomqKKWXcSHUzmTGQfUB8rZ1?=
 =?us-ascii?Q?D02aBFtzanFckewMi1vUjCvvXu0SLkHww9iru0xOMuuV+qtDLZAVcgU74Xpp?=
 =?us-ascii?Q?NGIP3NcEWpy4YFceLmKKWcVWmH3vQ3cI2BWdR0XUzfv67uDyQFNi8L0XIsOP?=
 =?us-ascii?Q?HfBh0B3K1pA4avBwdKtuY8+aQnv30g8+Qg6cszchmq7eLxcCIDFvqyJdKvHp?=
 =?us-ascii?Q?mSOWRGM3F49s+qkyeLnh/uPFNe2vF+NufPhSX3yc8iArlIdzOylgsX01Fksz?=
 =?us-ascii?Q?ehB9vXdaXbXrVMji85gsC4EI/moF7voSeUPOwD2wYLCwVqPffgDQbqYnf5xx?=
 =?us-ascii?Q?3GzYXzCcE19dozfDC/oFrngwWsFl4MDChT8T10U9JEvumFcYxsIiMVRXkvm2?=
 =?us-ascii?Q?Qh3pMcLVbEVTpLBbkrjtuSU4EeeeJvLzG/RqdUusDOK+FM6p5RzC9Eh/R/LL?=
 =?us-ascii?Q?ENE7Q5ithHJiQprPUucbT3SBCuPihtZAc5XrI33vHTAW40/j5iNSO8YSe8W6?=
 =?us-ascii?Q?sQ=3D=3D?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 589ce681-c96f-4669-32b1-08dab13272bd
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 17:59:05.8923
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tayzmKqCeZKq5G0QVc4GZDcBx6Nqz41DQN8kK4GmIjwtbQ0SaYJwJU8jL2/kaCqFa3u5RyRBYbogoDLHUi8llg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB6292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_105914_259330_FB1354FB 
X-CRM114-Status: GOOD (  14.23  )
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

Document the typical order of API calls to used by new drivers and
controllers. Many existing controllers follow this order, but some do
not. This is especially true for controllers designed to work with one
particular PHY driver, which may not need a call to (for example)
phy_init.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
---

 Documentation/driver-api/phy/phy.rst | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
index 8fc1ce0bb905..8e8b3e8f9523 100644
--- a/Documentation/driver-api/phy/phy.rst
+++ b/Documentation/driver-api/phy/phy.rst
@@ -94,7 +94,8 @@ Inorder to dereference the private data (in phy_ops), the phy provider driver
 can use phy_set_drvdata() after creating the PHY and use phy_get_drvdata() in
 phy_ops to get back the private data.
 
-4. Getting a reference to the PHY
+Getting a reference to the PHY
+==============================
 
 Before the controller can make use of the PHY, it has to get a reference to
 it. This framework provides the following APIs to get a reference to the PHY.
@@ -130,6 +131,28 @@ the phy_init() and phy_exit() calls, and phy_power_on() and
 phy_power_off() calls are all NOP when applied to a NULL phy. The NULL
 phy is useful in devices for handling optional phy devices.
 
+Order of API calls
+==================
+
+The general order of calls should be::
+
+    [devm_][of_]phy_get()
+    phy_init()
+    phy_power_on()
+    [phy_set_mode[_ext]()]
+    ...
+    phy_power_off()
+    phy_exit()
+    [[of_]phy_put()]
+
+Some PHY drivers may not implement :c:func:`phy_init` or :c:func:`phy_power_on`,
+but controllers should always call these functions to be compatible with other
+PHYs. Some PHYs may require :c:func:`phy_set_mode <phy_set_mode_ext>`, while
+others may use a default mode (typically configured via devicetree or other
+firmware). For compatibility, you should always call this function if you know
+what mode you will be using. Generally, this function should be called after
+:c:func:`phy_power_on`, although some PHY drivers may allow it at any time.
+
 Releasing a reference to the PHY
 ================================
 
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
