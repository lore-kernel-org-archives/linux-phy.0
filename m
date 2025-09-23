Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 351E4CAC5AC
	for <linux-phy@archiver.kernel.org>; Tue, 23 Sep 2025 19:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zd3ugv5EYMFvIEx3IAbRBH2g3L3OMFsqCK3FgeXRBkk=; b=Ssy60jZuGn2i4v
	AdDu0ddyoZAG+KCEht6K7xbALrcxvCNGj9vGChjyHczD7U5Iv9DFHn83NH0EvHAKRNsgRcAx7qT1L
	iImyaXuY6xTVGZsLaPqQAERHRSJbqrE2ra5NA/6Jd1vbz12Pe+2CWdFSSajYd0yYsE0GGlinOmWMk
	ErHC0hP52WIU6QC9ynEmV5mYyqfxbFX2sLO5U6AESkSuj3xd4Ae5/r3iJdlbsrnSP7jOch6MJadYE
	Nhp+XnRupchURueQKE9EJI9JCDIZIP9rrATXOMK61E9QPDiGzrCWRE+gzK5d2T8Nbau9o39IjALdR
	FSOv2Kv1GDoSleAsp+3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18x4-0000000Eh4Y-3uK3;
	Tue, 23 Sep 2025 19:45:26 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v18x1-0000000Eh0T-3aMa
	for linux-phy@lists.infradead.org;
	Tue, 23 Sep 2025 19:45:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EyMI/IfIyxklQfNQusYeSpaajp2AcSs2iwQFc8tIyH2SWmzWp5of+VUCEB/90Jx9zwhTTG+tynp8F5VG8czn1mYGVTWp0EqOc0Pi0JZIlb3n67jtSt3LCcLr/aImPy62NW0u/8eYoYV9V2aIV+u76Xpt9X3WufGf6CzpUY2PwOyVbYuBHE7gnU71Pj5SG7qW0OXu77P2Zg9QgnAE+0Fwo2e022HAUhwX/SUPxUbJ5uqgIUVz62gitr0W5bSkKO/0IURmMyxacCYdNQk5RZGMTPAhyVqjlVTgt4YQhtq55DZCFkNDpDTDOS6KFZ7bFEFgH8kvcM6b+GsBpVWZAqVQ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CvXtNoR1cy4qhdssNubbO/ZTMqD1zTkriRZTqDQkU8s=;
 b=pujANaR4+/db7TDuQeElSjD3sIPTa29iUKieHGjadpohgI8itEeHTUKpn83X6m8p/ixEZKWA9yOPOWhKTipm1J703hg8FAV3nMA+54nXQeUkVvTUY6ArUIBEarRdxPCyAkK8scBt26xQgbdCdCCIXIYT0tCwSzWoUL7VASM/a3lbW0aphnVbzFoZY71KGhNm17udhK0dFqUxtHK7dKI5xAv5fGVSMeAKiX276CpHPQiK0Myui2yH99ZqbMfJAl5EzBcsNZUOJv4ORrKiAfysOUIAKH7XX9WpbGmosO4G+jU6ESv0XYCPRe6KLJizVVIccwOg/fpO1g6ZBweKknGPdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CvXtNoR1cy4qhdssNubbO/ZTMqD1zTkriRZTqDQkU8s=;
 b=eigQJfyxUmCb9JZNVgjlLdsq8YJJdv4d8IGdsoxxeaA6LOkD5zk7zUpS5L++Cj+Zr/tzs6+qEx0Z9ND4zdYCuLR4Ho6HlY4ksEPx299HUIClqz1DVnbK+DZ4tMqkQNuuY/wCt+6mB84ffP8ZuZhjsldJbo2gEzv02+O3jjej8VE1Z5/v8m8/MsYbiQ3JZYYcu9Y/oUPNFpwrJsLKTnXRvzBKNKTip21kdXLHpLXMgK6XF3Whx1TpcOWCX0exD6yBWO2kyeF4zPmvrI8pexOEQNM5n1n7A5DeoFh/VLssT9RGZVB0MRquT4X8SPBWUb2I+WgPHBfxlG2MRSXFdES8ig==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by DBAPR04MB7352.eurprd04.prod.outlook.com (2603:10a6:10:1a8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.8; Tue, 23 Sep
 2025 19:45:13 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::b067:7ceb:e3d7:6f93%5]) with mapi id 15.20.9160.008; Tue, 23 Sep 2025
 19:45:13 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Josua Mayer <josua@solid-run.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 phy 05/16] phy: lynx-28g: restructure protocol configuration register accesses
