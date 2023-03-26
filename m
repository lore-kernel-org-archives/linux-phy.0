Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09672C77B62
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 02:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+Ix6TyD0e6kEqnr9AL8JIVCDo7hH8myK9ONQenle+0=; b=v1shYFOn5rdcnG
	tHOmqY55bhEcC2hRiH8705NLQa3JVaLQ2i5rqC8EAN3fyS/s/TVjOjP1hP1hnxgbdjvQ+11BMj9ZX
	DEKz7E+vl/DXzUsse9kIh4jJgyaImFzHv1tDJYBJMDcrJ86nF+AVgOn4PUA8WgPSmBoGUIugfkToR
	eH+WXo4BpEiitKBc9m5wwM577ChHbQHe001QxWaZ9XbhpjdhixLWX5/1T181a5KzNXtdx7RdV0Pn6
	5+ayqhcR3ap+kA5+ZIGegg5jj6WhL99ya8whA3tI7y6TyEA3vEcw+EIg7OpeSxL7bNP8rg5Ev7gV7
	faZIudWmkwi9ONhKyszQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgFhj-007pYV-25;
	Sun, 26 Mar 2023 02:01:55 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhY-007jqQ-1H
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:42 +0000
Received: by mail-lf1-x12e.google.com with SMTP id t11so6963114lfr.1
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w5lv9rvldIcBn3hrWH1OHqukYC00puDZn0vJWU5aRYM=;
        b=Z8pTUa8P/LyKEdjkVniXLG273sV4TinjBx90fY9oqgbtkCSca/97jnbDysCEMH+JxS
         zTHiDhbotiDUKqE4TppKoGLzlmPUZEYjiqmsoI+roHw3Zn5pSOo1W06rDS9Q4eAFgLMm
         s3Wwji+AguBGIVqeyZiPXLr3/flRvLu/2o8bolCDBk4J06LyLB3+lFk+Wac2AGo25GVb
         H+5CvQq47x6SQ6hLHdQcprIx2mHFvyIgqcAYsx/o33Y0etA0pKMok/nVY87/U7DB4EjT
         4NbFDuYLNHOJlEGc5Q+ouL//7ePZJAW3ISJh4OgH7Qkib/AvdOZwsDnraLyBNABP0qO3
         vjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5lv9rvldIcBn3hrWH1OHqukYC00puDZn0vJWU5aRYM=;
        b=eeXSPX1NPqQIsICaxoY/2D555Ay6+ji2m3+IIeO6A8BGq2yrtO8a+i8oZt9GllbvXC
         WBeaJcbHYseu93+VlzqbOXLAxFGve03fpT4gSINiRDHoMtEFQz+C5dZbEdHEFE5XNAAy
         0zyjVpn70WmHiCzUXfLV2kaAHecPKlsjBXhmqUkt8c2RYIWFhCAbNEtjTJmZbGzlmQaW
         N7KNu6nLTFKlVMiOWAZ/RE9m9MrKRBW99KRikzcKuLlh191ig9hT253x3lMTd1ZfZUuy
         3rQL9PA5oFnPXXrOik2bhvD/1dmgcixo13IAfnYjOs6SSbAm3fZmw4QQGF/bN8fQWlJP
         p5XA==
X-Gm-Message-State: AAQBX9chtl0tyBe8uKYDV13HLlzdFulj9KGrbn4hACVqfd4YUUO5ahnr
	PKmej7JeQGDRY2f57lmgS9BkaQ==
X-Google-Smtp-Source: AKy350ZiRMRdNM5g0WCfHohIa9yilXTvDl3jLK2QcZJa0djS/5jH+NhF1FgEBFV0De7uUERbRx2ZqQ==
X-Received: by 2002:ac2:4318:0:b0:4d4:fcdb:6454 with SMTP id l24-20020ac24318000000b004d4fcdb6454mr1909765lfh.17.1679792257704;
        Sat, 25 Mar 2023 17:57:37 -0700 (PDT)
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
Subject: [PATCH v2 5/9] arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of bindings
Date: Sun, 26 Mar 2023 03:57:29 +0300
Message-Id: <20230326005733.2166354-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175740_436951_3A94AB49 
X-CRM114-Status: GOOD (  10.00  )
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
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 57 ++++++++++------------------
 1 file changed, 19 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 3c799b564b64..98004b02b762 100644
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
-				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
+				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe",
+				      "cfg_ahb";
 
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
