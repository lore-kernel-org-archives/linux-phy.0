Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A63CAC5B8
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 18:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3DycbeE8/o3L/4PjhhIXAJBgdf5kBtVzuRfI2EupU4=; b=geUVm5S8wNg2Wd
	y3cQhwiwtjsbyQju+YRF7Dr7YFU3aQvOF08ugSFIOOQw8EZN57OlmRTTvjJ/JcqccCo7AteH2VqbZ
	+7nj9kLvJ22j1+HL1RmGrLe43MFrkJ/RV93XuYFkhmIvOioUSaVX8zoSw9pFd5xGdxP7btDLM6TJE
	TH+endKKEQVp7NKo3yE2c3/zXdqpu60ZCrpjmKHdsto7hHN2dk0DOMz28oFtS8ef5KPSTRsPL9G64
	YfzgjtNo5ickPYu63wYmGbMsGi9rwqYHgHkDvW4rB+mbnNBcEyh06LGHHwz+R1U9zbKN6NKfOCzqt
	sr/x7SUGqrkdO88FmZbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2CpD-00000003RxD-3zeS;
	Fri, 26 Sep 2025 18:05:43 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Cp9-00000003Rl4-0dbJ
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 18:05:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I7swGBjBQxwygUJbjlgvUf2lyjN0hjtjT6xcrxLatW6uLDKwQopIDtphI6hQHF8hVNNXaHde7Tzxv9buqmAvcDklG37pMXrJWSpUZZ/Jq+n7AlDwcxlNixvF77LepasdjGit900QPScDkC3pTyfYYMVI+tbLB9OvgWMRCW65m3ObGYiH0n3yNfuDY9xbrd7NmRm9l2uIaa7+xmsPTGcm5x6G7t/vLU+iTf4mgXS543ffJdfuNsFydcMmJ3+VxAwgPJpatv8D+96GK77gSDhUp5DqzRrPumTX+6E863gkkdn1sQNAyhnmcedO/3zakqb2430hVmh8xg9dr1d/FUAePA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N8u5sTcCRayQtdkH5ZdJKRlwZKw/sHrXnK/8gISZGBs=;
 b=Y/YJBW8DRyPrgJufYJctrglxMVGVCiWeaBbanaRzfgo8j+ozMyghu34MWT6SG0hi7pKcB8OzWFBeTk/kph0RHAuhKfmufazmtkpcdgNz8K/qiNrbXDk2J94IFxAaW4RgiUp1Nnr3K8VzUbkJ9blYVmTk31yhbJsWJR39PgzxfgVcn4X3Fr+3VT2VY7CjoLMOhhweRBOhzms2LT1f2PvUHBa6to70FGwvqiyQQf7LYdu4Y3RTGD7+zYhLdUqgHeBw4Ose5tdrrKap1OpIJUHbjmowN+Zmo9EA6b+s1W/Ff04ax8I4dTSIEekH4QCvHKJAHHt6Sf93PYgsZh+lj4CGyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N8u5sTcCRayQtdkH5ZdJKRlwZKw/sHrXnK/8gISZGBs=;
 b=K50/bWMpa0tqA5u1N5fgIUfx1LyFLI39d8FNpjfpcljTUvW/kanqZHXT8LQ3FaXvRaiKpCkZCH2Aa6Azp39eRxfUqeijZtIActqbrJmwlSx5k630Eun9IYPUmuYWHwaUZ92yMElDlqbRI6Lkvw5xikIZ6ZzjJ6CadgQa7LuVJ7yTBHcLceLNRonzJ/7SkymXjAvG+U4vvnJDg5jG7teEgn0Q5YJKu02fQ4ZRBB1IPijVri98GEzlOjuL6WXPojsypvJteNSViB3+T8DOQp2j+Q6vTqj87m9poR1TEM57lWpQ2XE3F8580AXfl7zVcSQYG12zKNOAMJ+uIqhgmd56nA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA4PR04MB7823.eurprd04.prod.outlook.com (2603:10a6:102:c1::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.14; Fri, 26 Sep
 2025 18:05:33 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 18:05:33 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 phy 14/17] phy: lynx-28g: add support for 25GBASER
