Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB22CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2SRg7KJ0bva9ZkXe1C0SO96ZOF7gpKgs98XkbNtddE=; b=xXUNt5RspFBKbz
	0KjLj3lbXDSHQBiyPtmCdLAEv5iyhScimk27lzBYY6cgrG3eeC4xNQ1e/oxXjUgPlahzZLvNenCBW
	CZ/mETVxkIbx5TvambwTm6ULPmvlRhfQvWoofECDy6XsS6RIGAfPwX7p6LYlE3j2cEn6kxjf+cm+j
	aek92ZFCOQga6Cl8KjrvGQzSs6AtTtEhJLKtU4tPHT1ekqT7Frivrkr3k3yWiVmwbuxj5CCtJdgOX
	/yCH3IFLPIOTcZSaXH/mUwzz6DJacaxd6TgXd9++/PZd0fulVZjKyZ3tdtw4W+olFhuXmqCbnPxX+
	Tg0MPvAiZmGDIVrXF+Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiIS-00000004UJt-2jOZ;
	Mon, 08 Jun 2026 22:18:16 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiIQ-00000004U2a-3aCQ
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:18:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PuuU9+lB57Q6giCIrYTQ4lP7KIN6ijUEy+w6eAm6s9RY+945nyvYDXEzGzqbnSlR312yIqgIlhQW8zHS43Pd1yHR0ufrA9fpJE/Ku4hb8ZHoSqwtv0Ya3LQDIwmrx/5/V6VQAWPyhNQAig2R2YQap7wcFdKs6KTrcH3VQmIBZFCph2oI6HmczBzn5t7wwgaXAdXB4oplvXlq+623PFj3Fu0+cEUu29uzw69iyWnffjaiZbO6lrtsjVzU5DHQ2BageXMhRNQAhod5v6PgK7tzdlXNRPkQqcpRFMBHba6Ug804zBUotjjlErZhqHRgTzti5ZHPwKsLfNdFNXrhaqhGxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GZKTy8/+a90mZEYXo6H9UAJe5O089mFVnUYscwtvWoE=;
 b=fnLPZPDHmWF5qzcR1dDpWiGXfwWUmNtI79AQrsIqNa2JtYcpuEDAw4qYUGJn8rL2+kMm3nUxQfVmg9v7KTg67+hKY8qcaRhnUfrqIkzbKZq3EJtEoc7vE9mFIfVuIlCF4Y2KZR/ttWwQQ9AiWsZzqDb0/AwQtRxNQMbR9mT8Mqj2CKkHUTbkC3H7Dq6jbBpzDww7tTRhqsJX9NatQaaXcenBVwvnZQQR2JhHJxoaiDbEe2tKkvPDfDL3V4fCQbqPSbgS16KfrCE6nzkJRumuFyc2a28ZJEToRSed/ygqig9Ujxg7qWk6sorsFwZ0cJEUmbCKyUggesecr6ft64KTrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GZKTy8/+a90mZEYXo6H9UAJe5O089mFVnUYscwtvWoE=;
 b=glnfPvrP3Tv37rqCXPe0kHgYAg1yamb+EynYHKrgwWj2n4OrsDfM9dVzwmDpg6y3rQSVmNofGMUgBdO49tSsthDjLU6B/RXNRQPGHxuozQCKIETlbubwHnbhp80vDPJikyPt17TbrTIf4TzxteubrNiZJkR/BocjIRH5f+bltY9rjXfPLT9ivekMIA2f4WuDHy6yiB05DVyKaxOcJ1j806HkKNUMc7wnfhEuQx3AodyadVlI2FK8XlDi4eOg0Z36gnZcFZwuTxcOqVyDho3bD1s7Fj6e6m9UJ9Cm7xiQTjf6dj/585YM8mQOx5nxmbZ4Lkh3ZisbIG38rCzv94ddVQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by AM9PR04MB8338.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Mon, 8 Jun 2026
 22:17:44 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 22:17:44 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 phy-next 08/16] phy: lynx-28g: move struct lynx_info definitions downwards
