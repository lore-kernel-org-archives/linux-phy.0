Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9CEDC38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 07:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oE0+pf/FspsQxfEs+JieLD0qT2VhaWuPTeXfAzK8Y3I=; b=0kbjd6FkBTkLzt
	mZL9QFz6mvRNElFyJxu3eeI2PAZoox79i2rskjtmcZDT/KbSZKoYaoP1otx4hXag6s4GoZvRxiZMU
	KJz0ALz1LPEN6TJWtFqM1ti5A+uqtLeigotm0dH01N31KYlrSFfrvc0tQuzOxog+3jSfpCOt7aRyl
	89qbRbm43g+bysqb7qOs2pKWMxau80fAmBuncpKalxaS334NI1Lw7xIpbBgaZb11efIoblakiBFha
	iI3wEHfwcXCqRYoGIZgmwsGZDQWBGWuMjR9q2HUNI1sW9jOpefmqlUSB7Q6v/ILDWyt5bXYIaSueR
	V5DJ59t3NS8uH5TagD8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms6D-00HWS1-8g; Mon, 24 Oct 2022 07:42:17 +0000
Received: from mail-bn8nam12on2064.outbound.protection.outlook.com ([40.107.237.64] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oms69-00HWQL-UW
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 07:42:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QRAIDRrL9hhp6gCeQWUjvnLMvBLYMDq5j4gduxIHR1mdWTq/0xePoEBNGcxsswx2F6vlAQkXWvl3ZFnR2Lmv+hj7eQZXSLAARe9361vo42Z5b1KGmTe/0fMB0GPSHuNBeleEvzTll0+TG+vhA3IcQjHfusdxBBJ0S8rh/AC0TW04n/Z5IL/9WPnaPqv6ItP3jRmyQQ04rf8NM2SnUKzI3bTpHiGKbtBkHgnD9qm3xgoAifm/WawoyEfjyY0vRd6MexohqyK2OoGro3GFMf/m6fAnimja5yUFUbLOsD/+vD42LWYuNg7sYMWsSdfGw94xxN0dysS2cCySJOUEkMfj7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AhSz5jILqnukDwOGOPi+0uJTqbDtoYlWacteSGGHesE=;
 b=LlAI0fqMT7evrpieEK8O/ACuI8roaz95jRGcuQbaf2N53PT7qOQqXXQ2nlIRtmgEZrX9MHPtPe2fde5xFPb0HoVnLZIqgThTJ4LRFw0T9UhGlQ0Q2ZPEvPni1D6WhGbAOzrm8k8qI4anUcxczdH6a1y+Ono6GoxIWiM8i1Sf5tlok5qYB+LIOR7wfTbtzZ2VnqPxYCaUNZo6Igirz9YZ1fozg0H/S3KHH1OuZ40GdS3G+03P0u0+uDUuap6uY/0EAdZTF34JPozfLRi9ul1sxNTduoiIXmcJvBN84QkvsbuuceON3W5iHDEn+aKZunc8rDmJ6LUCbcHyIwdQflR5vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.118.232) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=nvidia.com; dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=nvidia.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AhSz5jILqnukDwOGOPi+0uJTqbDtoYlWacteSGGHesE=;
 b=RRaik/uVQJeH0M9HnleC4TbK8Opp98VqWyDGakID6Pr8HTQ9SQvoBMpGn6Ef5Z3X4sDl/MgS6zMPHakHFpLC8NfvXHVj+a3DgmBwRBXZ/vcvcfNztgHlxtqj1XO+Rx3cB5JVJxAmjVowfbayChHG3IkiaFle6IdKSJTbKxIjI8XsuQYn140nC5TfnN//5BsZ5hMQ5vqQWq28vbfkZqf2Uv5CZlUChv1M5V87k9+AY/aXmKY45LvOPne/YkPOXeq9oZntyJtiP6P0w7FKLuUY2IcHREqbDOj0lAg8As5JrWng3WJnGBya6j0MUei/k5cGicDUPGzUVjag78u31NT8jA==
