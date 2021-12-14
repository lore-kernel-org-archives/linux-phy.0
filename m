Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD67C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVVZkzTz4OVluCn2/dl9Yk3Y38j5X5PpE2buxFidixg=; b=YTbZf5KHHaXGn/
	uZ93kP5f5U2BX+yhhx9VMxg7epcwNrFi34K7aNKxlTVPjqhBxH8NHFFdKOOnASfs0ZhF0SFoFEOTg
	7WThegvk14C4LclbiRIvRo+0BsdxpF3JFcArv1DB0nowegnbY6CwNvFvHAAm3zb7yYFz2rtKALKO2
	W1ndqmAvugNmnA5WdZ7rD/kCwWsDqvairJrSWPBAkj7JITeaQaHRIzA5ijQch9VriGFG+83AqIm/y
	VRfgOtMwpVVvRnVue5EOZ1rwsh8O0oN6HZiMur7ENJsFwQK+J626ppAizfMrj76kqaOPAF1N5LkCk
	qocozcA8gD/s1gbHTFDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGlK-00G0V9-K8; Tue, 14 Dec 2021 22:59:10 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGlH-00G0TS-W0
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:59:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id m6so27885763lfu.1
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9iK+ZmbcJU9/EzwaB2fD8nVbLkEXFBhTxkz4m8H07tQ=;
 b=YGOxTe5LaHYi6X6eH8/EAouI1IKAuMRGi0wlZDSsZqxyGZBn0XfHREn7T/qA2TP1uW
 1wmmIt/sobNgrptpi/CG4Ilbgv9+twTbcP8l1GoGLu9o/BnszlfytPuEeT5TiF6MCQLB
 ZcGWVMylOyYkJVtdYiZPqqL69WdAaIBRPyQ3GY3RsuChyp/9/eDlOkDllfVioxkPvt1K
 Nzjyh2l9mZTDy5TEcZsT15kQ7TpsMrtOOrbt5bUsCp4d0Tg+xq8M8H7iumRJ9QEA2AhB
 1ST7go0BzzawLub2tlgwu2O5mGATalqbC+YqLM/QVcwDrQoBk6fuH90IcPfz/+KGELji
 rc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9iK+ZmbcJU9/EzwaB2fD8nVbLkEXFBhTxkz4m8H07tQ=;
 b=hDRZY0zGq85IjdeDIVoSjXpvh/v7VCH9P3WRopom/x/1/61vGcgwHAL0VfvoAsc2Lp
 y1p2zckHVVV3BAwG5HK70S75P/dXHhryKpCpnHuy7qloBqfD7UFH3B3x9Rcgupl3HA6R
 FOuObedcsDH4hh2DCTC73jXeVtdHuGkPr9ChroCJ+Z+sVZjZIrSkBy8nbj1/iCTLFNlO
 x/AiN3Z7Lr9oP5bLV1kZPskIBUV5M9utlhUeSbg2fNk/N1ZekzHEWW/kwOEtfc1Q0Az9
 xu3I22DzMrV0d9el7qWbW73xveW2uorYuvFZqBkOBSHOvOIah28XgZvK49+sa8OBEA42
 5anA==
X-Gm-Message-State: AOAM533JU8Jq1Rau3QMR6pQOMn8yXF59EBl8KaN1mhzMUsvv6y6KJinx
 rT7Q+A3P7LohDrO+G/w0Dr2LOw==
X-Google-Smtp-Source: ABdhPJz57YADG4cjbkwu55h1YMqLvScywPDLnnI6DuIoEd2VNFmXoFTrNOHUk/BcA9bSnUxJWlZZQg==
X-Received: by 2002:a05:6512:36d1:: with SMTP id
 e17mr7248273lfs.673.1639522746578; 
 Tue, 14 Dec 2021 14:59:06 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:59:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 08/10] arm64: dts: qcom: sm8450: add PCIe0 RC device
Date: Wed, 15 Dec 2021 01:58:44 +0300
Message-Id: <20211214225846.2043361-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145908_053900_2BE53F4E 
X-CRM114-Status: UNSURE (   9.34  )
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

Add device tree node for the first PCIe host found on the Qualcomm
SM8450 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 101 +++++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index a047d8a22897..f4bebaded8f4 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -627,6 +627,84 @@ i2c14: i2c@a98000 {
 				#size-cells = <0>;
 				status = "disabled";
 			};
+		];
+
+		pcie0: pci@1c00000 {
+			compatible = "qcom,pcie-sm8450";
+			reg = <0 0x01c00000 0 0x3000>,
+			      <0 0x60000000 0 0xf1d>,
+			      <0 0x60000f20 0 0xa8>,
+			      <0 0x60001000 0 0x1000>,
+			      <0 0x60100000 0 0x100000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <1>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			ranges = <0x01000000 0x0 0x60200000 0 0x60200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x60300000 0 0x60300000 0x0 0x3d00000>;
+
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
+				 <&pcie0_lane>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_DDRSS_PCIE_SF_TBU_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_0_AXI_CLK>,
+				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
+			clock-names = "pipe",
+				      "pipe_mux",
+				      "phy_pipe",
+				      "ref",
+				      "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "ddrss_sf_tbu",
+				      "aggre0",
+				      "aggre1";
+
+			iommus = <&apps_smmu 0x1c00 0x7f>;
+			iommu-map = <0x0   &apps_smmu 0x1c00 0x1>,
+				    <0x100 &apps_smmu 0x1c01 0x1>;
+
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc PCIE_0_GDSC>;
+			power-domain-names = "gdsc";
+
+			phys = <&pcie0_lane>;
+			phy-names = "pciephy";
+
+			perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
+			wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
+
+			pinctrl-names = "default";
+			pinctrl-0 = <&pcie0_default_state>;
+
+			interconnects = <&pcie_noc MASTER_PCIE_0 &mc_virt SLAVE_EBI1>;
+			interconnect-names = "pci";
+
+			status = "disabled";
 		};
 
 		pcie0_phy: phy@1c06000 {
@@ -763,6 +841,29 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 211>;
 			wakeup-parent = <&pdc>;
 
+			pcie0_default_state: pcie0-default {
+				perst {
+					pins = "gpio94";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				clkreq {
+					pins = "gpio95";
+					function = "pcie0_clkreqn";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				wake {
+					pins = "gpio96";
+					function = "gpio";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
 			qup_i2c13_default_state: qup-i2c13-default-state {
 				mux {
 					pins = "gpio48", "gpio49";
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
