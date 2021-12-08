Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 588FFC4332F
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 17:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6Y8P25HJ35nvUuuhLRQf9zDrHp8yxeo9ITi2sjQ498=; b=3kO8dQF0/egH6O
	b8IStGTBMtLOe5slOiogK/DS9hLYChS9AuaGfy28VxynGZRFMlf1jXW0OWhpC+RaPVYH4DJdbQq65
	+dB6ZIlT4jrN+6X2/ZWdKdraCNFjGxYc9Qdxtu9DYM2kyc4u9vehaRYC9RSWgmozBtoWbgAXHw1ta
	RwbKJFozQRhk1pEp50nQRAeklmdNlj+Uw2Gbg02+YhBjYA+cMcbeWPMy18dWApelO2uNUZ+Lo0cVj
	pbjB4J64G4xtvP2NCqanmuxDHldF1tNjH4k9xkMbj9hcbtGFom/4J8jilz6Xr8nnfMHpDYCphRoyq
	92L/YBO4uCRcuXQKYZRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0X7-00Dh27-Qf; Wed, 08 Dec 2021 17:15:09 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0X5-00DgzE-3K
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 17:15:08 +0000
Received: by mail-lf1-x133.google.com with SMTP id bu18so7060889lfb.0
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 09:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CkjJueskC61HJ/9+LZZr5rRLuA13RiM7nsIGLfBSnLA=;
 b=InXqlkb8bYIUHb0nJPDLrzLzo+1jrkcmFWO4SNdew8tYqlxT0PUSRd7ud3TFEIXGkG
 htH+v8JbkW5jmOK5zn989xk9zKjoRULkuw+ghHgD3vWyNtsmN1tIRcFGLHCqk0P5TUpw
 sjFC/goO/2Wu50E8aHMM/ftC02Jh/OhK1NqSdPUES3zBaTCo86qrldTxI+j0ssuLqsQc
 kCtA8j3xKjPLTQ9IHQ8MnNcn3Tf0seYV1PRv5Py3m9Jpvqxgje1Kx1RBk9pVEUkgM0qa
 s0VEHnPD8WZrzxy4ZMT1gLxRykx9kdYYTfAyyw05Sq6C3dKYxxmNXrdlF5Tgj8ZsKmTe
 BlGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CkjJueskC61HJ/9+LZZr5rRLuA13RiM7nsIGLfBSnLA=;
 b=qFiWnUomA5x0ULpXXa5SNRCD3gfXdwXwwtbR2XO5XfIw6+gVEEOzktEBUJMDAkAVb2
 AtuVOUvy92p1ECUraXGfSR+RkU1SnEntgtcagUORkhv7pTLBteanAM9jKRThFte1sS+h
 D7/BEaHRZyf8YfVgwEG7iDmP1QWd0Am6HhZfL5M2bz3cbbuNLeiw4vO0+Y+ndR0jxqhG
 /5rvpWqe2t+Yq2hTXfTn6jdkaufEgn6/Namzf62qpGI9z+SsNj3+L1i9OznYwqSxadVY
 7JeJT/MqKIaCZbNJXomD+cp/XTmV+b4ysWTPVQzWFsseyszkPGSs6UiotT7o0xn3vS3L
 S4Jw==
X-Gm-Message-State: AOAM533PzgKIon1Gmp9qPMUYcWuZyqjAntHMFkAeSIT8c2xcamvDlWiI
 CzToxwQHJLyHyU8ghd7P7fpNcQ==
X-Google-Smtp-Source: ABdhPJy7w2PoI4pjdcMwTMAP8qXMGY5JW498WPPj2dVvRdOn3JxwFH7bVFzXWEGU2mhNJmADz/8mLQ==
X-Received: by 2002:a05:6512:6c7:: with SMTP id
 u7mr702294lff.636.1638983705646; 
 Wed, 08 Dec 2021 09:15:05 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id t9sm307213lfe.88.2021.12.08.09.15.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 09:15:05 -0800 (PST)
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
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 08/10] arm64: dts: qcom: sm8450: add PCIe0 RC device
Date: Wed,  8 Dec 2021 20:14:40 +0300
Message-Id: <20211208171442.1327689-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_091507_182075_9BBDA2F5 
X-CRM114-Status: UNSURE (   9.53  )
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
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 101 +++++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index a047d8a22897..09087a34a007 100644
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
+			perst-gpio = <&tlmm 94 GPIO_ACTIVE_LOW>;
+			enable-gpio = <&tlmm 96 GPIO_ACTIVE_HIGH>;
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
