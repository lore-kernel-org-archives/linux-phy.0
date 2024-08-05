Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFD6C3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 06:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUCOgyiORmJiDM1nGYcqpaTfonpp/0wdInJ6JywDGxY=; b=evAq/bD7GAPbiz
	BBDconC/ATMZqMY+BX/eo7mIv8g891e5RHummBM249RuxAeDTj0Pn5wT6UaHjj0yjnUOW+wWpVETW
	JBMuIyiQf4GpQCCR+cqqeR0S6ajHyhtim+wqi/ZpTyzBPqlOzXb7fY7KW/URpc+UWlZppdk/d55vp
	0cm6KPfO8wVk9DDGT9CVZoOll7zVojIUrQIqeHGfIvWvSBm4fEx3Ic61Jvtd144l3mHsG00iILTIk
	4wNylLui6LRUAQR9bE5im0FB6UEEbqO7OH2QpD2aCUkeM/J31k9WKREpxUspYJkuvM7fSP8YL0HyP
	VE92MtgGo07eAg2y1aBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saqzY-0000000Eltb-1T9O;
	Mon, 05 Aug 2024 06:14:48 +0000
Received: from mail-dm6nam12on20601.outbound.protection.outlook.com ([2a01:111:f403:2417::601] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saqzV-0000000ElsV-1LCN;
	Mon, 05 Aug 2024 06:14:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JIREiqyT2l8phfbdVXZBJsuOcn+K+HnMsqZRKqolrUdw0PXvpcVoO9Nr/GY7nP3Kq96zQefJd92Sh/jPcmXW7R2V9VoRHCmCGAGo0YsTfTan7RI+S34cJwU62aSeVehKerl6ZAhuWzS2+mfeMX61K7g4sIjXP9+kA+G30pc9pzZi2jk9wh14WPS+iWxb9c1mTnrWbqtf5bx1e5BNTm0BsMtX0PbgzJ37p33obPm5mhA+Xyxb2WcnhvCVzeTNRrfYN2jH5skZtga57QMaX7q5j0PpmycL7Spoy58IT5FlthW2XwhEHSn/4cU/xRWMi10iZAUOFjyNDDrS2iY4ismWeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/710h/M6giJ2S2rBeBx3w4kvkZLcUQTsY5lPIiPGbE=;
 b=PnzYlkOpuIag2ual8tGkDDF6C/u5diHOOsJGQ7Fu5J1C4mx5UwPQLyIinkdYSe1iNVGrIUC+/9GBT3WSWBQeMbFp1LBLg1w0tU0t+UgAAttO1VpmMEunovDNr4Y/uCl75pKMbkJq3zdon0WsyFNLbF5V/7i2SQKbk25X33iLAr0KYEBN2OlfMFcRU2GcBPPc6lq4go9io2a89yzJ4uO5nixiltbupDK67/MyVj7Z7p+8CSk+/Z7hKrkjj28t5MnG9W8PTavtd2cu/onLiFLcvvkipMwJ2cN4VByHvmvPpPL3weWZNIrcwtk7G3HzoLjBNKBqQhvUreHOxnvcFjLlng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=ideasonboard.com smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i/710h/M6giJ2S2rBeBx3w4kvkZLcUQTsY5lPIiPGbE=;
 b=1pJGpv3AmI4oG3SYXOlACN2robpKveHYtuPUl55w6r9RLcZFX0rAYymlmCISLWMW+jx7hZbH/VY1EwfQ5DJ2ddb+bhI5FPl8l4T7LQ7BTez5XP7auNvqH6sl2hhztfm89ZUlzhe9/OgXJEkgiFTxcSyrs2XM2KANc3wHADZKICU=
Received: from CH2PR14CA0022.namprd14.prod.outlook.com (2603:10b6:610:60::32)
 by DM4PR12MB6445.namprd12.prod.outlook.com (2603:10b6:8:bd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Mon, 5 Aug
 2024 05:59:08 +0000
Received: from CH2PEPF0000013B.namprd02.prod.outlook.com
 (2603:10b6:610:60:cafe::67) by CH2PR14CA0022.outlook.office365.com
 (2603:10b6:610:60::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27 via Frontend
 Transport; Mon, 5 Aug 2024 05:59:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 CH2PEPF0000013B.mail.protection.outlook.com (10.167.244.68) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7849.8 via Frontend Transport; Mon, 5 Aug 2024 05:59:08 +0000
Received: from SATLEXMB06.amd.com (10.181.40.147) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 5 Aug
 2024 00:59:07 -0500
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB06.amd.com
 (10.181.40.147) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 5 Aug
 2024 00:59:07 -0500
Received: from xhdradheys41.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Mon, 5 Aug 2024 00:59:05 -0500
From: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
To: <laurent.pinchart@ideasonboard.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <michal.simek@amd.com>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>, <git@amd.com>
Subject: [PATCH v2] phy: xilinx: phy-zynqmp: Fix SGMII linkup failure on resume
Date: Mon, 5 Aug 2024 11:29:07 +0530
Message-ID: <1722837547-2578381-1-git-send-email-radhey.shyam.pandey@amd.com>
X-Mailer: git-send-email 2.1.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PEPF0000013B:EE_|DM4PR12MB6445:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bc3fd65-184c-4d5b-9e1c-08dcb513b886
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uqBquG/TN3F8Y/gHGkPTTphSwLhiMl1lSnfUDgpsjfpAeF9QrCctvxo5F/Xd?=
 =?us-ascii?Q?NL0+Uip8h/zWES4z1as54cjZ7n0E5E3GWe3DrR8ZwONnjnFaZlWN6c7fxn7a?=
 =?us-ascii?Q?wFoJy78TXQoupYrHtdQwUQLbEW3/d9tIP91CPz7574Wfoq6CmIC+KV5zWUJm?=
 =?us-ascii?Q?9Ggn5FSABqOeikb+VV1zK0gve5WwqVp5fjwT7j0h+3NkGq5t+PE8BoXLM5wM?=
 =?us-ascii?Q?qRcDRqNhitYXAGaF7u61CBr2emmMKsLIJ3XTjtWqjqNxm8kXei79LlKPLx0Z?=
 =?us-ascii?Q?Q6Rdkhmt6wlQvY2bPO22q4NVVVZD9dyZE5I51FrIPf52fTnBaEgmw7SvCScp?=
 =?us-ascii?Q?3we1rLunBM3LN/oh+tD2CXc9d3lcuO2CjwJj5jNExbIAHiFGkH1/J/qRzVov?=
 =?us-ascii?Q?jUlNwhEBVOMEE+Jp/aNhlI9+tiD5M+LKVjkvB/fdRwkwtM6hbnfruB2HHuyX?=
 =?us-ascii?Q?K9DuGyo0wliLN8HYS4UfXbe7olxEV+eku93GBssbsVK4lCbWkrizLpofIyUb?=
 =?us-ascii?Q?2JlRp2GiqmOt6Ifx1O4afx54dJpJbXS5Jdosf+H4MrAWWN4QV0SKQN3rTbI4?=
 =?us-ascii?Q?cqAdBFqtNasnKnvI2EVwxixxlcr3KwsGQcXyZrygPMi7PLJWxQAnAq0KlGfr?=
 =?us-ascii?Q?ZOWFtApMFscottUssv4y2KRZAGLocWuOVqhgHwvnuHh34OLZUkKXGaTAArOg?=
 =?us-ascii?Q?I2AS92a+fqjVOM/ZBVYsVUBwxpM9kxSLk0nVWdMDNuaY60omHs+aAiGdohg1?=
 =?us-ascii?Q?1QJCYJciLCrU7RQrkBqOrYc3W2x2C5MTza2Gi+PU9FI40s5z6p//ENoQ9IvF?=
 =?us-ascii?Q?b1MnXa6eoTqj78w2K60I9IptSlQKAlM5VffH1dNbt5jeISUATA9fXR15bc/M?=
 =?us-ascii?Q?XuteDHVt/M6QYp28jXtk5SitaeiE8FjfjTG8WWVwvagRqPGVyghF9GErQVfc?=
 =?us-ascii?Q?cfEvqjgBUMGAbPLbSnSKGIbKY93r0PYc0u5gebCgxYGXauwdKcyJTmcLQUyv?=
 =?us-ascii?Q?F5VMkv0CogDC7rSCq3r9h6tWfIF+tYNEsPv0ENvWd8KUWJcWH4WFLGjKsWip?=
 =?us-ascii?Q?0o0tDeSBUvKF+WnxBbT63Cf4RMTK/jmzjJ7P9Ji7gE0NOvpC8eR14p3LnJlG?=
 =?us-ascii?Q?RhOZyDVyfm6tiemxhi89wt7j5PJ+fn+hfUOM2ms5A57eaz8iX5pAT7V5QZDZ?=
 =?us-ascii?Q?FjhfIfuF9B3MXX6HtRlUGl9/Zh0ryzRxVZWnReLcSFlSRZd6NbjBbiJPuap3?=
 =?us-ascii?Q?X9COSvWsghuelxN49MzCGfU/b7anFiAZfT3BLGE1W6v66xEAOFsdR5FeFPHq?=
 =?us-ascii?Q?vP7P4uVWtpsBXTUDvzuofBd5/8k4tZVoNhJy1komOM4X64GbpfYo4WxsOiD6?=
 =?us-ascii?Q?QgU/uv+mhwlLPDBrXR/p+fn/O2S7WMAF5wf3IoMyDJRNAvwJqfGMEZnzwm+K?=
 =?us-ascii?Q?8kZnhm2ykt3mgPsCJU6GiLFJS+u+zo2S?=
X-Forefront-Antispam-Report: CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2024 05:59:08.3822
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bc3fd65-184c-4d5b-9e1c-08dcb513b886
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: CH2PEPF0000013B.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_231445_370941_28CA0A2F 
X-CRM114-Status: GOOD (  17.58  )
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

From: Piyush Mehta <piyush.mehta@amd.com>

On a few Kria KR260 Robotics Starter Kit the PS-GEM SGMII linkup is not
happening after the resume. This is because serdes registers are reset
when FPD is off (in suspend state) and needs to be reprogrammed in the
resume path with the same default initialization as done in the first
stage bootloader psu_init routine.

To address the failure introduce a set of serdes registers to be saved in
the suspend path and then restore it on resume.

Fixes: 4a33bea00314 ("phy: zynqmp: Add PHY driver for the Xilinx ZynqMP Gigabit Transceiver")
Signed-off-by: Piyush Mehta <piyush.mehta@amd.com>
Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
---
Changes for v2:
- Use lower case for hex values.
- Add Fixes tag.
---
 drivers/phy/xilinx/phy-zynqmp.c | 56 +++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index cb15041371c9..e6579002f114 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -160,6 +160,24 @@ static const char *const xpsgtr_icm_str[] = {
 /* Timeout values */
 #define TIMEOUT_US			1000
 
+/* Lane 0/1/2/3 offset */
+#define DIG_8(n)		((0x4000 * (n)) + 0x1074)
+#define ILL13(n)		((0x4000 * (n)) + 0x1994)
+#define DIG_10(n)		((0x4000 * (n)) + 0x107c)
+#define RST_DLY(n)		((0x4000 * (n)) + 0x19a4)
+#define BYP_15(n)		((0x4000 * (n)) + 0x1038)
+#define BYP_12(n)		((0x4000 * (n)) + 0x102c)
+#define MISC3(n)		((0x4000 * (n)) + 0x19ac)
+#define EQ11(n)			((0x4000 * (n)) + 0x1978)
+
+static u32 save_reg_address[] = {
+	/* Lane 0/1/2/3 Register */
+	DIG_8(0), ILL13(0), DIG_10(0), RST_DLY(0), BYP_15(0), BYP_12(0), MISC3(0), EQ11(0),
+	DIG_8(1), ILL13(1), DIG_10(1), RST_DLY(1), BYP_15(1), BYP_12(1), MISC3(1), EQ11(1),
+	DIG_8(2), ILL13(2), DIG_10(2), RST_DLY(2), BYP_15(2), BYP_12(2), MISC3(2), EQ11(2),
+	DIG_8(3), ILL13(3), DIG_10(3), RST_DLY(3), BYP_15(3), BYP_12(3), MISC3(3), EQ11(3),
+};
+
 struct xpsgtr_dev;
 
 /**
@@ -209,6 +227,7 @@ struct xpsgtr_phy {
  * @tx_term_fix: fix for GT issue
  * @saved_icm_cfg0: stored value of ICM CFG0 register
  * @saved_icm_cfg1: stored value of ICM CFG1 register
+ * @saved_regs: registers to be saved/restored during suspend/resume
  */
 struct xpsgtr_dev {
 	struct device *dev;
@@ -221,6 +240,7 @@ struct xpsgtr_dev {
 	bool tx_term_fix;
 	unsigned int saved_icm_cfg0;
 	unsigned int saved_icm_cfg1;
+	u32 *saved_regs;
 };
 
 /*
@@ -294,6 +314,32 @@ static inline void xpsgtr_clr_set_phy(struct xpsgtr_phy *gtr_phy,
 	writel((readl(addr) & ~clr) | set, addr);
 }
 
+/**
+ * xpsgtr_save_lane_regs - Saves registers on suspend
+ * @gtr_dev: pointer to phy controller context structure
+ */
+static void xpsgtr_save_lane_regs(struct xpsgtr_dev *gtr_dev)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(save_reg_address); i++)
+		gtr_dev->saved_regs[i] = xpsgtr_read(gtr_dev,
+						     save_reg_address[i]);
+}
+
+/**
+ * xpsgtr_restore_lane_regs - Restores registers on resume
+ * @gtr_dev: pointer to phy controller context structure
+ */
+static void xpsgtr_restore_lane_regs(struct xpsgtr_dev *gtr_dev)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(save_reg_address); i++)
+		xpsgtr_write(gtr_dev, save_reg_address[i],
+			     gtr_dev->saved_regs[i]);
+}
+
 /*
  * Hardware Configuration
  */
@@ -837,6 +883,8 @@ static int xpsgtr_runtime_suspend(struct device *dev)
 	gtr_dev->saved_icm_cfg0 = xpsgtr_read(gtr_dev, ICM_CFG0);
 	gtr_dev->saved_icm_cfg1 = xpsgtr_read(gtr_dev, ICM_CFG1);
 
+	xpsgtr_save_lane_regs(gtr_dev);
+
 	return 0;
 }
 
@@ -847,6 +895,8 @@ static int xpsgtr_runtime_resume(struct device *dev)
 	unsigned int i;
 	bool skip_phy_init;
 
+	xpsgtr_restore_lane_regs(gtr_dev);
+
 	icm_cfg0 = xpsgtr_read(gtr_dev, ICM_CFG0);
 	icm_cfg1 = xpsgtr_read(gtr_dev, ICM_CFG1);
 
@@ -994,6 +1044,12 @@ static int xpsgtr_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	gtr_dev->saved_regs = devm_kmalloc(gtr_dev->dev,
+					   sizeof(save_reg_address),
+					   GFP_KERNEL);
+	if (!gtr_dev->saved_regs)
+		return -ENOMEM;
+
 	return 0;
 }
 

base-commit: de9c2c66ad8e787abec7c9d7eff4f8c3cdd28aed
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
