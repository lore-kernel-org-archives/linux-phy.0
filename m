Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC180C47074
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPYzXGLprqMZf/CdTM/MnltDJFzHO9ryp2RVunSMSy0=; b=FHDb0qzZkgoI7u
	nj9StwPUH4DOZkr/TgYC8b81csQjuIGUeAPcM+R31hKRjvyqpYRTqVqcUgZPJKPLVecy4DC39wJRT
	31CB5LqgdvVnt6Wrabwa4ItZKJeRA5vgviaIvy0MB4l9qy+SXApkMmsY33e0m8PGo8OeQAs/jvVlC
	vroQAzhOIecoefHRrXW7qimy2xsoZEmFXZCFp20l1uD8O5lkVznnzXzUEqMloIRgTSiUBRoKesTOo
	x6Fcias4H8cUU/0r8Pp7jSQqP1qWJJWe+VQQw4bbPtQCw5tKujtWUOygQ7iP0t2C+FYmvia/wtu8I
	u5coBAWrqyQE/cfIkWKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgQ-00AmxR-1U;
	Mon, 25 Dec 2023 12:03:46 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgN-00Amsn-0a
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:44 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40c60dfa5bfso45430645e9.0
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505822; x=1704110622; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5brTRSD7VKH6s5ZdAUAu2zmtV4YnYCW0hXVi17eq6+g=;
        b=CI6RzQyF3zfm9VcCNuBv6d5O8Lx6zDCRcTxkKVZLFfY7SxnFCTwRz/I1d3IhO5D5JN
         7R5p4eUNX1mXGZEWj7qU4hHSJPEw+lGctJ0BDeGv9MSo50UoMytQz9kAiX+LQDo4hoA6
         m7RXjGYaQmYmv98e+Wbrho/hRSIhpNiHp2mJt54vv+KZt8Ksj7/4z8EEpFqC2ZNcJUDa
         6KRyzRju2HJKvBjYysN0FIMQPmDQvspi1vznb3gwHfEFAGhqtiKdib+1utB3KPFAWwdv
         iyrhs1zdwt9EdITZCDSmGPvPo7ScMEoqRQP5WgxNVL+SKCMeuNJvc9BrHoMLNLt98jsW
         5MeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505822; x=1704110622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5brTRSD7VKH6s5ZdAUAu2zmtV4YnYCW0hXVi17eq6+g=;
        b=AC8OWpsWoN/RJbt1TRKOoygdJW89yJ+jxuWZZ/H70HDVh9Oa969RxhzWBxlBea3Rh6
         IoESoVq55ek3W1TVj1qI/X4GDW95z5CwKfNGbKKUFNhac5ZF85QKhLNDAk1Y0DKkb5Nv
         V+ZNj1HWZ0+Gjic4ZSarAhlfXjivqh3Ca1Su/ZNSMhARKsgyEHDsHxJbN/6XF3UUEKNb
         BQg13iAW40OOREbiJeLwRG7czNGDJn4JN8fA26bhFwS4A2PurAVH3FqQz+L66NL+dru1
         LS7ifCMAwCbkOrhsbBu2yTpHrKC1dBbesy0G01Yiw0DNVm1v41iy8ef22AfYYZG7JTGy
         q1eA==
X-Gm-Message-State: AOJu0YxWiAH3b4a0HLfNeRI495hqZiYqYGfp3d8OSVwyesKBdfEcYei1
	JpaSMqN//R/a0uUMoEWCfzo=
X-Google-Smtp-Source: AGHT+IFHLMVKU018jt4XmkVhXpMI+8bK+AStn2t750d5ydJIRbx+bgO9nhFTFfH4CMG0769heh2oOw==
X-Received: by 2002:a05:600c:5027:b0:40b:4c39:b4e with SMTP id n39-20020a05600c502700b0040b4c390b4emr3193558wmr.1.1703505821662;
        Mon, 25 Dec 2023 04:03:41 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:41 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v3 6/8] arm64: dts: qcom: sc7180: Add UFS nodes
Date: Mon, 25 Dec 2023 12:59:59 +0100
Message-ID: <20231225120327.166160-7-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040343_232527_D8B2A4ED 
X-CRM114-Status: UNSURE (   9.08  )
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
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 70 ++++++++++++++++++++++++++++
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
