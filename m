Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD6AC43327
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXJGsxd0nlUq3RlBIpbrZQgJt5RSTHWT9X95L3vpddI=; b=zCgNWHWlok22G6
	lfjpJicnB55Dp73RpcDEoVlBihINV8qNZxD5lFwmulHBhTNjcqC/MvNlAFDmul7kufz07lccrz4fz
	7DYztgriRBfx1pP5XlQ55ZfmeAPfNAcs0QpBp5D6PiwJeeE55lQOFUAz4lwdVISGVjvn9Cqc49Iym
	QBKUYouUtMXkO23b+DvfL2eNeHQ3qWEBhfl7hbnkJZWC1KgPHBGiz0Nx3sAw4agnhoa1a3+v66/fL
	HJ6lnpDYl9pSLSLHfpdqyQG55VMOroP9RhZXxS4suzjPXqPJ1xKOrUcU3yJJ1W9iJ+0Hy9h1Lge97
	UF8tuhlU+wehIL5nsXAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8OZ-0000000EBIg-0bal;
	Mon, 29 Jun 2026 09:35:15 +0000
Received: from mail-westus2azon11010057.outbound.protection.outlook.com ([52.101.46.57] helo=CO1PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8OW-0000000EBH1-3Jfn
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:35:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WSJcRX7iItLR/lgPUo3Z313O7KdHtEciR89N9j7z+F5Q0pcK6cJGA9owu6xHQptjO4tjR+7RRnlovIy5/vZV2aUDgDtX95DG0m/2UX0O32f0x7u2U4JgwCST4uv+z8mFD8NxhEcSRm0mF8JxJYtdtP2JJmqdUr1yyDaoF/8+ypM0HI1nb+bcqAHiKppdsUTVCqC1bzR84RZF6peBXWvl1vftL8+mkhWwpclGwNskfENiD5NdfR7IXznvpZM7bJ+2XmebNd7/Sth4HAxnQs3Lo4I0fIistpEId0JVz0rKipN76lC2P8UTtVDcZNvDEu/GIaRPY2yNV5H6Y+e76DLIjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GCDOZe+FJCM67SWpllPL6d1X2RilFHx5nRNNuDmmoww=;
 b=A+y/kfF+fSuXno/H7tC1qNb/zqhWzLDtg81rTG9kQd6peJkC8vcCw4PN7CvLwR1nhQgKDI9Umt+XX5kspiwQ+AyCI3EdkF1bhIF576wa1ORU39NkZFSYDOLriDsJxzMgieCFcX4QJ7CSRYnbDGx4B8qgicysucBgkjGtdqoUcbbh3ZF/G6wf9b4pzhQ+EGDkkL96ymeuxxoV8YgnW7b2KLNqaFS5OBCZAJ96WLntGx21w5Knd5pNKZsEU8zJg+j5X62Px8/14HoQ17XeEny11ywlCG26/HfX5EZy65duZ0uB/BwYr6sQiCEDam3XQUh4C5XsHbR31/94dV5LzqGCFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GCDOZe+FJCM67SWpllPL6d1X2RilFHx5nRNNuDmmoww=;
 b=Odzdvuxeh/w5m/q6IihDL7Ig2jCh5vJ9YL039byRhoJf3cMp2dcR8FjX1I4chY6pBVPuv6qvBx7swKjSebGJ+wjdDp+pOoP1hpP2f2m7esu4GGrvziXMME7o8yhxFwYroHI+ExJjF3iMyqDIHEcf2rxSt72xm0Q35k3zKgob5OBDT/PDarOTVGrQ38V93V5cIDzMQ0RZ5dbzHe1LnrBi3deYPwHvUZaAF62yCx0eHxShUpFhLq+R5ZvzzeH/6HK31Q0dN/oWJqAAs71SZi+0jobo4X/EsNPMkxTLfxYn0I45KApB/3321sZqptJIkNvDpuX/bxRmZ29XXOGPAETh3g==
Received: from BLAPR03CA0034.namprd03.prod.outlook.com (2603:10b6:208:32d::9)
 by SJ0PR12MB7066.namprd12.prod.outlook.com (2603:10b6:a03:4ae::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 09:35:00 +0000
Received: from BL02EPF0001A100.namprd03.prod.outlook.com
 (2603:10b6:208:32d:cafe::55) by BLAPR03CA0034.outlook.office365.com
 (2603:10b6:208:32d::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.19 via Frontend Transport; Mon,
 29 Jun 2026 09:35:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BL02EPF0001A100.mail.protection.outlook.com (10.167.242.107) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Mon, 29 Jun 2026 09:34:59 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Mon, 29 Jun
 2026 02:34:45 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 29 Jun 2026 02:34:44 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.2562.20
 via Frontend Transport; Mon, 29 Jun 2026 02:34:42 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 6/8] phy: tegra: xusb: Add Tegra264 support
Date: Mon, 29 Jun 2026 17:34:04 +0800
Message-ID: <20260629093406.1118594-7-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260629093406.1118594-1-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A100:EE_|SJ0PR12MB7066:EE_
X-MS-Office365-Filtering-Correlation-Id: e149e58c-b375-4e87-5074-08ded5c1b092
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|7416014|376014|23010399003|1800799024|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: xFruJDHE8W0H7McqBMWoVSKM4sF6fWLCK6BBCtlnq3oHLz1zN9yKTJYJ0XRHbY1w56g/B/Wmoj25hKbR6a68TjmylUsAh+q10qP5LBBrTBjajYcWB3mpta8g41KsOa8AISG8nTZztvaoYxUj6lXOGnI98fjuOn8YwIb+ornUDUC/mqYfylzOfHYIe9LVqpLFyGM+D26mbVeiBFMXpQtnX+gp9mwhViVGCM7L6ERbJhyRkJPkNBvL8cZV/5SPr23LbhQVHHIFl7/CBD+yOebJjFuECiBPuoUWbO6B6ODtwQBmn1U4YW2t+8tf53f4S+8XGftrnjEete0ZH5lT+ZGzGumCLBK9Xvf+M5HeX8bBL8po007i/gGeV/40M2ZF/tsQDP+xAeQaomNslf75D/VcHGauU+n2huEBNEwEa7IVs5jl8eKfoCvb+t1/jqndfdkMsPhavE2n2CPQXyL6VBzm1xc7XuNy3WQ+/D7Ki6GvMCQMI2DGfcBfoDKJbZdRE31mzFcOe8K9GqmX0COvJf3HsZ5klIHEVTHyvPv3KqsjTUH3yEBD8ZPGMZY82l5iOrjcf28kCY2jR0gzu7UC6/tcCREUILlAWT9R25jxQ4koFKKcm/2zh6cistbATiz34sgecvvS3wbI3pG8s7tsMKvofnQgoYhIuZLkyWn9owal9p3hDciwsddqhXFaySLNuCAnysXhhJx/tcZSsTIIwPK35Q==
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(7416014)(376014)(23010399003)(1800799024)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: W4GDOgAsJkx+lAs+vJIR0viPctqIn1AVsZbwB6rEbS+7Z8ZqDGevnSiDztVn3J2/ntGMJtPdABHoEMNi/q0R5CKehV5fsqxdovAUfej0uPJ74QNy55ta+TSM6Wik2VaOPIkh8UxbEYoM6IqTLSiNvo+TVexG3GKuL0stxPE++vCGFymP9pLx/wfcM3RBdqstNy7Lgy1r9IjZR8gyYamf0TeSfaW945T3HYkk7f9/jZxDdwVhEPieFXAs0i0l0D/25QxJpSzXFREfYgFuugJAweYlwlAu67/pjtmMOrp94FAw68qDFXViUJ5dMEmuRVRf2TU9Cfq+vBGm6pJqLqBSmF0cq3TXHQI4h7Yy22ixHYf4ZrvRfShKeS+Fxoq+EdhwKNk6W1vN8S4ZKFB39JhUemd0pqVbQka1QhK1W5gmfjNlxP7k1hls6lnYTz0a8wyV
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 09:34:59.8993
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e149e58c-b375-4e87-5074-08ded5c1b092
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF0001A100.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_023512_839405_B5DDC7EC 
X-CRM114-Status: GOOD (  11.77  )
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

Add support for the XUSB pad controller for Tegra264. Most of
the Tegra264 XUSB PADCTL registers definition and programming sequence
are the same as Tegra234, Tegra264 XUSB PADCTL can share the same
driver with Tegra186, Tegra194, and Tegra234 XUSB PADCTL.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/phy/tegra/Makefile        |  1 +
 drivers/phy/tegra/xusb-tegra186.c | 26 +++++++++++++++++++++++++-
 drivers/phy/tegra/xusb.c          |  6 ++++++
 drivers/phy/tegra/xusb.h          |  3 +++
 4 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
index eeeea72de117..33a695d4ed59 100644
--- a/drivers/phy/tegra/Makefile
+++ b/drivers/phy/tegra/Makefile
@@ -8,4 +8,5 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_210_SOC) += xusb-tegra210.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_194_SOC) += xusb-tegra186.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_234_SOC) += xusb-tegra186.o
+phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_264_SOC) += xusb-tegra186.o
 obj-$(CONFIG_PHY_TEGRA194_P2U) += phy-tegra194-p2u.o
diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 9c1bcd4a72ac..3eb60ed09b68 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -1668,7 +1668,8 @@ EXPORT_SYMBOL_GPL(tegra186_xusb_padctl_soc);
 #endif
 
 #if IS_ENABLED(CONFIG_ARCH_TEGRA_194_SOC) || \
-	IS_ENABLED(CONFIG_ARCH_TEGRA_234_SOC)
+	IS_ENABLED(CONFIG_ARCH_TEGRA_234_SOC) || \
+	IS_ENABLED(CONFIG_ARCH_TEGRA_264_SOC)
 static const char * const tegra194_xusb_padctl_supply_names[] = {
 	"avdd-usb",
 	"vclamp-usb",
@@ -1753,6 +1754,29 @@ const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc = {
 	.has_per_pad_term = true,
 };
 EXPORT_SYMBOL_GPL(tegra234_xusb_padctl_soc);
+
+const struct tegra_xusb_padctl_soc tegra264_xusb_padctl_soc = {
+	.num_pads = ARRAY_SIZE(tegra194_pads),
+	.pads = tegra194_pads,
+	.ports = {
+		.usb2 = {
+			.ops = &tegra186_usb2_port_ops,
+			.count = 4,
+		},
+		.usb3 = {
+			.ops = &tegra186_usb3_port_ops,
+			.count = 4,
+		},
+	},
+	.ops = &tegra186_xusb_padctl_ops,
+	.supply_names = tegra194_xusb_padctl_supply_names,
+	.num_supplies = ARRAY_SIZE(tegra194_xusb_padctl_supply_names),
+	.supports_gen2 = true,
+	.poll_trk_completed = true,
+	.trk_hw_mode = true,
+	.supports_lp_cfg_en = true,
+};
+EXPORT_SYMBOL_GPL(tegra264_xusb_padctl_soc);
 #endif
 
 MODULE_AUTHOR("JC Kuo <jckuo@nvidia.com>");
diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 9d74c0ecc31b..d0d0b252a205 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -77,6 +77,12 @@ static const struct of_device_id tegra_xusb_padctl_of_match[] = {
 		.compatible = "nvidia,tegra234-xusb-padctl",
 		.data = &tegra234_xusb_padctl_soc,
 	},
+#endif
+#if defined(CONFIG_ARCH_TEGRA_264_SOC)
+	{
+		.compatible = "nvidia,tegra264-xusb-padctl",
+		.data = &tegra264_xusb_padctl_soc,
+	},
 #endif
 	{ }
 };
diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index 77609e54de66..d8d799d9e752 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -514,5 +514,8 @@ extern const struct tegra_xusb_padctl_soc tegra194_xusb_padctl_soc;
 #if defined(CONFIG_ARCH_TEGRA_234_SOC)
 extern const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc;
 #endif
+#if defined(CONFIG_ARCH_TEGRA_264_SOC)
+extern const struct tegra_xusb_padctl_soc tegra264_xusb_padctl_soc;
+#endif
 
 #endif /* __PHY_TEGRA_XUSB_H */
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
