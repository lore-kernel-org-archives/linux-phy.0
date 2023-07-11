Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B190C001E0
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HC4PcthFuov4NaFldvU895t8ewgwyFzfJnLpwKR3vAM=; b=sa3Po41d5Pvc4J
	9y7VL42EbySyzLCgx2rN7NVZKtEYYyJBwpMlUv0YMr3UpAl0aDOiCdd9TQEyB/d7F3jf0iHdPqw7U
	TJeaAGFaatacoeZK3H8+wz1+toLYbksz0ueVwBraPC+/vtqgVXZ14P8BZgFSy5nGYNcZp6XI3Xkm/
	gQlPRwbPkzTM2oKzPKx7XLVXZB3fuzXLU9HGpyX9mC1CdJzHz8Yy4NdXQ/5RcplZuiUAw8c5Egb+9
	fBadiNu4UVEhL/rLpZU5ADcKh8yTKCqyREKyhjxbAJ/krHvo23SLqlzX+2a4oJ/CeoOaQ01jw/diS
	xhE1peP0Q1VLcISWHD6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBL-00EprH-2E;
	Tue, 11 Jul 2023 12:09:27 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBJ-00EpoB-1c
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:09:26 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fafe87c6fbso8921699e87.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077364; x=1691669364;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y3iHTRXTkkh620hWnpEMBxRgsWFmrcbj8C9JwVRsltM=;
        b=kWQuzg6fl1JkZRpu6sPKFkXE/n1WSY/erM/AZL2kFm6U/FxXGWg8r3DjG61oAHVDIx
         OiyEe5AP55bs2b2ozPNIxcANgv4GedAzoHDqwX7yv0+ZHa+E7FVLtNrN8awO+lVaX+SS
         jjdMqgmP1Er8DtE+AIc8zQPQjx8uiXnL8b5EOB3HF6ybc5mUdm32kwa/b3C359X75m8L
         /vgPiGGuA8PPph5miHNQAvTE5SiUn7E1lgph/6TdRTxT20CUCq85AuHjIM07usNBvfSl
         idDsPrBctTvOmFa1lA1KvrKCFERYY64OMGv6vUi4HyDozldIu2XvmqmOy0ni+OLlNory
         OjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077364; x=1691669364;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y3iHTRXTkkh620hWnpEMBxRgsWFmrcbj8C9JwVRsltM=;
        b=d9jx7YZKifIPwz4pRNNB74lyEHxQIcP9D96jvvLdsZh8YNouOswNQEYgG44OpH1+gt
         pF1hR6ul5QqSNhyBYRddT41BY86dGJzjffzOYyjNoXU3GWdvBjtu/lnxqIES5Up23TFC
         OSX1W3Y6OfbCfcV1M7gYGhWKnTvfG2OMDcbT+I1lyz9DW/pm/d9r8DgA1OpW4UsToqfH
         AnCzRQ/9l+DxkvYbU7PetQW8hU5jDPEqelGHqhaKnmt/X8hQO5R/a0Xbwoitt4rWiS4w
         GFTnSkgqUywHbqtFBs5rauERdoLIE91zHWTp+Lfz3d2iNizd1Pvtqp1L4pSxIQxmL3O4
         VgPQ==
X-Gm-Message-State: ABy/qLZiN4HWyQR/mj5X7ccsWONfrp/i+2TWIR3C6f5AxASEIsjEdnlE
	jyh70v62aOJocXpq0/2KNDLQsA==
X-Google-Smtp-Source: APBJJlE6wqesBwamFigty4tFa1SvHzCNi78fFqcs/uua5p7eDPo4KHw+NDyBcBSbLXsaRhB2zOLxLg==
X-Received: by 2002:a19:7b0a:0:b0:4fb:9712:a717 with SMTP id w10-20020a197b0a000000b004fb9712a717mr10501165lfc.13.1689077364053;
        Tue, 11 Jul 2023 05:09:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:09:23 -0700 (PDT)
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
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 09/10] arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 15:09:15 +0300
Message-Id: <20230711120916.4165894-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_050925_550377_B641DD40 
X-CRM114-Status: GOOD (  10.07  )
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

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 44 +++++++++++-----------------
 1 file changed, 17 insertions(+), 27 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 0cd580920a92..6ff7cdacd44d 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -3434,38 +3435,27 @@ usb_2_hsphy: phy@88e3000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
-		usb_1_qmpphy: phy@88e9000 {
-			compatible = "qcom,sm8150-qmp-usb3-phy";
-			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x10>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+		usb_1_qmpphy: phy@88e8000 {
+			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
+			reg = <0 0x088e8000 0 0x3000>;
 
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
 
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: phy@88e9200 {
-				reg = <0 0x088e9200 0 0x200>,
-				      <0 0x088e9400 0 0x200>,
-				      <0 0x088e9c00 0 0x218>,
-				      <0 0x088e9600 0 0x200>,
-				      <0 0x088e9800 0 0x200>,
-				      <0 0x088e9a00 0 0x100>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_phy_pipe_clk_src";
-			};
+			#clock-cells = <1>;
+			#phy-cells = <1>;
+
+			status = "disabled";
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
@@ -3606,7 +3596,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x140 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
@@ -3941,8 +3931,8 @@ dispcc: clock-controller@af00000 {
 				 <&mdss_dsi0_phy 1>,
 				 <&mdss_dsi1_phy 0>,
 				 <&mdss_dsi1_phy 1>,
-				 <0>,
-				 <0>;
+				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",
 				      "dsi0_phy_pll_out_byteclk",
 				      "dsi0_phy_pll_out_dsiclk",
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
