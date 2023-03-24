Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FC7C74A5B
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3WxkggKwy3VZrznUX6a1b9qxt90rjTWSCxAnaYEpZs=; b=j2uhIg8pqbsUnF
	kdQ+8BsGq3zBAA/H+Eh0jlVX2EVHwOkC18h5OXhGGSGTROXrEQ8UBDSFEsWwy25Be2aIwKnxChT9Z
	uRWZlgo+N8Y7UmeCiqMeu0JDrcdpgdtA/RFpzcCisXaCm7NrD5wcgei6T+tZ2Fq5kDxJuMhySW9rO
	ipMVlBTtKpjjMSrpKynmhtflxbbr9/hZNRzO7yJhMTdKnZ0iz2RC+z8lnUnjfuy3qv1SaAV2xKlY0
	N3BemO+ymaqz6nkdbzMBuVMjXreswR1q7SMAMjBeM+A7TRjqUV3SRamH9O+s+CeyUsm4XUHM9gStB
	lXZVTFbf2qBGfgNUbImg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7d-003OIe-0M;
	Fri, 24 Mar 2023 02:25:41 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7a-003OH2-0h
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:39 +0000
Received: by mail-lf1-x12e.google.com with SMTP id g17so412198lfv.4
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KSSdtZjUME0mwGoQEO4ndjlDcN1ZD6QL50XcqRXJY7Y=;
        b=nA5J9IcCEeZa7XnZC2xWuv3z6zGfo4WvVe10yqR8GTgLB1OJYGlSlHAs1XI6RVoZBh
         sqoz9yCmtu2NJrk8bg8goLw68ozVMKWi6Wo7+ZBUOkxak7xGXxRECebyP71aenKtrUWe
         OZazp1JRdMiL8q1CxemDqXND8ATBjwzFWoKwGvDclq3k4NLDoY71C24IqUsogHyKqypX
         ciDhsg8NBxN9IbMTBo3X2shNMc1D6qMvi1P4VRBZDm9qfVJy15yp6YOMQ7PuaPtcs/Qj
         FaIw4AG+RhVJlrHrjtnIqZUYpq4+b2OihqDz7Nfc/G9pBBobgAoZ9j/zQfB5jGu21xm2
         BwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KSSdtZjUME0mwGoQEO4ndjlDcN1ZD6QL50XcqRXJY7Y=;
        b=gsaaqsCm1rrzz3S+rhrA8TaXD1PFebCpeU+0eMtWjSZmO4fRS67GL84x33sUNHRDPO
         8Rw6Af+j1nU54LhbF88myNEonbOzDZOh7CDZ5gbK8TBfn0e86O9dHYOUnzd+ELNPWVMh
         73lLQYgr+LhIY+zOM5YxLJNqtCV9lVcOJJ3DW9BwXdVyUSVKquKoMuvtmspX8uXB8Of6
         l54UvB9LQPZr5e5e2MRu/elWYx9PxbXvBv3gdhPoUhmJ8h7573AYRu61wvjYp8YDXfqQ
         GxECRMki9d9fJgaXbgZtm0PAibuQG7rtdfFU042iUHm9Dwjk1JVc/mdWbvenr8qhe8G7
         nCAA==
X-Gm-Message-State: AAQBX9fesMWS28dO3ywcUHaR0W2debEWe7DFxX1GTcuGrH+Jjvi7l3hm
	M0z/ipD6+Ct635GA4gdZGrgUzA==
X-Google-Smtp-Source: AKy350ad+9oKCn8vYz/28EI9so+1lSLohcQp5k+L4RF7vyqyrPLf2I250XK4d1v3zGj+58EP2JISiQ==
X-Received: by 2002:ac2:4c95:0:b0:4d7:58c8:5f44 with SMTP id d21-20020ac24c95000000b004d758c85f44mr275140lfl.12.1679624736827;
        Thu, 23 Mar 2023 19:25:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 19/41] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:52 +0300
Message-Id: <20230324022514.1800382-20-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192538_257622_65EFC303 
X-CRM114-Status: UNSURE (   9.51  )
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
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 54 +++++++++-------------------
 1 file changed, 17 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 5e6f9f441f1a..62885ac3f11e 100644
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
@@ -3327,49 +3328,27 @@ usb_2_hsphy: phy@88e4000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
-		usb_1_qmpphy: phy-wrapper@88e9000 {
+		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sc7280-qmp-usb3-dp-phy",
 				     "qcom,sm8250-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x200>,
-			      <0 0x088e8000 0 0x40>,
-			      <0 0x088ea000 0 0x200>;
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
+				      "ref_clk_src",
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
@@ -3694,7 +3673,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0xe0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 				maximum-speed = "super-speed";
 			};
@@ -3799,8 +3778,8 @@ dispcc: clock-controller@af00000 {
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
@@ -4138,8 +4117,9 @@ mdss_dp: displayport-controller@ae90000 {
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
