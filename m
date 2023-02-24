Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3662C64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 10:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PscJP708XdwM8ut7I0ahKYEBMPZHO7qrdEHnO5hoqG0=; b=KkUETLLeLI54eQ
	uOmgNGMKIa38/QLvhrLyMFgkfxwtFE4OhZOKBaQbt/WPp2fACfFPRS+HPFpjXECrH/C1P95b7aH+b
	/ZMfKht0aSO1lE4OBTu+EsnKPWe4oEZnvA7F5F7CpSOgblzKhhFl0gm2/xmVHs8ADzSsZJtssTnp4
	OUq+HyOHG+szWo5uLLaUdaY+/CrbZqoHq7AFTApZ2+R4+hfgdnGVfycXDE87jvQfROgLlBbGpBDmf
	FeU5cbw4SOfSHhl8GA+fEKb2p7rBhBKBKhmW5FZG+maMMtx4Yv3WvYCjuRM/sQyAYG0r0ic4470Oj
	hvQt/An5/tINzqnomm7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnr-0029TS-4F; Fri, 24 Feb 2023 10:59:51 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVnp-0029SD-1g
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 10:59:50 +0000
Received: by mail-pj1-x1034.google.com with SMTP id z20-20020a17090a8b9400b002372d7f823eso2463737pjn.4
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 02:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6vfCv6t5vjN1sjFyDIdqOCzfNDFUx2i/y3YhWTxhes=;
        b=E3vLvIh2g9bUvobdpe4jNkgRfo+p7aptEfGDgt0/wn/CAJCarKma6PtJsZA88qWAAB
         I8UfGJ0IrDOw/kyOZMtcao3yCS1Y6GB9ty8RpX6fDTqYQsAV2QhlDpzxJGaFM3sqfIpU
         EktNzBNQhO4nWgXwPiH3p7CRIbCIqX/Zx46HNFKpYYG8C01Iute+Mgl0Jm0mSduTOr3z
         mzbGzsEVhJinNyGU/JZW8QBfog8oloLsk8NRCmuTQWfMV23qzBN8UOEU0g2c0SnNLFC2
         1PUYL0VuaI/BsK3t17rp2UWkdBWRUZ2UvS/EEhuQPRfXqeANcuE6FYUqN0udSdZ8dzu3
         KuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P6vfCv6t5vjN1sjFyDIdqOCzfNDFUx2i/y3YhWTxhes=;
        b=n1Pjb5Ffb53SCO+J1eWOdrhhlFD3/uhARndKR5O6Mot/POm6lipwk749ZkPhbXmfqJ
         OaaMC97PIGzPnqyjDcUOoJBW6Q3CdyO2KwhXNypWDaXLWpQi7+golxN6maTSgg/EB7pP
         /je+ZIMexsFT3h3P5Ma+fml5XHm9eGYeqIsaajrMeTICOJqKvJZMIaahPUGEUNnUUIz9
         guQjcvBY/3uHQK8i1106SaIpd08dou5wHfuWGFVevUM2+svlEoBGbUPqRetFN9iGi6Zi
         U2HGuxnK2GQ5QNuVkkefM+tKajulPqbV5BerhO1MXl7XBJGuPpMxnuNsB/U3hYdToYr0
         /fgQ==
X-Gm-Message-State: AO0yUKWoxhfVPzKGc6vZl4sO+UlPapMHTfozYAYbtnO0hECA8XQ26UGj
	4JsUxuo2PlhH1YIFzbb6QfMX
X-Google-Smtp-Source: AK7set8i0WA4JqJMrgHjV0wM4NunGTsxWfFyBZgCTAe9v84lZvvPQ4osQaGtgXPJsdj4Un0C+6sg9Q==
X-Received: by 2002:a17:90b:38ca:b0:230:a82c:d6c4 with SMTP id nn10-20020a17090b38ca00b00230a82cd6c4mr16388555pjb.15.1677236388465;
        Fri, 24 Feb 2023 02:59:48 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:48 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 07/13] ARM: dts: qcom: sdx55: Add support for PCIe RC controller
Date: Fri, 24 Feb 2023 16:29:00 +0530
Message-Id: <20230224105906.16540-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_025949_117975_5AD4D79E 
X-CRM114-Status: UNSURE (   9.18  )
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

The PCIe controller in SDX55 can act as the RC controller also. Let's
add support for it.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 82 +++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index a1f4a7b0904a..b411c4ae34c3 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -303,6 +303,88 @@ qpic_nand: nand-controller@1b30000 {
 			status = "disabled";
 		};
 
+		pcie_rc: pcie@1c00000 {
+			compatible = "qcom,pcie-sdx55";
+			reg = <0x01c00000 0x3000>,
+			      <0x40000000 0xf1d>,
+			      <0x40000f20 0xc8>,
+			      <0x40001000 0x1000>,
+			      <0x40100000 0x100000>;
+			reg-names = "parf",
+				    "dbi",
+				    "elbi",
+				    "atu",
+				    "config";
+			device_type = "pci";
+			linux,pci-domain = <0>;
+			bus-range = <0x00 0xff>;
+			num-lanes = <1>;
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			ranges = <0x01000000 0x0 0x40200000 0x40200000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40300000 0x40300000 0x0 0x3fd00000>;
+
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7",
+					  "msi8";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &intc 0 0 0 141 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+					<0 0 0 2 &intc 0 0 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+					<0 0 0 3 &intc 0 0 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+					<0 0 0 4 &intc 0 0 0 144 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+			clocks = <&gcc GCC_PCIE_PIPE_CLK>,
+				 <&gcc GCC_PCIE_AUX_CLK>,
+				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
+				 <&gcc GCC_PCIE_SLEEP_CLK>;
+			clock-names = "pipe",
+				      "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a",
+				      "sleep";
+
+			assigned-clocks = <&gcc GCC_PCIE_AUX_CLK>;
+			assigned-clock-rates = <19200000>;
+
+			iommus = <&apps_smmu 0x0200 0x0f>;
+			iommu-map = <0x0   &apps_smmu 0x0200 0x1>,
+				    <0x100 &apps_smmu 0x0201 0x1>,
+				    <0x200 &apps_smmu 0x0202 0x1>,
+				    <0x300 &apps_smmu 0x0203 0x1>,
+				    <0x400 &apps_smmu 0x0204 0x1>;
+
+			resets = <&gcc GCC_PCIE_BCR>;
+			reset-names = "pci";
+
+			power-domains = <&gcc PCIE_GDSC>;
+
+			phys = <&pcie_lane>;
+			phy-names = "pciephy";
+
+			status = "disabled";
+		};
+
 		pcie_ep: pcie-ep@1c00000 {
 			compatible = "qcom,sdx55-pcie-ep";
 			reg = <0x01c00000 0x3000>,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
