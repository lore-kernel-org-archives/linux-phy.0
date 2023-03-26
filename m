Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7762C77B61
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 02:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIegeeSkn3jmCYanXonwh88cMzr0XM8l6230097uGNg=; b=FeKGiutk4C3HE4
	HYi9jUHTc/mPpV7KsN41B63BjgvuqJsOgNAaLUe5SHq770sH7ePl9GKcmP0jCrHpckYBkcktqSHt5
	0g+c+daft//oyo52J1O3HokdD2tpYPyqf2mSvjLdCNKEK7U+eWr+qgS6e/fbGIXCS8H6EAwof7Upr
	0BWpKo8bypmyy0A9j6bt23vgtz6l8k2nGEbuzaRAgx3I6eU8akrXl+m39abr+NSuiFDttd8zMUsR7
	iGGqvmo0Zr74VvNrV4TN54klivNANUIxUbnk10P9icjVE+jc2w70N81NMfWY0QGkmmchcbks+f7hQ
	0kevw2XeSJrdvP766WZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgFhj-007pYJ-1F;
	Sun, 26 Mar 2023 02:01:55 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhX-007jqa-2W
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:42 +0000
Received: by mail-lf1-x12c.google.com with SMTP id q16so6920476lfe.10
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8JCTWGMw0PlOMatGYHxKtoTg52+/4h/VOYV53NarVI=;
        b=OJ9heNWWzAPIO6wmuYnTEZsUfXvcmirMCfS8EOPTioP9xUuVjmNj1nLmBMilzkpwly
         2lekGi6fzFkZPitH7hpVcY7I8JbnINVDZ9vygHMH7OKcqxXPu809Rni0u0tObxbjtirQ
         yBsoMZ7O1AovfSGj0HDu3wRUTYG44Weaq9xjr24X1Y/uxdYKnw6RjGGLIi/1PrJwTZzq
         FMPCM9NBXOWbndSCG/npNwkJwOKR5qFYiaIU9pLn4OLroyc1azWNan+iy9uP/lLVFn2X
         g3SNQ32MXbflQwf14T5A3dq8Z0FZB1yvMOZ18Are9cMZwuq/Uogi13LEba6RqqCbfZmt
         c33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8JCTWGMw0PlOMatGYHxKtoTg52+/4h/VOYV53NarVI=;
        b=tHWXE3B/FDz0wy4nXz1jq02mCQlS8sjHjQyi0YZNAssgFFJTDkDrRQwU821RgiGmtM
         pfp7wj5CwZ4V+mdVivpz5R//DiDWgICHq8CppmoytkPa8myITXWjNa8t/8ZfFFSkTk8m
         BREuPLGhFE5PkAVidEZFzoLLmljWLl6nkvkRErhGBcjnnIoojehoq44P/SMIWJrun3x4
         em07hsmnlUvvFrqqAp2ZK205IkDFnTp4jT6r7BaH6l/Rl5Tv8KFGm9vX/3ylgcskpfiI
         /Vj156CJvcqkbMgj/cWKEwB5PMdOtNJI+u81ZWp9Zt24yfq6PfDh8Up1oxgGSOSLUugW
         CXjQ==
X-Gm-Message-State: AAQBX9cumX7f6c3zJisTtlGRiwvQ1uMXBJGWliet0s8TymMMrl4XvNXY
	pZdeaZjcVG5RkR5IHa0OmwRtfw==
X-Google-Smtp-Source: AKy350YPFY/DGJdgXLMtOi6+OGcP4prO5hTd33i193IiX+V5HXs7gLh/4XedMSHyAb03IygggXjXhw==
X-Received: by 2002:ac2:46e4:0:b0:4dd:995b:feaa with SMTP id q4-20020ac246e4000000b004dd995bfeaamr2280449lfo.24.1679792258501;
        Sat, 25 Mar 2023 17:57:38 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 6/9] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of bindings
Date: Sun, 26 Mar 2023 03:57:30 +0300
Message-Id: <20230326005733.2166354-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175739_831338_2EF957F9 
X-CRM114-Status: UNSURE (   9.59  )
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
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 57 +++++++++-------------------
 1 file changed, 18 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 5e6f9f441f1a..887c490bdd14 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/interconnect/qcom,sc7280.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/reset/qcom,sdm845-aoss.h>
 #include <dt-bindings/reset/qcom,sdm845-pdc.h>
@@ -3327,49 +3328,26 @@ usb_2_hsphy: phy@88e4000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
-		usb_1_qmpphy: phy-wrapper@88e9000 {
-			compatible = "qcom,sc7280-qmp-usb3-dp-phy",
-				     "qcom,sm8250-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x200>,
-			      <0 0x088e8000 0 0x40>,
-			      <0 0x088ea000 0 0x200>;
+		usb_1_qmpphy: phy@88e8000 {
+			compatible = "qcom,sc7280-qmp-usb3-dp-phy";
+			reg = <0 0x088e8000 0 0x3000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "com_aux";
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
 
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: usb3-phy@88e9200 {
-				reg = <0 0x088e9200 0 0x200>,
-				      <0 0x088e9400 0 0x200>,
-				      <0 0x088e9c00 0 0x400>,
-				      <0 0x088e9600 0 0x200>,
-				      <0 0x088e9800 0 0x200>,
-				      <0 0x088e9a00 0 0x100>;
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
-				#phy-cells = <0>;
-				#clock-cells = <1>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 		};
 
 		usb_2: usb@8cf8800 {
@@ -3694,7 +3672,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0xe0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 				maximum-speed = "super-speed";
 			};
@@ -3799,8 +3777,8 @@ dispcc: clock-controller@af00000 {
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&mdss_dsi_phy 0>,
 				 <&mdss_dsi_phy 1>,
-				 <&dp_phy 0>,
-				 <&dp_phy 1>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 				 <&mdss_edp_phy 0>,
 				 <&mdss_edp_phy 1>;
 			clock-names = "bi_tcxo",
@@ -4138,8 +4116,9 @@ mdss_dp: displayport-controller@ae90000 {
 						"stream_pixel";
 				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
-				phys = <&dp_phy>;
+				assigned-clock-parents = <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+							 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
+				phys = <&usb_1_qmpphy QMP_USB43DP_DP_PHY>;
 				phy-names = "dp";
 
 				operating-points-v2 = <&dp_opp_table>;
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
