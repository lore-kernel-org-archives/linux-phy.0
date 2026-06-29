Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A587C43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 09:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2D+19XnjQkLXnXfwxBbPmqKqnNi4yt8e0E9ub8W6dU=; b=wIknnwTckap/yj
	uhhiLmXD7e/wmO7vsOhYtYTUCT9GLWsCvmxzZ3ea/epP9dxFAIhJCQGRXOBk2djMfyLrvSUGH0SXp
	y9Z7N74EwESU5KiSFEReEol7PFIhteipeYyLsFRloiiXzbX9J6d+3P/oxUNuVG5/o/4c1UyETF1pJ
	mKrJtxSvz+lO3T8TP5YmFfvAlh2jT6XBOnRIqxCtKBsQiNQGSfJNDGKQ99OTlZuE1V6zMOe5OnAAI
	G1pPnf9IPTQvBw17UaLIv0Hru+HVihKBfnfbnJ8cQAoYfXnA+1+/V/osafQICdglhVHK6tBQY3OKs
	jdmaZUwxT8tuByeBX5zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8Oc-0000000EBK8-0qM5;
	Mon, 29 Jun 2026 09:35:18 +0000
Received: from mail-northcentralusazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c105::] helo=CH1PR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we8OY-0000000EBHg-0eQt
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 09:35:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WRxHtQockBaMvZdxzUBUpUaatYesz9isgzYmA2TepY/tn0wvSHDOn2H224acgztpDMJGRZdVFs1CAySoVYuc44Ux49rlQ+IY19Rg9Z4Y3d9kOvk4yfi27+q56gwsh/zINgrp1CBOPR1f+XS3nADl7CmZ23dTRMeIcFA+etPhN6nBP3utZuoy29O7CR4ttkrFjcrwMJUwjfWjffwWizwH1LR6XzoUouR6lrujrZhPducRvVAx9FFiz0V3qdCetmbEYWUHpX0faj7f2YCKw3p7VQEqbwK+myhf1zJqTtKUj8hWUqMc0jYmMDXFSisuNot/wLLlQyTfocpDoFWCQCkqiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f77nFsBLy4oUu7X4Ye03YbZs00guH2zsDfExzvg8MqU=;
 b=wl8z/bedImorY2gN57Yzq81PF2jrQwnQoXZFK6w4BCjmGtQkm9NzWn5ekCzqux/axZZ1MiFGyY3wnHXZ04T1Vnkls+E/8dzpb9sAasdca+EPLkQGivKRfU4FPA3T2DiuvlNKix3Eo9ViPJU1csf7I54mDGBIT0o6GAIXp3nB7kkn++cZZ5UHw7g2Ono8SWi6cuKKyJWannPvCt3Iwpt7rZbVgNHqWCeSWAb11WVpqYI3ybd1SVpmNrRA9RrQRTCC3M7BWQrzmJEHNeeBvKoJPdET9thZjo89aB/WyGM9Udd3qBWC4Pk/R8HJqMc/x9/cwoMMXJf4YbL2fCXcpbrP9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f77nFsBLy4oUu7X4Ye03YbZs00guH2zsDfExzvg8MqU=;
 b=VgG5s+1nIwnaigXsivh2CUx+NSIBq63EVrt5gje6M92RtpnXFYmpa8zkIXGKF5/gqnc/6g4Xxyr15MnFGoes7KsWexNif5X6jCAyn7S52Um2MTngc05TrlXf+hmv6mvlcB0Gcy9rmstOMm2Sj05lpgZtI39bF6KC3gjuuNy1GwIRAkQ0ILb6t8PC18xZ3qCyI5sPooQv9Pmh1TtY2RgzBKsz+JUoniTeJ8UuMxPJRrQSoku4FPlgdybTH1q8BFq6A3CBOM+g8cz5E0y4zpkQxcN8FNNur89finrfTvHpes0I1Xywtmp84sCQ4c1X86IKpwY5G5BUSnLVXmKeaePfDA==
