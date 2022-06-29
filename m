Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E87FC43334
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 06:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AyEtAr6BpNZlHWLtlpKME+N+j5nuF5AFLnoLQTI00Q=; b=b2H7HlWAWm+KLQ
	WC9Fy+Spy5oJdDtYAiA79DLopKue8jDzBRDSCEgpjOe4PkPluS6pu31RwcV1CFWQF9SJ6XaIZD+Xs
	OZkNFZT0vZAVRegopLW8n7vdYnvND1euMUz7Zn/eU+0Tyw8ZAIv+O44hsqlUY7y3ULKTww04nGs3x
	P5c8w7AdF1T5M0KprhB7X7erC9SlLJd3ySgzCXWzB0qSBMumSAt5uTDnZfmlnh46/Ma9a3jImWiPt
	GKKD93KavxWgj/Foz9mPBIj+dEss6rY0O2n+e7q1kGjD+J4z2T2qZ4F4ydPLqvxgc/OvmdDoo8PfN
	sJ1N+jCS6TYU2r697MqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Qpc-009iIB-Fu; Wed, 29 Jun 2022 06:05:44 +0000
Received: from mail-dm6nam11on2065.outbound.protection.outlook.com ([40.107.223.65] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6QpZ-009iGV-Kk
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 06:05:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f+iwbocILzq8tCxQc4RKgkmIIuIpPr3Wn8hwEPs2H4U9unQE6BjCBjhlG9E6+4/MJgXixS/6F2PifNhne+j6C/RExXPXj5RdFv7rgqQsxCsTMsPGlYCeGQAyZphtAbQnMy5zlfVROgulnQBWcjgVo7b4Ktg8ldS2JFh3rhp1R6KTDpClbQWh7VnEYHdojtvQFc4aw+Kct6f+1y9ND9/dAlHeDKHmwgk7fUMKT+xmzvOaY+0+eoX8zZpEfWs/NTSeEGv+n+5UdRQWMDd92xDfgSks0fskkPQTWzj8FCtEyiqUEf6tGebKqrLEHekGdJVItXEPawOAjM+2tC7v24Bxww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7dgVX+ZtIeYYdCIOBo+FeCB1eTApjU70OFh7S56gmjI=;
 b=PfFSdCZ4OIIKltArQac+1vSCrDKWqBh02uSClt1pRUiG+5WCJNJQkGGAYn3WcGIGmC2OHNeVh5FGQneGvwXYclPtB83E0HuGrzm51dfyAmLu6Rz/kqhHLuxUPWH7+aCd2zgMMeZ+4s0XlqZXfv6bbmCKdgalYMtzBpFy2UMviRJ9uU8i+GWuy25NXF2DyBj9MTj/+oD8tkjrLoSidpYzyxY0MiMQm2xEPbEen8tpQjkRE9yHo/UIS07r02Qns3Dq6b1GMJytnQDdYz0O+3DRl6dbgBZnu46PSqsxrsEeMTqvc9KvvnyxlUHSROfUn+rm/xUHiDsQxPT2fwxXVRZ8Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 12.22.5.238) smtp.rcpttodomain=ti.com smtp.mailfrom=nvidia.com; dmarc=pass
 (p=reject sp=reject pct=100) action=none header.from=nvidia.com; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7dgVX+ZtIeYYdCIOBo+FeCB1eTApjU70OFh7S56gmjI=;
 b=Ogv7xkQ6SdQgdluXiJzwfj2WqQV0rEfeE3ZKrKdNE610VtdeTpgFN+NtBk1Zbv2zTfJfHn6t8fRwXcDmLY0E4AfD6o5UEmgANP7nFnQMlo4CMc1ZnwpS6keUc19ntKGzXy+cBfkzKB9FDYeyJvm9bMbDrZdRF3w83pR8eer7mHCgVAuPUpoaa+AC6PzsvNnZnAqIaZ+Yay1ctgzISYaerWutteWmBFUPT+7/Bg5Ew296iwIrLOaMiq1Jt3aeq6aSj3XjNJPKcPeJlBM936WncYBVUX+kPsTfVlEMXl/2+z6yVWoEtinu3/DnYPYvgvPmKAVMPT3avlgGVNYFLDomLg==