Date: Tue,  9 Jun 2026 01:17:02 +0300
Message-Id: <20260608221710.1572971-9-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: VI1PR09CA0139.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::23) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|AM9PR04MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f2b43da-8c2b-4b16-3697-08dec5abc353
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|19092799006|10070799003|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: sfQdQrUrl5do4mmeuLWd1SINI7qYYSmiX8WJ9jlAq/NSao4aegJZFY505JsWVfOkiRldFlZaAH+pRiFhsL/oF7rgtsJAdqVwOmR/Qw/W29BlZmeyM42tGfTelH1eUgvl+8oFrOLhwzazPC/27FpHp6DWKiFLe8M4AeDdw+01Td8/P1LxZYVnjnBPLakr2PyDidvGpMw5+dUMhfkpy6HZUWii1xaKrbOWhP7bskZF2WOPCUaseOubdCGX/CcGE817klw3TgO/s/PWHy0itK93a5xfJmYg0sly2LJzFuY/l0NtkrsO26dfK1EZ6axhFGbHK6WM/zHuIL1QEPjeUgJDyX13sugvFfOHR8Q6lMihbb6uaxMpteUI26KeeDu42siEf+4sgd/TB316AcbUQ7nXPBFQZR857TOiCxQo7WLSvu4o91maWITLcpNzoLqOZ6W861shogyNUNsggE76+3si3Pzwds0wH76wXIYhCbGBbbQfJr7m90f3QeiO/CWG6hERGp/g6WqchWxcpJzNDDRnMzkbdnnez+32023ej0iTXqO2BWGbxYyNBeg+Kg1+t+2UDNkdifs/xBbIE+KAmnJCMwiLnc/Rm48wn9uaxy/lHHoycOQ7SsH2mERxTFaS8/OJ3ndTL3op+9l9l+jlI0O0Th8LNkHn56TUTucuxGa57gXvK4ywbz92JJmZGYtaQZYy
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(19092799006)(10070799003)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+71GJIxkBu3DJV6P58yJxt9DxhbEo7CyA79caWsUOPt3Dtgo/nn0i7cg01NZ?=
 =?us-ascii?Q?5O9hyNbRlRAExj6nY4o1OuS954VtX9Y8GyLU+r3H39yoE+Ge+u9BJK/ExM9Q?=
 =?us-ascii?Q?c/tlT9uxk1yPtiHK3/oBDFg0gi+UOjaU7zi4Ac5UNXel+8JnoTus2t6DxfuI?=
 =?us-ascii?Q?0V1nv8jemOAVdnGlFLlLmzaFmcpA+SM5uF+rc9GvZj2YtMHYqn7jVT1792Qy?=
 =?us-ascii?Q?+TeIWiwYSIcUlP7bt8RqCHkD2esqIoUQ43j/oSM4hnblCPw3HgvCuUH0Kqif?=
 =?us-ascii?Q?uVdqP+wSI3adjU7Pkl6ZOW+Yy5quL8/HAQAJxHSQcDKxJoR1xdgp5cqKR+gk?=
 =?us-ascii?Q?zJkRTog5tjTSJvhCw6J5Qb5S//L0OZYumSV7fG7AoZ2s4JulMZU/1iXRUwF4?=
 =?us-ascii?Q?5jbDo7iBAhjRfA9d7rNIx0eoN46PSKuxHaPrPOzK/07M03WObhFgajgw/QJP?=
 =?us-ascii?Q?IgArL2RMr3ETEXY/1ZP0QkVv7K7aEhuNdU/3fdC4/N7NxRThAoWKhNIoQuAT?=
 =?us-ascii?Q?hQXMg4br5zpu113+qTG0FPG1lbVwuimbr72wyrBNo3M7VxfIHxOkA8PNtvVb?=
 =?us-ascii?Q?P+K4T2BCA6bsYrm0eLQdwu0Kdu84dJCdl7t/kxfuIG/7c2itC+sqeRP4E0fj?=
 =?us-ascii?Q?/hJKjvQRQnoWDEhdGE2SqdETHm85/76ggnMsHHWbomP4opsmSW0OJuW1E7HI?=
 =?us-ascii?Q?2cu+eQW3hAzsFxdjQuhMY1l3WoHubwBZNYZhtbON3Ro9Xs7xYs3rLEIuhIf6?=
 =?us-ascii?Q?QjC25mlW4p/deREjC9Eg2+Wu10Iu49B7xG4ZCsQkpjjgLlBtUBOI4dUtv5of?=
 =?us-ascii?Q?Dn3OxMJToAbFGtZoGPao/LoPf1qP6bsu/1PBYlKe3KFm1BjjCgke0h+7m0sD?=
 =?us-ascii?Q?uKFNQmr+JTsKKCPctErZrHhTAk1yn1FYq9CDqAhtJGvsAVd5fFfqui1Bxw++?=
 =?us-ascii?Q?G1H4ngkbooQyRsGUw3AOT9FBB5vK5vUBi7b3+96LSF65HkEtkLaUOj/3nQrS?=
 =?us-ascii?Q?s9+/hpvkImNCfSOkGJ6iipzhZ7mqzHSwjNJhy0JwFchOzts7UveBPyH9aoOc?=
 =?us-ascii?Q?m79sCd6dLc5l4hVr86xZfXvsERf1rbyY/L4lQh7v5DbYlKOGqk3eVgXaVlKq?=
 =?us-ascii?Q?Pc4OD8bK0zudsI6b3W5xe5gipDkpUAPXYIvYE6Q+6IVvU2Y4klI0hgwsrS/5?=
 =?us-ascii?Q?fQCpnRJval5Cttl9y8wzjoZOhljrQn3uhifHVtd6Ic9i/8dksj5E2cUBBQTn?=
 =?us-ascii?Q?eT/XIIyUgnuOt/Jsd3loVzo3ScEQfs5cHE0JFiLhplsMEg2c+Qj+y9XDyE7x?=
 =?us-ascii?Q?OK4Wlkggj8NlSkofkYy4xxReLaLr9z6mldq5NjQZRpgBfaFmmChr3vDObkRh?=
 =?us-ascii?Q?6U33uINKQBAh6TUkurgezxsQzBxcszU/TkjF+zjSvcUe0RHxSvFMJukyACE7?=
 =?us-ascii?Q?pKQcWZwqiTBX8UmriinporRzzPk1tTmKlZJJj1CrIEnVM91L5neKy2pHpsNG?=
 =?us-ascii?Q?yW9Vws0YzwR2oBi0PrkG0X8C6nCE5zRcCWw84U0fBEFAKp+E83lMkHJ4SDne?=
 =?us-ascii?Q?nnzIKEzYPysisaC0ED28Wmk1WZX5OaVlGrcJ8TTB6UxQ4Xk5yn9sLzCc1v07?=
 =?us-ascii?Q?gKuBGEvJY7fatnUuGuYo5sHaiUZfkbcCQ4J1Pc+Cx6gGrJ50pC8NwXJqSoCt?=
 =?us-ascii?Q?mkNxlmRM+c2LraVttwCRTUnkIc8fdbIRiSGSfnCwDyDywfQTC3s24eFzFbfe?=
 =?us-ascii?Q?/TeyWDny1UEmT+CXhh7Xa/THNSPGxX8r0+VAxq1FInG/fnybrqMb?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2b43da-8c2b-4b16-3697-08dec5abc353
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 22:17:44.1520
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u6qL7f0g3bcEntjqKUrHGSPMFLY0vMYuWdCGQcEwI/7zK3IUJd0OsCEGaavHPZZzgnynLKWi/M+ZEChGHgarGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8338
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_151814_950862_22990ACE 
X-CRM114-Status: GOOD (  11.35  )
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
v2->v4: none
v1->v2: adapt to lynx_28g_lane_remap_pll() prototype change in context
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 86 ++++++++++++------------
 1 file changed, 43 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 1de663283faf..a3fbd31d4dbf 100644
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
 static void lynx_28g_lane_remap_pll(struct lynx_lane *lane,
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
