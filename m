Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4477AC5AC75
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jan 2022 00:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Q+lbegwIzpPtAqZBjMCk6K02cA1lE9w6rZoHSmDtNs=; b=pqp5qv5l8o+A2/
	pnNGQm98FwdmO3nsr2SJnx1LrFUISLYFi6lI2QKCwFBUEXFTTyvhuJcpBJNMWcbxIntgdfXd1Et/m
	Uh/BiLRKQF2ZIh0YhuUB8mHjnoXB0r6Krod0GMCtcve5HJZD/FkMbBYdETYSmY3OMsg11bv6CIiVU
	VGAjXn+EWFmC2odsrvls4wQhXXMhfFApqZRnsO6i2lTMssPLw+DtMDfTv8wscvBJmZid9225oRmZ3
	JIfcgmdGSvp5MsAC7IY9mxm0HKjXkZQWu9nkSDhjZqLOCHf8G2EUwcVXKrXSVuS0cAD7xqm9uU3yK
	L96Et7Hr/fzMsaA3kiFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCVzN-009j7k-H1; Wed, 26 Jan 2022 00:16:41 +0000
Received: from mx0c-0054df01.pphosted.com ([67.231.159.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCVzK-009j7E-9o
 for linux-phy@lists.infradead.org; Wed, 26 Jan 2022 00:16:39 +0000
Received: from pps.filterd (m0208999.ppops.net [127.0.0.1])
 by mx0c-0054df01.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 20PN0imF021579;
 Tue, 25 Jan 2022 19:16:23 -0500
Received: from can01-to1-obe.outbound.protection.outlook.com
 (mail-to1can01lp2059.outbound.protection.outlook.com [104.47.61.59])
 by mx0c-0054df01.pphosted.com (PPS) with ESMTPS id 3dsvtr18sm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 25 Jan 2022 19:16:22 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lgkVQQfqYvo8ltgr7q0mTsV53kA4b37cO1rHefhKPXpoznNb6QRYft1pfubjWb3fznZ4QIofTUUHH+B5/F/B0ApWEXwjkQpMQb18/mNZuM/n6tUxWzco87jZQggtD5j+6JUnsUuTlicH3QUyT5/FLHYLjMIaFhyLkwfEt1ZaJOK67l0GUpvmW+fPpL/WCmpE6CkYOCnNN0f7dyrb+wD5G/rKLlxaY2RRrSy9I6qzn02GB8JTFrcNl4ZlsJPbPtcK3O0G0XHsTvtWNjid0y60kdcV7CoyEw9FPrfiZ8GZpzR0aQ0Orde+mM0bMLPfRegJ07ZLhDcHuJKAmGsAmB2qlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVpkjfl7cC9yZIg+qT4xP+60Ys8Uh9HR8qGiwFQSSWM=;
 b=i4ew0zqP9ZSixY3KM9SOMZeibv72jkPBB4bVak+5DSiP97wYL8AFgHJ+sFiPJHqgd3Ei/8FJvfMFq1YViNTO4nLqZ19zWmtoAvhGoRkNoAie+ofo6g7tZQu1uWQdjNAEFQaAkAUszyEsyzFItd9Nb+lupT8Be0Uf5XdMEPAFRVuniGGwLTi40rJCvtmuMvnxu9BHLLvdl8vWTPo4bTAbunVk4fIBXgXHajPOz7Xccd1pq07KW2qtVRMVEPrNw7ZVL32DZZnUFWGj9yKcfTJG5JJbWNIjb6MP+Cw/rxGHIRqx6iapImk0wfesKOvF5CQK2olNOInI9EIHeKfznO8PpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=calian.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jVpkjfl7cC9yZIg+qT4xP+60Ys8Uh9HR8qGiwFQSSWM=;
 b=YW8AaMB591IsJH3PG0LHTDiuoDpa7jDJBn99o7p7Hn7fMtDtJplh9vmNqKkzF2j5mj+1hoZZU44IIP53RtKY3rVBNWe1nAhJbSxscMJ0XdskZFjOaJtLBSfYalY39xHPh6sZNQK0oakbqcbvyYSsaMx6aDLKbU/zRMyX3jBgha0=
Received: from YT3PR01MB6274.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:6a::19)
 by YT3PR01MB9724.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:8c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.17; Wed, 26 Jan
 2022 00:16:21 +0000
Received: from YT3PR01MB6274.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6929:c39f:d893:b6c8]) by YT3PR01MB6274.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::6929:c39f:d893:b6c8%2]) with mapi id 15.20.4888.020; Wed, 26 Jan 2022
 00:16:21 +0000
