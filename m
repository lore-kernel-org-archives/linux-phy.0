Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DBBC433FE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 06:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqEPlImCumcXtZaL3pDcIpUZSMP+TgzylE1K/eP41L0=; b=CbzA7rzkQZz90t
	TNUBrPooaJBQh+/WJ+lE587bayt1BtMW1VuNvX17NpeM816CcrVwzjE2xT/wfm3b3iNr6wnN52x3p
	pLDzuqK6DqTKPeacyDJmnmExU1B85R6yiqJQC87nUgkmiQC20JL73FbDI5W7QkUV+4sSFP9ilrGmg
	scG6r5NDblGRlh5GUwaow7DFXsBr9bsOZrq154UDe0WfaohvfhNWNVkuGj+gA22gqGR+R6nnfu8Yl
	w5COVr0Tfkux6mXWz0pNLsnizkcXIbjWB3Sg4bqiKdyjZNK8PPA23hvItzfPexXf87a7a6vVdHzn+
	rGsb0rHsQ7rIi6vVCrcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqqUI-002crz-8O; Fri, 04 Nov 2022 06:47:34 +0000
Received: from mail-vi1eur05on2046.outbound.protection.outlook.com ([40.107.21.46] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqqTu-002cdx-CU; Fri, 04 Nov 2022 06:47:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f2YjfSc3CeqhA7ZiKAcZXrlbmfVZim+05J3+3cWNYhpKfO60TszdzX2AIBNTwcbCT9MPbfRZeITPGrB0uzacT4YF4/RvkdYRzVvCfrr7tKg9bt9sUxKhzaGHPfPXPtNxDNl9gz5a73Ib6M//+R1egyOvYcMuGmmrSpeFzIkDqxPVuB05l78A3+qHdQnmGZk+vZ6b96YZTYA/LX3HIT3g/J+UIMD9txyVsfO7tHeDZp6zxCovdz+TuINgUTtlTXZtCjGPkCXLYvrkV+RorPyyqDiZq+W0e5RP37y346q8CrtqpR1HouZBofIUOvOz0h8IMJt+Uk4nTHm7ZwvWWc+8qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VoMObaoHu8KTKmQ88r6WUD/O/qGZeHbzp5rnpj1bqBg=;
 b=XiCmAOmnO9ai8Az6aLdc95sMbIJsnigYyeyJOuwIo8V7QovV5NMTrHbmcDqprVaJYMEaKLOsgiCKTUrGzVljkCkXzOpCLkm3wMpHBB4lXPltH5pyDpuxNeCxNNuxiHN8nisW/8319A7URqs8QgPFB43i4cqtppsbi909zlZQ+o06CCGwHaG3rF2G97lZGmF0Lm9sQiYG/UNoE0tq+Rkf8I5guH5GHPsV/utR3Xwi3oJdOAH/RHlmaQ1tUvSLRPC1GoeYmINax40wyR5zotmpvN62nkR3jp4x3wGGp9lCAFViJPns4+f8ex1YJAPyMkGfTzncaNcLUIw7wyeE9qrv5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VoMObaoHu8KTKmQ88r6WUD/O/qGZeHbzp5rnpj1bqBg=;
 b=QZOdU51eEPZcJ3aX/gY9NJnNJCpALfc+Hv97HjFOfZRw2mOhdNKO6gth6irzx0yNfj+YG4reYpYTY3XSLwhNB+NZH/wISU0Y3X9mWE/PGpFHyH2NpIdNSOoqbWCWDRgLRAf9onCy84B1F2hP+o2AYZL7vgSQLZikfzGCZ2m/Jvg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
 by AM9PR04MB8081.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Fri, 4 Nov
 2022 06:47:02 +0000
Received: from PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::88a0:57d8:2a57:3f4f]) by PAXPR04MB9448.eurprd04.prod.outlook.com
 ([fe80::88a0:57d8:2a57:3f4f%9]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 06:47:02 +0000
From: Sandor Yu <Sandor.yu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	robert.foss@linaro.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	tzimmermann@suse.de,
	lyude@redhat.com,
	Sandor.yu@nxp.com,
	javierm@redhat.com,
	ville.syrjala@linux.intel.com,
	sam@ravnborg.org,
	jani.nikula@intel.com,
	maxime@cerno.tech,
	penguin-kernel@I-love.SAKURA.ne.jp,
	p.yadav@ti.com,
	oliver.brown@nxp.com
Subject: [v2 04/10] phy: Add HDMI configuration options
Date: Fri,  4 Nov 2022 14:44:54 +0800
Message-Id: <ae34e5e10f8df1f6bc1b08286f43c8181a42dd2b.1667463263.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667463263.git.Sandor.yu@nxp.com>
References: <cover.1667463263.git.Sandor.yu@nxp.com>
X-ClientProxiedBy: SG2PR06CA0194.apcprd06.prod.outlook.com (2603:1096:4:1::26)
 To PAXPR04MB9448.eurprd04.prod.outlook.com (2603:10a6:102:2b1::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9448:EE_|AM9PR04MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 8da7e2b4-aa93-4705-62cb-08dabe306112
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	tyWFBDkeUi2rRVixL6y0UYXiuiCAl9KXrjUNQoNrNSdbrSZlUvOGkssoNzKdsNpO06UxxiklPipd9GuKLyhoCoqyNtp316ifqBUvYW1ZYh1K+Ns+bexP97gtveNyzCRwPnZEo8pDf4Pw/K/hD1Z58IccgynfgBhjcEy2jQKVj2Bi2Q2juvxYkNb3tz775s9v1g4Fn2RdLkCImcrIzJOrsxKlI2LXSPCSUcGIsXZfGsYq2A8rbtwGXbXn7oCkVF3O6DRZJdpUtCJ1U7mf4lxGGsvuNvTugTvH/5d+38KFk2XRz/fwZSllOlvNI1EBctarn20pP/7UJyNcPbJNhWaSkV06YeimOr0DCZPb+WVmEK5NtDdFWTXs+LCglO7P78qs+R6VDP9/aqmN4MjXel+1uVNMe8PfnqGbnM4onE88lk8je1azDUJybG1kDKpy2/8o2Y1gFzUyI1Os329qOezfBW/bMEuhurDOBoLHq/+twwUibM76hEs0KwXTGDm9/qVzVUgwVdjQ6S4B6oBNYtodReMf64Uz1usNezYO4HZEn41zqtsOXWu8a8GOxnt9xaIyOQVmC7R7eqY+FWT1hGYHDaHt1R2s8isVVKmXjaJw0WjzKmwwfmsqSBIp7y3ZhT9l4orAYERXCHicIxXmgE9Xt17KYPNNrtNHpnSBvCzmMGtlWy+fYEtxK9mT2RfIvshGmuzV78nj/nl/Pq90FOuglI5GOdE/O5kp55TULlbeyW0AwBEaP8y6JrzPLtI3m8T7bBbTSHMT4nXZR+zFQpZ6Egq7j1cwN5Mca7sxsdL1R70=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9448.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(39860400002)(366004)(136003)(396003)(451199015)(316002)(8676002)(38350700002)(7416002)(5660300002)(66556008)(66476007)(38100700002)(4326008)(66946007)(36756003)(8936002)(41300700001)(83380400001)(6666004)(921005)(186003)(2616005)(86362001)(6486002)(26005)(478600001)(6512007)(52116002)(6506007)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?U0L+AfLBuGI0T0p+kosqUPYH7vueNmmQ8VuoqBehxtNOWlsU2x+NQDXeq7RS?=
 =?us-ascii?Q?Ivjay/uWNkxw80dcCjHnITIrEYTOLuYKmBn5yTyd0kOJ2a/1AeytJ9/RUDAW?=
 =?us-ascii?Q?xZWLda3bqniMcsN/HTAgadK8zP2VMIEOEv8BB5GpzlglaG/fS5Ax1rSFFl30?=
 =?us-ascii?Q?ZTBDvm5Pd6P5CDK4LwW+TBlsYI1vMAU8M5jYaf2b8TkzWJgk7qgJtypdvCJ+?=
 =?us-ascii?Q?wPpm+dtnByt3iKWBd29nItMFASqvHyeuiRZZI0M0qyrHixvEvmZYc/Avp3MT?=
 =?us-ascii?Q?y1dE8aI3gJMIIklVesjqgznb60uwcnGOW3ZsGtl11eRdcfzqa+0+k8qNdFxl?=
 =?us-ascii?Q?/u/wtwELKkQg1I8+KcG8h9q9mRfqe/yI6B7K7Hq6VWJr5to16b927N/FG5ff?=
 =?us-ascii?Q?gSI8LV0nbvHC6BWsWsI9+NB/nqaH0SfjzJZSH7JZw3bohxz2ZUAeLGM0onyk?=
 =?us-ascii?Q?6+Rf7q7y/zxZZ2/Wz81l+Xfq3FpZXkhiRYDuB+9dHfFdir1PYYT0Dnvl70UA?=
 =?us-ascii?Q?9LHzaHA3o8rsRUFMaolyIPomw3wMve3EMGp3uKg8XWdPzXYKOSBy5mDyZjAp?=
 =?us-ascii?Q?iLEReul1HCPF6XCxJOEWatWWi/iXcVgkQmZSOMbax3tjYTmc8DzkKsdnmgqQ?=
 =?us-ascii?Q?ZhsiYPuS1UahJXHh9UYbRSfkZM2b8u+pL9Oz82GSkwr4MclfmOUUznG4AjEs?=
 =?us-ascii?Q?hjNgQx78vE/1N7mXKA6C96LYHkX7ZNu2W3QCgO9CFrQUzJB7qfFZ7sbMiPjE?=
 =?us-ascii?Q?LnjDTvC+Kg2fOs4LvMgqOfP4KhLn83f3cyBTV7XSKFmCIve7CCWutV8dFi2r?=
 =?us-ascii?Q?Jo7H6dxZpntD23qkxMKICJzgBBCT/h6fbdC6Fv/nG2chpqKwnOrdH91WZzSj?=
 =?us-ascii?Q?thiy3kaa2k7WmPC/k2x4qRY36scyDP4ezcr3kDAb8cDFZv0lS5WUXTHWZMpL?=
 =?us-ascii?Q?YtGO+gNo5WHN+tF0q59SHovLdXC52Vy0eNNyYurlRp0j2B7gUz1Bk0fnsBJ2?=
 =?us-ascii?Q?Q6EpXBnskkeTB7QdcaH1+HiEH9alqVjnr+mnkqLrcITl/hfU0sMxXRLIi168?=
 =?us-ascii?Q?GoOH/Yb8K/K0Je8087aWWYtLqGts1SEJDS72oJlXLdDqEDUYokz/uqaKgbDn?=
 =?us-ascii?Q?Z1UupaKaGgp1Mbvh+3TmDMaU9KmkW+AgdA7/s4JpaGzQopgnSU4mnyVpdyp/?=
 =?us-ascii?Q?zuTS5DS46m0+W4VA/JyBlp9EhblvplvhEKWTAnMiJx7tUhpxsO+umwc3wAIA?=
 =?us-ascii?Q?sijPjoF7RjCilgJ6fElrnmIjDIN0aJ/Dsf6nJeSTwlPeh4gTCFOq81Vz3m6p?=
 =?us-ascii?Q?TPiNipLDwP4XMe+t58gLa9B+HrKUTiqtdHhsSA62CQhvJVGVpEVO6fqzMEt/?=
 =?us-ascii?Q?hKNA8Tz7DU6gh2Gv7X4hsitRVaxYKKxE3N+qPKmnEkrWxA2ncuCN81iJEixR?=
 =?us-ascii?Q?cxVJylgpbuH24F2eKg6qrGetpMITfpPcVvDG49ACCLxcvMQvWlXrGlVPTuAM?=
 =?us-ascii?Q?Xh6zVAkKVHAL8Rh8djOqmhtUCAj7gtIaXuR+cfKjMmA9niRj7ySfHXonc/yq?=
 =?us-ascii?Q?VZlNIL8DGz0yVG8/nCusvD0/JEDYgUW+UGdsv25w?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da7e2b4-aa93-4705-62cb-08dabe306112
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9448.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 06:47:02.4523
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qBUGaY6wTS/etDEsKYDfJWqxkvmq0yaj8KajDWAlhOfYl2doOk8xsalam0ykQsOHFN/EpYjwuRLZppfQalk4pQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_234710_483083_B11EB2CD 
X-CRM114-Status: GOOD (  17.47  )
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

Allow HDMI PHYs to be configured through the generic
functions through a custom structure added to the generic union.

The parameters added here are based on HDMI PHY
implementation practices.  The current set of parameters
should cover the potential users.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
 include/linux/phy/phy-hdmi.h | 33 +++++++++++++++++++++++++++++++++
 include/linux/phy/phy.h      |  7 ++++++-
 2 files changed, 39 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/phy/phy-hdmi.h

diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
new file mode 100644
index 000000000000..73a32eb535b0
--- /dev/null
+++ b/include/linux/phy/phy-hdmi.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2022 NXP
+ */
+
+#ifndef __PHY_HDMI_H_
+#define __PHY_HDMI_H_
+
+enum hdmi_phy_colorspace {
+	HDMI_PHY_COLORSPACE_RGB,
+	HDMI_PHY_COLORSPACE_YUV422,
+	HDMI_PHY_COLORSPACE_YUV444,
+	HDMI_PHY_COLORSPACE_YUV420,
+	HDMI_PHY_COLORSPACE_RESERVED4,
+	HDMI_PHY_COLORSPACE_RESERVED5,
+	HDMI_PHY_COLORSPACE_RESERVED6,
+};
+
+/**
+ * struct phy_configure_opts_hdmi - HDMI configuration set
+ * @pixel_clk_rate:	Pixel clock of video modes in KHz.
+ * @bpc: Maximum bits per color channel.
+ * @color_space: Colorspace in enum hdmi_phy_colorspace.
+ *
+ * This structure is used to represent the configuration state of a HDMI phy.
+ */
+struct phy_configure_opts_hdmi {
+	unsigned int pixel_clk_rate;
+	unsigned int bpc;
+	enum hdmi_phy_colorspace color_space;
+};
+
+#endif /* __PHY_HDMI_H_ */
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index b1413757fcc3..6f6873ea7270 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -17,6 +17,7 @@
 #include <linux/regulator/consumer.h>
 
 #include <linux/phy/phy-dp.h>
+#include <linux/phy/phy-hdmi.h>
 #include <linux/phy/phy-lvds.h>
 #include <linux/phy/phy-mipi-dphy.h>
 
@@ -42,7 +43,8 @@ enum phy_mode {
 	PHY_MODE_MIPI_DPHY,
 	PHY_MODE_SATA,
 	PHY_MODE_LVDS,
-	PHY_MODE_DP
+	PHY_MODE_DP,
+	PHY_MODE_HDMI,
 };
 
 enum phy_media {
@@ -60,11 +62,14 @@ enum phy_media {
  *		the DisplayPort protocol.
  * @lvds:	Configuration set applicable for phys supporting
  *		the LVDS phy mode.
+ * @hdmi:	Configuration set applicable for phys supporting
+ *		the HDMI phy mode.
  */
 union phy_configure_opts {
 	struct phy_configure_opts_mipi_dphy	mipi_dphy;
 	struct phy_configure_opts_dp		dp;
 	struct phy_configure_opts_lvds		lvds;
+	struct phy_configure_opts_hdmi		hdmi;
 };
 
 /**
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