Date: Fri, 26 Sep 2025 21:05:02 +0300
Message-Id: <20250926180505.760089-15-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250926180505.760089-1-vladimir.oltean@nxp.com>
References: <20250926180505.760089-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P250CA0008.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:5df::9) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA4PR04MB7823:EE_
X-MS-Office365-Filtering-Correlation-Id: 270599ff-6db2-419a-f0fa-08ddfd27497f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|52116014|366016|19092799006|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?irRn33H5muVk0OiMZCARYXW3QP9hRhjlPotxR+izrZDh2Ughk7Vv3OjLTpAw?=
 =?us-ascii?Q?LB97C8mUBcuCwFe2iLdYjhLLQOXjn7cVOaXvcQRk2dc9OvgOJ2P/q5tkWWbC?=
 =?us-ascii?Q?XUuPrRfgdXaNs/a0RuWmh5XPXub1T6+N4iVY2SSMyzqYTYvDxutSUmmGGnDK?=
 =?us-ascii?Q?8oxnoT0LC4oLXK1rQypjoC4LTjbps/qk51PlmxHY/5Jw8CLqIcLVR7IVth7u?=
 =?us-ascii?Q?7xO2gVHh5x1BwDgCgaGfYu7QYnwe0ogTv7m4JtkYbp9RpUpR1PTL/Eov6EN6?=
 =?us-ascii?Q?rSzKycznCQAauLU85pEtRtSu1fcU1lNULevr/sIuPElFgtBWDPzkGCGLLzWM?=
 =?us-ascii?Q?lslbvO7Mwl41woELkFCldRdPRTtDNWt+2I4YIRL4BaNs4yTTQhabaXAzpyJo?=
 =?us-ascii?Q?gHYPOuAASjQphCOyNHLW8KVO68VWjmUPUwfuLyjOnDy8QaU/Ek3N3X7gGiwn?=
 =?us-ascii?Q?1n2FkSNKIg51W1Py+WX3ZJBUi0r4ScwTA5rlLoknxw2lAV9UNCTSKc9/WGMn?=
 =?us-ascii?Q?+a4DYqIkE3qX+QLQ310apmRoM+fYOYRAZ9qJKl8ST7JSLJ71SikhmXE9LbvD?=
 =?us-ascii?Q?PtYE5XV7Q1crc8K3UXqFLRKsWl7ow/DHiPGMjRQ0LDC3mfOg0wWUAQgEM8p4?=
 =?us-ascii?Q?E1E47WHU8fgBjxeZQasmXMohXt+rMHevWYv8Z4k4ADH/qjpO5JoQp5RmjHf/?=
 =?us-ascii?Q?MLNs+y1okaPh/eoiP9lb+H0LuiAXLmx4/ZfiPg63IfQQ/i7lFRZQy/5kpN/R?=
 =?us-ascii?Q?Ct4y8cYRdjWutvtUIVoBrOiagypEizOrTh5ghItOJbO0QeNJsSDtGtdrZp6x?=
 =?us-ascii?Q?Nq8LIFuA9Prv9UL5Xxgab1I3wFrimPMaPet+X798xyWxW97yvAIyysIAaf9l?=
 =?us-ascii?Q?J0nA2f976oAEYZ+5RVtKpz8zgWAWtQwBQxyyQJxo1msnfRL+E0G2v0c691Rh?=
 =?us-ascii?Q?iC+JVBrTV7+lxGSn162LZpf9VOUl3+O+ixMKx9kvhj9rrEQnv5h+xTdLgxbN?=
 =?us-ascii?Q?7iTJ9DPoo/F6UkO/XIBgVF+FhTHQIwA1hu0pkw7GywQuQBFFn76hx3MtEVOz?=
 =?us-ascii?Q?55DjQLr/igjXuhF4DtG6MjAb6mptklF6qHvqCH01P+BAxBRkkzqB8GHpurhp?=
 =?us-ascii?Q?YuuR2tY1NL82+7w2AxYw8pKG/dQIFaIJ9UgOIBEqjuto17ojsKwLcuqhDddm?=
 =?us-ascii?Q?/Pf6Aa44GL66SGBY7Wt+BgCoFD9J5K1uPN9ZUmcoKg67/RYqrOTvjD1R37RY?=
 =?us-ascii?Q?AGa1BgXEs03BeleoRb3Rp5yazYDKZdieWUkhzH9NnAkuVwCTSmS+mv0xiDnk?=
 =?us-ascii?Q?79P0Z+4qilNr/f0XEQfbxsCO94v3pa9UvFjfbYS3cTWvgP+NSjq4rEDZBBgx?=
 =?us-ascii?Q?BgznlylfcUk+ZUNllNp65QifSyaYSfDOdcBFfxC5q2jgb3WfV6AVHhVhpE+h?=
 =?us-ascii?Q?7krQfmQLE9FBB+0A92LVRWxPjYQ4UVr7TvoTpnwJAicQUZaczIkiJS4ZZLH/?=
 =?us-ascii?Q?/pI+pAzzU9kmDh0GyqDxloIgsLK3eUgFuigT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(52116014)(366016)(19092799006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YI8RkoLlwgGnMArRQtTIu1BCgDK181C0ML+8uqEe7LvP7BGpt7qr5OTy7XgP?=
 =?us-ascii?Q?p+QVAIotuApSIRlJAtg0zyLSiYNysJAf3hgE/+zz51f0JdiN2DqLx0+MRdl3?=
 =?us-ascii?Q?7Rb7JwR09pUnwjxB9FoThhW2huC1944uybJAXC7Te6akjdq/Rd7WgehGdmH6?=
 =?us-ascii?Q?4GYP1XWuBhpe8JuRF+pOOX2sMnarZ5XGRSNPox5TS2S4YbruY6zeA55owOXW?=
 =?us-ascii?Q?kYoZrV9MEHBVsoPO1LRoRm5lWpqcWLSC7z2PsBYeEuRc88mRRM2dNmariWrC?=
 =?us-ascii?Q?rdypRInQ6imn6vmQODhohq0Ae/kp+VUiLz9xNn4Qq0rkB8TQFSiGKPKhkV97?=
 =?us-ascii?Q?+6FjLQa0lOqQGujqHWqDJcqe0tkNBA1msxrp2XPm5VXE2BSLMaskvTTNbiP5?=
 =?us-ascii?Q?u35Hj8d+lsiBhjkCL6nDbSTWCIYx+CFQvAjSwkvDzphRnuavEMeXc0IBUpjR?=
 =?us-ascii?Q?a2TKK/m6pwGdTD9wdKELSo/B2E+pu0POsinyDJ8bD4N6871DwUiycowJS7iV?=
 =?us-ascii?Q?2aVOzckJ/MKlGmjNYuwTZeYYUu1E9PCYvvg00WUvgahXOX1EYK2v7K0RojJ5?=
 =?us-ascii?Q?3NaIAkWGuinnk8jHBildZGUeXakmTJqvLqgaSGZYzEMWJUJAoSm+U5uiqkO2?=
 =?us-ascii?Q?zsR+czlDiMoPtVF2EOMDFSm4gbarty+GK0ojmJFlizsTGT32tDhVnMhz7Dj2?=
 =?us-ascii?Q?o3xrjWLMgJ+LdbbGQ9XRzl6KOUwln35s0+yeyEeWzJzP/RY5cD84WKFdWGMC?=
 =?us-ascii?Q?hF0WeDDEMfU2WxYEho0cQJ3YocleQ0OqyzWeAv0bkDLOSEJ4+sXlnJUqrjdJ?=
 =?us-ascii?Q?4Um+YL2qPowYWFkg86phk4HXOg14Std3wzWQoKElCsbNe2wAYVK8fTYEVnI4?=
 =?us-ascii?Q?uUuK+gaX1lZAaU8liOrBOAvDyLmDrk+NUwsxNAziabnh0xwWckJzVHCcl9sD?=
 =?us-ascii?Q?/7DqceG8DeagU6sthGyG8xeXZ4ClXptWAxSNMNSfyZXu3bleB9baTvGRciUu?=
 =?us-ascii?Q?lTS/m+HIxLVhvInOqUQx3oTl9cIJiu+TwUVY9DfeyaVTrTesXCYZM+pY74us?=
 =?us-ascii?Q?sisrrU456i49z8b9uUBQsvugEHoxAxK0YKHOmZOCSw8A3mTvSgXzh4JkQ+Jd?=
 =?us-ascii?Q?YNoAhi+kJDZnli1xu4raE+ZAh7GLSu9R2phNLsxxCTnnP+SHww6YrHs0cdP+?=
 =?us-ascii?Q?Ub++hD5oMjqnyrwjLv65Xim6/eCydmWcDsALCF5cQFePeUC5ds5HnAdfNPBk?=
 =?us-ascii?Q?B755/Da8S2nBaqnzccBtfvL5WM/tLLUeEEsZCaYXITuqC9tJLppiS4eAQWT3?=
 =?us-ascii?Q?ErHuG1CevDNljWkn3saRu6p/qzuwKJ2JWNcgBZ6kowpdo8eZqPOg/Ryd4FsJ?=
 =?us-ascii?Q?zlb7mI9ePWcGmqGKh4hBg7FfS8teKaSQE+xrnSKQKxkCCkcejgBkTn3k8fU5?=
 =?us-ascii?Q?58xmJ5N69VsbNv8qGcWClKwpCBZTPlMnaF+HwlrGt14PFwh4IXKkppMVyYdy?=
 =?us-ascii?Q?FmDwGVIESZGIr/6PRL8Kx/s7aYH2fFwOIc0v8nASizhcyepBbqBdgDBOWUJg?=
 =?us-ascii?Q?dXu/N3N3c406wV8ZbStCnkhZPny9JplaqpKxnhaetwuyq6fXlKpYOL+be70b?=
 =?us-ascii?Q?rQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 270599ff-6db2-419a-f0fa-08ddfd27497f
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 18:05:33.6907
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wcrdc3W8GSS88//eCe8TnUxljzmOzlj7dRYWEYbqnxYnddxs4Xmo666tYwK9INjFJGVxAkyaipCMs65IyY1IAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_110539_204054_B0B2ADFB 
X-CRM114-Status: GOOD (  16.95  )
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

From: Ioana Ciornei <ioana.ciornei@nxp.com>

Add support for 25GBASE-R in the Lynx 28G SerDes PHY driver.
This mainly means being able to determine if a PLL is able to support
the new interface type, to determine at probe time if a lane is
configured from the Reset Configuration Word (RCW) with this interface
type and to be able to reconfigure a lane.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: none
v1->v2: implement missing lane_supports_mode() restrictions for 25GbE

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 90 +++++++++++++++++++++++-
 1 file changed, 88 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 1ddca8b4de17..aaec680e813f 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -57,6 +57,7 @@
 #define PLLnCR1_FRATE_5G_10GVCO			0x0
 #define PLLnCR1_FRATE_5G_25GVCO			0x10
 #define PLLnCR1_FRATE_10G_20GVCO		0x6
+#define PLLnCR1_FRATE_12G_25GVCO		0x16
 
 /* Per SerDes lane registers */
 /* Lane a General Control Register */
@@ -64,9 +65,11 @@
 #define LNaGCR0_PROTO_SEL			GENMASK(7, 3)
 #define LNaGCR0_PROTO_SEL_SGMII			0x1
 #define LNaGCR0_PROTO_SEL_XFI			0xa
+#define LNaGCR0_PROTO_SEL_25G			0x1a
 #define LNaGCR0_IF_WIDTH			GENMASK(2, 0)
 #define LNaGCR0_IF_WIDTH_10_BIT			0x0
 #define LNaGCR0_IF_WIDTH_20_BIT			0x2
+#define LNaGCR0_IF_WIDTH_40_BIT			0x4
 
 /* Lane a Tx Reset Control Register */
 #define LNaTRSTCTL(lane)			(0x800 + (lane) * 0x100 + 0x20)
@@ -83,6 +86,7 @@
 #define LNaTGCR0_N_RATE_FULL			0x0
 #define LNaTGCR0_N_RATE_HALF			0x1
 #define LNaTGCR0_N_RATE_QUARTER			0x2
+#define LNaTGCR0_N_RATE_DOUBLE			0x3
 
 #define LNaTECR0(lane)				(0x800 + (lane) * 0x100 + 0x30)
 #define LNaTECR0_EQ_TYPE			GENMASK(30, 28)
@@ -112,6 +116,7 @@
 #define LNaRGCR0_N_RATE_FULL			0x0
 #define LNaRGCR0_N_RATE_HALF			0x1
 #define LNaRGCR0_N_RATE_QUARTER			0x2
+#define LNaRGCR0_N_RATE_DOUBLE			0x3
 
 #define LNaRGCR1(lane)				(0x800 + (lane) * 0x100 + 0x48)
 #define LNaRGCR1_RX_ORD_ELECIDLE		BIT(31)
@@ -269,6 +274,7 @@ enum lynx_lane_mode {
 	LANE_MODE_1000BASEX_SGMII,
 	LANE_MODE_10GBASER,
 	LANE_MODE_USXGMII,
+	LANE_MODE_25GBASER,
 	LANE_MODE_MAX,
 };
 
@@ -407,6 +413,41 @@ static const struct lynx_28g_proto_conf lynx_28g_proto_conf[LANE_MODE_MAX] = {
 		.ttlcr0 = LNaTTLCR0_TTL_SLO_PM_BYP |
 			  LNaTTLCR0_DATA_IN_SSC,
 	},
+	[LANE_MODE_25GBASER] = {
+		.proto_sel = LNaGCR0_PROTO_SEL_25G,
+		.if_width = LNaGCR0_IF_WIDTH_40_BIT,
+		.teq_type = EQ_TYPE_3TAP,
+		.sgn_preq = 1,
+		.ratio_preq = 2,
+		.sgn_post1q = 1,
+		.ratio_post1q = 7,
+		.amp_red = 0,
+		.adpt_eq = 48,
+		.enter_idle_flt_sel = 0,
+		.exit_idle_flt_sel = 0,
+		.data_lost_th_sel = 0,
+		.gk2ovd = 0,
+		.gk3ovd = 0,
+		.gk4ovd = 5,
+		.gk2ovd_en = 0,
+		.gk3ovd_en = 0,
+		.gk4ovd_en = 1,
+		.eq_offset_ovd = 0x1f,
+		.eq_offset_ovd_en = 0,
+		.eq_offset_rng_dbl = 1,
+		.eq_blw_sel = 1,
+		.eq_boost = 2,
+		.spare_in = 3,
+		.smp_autoz_d1r = 2,
+		.smp_autoz_eg1r = 2,
+		.rccr0 = LNaRCCR0_CAL_EN |
+			 LNaRCCR0_CAL_DC3_DIS |
+			 LNaRCCR0_CAL_DC2_DIS |
+			 LNaRCCR0_CAL_DC1_DIS |
+			 LNaRCCR0_CAL_DC0_DIS,
+		.ttlcr0 = LNaTTLCR0_DATA_IN_SSC |
+			  FIELD_PREP_CONST(LNaTTLCR0_CDR_MIN_SMP_ON, 1),
+	},
 };
 
 struct lynx_pccr {
@@ -486,6 +527,8 @@ static const char *lynx_lane_mode_str(enum lynx_lane_mode lane_mode)
 		return "10GBase-R";
 	case LANE_MODE_USXGMII:
 		return "USXGMII";
+	case LANE_MODE_25GBASER:
+		return "25GBase-R";
 	default:
 		return "unknown";
 	}