From: Robert Hancock <robert.hancock@calian.com>
To: linux-phy@lists.infradead.org
Cc: anurag.kumar.vulisha@xilinx.com, laurent.pinchart@ideasonboard.com,
 kishon@ti.com, vkoul@kernel.org, michal.simek@xilinx.com,
 Robert Hancock <robert.hancock@calian.com>
Subject: [PATCH] phy: xilinx: zynqmp: Fix bus width setting for SGMII
Date: Tue, 25 Jan 2022 18:16:00 -0600
Message-Id: <20220126001600.1592218-1-robert.hancock@calian.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: YT3PR01CA0030.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:86::18) To YT3PR01MB6274.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:6a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 151f589d-0ad0-46be-5d7d-08d9e061146d
X-MS-TrafficTypeDiagnostic: YT3PR01MB9724:EE_
X-Microsoft-Antispam-PRVS: <YT3PR01MB972458EE690F743EA8C8EF7FEC209@YT3PR01MB9724.CANPRD01.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XNtlq9YNSFC6cD6WiS7udKLbFi3Mk6+bW1Wf7Mu2OG43VTQBqdItBWAWowdxL8CXxmhisIr1Hv+qafpJR/YvMPQz/imYhgQ7iO1onn7/PZHakb4Ws99tFsTASMu+czNYAa+7KbVsp03rN0cPKJzrEOp1kgCBq0X7Xl8QcbU9JhAMsbCmh5BGNxJnNYA+mo1oYc7ZFShei42LsCO+MYILQRuC3zAI2BeQ0tHzbPxJ6J9/zxOX0LagUH7FFQpyGVFFirESvtRy/gVz0d6TYxgBgZwQ+PxtziwHHakFjFtScUoTrGcUIvBu2aW46gubtUHFsluTcG2r2XFg8FpT+KnfPwCwZxREIyGqig5+z6u92EjPde7KdCx9dch3JCy0aP1jT3K4aG86yOMW3KbsAkmcpePL8c8g6ZnMs2DCwqk3ayBUT5qzTY1U+zYmeH0AGNzypqngPuT1wGhE/9xUE3pbXfeBTPYbdNyHBowQNwavXFu/4ok9NthBlFBTBRY6gJVqabw7W6RVe3EE8EsFiuXDbBrJVcIRcyoYAeKKUJ0E3XiXbslnL3HEPNCdOOrGr+g5sSFoQEsPcPgKG02UilXdEtO2kFEgDyi8dxenR2yg+njPNxQxgde7PFOjuH7WBXq8qD8OcIcfkImJDHzH7YoCf9cmWJrem5zTd7pCKq7FDwtnTx7psNY8ciYu+kh3YZgk/K4E7KTeoJ7od25JXB7K3A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:YT3PR01MB6274.CANPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(2906002)(36756003)(44832011)(2616005)(52116002)(186003)(26005)(66476007)(86362001)(1076003)(38100700002)(6512007)(5660300002)(83380400001)(8676002)(38350700002)(8936002)(107886003)(6506007)(316002)(6666004)(6916009)(4326008)(66946007)(508600001)(6486002)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9CCU1ATivf6POD47RXAJ8H6R748ZHd5WmMtqqulUUdCDsXMvDbSqAKzWZuAD?=
 =?us-ascii?Q?EpvsOJXLEvAc8juM4SWg7hZiPyltd5uVbsnlbEeRmuPmqY3vpwkof+Ky5/ho?=
 =?us-ascii?Q?0r6I7oKQR1vSqbD+npB8QQKJ/wunXlgKpQV+prLNRyv6WxH3S8WbwkKLKNnZ?=
 =?us-ascii?Q?NEdHJAXn+5TzgxaPNGQ4dvzwPO9q2ihduFQFM7qzn4rBNUo51RjGu2IBeIip?=
 =?us-ascii?Q?rXRUotkGxEqa7nJ9VVrXyEd6vCPlh1E7RorVgsnqlgQXyZW4H7OGeLkySjNl?=
 =?us-ascii?Q?1jCUZM5xGfjg2If48PPI2Mvr5Jftbu1ZYSVuZCN9dKPrMxOiVcxRpKoUU7uZ?=
 =?us-ascii?Q?ubRc9vwOfDbTbZBBjNYxx2rK6s7dDRSi7gHMROXXH1rliD+kQdyzxU3Ae7lO?=
 =?us-ascii?Q?BSmKHoRJ5jru2boSpN5PfRx0QsQQI9g7aPA3l/FqNMwqJT+cdz9xvk6kxPO1?=
 =?us-ascii?Q?MoCXe2/UzOoQ+ELshnRnhkxw4zXy9IgnGaWxpO7111EGpMUnnPvJp0QbT/dU?=
 =?us-ascii?Q?P0Xq+z0x2/rOYU5mZyTn19yjccawmg5x2NwWklk8nbNQL18aJmkE4Lk+FE0q?=
 =?us-ascii?Q?bJORvN+W71BhvbUv+rlyVLvRgg7K1burlaFlycYRnpD7rK0YsLdiEEKBswTF?=
 =?us-ascii?Q?AO9uAKle56Rt2GCTnls/Bu8C6nTII92pXdM0k8aWSYEkqoh4q9FKYQRaF38F?=
 =?us-ascii?Q?lly6KQDj17R3n0SIvaCVpHolnTRvZ5RpU20UrSyc4Tea3CrzJCcJ2gxdQCrd?=
 =?us-ascii?Q?di+iJFpIEdB/JuMuQOx3Mhvea2LrWvFmZhiFdQJ/NleJrVHfubD/h7jqiLj6?=
 =?us-ascii?Q?ICjTmC18S/W1PYwNHfETyjfDIULRqdZX+kE30Ir9jvLmXEfZRe+Dash+Eanu?=
 =?us-ascii?Q?o6FdzUtNldx3L3tXUFwAb53BuF4Tf+CPtRK4MKN3TV7j3IPm4Fr/fKRB3OJJ?=
 =?us-ascii?Q?mjkymozW0IjV+8GBO4XEd4rBhUTjUYJubhXQ394z5o8Niql3lCBNhFCJgo3t?=
 =?us-ascii?Q?UprG6tS+A4wvpD4VQ2nXktaa/RK0rXqX3GpuimodIc17/I7c3DZS37Oseyqi?=
 =?us-ascii?Q?/m+QJ5AaZh4Rex6VuK74jjNIdngfsAduUtoPbg8U7dwGFtJ+EMSbwvvuCi5Q?=
 =?us-ascii?Q?yxqx1z1JMZdMp7Wth4wJbjSgtQ1EFAjjgC7j38WQjkvI7b6+KdPB6qEcTUJs?=
 =?us-ascii?Q?yUpIkQQJX2rAOqeqMEeHHfaVLh9Z3/YdvhN+tlKYYTf9QfZHFBKMLu26GcK2?=
 =?us-ascii?Q?iobD+MpCOuSGr2NaUoNsHMPBm/O9pGGx8pxXvWiNizKg0zRKOnci4/K+hcih?=
 =?us-ascii?Q?LYg2/vESChewRwjEwjb+g2HM/ye08gpuaBOfbsFro35N/6l90g3PmEFzIUv5?=
 =?us-ascii?Q?2vqrzvSf0+8WzjUMLH+7WmTNH+AVkFqo89p5V4gxmHDSur9vJZ8GWin2uJmi?=
 =?us-ascii?Q?xSQIyTvC8TOwf+7G9BBEeML843ilHZtXyTGBEPJooQC1B+6WcHOuYDyHQvS1?=
 =?us-ascii?Q?ow1bFNNQQmAZZB/7CuuZ0DzMKFlRBlQVbAbqo6SQA3bdXKkO2D3AwoVi2ty8?=
 =?us-ascii?Q?aWzpnEmYx4RKvy97SSH/IAzPEwqPS5pzd4CR6G/JsOwBEMqzyGRCOl4ocAbE?=
 =?us-ascii?Q?qWmtaYNO1jMC0m3W3DeD6VWEoxezxl8b3SWzTDUny5b9mcW+xTMLjm8uEaCJ?=
 =?us-ascii?Q?cT+qG8bHPWot+w87xAxuhoQMAVM=3D?=