Received: from BN0PR07CA0024.namprd07.prod.outlook.com (2603:10b6:408:141::33)
 by MN2PR12MB4223.namprd12.prod.outlook.com (2603:10b6:208:1d3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Mon, 24 Oct
 2022 07:42:08 +0000
Received: from BN8NAM11FT055.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:141:cafe::c6) by BN0PR07CA0024.outlook.office365.com
 (2603:10b6:408:141::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23 via Frontend
 Transport; Mon, 24 Oct 2022 07:42:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.118.232)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.118.232 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.118.232; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.118.232) by
 BN8NAM11FT055.mail.protection.outlook.com (10.13.177.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.16 via Frontend Transport; Mon, 24 Oct 2022 07:42:07 +0000
Received: from drhqmail203.nvidia.com (10.126.190.182) by mail.nvidia.com
 (10.127.129.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.26; Mon, 24 Oct
 2022 00:41:52 -0700
Received: from drhqmail203.nvidia.com (10.126.190.182) by
 drhqmail203.nvidia.com (10.126.190.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.29; Mon, 24 Oct 2022 00:41:52 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.126.190.182) with Microsoft SMTP Server id 15.2.986.29
 via Frontend Transport; Mon, 24 Oct 2022 00:41:49 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <thierry.reding@gmail.com>,
	<heikki.krogerus@linux.intel.com>, <ajayg@nvidia.com>, <kishon@ti.com>,
	<vkoul@kernel.org>, <p.zabel@pengutronix.de>, <balbi@kernel.org>,
	<mathias.nyman@intel.com>, <jckuo@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<singhanc@nvidia.com>, <linux-i2c@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
Subject: [PATCH 04/11] arm64: tegra: Enable XUSB host and device on Jetson AGX Orin
Date: Mon, 24 Oct 2022 15:41:21 +0800
Message-ID: <20221024074128.1113554-5-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221024074128.1113554-1-waynec@nvidia.com>
References: <20221024074128.1113554-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8NAM11FT055:EE_|MN2PR12MB4223:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cc9531a-2032-4b9b-9702-08dab59340d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	oMs3i0TzDcnR8fOI+wBZQvraq8z1ExXeOpPqb9cLDFly8aI/xwyi4dYhioF947W+jgFPiesojdYM3XraL7nSsX56gw/rifupashy3ClSigRkaTx8gRztktIWiE/VA93kDjzCrLXuvjHn6SXc84MObQrzGNvpx7TNBSI7xDHbXs7STeRQ1qm0DEhWnQ6osAYpCH9p266NUYMdcAZtML3ZgdOAYR0z3OL7pB9jesfe9MFX+xOsmzfl0kCWki/QyFEkT6ewJRjiPDm1dOGhd+xo3I0jxeGDJ8VoKdebKzfdPm2zxiPZkSx4NHGPVaVPVoxolWFVnkrHn9YBYyXkAFGL2wCpK1usUnOuRgoQnRqaYWvSMjQP6yMGf5o0Ee//0hJz9Kwqko1p5loHYdIZw5Op62c3Dm66/ejY2Yl1nR6bSFOw7eOAmMAy7FXywMaq4tQP3Y6N5XpqQs1Y51FCPU91ySj9B2akdYYRuJ6+SRVaoRCzAKoeV6N0GizLbk/eqm//zeekxqIzbW9godj4PAs5C4Musi7tSGcT8YDTY8097OH7nx/6vbKMWXIQ+m08S18meYB3MDH5xF78dzsb4a+/roo5K9Y95faHi/7GmpYkfgn2I1LYOUID726z0ScvyBJLCf6zS3mmYnUf4l/HZNO1pYKxH2LjdwEcY8k17DoC1p5aOmDrE2qySe+/mySfuwYlvI+Dlf3XCDgD043YCpVLOfo6ZSLFC/igyLAKeVAnKLPmK/vV9NNIcE665TPH/j8xSMFyGIHH15rnt2DxxzRaNmvnqkn1ToPhFTRAxbTLp4k=
X-Forefront-Antispam-Report: 	CIP:216.228.118.232;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc7edge1.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(136003)(346002)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(478600001)(36860700001)(336012)(2616005)(82310400005)(186003)(1076003)(54906003)(86362001)(8936002)(26005)(83380400001)(40480700001)(426003)(36756003)(47076005)(82740400003)(110136005)(6636002)(41300700001)(70206006)(921005)(70586007)(7696005)(7636003)(356005)(5660300002)(6666004)(2906002)(40460700003)(7416002)(4326008)(8676002)(316002);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2022 07:42:07.7031
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cc9531a-2032-4b9b-9702-08dab59340d5
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.118.232];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	BN8NAM11FT055.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_004214_076386_57AF7AC7 
X-CRM114-Status: UNSURE (   6.87  )
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

This commit enables XUSB host, device, and pad controller on
Jetson AGX Orin.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
 .../boot/dts/nvidia/tegra234-p3701-0000.dtsi  |  48 +++++
 .../nvidia/tegra234-p3737-0000+p3701-0000.dts | 184 ++++++++++++++++++
 arch/arm64/boot/dts/nvidia/tegra234.dtsi      | 170 ++++++++++++++++
 3 files changed, 402 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi b/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
index 9e4d72cfa69f..8acef87a5398 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
@@ -61,6 +61,29 @@ mmc@3460000 {
 			non-removable;
 		};
 
+		padctl@3520000 {
+			vclamp-usb-supply = <&vdd_ao_1v8>;
+			avdd-usb-supply = <&vdd_ao_3v3>;
+
+			ports {
+				usb2-0 {
+					vbus-supply = <&vdd_5v0_sys>;
+				};
+
+				usb2-1 {
+					vbus-supply = <&vdd_5v0_sys>;
+				};
+
+				usb2-2 {
+					vbus-supply = <&vdd_5v0_sys>;
+				};
+
+				usb2-3 {
+					vbus-supply = <&vdd_5v0_sys>;
+				};
+			};
+		};
+
 		rtc@c2a0000 {
 			status = "okay";
 		};
@@ -69,4 +92,29 @@ pmc@c360000 {
 			nvidia,invert-interrupt;
 		};
 	};
