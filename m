Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64500CA0EE1
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 17:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDdUVu2lZG9mzrhHhU+v/3rFBx7363hF+HejZxQqoj4=; b=DWwWx1Moe4CejW
	IqMKg31oyGA/hcJLQuRB/EPGkNNNGmQoBWGdYAiJ131a5cjssMpryRrXvswzwcoZiFxrxjrpe2ffk
	IGr35HwWJFE6zzw2V+nkvYEY8kIhOnOfVZ5HMrxavALywSYXzhY6KLjn+3luTIjh8xSC3zzxDZeSc
	ZplqDb+cZHNaDP9qvc8S2W6Wao0QkV2qTtQoApInFbpSwt3z/XTAuoCNp0xV9WS8b6N4Qm/VFwSrs
	kghpIf8a6VvHoJBb+0tP7VaVLEbrwBvnjFzTRQh9TFRTucmBv/PEBebdsBxszwSMzM0kEQjoyhtMz
	zCKUwFPYMu71OFfkFN6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulst5-0000000BbgF-0XSm;
	Tue, 12 Aug 2025 17:34:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulpUw-0000000AzN1-3CSu
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 13:57:07 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57CAve2X012879
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 13:57:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vC9kVYpsmo7G6F9s1+W/Z0x6YZORmkun/3JdzHvaSEM=; b=gH8Q6CounJqUU6Ez
	jrdnrJknDqh6Y4uLItQBP09lDLP1XINCFIXGFl/TAAxJibD/N/r356F7zDxmnIBq
	Z/KGiwrdQ01XAXIeFC/U/iBrH08jltBNccOA2U2B/MWKI4PPBtbFTGE3gTcgx0PL
	synrXkJLC0yd+sYKYLbPIDyqklB3GG1kj8XpbWxbT1cRzIqE9JKdqVJ3hk7/arXq
	C2ZSWLgTEbns19xJf51c/8cFcZoT+d7Ubt7rQywxs6su7n0Isrc0P2RrXMcqKOBD
	nTM/FzuH4BuWf/PhthPMIg+l+rCjLDjrgI9pBiIRY/a+to8zq91by4bMJ0T9xqXS
	fgyoyA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fjxbbgek-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 13:57:06 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b423dcff27aso9327348a12.0
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 06:57:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755007025; x=1755611825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vC9kVYpsmo7G6F9s1+W/Z0x6YZORmkun/3JdzHvaSEM=;
        b=YlalSdPmWdCFlCHakdAapZ5jhfN7zK/dP/YumUO6nbQaQ0ZgPNt1UPEXXig8/Z3fT2
         lnxBzKnrC2x/uA0Yh7MiG4e6ZO9gxEWqG3FmKjaC4u8zRr8ZdPwSz9c9N7a03Vu3/7Nc
         k2OZae5/wUX7JMr3n3cKZiemv+2WobH7+7aydWA4/OLlO6SVYpAQDIPabht+qUrHCDd3
         p+oSmLsfKA9tMmW2g1y6O3QW7GFV0wChY/vmtiRnMamczMmlM+hE8WSOZRL1sKu+Tu8c
         72+jjUvhTX1QOwDjHQFfU7BaNpbjShVF3pCZEqJgKKqWcCLcdbOSw8AHADCAW7nCuD6A
         KXag==
X-Forwarded-Encrypted: i=1; AJvYcCV6e82OhhScqLPqhcC4zjGTzJdaUqU21Wn8qXkzVhmKFlAmN4RTx0WWN4YHqQ+RNER0oKVQjM5ppko=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTlPI1D/FDDjBWYASP6CUKQzWziNtR1+aR1EfzhB+dqPHgowqo
	WToMvp5NReGqa2G+XnETM/u6RA12GtYO4pVWV5se5pE6GHg0vN62/4nmjsVrnuOAek/IqAwc30v
	zBa43LLlsSYzX8f+hoQE9+MxjvR0quBgi0zAOP8LMptUq4rzecFpxw8Xk6B2+VJ+CjXNQ
X-Gm-Gg: ASbGncuMNFO0zfMwiaDQR45mO2vv/FHd2eJmHMDtj7CUWYrXB/gleXCm0w2D2H5vCsz
	wFghcL+MjbbhBa0DZBGaK1UtlNEH4UIcEh/GrHZTIb5Q6ePG/qrzo4bOiLFDwxlAB3AM04PIYYx
	i2MzjPmQuQ3NyimDxptYFWFE1c4SmBO+HevxZ+dQv8pYrtUDbgVfQohcxfmTIwP6u4Xr0ON1f85
	K/vvqiOrFRikazOJ7oAdhYX5JHSNSEQqWUH9+uvdgukQsPj6+YeTbDSLuhmHTZltvJ+qy/wL1Xv
	th3+JFKXCOE4xF5w9t/2LEWmySASINn3BB61u+yr/nI0cilxAeOLjDUozO0mJFQ+xTarDgaW/vo
	=
X-Received: by 2002:a17:902:d4c1:b0:234:e655:a632 with SMTP id d9443c01a7336-242c225f5edmr251590135ad.51.1755007025177;
        Tue, 12 Aug 2025 06:57:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2skVoQjxqv2NdGTdZLMTCJHQUl9+Juy6XzRWzaTW6Fsaq0wtQm8R6pVqSia8VInKNIJ0u7Q==
X-Received: by 2002:a17:902:d4c1:b0:234:e655:a632 with SMTP id d9443c01a7336-242c225f5edmr251589645ad.51.1755007024540;
        Tue, 12 Aug 2025 06:57:04 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24302e028dcsm16703265ad.91.2025.08.12.06.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 06:57:04 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 12 Aug 2025 19:26:45 +0530
