Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9148FC43219
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 12:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8h55KrrPCAau5QLqtYsyR7PoJZuBajjjFZ4Mvafxe4=; b=GAESXTA1j8nEUB
	9mptX2heJ90mnL9d2H3aMRD5vr0FsJksRrG+fOaNhaJvUFPQqQnZF/jCJImbYlPMPoXKmHmjjpUNo
	ynFdCw4RB3bshVGNcs19RbbaA6EE7DWAWKf9CPw//8b+d7Vm43RrzufN/xgDMYNPLf8cGhn6IxYSk
	tyg39eGdjcEUJwyDDSKVdopdLTJHN3m3mNF/H6/YF3AtCXRsEUKDrWQJXGctYQ2CsoPD+kH/28CqS
	dWpkVlRenDm4LYJPzRL7+CnorWy5MUi0t7FPz/7oZtIVTb3+o4suPScOmyWPhgvP4C2Uuq9EIztN2
	+nT/gMoMDpe0ELpWU8xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYmL-000rME-Tb; Mon, 14 Nov 2022 12:41:33 +0000
Received: from mail-bn8nam11on20600.outbound.protection.outlook.com ([2a01:111:f400:7eae::600] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouYmJ-000rJA-BM
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 12:41:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CsQXLvU0diBDA+agxqeSel4hUL2BVFli1FWwcAfkb5iooPkstEbYfRqPWAt+IiN5+CpUXIS6vSuCUwbg2B5W3YJGtMSwaJfWAZ2Kfxyw9c3VUkIU23K6HCqKiPk+8mt4Fj7aC3NOgjLGCqXAmyyhOTZd40vJesrYs3RU8jQgYOvrpbhRpNe9/bOrFVvntjc/wrldF/MNOCwUOQM4BBkFWc3+egK/hNq3QrnSNAKnex+tymcLi/9bFTYW37MPAm6nWD0BYYd2jkkaWB9FSD7Ky1yIW+64BFzO8BrorSOp3ORQ+EE93h8Taj2JMdXU8U6/tn43IwaSaMliglY+JU5ZBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i14052cemxdsNgWt/KEXP2FfebpooznZIeQjObVBvFc=;
 b=h+Ky+f6Je56U5gRzKHszmr+zdoIRU6SBogz1g2kOODeIl7WOuBRC7aewS2xmiAQoIxR4ReFyZxNsU7eTzUq6gpb/SJeSVsiNw1u0y+Z4ti2CCNntvNFASzEjj31zY6zj0lhzG/lkvQNCN83cXsdkIXDtV+erUDY/rPf2ytQnsxdI+vpcqysxBnW2bcvWv9+8qUhYARIKfF1FwCiSEzMJ80wb4RlSTS1pOUReCMZFS4aKKM5vKRFcqqncCnsj9fpjQ66aVhAG4VnG+F44fH/6poq3D54lcGER2TUUiUPvMjML1nxT/E3r+Y4WarCvwjY9xJuHLshF+BxluVJKwbCOWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i14052cemxdsNgWt/KEXP2FfebpooznZIeQjObVBvFc=;
 b=e2WDxOrVrdTnTEtEoaHhk3YpI//qXVTlopbgXy5qNNYQXm0zFCTyyPVAvqWQ6QbWGWgzU1UsDCVrc1/AFEQIC79jLpuI0wUUyAZ22+wMT6awfEEutc4ipKwGsWZ7Iy94pQWwSJCdrmce868qrii+GwJgb9lRixRm7c7K7BMcdsjt47lbcdJt5QMjruUpo9vPLdCurS8laZavvcny3I64eab85YSKikuxDpPZSCAeiaslwTwYAOcTUzdcmkGziProwfBVKXOpz743u4SWgOcsXRSe04HnRUwA8AUZ6WkIScwVX5k+hqs/7cwepCZ+z8fAhKp2ILGKfIZ898Ybw+N2HQ==
Received: from BN9P222CA0020.NAMP222.PROD.OUTLOOK.COM (2603:10b6:408:10c::25)
 by BL0PR12MB4898.namprd12.prod.outlook.com (2603:10b6:208:1c7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.16; Mon, 14 Nov
 2022 12:41:22 +0000
Received: from BL02EPF0000EE3D.namprd05.prod.outlook.com
 (2603:10b6:408:10c:cafe::ff) by BN9P222CA0020.outlook.office365.com
 (2603:10b6:408:10c::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17 via Frontend
 Transport; Mon, 14 Nov 2022 12:41:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 BL02EPF0000EE3D.mail.protection.outlook.com (10.167.241.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.11 via Frontend Transport; Mon, 14 Nov 2022 12:41:21 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:07 -0800
Received: from rnnvmail202.nvidia.com (10.129.68.7) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Mon, 14 Nov
 2022 04:41:07 -0800
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.7) with Microsoft SMTP Server id 15.2.986.36 via
 Frontend Transport; Mon, 14 Nov 2022 04:41:03 -0800
From: Wayne Chang <waynec@nvidia.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<heikki.krogerus@linux.intel.com>, <ajayg@nvidia.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>, <balbi@kernel.org>, <mathias.nyman@intel.com>,
	<jckuo@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<singhanc@nvidia.com>, <linux-i2c@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH v3 02/13] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host controller binding
Date: Mon, 14 Nov 2022 20:40:42 +0800
Message-ID: <20221114124053.1873316-3-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114124053.1873316-1-waynec@nvidia.com>
References: <20221114124053.1873316-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0000EE3D:EE_|BL0PR12MB4898:EE_
X-MS-Office365-Filtering-Correlation-Id: f1e6182d-4c2f-425b-2017-08dac63d88f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	XTBY/wz16qjyW3JpyjnYwpjJ1XkNcTQj05+ncnQ2HkAgu5k1nkcO/3TOUOKCPPgdNu1xyUl7Wuf0O3/RH9nN3dRj/HXRM1Goowa5mwamGdOV3esiqfGw46NiXv2RByswpmausZ9AKzlcuQElzQLKsjQQtoFuwLT1haRSH9PycREkaplAV6wLb0axG+8vrXiVf+KGs7RP/K4p7PvSQYSSgnRm0rQUP8PQvket0YWTyNY/gn0sfeYj011gp1ru2uVmaJnDg1EqpTrZz2wpSmtrfj8iEgd0nFwP+FMOFVgBG+VYqcz9Cj57CBvoYfG/PgTqcvxCsIYbLXez/fvSNB74qAWvu1gnNUQ8hoQWiJUrxUyz3Qh3Mvm/9Sd2uoccYcH4Pcu5CjI7mMGiLp9F3wH+/ETW1kN2jGGmjC2mLbebJ/S1nai1CwGC+SS7LUvDEf6MuQ3ul9a47Q+t2TBCQL1futSBY48nz7x1TTUaL9sFYOyAK5HFB5lmtkOwlpvUUPyX7HjWXlwbS7Z1ikbHc8qL5YXkKLtpvXAAU2v3me5Foh5w5cN6dh9/OYDVyc548eMPUXAWuP1r9fxLcKXJ7D0VQOV8C5Mo4IvMf74MrbVaEFIjDL+OTDmiQFr2+/e0YvJQ2LIsx5f4kjpVr85AlrYQenDC47VvZR470Y1i0iAHKMRxqAehhxv25NgifQvgk0f4yApAoHImC4L2TQxRy+XUC5FQAYUqNN/vnytN3lNJgTGXtZPj8uGSW6HoxlJbtBAz3x1RvLuxoD7G7cORTaPMuVcoi3W1Exs/8sUOWsBM/GkXQDuXu5KZ9/+09dmhAvTL+bOnn2xUXzWB4GRgOCYcuYciryqOvWdlPIZ+93ExX+GjdWslbJhSBJCba/rA09/y3IJIwWX0fZC1J1aByQFuymX+p2cezxPrvsp5ds02Xoc=
X-Forefront-Antispam-Report: 	CIP:216.228.117.160;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(136003)(396003)(376002)(451199015)(46966006)(40470700004)(36840700001)(966005)(478600001)(54906003)(110136005)(6636002)(426003)(316002)(336012)(186003)(2616005)(1076003)(6666004)(47076005)(7696005)(26005)(5660300002)(41300700001)(8936002)(4326008)(83380400001)(7416002)(8676002)(36860700001)(2906002)(70206006)(70586007)(82740400003)(36756003)(921005)(7636003)(356005)(82310400005)(40460700003)(86362001)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 12:41:21.7476
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f1e6182d-4c2f-425b-2017-08dac63d88f4
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.160];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BL02EPF0000EE3D.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4898
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_044131_415716_ECB992FC 
X-CRM114-Status: GOOD (  12.91  )
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

Add device-tree binding documentation for the XUSB host controller present
on Tegra234 SoC. This controller supports the USB 3.1 specification.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
depends on the following change
https://lore.kernel.org/all/20221003125141.123759-1-jonathanh@nvidia.com/
V2 -> V3:nothing has changed but added the dependency here
V1 -> V2:new change for adding nvidia,tegra234-xusb.yaml
 .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 ++++++++++++++++++
 1 file changed, 159 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml

diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
new file mode 100644
index 000000000000..d78ee88ed208
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
@@ -0,0 +1,159 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/nvidia,tegra234-xusb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra234 xHCI controller
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Jon Hunter <jonathanh@nvidia.com>
+
+description: The Tegra xHCI controller supports both USB2 and USB3 interfaces
+  exposed by the Tegra XUSB pad controller.
+
+properties:
+  compatible:
+    const: nvidia,tegra234-xusb
+
+  reg:
+    items:
+      - description: base and length of the xHCI host registers
+      - description: base and length of the XUSB FPCI registers
+      - description: base and length of the XUSB bar2 registers
+
+  reg-names:
+    items:
+      - const: hcd
+      - const: fpci
+      - const: bar2
+
+  interrupts:
+    items:
+      - description: xHCI host interrupt
+      - description: mailbox interrupt
+
+  clocks:
+    items:
+      - description: XUSB host clock
+      - description: XUSB Falcon source clock
+      - description: XUSB SuperSpeed clock
+      - description: XUSB SuperSpeed source clock
+      - description: XUSB HighSpeed clock source
+      - description: XUSB FullSpeed clock source
+      - description: USB PLL
+      - description: reference clock
+      - description: I/O PLL
+
+  clock-names:
+    items:
+      - const: xusb_host
+      - const: xusb_falcon_src
+      - const: xusb_ss
+      - const: xusb_ss_src
+      - const: xusb_hs_src
+      - const: xusb_fs_src
+      - const: pll_u_480m
+      - const: clk_m
+      - const: pll_e
+
+  interconnects:
+    items:
+      - description: read client
+      - description: write client
+
+  interconnect-names:
+    items:
+      - const: dma-mem # read
+      - const: write
+
+  iommus:
+    maxItems: 1
+
+  nvidia,xusb-padctl:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the XUSB pad controller that is used to configure
+      the USB pads used by the XHCI controller
+
+  phys:
+    minItems: 1
+    maxItems: 8
+
+  phy-names:
+    minItems: 1
+    maxItems: 8
+    items:
+      enum:
+        - usb2-0
+        - usb2-1
+        - usb2-2
+        - usb2-3
+        - usb3-0
+        - usb3-1
+        - usb3-2
+        - usb3-3
+
+  power-domains:
+    items:
+      - description: XUSBC power domain
+      - description: XUSBA power domain
+
+  power-domain-names:
+    items:
+      - const: xusb_host
+      - const: xusb_ss
+
+  dma-coherent:
+    type: boolean
+
+allOf:
+  - $ref: usb-xhci.yaml
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/tegra234-gpio.h>
+    #include <dt-bindings/clock/tegra234-clock.h>
+    #include <dt-bindings/memory/tegra234-mc.h>
+    #include <dt-bindings/power/tegra234-powergate.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    usb@3610000 {
+      compatible = "nvidia,tegra234-xusb";
+      reg = <0x03610000 0x40000>,
+            <0x03600000 0x10000>,
+            <0x03650000 0x10000>;
+      reg-names = "hcd", "fpci", "bar2";
+
+      interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+             <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
+
+      clocks = <&bpmp TEGRA234_CLK_XUSB_CORE_HOST>,
+         <&bpmp TEGRA234_CLK_XUSB_FALCON>,
+         <&bpmp TEGRA234_CLK_XUSB_CORE_SS>,
+         <&bpmp TEGRA234_CLK_XUSB_SS>,
+         <&bpmp TEGRA234_CLK_CLK_M>,
+         <&bpmp TEGRA234_CLK_XUSB_FS>,
+         <&bpmp TEGRA234_CLK_UTMIP_PLL>,
+         <&bpmp TEGRA234_CLK_CLK_M>,
+         <&bpmp TEGRA234_CLK_PLLE>;
+      clock-names = "xusb_host", "xusb_falcon_src",
+              "xusb_ss", "xusb_ss_src", "xusb_hs_src",
+              "xusb_fs_src", "pll_u_480m", "clk_m",
+              "pll_e";
+      interconnects = <&mc TEGRA234_MEMORY_CLIENT_XUSB_HOSTR &emc>,
+          <&mc TEGRA234_MEMORY_CLIENT_XUSB_HOSTW &emc>;
+      interconnect-names = "dma-mem", "write";
+      iommus = <&smmu_niso1 TEGRA234_SID_XUSB_HOST>;
+
+      power-domains = <&bpmp TEGRA234_POWER_DOMAIN_XUSBC>,
+          <&bpmp TEGRA234_POWER_DOMAIN_XUSBA>;
+      power-domain-names = "xusb_host", "xusb_ss";
+
+      nvidia,xusb-padctl = <&xusb_padctl>;
+
+      phys =  <&pad_lanes_usb2_0>;
+      phy-names = "usb2-0";
+
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