@@ -501,6 +544,8 @@ static enum lynx_lane_mode phy_interface_to_lane_mode(phy_interface_t intf)
 		return LANE_MODE_10GBASER;
 	case PHY_INTERFACE_MODE_USXGMII:
 		return LANE_MODE_USXGMII;
+	case PHY_INTERFACE_MODE_25GBASER:
+		return LANE_MODE_25GBASER;
 	default:
 		return LANE_MODE_UNKNOWN;
 	}
@@ -588,6 +633,20 @@ static void lynx_28g_lane_set_nrate(struct lynx_28g_lane *lane,
 			break;
 		}
 		break;
+	case PLLnCR1_FRATE_12G_25GVCO:
+		switch (lane_mode) {
+		case LANE_MODE_25GBASER:
+			lynx_28g_lane_rmw(lane, LNaTGCR0,
+					  FIELD_PREP(LNaTGCR0_N_RATE, LNaTGCR0_N_RATE_DOUBLE),
+					  LNaTGCR0_N_RATE);
+			lynx_28g_lane_rmw(lane, LNaRGCR0,
+					  FIELD_PREP(LNaRGCR0_N_RATE, LNaRGCR0_N_RATE_DOUBLE),
+					  LNaRGCR0_N_RATE);
+			break;
+		default:
+			break;
+		}
+		break;
 	default:
 		break;
 	}
