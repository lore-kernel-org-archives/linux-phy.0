Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AFC4C54EB4
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 13:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wkK5heLOtyYj6rSNeJez6BF0fh82Wl9AAY3jsSQPvM=; b=dIoPSoeg8i6jqs
	mSPBHdhH2KKTA705vG5/UDeD913tJDnX+Tx3mofN9/Vl2rwgSBKTjYESlbvxCpum+ujO+WySGW7S+
	1sgt/+3UY7Yrb420s5ayNswsPbzZonOFp5vodAK5kQIQ0BjOFj0MfBkg9ljJeTD/wxkrACo+V5q5v
	8eprcc2dG7W8mmkDOiYmMrcnb3EasTtEuxSjfFi+69xexZCVru796GHoH75PIEADdXb6tkqO999cH
	pB1acMcKFTy2x2uciOiu2GkChAoZl8Em2mzvo4fo054S7XHpjM55FINQ3pinbStmFaGPUh8fdYUuR
	ZowdUQfr5mRV6ZurnLUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJwu7-00HMZ1-Ek; Mon, 23 Jan 2023 13:30:31 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJwu4-00HMWG-G5
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 13:30:30 +0000
Received: by mail-ej1-x62e.google.com with SMTP id hw16so30393409ejc.10
        for <linux-phy@lists.infradead.org>; Mon, 23 Jan 2023 05:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h5S864SLj/0AmsHaYUn1BE0q0L7hH55z4J1jnk56j5Y=;
        b=SXQti/6ztuAnC5KrsM38OFA0Fl6IohIBjIRzPaMChs03xmgAbfg7A0bBZ94KVjQoy1
         nWpQ7MDiJYxlCyIihMtd35Fhh63nPB3gcx2h0+g8Bj03DsC0Mj7ZDKBJuStlekU0NElh
         uZADboZbyZ7Hxa9xu+c0wLj3qfT9rPDwHEVRE2EppJUUHnmdYUoqcSKjnI8DJCDq+3vK
         +Xoqnk3LKvXxT6rC+OzCewsF55Di8pG1qJWYHwqj0NKrRThHgcr630VWS8DN709TZXPk
         pNYhZk4zzvxTnLgpSvh58nLbOCkJ+fIPk2ettwNqZxhg76id0QPmMKpyMh//jgVGth0L
         uG5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5S864SLj/0AmsHaYUn1BE0q0L7hH55z4J1jnk56j5Y=;
        b=LtOGRlTeUlNxEMFldAOhEqweT8EoazlBSuW2DjiDSVZOeNaJMqrOtW+nqh2YJmv0rK
         Qr5fRjndsBH64ipfJ7eHBqMB+a25zC0W3h0lUmkjfFj5BER0DIiC2p4quauEnfRQ13JX
         DRCUHgAttE26InjHF14AKVY6UwnOqPgW/zcDtoEGB45W3Qh+2JyKQOVcyl5Eympo3on0
         0ZsZ/3uL/2uCvjXyJocvtNm2w9Dt6y4hKyeCrkXODUCzP1FLemXNRb5b7AKejTbVDG8Y
         WQz4WCkhcel39aDbGKfboLI8/DMso+FLd6a+9IE9HPAhQSgGXSvcBlIb8OeexRVCA8Bo
         B6TA==
X-Gm-Message-State: AFqh2kpQPKfivFb/PXLMmlrrYZKnh60CMRyC7GfVQOgKmV8fkN8UTjwD
	vx3zudBnMYqgrCDhL0izJeAUKA==
X-Google-Smtp-Source: AMrXdXuJwq4DokcrqrcjPAVHUF+BBk8hTFZqS+4PEtDUB9U1TQrK5YO0nyRdmtPdcT/DcOBym2VYQw==
X-Received: by 2002:a17:906:f49:b0:864:8c78:e7ff with SMTP id h9-20020a1709060f4900b008648c78e7ffmr20730884ejj.23.1674480625601;
        Mon, 23 Jan 2023 05:30:25 -0800 (PST)
Received: from [172.16.220.87] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id s5-20020a170906c30500b008552bc8399dsm18410066ejz.172.2023.01.23.05.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 05:30:25 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 23 Jan 2023 14:29:51 +0100
Subject: [PATCH v4 3/3] arm64: dts: qcom: sm6350: Use specific qmpphy
 compatible
MIME-Version: 1.0
Message-Id: <20230120-sm6350-usbphy-v4-3-4d700a90ba16@fairphone.com>
References: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
In-Reply-To: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.12.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_053028_614226_BFDD2F16 
X-CRM114-Status: GOOD (  13.08  )
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

The sc7180 phy compatible works fine for some cases, but it turns out
sm6350 does need proper phy configuration in the driver, so use the
newly added sm6350 compatible.

Because the sm6350 compatible is using the new binding, we need to
change the node quite a bit to match it.

This fixes qmpphy init when no USB cable is plugged in during bootloader
stage.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 54 +++++++++++-------------------------
 1 file changed, 16 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8224adb99948..128dbbe23ef5 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -13,6 +13,7 @@
 #include <dt-bindings/interconnect/qcom,sm6350.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
@@ -1314,49 +1315,26 @@ usb_1_hsphy: phy@88e3000 {
 			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
 		};
 
-		usb_1_qmpphy: phy@88e9000 {
-			compatible = "qcom,sc7180-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x200>,
-			      <0 0x088e8000 0 0x40>,
-			      <0 0x088ea000 0 0x200>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+		usb_1_qmpphy: phy@88e8000 {
+			compatible = "qcom,sm6350-qmp-usb3-dp-phy";
+			reg = <0 0x088e8000 0 0x3000>;
 
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
-				 <&xo_board>,
-				 <&rpmhcc RPMH_QLINK_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
+
+			power-domains = <&gcc USB30_PRIM_GDSC>;
 
-			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
-				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
+			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
+				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
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
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 
-			dp_phy: dp-phy@88ea200 {
-				reg = <0 0x088ea200 0 0x200>,
-				      <0 0x088ea400 0 0x200>,
-				      <0 0x088eaa00 0 0x200>,
-				      <0 0x088ea600 0 0x200>,
-				      <0 0x088ea800 0 0x200>;
-				#phy-cells = <0>;
-				#clock-cells = <1>;
-			};
+			status = "disabled";
 		};
 
 		dc_noc: interconnect@9160000 {
@@ -1430,7 +1408,7 @@ usb_1_dwc3: usb@a600000 {
 				snps,dis_enblslpm_quirk;
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};

-- 
2.39.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