Subject: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Add PCIe0 node
MIME-Version: 1.0
Message-Id: <20250812-sc7280-v2-2-814e36121af0@oss.qualcomm.com>
References: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
In-Reply-To: <20250812-sc7280-v2-0-814e36121af0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755007012; l=5970;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=ZHN1GYoa/UjGJmJso0YGyCQ2QI6I2ebKzKZi1WqJE3U=;
 b=tyJEfhajjY7k3a/2MiR5Av5yhH8Wvva+GPaFMZ/KIiYQ8xV7O6o5tNwIgKEfvHctMWTCztqho
 XzKcqisRDjhBx6iAtgQtgJamPszkeG/I6QO5FnozyqaxAGSoMcyDwlo
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=G6EcE8k5 c=1 sm=1 tr=0 ts=689b4832 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9
 a=joUWkbzKA2oh4xZ8:21 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA5NyBTYWx0ZWRfXw2xiQKfnT8lE
 jbpMSb0PDHaUJGzgGhlqf3OPPNP6GgF9cjVchFD5vQf6PkzsRHYt8cn928t052W40QtBwA3Ydkf
 RmjvPMn/a+C7hbB5S0H71MLyQqnRA64Y25PiuPgQaxwwn/plNXrix3NtJTq/93EwhrTsh1OjWUD
 a6OJBgE30/vTRQYJ551R99wv1OgTSQ8ijd5IvtTrl+K4mEW2AYKjnm5d0XamEaztmA9O9oYKDyg
 zp2CY5Iz6pj9Fb6CurpP4s0WP+rra/oZ6r6ws0B4ewM3VhttsHYIZKJbjoszvNTiflapxGcWD2s
 4fjnypBkhKAdw9cKLNjNr2w3Kc821X5te3C5XRaem8UPf1snt+xty/aX9laABJx7VKDwumkUs1x
 z+C2HZt2
X-Proofpoint-ORIG-GUID: 3wABzzWoqv5j-zakHCrU1A5qy3HElk5H
X-Proofpoint-GUID: 3wABzzWoqv5j-zakHCrU1A5qy3HElk5H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_07,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_065706_817962_7B21555A 
X-CRM114-Status: GOOD (  13.13  )
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

Add PCIe dtsi node for PCIe0 controller on sc7280 platform.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 170 ++++++++++++++++++++++++++++++++++-
 1 file changed, 169 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 64a2abd3010018e94eb50c534a509d6b4cf2473b..b0f688ce1c285888c05ed718e58dfafd51e2c1cf 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -970,7 +970,7 @@ gcc: clock-controller@100000 {
 			reg = <0 0x00100000 0 0x1f0000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
-				 <0>, <&pcie1_phy>,
+				 <&pcie0_phy>, <&pcie1_phy>,
 				 <&ufs_mem_phy 0>, <&ufs_mem_phy 1>, <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
@@ -2200,6 +2200,149 @@ wifi: wifi@17a10040 {
 			qcom,smem-state-names = "wlan-smp2p-out";
 		};
 
+		pcie0: pci@1c00000 {
+			device_type = "pci";
+			compatible = "qcom,pcie-sc7280";
+			reg = <0x0 0x01c00000 0x0 0x3000>,
+			      <0x0 0x60000000 0x0 0xf1d>,
+			      <0x0 0x60000f20 0x0 0xa8>,
+			      <0x0 0x60001000 0x0 0x1000>,
+			      <0x0 0x60100000 0x0 0x100000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x3d00000>;
+			bus-range = <0x00 0xff>;
+
+			dma-coherent;
+
+			linux,pci-domain = <0>;
+			num-lanes = <1>;
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "global";
+
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &intc 0 0 0 150 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &intc 0 0 0 151 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &intc 0 0 0 152 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
+				 <&pcie0_phy>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_CENTER_SF_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_0_AXI_CLK>;
+
+			clock-names = "pipe",
+				      "pipe_mux",
+				      "phy_pipe",
+				      "ref",
+				      "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "tbu",
+				      "ddrss_sf_tbu",
+				      "aggre0",
+				      "aggre1";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			interconnects = <&aggre1_noc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &cnoc2 SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem",
+					     "cpu-pcie";
+
+			iommu-map = <0x0 &apps_smmu 0x1c00 0x1>,
+				   <0x100 &apps_smmu 0x1c01 0x1>;
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&pcie0_clkreq_n>, <&pcie0_reset_n>, <&pcie0_wake_n>;
+
+			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
+		};
+
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sc7280-qmp-gen3x1-pcie-phy", "qcom,sm8250-qmp-gen3x1-pcie-phy";
+			reg = <0 0x01c06000 0 0x1000>;
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_CLKREF_EN>,
+				 <&gcc GCC_PCIE0_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			status = "disabled";
+		};
+
 		pcie1: pcie@1c08000 {
 			compatible = "qcom,pcie-sc7280";
 			reg = <0 0x01c08000 0 0x3000>,
@@ -5285,6 +5428,31 @@ mi2s1_ws: mi2s1-ws-state {
 				function = "mi2s1_ws";
 			};
 
+			pcie0_reset_n: pcie0-reset-n-state {
+				pins = "gpio87";
+				function = "gpio";
+
+				drive-strength = <16>;
+				output-low;
+				bias-disable;
+			};
+
+			pcie0_wake_n: pcie0-wake-n-state {
+				pins = "gpio89";
+				function = "gpio";
+
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			pcie0_clkreq_n: pcie0-clkreq-n-state {
+				pins = "gpio88";
+				function = "pcie0_clkreqn";
+
+				bias-pull-up;
+				drive-strength = <2>;
+			};
+
 			pcie1_clkreq_n: pcie1-clkreq-n-state {
 				pins = "gpio79";
 				function = "pcie1_clkreqn";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
