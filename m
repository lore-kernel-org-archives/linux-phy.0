Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F50C61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 18:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64ychEf5s+4klanekYYGaSsRPA36fYWU7WQ7L/ZvuKo=; b=y29kNm+GRFJaRA
	eU+dscMNvQtOs7wp5TwSyC8uK17IXq1xl2Bg1+c2q14QBmOnmST6LhR8PUNPov3ZT67ofOYnlTqs2
	2K9TI4EGhaEgAoI0iy4Z27tyAACLcAxiO0vXC8JKbL38UNsYXW06Vlz7S9moY6JdhHxfl0OaGg3ma
	CR2JrAVphHKM95OAhPXBK5gg8v/I3fE2xGrBWRrf+1buwy2Ssg3ha+URjsygORLnbQUhlv552kQv0
	y7CzzSC7wS9eSN56pOJw21WB0GGSgyISLQn2sWQD6rFtrBWmd39T2v5b76bWVYPq/OgeF6HH9p8jh
	6rlVxHyMiOXcn/2Si40w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17EY-0000000AKlv-1jMp;
	Mon, 31 Aug 2026 18:59:54 +0000
Received: from mail-northcentralusazon11010054.outbound.protection.outlook.com ([52.101.193.54] helo=CH1PR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17EW-0000000AKl2-0Zhl
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 18:59:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CTj75ETKeFrFJhDQfLVnpF9Prt14XYMpMqJ8gi3qWjlxxT0ip++qwJNWgIiP8n/ayhUNQssJEiKLWfIF9M3vJmVge0VqCJIegTP9ijvZ1E5tfOGBUL2mpb+vWDvhN5Yn0JwqS/D6p1XzRQGR4MEOwMGgJfDn0HJg8UZELfqj0FpTiSm1+vuZXvPWCBPeGNsw41sdFL9KCGnyGWkzl944nri5Zms3kmG8R9POCZ5APZWUyYBAqbObrGbWCG7YoC93jna0CjS1NEKsD658CK/6v5HAzA4IUFB7Hqz3tf8Z1MxxyZziSmf6g/kNiRQjmFbqAUpzmtFut1cQ0I657IynJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ZUOKVB3zVfcVFiE6o4zPiDtH4yw2dWnsldQwF5SKqs=;
 b=FwOK50Mryt+tb3ABS35TfHeC766GXsUIo8nbBGW9vfuj1ILQ0+4HEDCFxLTcWmsn5jt02t/EUIJ2J/8tVQC6E74SfDW/NnxHL+u3QSJ90Zki3i9eV6ipb41ZrfJzIw4TMkbdkpEPra8+azpNISfulps3U9rfdMkVhyF8dROo4wshc15zeo4frsOPulmlGk0JgzgMA7Wx0MBrxmDDbgLbe+yf1gxbqlIclSZU1izkx61rHxpQkw3DT/ydvri0hrsxV3pG2oH2R2oqktVtyQaiyoPv9iEwHv1ek4sQZTZlMv8QxcZ2LZU9hh48RwVjpH2p46WHffHwxXVbQBvcCBRHJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ZUOKVB3zVfcVFiE6o4zPiDtH4yw2dWnsldQwF5SKqs=;
 b=j1jNBhkA8VArDJie1a3zq+8ViEKwfM7UxObpiW8R3ohC1gl3j1Adf+qyC1RhrpKRzOhlgnUqsFPFEZlEVLmItMsR2BSDxhNk16zbKj9cEucO3EGiLsYwYIdE5vttHFDAP4Xa8qO8kGxTu1wMfgslxLmfQJZA3zeVQffr4K9m4ljfgwPDY+x3r2V3x5fd8jaYKprlH8295kU2js8gs7+pPIH8aP8maxc2b1CGGpywCgU5mNiNZdgLnlCFyXNPQZ2rVfTMg5XXOvxlJfeDUFWpyprSKaS63lXielxxelz4YnQzku1qa1foJPYxdoIMZ0ygVe2hIDpV320s7/P7Tkgflw==
Received: from SA9PR13CA0064.namprd13.prod.outlook.com (2603:10b6:806:23::9)
 by DSVPR12MB999262.namprd12.prod.outlook.com (2603:10b6:8:422::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.13; Mon, 31 Aug
 2026 18:59:44 +0000
Received: from SA2PEPF00003AE8.namprd02.prod.outlook.com
 (2603:10b6:806:23:cafe::e) by SA9PR13CA0064.outlook.office365.com
 (2603:10b6:806:23::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.382.10 via Frontend Transport; Mon,
 31 Aug 2026 18:59:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SA2PEPF00003AE8.mail.protection.outlook.com (10.167.248.8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.382.8 via Frontend Transport; Mon, 31 Aug 2026 18:59:44 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Mon, 31 Aug
 2026 11:59:11 -0700
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Mon, 31 Aug
 2026 11:59:11 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.8) with Microsoft SMTP Server id 15.2.2562.46 via
 Frontend Transport; Mon, 31 Aug 2026 11:59:08 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH V2 7/8] usb: host: xhci-tegra: Skip MBOX MSG_ENABLED on Tegra264
Date: Tue, 1 Sep 2026 02:58:34 +0800
Message-ID: <20260831185835.3732707-8-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260831185835.3732707-1-waynec@nvidia.com>
References: <20260831185835.3732707-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00003AE8:EE_|DSVPR12MB999262:EE_
X-MS-Office365-Filtering-Correlation-Id: 62a23a7c-40bb-405b-4ae7-08df07920548
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700016|7416014|376014|23010399003|82310400026|10067099003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: NRJECcDODa2jpp0TVDFy/2AB3mQK/wdwyiXok4RhGJVCcDqowBrySXdjhZaaO2l/9EAPAzcOnBiN4+emlV4L8LT8d62uqZUWiB41eHzJJPEJZJrveLjvq+n6ngFeYJxxE6ggXRFD3sM5cUcg1ULJzuQP/bzeFkcZvbsEha7xuR+QWSULt6Ksf3J/Bfyf9tRzi3kSYoqO937NznuVjCFrIIrbBWwHwULyuA/c+cWw0s4UXrm91thKmD8VO0aHtN1PLbn7e4HI9G2Yv+QZLvb4wZZgPgXBgLYtfCxnEe9og3LtQaPVp9+TByjmoOZ8nH9K/OGxmC5xDBgktVBDG+lAJDqtyh1ONj0Rp+RoZoZ3YMGdrwmuNcbayGHupjB+niWfhQ/4N9Lx12CfD2meybef9Ku0Zn0kAZnipRmEd8mgj6Jk951QaCYq/1C2zfyX9pHk+HafkGPvhso4oLx4TcpSYpHNe9mlfdOkuj97td52Rxq6sTSK+3myqqYu2AjF+XFYuowsTROiDm72+cXN6V/xCBdR/C79IuUklkhpLerMTj2f320Kw3/xhlwRG0Icnv045wAGRJYEffiaCxCyc8oKP/yEIE+tuHeFJ2ZIfz99t8jN9uCRYepUR0SqGy51XIYU+T8PGWR+/6pNuoEw/W/zKSw2UpT4y/uj22Eq38ICKxUfyzSRsEPinoEVLDh19rligpHHdTc5ZgbPZruaaNxmsw==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(7416014)(376014)(23010399003)(82310400026)(10067099003)(11063799006)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: Ic8s0jQi9zUcfexYYAr6M0shhq13svahho6EFixDTFZPvPN2aUuuLuYaw1mEu8enV+JOQ1vXo0vFQO8ywVIWNtoyf+m577DnENIt00iO83evD8lLVid/Q59i5I0N16L2w4J+feGrrUSCWr6LQ7cSSXgNDlvVeaZf4rTh14WFJFh7taY78Fsa4lz3VJ383ZrLADHWxzsxeN9XgtMDBU8IA6G8BKSmhPpRD+18o+L7z42Tbpm6Z4en2C9C4DdSGxZrh7N5HYCEBQlsapPsFnuL+04jVjdAZglIsYu3Vbk5tpOKHX6kwrh0KTmFtkfK9Pk5WRWkYhDseTb03NqzPqQ06+bFv8WdDzem6SJnwJv7dFD9zvmgLDMBdlkot+nz2Nmt1DkdcZQNyGID1pixn8tYtYMEmFIrtVs/doemmUpASbP2cgcC4RJ9BTLHqGEBAkWX
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2026 18:59:44.3714
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 62a23a7c-40bb-405b-4ae7-08df07920548
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF00003AE8.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR12MB999262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_115952_185519_49C88E87 
X-CRM114-Status: GOOD (  11.17  )
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

Tegra264 XUSB does not use the firmware mailbox handshake to enable
controller messages (MBOX_CMD_MSG_ENABLED). Add a per-SoC flag and
short-circuit __tegra_xusb_enable_firmware_messages() so both probe
and resume avoid sending the command.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V1 -> V2: No change
 drivers/usb/host/xhci-tegra.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/host/xhci-tegra.c b/drivers/usb/host/xhci-tegra.c
index e7e6d569f1db..7d56f35ec9e7 100644
--- a/drivers/usb/host/xhci-tegra.c
+++ b/drivers/usb/host/xhci-tegra.c
@@ -250,6 +250,7 @@ struct tegra_xusb_soc {
 	bool otg_set_port_power;
 
 	bool has_bar2;
+	bool enable_firmware_messages;
 };
 
 struct tegra_xusb_context {
@@ -1260,6 +1261,9 @@ static int __tegra_xusb_enable_firmware_messages(struct tegra_xusb *tegra)
 	struct tegra_xusb_mbox_msg msg;
 	int err;
 
+	if (!tegra->soc->enable_firmware_messages)
+		return 0;
+
 	/* Enable firmware messages from controller. */
 	msg.cmd = MBOX_CMD_MSG_ENABLED;
 	msg.data = 0;
@@ -2580,6 +2584,7 @@ static const struct tegra_xusb_soc tegra124_soc = {
 		.owner = 0xf0,
 		.smi_intr = XUSB_CFG_ARU_SMI_INTR,
 	},
+	.enable_firmware_messages = true,
 };
 #if IS_ENABLED(CONFIG_ARCH_TEGRA_124_SOC) || IS_ENABLED(CONFIG_ARCH_TEGRA_132_SOC)
 MODULE_FIRMWARE("nvidia/tegra124/xusb.bin");
@@ -2621,6 +2626,7 @@ static const struct tegra_xusb_soc tegra210_soc = {
 		.owner = 0xf0,
 		.smi_intr = XUSB_CFG_ARU_SMI_INTR,
 	},
+	.enable_firmware_messages = true,
 };
 #if IS_ENABLED(CONFIG_ARCH_TEGRA_210_SOC)
 MODULE_FIRMWARE("nvidia/tegra210/xusb.bin");
@@ -2670,6 +2676,7 @@ static const struct tegra_xusb_soc tegra186_soc = {
 		.smi_intr = XUSB_CFG_ARU_SMI_INTR,
 	},
 	.lpm_support = true,
+	.enable_firmware_messages = true,
 };
 
 static const char * const tegra194_supply_names[] = {
@@ -2704,6 +2711,7 @@ static const struct tegra_xusb_soc tegra194_soc = {
 		.smi_intr = XUSB_CFG_ARU_SMI_INTR,
 	},
 	.lpm_support = true,
+	.enable_firmware_messages = true,
 };
 #if IS_ENABLED(CONFIG_ARCH_TEGRA_194_SOC)
 MODULE_FIRMWARE("nvidia/tegra194/xusb.bin");
@@ -2741,6 +2749,7 @@ static const struct tegra_xusb_soc tegra234_soc = {
 	},
 	.lpm_support = true,
 	.has_bar2 = true,
+	.enable_firmware_messages = true,
 };
 
 static const struct of_device_id tegra_xusb_of_match[] = {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
