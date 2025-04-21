Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F8EC369D5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Apr 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeyLfAM1wkyJ31gWNCifjaW4NuJ1Bl+33lhf8U94Tsk=; b=lVbcqbhBwFOA61
	od6SlSbJmRL/lUfzEKslXrD3DwtVXWHrNnOB2h0ZefaJzuUrNkg/b5PMiD5w+bx/uG9lAeccWwhLd
	qrtta4JacCeIAAeGuXIGs5z8KULjOg7VstXb4LbhlDAJnp4T5K02EHMBlSApW+rc/QA28ii8GCsHO
	i3PmHKDDmrlaYXxQiwOpUjwoZOATOMJcS4+8esbJQIyptoyhF1cg6eM1vqn9fkYQnkuFNF8TiNH4C
	HZnoG2pYKL0leBk84pqo47FaiH8YFM0naix78SM5i4OoLdAowjTRHSxyI4A+N7O7jPohxqFIbkHGo
	HoAxqydzygxX3pd/iF2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zQf-00000005IsH-0OCy;
	Mon, 21 Apr 2025 22:15:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u6zBw-00000005GbU-2gad
	for linux-phy@lists.infradead.org;
	Mon, 21 Apr 2025 22:00:42 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53LK45cE032657
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LOcJf/+hCGJ1lo3aUSpdv3asRvUubHkWKkkzwGshJEA=; b=dkyW8X8Bu8EyS7YB
	eNRDj02/westbQCkm9czXZoUTFZanGpFO2C4IhdxFoKhGp37jbHJXgXpFLQrjgxK
	2/zfkJ3KKF8jsAnfjs5zeILS8gGh9d994w1W4zNn1MS/e/zwfUtoBrF91U/p85x7
	B2r3roXU3dOR+WIAkjVfHbkaKGt33beX+TnIqHMyeRF58GX5dTZSDkTZA5rqVrSL
	XKRiZ7gJ+GNfNk9K2WkbHmVwK/whsPrH4zpxHZDFOBGiMGENMK7R6H45PIywl1BJ
	uOmunn0WRbt87dX/C0zTJFNOrFOotyiePd7rj3IdFZhfKKRJYRqVbUx1JaLtmPnd
	R3IcEw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4644kjd8ay-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 22:00:40 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-73720b253fcso3608977b3a.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Apr 2025 15:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745272838; x=1745877638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LOcJf/+hCGJ1lo3aUSpdv3asRvUubHkWKkkzwGshJEA=;
        b=UYIGzvVt7rK+v6pN7Qk4Wn19zGnri+L3IJMBjiOxel+hNH91F/DwsnrBPsedFiyEWU
         P+SVyFxIMA0PTPPQzX/qVwd+rcM/RbDOX7xY6N5B8Xj3D+u50fz57WNj1rqJZLxxCSSR
         a9BzZzTHysEx7ncSz+ieWvVPKLhdHVsBMPy2HThrqW8Xz13XuJzdO6GyPXwtq0LWn+38
         BVYuRkZd5FajWruwvTiRiX3lxStXOK/VnoMaepU4i4L0baKa6MB3PgkwPCX543nr7hjN
         4N8ESiFopeaU1j9MHLfUoHT11BxOMyTuWKRSKliYW9wEr+SSddeIhXnN6lWiSdih3pvI
         kaqw==
X-Forwarded-Encrypted: i=1; AJvYcCUnwypIPoghmR2NHPoGEZWe2iOt4p/mKXQdNJ08ocb2LfbnapEFqBpABO9egDCNPZMqvIlorJ3Z4Yo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBGUCXbx7atsxzH+cVvsNvlEJpq/XM5nDssMVgZwWsK0zqiby9
	YFUedMp7lQdwYhVfJo8Kloc4lzw9idMRX25dDHoPYcU/K87tEaJSEUhhmzB62eAhOCmXIkUhKjS
	diyL0lbOgVIwEYsfHwDn+VCmaVQar8gPBYabJDGCw5OevrHWDtFAC5yKBjSEAForK
X-Gm-Gg: ASbGncvgRKUQ6XjUJHJa8vmkxVFknKrg+szkgc4tIwMP1F3S3mVu8yUnJsSs+DQxyei
	yDUwAg92VkSF8n1e2v8uJgLUQzPDV0Mk+aXXJmit9qdwxyLMX8o7eVguW6X9KLcJ50LFh31BjYq
	ofUPsOxZWmFuPjXDGJ7Jijy5h1/KvN/yMVm1c/MaW8VvBFwyRcWpvXJKVHbj3yHtEOLsEjiIHrR
	c859nSwQBmi7eKuyAVG/PfpZFzCHkrvXiYhQzy9GlUQjOQHhntAn7GNbxIrh8XrH6cvgxhs6WOm
	tZXPOT5/E2kVUy4KZKElTeaFwBOKMhQ+ZXWOnA/VKM36FSsNbMEI3gC6KRuR69YoM+0=