X-OriginatorOrg: calian.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 151f589d-0ad0-46be-5d7d-08d9e061146d
X-MS-Exchange-CrossTenant-AuthSource: YT3PR01MB6274.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2022 00:16:20.9890 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 23b57807-562f-49ad-92c4-3bb0f07a1fdf
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tqqReVsl1QvRrXjIlmKHrbXkHX/e22ItDL1RuZ5FmgmbgSXF065GbecJolvASE4xG46kEqGYGpE3+LApcFBxlqlYZ51R64CpIQ5Css8bp6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT3PR01MB9724
X-Proofpoint-ORIG-GUID: KaFPX1R7lH8XBAm5aLSJCvdfiGXYleu_
X-Proofpoint-GUID: KaFPX1R7lH8XBAm5aLSJCvdfiGXYleu_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-25_06,2022-01-25_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 bulkscore=0
 clxscore=1011 spamscore=0 adultscore=0 malwarescore=0 mlxlogscore=352
 suspectscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201260000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_161638_573209_17528A1E 
X-CRM114-Status: GOOD (  12.22  )
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

TX_PROT_BUS_WIDTH and RX_PROT_BUS_WIDTH are single registers with
separate bit fields for each lane. The code in xpsgtr_phy_init_sgmii was
not preserving the existing register value for other lanes, so enabling
the PHY in SGMII mode on one lane zeroed out the settings for all other
lanes, causing other PS-GTR peripherals such as USB3 to malfunction.