Date: Tue, 23 Sep 2025 22:44:34 +0300
Message-Id: <20250923194445.454442-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250923194445.454442-1-vladimir.oltean@nxp.com>
References: <20250923194445.454442-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM8P189CA0028.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::33) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|DBAPR04MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: ad34676d-17ca-4ed1-c9d6-08ddfad9b569
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|52116014|376014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?45ICIObFMVU3rOF5P1ctQKrFHyudv3qrAuVix5CGtlHpG+9RFv3FQWTCWGcV?=
 =?us-ascii?Q?mDHtlUJbp/wbjbzungRXowGIJjmhf0LBQgkVd3Y4fNVNu+O7Xxa+6U1GrLS2?=
 =?us-ascii?Q?DXEfQyMAkbzC/sWz+xwGgoXoEOHxT/CnyJ7vjKuEI2rYXmED5G+AXYd6uWmr?=
 =?us-ascii?Q?5mp/Lgig4btiWCDIkXGFE5kZHxwa7lUiDNRJi7xYyVHIuGB4I5uCCGTDqg+3?=
 =?us-ascii?Q?jzax6sWg45SV7e91TtIgAHFq6IKocuywQ4/2EwkgImCKfGTM6QvC5X+w7cFN?=
 =?us-ascii?Q?CxCQ8Sq5wPFbtKYnTig89dG9ZRtqXX6zoECb0vVxDTn7A6DC1nvYMxlOEMD3?=
 =?us-ascii?Q?1MEoSrswLnVBX9/e+DESnBaofzkJlawDwz4kpX/7GKua7KppirV28zNpAP2z?=
 =?us-ascii?Q?V1P6f1tx5XuGyc56stU+yjKuqI6eYLGl6+4z6mWUC5hxdxbPDvUkEPKAgugu?=
 =?us-ascii?Q?AXxtzjYs57MN0Ig5iWj+ghRhA1jxX/wkfzaDenvM9F8jno9RJtGMJYGSTBzO?=
 =?us-ascii?Q?XPyK/DztFLjMNROw8D37dHPhYg2mQmAU0/GSkly31r+3homIidFMRQgZy9dq?=
 =?us-ascii?Q?QENVhRrL15SCZZVEAx83zI/TlFkm9HlI/HnT3CgN2RhA7Nldkng7Vmhc8hnG?=
 =?us-ascii?Q?rVuO/5OLhDfSNMCb+K4NvCfx7tGavtb4cncc1xnSixdRxBI8g0+Wf6y+ei8N?=
 =?us-ascii?Q?r4QtACTGpYrPWx8iQH2jIFvWH7r3ZS1Y1PLbXbFDpNBLUbZP+MZVXk+ixZZQ?=
 =?us-ascii?Q?6I0XJYyDNv+BAPdx7bpZuWDCM/F9hHVkUvfHp8pVRkqp1+GfWuk8DlOUgjWH?=
 =?us-ascii?Q?FEp6jSmKn8xyylIrai4OlkfzseEBHRZTpxwp1ZBjjGxirlFPigohgj+NyoAp?=
 =?us-ascii?Q?LK+7EVoy77OhskIs2BuF0N8A/C0Ahz9+umQMh8wJ4iOyGB2vqpEFuurm9cDI?=
 =?us-ascii?Q?ufq+X4Rm/rMS/7qGYSFgxFMjxKJtJDRpZm2WHPaz2ygvn4k3ONuMk10ivO7I?=
 =?us-ascii?Q?VvY9h/9pH4JFrfjx4wnSabdEyNJcV2gDZAofz7JR/fL9Umy7473On6YdTry2?=
 =?us-ascii?Q?Hw3QdrrWdPJGUEJRBP+aLjB0q1l0/r7NFkjiLLtWEbKnqp5fp7Un42iTvVwN?=
 =?us-ascii?Q?pq0cOih6iqU8lJiTSdue9uEGfN0TLSY49Al4zaDdWp1zgq2YPvnQodaV4oGi?=
 =?us-ascii?Q?AFmb8PQSyKTWukmTZcPNnTEgF3zLjeclO0G09WCbYz1jU6dSJrvbi0ebjEBI?=
 =?us-ascii?Q?LOtt+JuPZT4+kBb1FSiLw0ItrAsaiL3hSkUJ0wewo/vKeJ1wiZjcBzooin4O?=
 =?us-ascii?Q?ZwJ/DD/o4oa2Rgk6IWA+SI0oUs8xMGtPpHW/NJH0eg0fJC2J6dAAAvneNw2T?=
 =?us-ascii?Q?geBFLCSEfdrQNQ4H3mW5/nAYwAwWgJnkIuI5sM4TAEbR5Uabbg7eJKvZObEw?=
 =?us-ascii?Q?/FkfSLub/wpFa26A9BIfnNsEss8Fg/rRF/+oYXGCk8MQfzn40SqXGw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8PR04MB7779.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(52116014)(376014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bPBQc2nef1qTBpSxwQr+2cYbxqGshPjGaHqXQX3689qK+VPuv2V6Rl6mQkHr?=
 =?us-ascii?Q?jRDOUZgnK+6p8Y97cxE/2bnpyhL62AbPUQrpIqDIQkwlJxHmeZrj5BzMLOkf?=
 =?us-ascii?Q?Wp7j5hSo4d11OTY2W2TefJZssheUi7FXi/2Ep+8RQogjsu/fecY6/CMmGLyQ?=
 =?us-ascii?Q?dvb2L37EPHZ6dDTqMVOhDX4Fv/h17LkY9A8+FlqXQKbt2iDacra3R/y9XkiY?=
 =?us-ascii?Q?ObU6LPbD3GTgdPJje53IcZWdEZn3c5ZFJAgbICuAzBbGVICWGggH5SqjVjeN?=
 =?us-ascii?Q?ywUI1EuzlS0CCxJIq3+PbSG30LSsQrij9ZEJ6JcZgIJUdwJeP9Z6qyFGPS0a?=
 =?us-ascii?Q?pxz9MY/guB0/9ifa7rPjwE+jF7Rl8tYutWw7KEg8uutl6d2gDRsTjdirG1TR?=
 =?us-ascii?Q?VO6PeGnw0vnN+AepLUqY3XfkP/uJOebLxOxvy+tpOqjPpvP4QojVL+9J3jZP?=
 =?us-ascii?Q?bP+YzuG8/akoxzfcwwODGlQbu3kt6lVlUeUCclaahsKIOrwBPO1lB3uhO7SO?=
 =?us-ascii?Q?AAuKcK5rOUpVWEt9OxSG74mLWYh+dPu6SjovTrzXoZFMXHE+ruhlPE/6kp18?=
 =?us-ascii?Q?hyOlJ/704+eB4o7157ha+LexDYRBkPcs+KdjS/IFPrkAcyplMbOhHT1FMBFR?=
 =?us-ascii?Q?mX0B4cT3t1sSp1mWQnAJgxl8i2OQLacpJdSPRGS98g37c2/BqUDRaXyDFd0s?=
 =?us-ascii?Q?OVBiKISEKLRAEJSTH6OcJBwoeh2MPMjBFI2863PsHrrUOOsK+qsdsKZslRG7?=
 =?us-ascii?Q?frAxNnoXWZ9DSQJOu2/V96T2QoJwA2Ccva57UwAEJDAoe4pWHzH9+zKAQbxb?=
 =?us-ascii?Q?GwxOMjuPScgQcL5+Mm9zybz9ZiSVtg5hinrWYX2YzFdhvM1zt493w+T1jnPL?=
 =?us-ascii?Q?E1Azc7uXltQ9dBDSz5L8dBU3MhzL/Y+9VNwwNyMu7UzoTQtT3cESPSgmB+Dd?=
 =?us-ascii?Q?BuMct5qX+budhWcJjZR08f4ykxF7pukbmwX9WTx7klqKjMJO1P9/AUIdr3Ns?=
 =?us-ascii?Q?jebFhazKxyXUuCKWbGIagZkx7ha/mq3+S1qOanfWlQUSTK2V3CkoXObgXAGp?=
 =?us-ascii?Q?5BRpZ9ftSa318G6r6shSA9rjKjVspJOFbhkeddiOe6yRBV37IllrqltyIZoa?=
 =?us-ascii?Q?LQ6K2NdnrmCWUO72+AzgX44SYqHx0OOQwfk3yf8GYyFV3HCgha5iDMqdYNFK?=
 =?us-ascii?Q?5Qb60YOuB9BB4uongo433g0dwJgWI0VRpdiDdcPSdFMrmGlX/nOsq2kPpGMF?=
 =?us-ascii?Q?UhiXkqoZ97lvWfr9baBcNo7SBTnW6K2Vs0okOeWy/wW6xDdBmHOcM84qaMZ4?=
 =?us-ascii?Q?9DLw/olBVgPJMLTTZS6G1siS5EwvUvd4DACt2ju77LCk1321VvB3sN1GN9W7?=
 =?us-ascii?Q?Q7huKmz7Xy9XjzJUAJB7XKG5E3BsynencKLJXdpk08d+iaokDTa1xtwMoESJ?=
 =?us-ascii?Q?+qe4BCdR+NlLHxIJwMxGoc8NXynEQf1B0JiN4xM0MAJHPDQuz0USdu1t33O9?=
 =?us-ascii?Q?goFuO1RPfPAMJ+Hs+SOB8iieIgJTkCG7us9PRSkAvU/lmHDtnOPFGUjgxKjQ?=
 =?us-ascii?Q?sGafi+aT/rt4JQpGbKurc6dCO+T4BUX5M5tzrIkuEP9SfNO8oMCPxlpQvqDE?=
 =?us-ascii?Q?Ag=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad34676d-17ca-4ed1-c9d6-08ddfad9b569
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 19:45:11.6576
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0zr1HGdGdh1wA08bqJ49zmTz+JFd0UVTmsFt9ffjAfpLxIJ5NMTbxZ0v9eWO5j7sHzWdqHOdzVCXsxGxEmMwiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_124523_903187_6F3E50EA 
X-CRM114-Status: GOOD (  12.79  )
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

Eliminate the need to calculate a lane_offset manually, and generate
some macros which access the protocol converter corresponding to the
correct lane in the PCC* registers.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v1->v2: none

 drivers/phy/freescale/phy-fsl-lynx-28g.c | 55 ++++++++++++++----------
 1 file changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index 684cafb3d3e1..41a346ac38e2 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -12,17 +12,32 @@
 #define LYNX_28G_NUM_LANE			8
 #define LYNX_28G_NUM_PLL			2
 
+#define LNa_PCC_OFFSET(lane)			(4 * (LYNX_28G_NUM_LANE - (lane->id) - 1))
+
 /* General registers per SerDes block */
 #define PCC8					0x10a0
-#define PCC8_SGMII				0x1
-#define PCC8_SGMII_DIS				0x0
+#define PCC8_SGMIInCFG(lane, x)			(((x) & GENMASK(2, 0)) << LNa_PCC_OFFSET(lane))
+#define PCC8_SGMIInCFG_EN(lane)			PCC8_SGMIInCFG(lane, 1)
+#define PCC8_SGMIInCFG_MSK(lane)		PCC8_SGMIInCFG(lane, GENMASK(2, 0))
+#define PCC8_SGMIIn_KX(lane, x)			((((x) << 3) & BIT(3)) << LNa_PCC_OFFSET(lane))
+#define PCC8_SGMIIn_KX_MSK(lane)		PCC8_SGMIIn_KX(lane, 1)
+#define PCC8_MSK(lane)				PCC8_SGMIInCFG_MSK(lane) | \
+						PCC8_SGMIIn_KX_MSK(lane)
 
 #define PCCC					0x10b0
-#define PCCC_10GBASER				0x9
-#define PCCC_USXGMII				0x1
-#define PCCC_SXGMII_DIS				0x0
-
-#define LNa_PCC_OFFSET(lane)			(4 * (LYNX_28G_NUM_LANE - (lane->id) - 1))
+#define PCCC_SXGMIInCFG(lane, x)		(((x) & GENMASK(2, 0)) << LNa_PCC_OFFSET(lane))
+#define PCCC_SXGMIInCFG_EN(lane)		PCCC_SXGMIInCFG(lane, 1)
+#define PCCC_SXGMIInCFG_MSK(lane)		PCCC_SXGMIInCFG(lane, GENMASK(2, 0))
+#define PCCC_SXGMIInCFG_XFI(lane, x)		((((x) << 3) & BIT(3)) << LNa_PCC_OFFSET(lane))
+#define PCCC_SXGMIInCFG_XFI_MSK(lane)		PCCC_SXGMIInCFG_XFI(lane, 1)
+#define PCCC_MSK(lane)				PCCC_SXGMIInCFG_MSK(lane) | \
+						PCCC_SXGMIInCFG_XFI_MSK(lane)
+
+#define PCCD					0x10b4
+#define PCCD_E25GnCFG(lane, x)			(((x) & GENMASK(2, 0)) << LNa_PCCD_OFFSET(lane))
+#define PCCD_E25GnCFG_EN(lane)			PCCD_E25GnCFG(lane, 1)
+#define PCCD_E25GnCFG_MSK(lane)			PCCD_E25GnCFG(lane, GENMASK(2, 0))
+#define PCCD_MSK(lane)				PCCD_E25GnCFG_MSK(lane)
 
 /* Per PLL registers */
 #define PLLnRSTCTL(pll)				(0x400 + (pll) * 0x100 + 0x0)
@@ -314,20 +329,21 @@ static void lynx_28g_lane_set_pll(struct lynx_28g_lane *lane,
 static void lynx_28g_cleanup_lane(struct lynx_28g_lane *lane)
 {
 	struct lynx_28g_priv *priv = lane->priv;
-	u32 lane_offset = LNa_PCC_OFFSET(lane);
 
 	/* Cleanup the protocol configuration registers of the current protocol */
 	switch (lane->interface) {
 	case PHY_INTERFACE_MODE_10GBASER:
-		lynx_28g_rmw(priv, PCCC,
-			     PCCC_SXGMII_DIS << lane_offset,
-			     GENMASK(3, 0) << lane_offset);
+		/* Cleanup the protocol configuration registers */
+		lynx_28g_rmw(priv, PCCC, 0, PCCC_MSK(lane));
 		break;
 	case PHY_INTERFACE_MODE_SGMII:
 	case PHY_INTERFACE_MODE_1000BASEX:
-		lynx_28g_rmw(priv, PCC8,
-			     PCC8_SGMII_DIS << lane_offset,
-			     GENMASK(3, 0) << lane_offset);
+		/* Cleanup the protocol configuration registers */
+		lynx_28g_rmw(priv, PCC8, 0, PCC8_MSK(lane));
+
+		/* Disable the SGMII PCS */
+		lynx_28g_lane_rmw(lane, SGMIIaCR1, 0, SGMIIaCR1_SGPCS_EN);
+
 		break;
 	default:
 		break;
@@ -336,16 +352,13 @@ static void lynx_28g_cleanup_lane(struct lynx_28g_lane *lane)
 
 static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 {
-	u32 lane_offset = LNa_PCC_OFFSET(lane);
 	struct lynx_28g_priv *priv = lane->priv;
 	struct lynx_28g_pll *pll;
 
 	lynx_28g_cleanup_lane(lane);
 
 	/* Setup the lane to run in SGMII */
-	lynx_28g_rmw(priv, PCC8,
-		     PCC8_SGMII << lane_offset,
-		     GENMASK(3, 0) << lane_offset);
+	lynx_28g_rmw(priv, PCC8, PCC8_SGMIInCFG_EN(lane), PCC8_MSK(lane));
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
@@ -390,15 +403,13 @@ static void lynx_28g_lane_set_sgmii(struct lynx_28g_lane *lane)
 static void lynx_28g_lane_set_10gbaser(struct lynx_28g_lane *lane)
 {
 	struct lynx_28g_priv *priv = lane->priv;
-	u32 lane_offset = LNa_PCC_OFFSET(lane);
 	struct lynx_28g_pll *pll;
 
 	lynx_28g_cleanup_lane(lane);
 
 	/* Enable the SXGMII lane */
-	lynx_28g_rmw(priv, PCCC,
-		     PCCC_10GBASER << lane_offset,
-		     GENMASK(3, 0) << lane_offset);
+	lynx_28g_rmw(priv, PCCC, PCCC_SXGMIInCFG_EN(lane) |
+		     PCCC_SXGMIInCFG_XFI(lane, 1), PCCC_MSK(lane));
 
 	/* Setup the protocol select and SerDes parallel interface width */
 	lynx_28g_lane_rmw(lane, LNaGCR0,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
