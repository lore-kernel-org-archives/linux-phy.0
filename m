Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52E43C79FAD
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 09:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpNRprdnIK0Fu0wTOZ5Z/Pf08LSqPEEmgNc0RIWoVlY=; b=bDbNt2GhtM2Fiv
	SyqnbLwR7cQHacnpHuUpd6i6FmQfSnaIAU+dFrNmhRhVH3YKaX3O4NF2klh8jur9/1s/fB2/XQ2Vu
	6d65f/YjH0wJzYn+1HGqnT/dziDsxt++HzGJmEAI4NZUZJHY4VLbP3cX63GSD+N4zlyPUsFQAeVYH
	sp8fCWru8WDCVES+IdWGxhtIigSZ3wMXSEH3X0NmQuwdYjOj7GxLr4WzeHB9BT9WHl0rMLAvfFIOi
	vzWkdyG9HsGt61lNz7sCA3EJJ/vBo+l5XuTmhxEztQfGEr6UfpizZ251mQ87zYXpEfW1hLN+heYHL
	1giWF7cUqZdEcQcH9zuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ErO-0000000BKot-49xK;
	Wed, 09 Sep 2026 09:44:55 +0000
Received: from mail-westus3azon11011014.outbound.protection.outlook.com ([40.107.208.14] helo=PH0PR06CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ErL-0000000BKmj-0bxC
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 09:44:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fik3Q9DsndOZUAlNzpZFsO9aEm+eJjTACw4um7yobPTunhNjoD4q+bD4PIgg0bKgrixYdJz0KMkkv6wM+Q/JqLt7ErXFiAEKd5/pu01HT3qvtYT44apY6k7GQilUMDnN581igHXjAoZNHD0pKbY41aO4TToNeNnRicyZgorqvXQ4pWGVMH4qYreUpiVOVb/M8qDdEBzCbaCVRtEX0ZmRGDPXacs6/BUDYsqQOPdzl0hv3HmvSS6cyMPR9BYu0EBsZJiK4+AltazrDcL37t9XRPhpxMfYPrn42HyI7C9rbtNiBFJ0QClT+ASQcW/AX+i+A+UFDSBlNJSF1DS2ThaP6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hBUb7+qDPERj8ip9/OoSWlfWbBkNeyVRs2gVbiCy5fk=;
 b=qOY6JFL1MNN00EYsjDHXTC0FRGSC5hJ+cGhcjf2SKEANz9bRkjiNujMHZ4sX6L1MWTTAXcasZJs8dHVwC0Lk2gIyuXyCRLeUDHtlV77AZHDddbRrG5+/u/eOmy1mnGLaaEeFQKLA0BsIrqr76u7sI6pJ5rp/L/I1VP5v5pzgSzfHojPiHReawPV9OXRQEgPyEsv9fHgAaDrEUYqdWqANJM60bNwM9RUXMOdJNw67mUzrhPKwX+OpY0jh6z7pXbUIZZwOCeCaexGCyl1xayWg9dhPgoTkHEk8o2+1dwq6znOLg1fEEho4uKC+miefHyEtrPsJpMoE/zRKcIPYb58ReQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hBUb7+qDPERj8ip9/OoSWlfWbBkNeyVRs2gVbiCy5fk=;
 b=ql7x3W/pH/liznU+VUBd+MHNkH6JlNc2aHDZoP2PORayAdaKiTQRFIHG89cpr7bM3yaPh+r3/dFYqB1dNJPplUKIJGwOd2SKhB8UcJDoBnjjvOTwf1vVf2rwNsotWI5lbXngZwCWWKws/jzSK5V7pXaxR4gWG1Kin3arpZkaEnWjaTJ5cmB8gLtafX4gR9Fyvl1qPd2NQ2OJ/ND+hnQQXdlkNKFowDsBBfJpE0YTtdt/6ERQnG6JjHnHhS7aPpjLZnD6lKxkfKW1l8INn66K22cagWPADDnbZhkq6lUDbXMPetnHRg44yJeUF9BMKEgrq0jyyepwjzsx8tRrgZtzZQ==
Received: from PH8PR21CA0005.namprd21.prod.outlook.com (2603:10b6:510:2ce::21)
 by PH8PR12MB7376.namprd12.prod.outlook.com (2603:10b6:510:214::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.406.7; Wed, 9 Sep 2026
 09:44:36 +0000
Received: from SA2PEPF000015CB.namprd03.prod.outlook.com
 (2603:10b6:510:2ce:cafe::1c) by PH8PR21CA0005.outlook.office365.com
 (2603:10b6:510:2ce::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.428.5 via Frontend Transport; Wed, 9
 Sep 2026 09:44:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SA2PEPF000015CB.mail.protection.outlook.com (10.167.241.201) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.406.5 via Frontend Transport; Wed, 9 Sep 2026 09:44:35 +0000
Received: from rnnvmail201.nvidia.com (10.129.68.8) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Wed, 9 Sep
 2026 02:44:17 -0700
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail201.nvidia.com
 (10.129.68.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Wed, 9 Sep
 2026 02:44:17 -0700
Received: from [127.0.1.1] (10.127.8.13) by mail.nvidia.com (10.129.68.7) with
 Microsoft SMTP Server id 15.2.2562.46 via Frontend Transport; Wed, 9 Sep 2026
 02:44:13 -0700
From: Kartik Rajput <kkartik@nvidia.com>
Date: Wed, 9 Sep 2026 15:13:58 +0530
Subject: [PATCH 1/2] dt-bindings: phy: Add nvidia,tegra264-mphy
MIME-Version: 1.0
Message-ID: <20260909-tegra264-mphy-v1-1-ce61a80dc065@nvidia.com>
References: <20260909-tegra264-mphy-v1-0-ce61a80dc065@nvidia.com>
In-Reply-To: <20260909-tegra264-mphy-v1-0-ce61a80dc065@nvidia.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter
	<jonathanh@nvidia.com>, Philipp Zabel <p.zabel@pengutronix.de>
CC: Thierry Reding <treding@nvidia.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kartik Rajput <kkartik@nvidia.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788947048; l=4601;
 i=kkartik@nvidia.com; s=20260909; h=from:subject:message-id;
 bh=cnapHYEC3l7lJ4WxhftdGeuPotiPWvSkBPkthE10S88=;
 b=/VEUJCBbj3/qGpCpFEqPe8t5XxT5WiWIHwypsQxjkR3+RxxLmGmIZ5hR9Am//7aDdKbkEwhK7
 iyYZ/tNoj7bBHwR9D8dDoQAzGoIkKsJPDsPpNifTuGyN2vmN/Dl/O+Z
X-Developer-Key: i=kkartik@nvidia.com; a=ed25519;
 pk=V+1YkJqxCruxUVxLXtAG3f5k8O5skT0X4/QIB75KZ64=
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF000015CB:EE_|PH8PR12MB7376:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e8d38ff-022a-4f05-64ff-08df0e56f583
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|36860700016|376014|23010399003|7416014|1800799024|13003099007|22082099003|18002099003|3023799007|56012099006|11063799006|10067099003;
X-Microsoft-Antispam-Message-Info: DYEJ+k1Rczobni7qcP+GWuqc4ehWdSKkFyHHLI+K6yWFxwf5DXaqGVefkYoY4dSZhJgub+MuTqnYuiL4/GymePdtW6Bvyx8D/U/o7/Ieozb3h5wlTEo9x2F5YX/D4qMH8CjeVDcp5nUo/4E3TBjTGiy8tbj0F7H0+B7hFLGqLLPP3GGRWUKv9njlS9a1Zqo0lRJHUilPbhasTbeDi3I2z4ivof4MoIg34BV7IzZsfBHW/e5CDh0DXAIY+B/2T1Opn6ORHpWlR4biO+YgLKwNwCC0kvUDCVbjyDr4nuf8cA9Zoa4x2BT3mn22CrZE/ythaW6f2JIsep0PgpLEDvrvTUytWhN0v6wqm1Ym9bBP41qW89m4g/m1aEQ+32vz2aTcQBk88k0luHS0hGcRpDVPG19voc4jDgu3AFFulgeZl2xwPEsq1jr6TjFs4rk+fLl8XiOahAgC7Jmirlg81MKowmbr1gO8TIuBY+jwukWY5vOoZusPMxuWotZHqwIf1jqZgH8Eais2WLJWH1B7PZxEdzxg88C0UacL6TyLkIYH7777w60p2JtpPpgYhazKyhqzUsgMFbkLO6lrwqFXYsa20HjzIMDdDugITfq5WSyZLph3dexgkHB7ecWir0NYej8Ay7DU9H/dhnA+GutYxixFKyrRsZSHdOga9Xd3Q2haYOuETYqRPR+jwdYIY4WDMHh8K++LRkdeIG7b109MZUKwxg==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700016)(376014)(23010399003)(7416014)(1800799024)(13003099007)(22082099003)(18002099003)(3023799007)(56012099006)(11063799006)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: DbmvfO5Ttkdiz1GHrhzciDC1xeXaOwhzQZfXZmXHRwnmLOlVyg1rg/ElPdnQ0+rgIDlFMKH/E+B/UGGnaO+EKQhSkY9MQFcd30c+4frt53rVJnZwMaKIaAScRkRf3DsvGOHM26RceAwnAFgGBjyzo98uNdED30BdMoTjxy72Sxu5Qrb9AYB3Qu8Jq5jU3iBDk8umfSc7fl+t5mVo31rIEBA242dnbqoof5HzG89jXTLCGmSMmVgiK4Qy8KP1Gx7sg47NUyK1MgCXvLQvQ743aj04yby4Pgdan4Kh2de2GGNChudPI3xd12j0fYTCnePxD24k/eT+LBmMXlyv9okyZq/QBYcWX5q6RRpWr9ugGazj3viSK7abRCiSU30hZda7dIQYN1aTr7WnbzlUqJdlkl7f3Qo2+p2VKSgPilcgnEIENg81uJFjRL+D5rjLpTAr
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2026 09:44:35.7351
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e8d38ff-022a-4f05-64ff-08df0e56f583
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF000015CB.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7376
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_024451_212955_35F4668E 
X-CRM114-Status: GOOD (  12.33  )
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

Add binding for the MIPI M-PHY on NVIDIA Tegra264 SoCs. The M-PHY is
a hardware block with two lanes, l0 and l1, used by the Tegra264 UFS
host controller.

Signed-off-by: Kartik Rajput <kkartik@nvidia.com>
---
 .../bindings/phy/nvidia,tegra264-mphy.yaml         | 108 +++++++++++++++++++++
 include/dt-bindings/phy/nvidia,tegra264-mphy.h     |  12 +++
 2 files changed, 120 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra264-mphy.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra264-mphy.yaml
new file mode 100644
index 000000000000..e2fb368e4a39
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nvidia,tegra264-mphy.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nvidia,tegra264-mphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra264 MIPI M-PHY
+
+maintainers:
+  - Kartik Rajput <kkartik@nvidia.com>
+  - Thierry Reding <treding@nvidia.com>
+
+properties:
+  compatible:
+    const: nvidia,tegra264-mphy
+
+  reg:
+    items:
+      - description: Lane 0 register window
+      - description: Lane 1 register window
+
+  reg-names:
+    items:
+      - const: l0
+      - const: l1
+
+  clocks:
+    maxItems: 11
+
+  clock-names:
+    items:
+      - const: pll
+      - const: tx-ref
+      - const: l0-tx-sym
+      - const: l0-tx-ls
+      - const: l0-tx-hs
+      - const: l0-tx-fifo
+      - const: l0-rx-sym
+      - const: l0-rx-ana
+      - const: l0-rx-ls
+      - const: l0-rx-hs
+      - const: l1-rx-ana
+
+  resets:
+    maxItems: 5
+
+  reset-names:
+    items:
+      - const: clk-ctl
+      - const: l0-rx
+      - const: l0-tx
+      - const: l1-rx
+      - const: l1-tx
+
+  '#phy-cells':
+    description: |
+      The cell selects one M-PHY lane direction. Valid values are defined in
+      <dt-bindings/phy/nvidia,tegra264-mphy.h>: TEGRA_MPHY_L0_TX, TEGRA_MPHY_L0_RX,
+      TEGRA_MPHY_L1_TX and TEGRA_MPHY_L1_RX.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nvidia,tegra264.h>
+    #include <dt-bindings/reset/nvidia,tegra264.h>
+    #include <dt-bindings/phy/nvidia,tegra264-mphy.h>
+
+    mphy: phy@b910000 {
+        compatible = "nvidia,tegra264-mphy";
+        reg = <0xb910000 0x10000>,
+              <0xb920000 0x10000>;
+        reg-names = "l0", "l1";
+        clocks = <&bpmp TEGRA264_CLK_MPHY_CORE_PLL_FIXED>,
+                 <&bpmp TEGRA264_CLK_MPHY_TX_1MHZ_REF>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_TX_SYMB>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_TX_LS_3XBIT>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_TX_HS_SYMB_DIV>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_UPHY_TX_FIFO>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_RX_SYMB>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_RX_ANA>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_RX_LS_BIT>,
+                 <&bpmp TEGRA264_CLK_MPHY_L0_RX_HS_SYMB_DIV>,
+                 <&bpmp TEGRA264_CLK_MPHY_L1_RX_ANA>;
+        clock-names = "pll", "tx-ref",
+                      "l0-tx-sym", "l0-tx-ls", "l0-tx-hs", "l0-tx-fifo",
+                      "l0-rx-sym", "l0-rx-ana", "l0-rx-ls", "l0-rx-hs",
+                      "l1-rx-ana";
+        resets = <&bpmp TEGRA264_RESET_MPHY_CLK_CTL>,
+                 <&bpmp TEGRA264_RESET_MPHY_L0_RX>,
+                 <&bpmp TEGRA264_RESET_MPHY_L0_TX>,
+                 <&bpmp TEGRA264_RESET_MPHY_L1_RX>,
+                 <&bpmp TEGRA264_RESET_MPHY_L1_TX>;
+        reset-names = "clk-ctl", "l0-rx", "l0-tx", "l1-rx", "l1-tx";
+        #phy-cells = <1>;
+    };
+...
diff --git a/include/dt-bindings/phy/nvidia,tegra264-mphy.h b/include/dt-bindings/phy/nvidia,tegra264-mphy.h
new file mode 100644
index 000000000000..e9e253cdf9ae
--- /dev/null
+++ b/include/dt-bindings/phy/nvidia,tegra264-mphy.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
+/* Copyright (c) 2026 NVIDIA CORPORATION & AFFILIATES. All rights reserved. */
+
+#ifndef DT_BINDINGS_PHY_NVIDIA_TEGRA264_MPHY_H
+#define DT_BINDINGS_PHY_NVIDIA_TEGRA264_MPHY_H
+
+#define TEGRA_MPHY_L0_TX	0
+#define TEGRA_MPHY_L0_RX	1
+#define TEGRA_MPHY_L1_TX	2
+#define TEGRA_MPHY_L1_RX	3
+
+#endif /* DT_BINDINGS_PHY_NVIDIA_TEGRA264_MPHY_H */

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
