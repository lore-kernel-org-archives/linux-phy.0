Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D88D0CD6E45
	for <linux-phy@archiver.kernel.org>; Thu, 28 May 2026 17:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo0RNLBTdRa2ai3tsj0Rz0Zlk71l+4ttXhjTnYJIAyk=; b=iF3wHuHNpDSpWO
	lYrJ7OVlJUd1Ga6VZRGDMEJq2+z00qLSZtwRwe5BOGRH7Kt2kck/7VpuKDQBRgpRbnEgVzRZqCT/k
	bjdT4gyXxo/0N8AtUj6N4KJokuVjr5gK2RQ+EJqULZYW9P4k4KHbbvNC5mj/KXCwjA0dxuAwB9CiD
	VfzDhGRc2P10p4ctMIg8f2fVkUNriJHddIY6Gd2oSqorGb9GvOCZ8bFqd2Xnb6mlW7/vyuJgGrBbF
	XnfRmifVangvGaPPQKyayCd7XlQXnW/uSKD/tCTIh4WhIZ+3CNSB+ayujgiPDzKbMI/0dw4uFv1cD
	NlhGqguV/wulxLohRjLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeTC-000000065Vp-2h3m;
	Thu, 28 May 2026 17:24:34 +0000
Received: from mail-norwayeastazon11013030.outbound.protection.outlook.com ([40.107.159.30] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSeT8-000000065Mi-13Br
	for linux-phy@lists.infradead.org;
	Thu, 28 May 2026 17:24:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eFZI1WvO5Rl2NF4V0UwB9YmR5cZ2QZ6TjlG/bqhIWi1So4YutaWkjYvQ2n+5B/suCdXZX3ZT5zm0F5or05kfcBGl5k/CnfiZPsiA6M825ldXpfWfZLkSi9KBKKYxxY2irPsCdHleBfKqiD0b0Razxyu+vIZvooPafHUy5DR9URzKYmCkbLgYg8h++qRokxxJ7ureoCDLpp2BzfdKNBu+GbyakLsY4Z1ksuAlX7Rtgledlax9BmP3qSfGFifR1gt/3jvf6fcj2mM+lDpN6ZPM2VaKL+Hx+VCCssJZJzhzbskwEQUerkA4/+YUyAnJIxTyWUxyeEeVFBiKPbTpPUZe7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XTrCbldYbfT7dzNoBoQQvxknSetxgJ1mUF+qAvVXKyo=;
 b=g060we5seakUepcumOZwyJbaSdLs3AYqJXVc0AXVmeFg0ppaeaxgic1Ewpa0+1oT8rEJTWJtOjKXs5CgF1GQtuESLLyfIxPqn68V/19bQFcJ96Rrwv0xWrSKhud6cK97ukxFxfpuTrKr5xWo/pdqSYBrmeR7bGVZKRCYbszaRfaoGhBVKf2tN9jYfou6YD9bp/LD4n3uz1cfCEbiUjkioGvLFGkPrH8V+uRVJG70Uuk2HzlnhrT/AG6wRhErnMUDWbgCQ/QN9QaZYtQbtMVCDVQYyKaDRsA9oBDTc6idff510UPKvbvRubry4M3gEIftDmgOOV5L8r2obP0X0wnNsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XTrCbldYbfT7dzNoBoQQvxknSetxgJ1mUF+qAvVXKyo=;
 b=GXcjPLjvQMGaw/UXLao44aAzOTgWb2WZ/eNOF44PMbh4f7hzxV1mq7HYF/Dr+aEmAgadkPd5PBlB6wNi7t9JD2Wf77y9zL7ePCKEopSgBtgtwMEB1JLML2nVboDzSNZAMGUNpeHOQ1pbZ8X4bpOYglgnDEhaU4I7z4GgjcNAwD45IE6aKqkbgBuhRFPdKuzsssX+P8DhRBT7RROGSCPdapRmyuJetYD8gQPNbn8RlqNwXdTgXwzy0PV4A0ZWXhrOz7TH1xDHLX3s/DYRTe+q7MTk23Ur1ojeHQ55+D4xF4yDjbYNw7MkWvmeS+3VpGLf/YSZ4lVha5AqID4G+F14qA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM0PR04MB6993.eurprd04.prod.outlook.com (2603:10a6:208:17d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 17:24:20 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 17:24:20 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH phy-next 07/13] phy: lynx-28g: move struct lynx_info definitions downwards
Date: Thu, 28 May 2026 20:23:58 +0300
Message-Id: <20260528172404.733196-8-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260528172404.733196-1-vladimir.oltean@nxp.com>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AS4P195CA0032.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::6) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM0PR04MB6993:EE_
X-MS-Office365-Filtering-Correlation-Id: 414cc942-8ddb-4369-e99c-08debcddf3de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|19092799006|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: +okkNL5E4HQGpvfTTsBnGyIclwePXWCpz78S3ydIUjTCrYZywBKqZvN4pqPNVGqXxWFpfmlzXYqtaawxD5ZbgJ3mXZtT2UeN9/4d929GEVeKV8VBMbeq3j0a6zDVZ9X0pR7PkHvOhZY3OhL+qT3TFefjx8tYFRr4sd2/R7NVRGb9gXnfxXC4pr71COwHaO6keLv8+ck8dB2APysYxykajDfETWVy6VKYtxnRzd0yM0Hbe8NoHVzHsS2LZSuBNYCbawXDpwvx9p8HHspkDaOaZ2zVbv6cbs4V7ltITUEPknz+z+EWUJEqBZDMUttnruDHDUVYFvIxfDx7C0tX/BQ/a7KeiDMV8u+bq4HQAZDORwa6dSxTzQjOVvLKI5T4nowZxv7e/+VS9HRSWLmq7Xg2OcTx6iBjtBJbG4ToPdjsSX+NTLnJh62CPIuyBr+J9gyBeGdMscO1tp/gchWLNVgiLkMYeiRuJe2sYX4boEzCUdRsLx8beYoofDApMr12kskdQ1pouAxow8F6I78UuLTQm2jQnIRiI/IyUq0RFCthun0TV4NweI7oXwFmlAH1UywLNGxoD9cXvmHNMOIX+lpDbSw3RuzSxTdjejtPFM+f3KcIqKFP1sHrTGe5GHZmtdAe7VH3aPOOvGBKgX0qhmjdslB2xDS/7lL68LD9MHwiHw/bWegny59zOrnFTwEHls3h
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(19092799006)(22082099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p8HHNfz2msl6LLgrFDpm8CggEzxyxzxcURIebp+th63+akW6UZpZMJOp4Nbf?=
 =?us-ascii?Q?YMn+RcWEI5vO3gY2xT3hOeEGx8a3mJ9JCdUXNDZhzZQODFbgQPoguHUVxh77?=
 =?us-ascii?Q?WxCBhjHlD2T/egwmpR4/b/H39DmdrDl7teNY3646Ofw/owHlb+y2Rf0gqgat?=
 =?us-ascii?Q?puh2W8WPewi2dbni5JOGoQZjDZQgO4OA+/8I51X96hpuqXYJcQdrkTHp+i5Y?=
 =?us-ascii?Q?AUIxXZthcwWVNbTK500QELW4PUPi0jy+LMVFG+LyZjjsr8r4CPCREMuFZXd0?=
 =?us-ascii?Q?ExnATstqLjWzJMY+DA81NkYsWUq7goOApeaYmsm7qLskLqlUtV/zJFk01c5t?=
 =?us-ascii?Q?agW589PUH0H5XUrXogJGPtQDJQzmEgBRv6qP8Mhjl9ZOjICH6uJUc0NooexN?=
 =?us-ascii?Q?dSsSZIfRt2LluPblRjxq4NXxaWsBjwKbzWlIcxo1K1EHspK6gpuXKErK6JBd?=
 =?us-ascii?Q?qJVj13A2cBGenbVKhP2W4chaDiVu9DtsqlWMuCaVSVaXLTr4YNYhBXLZOZLx?=
 =?us-ascii?Q?KYxSy67jzhF25PdWi2+vM+OSDngmwlB/DdroJLXQ5iDRc2J7TJtyD7HzWxKk?=
 =?us-ascii?Q?ZR6Wg2JvVCEF/EnVfTbEdQH/kaat8JJtTlbfG8AhKAtnZTNk5puGe34x9QZg?=
 =?us-ascii?Q?ZVn3jj1NX+t5SAO2kluS5LtK1J4r23bEbSpyGHo5t9XnauABHTqK3qROLUbf?=
 =?us-ascii?Q?kZcgReuYQXO/fWwla2MI2eQMw1CwtD2v8MZXoANqbdyTo3qNvw9QGVxJulbI?=
 =?us-ascii?Q?Xh0VNeVUeLB6WE9FOJT/LqO2/F50iymtYrBv1+kWSGVhKoydkRnLmno8gm92?=
 =?us-ascii?Q?6e7K9iQ3Jzc3AtdxE0Zb+9ADiShPpJPlEaeaGbb3xqbBggEzDVY6QC4vu01v?=
 =?us-ascii?Q?g33IALTExzKiUfxW9JX7nDilPXQ9FvuqFX2/qAfwAQ7FglQvkrpZsS+qJLR0?=
 =?us-ascii?Q?t5CgtMixvDOia1Gq7IaI343kyDKEykctoi5H+DrEAYIaQM1XlaSrXAcnQdIu?=
 =?us-ascii?Q?5SD8Zb+97cIJiOlos+Ctbuo2xBQdHe5yLTf2R1mzL7Q00ocbJBQpYOTEDwVN?=
 =?us-ascii?Q?adMbpapVMN1VDo6USE9DTFN9uPdn2UVBdhFYtSqqs4Zk93IedrgPQBFEhArz?=
 =?us-ascii?Q?bcddlc2WM6M5r4AEqceK8m7yITOolvp5qJgqutXXHWh+2WOtk6D8fB5Nu4ME?=
 =?us-ascii?Q?ufDUmYd9AffqmGUmU3PHbpS3JYZT2en+DCIQPlkmPfTWboTBixppcxo/KVZA?=
 =?us-ascii?Q?BNdt/OC+EqOsqarRXXerJcxGi8LQfd5KF0gW8BHRYUbvK5Y+COR/AECqYcn4?=
 =?us-ascii?Q?KqrNXmx5Ewa8tXdled5hjJVUeStbfPtn+rRBGisNrcJDR5zjhjyyGqTmM1dE?=
 =?us-ascii?Q?Z2p30SyRZKHD1OFg685JWZVrRMdsH14FdFyDHVfrjW77bdLDFbgCfGZG8lOT?=
 =?us-ascii?Q?rpOGqC3pVQPR1WP/xm50qBGV6oT5KwfCySC+U7RPetIp7frHvfIbmsT++OEs?=
 =?us-ascii?Q?L0rGxj59BwVbkKXbNtKElvwqqFb84wurOmcssK8ArknO6lN8eNm6Tv1dWIV4?=
 =?us-ascii?Q?QruWDYmd+WGXqdP/dQlA/gKhSqVzrIopH/Lnb/G54KMvjS16QWo5L4ZuuI+M?=
 =?us-ascii?Q?TjOxgUmr4BfahzKSpInvKGw1qdHMgCbA9ClDr0O7TakJKbYTXsikfq9QALHJ?=
 =?us-ascii?Q?RtN9jLhe1V/L3cSFLtwJOhIk6FHUtcXyqDABDkPs3H2j8rE2E1eZQoEpWmP6?=
 =?us-ascii?Q?3UaJYHNqnKgBBLw2N38OHKyui+rxpJ+wttIDRqjD0FYw2wt7Wcb0?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 414cc942-8ddb-4369-e99c-08debcddf3de
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 17:24:19.9893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FX1myprwd95d7X0xiswlW0IkvYDeDyYPM/rwJut32om0lZEO+3FCg7NJdoUN6sJef60zgcogEHW/7yMaDyS/WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_102430_296834_18C3BBA5 
X-CRM114-Status: GOOD (  11.91  )
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

We need to be able to reference more function pointers in upcoming
patches. The struct lynx_info definitions are currently placed a bit up
in lynx-28g.c in order to be able to do that without function prototype
forward declarations, so move them downward to avoid that situation.

No functional change intended.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 86 ++++++++++++------------
 1 file changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 84dce3026efc..e4c227e9ebdc 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -782,49 +782,6 @@ static bool lynx_28g_compat_lane_supports_mode(int lane,
 	}
 }
 
