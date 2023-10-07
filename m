Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94188E95A66
	for <linux-phy@archiver.kernel.org>; Sat,  7 Oct 2023 14:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GInlf72Z9lrGVdtStzvgqaaODopHpKGorGBBzHnHqRQ=; b=RrctHk7LCtN45F
	cltlk3XEIFoQkSzmy+1CwHA/ku0QzU7nWEC6gzn0RguDctJ4WP8tYO5TQo0/ZNMsX0N1J/ybe9MyP
	2MAfA62yHzgOpo65k8FRMhYfE/7ZJkHOFW6yJdHseI833Pu401rNAEvHkjk5E4T7eBF8Dg0vlGB+9
	M8VdEwTbzyfaBrmtUutSN2LpvMSASP7RwotJrFOhvWrpkh4b32fT986RWVcTGpRC2mkv78SmgUSHK
	jHGjSJde4CkB1wr5xH8IZ19nUGq0QHHRc8tABNRMyHy8mRg8ARu9n/IVX74lMD98L5fyivOzAZrkL
	XRAJYMUh3K/BV/u4aZuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rg-007cka-0r;
	Sat, 07 Oct 2023 14:01:08 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qp7rd-007chU-2O
	for linux-phy@lists.infradead.org;
	Sat, 07 Oct 2023 14:01:07 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40651a72807so29936295e9.1
        for <linux-phy@lists.infradead.org>; Sat, 07 Oct 2023 07:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696687264; x=1697292064; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cp/w9tRifckqyMe+/sK13v+Eni6uaKZUbFHKhF2GUQM=;
        b=YDWZ5HVDuIP5ybUR85mc7sndFOLA8OEeZmpa8GemavUG/ZZBVAfaWn1BjC8Vy3tawr
         RGwV15Kr4iS4EcWqwwXdF2myFF01uLTvyZZQfDHTagu1k9e6VwrbV5lUjCDGR1NiYVuq
         boey/m9+KRxTNSGO6n9lGIsTLRg/qvCBJt5dNhtx6ZNFX0ZZEO2ClSeEfqhtTI4xy6PM
         m1V26ErhDOzMeksE3wGcD8YiUYZhLwZgqmZwdRReQa8pcZLHTKJxsHoKUQ7F1pH+t+0m
         nuH5CwOhhPUh33KT50uf5vhDh8skDF/UjQs4A0ne0O/V0Bgd0mO6juxVzRGJz14yX7FJ
         zodw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696687264; x=1697292064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cp/w9tRifckqyMe+/sK13v+Eni6uaKZUbFHKhF2GUQM=;
        b=hlC/iJd/qLTKBFtFEb953hI83YGyXpDDGchMBey9SLeIWInbFze0vWuyOdtGsgsG4g
         UoatrrhEwDHkUWy+da2mOr1Xl4WXU2H2h3Aa4ewHmszuZefwLBW6OcByzewyIY/G0dOu
         CtkxxFzumne+fBnJnPBnl8A5c0XIdasnYPwZjoTv3czj+vs9V91CNBS0PoYk98g5cilI
         kkH/1xJNBQ7uj9VcHY0MGXXDgHlgMnghGj2cT0rFBEUlrUN2hdULWS8a6/pi5kaGT5Uz
         cZEwrebQit1cy+XeeK0mGgd8CvmWtoGvhI16i8006PesfyebdEn8M1XB83Utxq5D6rxR
         BlYw==
X-Gm-Message-State: AOJu0YwQZxzCSIGPFuBGN24sDAhceSpNEgovYP2YwTMMKup/OrEYB5b8
	fhm/F1ULJijMCIbdeXOLJnA=
X-Google-Smtp-Source: AGHT+IE0WL+cWTW3NGWt1ZiTCgreLUxlk1FxmNYI7gq1+dtvcI1CRLU4KKZR6fIGQtfjgXaYYpjDmg==
X-Received: by 2002:a1c:ed17:0:b0:402:ea6a:c955 with SMTP id l23-20020a1ced17000000b00402ea6ac955mr9726852wmh.8.1696687263592;
        Sat, 07 Oct 2023 07:01:03 -0700 (PDT)
Received: from david-ryuzu.fritz.box ([77.22.112.104])
        by smtp.googlemail.com with ESMTPSA id q8-20020a05600000c800b0032415213a6fsm4332043wrx.87.2023.10.07.07.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 07:01:03 -0700 (PDT)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	hexdump0815@googlemail.com,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH 5/7] arm64: dts: qcom: sc7180: Add UFS nodes
Date: Sat,  7 Oct 2023 15:58:29 +0200
Message-ID: <20231007140053.1731245-6-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231007140053.1731245-1-davidwronek@gmail.com>
References: <20231007140053.1731245-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231007_070105_780800_7AA55900 
X-CRM114-Status: UNSURE (   9.46  )
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

Add the UFS and QMP PHY nodes for the Qualcomm SC7180 SoC.

Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 70 ++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 11f353d416b4..9f18be4fd61a 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1532,6 +1532,76 @@ mmss_noc: interconnect@1740000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		ufs_mem_hc: ufshc@1d84000 {
+			compatible = "qcom,sc7180-ufshc", "qcom,ufshc",
+				     "jedec,ufs-2.0";
+			reg = <0 0x01d84000 0 0x3000>,
+			      <0 0x01d90000 0 0x8000>;
+			reg-names = "std", "ice";
+			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&ufs_mem_phy>;
+			phy-names = "ufsphy";
+			lanes-per-direction = <1>;
+			power-domains = <&gcc UFS_PHY_GDSC>;
+			#reset-cells = <1>;
+			resets = <&gcc GCC_UFS_PHY_BCR>;
+			reset-names = "rst";
+
+			iommus = <&apps_smmu 0xa0 0x0>;
+
+			clock-names =
+				"core_clk",
+				"bus_aggr_clk",
+				"iface_clk",
+				"core_clk_unipro",
+				"ref_clk",
+				"tx_lane0_sync_clk",
+				"rx_lane0_sync_clk",
+				"ice_core_clk";
+			clocks =
+				<&gcc GCC_UFS_PHY_AXI_CLK>,
+				<&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
+				<&gcc GCC_UFS_PHY_AHB_CLK>,
+				<&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
+				<&rpmhcc RPMH_CXO_CLK>,
+				<&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
+				<&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
+				<&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+			freq-table-hz =
+				<50000000 200000000>,
+				<0 0>,
+				<0 0>,
+				<37500000 150000000>,
+				<0 0>,
+				<0 0>,
+				<0 0>,
+				<0 300000000>;
+
+			interconnects = <&aggre1_noc MASTER_UFS_MEM 0 &mc_virt SLAVE_EBI1 0>,
+				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_UFS_MEM_CFG 0>;
+			interconnect-names = "ufs-ddr", "cpu-ufs";
+
+			status = "disabled";
+		};
+
+		ufs_mem_phy: phy@1d87000 {
+			compatible = "qcom,sc7180-qmp-ufs-phy";
+			reg = <0 0x01d87000 0 0x1000>;
+
+			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
+				<&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clock-names = "ref", "ref_aux";
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
+			resets = <&ufs_mem_hc 0>;
+			reset-names = "ufsphy";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		ipa: ipa@1e40000 {
 			compatible = "qcom,sc7180-ipa";
 
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
