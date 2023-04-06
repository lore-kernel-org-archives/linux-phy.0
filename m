Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81FFCC77B6E
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 19:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQvzZSL8ay2UuqjSiGbSiPEXyrOcs8pk9sfHqebKnXY=; b=KWa8LPZJuycTTA
	M0OyyODIU4duHvHht1UYv55DkbOHeUyvL2vuVRFfe2SrcGDdMwfxfQuBQUkyVbOjZUL803H7Q2vwQ
	FV8DEkXt15Oklbzu9bMKjbW6qB+pHO8AokIcQuh2K0gRJTmmIl64PQZErGSkIQ/92Xt+lM2sJjFCc
	f5sjBJKciPl76HdIg6JeYqBFuvsC+vlkoJ/X4tu51M6eQ9uxgfef62Rk4aUwdm8UiW2hbHFY8gbsP
	UH/UIwWWWZ6/a4HaNr6YDdIFpE5VTrC8hBnZ1GicpVGfbGpUkjjDKdEwqJnkhhEXv7YqT8AenrL6c
	J7osdKH0L91Xsoe17bLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZr-008QlD-0Z;
	Thu, 06 Apr 2023 19:47:23 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZn-008QiT-2F
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 19:47:21 +0000
Received: by mail-wr1-x42a.google.com with SMTP id y14so40643493wrq.4
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 12:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdoFuvtIQt2NqvRE5WG6+GxxM/OuV38vuGKtX+YJ/oA=;
        b=SvFxuanpWLhcNjuey1PPT6Kber/vnFoJOSqAB4aJX37Gp+zGhrgBd5cnkikwvVVstz
         k39TEWIBgJIVt0gn2tNH5znrIuOAACrCmY7NsazbHzORG6jwHEnPqrg6PHlSnPUDxJoy
         gzB2GJBRX60/og19CLchYBnP53Ax5oXPEPCKfwD6UZnt9jfo6gk5sYiOGlg9vk7KrFon
         G3OjiJ0wK5fQQEmIpIDzMMMAROicAayWvfNJ9UV9c7N85olr2qhLPt28tg6a+/JMBlOo
         nZqokLp0RiWhvQdbeWdYgeKjyyVudyqWHcNCNPepCi2ufCpkFdcrfXo8DAMT9+Ti1WfF
         qf1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vdoFuvtIQt2NqvRE5WG6+GxxM/OuV38vuGKtX+YJ/oA=;
        b=HOSV5Fz49S/Z8ocWm6bGRq9LWtRwvWbGesPYFrQ1Lc0v+W0lHYq+Ih8u9NMICr3JAJ
         loNyEjXP+G9AqleHCbemb+JWt91XkRpGyI9DOBrw0bq61c5gTiQf0JL0B+8shKspkCxn
         +RzdXPpiczNWsXwlKoRAf+vUBqFyIMe7nkk8FiMCDxe7+jZbu7EqmS7DiICyf7xHNOBI
         W+P4XHtRUyAckJaMsn7Z897AI7z92mnUkxKu3LDX4BAK6fRMmBfjtKz57/e1lomcz93U
         Fln5DqykwPwv1kx3dH3t59rhtCuSQIXqFRckIzeCLAGOUpJz0qTQ1TrhadG6ZiO3Y35J
         3neA==
X-Gm-Message-State: AAQBX9ejLPP3jWD1cZysMjgRIKJThL3K/H55Vuy1QdX+fxkbodmy+qej
	Mka7Q8vMSoqx9HSR9BirgmFQDg==
X-Google-Smtp-Source: AKy350aNnlf3gSYxJSTtE/BexI80dm8UtqpOVNHh8HpGfQPy/nglUjePfhBAir3VH2FNKqX403IzBA==
X-Received: by 2002:a5d:63cc:0:b0:2de:ffec:e48a with SMTP id c12-20020a5d63cc000000b002deffece48amr6997346wrw.29.1680810437811;
        Thu, 06 Apr 2023 12:47:17 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:17 -0700 (PDT)
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
Subject: [PATCH v2 4/5] arm64: dts: qcom: sa8775p: add UFS nodes
Date: Thu,  6 Apr 2023 21:47:02 +0200
Message-Id: <20230406194703.495836-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406194703.495836-1-brgl@bgdev.pl>
References: <20230406194703.495836-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_124720_037283_4A1594EE 
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