Received: from MN2PR07CA0023.namprd07.prod.outlook.com (2603:10b6:208:1a0::33)
 by PH8PR12MB8606.namprd12.prod.outlook.com (2603:10b6:510:1ce::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 09:35:06 +0000
Received: from BL02EPF0001A0FD.namprd03.prod.outlook.com
 (2603:10b6:208:1a0:cafe::29) by MN2PR07CA0023.outlook.office365.com
 (2603:10b6:208:1a0::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.159.19 via Frontend Transport; Mon,
 29 Jun 2026 09:35:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BL02EPF0001A0FD.mail.protection.outlook.com (10.167.242.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.6 via Frontend Transport; Mon, 29 Jun 2026 09:35:05 +0000
Received: from drhqmail202.nvidia.com (10.126.190.181) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.43; Mon, 29 Jun
 2026 02:34:53 -0700
Received: from drhqmail201.nvidia.com (10.126.190.180) by
 drhqmail202.nvidia.com (10.126.190.181) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 29 Jun 2026 02:34:53 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.180) with Microsoft SMTP Server id 15.2.2562.20
 via Frontend Transport; Mon, 29 Jun 2026 02:34:50 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH 8/8] usb: host: xhci-tegra: Add Tegra264 XHCI support
Date: Mon, 29 Jun 2026 17:34:06 +0800
Message-ID: <20260629093406.1118594-9-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260629093406.1118594-1-waynec@nvidia.com>
References: <20260629093406.1118594-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A0FD:EE_|PH8PR12MB8606:EE_
X-MS-Office365-Filtering-Correlation-Id: e1298b08-77fa-4d32-b42d-08ded5c1b3f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|36860700016|82310400026|23010399003|11063799006|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info: vn/JEaILR2AWpnTkXlQD1pj05WFjWgQdwEBBOBod86ihIYpxabMXqtyopIQ1XR0dGRuYu0T+h7YTsbmVgmo3DaixmcrcQN3nh2igl6Iw3DdG59U7ilJs3n75BPNg43HyPQK8YXF8u7RcdboBTgvq4BADGhyIwlGaSih11FrYK1ZGBvAcCiB9FedMoIYIR0CXtM9/nV07dTbogRjAxwoEM8lM5QUEE/ph9il0ZPC8/GvBAze0QvtGUQ1ebxqBWCuAmwuZdSEp6D5BdhCSObDzXw2NHasskHT9K9AXLLap4lxI9E0xPgmE0UsmAmtv5eSxVnZgiz8+OfXDAlV92UxAnrTo2yDYcZGXUUnXI7BctDk8DtPmd6fLPSdNNE030fYMrxBsrKO2RruG83+IPivyiXk59OTEW4jHA8CzKJ4ByXaXr9hcEv6/irpbLNCAdxM8mznBYDYsmO0jt9SS7SIrISc175jTy6TwdARNnCAE37YrhaLcFrqjaP+T54BL3ytxn/C/9QHTgmTCyBKPRMMeDMKZjmIrMGWb2Tep9mk7/TiXSWMru3vhzyyd1QZ14SYcC7s8yK6DmKE2eOwd/61b0Wmc8K4bVZJpWTxoQv45txfnubJ69ZDU9YF/J5GyrJPQwYEwV7C5u5x59BPsPSnBaambvGE8xsMqFr+ctc3N0MX8xEnhb7dFEdeV5PmC8r7jlfS3kEJY9OR6su2ivMbuUA==
X-Forefront-Antispam-Report: CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(36860700016)(82310400026)(23010399003)(11063799006)(18002099003)(22082099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: PP2GBtEzfYZMp3I7KVKp09l9EiIwyxOQf9WwTb5EOoA5hsdy9GZ+ipUh0W6qfznWkkunJjJHQeX9qj170r0jYcShiDAdc/txVvTYT2YHIKbZwusezeq5owRf+Te3SBoWYOVKaJLda1uVb/JIrOvUhHKSpGqYX/lY4yEbiuHkXA5g3Y+02Qtn0ImVrGT/gWuXKZbDrCjQqDqdvNC26FcPcKxihCErq1G/Tn8iD8SNY3ijgnOLeJ6rQT3/3VmpEtMgTa+y1tFUbdiRiLoAB3Fg/C/tKLlEFX9QowtJMl7wV1Gcl0pKP2IFPcA/vWCzNq3CCKVsJuVqyQO8y1VPHEaHLfx8EVEtEQ6IStur9Ci0rILqlQpT5ch6kY8A+76wN8zIeQfrnRPbMhx5z+RBwI/DUjL9qJRjBbBdG0aQOSXFBGoKtd2oYDLSCWUf8fvlmKV0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 09:35:05.6224
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1298b08-77fa-4d32-b42d-08ded5c1b3f8
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: BL02EPF0001A0FD.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB8606
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_023514_199008_FA223B5E 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
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

This change adds Tegra264 XUSB host mode controller support.
The host controller is very similar to the existing Tegra234 XHCI,
except the number of max_num_wakes.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 drivers/usb/host/xhci-tegra.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
index 7d56f35ec9e7..9a55d5818efb 100644
--- a/drivers/usb/host/xhci-tegra.c
+++ b/drivers/usb/host/xhci-tegra.c
@@ -2752,12 +2752,40 @@ static const struct tegra_xusb_soc tegra234_soc = {
 	.enable_firmware_messages = true,
 };
 
+static const struct tegra_xusb_soc tegra264_soc = {
+	.supply_names = tegra194_supply_names,
+	.num_supplies = ARRAY_SIZE(tegra194_supply_names),
+	.phy_types = tegra194_phy_types,
+	.num_types = ARRAY_SIZE(tegra194_phy_types),
+	.max_num_wakes = 8,
+	.context = &tegra186_xusb_context,
+	.ports = {
+		.usb3 = { .offset = 0, .count = 4, },
+		.usb2 = { .offset = 4, .count = 4, },
+	},
+	.scale_ss_clock = false,
+	.has_ipfs = false,
+	.otg_reset_sspi = false,
+	.ops = &tegra234_ops,
+	.mbox = {
+		.cmd = XUSB_BAR2_ARU_MBOX_CMD,
+		.data_in = XUSB_BAR2_ARU_MBOX_DATA_IN,
+		.data_out = XUSB_BAR2_ARU_MBOX_DATA_OUT,
+		.owner = XUSB_BAR2_ARU_MBOX_OWNER,
+		.smi_intr = XUSB_BAR2_ARU_SMI_INTR,
+	},
+	.lpm_support = true,
+	.has_bar2 = true,
+	.enable_firmware_messages = false,
+};
+
 static const struct of_device_id tegra_xusb_of_match[] = {
 	{ .compatible = "nvidia,tegra124-xusb", .data = &tegra124_soc },
 	{ .compatible = "nvidia,tegra210-xusb", .data = &tegra210_soc },
 	{ .compatible = "nvidia,tegra186-xusb", .data = &tegra186_soc },
 	{ .compatible = "nvidia,tegra194-xusb", .data = &tegra194_soc },
 	{ .compatible = "nvidia,tegra234-xusb", .data = &tegra234_soc },
+	{ .compatible = "nvidia,tegra264-xusb", .data = &tegra264_soc },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, tegra_xusb_of_match);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
