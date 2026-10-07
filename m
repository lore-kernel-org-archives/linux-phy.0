Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C9BACA5FFC
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 14:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhbUX2pAOuuMrpsk5Yk6ITXB9bWMGSJ8EZAopuCG4lk=; b=AjVknHo1CAK95T
	LkIoCBV5DtbYpcC8HEvP25KKDf7PgdObBlWiymlL2FMBeA2TfKsfVigwwYohu5ICdD9V8LHarLhEc
	XR+F4RHSsSwjc6wT11e7FQWTEZRyCaIfIcsFPxNtnTxpW5b6PMWwLux+308qmjDqKdDq8sbnqwrH3
	/sPVWnyTOfUWFdilR50elquKFtpO1cx1jAo1wkws593zg6ocBhGJ5vDYon1fqAsjd+uVdOQDp5cSc
	xqbcNN6rg4HAL/kDs2DTCtYmzi0FOa9QZXmjA8wCMIQR6LINdMA1bBoRFgM5R2vgLGMknGEX52F2w
	riCCAYc5K+nibFQhx1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xESuD-00000002e6m-1Hjp;
	Wed, 07 Oct 2026 14:46:05 +0000
Received: from mail-westus2azon11012071.outbound.protection.outlook.com ([52.101.48.71] helo=MW6PR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xESu6-00000002e3G-3i9g
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 14:46:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P6uQitAM5A9Pcx/SYya8zcAChVfM02MhKZDizmXZxlsBNLwJHsODs7b802rTbBvD5tMvz/bH9FqYEGnSM73rYKol4BEPXe29qYznOsh4BwgKFLnj54xFqgl5xi5LaXW3Z9p8Rw8l4hsWceaJ5uHA9BChB4DiIm6I/wrpsWJYEcwGMDAWeGV1rON62jYPNNj5yhM+tntR2t3eYJcyylkZqoQ5FO+n2NH+zzIbHIeVrQ+h4f0sE5xbKPVr59ZPSb0zVyNKCoZ54B7cXuHkjp7Pp4MUjujgSfDCNxfo456kBtRSih0L1xYPJhvA0WCU/pfwkKhK0VVINPsaey4yekam9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GbGLkRxUVrPuGhBxJbzcg6lbFQYow1jOGnrTwd4T4XQ=;
 b=g7GtGxVlaKmjlcQwCAuMpdUzcvq8xlay1ACqxDVa7uHUBF0RyiUUpi0ooGb1gNexjYfCVM+WUyczsYQuF5qm0piHTOJeo1jF3HQgk43Ihy5VmEOnNSEOyZcxullF7mqwtP6hSifVqXsYw3MA0zwrsgCBrqrRamvQu2e3VJzGR4yDurKsAkdjXL4d0OV9189U0y/OdOGTiXt/pLWsZdoM/nvcyZoqG7HTEvqDWpejwT+cyA3liLdhatHRULsxZJhrMJDeYgbownEg5AA85cH8jHnfnxnCH5Dywy4/1umB+lid1Jy0vqqnkEIu/Hvovsi0xbIhWD11zcC/i8ub9AgVZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GbGLkRxUVrPuGhBxJbzcg6lbFQYow1jOGnrTwd4T4XQ=;
 b=SSgxcwceq/bGjVYtuODlTPWRrXw+jbV/OdoiVhCGSP9kwze9EUkCgAn4KrbVhHGad35RvdvXEo5SVxr4NT6HjqElDaHUy8uJV0DdoBWiijL/pqcwNKA9ufBnpbOqJHXuPlqZrwfepVX/PNelRfFk7szmkrUyjSnh1V0VVwJfF6OfalaZebDB7HPfpd7Y77MkjFPwdyQiD5I8E7csTbZoLkoG3DXEhSpafmP/H9ZYwtaRCd3+DPgREGxkh/H/aG0zq3fJ+qqO6pKxo01H+HzhDsQNplovBpfPJwA/fo0o0DdoKarJovQwfOyV8LhO/wn+2wI7q5tW8tfnr7oxyaiP9g==
Received: from MN0P220CA0025.NAMP220.PROD.OUTLOOK.COM (2603:10b6:208:52e::33)
 by SN7PR12MB7348.namprd12.prod.outlook.com (2603:10b6:806:29b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Wed, 7 Oct
 2026 14:45:44 +0000
Received: from IA0PEPF00000040.namprd04.prod.outlook.com
 (2603:10b6:208:52e:cafe::1c) by MN0P220CA0025.outlook.office365.com
 (2603:10b6:208:52e::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.472.20 via Frontend Transport; Wed, 7
 Oct 2026 14:45:43 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 216.228.117.160) smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 IA0PEPF00000040.mail.protection.outlook.com (10.167.249.168) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.496.14 via Frontend Transport; Wed, 7 Oct 2026 14:45:43 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Wed, 7 Oct
 2026 07:45:12 -0700
Received: from [127.0.1.1] (10.126.230.37) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.49; Wed, 7 Oct
 2026 07:45:07 -0700
From: Jon Hunter <jonathanh@nvidia.com>
Date: Wed, 7 Oct 2026 15:44:43 +0100
Subject: [PATCH v3 3/3] phy: tegra: Add support for Tegra238 XUSB pad
 controller
MIME-Version: 1.0
Message-ID: <20261007-tegra-phy-v3-3-d501de414710@nvidia.com>
References: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
In-Reply-To: <20261007-tegra-phy-v3-0-d501de414710@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>, JC Kuo <jckuo@nvidia.com>
CC: Thierry Reding <thierry.reding@gmail.com>, Wayne Chang
	<waynec@nvidia.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>, Jon Hunter
	<jonathanh@nvidia.com>
X-Mailer: b4 0.16.1-dev
X-Originating-IP: [10.126.230.37]
X-ClientProxiedBy: rnnvmail201.nvidia.com (10.129.68.8) To
 rnnvmail201.nvidia.com (10.129.68.8)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PEPF00000040:EE_|SN7PR12MB7348:EE_
X-MS-Office365-Filtering-Correlation-Id: ff7c8c5b-7078-4e17-5bc3-08df2481aa7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|23010399003|82310400026|36860700016|1800799024|10067099003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: zJwZ45VbVVPaJ3ovbb4Uc1/NJYKtIp1V1+smqVU/CE1rscFvNfNxnp3B4hA7J+Rlhka4XGlI1xCVJYBwY+ndRxXNm2cz90JycmitG1hfarhDmD++AU6MCMhwMMSXo1Hdj/nkD723twUYNJgidOfu6v9skooPU5Jd5O0TZzEgXqhcyAPRNf+9IZcp02ofpQjNEBUCOItUaLrbY2VVkv7X4mVSZbqA6s8xZtPutJyYn73sfgHNPYucTeUL1anxjML/zgOQHkDHI4nelYF4WbmfkjkfID8AkpzyRgUijJAHBnDapWmRqYkZiGbAZJlsdIdPxlfPCu12ig1/aFv3vZuvLt4fjrF9J6ClZW8dsukADH1WZdMNM70cMUlSS4Q5HrpfG1RqGWNVk90V2/CYmprHY9tmvL58gqXyDsWDPjGRSLefcZnWRLXwf4nMpP1SOvSC7US6ACzZShqOdDPcVeG2aIynKETr8d2dTFALCwUNsyS2w3EDJ9iBwTndMYBnGcrFBNSKqC8ZN//U/oD8DuIu75orWetsieoZ/FNC5SX16AMsGJZwnQhillQLALnTZIAlLAKvBsAK7+C/5Xb6Doks7B4dulwXxtloie7E6Xz5lMmIJyT0aTnANCI9EhmfBwfEjQ/LeLKQoTtseLuo4FjgzE5AjM8KI6UbIcpUDmidKUNnvJFtrUrY22sScHaGB/FBej1MOA4+aA9M0RHU9RvqSQ==
X-Forefront-Antispam-Report: CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(82310400026)(36860700016)(1800799024)(10067099003)(56012099006)(11063799006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: BN2taJNZZigpinpmnOs1rOCE7Ib406t5SyrZnCiZzBLeq52r+9a6x2JdXt9lIKNT84LrqboweNoSbzKeIA29HRT+fLksJpQxX7/ZUsmVEkOaTqcCDI97xm3NylsgTjj0p2DRA22n5P7nhHsNM+RuOAY4uhAyjJDUzYU5FwvfDevi7iEMujtgUYRMMrEoannukD/MoIi6L0OlJwkJUqvTAPTyxih+s1/UmHfJw/rtcB0SwXQvV8BhJmR42jQou0yUKXx5q8dPf0GmJ7AH/6epoXzCK+779/Ab2dqhm5tqvh/L5rXjDoRo0D21+4WipcBflr51nJNax4H+TmSMZPg03FVyt2Ko7aJtQ0Fz3MVbw8MhnZfl+kZFAdcJcPIt4cgAbKdvFbk8q1FYIOROluSddCf7ScTOb+YYcKgTx3I/Uj5KQHfQc7Pq6o3T8NMmfu68
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2026 14:45:43.7765
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff7c8c5b-7078-4e17-5bc3-08df2481aa7d
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: IA0PEPF00000040.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7348
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_074559_036384_24A149BF 
X-CRM114-Status: GOOD (  13.56  )
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

Add support for the Tegra238 XUSB pad controller by populating the
Tegra238 specific SoC data for the controller. The Tegra238 has three
USB2 and USB3 ports, uses the same port ops as Tegra186 and has the
same supplies as Tegra194. Due to the dependencies the Tegra238 device
has on the Tegra186 port ops and Tegra194 supplies, drop the compile
time guards around these structures.

Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
 drivers/phy/tegra/Makefile        |  1 +
 drivers/phy/tegra/xusb-tegra186.c | 29 +++++++++++++++++++++++------
 drivers/phy/tegra/xusb.c          |  6 ++++++
 drivers/phy/tegra/xusb.h          |  3 +++
 4 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/tegra/Makefile b/drivers/phy/tegra/Makefile
index f5ed9582d80b..018a4cab2b40 100644
--- a/drivers/phy/tegra/Makefile
+++ b/drivers/phy/tegra/Makefile
@@ -8,6 +8,7 @@ phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_210_SOC) += xusb-tegra210.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_186_SOC) += xusb-tegra186.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_194_SOC) += xusb-tegra186.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_234_SOC) += xusb-tegra186.o
+phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_238_SOC) += xusb-tegra186.o
 phy-tegra-xusb-$(CONFIG_ARCH_TEGRA_264_SOC) += xusb-tegra186.o
 obj-$(CONFIG_PHY_TEGRA194_P2U) += phy-tegra194-p2u.o
 obj-$(CONFIG_PHY_TEGRA_MPHY) += phy-tegra-mphy.o
diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 322efdea0d80..aa8ab94fad4c 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -1599,7 +1599,6 @@ static const struct tegra_xusb_padctl_ops tegra186_xusb_padctl_ops = {
 	.utmi_pad_power_down = tegra186_utmi_pad_power_down,
 };
 
-#if IS_ENABLED(CONFIG_ARCH_TEGRA_186_SOC)
 static const char * const tegra186_xusb_padctl_supply_names[] = {
 	"avdd-pll-erefeut",
 	"avdd-usb",
@@ -1665,11 +1664,7 @@ const struct tegra_xusb_padctl_soc tegra186_xusb_padctl_soc = {
 	.num_supplies = ARRAY_SIZE(tegra186_xusb_padctl_supply_names),
 };
 EXPORT_SYMBOL_GPL(tegra186_xusb_padctl_soc);
-#endif
 
-#if IS_ENABLED(CONFIG_ARCH_TEGRA_194_SOC) || \
-	IS_ENABLED(CONFIG_ARCH_TEGRA_234_SOC) || \
-	IS_ENABLED(CONFIG_ARCH_TEGRA_264_SOC)
 static const char * const tegra194_xusb_padctl_supply_names[] = {
 	"avdd-usb",
 	"vclamp-usb",
@@ -1755,6 +1750,29 @@ const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc = {
 };
 EXPORT_SYMBOL_GPL(tegra234_xusb_padctl_soc);
 
+const struct tegra_xusb_padctl_soc tegra238_xusb_padctl_soc = {
+	.num_pads = ARRAY_SIZE(tegra186_pads),
+	.pads = tegra186_pads,
+	.ports = {
+		.usb2 = {
+			.ops = &tegra186_usb2_port_ops,
+			.count = 3,
+		},
+		.usb3 = {
+			.ops = &tegra186_usb3_port_ops,
+			.count = 3,
+		},
+	},
+	.ops = &tegra186_xusb_padctl_ops,
+	.supply_names = tegra194_xusb_padctl_supply_names,
+	.num_supplies = ARRAY_SIZE(tegra194_xusb_padctl_supply_names),
+	.supports_gen2 = true,
+	.poll_trk_completed = true,
+	.trk_hw_mode = false,
+	.supports_lp_cfg_en = true,
+};
+EXPORT_SYMBOL_GPL(tegra238_xusb_padctl_soc);
+
 const struct tegra_xusb_padctl_soc tegra264_xusb_padctl_soc = {
 	.num_pads = ARRAY_SIZE(tegra194_pads),
 	.pads = tegra194_pads,
@@ -1778,7 +1796,6 @@ const struct tegra_xusb_padctl_soc tegra264_xusb_padctl_soc = {
 	.has_per_pad_term = true,
 };
 EXPORT_SYMBOL_GPL(tegra264_xusb_padctl_soc);
-#endif
 
 MODULE_AUTHOR("JC Kuo <jckuo@nvidia.com>");
 MODULE_DESCRIPTION("NVIDIA Tegra186 XUSB Pad Controller driver");
diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 0635f0d82c96..89ce9ac87300 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -78,6 +78,12 @@ static const struct of_device_id tegra_xusb_padctl_of_match[] = {
 		.data = &tegra234_xusb_padctl_soc,
 	},
 #endif
+#if defined(CONFIG_ARCH_TEGRA_238_SOC)
+	{
+		.compatible = "nvidia,tegra238-xusb-padctl",
+		.data = &tegra238_xusb_padctl_soc,
+	},
+#endif
 #if defined(CONFIG_ARCH_TEGRA_264_SOC)
 	{
 		.compatible = "nvidia,tegra264-xusb-padctl",
diff --git a/drivers/phy/tegra/xusb.h b/drivers/phy/tegra/xusb.h
index d8d799d9e752..b9de4f3b5781 100644
--- a/drivers/phy/tegra/xusb.h
+++ b/drivers/phy/tegra/xusb.h
@@ -514,6 +514,9 @@ extern const struct tegra_xusb_padctl_soc tegra194_xusb_padctl_soc;
 #if defined(CONFIG_ARCH_TEGRA_234_SOC)
 extern const struct tegra_xusb_padctl_soc tegra234_xusb_padctl_soc;
 #endif
+#if defined(CONFIG_ARCH_TEGRA_238_SOC)
+extern const struct tegra_xusb_padctl_soc tegra238_xusb_padctl_soc;
+#endif
 #if defined(CONFIG_ARCH_TEGRA_264_SOC)
 extern const struct tegra_xusb_padctl_soc tegra264_xusb_padctl_soc;
 #endif

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
