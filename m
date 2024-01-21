Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DBF7C47DAF
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAv+j6aPTpuo8QvDjVLha0v6jXLkCg2UfQa2biCc4JE=; b=hIVqKI1Tue+B8d
	kNrp6/+AJfD830c+Tf8QxpibsHnXSUMenjSt5+TnTVdolFobQvhnb1GZ10CyXESmDCVZNIIqGug/L
	WrepAMCRUE32Vd+RdLtWwPy5lapFQA9yHaPfcUfqQ5sAMG87HIeauSbLTGIUi2eJ1ccyM9XyAGClk
	o88W/bMaFbAc3tLl9A3dLrLdx9wXdpQhkXQun2jAj8UIaf/K/TbdtmaDjEXNMAiVowwJY6abxg4zz
	5d5ftH7eJc8wY5ftMm9jk1Uptm0Rd4X8LZRaJHgt/Urvq2NuFaYeHI5s11QPBJZAPT1Lb6FbJcx3P
	3N/PhQxsXIRUmkwizM4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAO-009lzP-26;
	Sun, 21 Jan 2024 16:59:28 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAK-009lwI-1f
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:25 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-33931b38b65so456694f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856362; x=1706461162; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qo0ib7C6TUtcBIejQoK+EtbiZe92K2BuKhrngunq1ko=;
        b=jKExXiW69yPUwMXGKWsPo/KFrlH7qrOfZUFIR6AqsqM5tfl1Hnq40ZRg2792JRiTIi
         dWocXxMR5Ne1WJktxzfjIVUCAY1W8M7902EUpLganJ1/m4MttC1akut67x7HoVfMDo3k
         vqLPvy4jICLWG25W/PxmQ6LMP9vfWoLENC0JURx81FcQ6XIzcz88rQaaTFPpnDXFcSgh
         1opfhh42caUvVj/lk0RvXb2KseODC2s7tst4wIb1H3mQIBtxTB5nQ+mwQJfKyzbLJa1a
         6z5Ol3Q/hkpuxefBWOF2iI3aR8wg8qJkofhrtcXtcOycX6TFMiVLY8/QvdgcVdMjksar
         b6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856362; x=1706461162;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qo0ib7C6TUtcBIejQoK+EtbiZe92K2BuKhrngunq1ko=;
        b=fP9GgVaEs/aJWAmBeeH9xX8mvQEzN2dcMSQX5DuR5BidVcmHj8AVaEqBEOmrZaqrBj
         /ljcbhfIQnFYIx65tu2Lz34QoZqSWRy+3WkEukPJJpWCUgWaIci65AiOaiKjz40wz56a
         h7TXKWZfoaXTadNZBqEyRijD62iWitIWC90sd0K7YQjf0PFqyj201icw0MPgcsnwI1Io
         HEZHF7cs7NIRBWnpnUxWS/lVkPDpZNq56Zsx2WAbw5TUMEFtIxIY64yY9pIq071NMBbF
         2xvBTzp1R50hgL/Lo+WFnwSqYhzc3aQUN2Z5Cvqz4kDHQh3/vsQ014NYlhquIuSdKcto
         9RTQ==
X-Gm-Message-State: AOJu0YwjOg6mLgSIhE+LUUkg/QmgNk6mcl8/pQJAcqJ6h0yQ9Axz+S8D
	pbhsCTpD+5BbqyjWBqNR2GJ2mYveLXO+kgUJNcRJdNiHSTKZ4LyuJrcJHTHP
X-Google-Smtp-Source: AGHT+IGJoG871Sz7xpwv8z4prtpFIJHsc9b6Nx7+yT0ZTicW9bxEvV+UUzC/VttqB5z+MEDlpF1xdQ==
X-Received: by 2002:adf:f6cb:0:b0:337:bec0:f8e1 with SMTP id y11-20020adff6cb000000b00337bec0f8e1mr913546wrp.244.1705856361938;
        Sun, 21 Jan 2024 08:59:21 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:21 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:46 +0100
Subject: [PATCH v4 6/8] arm64: dts: qcom: sc7180: Add UFS nodes
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-6-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=2735;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=MtVhwuHNbEP/vSCa8fcY/sH7cIwR8Q8n7RkTyvahgCQ=;
 b=fhzJZVm/qMMTdyjWkpEBv/O2e/Jk+jSMKDBEkKvJz97udNDUzwL1pgPjfwmqDvHAiiTd0Uvv3
 Ud6DPxOolvnAVVhusODuHwt/5z0l4blP7iTfBGXe7lXPCTZ8EoVqKpy
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085924_553050_FC791C86 
X-CRM114-Status: UNSURE (   9.02  )
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

Add the UFS, QMP PHY and ICE nodes for the Qualcomm SC7180 SoC.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 70 ++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 4dcaa15caef2..93c867cac755 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1532,6 +1532,76 @@ mmss_noc: interconnect@1740000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,sc7180-ufshc", "qcom,ufshc",
+				     "jedec,ufs-2.0";
+			reg = <0 0x01d84000 0 0x3000>;
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+			lanes-per-direction = <1>;
+			#reset-cells = <1>;
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
+			iommus = <&apps_smmu 0xa0 0x0>;
+
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk";
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
+			freq-table-hz = <50000000 200000000>,
+					<0 0>,
+					<0 0>,
+					<37500000 150000000>,
+					<0 0>,
+					<0 0>,
+					<0 0>;
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "ufs-ddr", "cpu-ufs";
+
+			qcom,ice = <&ice>;
+
+			status = "disabled";
+		};
+
+		ufs_mem_phy: phy@1d87000 {
+			compatible = "qcom,sc7180-qmp-ufs-phy",
+				     "qcom,sm7150-qmp-ufs-phy";
+			reg = <0 0x01d87000 0 0x1000>;
+			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clock-names = "ref", "ref_aux";
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		ice: crypto@1d90000 {
+			compatible = "qcom,sc7180-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg = <0 0x01d90000 0 0x8000>;
+			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};
+
 		ipa: ipa@1e40000 {
 			compatible = "qcom,sc7180-ipa";
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
