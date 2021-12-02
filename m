Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AAA1C4332F
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Avs1zu3aWFI0OnCFYjqU1E8KRn7gPATpUx6pxZc88/Y=; b=FyTll8D55Zrc07
	k78d19Nq2nShxGMn8G/MkD77rZ5Zq0qircQHBdX4kxFV3D6nkaj/tGJeo8NchnGNMkCE9Owndne+/
	q2zH+W3lH2LrjtCkh1AXgzU/o4KlN7P18ntluAEma9JKgH+1HVY7AYw+IQh1mUAKFhh/mjw6bbdZ6
	ojyrx2n3wPD6JCYeDiq19aFj7wrLnVupZ7zPgj6soyNG00CBrvQn1cZ65uhGQbN6LEVGYSYece2QT
	sP0P9xlLjNCzXw9EWsHReHscVrWod+BU8k/lMebkyndR6SZ2DehqrrTfZ0tXsRHaGhLg8rU2Y1sIy
	E/vY94FsgBPNqW8h7Klw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuV-00CWx6-A2; Thu, 02 Dec 2021 14:18:07 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmu5-00CWis-P8
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:43 +0000
Received: by mail-lf1-x135.google.com with SMTP id bi37so71840486lfb.5
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=43RnM0EBZFtZGvaWA+sQCGWkjNbH4H4Tyg6kxgcaORQ=;
 b=ejGl9PXt1HLmwDPLpJVfkY07WmTphpmQwtlNn8IQSX8Ru7zcf8HIAurlvCGom1oS+D
 9E8GZwxp+fAgdNLK6/vvK4W6+ItzrjnR2f+JDO0knwVlpZXSHLUMs0D2dMx1+qvtgfio
 w8Yw5L6Bmxc6KuspHhJ60FatbVruiFczw2djf0/Res+QoqDBNnORuZ6QTRqsok6Fqmi8
 6w1Re8OY7+TCGiJknZ1N88gjfdgwc1aYCly3xPu3VwtyQsqAWZKj1yGZTVBVPATXldu0
 jm2U3WvRXiES4sbi9cfoy1zEjpJQs8XCHIdpKLQ4aA3XRI9A4XFEbCTwCqCwIV34Z+Iq
 qkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=43RnM0EBZFtZGvaWA+sQCGWkjNbH4H4Tyg6kxgcaORQ=;
 b=X5E5ETKNvflbPsCvIDcO7nY0wIt61M2pLyv4k5EpM/1gTcgplRy9nwoMJB33HU/Cpc
 s7Snf60E/+mp/6rjlE/0+G1166ULJM4ZzyaYvez/COabFyDte2TpG5FERihimZgvzqd7
 qx08dpav6x0UswYYY43J7aGdvPRQW3RSLNeXyzCvjJZVPuVk+DmNShchRzoH/tmAsfOa
 +jVDg5mpKPTTmlLl8JBJD1xB8qLrxjE0KQSNuboKegsKX2xFGaz04OluHvX9duIkOsYD
 4rri59+6KI6QejftQNRWkKOh/Xgq9JMX+sIYxQEJYhrzREL7UslwQZxtFpiqgbg7MQdT
 zn1g==
X-Gm-Message-State: AOAM531qWk1JuPcW4V4mRyuMYGH5gf4pP7fThRt81hdiPh6lbCaftupU
 LLc/fbyzugZ3hYGGdQisWgrzWA==
X-Google-Smtp-Source: ABdhPJy7vyBxLfB88TWhp5juSAum1sDtJPBO1F/39GajvgVG1MKAyAwkal3eBblfyU5A+fKP2Z4Zzw==
X-Received: by 2002:a05:6512:1510:: with SMTP id
 bq16mr11682896lfb.628.1638454659643; 
 Thu, 02 Dec 2021 06:17:39 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:39 -0800 (PST)
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
Subject: [PATCH v1 08/10] arm64: dts: qcom: sm8450: add PCIe0 root device
Date: Thu,  2 Dec 2021 17:17:24 +0300
Message-Id: <20211202141726.1796793-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061741_865008_9FBBEE56 
X-CRM114-Status: UNSURE (   9.73  )
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
index 4e825291839a..1cfdee1c38b6 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -583,6 +583,84 @@ uart7: serial@99c000 {
 			};
 		};
 
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
+		};
+
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy";
 			reg = <0 0x01c06000 0 0x200>;
@@ -717,6 +795,29 @@ tlmm: pinctrl@f100000 {
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
 			qup_uart7_default_state: qup-uart3-default-state {
 				rx {
 					pins = "gpio26";
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
