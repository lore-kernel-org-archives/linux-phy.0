Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37D8BC77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 19:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59LmLYQHuVRr2Wip8lIygjdjO1Jnn/fuL/UE8Lp/rws=; b=I3xlmxKLBqN059
	cYxjNh9Q5NO3io5S2Swm42CxvxIfwoxirjBGeRl+fNcZyPVO310i1WRNc8EBkDjPoYyyopC04IFcE
	BHqksyGz5d/8k89plm9wVcJMrfmuVV/Q84BcJJiAwoN9wU/0QK32XxH3cJYTpgbBsHoq4Jq1zZrb6
	Iue0IKQ0ZPv5c7ZsVKXJZluiVmAN6MlmwroCZEU9lPAW5vj+9GnfXaQmqfhCu+MKazxClvtn63NrV
	N4GeQlvq7OoADoqJyYmoeLZaJMcmPoxtGHOYhOciTdqqmuCfjPk+mhSvW8+siUfco656vGq/ISaSY
	IzDnron2t3Et9USkcOEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuT-008h8R-1f;
	Fri, 31 Mar 2023 19:59:41 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuP-008h46-0u
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 19:59:38 +0000
Received: by mail-wr1-x432.google.com with SMTP id y14so23596114wrq.4
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 12:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680292775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qiWk/+mgLAf2EnRX8Fh5IMnKjd+gQV6YsVP4qVwV4hY=;
        b=OqnRZ5hnreQvDc4qITG28Gj0eZpJTynwWVjUQkqQ9fkGuQE5+57+3nlQiZQzHX3xFT
         4DTqL7rsejVglX4Z9R0lCMtLo0IiYDv0q2N2yLupeaIyp9ZzPXvMg8we6Ewvit3RJXFr
         oYpZ+ljAGrXQn5sTd85ZTVAEbJfD5PIpfQy/IfUIbjXBJmZT7nTWDlg+ojiges9H0mNq
         6nVjqv+VB/nhU8MW9YgafrTl/XZ6oiNwFiCQMeURtnmrFxFzup86bpevC2Fol6y+ZVYu
         yNskiP7S+FDJiigtAk5PTM5p8b4yaPe/ohHYqGnn8VSMhxFUuGpBxBXlEnjL2giiQjqY
         TZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qiWk/+mgLAf2EnRX8Fh5IMnKjd+gQV6YsVP4qVwV4hY=;
        b=eMmC07S4h4I0a5stKxoPoyH0MYIII5rcC73PXAKbqXM8tsEYDv9pP7EY5WAxkyAyU3
         X7GFFo/WHHgHmsxz3/FEZQdTPzFTNaPF+G7KI7heOEDW/9zX/Q6IP3nCLD3JmcgW9led
         TLCIlkpRcl4GwVDw9VHWxn8gvQUQ0b8h81LLjtiO0t7yBWIScGu1UdK27oUYiZxuVCSY
         s23mlzhrzH5lU2NoDfXDCcIEZ4BsqSiYsOgRLzvC2O7nVmb4Qza6TZHtaSbOK+vpR5Mc
         8tzlU6Fk1X8kgWWnBT7Yhhaf9BdtrRk3qyGP2MBh/NYQy2rIzL10HBS6nSVGbolXuN3T
         Vs+g==
X-Gm-Message-State: AAQBX9c+z/+3W+FVDgpEJIQLz04XBrCrQKgGWstWLMLOzIKuu5nsuJ4L
	vdbFCzv/eej10J5vSfaZ1PM7Tw==
X-Google-Smtp-Source: AKy350bs3QR9n5wuAf+Vh9vvo16nfmEq/pwy+yxQWPrBhA55iLWx6x3/P/6zUnjRXOIpr5hKkU4MuA==
X-Received: by 2002:adf:fac6:0:b0:2cf:e67c:8245 with SMTP id a6-20020adffac6000000b002cfe67c8245mr19196088wrs.44.1680292775092;
        Fri, 31 Mar 2023 12:59:35 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1dc:d1f:e44f:2a1d])
        by smtp.gmail.com with ESMTPSA id c13-20020a5d4ccd000000b002cff0e213ddsm2990286wrt.14.2023.03.31.12.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 12:59:34 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 4/5] arm64: dts: qcom: sa8775p: add UFS nodes
Date: Fri, 31 Mar 2023 21:59:19 +0200
Message-Id: <20230331195920.582620-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230331195920.582620-1-brgl@bgdev.pl>
References: <20230331195920.582620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_125937_347308_CD1C4D9E 
X-CRM114-Status: UNSURE (   8.57  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add nodes for the UFS and its PHY on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 54 +++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index de5e8449397c..c737e67b9239 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -586,6 +586,60 @@ &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
 			};
 		};
 
+		ufs_mem_hc: ufs@1d84000 {
+			compatible = "qcom,sa8775p-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
+			reg = <0x0 0x01d84000 0x0 0x3000>;
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+			lanes-per-direction = <2>;
+			#reset-cells = <1>;
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			required-opps = <&rpmhpd_opp_nom>;
+			iommus = <&apps_smmu 0x100 0x0>;
+			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				 <&gcc GCC_UFS_PHY_AHB_CLK>,
+				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
+			clock-names = "core_clk",
+				      "bus_aggr_clk",
+				      "iface_clk",
+				      "core_clk_unipro",
+				      "ref_clk",
+				      "tx_lane0_sync_clk",
+				      "rx_lane0_sync_clk",
+				      "rx_lane1_sync_clk";
+			freq-table-hz = <75000000 300000000>,
+					<0 0>,
+					<0 0>,
+					<75000000 300000000>,
+					<0 0>,
+					<0 0>,
+					<0 0>,
+					<0 0>;
+			status = "disabled";
+		};
+
+		ufs_mem_phy: phy@1d87000 {
+			compatible = "qcom,sa8775p-qmp-ufs-phy";
+			reg = <0x0 0x01d87000 0x0 0xe10>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_EDP_REF_CLKREF_EN>;
+			clock-names = "ref", "ref_aux", "qref";
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
