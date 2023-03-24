Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17547C7619A
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egoBYCdUK/7XFsgVXgWV4VV6LENaq+hHxZVIu2YAVlc=; b=3skbf/G0ooChXw
	3O0K29+FxAvpC4wJ66cGjRWFxNvABwpc5dwuDqZeHn/YkY3FyjXzyDK7PFVLZn8kjjFDuPTDzFsdU
	Oqe8K1cWhhueMXuf9LpreJfib1Fb2mhvpo7LPDjXH9acK3lEluZV6k55KmO6xSPd7HrXsQ5tuwtHb
	OcdpadwJ4s7FXyDTP1dluPREZtxZy8JokGm5ZfVXOMoVlvWaw8z1M9Bp1d9L/vVSbn1i233szI8d7
	UiYJBTcHfKwh/qArInOBWz0pCGQmUkCFY4hN9DNnY/ReTQY58PRJdjhqemBJQuzVz/zVrFempBE0B
	i2g3vhvFb0DYlWblQfvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7b-003OII-2V;
	Fri, 24 Mar 2023 02:25:39 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7X-003OBG-25
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:37 +0000
Received: by mail-lf1-x12e.google.com with SMTP id y20so423755lfj.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E1wZwowR3K0DmOyEW6wa2PnmcnTAkqbHRVOAsWUO9Wg=;
        b=RJs/pxq1jEfIdATi6/7DwE2tdRPM1hSGYlSoHCmMyD0IXfKODdXKoni0/lymECQhQP
         R4I4XoVIYzGLJj+opDywGDmIvWmPTF/GNkVpPLAg/iG2ewM4VcknZpPrddd9ra6U/CB9
         LZGJAddfKmGXyQ33/Mcbj57t1KEa7Q8OZTbc7JQf9tOJ2VGpcGJ7U7Z8M+gqhygi3qJP
         l/VGrLc2+ixGcv2zrWilG7uLTCu4VvE0Ko9XkrmsU6fpt3Xsayi01R0196CxnpdN7cpN
         X/mfomTVLmSct7FMc/VGvDwkrlBDLqkMvtJM8KUziphU0RXU9EuAlxsTuKfz0uKopFCA
         01Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E1wZwowR3K0DmOyEW6wa2PnmcnTAkqbHRVOAsWUO9Wg=;
        b=4puzjWHu5gs330bMQM0tD3upvKAg8C63Qfjj1IL9ztZKcplTiQbOThW0dCTULKe0ud
         01fgJ5eX+5diu9pwJzisUlpx0lWRH6bTcNv9azv4/EqgwJPGrhepwzcJZx1Mw1q4AfGV
         mZmjLYDflsE3aPDggJBJNPtIOjnhSCFV8BnM+6lnI555+CJA4BdvO4exAIk1RmJkGb8U
         ZJ6TjgzjYzUcYymkVp/sR0B3CJgMUt4vV+3ofW59JP7Hgynu6WDefnKJmZI+ZiTrWzbU
         LXJnwgy+nSsWf90INpNSePQ1/3CRFd2v7tBxO4QkLudDrxaX3U/24cZTFVBHXyMLlx3N
         gUBA==
X-Gm-Message-State: AAQBX9d+pqXgedqHm7MA0ThLlhn9CiI/YRAKrMsNUDVI17HAUIhOzlPc
	aiDdR22e1LxbIPk31F4XXSStOA==
X-Google-Smtp-Source: AKy350bcfrr433yyg/7M9umS3dOAxGN2NriqRx/DCCvyfOlFoSU0k/u7VR5Ax66njBSrY7nE/RUbmw==
X-Received: by 2002:a19:f00b:0:b0:4e8:6101:bce5 with SMTP id p11-20020a19f00b000000b004e86101bce5mr179035lfc.39.1679624735196;
        Thu, 23 Mar 2023 19:25:35 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 18/41] arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:51 +0300
Message-Id: <20230324022514.1800382-19-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192535_725844_29C9E110 
X-CRM114-Status: UNSURE (   9.54  )
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

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 55 +++++++++-------------------
 1 file changed, 18 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 3c799b564b64..369868f613bf 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -14,6 +14,7 @@
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc7180.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/phy/phy-qcom-qusb2.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/reset/qcom,sdm845-aoss.h>
@@ -2713,49 +2714,28 @@ usb_1_hsphy: phy@88e3000 {
 			nvmem-cells = <&qusb2p_hstx_trim>;
 		};
 
-		usb_1_qmpphy: phy-wrapper@88e9000 {
+		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sc7180-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x3c>,
-			      <0 0x088ea000 0 0x18c>;
+			reg = <0 0x088e8000 0 0x3000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
 
 			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: usb3-phy@88e9200 {
-				reg = <0 0x088e9200 0 0x128>,
-				      <0 0x088e9400 0 0x200>,
-				      <0 0x088e9c00 0 0x218>,
-				      <0 0x088e9600 0 0x128>,
-				      <0 0x088e9800 0 0x200>,
-				      <0 0x088e9a00 0 0x18>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_phy_pipe_clk_src";
-			};
-
-			dp_phy: dp-phy@88ea200 {
-				reg = <0 0x088ea200 0 0x200>,
-				      <0 0x088ea400 0 0x200>,
-				      <0 0x088eaa00 0 0x200>,
-				      <0 0x088ea600 0 0x200>,
-				      <0 0x088ea800 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 		};
 
 		dc_noc: interconnect@9160000 {
@@ -2835,7 +2815,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x540 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 				maximum-speed = "super-speed";
 			};
@@ -3143,8 +3123,9 @@ mdss_dp: displayport-controller@ae90000 {
 					      "ctrl_link_iface", "stream_pixel";
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
-				phys = <&dp_phy>;
+				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
 				phy-names = "dp";
 
 				operating-points-v2 = <&dp_opp_table>;
@@ -3201,8 +3182,8 @@ dispcc: clock-controller@af00000 {
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&dsi_phy 0>,
 				 <&dsi_phy 1>,
-				 <&dp_phy 0>,
-				 <&dp_phy 1>;
+				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",
 				      "gcc_disp_gpll0_clk_src",
 				      "dsi0_phy_pll_out_byteclk",
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
