Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C23EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 12:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KTXphGz967fx2aMZfLFUE16Kd14ntideZ48BP9NwcY=; b=hkk5rxYfGAdgbh
	Npn6WfsBD/uy5Nz339opAYOIHJ0bntDk8VWqIMXaroNmWKLRMl5Gw+5Wzn4XVhRhfEcskaSN6ojp6
	pWFdQOv2kwBPYsEVufZdm5w/1z/b6RWGGpjXjIF+W7TkC/KqAvJ3C0crRfO9la6rXZBSfgrCj9ML2
	y+msw9hFXppEuTOe3dttgBfinUlAAyhUW66M7P9HE5wFkmgl4GhCVzqIAAl3nEPp0UAgLb5AV8mhE
	piX5T3NhgpWKGV4VbPt+SakIDefW8vZ9YYIZj7mHypuRmM1+H5/Bx36q6VvO4lFjTBGhstkgwX1Y8
	6baKvlaIL0C27wr2gpnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBO-00Ept4-17;
	Tue, 11 Jul 2023 12:09:30 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJCBK-00Epo1-19
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 12:09:28 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b70bfc8db5so74859051fa.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 05:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077363; x=1691669363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MnL44gomP/v1OWQu+RjNuQA13vd50pLPfkvjmmtAaos=;
        b=pmeRxqVCkyk3Nnctfs6J2/QaMyecJY6TsqA9bfKQEMQrEoxFc2hbRPo6Lb4Q/c5Nj/
         YZ3UFQJ4iEmdjLpaCfdHbh9z0GQpRWzMGE134e2KqHd1fqYQVVkfd+nOgmFiyX9XuOXO
         luFmpRY8qj5CbdLDWONg5+weQD8JZprnWK9BPWaV5ncN9oHz2rjKBZ6doOqVBCwwOUia
         qo+mUlKpM/MR49cCN9w1g7b28tQCMw4Rn0eHfbOwu/s6fAEX4+PhiPqmzYc+8eoXoOY6
         hykc5I9T+YdrvLmbBKJLn5Y4qsOdVl+V3FwHqmExzX9vYsddbBb2jsjzKerJfhwd3riK
         H9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077363; x=1691669363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MnL44gomP/v1OWQu+RjNuQA13vd50pLPfkvjmmtAaos=;
        b=VeOhkb1uyueUr5avcUSMeqcT+17P4oceJ1YYNTf5R43qa/IwQKrRenT1e1CjMutkvT
         FXq3JtoGhOx3JFsqYPEJv+DHR8ysIunwB4LGNQr/l6ApGUix3Qqp34vl3GgZXOVx6d9Z
         4UhgzgoIElHUxOGp/lHEuB56Bw82CynDQXfDb1p5rPkT8adBSiHe+S7h85h2M/pvZB+4
         wd7nso/4rTCgfPHw1WhHB71XRJJfB6vvv6VXIVtFcKu8WTW4fM4Lx6YtHVl9mVPGbT/e
         icl1dhk6fwtwsRlLKc2BpZQ/X2yqAqhcPR6oOdZcWP2bnfW4nOEXzstWzffT7YS/2RXs
         lMRA==
X-Gm-Message-State: ABy/qLaQ2iBAQgFy5lluwRU0oOLRgw0qThQt/5x54V5R4DSstg0GScuH
	+wtgey9fzvVdjKY8+0TEAThcSg==
X-Google-Smtp-Source: APBJJlFxCCJK81HKQdF7MXa6o/Q8V7TPWOtbAHBjV4h0wexMw4GX/bvlnn5yjie7OhVdR0FaYocFCg==
X-Received: by 2002:a05:6512:618:b0:4fb:9e1a:e592 with SMTP id b24-20020a056512061800b004fb9e1ae592mr11358402lfe.4.1689077363414;
        Tue, 11 Jul 2023 05:09:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h22-20020ac25976000000b004fbbd818568sm291447lfp.137.2023.07.11.05.09.22
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
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 08/10] arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 15:09:14 +0300
Message-Id: <20230711120916.4165894-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_050926_398250_493A8963 
X-CRM114-Status: GOOD (  10.56  )
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 57 ++++++++++------------------
 1 file changed, 19 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 02a6ea0b8b2c..7cb9ee2765f7 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -18,6 +18,7 @@
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sdm845.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/phy/phy-qcom-qusb2.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/reset/qcom,sdm845-aoss.h>
@@ -3979,49 +3980,28 @@ usb_2_hsphy: phy@88e3000 {
 			nvmem-cells = <&qusb2s_hstx_trim>;
 		};
 
-		usb_1_qmpphy: phy@88e9000 {
+		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sdm845-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x38>,
-			      <0 0x088ea000 0 0x40>;
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
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
@@ -4101,7 +4081,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x740 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
@@ -4569,8 +4549,9 @@ mdss_dp: displayport-controller@ae90000 {
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
@@ -4908,8 +4889,8 @@ dispcc: clock-controller@af00000 {
 				 <&mdss_dsi0_phy 1>,
 				 <&mdss_dsi1_phy 0>,
 				 <&mdss_dsi1_phy 1>,
-				 <&dp_phy 0>,
-				 <&dp_phy 1>;
+				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",
 				      "gcc_disp_gpll0_clk_src",
 				      "gcc_disp_gpll0_div_clk_src",
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