-static const struct lynx_info lynx_info_compat = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes1 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes2 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2160a_serdes3 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2162a_serdes1 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
-	.first_lane = 4,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
-static const struct lynx_info lynx_info_lx2162a_serdes2 = {
-	.get_pccr = lynx_28g_get_pccr,
-	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
-	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
-	.num_lanes = LYNX_28G_NUM_LANE,
-};
-
 static void lynx_28g_lane_remap_pll(struct lynx_28g_lane *lane,
 				    enum lynx_lane_mode lane_mode)
 {
@@ -1248,6 +1205,49 @@ static int lynx_28g_probe_lane(struct lynx_28g_priv *priv, int id,
 	return 0;
 }
 
+static const struct lynx_info lynx_info_compat = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lynx_28g_compat_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes1_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2160a_serdes3 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2160a_serdes3_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2162a_serdes1 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2162a_serdes1_lane_supports_mode,
+	.first_lane = 4,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
+static const struct lynx_info lynx_info_lx2162a_serdes2 = {
+	.get_pccr = lynx_28g_get_pccr,
+	.get_pcvt_offset = lynx_28g_get_pcvt_offset,
+	.lane_supports_mode = lx2162a_serdes2_lane_supports_mode,
+	.num_lanes = LYNX_28G_NUM_LANE,
+};
+
 static int lynx_28g_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
