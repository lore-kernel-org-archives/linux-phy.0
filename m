Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE178EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVvy0+XbDm9NbC7YRVmkugEJiwaVqr5A7wF6YOT+bZk=; b=YoW4xgA3PaIuN0
	sRcFP+PdaGPr5FpgvRhaEefleq8RolkUqhraA7dOsT5h3gv4Fq/6s3yHIie3SjZ9S1I9pJDousBhQ
	qLPRHjacpT1BxnpHs1IUA7eWczD6Ig0YRBpsTBSY8QgVD+Xn+ht5bSrFXKT9xxCFxoXd1IEN6JHcu
	j/Z8p8Q/Cw+RfSE+Vi6ORdjF0tUrQHV4PrAIaChWndkU2wyF1kvJXwxRx3JSX7Mk77gzKTW9LatJI
	j1REZ8TuPjdb5iQkLncSBY8GjDf6z6/nRAhxLGv/xY+JNZ2ElkG1nyMqM7xj2t8x028m/uHUk1K2H
	JbEbYvEy+8USgZN3eWog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBO-00EptG-22;
	Tue, 11 Jul 2023 12:09:30 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBK-00Epnb-1O
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:09:28 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fbb281eec6so8679422e87.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=poZQimdmAPFxv3AeyZUlPhyWi24albL3cBVt7DfSBdQ=;
        b=ulWIdEfhvfVQoiTkB70obTEARvvLX8sfte1Lfx9gZHMd2CadS2JZjM7NN+Nf22rW+m
         WhQ2KzBguA52hndRFUuaLTXpJUiziZtSvjf7/rpBSj+Ge8gp77RSkh5WCGkoytcCBri1
         yH3lXzOyT/8IqnIItN+iF4/rctKN+vQkvePwVxHiTMab5dX2YmY9qZLoQLhubr6J2X+r
         CKxN49b88xPTbuEaJPXK3yQM9/br+jl6tNV/yKiViqy/h+ZgaQ+uGx2kafAFCrQKtodo
         cJ35t+amb0fsW3KwhO56HhIS3ArJb7CyIpPUr2U+/FWoLz8AldL8FOr+3Vs+SnATrgz9
         7uKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077362; x=1691669362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=poZQimdmAPFxv3AeyZUlPhyWi24albL3cBVt7DfSBdQ=;
        b=YuTUVd/nwYVFiGQFT6NVEPSwFK6RwQ4ZQ1eGj1i1P4sQdBeZ/XdnOaYNp3juCpi1LM
         lf1v0EWybc3XMvP2IVIGv+p1jyJRzsihuIDdEvZ49CHsYhswtby6bdxgwFduDZfF4tDD
         7+NUdPvpohG/GieAox0tH4EOok5IKDLptt51nZDI7yT69rqANNt1fzELnGK7Hz9W4rRA
         gRK8ZzPSXFfCW+DcMXX55peqDkqzndID5I+qbjyaZbuB5XFCocb2keFG4gE+M4d4Nm+3
         5oHX1Z+5n15p6k6fKE1mBg75c1ilzJMgcqwDoVcw+qMq0ltQ8vgvw6/eGPDyMr95LiHd
         CozQ==
X-Gm-Message-State: ABy/qLYid47C9dLElBEM/A020tZR+HVBmzMZtjR6evZdONTGIkw/vXOv
	O2HHetu8NLzakKC0b4+mqY6idQ==
X-Google-Smtp-Source: APBJJlEKjzVACGcyJt1ahS3fvMqhIoLZlfKb91p86iQA7nI19PMsValI2p5h1rZMLrJv+AWgSnk/zg==
X-Received: by 2002:ac2:5e25:0:b0:4fb:8939:d95c with SMTP id o5-20020ac25e25000000b004fb8939d95cmr11771508lfg.30.1689077362590;
        Tue, 11 Jul 2023 05:09:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 07/10] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 15:09:13 +0300
Message-Id: <20230711120916.4165894-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_050926_472952_BF2EBFF4 
X-CRM114-Status: GOOD (  10.10  )
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
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 59 +++++++++-------------------
 1 file changed, 19 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 2870fe8fd526..4353f7265877 100644
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
@@ -870,7 +871,7 @@ gcc: clock-controller@100000 {
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
 				 <0>, <&pcie1_lane>,
 				 <0>, <0>, <0>,
-				 <&usb_1_ssphy>;
+				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
 				      "pcie_0_pipe_clk", "pcie_1_pipe_clk",
 				      "ufs_phy_rx_symbol_0_clk", "ufs_phy_rx_symbol_1_clk",
@@ -3347,49 +3348,26 @@ usb_2_hsphy: phy@88e4000 {
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
@@ -3703,7 +3681,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0xe0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 				maximum-speed = "super-speed";
 			};
@@ -3808,8 +3786,8 @@ dispcc: clock-controller@af00000 {
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
@@ -4145,8 +4123,9 @@ mdss_dp: displayport-controller@ae90000 {
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