+
+	vdd_5v0_sys: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VIN_SYS_5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_ao_1v8: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-AO-1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	vdd_ao_3v3: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-AO-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 };
diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
index 57ab75328814..b4630280bb32 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
@@ -2011,6 +2011,190 @@ hda@3510000 {
 			nvidia,model = "NVIDIA Jetson AGX Orin HDA";
 			status = "okay";
 		};
+
+		padctl@3520000 {
+			status = "okay";
+
+			pads {
+				usb2 {
+					lanes {
+						usb2-0 {
+							status = "okay";
+						};
+
+						usb2-1 {
+							status = "okay";
+						};
+
+						usb2-2 {
+							status = "okay";
+						};
+
+						usb2-3 {
+							status = "okay";
+						};
+					};
+				};
+
+				usb3 {
+					lanes {
+						usb3-0 {
+							status = "okay";
+						};
+
+						usb3-1 {
+							status = "okay";
+						};
+
+						usb3-2 {
+							status = "okay";
+						};
+					};
+				};
+			};
+
+			ports {
+				usb2-0 {
+					mode = "otg";
+					usb-role-switch;
+					status = "okay";
+					port {
+						hs_typec_p1: endpoint {
+							remote-endpoint = <&hs_ucsi_ccg_p1>;
+						};
+					};
+				};
+
+				usb2-1 {
+					mode = "host";
+					status = "okay";
+					port {
+						hs_typec_p0: endpoint {
+							remote-endpoint = <&hs_ucsi_ccg_p0>;
+						};
+					};
+				};
+
+				usb2-2 {
+					mode = "host";
+					status = "okay";
+				};
+
+				usb2-3 {
+					mode = "host";
+					status = "okay";
+				};
+
+				usb3-0 {
+					nvidia,usb2-companion = <1>;
+					status = "okay";
+					port {
+						ss_typec_p0: endpoint {
+							remote-endpoint = <&ss_ucsi_ccg_p0>;
+						};
+					};
+				};
+
+				usb3-1 {
+					nvidia,usb2-companion = <0>;
+					status = "okay";
+					port {
+						ss_typec_p1: endpoint {
+							remote-endpoint = <&ss_ucsi_ccg_p1>;
+						};
+					};
+				};
+
+				usb3-2 {
+					nvidia,usb2-companion = <3>;
+					status = "okay";
+				};
+			};
+		};
+
+		usb@3550000 {
+			status = "okay";
+
+			phys = <&{/bus@0/padctl@3520000/pads/usb2/lanes/usb2-0}>,
+				<&{/bus@0/padctl@3520000/pads/usb3/lanes/usb3-1}>;
+			phy-names = "usb2-0", "usb3-1";
+		};
+
+		usb@3610000 {
+			status = "okay";
+
+			phys =	<&{/bus@0/padctl@3520000/pads/usb2/lanes/usb2-0}>,
+				<&{/bus@0/padctl@3520000/pads/usb2/lanes/usb2-1}>,
+				<&{/bus@0/padctl@3520000/pads/usb2/lanes/usb2-2}>,
+				<&{/bus@0/padctl@3520000/pads/usb2/lanes/usb2-3}>,
+				<&{/bus@0/padctl@3520000/pads/usb3/lanes/usb3-0}>,
+				<&{/bus@0/padctl@3520000/pads/usb3/lanes/usb3-1}>,
+				<&{/bus@0/padctl@3520000/pads/usb3/lanes/usb3-2}>;
+			phy-names = "usb2-0", "usb2-1", "usb2-2", "usb2-3",
+				"usb3-0", "usb3-1", "usb3-2";
+		};
+
+		i2c@c240000 {
+			status = "okay";
+			ucsi_ccg: ucsi_ccg@8 {
+				compatible = "cypress,cypd4226";
+				cypress,firmware-build = "gn";
+				interrupt-parent = <&gpio>;
+				interrupts = <TEGRA234_MAIN_GPIO(Y, 4) IRQ_TYPE_LEVEL_LOW>;
+				reg = <0x08>;
+				status = "okay";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				ccg_typec_con0: connector@0 {
+					compatible = "usb-c-connector";
+					reg = <0>;
+					label = "USB-C";
+					data-role = "host";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+						hs_ucsi_ccg_p0: endpoint {
+							remote-endpoint = <&hs_typec_p0>;
+						};
+					};
+					port@1 {
+						reg = <1>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+						ss_ucsi_ccg_p0: endpoint {
+							remote-endpoint = <&ss_typec_p0>;
+						};
+					};
+				};
+				ccg_typec_con1: connector@1 {
+					compatible = "usb-c-connector";
+					reg = <1>;
+					label = "USB-C";
+					data-role = "dual";
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+						hs_ucsi_ccg_p1: endpoint {
+							remote-endpoint = <&hs_typec_p1>;
+						};
+					};
+					port@1 {
+						reg = <1>;
+						#address-cells = <1>;
+						#size-cells = <0>;
+						ss_ucsi_ccg_p1: endpoint {
+							remote-endpoint = <&ss_typec_p1>;
+						};
+					};
+				};
+			};
+		};
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
index 0170bfa8a467..27635d459e4c 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
@@ -942,6 +942,174 @@ hda@3510000 {
 			status = "disabled";
 		};
 