Use xpsgtr_clr_set to only manipulate the desired bits in the register.

Fixes: 4a33bea00314 ("phy: zynqmp: Add PHY driver for the Xilinx ZynqMP Gigabit Transceiver")
Signed-off-by: Robert Hancock <robert.hancock@calian.com>
---
 drivers/phy/xilinx/phy-zynqmp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index f478d8a17115..9be9535ad7ab 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -134,7 +134,8 @@
 #define PROT_BUS_WIDTH_10		0x0
 #define PROT_BUS_WIDTH_20		0x1
 #define PROT_BUS_WIDTH_40		0x2
-#define PROT_BUS_WIDTH_SHIFT		2
+#define PROT_BUS_WIDTH_SHIFT(n)		((n) * 2)
+#define PROT_BUS_WIDTH_MASK(n)		GENMASK((n) * 2 + 1, (n) * 2)
 
 /* Number of GT lanes */
 #define NUM_LANES			4
@@ -445,12 +446,12 @@ static void xpsgtr_phy_init_sata(struct xpsgtr_phy *gtr_phy)
 static void xpsgtr_phy_init_sgmii(struct xpsgtr_phy *gtr_phy)
 {
 	struct xpsgtr_dev *gtr_dev = gtr_phy->dev;
+	u32 mask = PROT_BUS_WIDTH_MASK(gtr_phy->lane);
+	u32 val = PROT_BUS_WIDTH_10 << PROT_BUS_WIDTH_SHIFT(gtr_phy->lane);
 
 	/* Set SGMII protocol TX and RX bus width to 10 bits. */
-	xpsgtr_write(gtr_dev, TX_PROT_BUS_WIDTH,
-		     PROT_BUS_WIDTH_10 << (gtr_phy->lane * PROT_BUS_WIDTH_SHIFT));
-	xpsgtr_write(gtr_dev, RX_PROT_BUS_WIDTH,
-		     PROT_BUS_WIDTH_10 << (gtr_phy->lane * PROT_BUS_WIDTH_SHIFT));
+	xpsgtr_clr_set(gtr_dev, TX_PROT_BUS_WIDTH, mask, val);
+	xpsgtr_clr_set(gtr_dev, RX_PROT_BUS_WIDTH, mask, val);
 
 	xpsgtr_bypass_scrambler_8b10b(gtr_phy);
 }
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
