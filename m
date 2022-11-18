Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B63C43219
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dvu+O1b5vqWr+0Xfcxvec6xtW7a2v5NKOIXxj3qiGsM=; b=I11syXvej1cFGM
	5YAg+oVxykTUUO2GZG5LqV+xALtukmkRPp5/fHA67Dvx+AifmxWHNP9ZRb5RY8P5ZJcTHJcuzWPuY
	9XSAOupQYrfnwK2SVSScexvc3AvZAlhSFnxvuX/zbEN9h6SRee/hFRRuPYRjw89OiL3y/zdcr00OS
	mEBLTy1j3MikX8uKfEkg8CKUJXHWQ/P0aOB+3DxtnIFCSKoS+JMMrem0r6BpGrk61UpMGdnubV9dK
	o9C8WSbtQi4rb076iz8tCbi9hauiI4vPLrqQ7gBalu0lQBiLzeZ4L8e+L0EqU8kumITddTUf1C5VY
	QKqIeexfKsE1LkClRQpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3U5-004zw6-C9; Fri, 18 Nov 2022 15:40:53 +0000
Received: from mail-dm6nam11on2061a.outbound.protection.outlook.com ([2a01:111:f400:7eaa::61a] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3U2-004zsY-3c
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 15:40:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ICkHxptrR3NnW/4t4UyhFxzGC7LW9LiARC8RSOGvnUK31xZNXWMyZsA+rVluv9T6BIWM/HLWVmZtDLZyni7bw+nCOIfKsvWWhj4OWdX3HvjInhkYovSRyu3HaDiA5psmKdz9NZN+Ya3XewIjqM/uAyBTfPN36vyAZ9yKYjLJ1kP2fmqY1BSzpmW3kE/VlRY/7Fqldo9R202qG5AdZy4eNW4Sfq7zya01qCalUUe6PzGgiU3WvnWEiWwbBWNV+7dkm8ScvRKAZYOa6jfmYwF36d9fLSCcg+rHsiAFIamIrFPUs4oOfjXiIdDaDjTOHkE3OJMeBfUIgBAtQ/p51Jdmyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GjOa88d0Fb0TlY7SD0cQjUJgOEElmAzRXKZc9LUI6sM=;
 b=U76YKFCVQhM4FnpNRtBxAT9CNlaWZQPK5P5xl7RqygMMM0S+33bjM93GnKSfVvnE8Ebu+M+xy160prOfsJYma6KIOh3a9RoGOU6eseB+01aBYHE1gNH4ljPH1T0n/LM8z25pmooB9FeSSmX3RmgQFAVlDIKmoqpyAYhk1KFH/TsrquziBvuT/wKgj3xran5OCY05f4M1Br3pNnJLcgWjvmqo0oKr+Ofis591W10eucFZSgelDGksBJYZHU3wIy8mItpdNbAXHalQBYTuyQZDag50FeOT2nY8osmFYcRFBuewd3a9czApqseHgXkXvf1/J6gG6MNZOo3Xy492BIvvTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=intel.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GjOa88d0Fb0TlY7SD0cQjUJgOEElmAzRXKZc9LUI6sM=;
 b=PQIrQiSJcGEvrTqJ+dZN7gbSn0vNi7IAHgrJgREEXQdA7THQPfFI5erdN/s3R6w83PV6U2JFflPgjEgxoygwtq6rbqP40vooHjpWv7obKEykZ2NwlnYtpbx1F6Ra8AyMLaft1AGJ4B71redFFJxonqleeQf1QGPHvGm5E0mJyg8I/A+jXVUeyZd3+Ab/StgkvBmW/Pyp1kNvVavzocyrKA5MEH069zFsYVqtmKTDycczp08sN0aeGHNKU3VJcDty6+0q6ltQIs77Mfh/oWWKqNklCmRLembCXYx1AajYboLsmWfzWpBZ6PU9hIPZWAKzdhgd2C0SEG+2vKaQCee08g==
Received: from MW4PR04CA0033.namprd04.prod.outlook.com (2603:10b6:303:6a::8)
 by CH2PR12MB4165.namprd12.prod.outlook.com (2603:10b6:610:a4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Fri, 18 Nov
 2022 15:40:44 +0000
Received: from CO1NAM11FT112.eop-nam11.prod.protection.outlook.com
 (2603:10b6:303:6a:cafe::d9) by MW4PR04CA0033.outlook.office365.com
 (2603:10b6:303:6a::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9 via Frontend
 Transport; Fri, 18 Nov 2022 15:40:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 CO1NAM11FT112.mail.protection.outlook.com (10.13.174.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.8 via Frontend Transport; Fri, 18 Nov 2022 15:40:44 +0000
Received: from rnnvmail202.nvidia.com (10.129.68.7) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Fri, 18 Nov
 2022 07:40:29 -0800
Received: from rnnvmail204.nvidia.com (10.129.68.6) by rnnvmail202.nvidia.com
 (10.129.68.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.36; Fri, 18 Nov
 2022 07:40:29 -0800
Received: from moonraker.nvidia.com (10.127.8.14) by mail.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server id 15.2.986.36 via Frontend
 Transport; Fri, 18 Nov 2022 07:40:26 -0800
From: Jon Hunter <jonathanh@nvidia.com>
To: Mathias Nyman <mathias.nyman@intel.com>, <gregkh@linuxfoundation.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <robh+dt@kernel.org>,
	<vkoul@kernel.org>, <treding@nvidia.com>
CC: <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>,
	<waynec@nvidia.com>, Jon Hunter <jonathanh@nvidia.com>
Subject: [PATCH V4 2/6] arm64: tegra: Enable XUSB host function on Jetson AGX Orin
Date: Fri, 18 Nov 2022 15:40:02 +0000
Message-ID: <20221118154006.173082-3-jonathanh@nvidia.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221118154006.173082-1-jonathanh@nvidia.com>
References: <20221118154006.173082-1-jonathanh@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1NAM11FT112:EE_|CH2PR12MB4165:EE_
X-MS-Office365-Filtering-Correlation-Id: d53066a3-bc56-4d55-6e1d-08dac97b417c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	hYtEA0w/LoFoU3wV+XpoYueAXAp+BMsL/Dem8wXbJoZ+f381EA2xJxM/a+uwMzmThxULuUPCIDt/1uYil873R3VosnzG5rRed2gWVDp9hA9hHscmKKg/GofimArFPCttSFBuRcIxgvPE2DodPcYaUa20Ejzqib5WseP+3+ErbSDFZj17Fb0F7OwQNOPJ+tKCQKGjRur2w3RcFFjYG3eEbEvmYQe7Sv9qCiMq1dBQ9j7IKgSCHvG+G9tt714acOuU7YPzw0+0wOTaLqABmsr410fW7bhe/lyz4d1cJ/y4sx09ZdMllagkwdhkS79yd6cKyTcZCe9Sv0FJNwZRocyaSp8uFCTIE4TreA8VxKVxRkwKVvV9EMdeCdwEpPv0kiAQUB1i2e3h/TH/QaRkIg634nC/+FKdHBS3qX5faWFbDJpDmTOcGqur+P1CRc+73IhtAiM8dwFNKhO4PBS46WBPigFpHGb0IqExdJ0BGjQSPMU2TBC8XDozcShHE9OnWplQaYTycRy4nmLioqxoWp4Y7DiIGF6mQiUhJrVRroCj8NHLbZ+WWpX0wsEzlRSRoS77qQZlEiRb6mTpo2jfVpaCRrJlXuS90A07ORwteXyvcxZsz7p6+hJu4dJjZE7ElLrxXUH5wjnT9/ytuI4IFesClwNHWVMiz12nH6wjnvlLjnxpxNljtJI4V6hjWOh5H3RgI68dEoU5op1ftaTb+tDGBL8WUGNvS1M70DPhA7otrwASqB0DMEUqe+P4VAOiNKCpv7o2czCsd/QvFIQQO/aZ5WvuxYSJApHTT7Az+gzTPQQ=
X-Forefront-Antispam-Report: 	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(346002)(39860400002)(136003)(451199015)(40470700004)(46966006)(36840700001)(36860700001)(2906002)(83380400001)(36756003)(2616005)(40460700003)(70586007)(7636003)(70206006)(82310400005)(86362001)(82740400003)(186003)(6636002)(54906003)(7696005)(110136005)(26005)(40480700001)(356005)(8936002)(336012)(5660300002)(1076003)(8676002)(41300700001)(4326008)(426003)(47076005)(966005)(316002)(107886003)(478600001)(6666004);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 15:40:44.1461
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d53066a3-bc56-4d55-6e1d-08dac97b417c
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: 	CO1NAM11FT112.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_074050_231909_7B41C2CD 
X-CRM114-Status: UNSURE (   9.01  )
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

From: Wayne Chang <waynec@nvidia.com>

This commit enables XUSB host and pad controller on Jetson AGX Orin.

Signed-off-by: Wayne Chang <waynec@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
This patch is dependent on the following change:
https://lore.kernel.org/all/20221003125141.123759-1-jonathanh@nvidia.com/

V3 -> V4: dropped support for the USB device and type-c connector
V2 -> V3: nothing has changed but added the dependency here
V1 -> V2: removed the redundant cells and status in ucsi-ccg.

 .../boot/dts/nvidia/tegra234-p3701-0000.dtsi  |  48 ++++++
 .../nvidia/tegra234-p3737-0000+p3701-0000.dts |  93 +++++++++++
 arch/arm64/boot/dts/nvidia/tegra234.dtsi      | 145 ++++++++++++++++++
 3 files changed, 286 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi b/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
index fe52810e5b9d..6f241d0d87e4 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234-p3701-0000.dtsi
@@ -68,6 +68,29 @@ mmc@3460000 {
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
@@ -76,4 +99,29 @@ pmc@c360000 {
 			nvidia,invert-interrupt;
 		};
 	};
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
diff --git a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
index 96aa2267b06d..32c58aa00035 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra234-p3737-0000+p3701-0000.dts
@@ -2022,6 +2022,99 @@ hda@3510000 {
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
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/nvidia/tegra234.dtsi b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
index 6d023c65912f..8514a38c2996 100644
--- a/arch/arm64/boot/dts/nvidia/tegra234.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra234.dtsi
@@ -1079,6 +1079,151 @@ hda@3510000 {
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
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