Received: from DM5PR07CA0050.namprd07.prod.outlook.com (2603:10b6:4:ad::15) by
 CY4PR12MB1271.namprd12.prod.outlook.com (2603:10b6:903:3d::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.18; Wed, 29 Jun 2022 06:05:37 +0000
Received: from DM6NAM11FT038.eop-nam11.prod.protection.outlook.com
 (2603:10b6:4:ad:cafe::10) by DM5PR07CA0050.outlook.office365.com
 (2603:10b6:4:ad::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16 via Frontend
 Transport; Wed, 29 Jun 2022 06:05:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 12.22.5.238)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 12.22.5.238 as permitted sender) receiver=protection.outlook.com;
 client-ip=12.22.5.238; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (12.22.5.238) by
 DM6NAM11FT038.mail.protection.outlook.com (10.13.173.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.5373.15 via Frontend Transport; Wed, 29 Jun 2022 06:05:36 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by DRHQMAIL105.nvidia.com
 (10.27.9.14) with Microsoft SMTP Server (TLS) id 15.0.1497.32; Wed, 29 Jun
 2022 06:05:36 +0000
Received: from rnnvmail205.nvidia.com (10.129.68.10) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Tue, 28 Jun
 2022 23:05:35 -0700
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server id 15.2.986.26 via Frontend
 Transport; Tue, 28 Jun 2022 23:05:30 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <bhelgaas@google.com>, <lorenzo.pieralisi@arm.com>, <robh+dt@kernel.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <kishon@ti.com>, <vkoul@kernel.org>, <kw@linux.com>, <krzk@kernel.org>,
	<p.zabel@pengutronix.de>, <mperttunen@nvidia.com>,
	<linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <kthota@nvidia.com>,
	<mmaddireddy@nvidia.com>, <vidyas@nvidia.com>, <sagar.tv@gmail.com>
Subject: [PATCH V3 08/11] phy: tegra: Add PCIe PIPE2UPHY support for Tegra234
Date: Wed, 29 Jun 2022 11:34:32 +0530
Message-ID: <20220629060435.25297-9-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220629060435.25297-1-vidyas@nvidia.com>
References: <20220629060435.25297-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b4430f0c-a72f-4a0b-e35d-08da599562cb
X-MS-TrafficTypeDiagnostic: CY4PR12MB1271:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	WIfYe5b2UylvjJWQ4FDLUgnY4gZThETAGS6w/VVc1FCWbxO8K5ocUWpWrCr0mZiMb6IoEUAAjGhevoaArC9vwzi0g25kJdoEJc9alcqYzStbimvxvdhMx0Jm/nJCwWVdZF/5KNSygJGSiUHKPv4YD51AWennaGebHB6DX2oCrur7jtTMhHbxhhxhLltwibalXcJsJFZralFeNs7h71MBBXK4adJqVyBQMkeEVGncWwLCmtD8Odhy0rMx1ZdNEheAoM6YaPouZRqfwH9CaQq2C7kG8V4CssEaC9zRHz6K7S/U8rls3qDL0mnP/0jGIMu0eKOdBdw4Nmv1AWBbjAEJcfZhkPqFbYfdXWFoKW/PFTM10pKGtarW33FYCddDAysw16t1+a8Ivvm4xujPC5NRdI07v0Nu1ECIYTmyhwUIbE9T0H8vW90tVD4ut+kywwG8ypsLHOC0hVLK0itKO15gNcU1vrreWS4cZJp++WhQOabr45o6sS6U5GXutqfweL7+N7aGFb3fWdoihHwkI9KCk/H94vVVAGXZYmGrEIMkPuQB9aN9FGkrSO/SV8a0L7H/6ci1tKmMqq4moZpVllo8qQipIXQaTLfohdMgMCVleZrbwgqAdQALNRAmemnLZUT5QEJKQFaFGSR+M0pcZpCY0SJcA0CUfAq8QrXm5dIWj3uJpXwfKhmBlVn/nwtE0dauuOUPRw4acNfkbYCeHfkycCh/N126MIos13++DBiEIMSxjLdbLZxheTX1A/vCrFJ/wYSNOt9lt36hgOKkxAzB3L7FV8mT6HPKxRwbSLcbsK3htQ2ceIz6Ia1Ydy+acpEWj/xaGdfeXSUv3Ejf8Vzi6g==
X-Forefront-Antispam-Report: 	CIP:12.22.5.238;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:InfoNoRecords;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(136003)(346002)(39860400002)(40470700004)(46966006)(36840700001)(36860700001)(82740400003)(83380400001)(40480700001)(86362001)(4326008)(478600001)(356005)(70206006)(70586007)(110136005)(54906003)(316002)(8676002)(6636002)(5660300002)(426003)(82310400005)(7416002)(1076003)(2616005)(47076005)(81166007)(7696005)(2906002)(26005)(336012)(36756003)(41300700001)(186003)(40460700003)(8936002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 06:05:36.6999
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b4430f0c-a72f-4a0b-e35d-08da599562cb
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[12.22.5.238];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DM6NAM11FT038.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1271
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_230541_754765_FFD45649 
X-CRM114-Status: GOOD (  15.39  )
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

Synopsys DesignWare core based PCIe controllers in Tegra234 SoC
interface with Universal PHY (UPHY) module through a PIPE2UPHY (P2U)
module. For each PCIe lane of a controller, there is a P2U unit
instantiated at hardware level. This driver provides support for the
programming required for each P2U that is going to be used for a PCIe
controller.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
V3:
* None

V2:
* None

 drivers/phy/tegra/phy-tegra194-p2u.c | 48 +++++++++++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/phy-tegra194-p2u.c b/drivers/phy/tegra/phy-tegra194-p2u.c
index 3ee02b9eb04f..1415ca71de38 100644
--- a/drivers/phy/tegra/phy-tegra194-p2u.c
+++ b/drivers/phy/tegra/phy-tegra194-p2u.c
@@ -2,7 +2,7 @@
 /*
  * P2U (PIPE to UPHY) driver for Tegra T194 SoC
  *
- * Copyright (C) 2019 NVIDIA Corporation.
+ * Copyright (C) 2019-2022 NVIDIA Corporation.
  *
  * Author: Vidya Sagar <vidyas@nvidia.com>
  */
@@ -14,6 +14,9 @@
 #include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 
+#define P2U_CONTROL_CMN			0x74
+#define P2U_CONTROL_CMN_SKP_SIZE_PROTECTION_EN			BIT(20)
+
 #define P2U_PERIODIC_EQ_CTRL_GEN3	0xc0
 #define P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN		BIT(0)
 #define P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN	BIT(1)
@@ -24,8 +27,17 @@
 #define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_MASK	0xffff
 #define P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL		160
 
+#define P2U_DIR_SEARCH_CTRL				0xd4
+#define P2U_DIR_SEARCH_CTRL_GEN4_FINE_GRAIN_SEARCH_TWICE	BIT(18)
+
+struct tegra_p2u_of_data {
+	bool one_dir_search;
+};
+
 struct tegra_p2u {
 	void __iomem *base;
+	bool skip_sz_protection_en; /* Needed to support two retimers */
+	struct tegra_p2u_of_data *of_data;
 };
 
 static inline void p2u_writel(struct tegra_p2u *phy, const u32 value,
@@ -44,6 +56,12 @@ static int tegra_p2u_power_on(struct phy *x)
 	struct tegra_p2u *phy = phy_get_drvdata(x);
 	u32 val;
 
+	if (phy->skip_sz_protection_en) {
+		val = p2u_readl(phy, P2U_CONTROL_CMN);
+		val |= P2U_CONTROL_CMN_SKP_SIZE_PROTECTION_EN;
+		p2u_writel(phy, val, P2U_CONTROL_CMN);
+	}
+
 	val = p2u_readl(phy, P2U_PERIODIC_EQ_CTRL_GEN3);
 	val &= ~P2U_PERIODIC_EQ_CTRL_GEN3_PERIODIC_EQ_EN;
 	val |= P2U_PERIODIC_EQ_CTRL_GEN3_INIT_PRESET_EQ_TRAIN_EN;
@@ -58,6 +76,12 @@ static int tegra_p2u_power_on(struct phy *x)
 	val |= P2U_RX_DEBOUNCE_TIME_DEBOUNCE_TIMER_VAL;
 	p2u_writel(phy, val, P2U_RX_DEBOUNCE_TIME);
 
+	if (phy->of_data->one_dir_search) {
+		val = p2u_readl(phy, P2U_DIR_SEARCH_CTRL);
+		val &= ~P2U_DIR_SEARCH_CTRL_GEN4_FINE_GRAIN_SEARCH_TWICE;
+		p2u_writel(phy, val, P2U_DIR_SEARCH_CTRL);
+	}
+
 	return 0;
 }
 
@@ -77,10 +101,19 @@ static int tegra_p2u_probe(struct platform_device *pdev)
 	if (!phy)
 		return -ENOMEM;
 
+	phy->of_data =
+		(struct tegra_p2u_of_data *)of_device_get_match_data(dev);
+	if (!phy->of_data)
+		return -EINVAL;
+
 	phy->base = devm_platform_ioremap_resource_byname(pdev, "ctl");
 	if (IS_ERR(phy->base))
 		return PTR_ERR(phy->base);
 
+	phy->skip_sz_protection_en =
+		of_property_read_bool(dev->of_node,
+				      "nvidia,skip-sz-protect-en");
+
 	platform_set_drvdata(pdev, phy);
 
 	generic_phy = devm_phy_create(dev, NULL, &ops);
@@ -96,9 +129,22 @@ static int tegra_p2u_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct tegra_p2u_of_data tegra194_p2u_of_data = {
+	.one_dir_search = false,
+};
+
+static const struct tegra_p2u_of_data tegra234_p2u_of_data = {
+	.one_dir_search = true,
+};
+
 static const struct of_device_id tegra_p2u_id_table[] = {
 	{
 		.compatible = "nvidia,tegra194-p2u",
+		.data = &tegra194_p2u_of_data,
+	},
+	{
+		.compatible = "nvidia,tegra234-p2u",
+		.data = &tegra234_p2u_of_data,
 	},
 	{}
 };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
