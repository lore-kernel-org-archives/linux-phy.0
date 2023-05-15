Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F754C7EE22
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 09:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJVijWyFrAF6Mx8pPUUOjNDvj23IN1+7V3M8vw5Pq/k=; b=ir08JDXsFdnEVv
	rOQOfYoJS6fadR596DAHpy6i4dANAuUmkmd/C4UaFgtuxf8Mlm8VxZmL9lNInb4p7vI0oIHLJovxY
	Eu+ljsJ/Q6HOAvO3JP0x4uOfUSQm7c6PS0cC57VHbeES4o3BGtjgngX/ixMYZyQt/6fzBn4jH788t
	9HDOW0KORkIpiXinTbwdqRs6beOB3/z6BAg8OxZ+xj4iFSryu9zLriW/oyKIUgCKF2XguR1+wRnaX
	WWS1Hj3QTslKqrAJx7aJ61kccAivuCEIP2MPiE/Lnk022Pr+dxSoVpFoMA3pop/KZmL4iHWNNEeLj
	OX5SyAZ3qYcwTkr9/kCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtP-001e7a-0r;
	Mon, 15 May 2023 09:53:23 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtM-001e5l-2C
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 09:53:21 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f475366522so36621975e9.1
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 02:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684144397; x=1686736397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zw3tHgSmx0+aGQ6ok918QWUx6du1sRTuaBQiBEAbYqE=;
        b=alqWEc59M6JxQ3EjazsjKd7YjCNAlfbFHrTSY6/6qRShWXoXh1csXup+xon5cr8T4u
         V/Gwr8lwXM8rLHI3itA1+yIrp2xJhla1tBK6XCjx2qfCyGL5y95ti2UmyXP3Qo0hH1LW
         7fJT5ehUJpianr7rwxRO+QNeig6XbYAISAMGA3a6ynnQ0bXXj+OCLuL+AClMEL/3CT8J
         uOGnlR937JhmYArmlvYfmjL2PbQ6cuNi3pVNM6Q6/YenxTqhwNVLSZWXCubMApKUr6Et
         F1x0sdNkhsg3DmPYxPbK/wVMcJnQTiHkd4UypfvJqYGApQZ1kKzVTFZei4WNOs57/I68
         EspA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144397; x=1686736397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zw3tHgSmx0+aGQ6ok918QWUx6du1sRTuaBQiBEAbYqE=;
        b=QHloykHi/qp6hUNQBSy1pTiZDDIgSTfuGqRN3iddt64yHrmHvnNC5XD/JdGsXOY1Fk
         JJgtmyjYgaNb3gZkF/Zz1gPUwdiJq155a7WDUxhGbTxWCaafye5Jeffz2DtW258DSSTo
         M/RoSnjOgTo0bOgmnCMjL6Mpz5TrMXZM7OFVErnl03fr9qPPG0exrSgnIX6wbAD5+oMX
         aHBWvokQr9+9558TQH7M+Cm2Z21yzTbU1C1AuUPPNwLMZCQGOt14FhBvGRNfC8h3sNZh
         b7XAT6cBItXq1vUgGg3PPv5vubL/19so36c7+bzMSWI/CtKRN5SBNzvxVcEomvr2fykl
         GwNA==
X-Gm-Message-State: AC+VfDw5zd46tAWTI8+lI2XqwcHOxVeLoxj4MRtoU3LIKOe2AqBFwcNG
	3I2RRteL8kYjvlJj1K3Q6OCVeQ==
X-Google-Smtp-Source: ACHHUZ6F05nHgTw7qkrJTYYoVB8J4n4bS1/ntQGwRHyn/zfwZxOSFPTH8ukoXbQm3DowZDUn/ig8sA==
X-Received: by 2002:adf:fcc5:0:b0:307:820a:490c with SMTP id f5-20020adffcc5000000b00307820a490cmr23692694wrs.13.1684144397529;
        Mon, 15 May 2023 02:53:17 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1388:9f6:c7d9:3b77])
        by smtp.gmail.com with ESMTPSA id q12-20020a05600000cc00b0030795b2be15sm24228443wrx.103.2023.05.15.02.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 02:53:17 -0700 (PDT)
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
Subject: [PATCH v4 2/3] arm64: dts: qcom: sa8775p: add UFS nodes
Date: Mon, 15 May 2023 11:53:07 +0200
Message-Id: <20230515095308.183424-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230515095308.183424-1-brgl@bgdev.pl>
References: <20230515095308.183424-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_025320_725114_956A116B 
X-CRM114-Status: UNSURE (   9.25  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 59 +++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 92712d0c4100..3f1f374db54f 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -586,6 +586,65 @@ &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
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
+			dma-coherent;
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
+			/*
+			 * Yes, GCC_EDP_REF_CLKREF_EN is correct in qref. It
+			 * enables the CXO clock to eDP *and* UFS PHY.
+			 */
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
