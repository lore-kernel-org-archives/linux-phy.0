Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B4DC77B6F
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPPsROaKv8uNbCm8+Z5CiMgLHesGVodAhxvqaw6SIIs=; b=hLNMGSGOMzXkqD
	WzIMVw+fOs7DukQXK4TwHB+sXmrSIceTRwljWXdxsV7FaV8ByfnJ/kDOMawGft+wqxxKR/TVIXKnW
	jb5n7NKX5cNhalabIToBwlNrIUi9eFwUXTXxJiDoZchTa9VMJbaAplHvndFqxKwCJ8mvfW9nApk44
	Rk7zbaxxb/e2G3svONOMUIEGwzCunZcJWM+xEo7TbgR1lZOEWC2V0b7+laZzDZBCt2aRScdSqgkT5
	slUZPcocSxbloEjKQPRHwU5GtuWkO5N+8ZeV9LUwaVSEYAbVhdK2Znz+dsgwfnYsukqgXF0Ljux8t
	coZNObUQpcx4ERsLQ0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDgC-0003a0-23;
	Tue, 11 Apr 2023 13:05:00 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg7-0003Vt-0T
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 13:04:57 +0000
Received: by mail-wm1-x334.google.com with SMTP id m8so18202782wmq.5
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 06:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1681218294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oLCBk+PsIVXWwQR+9sa67ykV6lK08ZiECvLUtYgfM0o=;
        b=d6EZ8uwhcw6fanAnJ8/rtneUADfpHNDKiWcwOhf8m2Il2fZZlbK4V1Uldwc+Vak5en
         cXrwVZB96A4CKSA2H2SGWWXpn6D6BvDn88b9peIQhoAiz7cXsvxN32+1CGnURrMC20yD
         /Ldd3PY+53yjetEed1zF+tyFW0KQ3thuUILbaUjbRkJhlzsQamXlxCOuC49ModHgXUs4
         ueKgRk3QPaQSVVT8V/m/AZsGdwsO0og514hIwdoSKTcAJ0cvHjnP6RG63F/QfoRqUylh
         Cf5UKoY06YmlTfZ8WKlL3iaZ4aWeeycALQp40SG5LGc1lX4W85wtdmti+RVUJRarjq9d
         WH3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681218294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oLCBk+PsIVXWwQR+9sa67ykV6lK08ZiECvLUtYgfM0o=;
        b=QflAlYhpk+nkwwwZCvAJboFMM/P7fCIAuEowbaXZsETr/cgE12KeINhtlxRB2bo8Ua
         au7jm6kZWVvX8mxbbgDuNM/zGO3HuwhUrxBlOxi21llrdUBRGWmNHDhZdzY5F0bN+9DS
         7a8ReCBC74/Mc7H2dT2nWd05+fl/2Lqe/LwNwiGl0FksjPGrjZOe4i3Fbz29MXCdSK4G
         KJfQt4sF8OwccSOMCPALXh8B9EE2kvOClzi0kUKJOib/vPN7Abs+mkyT7vWe8mTnwfJa
         CzOTKB4r+bI7os/rbaweB2OLiZklCxUjItk27KNLSeS9x0zYTCMquE0lu38M5Obaz55Z
         BEnw==
X-Gm-Message-State: AAQBX9euic2nus1klheK/o/9+U59wpbzVoR5Ko63zKnRoeD1aBbASiPi
	Gg4ATrGj9Ud6yH+96tro3lBcvA==
X-Google-Smtp-Source: AKy350bPGFoKm6Od0G+mQl6ZTRtIIdj5cUlHqUQYC4yBs/GbWZ2d2ZZjCJlVa2eYNLXdUiPO5nVNdw==
X-Received: by 2002:a05:600c:2247:b0:3eb:2b88:a69a with SMTP id a7-20020a05600c224700b003eb2b88a69amr6678335wmm.14.1681218293854;
        Tue, 11 Apr 2023 06:04:53 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a099:fc1d:c99a:bfc3])
        by smtp.gmail.com with ESMTPSA id t6-20020a7bc3c6000000b003f04646838esm16921301wmj.39.2023.04.11.06.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:04:53 -0700 (PDT)
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
Subject: [PATCH v3 4/5] arm64: dts: qcom: sa8775p: add UFS nodes
Date: Tue, 11 Apr 2023 15:04:45 +0200
Message-Id: <20230411130446.401440-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230411130446.401440-1-brgl@bgdev.pl>
References: <20230411130446.401440-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_060455_244760_FCFA59CA 
X-CRM114-Status: UNSURE (   9.35  )
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
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 58 +++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 2343df7e0ea4..5de0fbbe9752 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -585,6 +585,64 @@ &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
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
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