+		xusb_padctl: padctl@3520000 {
+			compatible = "nvidia,tegra234-xusb-padctl";
+			reg = <0x03520000 0x20000>,
+			      <0x03540000 0x10000>;
+			reg-names = "padctl", "ao";
+			interrupts = <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>;
+
+			resets = <&bpmp TEGRA234_RESET_XUSB_PADCTL>;
+			reset-names = "padctl";
+
+			status = "disabled";
+
+			pads {
+				usb2 {
+					clocks = <&bpmp TEGRA234_CLK_USB2_TRK>;
+					clock-names = "trk";
+
+					lanes {
+						usb2-0 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+
+						usb2-1 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+
+						usb2-2 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+
+						usb2-3 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+					};
+				};
+
+				usb3 {
+					lanes {
+						usb3-0 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+
+						usb3-1 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+
+						usb3-2 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+
+						usb3-3 {
+							nvidia,function = "xusb";
+							status = "disabled";
+							#phy-cells = <0>;
+						};
+					};
+				};
+			};
+
+			ports {
+				usb2-0 {
+					status = "disabled";
+				};
+
+				usb2-1 {
+					status = "disabled";
+				};
+
+				usb2-2 {
+					status = "disabled";
+				};
+
+				usb2-3 {
+					status = "disabled";
+				};
+
+				usb3-0 {
+					status = "disabled";
+				};
+
+				usb3-1 {
+					status = "disabled";
+				};
+
+				usb3-2 {
+					status = "disabled";
+				};
+
+				usb3-3 {
+					status = "disabled";
+				};
+			};
+		};
+
+		usb@3550000 {
+			compatible = "nvidia,tegra234-xudc";
+			reg = <0x03550000 0x8000>,
+			      <0x03558000 0x8000>;
+			reg-names = "base", "fpci";
+			interrupts = <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&bpmp TEGRA234_CLK_XUSB_CORE_DEV>,
+				 <&bpmp TEGRA234_CLK_XUSB_CORE_SS>,
+				 <&bpmp TEGRA234_CLK_XUSB_SS>,
+				 <&bpmp TEGRA234_CLK_XUSB_FS>;
+			clock-names = "dev", "ss", "ss_src", "fs_src";
+			interconnects = <&mc TEGRA234_MEMORY_CLIENT_XUSB_DEVR &emc>,
+					<&mc TEGRA234_MEMORY_CLIENT_XUSB_DEVW &emc>;
+			interconnect-names = "dma-mem", "write";
+			iommus = <&smmu_niso1 TEGRA234_SID_XUSB_DEV>;
+			power-domains = <&bpmp TEGRA234_POWER_DOMAIN_XUSBB>,
+					<&bpmp TEGRA234_POWER_DOMAIN_XUSBA>;
+			power-domain-names = "dev", "ss";
+			nvidia,xusb-padctl = <&xusb_padctl>;
+			dma-coherent;
+			status = "disabled";
+		};
+
+		usb@3610000 {
+			compatible = "nvidia,tegra234-xusb";
+			reg = <0x03610000 0x40000>,
+			      <0x03600000 0x10000>,
+			      <0x03650000 0x10000>;
+			reg-names = "hcd", "fpci", "bar2";
+
+			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&bpmp TEGRA234_CLK_XUSB_CORE_HOST>,
+				 <&bpmp TEGRA234_CLK_XUSB_FALCON>,
+				 <&bpmp TEGRA234_CLK_XUSB_CORE_SS>,
+				 <&bpmp TEGRA234_CLK_XUSB_SS>,
+				 <&bpmp TEGRA234_CLK_CLK_M>,
+				 <&bpmp TEGRA234_CLK_XUSB_FS>,
+				 <&bpmp TEGRA234_CLK_UTMIP_PLL>,
+				 <&bpmp TEGRA234_CLK_CLK_M>,
+				 <&bpmp TEGRA234_CLK_PLLE>;
+			clock-names = "xusb_host", "xusb_falcon_src",
+				      "xusb_ss", "xusb_ss_src", "xusb_hs_src",
+				      "xusb_fs_src", "pll_u_480m", "clk_m",
+				      "pll_e";
+			interconnects = <&mc TEGRA234_MEMORY_CLIENT_XUSB_HOSTR &emc>,
+					<&mc TEGRA234_MEMORY_CLIENT_XUSB_HOSTW &emc>;
+			interconnect-names = "dma-mem", "write";
+			iommus = <&smmu_niso1 TEGRA234_SID_XUSB_HOST>;
+
+			power-domains = <&bpmp TEGRA234_POWER_DOMAIN_XUSBC>,
+					<&bpmp TEGRA234_POWER_DOMAIN_XUSBA>;
+			power-domain-names = "xusb_host", "xusb_ss";
+
+			nvidia,xusb-padctl = <&xusb_padctl>;
+			dma-coherent;
+			status = "disabled";
+		};
+
 		fuse@3810000 {
 			compatible = "nvidia,tegra234-efuse";
 			reg = <0x03810000 0x10000>;
@@ -1470,6 +1638,8 @@ gen2_i2c: i2c@c240000 {
 			compatible = "nvidia,tegra194-i2c";
 			reg = <0xc240000 0x100>;
 			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			status = "disabled";
 			clock-frequency = <100000>;
 			clocks = <&bpmp TEGRA234_CLK_I2C2
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
