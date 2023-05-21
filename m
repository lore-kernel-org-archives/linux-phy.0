Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39751C7EE23
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWg+HszACIhUOko/7Qfjs6BT3RTSqI8d6A1UR9l1wws=; b=xps6VlQNnBuqDe
	xhiVItROy93VVOYiNuDTQLTCGU8FHu0Evou+esL2S/cwUUMi6QXresCrXVUThetbVViD5mD5Qb7Hn
	j0PTWa9jnpZOu6GGo36jiQQA9y1Jl7oFdFF+2B4qehADjxEhquB6N4MfOqVRTcoXybiFXWpIkWlwR
	wpW94XJ5jHIbQ5iCaoYvQC55phbKOceayR4PpjuGeGJRZ3Av96ztdzdrO9x6VYyDMNjsaLeGtJSXa
	pW40r+oWI+lhlALeni4zFXcJM8uhsIp0VOUkUnW9BZkLKnpP8O4Dxxx7WeLJMe9ayqScnbpmMt4qv
	gb7DHWY4a7pCCu/BTvgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8R-004YWF-2y;
	Sun, 21 May 2023 19:54:31 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8O-004YT2-1N
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:54:29 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-96f9cfa7eddso275373566b.2
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698865; x=1687290865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWtQzjHUlWVKjR6hyfJMpC5Arsr78CLVvJSVCwCWijI=;
        b=KdVGtmX59J0yRYnVGWWRWrHitfA45BP+6hb40QncKXCPpUFrdg34vOGozv5Nq814Vh
         hV++M1eXES3j1k8FP3C2DqeA0AVAwgmYIgkzGn/gLZVoDPif3TvbC9YRLeTSGSm5PHPc
         o/V7irtE9VOrEfD4dqjMykTL2ZfndbDN739I8zZxxbWVqQv40PzcJn2ubtuplRquOXcO
         T6kceeVwGKOsKSjWEWGy1fRzNfHZ+U4SlQsLZfUwKunO9WOjMUxAKVPMoPKeyLXPyZSI
         xVfqrx4Ipm+j4Bezld5giUUqHOKCISU4IEuVeet2/0sxO79U/R+SJv4PfMfAnpzWnpfQ
         AqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698865; x=1687290865;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWtQzjHUlWVKjR6hyfJMpC5Arsr78CLVvJSVCwCWijI=;
        b=CmEwV2+B9yTe9FqXqxWUvjIEGk1aufxXPCF4j0BvmR7ehF7Qs3ikFP1vxzLpIrhDBE
         8Z6HnCjvqdA/5KcO93TJbCs/EtzQH3be9pmbNgJndpeNatIbkt3+1+GsLBtc6iECsTLD
         Z5lv1GHTfterW387FaTwd8MQ41ne7Ysh4syLrv1GksWKupcC97smE1aR4vcWLDkG3abt
         ryGvreu9Ppjs/Pz78FpIuVXpDZPmlgmvmOXgz1PhlBlYkWWYK7/HVpZ0O5RM2ClZqM8B
         oy7Ap78C58FD4JTWuvs3fq+/zH7l9oQygbQ86+Y3X51gMe3CYLNqGm5kvcoZbnwq7wfT
         uukw==
X-Gm-Message-State: AC+VfDyN4ZTkSlVbl5js9S//nDoX6U7a0S4HsHI2AJlPyvvZIKuDLg5W
	CFa5F8FQB9wQQHKCJoFFs2JcDrPpGb24bKht2zQ=
X-Google-Smtp-Source: ACHHUZ4SZg3zJIzkJr6LbMqS6OBNbDAxk1IK3XhQ2N/CR8l6aM2Z4fSrt47vBrbxfi1NPosLZOIxcA==
X-Received: by 2002:a17:907:8a26:b0:96f:a0ee:113c with SMTP id sc38-20020a1709078a2600b0096fa0ee113cmr5709996ejc.19.1684698864812;
        Sun, 21 May 2023 12:54:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906101000b00965ffb8407asm2187107ejm.87.2023.05.21.12.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:54:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
Date: Sun, 21 May 2023 22:54:18 +0300
Message-Id: <20230521195420.12454-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
References: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_125428_466580_69DCB3A6 
X-CRM114-Status: UNSURE (   8.79  )
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

The first USB PHY on the sm8150 platform is really the USB+DP combo
PHY. Add the DP part of the PHY.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 2273fa571988..1f442e1be63a 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3399,20 +3399,19 @@ usb_2_hsphy: phy@88e3000 {
 		};
 
 		usb_1_qmpphy: phy@88e9000 {
-			compatible = "qcom,sm8150-qmp-usb3-phy";
+			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
 			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x10>;
+			      <0 0x088e8000 0 0x38>,
+			      <0 0x088ea000 0 0x40>;
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
 				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
 			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
-
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
@@ -3430,6 +3429,16 @@ usb_1_ssphy: phy@88e9200 {
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
 			};
+
+			usb_1_dpphy: phy@88ea200 {
+				reg = <0 0x088ea200 0 0x200>,
+				      <0 0x088ea400 0 0x200>,
+				      <0 0x088eaa00 0 0x200>,
+				      <0 0x088ea600 0 0x200>,
+				      <0 0x088ea800 0 0x200>;
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