X-Received: by 2002:a05:6a00:21c4:b0:736:3979:369e with SMTP id d2e1a72fcca58-73dc14800ecmr16537811b3a.9.1745272837813;
        Mon, 21 Apr 2025 15:00:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEC/WIyN/zzwPMIk8piIlWQP/OhDZ/6RypB4+glSwYIGcUuGs/MLF6X8PeAqs/R5gaLWV87PA==
X-Received: by 2002:a05:6a00:21c4:b0:736:3979:369e with SMTP id d2e1a72fcca58-73dc14800ecmr16537758b3a.9.1745272837290;
        Mon, 21 Apr 2025 15:00:37 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf8c04c5sm7107917b3a.24.2025.04.21.15.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 15:00:36 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Mon, 21 Apr 2025 15:00:14 -0700
Subject: [PATCH v5 07/10] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
MIME-Version: 1.0
Message-Id: <20250421-sm8750_usb_master-v5-7-25c79ed01d02@oss.qualcomm.com>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
In-Reply-To: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745272824; l=5552;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=Q0k33i4HxZvC68BlUWHg5gu7bOT2UCXbF0VtdJqp1kg=;
 b=Vh4JoxA+0y1N5zsD1P0LxkjnYj4Fed06LU8EPx45ozETGB/DeoXaiwc0xJgVJ1rxyl9YHCTBa
 50sW1r2tWknCq5Om/2yXfcwvPXBoYoSCmo7oycDV+Ax+vC3YHcG7VWT
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-GUID: s5K-3tclNhoe3UJqJL-fUjM0Uc_09Gr2
X-Authority-Analysis: v=2.4 cv=f5pIBPyM c=1 sm=1 tr=0 ts=6806c008 cx=c_pps a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=n1SQX4eW7R_9Zp26JX0A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: s5K-3tclNhoe3UJqJL-fUjM0Uc_09Gr2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-21_10,2025-04-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 malwarescore=0
 mlxlogscore=999 mlxscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504210173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_150040_698034_604803D8 
X-CRM114-Status: GOOD (  13.83  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

Add the base USB devicetree definitions for SM8750 platforms.  The overall
chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
(rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
transition to using the M31 eUSB2 PHY compared to previous SoCs.

Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 164 +++++++++++++++++++++++++++++++++++
 1 file changed, 164 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 149d2ed17641a085d510f3a8eab5a96304787f0c..e45075cd47a544aabf575065893a432fb20ef4ad 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,gpr.h>
@@ -2462,6 +2463,169 @@ data-pins {
 			};
 		};
 
+		usb_1_hsphy: phy@88e3000 {
+			compatible = "qcom,sm8750-m31-eusb2-phy";
+			reg = <0x0 0x88e3000 0x0 0x29c>;
+
+			clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
+			clock-names = "ref";
+
+			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
+		usb_dp_qmpphy: phy@88e8000 {
+			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
+			reg = <0x0 0x088e8000 0x0 0x4000>;
+
+			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
+				 <&tcsrcc TCSR_USB3_CLKREF_EN>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
+			reset-names = "phy",
+				      "common";
+
+			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
+
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			orientation-switch;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_dp_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_dp_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_dp_qmpphy_dp_in: endpoint {
+					};
+				};
+			};
+		};
+
+		usb_1: usb@a6f8800 {
+			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
+			reg = <0x0 0x0a6f8800 0x0 0x400>;
+
+			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
+				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
+				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>;
+			clock-names = "cfg_noc",
+				      "core",
+				      "iface",
+				      "sleep",
+				      "mock_utmi";
+
+			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
+					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
+			assigned-clock-rates = <19200000>, <200000000>;
+
+			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
+					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pwr_event",
+					  "hs_phy_irq",
+					  "dp_hs_phy_irq",
+					  "dm_hs_phy_irq",
+					  "ss_phy_irq";
+
+			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+
+			resets = <&gcc GCC_USB30_PRIM_BCR>;
+
+			interconnects = <&aggre1_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_USB3_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "usb-ddr", "apps-usb";
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+
+			status = "disabled";
+
+			usb_1_dwc3: usb@a600000 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x0a600000 0x0 0xe000>;
+
+				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+
+				iommus = <&apps_smmu 0x40 0x0>;
+
+				phys = <&usb_1_hsphy>, <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
+				phy-names = "usb2-phy", "usb3-phy";
+
+				snps,hird-threshold = /bits/ 8 <0x0>;
+				snps,usb2-gadget-lpm-disable;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_enblslpm_quirk;
+				snps,dis-u1-entry-quirk;
+				snps,dis-u2-entry-quirk;
+				snps,is-utmi-l1-suspend;
+				snps,usb3_lpm_capable;
+				snps,usb2-lpm-disable;
+				snps,has-lpm-erratum;
+				tx-fifo-resize;
+
+				dma-coherent;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+							remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
+						};
+					};
+				};
+			};
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sm8750-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
