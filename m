Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C1C7C77B6D
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 02:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wr8GXLvse0OEKMYa3DhP+v9mBWJMz/pnC2oo9ABea84=; b=XQQ1BDCG3DNcT6
	MRYYoOauGdWKRrzHJebhZPjAC7pzZ1JVc40KOr5DP3tqVQBxPfKoMAzq7Ku+Q2SQIqvS/EvhesDp+
	Ko3cG7drUQb9ayXrjfObJDlq/jO84ZwmjVULrI85QIXFLqLY2TOU1xgUtoeOw/IS2Lb/4LzKMm2+I
	cQFeBs0UnRVUyqFZsHpKoZQ/VOCdca8RER0Igv2zeUoCiAP3N0e2nOxELffktox9pxwKLKNRQXeUq
	KNNUclB3TfLELgF8h1Rsi1UA1HpqNwYVAL5ZTtgE4Sh6F36LmB5kf7tpphwf74Xyh6360CGvteD/D
	WjeiF8lQkWuXRLie9ibg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgFhj-007pYq-2w;
	Sun, 26 Mar 2023 02:01:55 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhZ-007jrx-0e
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:42 +0000
Received: by mail-lf1-x12e.google.com with SMTP id q16so6920512lfe.10
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKE6AqsiXcNq8j3VeprRnII8ABKzIYAh1YOtnfRKOPs=;
        b=jV6e5Jc5Wd9tb4VrMzKLDOjP0X62Nm3Y4ywNFdOcDVcUE7qLwQabXZ66U/egil2dgc
         +mk4XOJ6S4erSPsuzxazxmoU8YmV40LIosyfYxiDh0MYN1lXXaSaVElTT0yBIdVQeh/p
         desEt3pk4fTO2IChmKzMJAtQaJEQwmHj/Cnwi57nWQp1XpuazYpMk9YCuKPSZ5dlyQ4N
         2KwBM9Tc812mgDwzHnNDbmJERHxkzHMNxHSzStF6MKd4Aq2uNbfg4Ov1eTNA+3aLR7na
         xGcoNBqvL3B40/kQXMgimvR7nehQRvvJvRv/pux/imeWr/mRkcsHZgLLkPg8DET239I5
         CH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mKE6AqsiXcNq8j3VeprRnII8ABKzIYAh1YOtnfRKOPs=;
        b=Znj6nY+Y7oM114BN5tM1Xx0WUJgTpyqTpxNCsbyoZjnykS7/5CX9C1ssXg4k7/Amad
         ++3Qf7FQ6RtTbcQws2+oBmd7wxXh1S//oR6zovrEtdKOuexxXBCnhfWf35ZDL4BCf6c5
         YjrVHuxLA1AJiebHbUoUoDJ/Q7KkkNEG0LyTgk2zbDyNCTwUAcKaUUl8DMgcMFvROStQ
         3ywNmBFhTwq/A9m4ZLA0C//iOp0W7ogfBu03kcK59ets8DbZmip9YkYPbAcMqRLeitOH
         q37BoQvGEI71ZopRZqdSAOsUhobFJcnGhHcnwFWQH8jof0jr5gV/dR2kIQQFGBSPAeWD
         22sg==
X-Gm-Message-State: AO0yUKX7ExiDZno9ap5nqOAOLf9R3nr1O2ENLC/hNX2wv8cdwo68/0ek
	Uh9/B7CHkObfnJaZpCbmJR82Kw==
X-Google-Smtp-Source: AK7set9Od5srLapBVGJ2pqZhcxf2uBK39G9L1sJ85gIAJdCDqCF8BvBqddgSXzG1gKvk3Djf5QBlsw==
X-Received: by 2002:a05:6512:1316:b0:4ea:f63b:3b36 with SMTP id x22-20020a056512131600b004eaf63b3b36mr4209094lfu.10.1679792259917;
        Sat, 25 Mar 2023 17:57:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:39 -0700 (PDT)
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
Subject: [PATCH v2 8/9] arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of bindings
Date: Sun, 26 Mar 2023 03:57:32 +0300
Message-Id: <20230326005733.2166354-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175741_273780_45938EBF 
X-CRM114-Status: UNSURE (   9.48  )
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
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 48 ++++++++--------------------
 1 file changed, 14 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index a618218f7b68..4df9fef5c7b0 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -3391,47 +3392,26 @@ usb_2_hsphy: phy@88e3000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
-		usb_1_qmpphy: phy@88e9000 {
+		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x38>,
-			      <0 0x088ea000 0 0x40>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088e8000 0 0x3000>;
+
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
 
-			usb_1_dpphy: phy@88ea200 {
-				reg = <0 0x088ea200 0 0x200>,
-				      <0 0x088ea400 0 0x200>,
-				      <0 0x088eaa00 0 0x200>,
-				      <0 0x088ea600 0 0x200>,
-				      <0 0x088ea800 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			status = "disabled";
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
@@ -3568,7 +3548,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x140 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
