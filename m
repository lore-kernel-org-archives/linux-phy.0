Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E4BEC624C6
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 18:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=494XdRH4vaY17N0gTgxscDaR0VFi1KzYXVwVZWOt8dw=; b=HdilsSkOR/ayV+
	zL4+oQGziyGM81nx7hnXglcN6sHV6RgvgULJrnJ5RGfqCY5JiSBpE9j194zXP8TJZRvD1g2Ht1+//
	jPT8U4ku6ImDKebwAhO+6JxXpenxFAEdhunIa6E2DD7lGzNU7UT4WbRSkO0xbOQjaE1OL538TYxLE
	4/szQTSf97OM/ZQamVcfQgZDCPXhzPKJlonyTzezBeEnc7I1Iq1KUQ5qjhwMcCXyEzf+IFBY+19tb
	1/pIsTAhOYXcV1Y5ZTJocO8QFSuVFrcwSBF2AlJUUMCJcrQQDnjagnQPFREqM07SV2GqPLfbbfoGQ
	+crZcp62xHt8MDJ85sQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17EQ-0000000AKin-0VUU;
	Mon, 31 Aug 2026 18:59:46 +0000
Received: from mail-westus2azon11010004.outbound.protection.outlook.com ([52.101.46.4] helo=CO1PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17EN-0000000AKgF-1S1k
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 18:59:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ShZh8nLTTM7rdGvY7fmCWGGuvIh74h6p3YzdB86kVMzzM3sVBV2wL9tQPWUrqMuctbJuVm1KTrK5Yh1aeoeAisO0EsCiUu3N81VwnBX/z+9oaEY2n0yILC/Fj+m6dtLauvMyMFqYYlzPpA0ViaMiffKirFLmVsllweizVnP4lVnnGpUHygm9drn+0acFwH3Vr7OA7QSJjNeNQYgx6uvRSnFwvjFLI8hIJry23/85mF1aSyN4YjienfgyOe+YXBZQeUJkkXvm5Y70r1a2JAY5OwureDjsd6x4aW1SSF8VdhU/VA2xNGBLo1YyqIo1vjodcu3hK5TNS+1XSmrqmIJJow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S7YEtgQ3ULW5V1HtkGif5AP8fORX9sO/pTNcDhNr6HM=;
 b=q24VTAYUtOlXLwus0aw1PbTmKiXBS2aZAXD2qVEeu7b1+f1ccfcbJvWRudNURebBPFIOGe3/GJMEBksdAKcnqxiQjGqViOjOgNXHl/YHcIHJRZeKQAZir3xvGDxD5VE9sIISwX3dPf4FxcRe+PnNYqGBR4mJ7MbL1RW2VQ3GnO6zNVixxQ+SZHlP+5immZplKB4+wY4iwhzR8vDqvTjYiGRU+xtICZ9QGpeHOvy3G0uFeBQtUfuso90T6BIGtaItE2FQGdKvicmBXZA9cRZkP2PeR56EaycQIc/YhS7OH4GhLbLxECDh+murOH/JX/k2RIHtvPL/GBX9uS7eAq4/mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S7YEtgQ3ULW5V1HtkGif5AP8fORX9sO/pTNcDhNr6HM=;
 b=N6J61fCbdfsW+7HYgC0f6wCDt4Ab3xsgL/EGGZbpL87UGzbia5Lz7uZyAgelvt4VtegG6egjMTaOWdrYrqURkRibs0RzRz+NUhK61/JmiKih3eHh1+HZwkhKNTU4c5pHmvI9/mQuSDswXRHfkSSxXC+PF+Z1QQ8W48gB05ALRrWTbM3W2Pn1HX/+CWXkVFk3n7btxXmzcCtWcZoFerT86nHtFFEYdZ2SkLjSNp9sRA45DEEXHVJvik3U41IGyoc+bErY+LjCH0zqEFkiZKqr5aiw0JS1as6ss1HdhWZRrBfc1Bzn6ygcyJkLCEOSx3kApZ8hFdJTQIul1t0yIWqEWQ==
Received: from PH7P220CA0026.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:326::31)
 by IA1PR12MB6604.namprd12.prod.outlook.com (2603:10b6:208:3a0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.360.11; Mon, 31 Aug
 2026 18:59:24 +0000
Received: from SA2PEPF00003AE9.namprd02.prod.outlook.com
 (2603:10b6:510:326:cafe::5d) by PH7P220CA0026.outlook.office365.com
 (2603:10b6:510:326::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.360.13 via Frontend Transport; Mon,
 31 Aug 2026 18:59:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 SA2PEPF00003AE9.mail.protection.outlook.com (10.167.248.9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.382.8 via Frontend Transport; Mon, 31 Aug 2026 18:59:23 +0000
Received: from rnnvmail205.nvidia.com (10.129.68.10) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Mon, 31 Aug
 2026 11:58:54 -0700
Received: from rnnvmail201.nvidia.com (10.129.68.8) by rnnvmail205.nvidia.com
 (10.129.68.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.46; Mon, 31 Aug
 2026 11:58:53 -0700
Received: from waynec-Precision-5760.nvidia.com (10.127.8.13) by
 mail.nvidia.com (10.129.68.8) with Microsoft SMTP Server id 15.2.2562.46 via
 Frontend Transport; Mon, 31 Aug 2026 11:58:50 -0700
From: Wayne Chang <waynec@nvidia.com>
To: <mathias.nyman@intel.com>, <vkoul@kernel.org>,
	<neil.armstrong@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <gregkh@linuxfoundation.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>
CC: <waynec@nvidia.com>, <linux-usb@vger.kernel.org>,
	<linux-tegra@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>
Subject: [PATCH V2 3/8] arm64: tegra: Enable XUSB host function on Jetson AGX Thor
Date: Tue, 1 Sep 2026 02:58:30 +0800
Message-ID: <20260831185835.3732707-4-waynec@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260831185835.3732707-1-waynec@nvidia.com>
References: <20260831185835.3732707-1-waynec@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00003AE9:EE_|IA1PR12MB6604:EE_
X-MS-Office365-Filtering-Correlation-Id: 46150a34-aaa3-45c8-527e-08df0791f913
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|23010399003|82310400026|36860700016|56012099006|10067099003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: tP3Ei8UkFR3ORN6Ym/QZGb9zZu+bRBWNtiuPlEhxoEzgKn0CFzlVVJcUo42hz6DLJwXkJUZE30dduPC4SFTkeslsQKLCal2Apz0wuBUhayN4F94fh7aTfdTBNGlJJInN+I/1p26eoAbXNFR+xZ04jhowTk5DsFebMdto9sTBG2a1xeBQ/D1EzvdvOm+K0EIIcwvwHs080evOEDY2kaY6wZD2KbqjXCssRSWcjoogU/Kj+YNLoPm4kqcVVJSDIjr6IA6vLd90j3uuNYEs1gZ7P8hzRSTbmbl/IZhCeVkvHrwYMzwSSI+PXWqgdYmzqDo79TOVEAGk9xxTtNzYGxK9hzbCHkG12qT8VfspcJS61qMrm44tOU8FVoiLjD1fODdNuigJwTHNkq5koo381NcS8F89fghlwCptGRWoql1+s0Y9oHMwnqkR7U9mXfrzStIlRMLNP9JZNG4vITCTH4dtzBeWIRuJlTF3D1rFu7Suu/suY9LLUkNp3t6CfzrO4mzF81dEh79aslfdAbwovsDg+2XGe2WpAG/ToizNDIdymdl3cDhnpujeczrUfZsTeKIfD1c9RU6MUPz6zizK2NqSIKtzE47udJi/Q3W+0m01Uiwb2AS9cBxgQ5ZMx076PJdpjuq0Eb5IQM2T43Tz7uBci2WJKl+08ivfB/uTI6sDiJ7guF0bDQkITHfXlKY9wNmA394U89udO50nFW07yF5vmA==
X-Forefront-Antispam-Report: CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(82310400026)(36860700016)(56012099006)(10067099003)(11063799006)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 9coMd/2T8cYHfvESlFiBdmNPOifJNiqb/4kvd4dq8CC8iNxSU4sPXM5uHAuOcKxt5G7DG00pqfQsY5IEpOGmU90gWy46eA4/kQcQa8Cp92IrVURVdE/wxRv/s3Ez11fj1bXhH0vud2FAZGqi94qrpw5i4o5GytOySYFgp6qwIqlaUhVX//qv1obgMQEzX0ZLsmiY0hsQsJEq2TkNzDYbcVm+2nWA87+6lMZv/+DIYgutFImtelZye7ZNpx+6Q43ddiwYj1mEbnLqAxvHlfBK8FXmxv/78CZ9AnxjRlZzCqYJY6mHuTY0dgMqZjJ9IC9FNuU9Uw7ximI1s0TyEDFwLYTtRAH1apgZ1zinkk0GiIyRxrbxBO6ahYko0Zm0bOghrxBX8kh8y1ulcm1MJZo4zq9rmIDxEh2SzlNgmigjSBEiY+ObezFXZCxkYMBG2Ofm
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2026 18:59:23.8935
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 46150a34-aaa3-45c8-527e-08df0791f913
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SA2PEPF00003AE9.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6604
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_115943_595553_37EF6165 
X-CRM114-Status: UNSURE (   7.31  )
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

Enable XUSB host and pad controller on Jetson AGX Thor.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
---
V1 -> V2: No change
 .../arm64/boot/dts/nvidia/tegra264-p3834.dtsi |  50 ++++++
 .../dts/nvidia/tegra264-p4071-0000+p3834.dtsi |  95 +++++++++++
 arch/arm64/boot/dts/nvidia/tegra264.dtsi      | 154 ++++++++++++++++++
 3 files changed, 299 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi b/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi
index 58cd81bc33d7..609c7e7d964d 100644
--- a/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra264-p3834.dtsi
@@ -39,4 +39,54 @@ cmdqv@6200000 {
 			status = "okay";
 		};
 	};
+
+	bus@a800000000 {
+		padctl@8680000 {
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
+	};
+
+	vdd_5v0_sys: regulator-vdd-5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "VIN_SYS_5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_ao_1v8: regulator-vdd-1v8-ao {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-AO-1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
+
+	vdd_ao_3v3: regulator-vdd-3v3-ao {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd-AO-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 };
diff --git a/arch/arm64/boot/dts/nvidia/tegra264-p4071-0000+p3834.dtsi b/arch/arm64/boot/dts/nvidia/tegra264-p4071-0000+p3834.dtsi
index 45f8df9bbfd6..9d6d0c31f881 100644
--- a/arch/arm64/boot/dts/nvidia/tegra264-p4071-0000+p3834.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra264-p4071-0000+p3834.dtsi
@@ -9,4 +9,99 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	bus@a800000000 {
+		padctl@8680000 {
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
+					mode = "host";
+					status = "okay";
+				};
+
+				usb2-1 {
+					mode = "host";
+					status = "okay";
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
+				};
+
+				usb3-1 {
+					nvidia,usb2-companion = <0>;
+					status = "okay";
+				};
+
+				usb3-2 {
+					nvidia,usb2-companion = <3>;
+					status = "okay";
+				};
+			};
+		};
+
+		usb@aa10000 {
+			status = "okay";
+
+			phys = <&{/bus@a800000000/padctl@8680000/pads/usb2/lanes/usb2-0}>,
+			       <&{/bus@a800000000/padctl@8680000/pads/usb2/lanes/usb2-1}>,
+			       <&{/bus@a800000000/padctl@8680000/pads/usb2/lanes/usb2-2}>,
+			       <&{/bus@a800000000/padctl@8680000/pads/usb2/lanes/usb2-3}>,
+			       <&{/bus@a800000000/padctl@8680000/pads/usb3/lanes/usb3-0}>,
+			       <&{/bus@a800000000/padctl@8680000/pads/usb3/lanes/usb3-1}>,
+			       <&{/bus@a800000000/padctl@8680000/pads/usb3/lanes/usb3-2}>;
+			phy-names = "usb2-0", "usb2-1", "usb2-2", "usb2-3",
+				    "usb3-0", "usb3-1", "usb3-2";
+		};
+	};
 };
diff --git a/arch/arm64/boot/dts/nvidia/tegra264.dtsi b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
index 013228a81723..e59b1b0a5b92 100644
--- a/arch/arm64/boot/dts/nvidia/tegra264.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra264.dtsi
@@ -4147,6 +4147,160 @@ pci@8480000 {
 			nvidia,bpmp = <&bpmp 5>;
 			status = "disabled";
 		};
+
+		xusb_padctl: padctl@8680000 {
+			compatible = "nvidia,tegra264-xusb-padctl";
+			reg = <0x00 0x8680000 0x00 0x20000>,
+			      <0x00 0x86a0000 0x00 0x10000>;
+			reg-names = "padctl", "ao";
+			interrupts = <GIC_SPI 4101 IRQ_TYPE_LEVEL_HIGH>;
+
+			resets = <&bpmp TEGRA264_RESET_XUSB1_PADCTL>;
+			reset-names = "padctl";
+
+			status = "disabled";
+
+			pads {
+				usb2 {
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
+		usb@aa10000 {
+			compatible = "nvidia,tegra264-xusb";
+			reg = <0x00 0xaa10000 0x00 0x40000>,
+			      <0x00 0xaa00000 0x00 0x10000>,
+			      <0x00 0xaa50000 0x00 0x10000>;
+			reg-names = "hcd", "fpci", "bar2";
+
+			interrupts-extended = <&gic GIC_SPI 952 IRQ_TYPE_LEVEL_HIGH>,
+						  <&gic GIC_SPI 4096 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 79 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 80 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 81 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 82 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 83 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 84 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 85 IRQ_TYPE_LEVEL_HIGH>,
+						  <&pmc 86 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&bpmp TEGRA264_CLK_XUSB1_CORE_HOST>,
+				<&bpmp TEGRA264_CLK_XUSB1_FALCON>,
+				<&bpmp TEGRA264_CLK_XUSB1_CORE_SUPERSPEED>,
+				<&bpmp TEGRA264_CLK_XUSB1_SS>,
+				<&bpmp TEGRA264_CLK_OSC>,
+				<&bpmp TEGRA264_CLK_XUSB1_FS>,
+				<&bpmp TEGRA264_CLK_UTMI_PLL1>,
+				<&bpmp TEGRA264_CLK_OSC>,
+				<&bpmp TEGRA264_CLK_PLLE0>;
+			clock-names = "xusb_host", "xusb_falcon_src",
+				      "xusb_ss", "xusb_ss_src", "xusb_hs_src",
+				      "xusb_fs_src", "pll_u_480m", "clk_m",
+				      "pll_e";
+			interconnects = <&mc TEGRA264_MEMORY_CLIENT_XUSB_DEVR &emc>,
+					<&mc TEGRA264_MEMORY_CLIENT_XUSB_DEVW &emc>;
+			interconnect-names = "dma-mem", "write";
+			iommus = <&smmu1 TEGRA264_SID_XUSB_DEV>,
+				<&smmu1 TEGRA264_SID_XUSB_DEV1>,
+				<&smmu1 TEGRA264_SID_XUSB_DEV2>,
+				<&smmu1 TEGRA264_SID_XUSB_DEV3>,
+				<&smmu1 TEGRA264_SID_XUSB_DEV4>;
+
+			power-domains = <&bpmp TEGRA264_POWER_DOMAIN_XUSB_HOST>,
+					<&bpmp TEGRA264_POWER_DOMAIN_XUSB_SS>;
+			power-domain-names = "xusb_host", "xusb_ss";
+
+			nvidia,xusb-padctl = <&xusb_padctl>;
+			dma-coherent;
+			status = "disabled";
+		};
 	};
 
 	bpmp: bpmp {
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