@@ -665,6 +724,11 @@ static int lynx_28g_power_on(struct phy *phy)
 	return 0;
 }
 
+static int lynx_28g_e25g_pcvt(int lane)
+{
+	return 7 - lane;
+}
+
 static int lynx_28g_get_pccr(enum lynx_lane_mode lane_mode, int lane,
 			     struct lynx_pccr *pccr)
 {
@@ -680,6 +744,11 @@ static int lynx_28g_get_pccr(enum lynx_lane_mode lane_mode, int lane,
 		pccr->width = 4;
 		pccr->shift = SXGMII_CFG(lane);
 		break;
+	case LANE_MODE_25GBASER:
+		pccr->offset = PCCD;
+		pccr->width = 4;
+		pccr->shift = E25G_CFG(lynx_28g_e25g_pcvt(lane));
+		break;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -695,6 +764,8 @@ static int lynx_28g_get_pcvt_offset(int lane, enum lynx_lane_mode lane_mode)
 	case LANE_MODE_USXGMII:
 	case LANE_MODE_10GBASER:
 		return SXGMIIaCR0(lane);
+	case LANE_MODE_25GBASER:
+		return E25GaCR0(lynx_28g_e25g_pcvt(lane));
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -703,7 +774,12 @@ static int lynx_28g_get_pcvt_offset(int lane, enum lynx_lane_mode lane_mode)
 static bool lx2160a_serdes1_lane_supports_mode(int lane,
 					       enum lynx_lane_mode mode)
 {
-	return true;
+	switch (mode) {
+	case LANE_MODE_25GBASER:
+		return lane != 2 && lane != 3;
+	default:
+		return true;
+	}
 }
 
 static bool lx2160a_serdes2_lane_supports_mode(int lane,
@@ -1018,6 +1094,9 @@ static int lynx_28g_lane_enable_pcvt(struct lynx_28g_lane *lane,
 	case LANE_MODE_USXGMII:
 		val |= PCCC_SXGMIIn_CFG;
 		break;
+	case LANE_MODE_25GBASER:
+		val |= PCCD_E25Gn_CFG;
+		break;
 	default:
 		break;
 	}
@@ -1142,8 +1221,12 @@ static void lynx_28g_pll_read_configuration(struct lynx_28g_priv *priv)
 			__set_bit(LANE_MODE_10GBASER, pll->supported);
 			__set_bit(LANE_MODE_USXGMII, pll->supported);
 			break;
+		case PLLnCR1_FRATE_12G_25GVCO:
+			/* 12.890625GHz clock net */
+			__set_bit(LANE_MODE_25GBASER, pll->supported);
+			break;
 		default:
-			/* 6GHz, 12.890625GHz, 8GHz */
+			/* 6GHz, 8GHz */
 			break;
 		}
 	}
@@ -1202,6 +1285,9 @@ static void lynx_28g_lane_read_configuration(struct lynx_28g_lane *lane)
 		else
 			lane->mode = LANE_MODE_USXGMII;
 		break;
+	case LNaPSS_TYPE_25G:
+		lane->mode = LANE_MODE_25GBASER;
+		break;
 	default:
 		lane->mode = LANE_MODE_UNKNOWN;
 	}
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
