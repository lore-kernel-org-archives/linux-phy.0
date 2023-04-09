Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C5CC77B6E
	for <linux-phy@archiver.kernel.org>; Sun,  9 Apr 2023 20:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y40Y07PTHxDtD2BP8c5L9mE0YBRJQd7pVPATKPpnYbU=; b=fsYqPZq3UU4MIh
	LDyPcS3daYw+YkF4caEHCKbQTOmhOC3IruSjvMclvlNS5WMsHAFf1kSLWiq7KPvMXz94q7j3TF9Dk
	C/sL7TQ2KrigZYgR+Eci26Kw7TRrEkqBwDhlbLS0r0dilWFMY/r6SORJOs7t16OuKacAy81ktRKtX
	8IGUYZAtemmp0tiYGOzdNGFZI3gkB0MvBJwNbEyU6i8qhHpAFA3sjNBA/FN8lb9iZEz8eeok0dTGQ
	zKZEgFf6k1MnV8nOQOQrcZ3H1qT7SO6yOAG74hzOD83onQgqYVKofMkJVIZA5GRZ/CE5W1Trey+NP
	EgJCvsNKtBJUeHSaJWHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plbMN-00E9V3-1D;
	Sun, 09 Apr 2023 20:09:59 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plbMK-00E9UV-2Z
	for linux-phy@lists.infradead.org;
	Sun, 09 Apr 2023 20:09:58 +0000
Received: by mail-pl1-x632.google.com with SMTP id y6so2011856plp.2
        for <linux-phy@lists.infradead.org>; Sun, 09 Apr 2023 13:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681070994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yAwtHEa5KqJFCC2AgvvTNGFMxN3ooON05S1Vg8ohC/E=;
        b=hr37uIbkdRoyKgTwjnuniHrHqJI8LTFu7gG/d7oMIFwEyHcHYiCnMDlHeFRSfd8mJc
         vzSLDJWfquLauRDQOyKWV1r+jr26xLdDr6yZkBxidoLUDuWLvDBW946bQuydBMm6Uv/6
         yg4DkgCk/uJgDIxVO40mx8xTwpFyJ3awjvSG7oMVivIqh8gTV3A9BqFXJVerYUJqJpkn
         jyDLKf2uwh7xWtvuh+iNh49O0tv0tFvgqsqzq3P62HOLIQypoinjRD38bcbgCgB5bwJe
         kHVe18Xo8EB6Rv1ka0XwCXFQ77wVUyyI0G1JHb823miiZIqJodLKpw3r0MHYPsFDVdlO
         xaMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681070994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yAwtHEa5KqJFCC2AgvvTNGFMxN3ooON05S1Vg8ohC/E=;
        b=hDl3TbmNXvn+RxJvEKdxoAwk0BE/uMa0jbzujcF95nai92X35eex08wYj2onsE0Fpe
         DjHLdau9ht8n98E9JBoWVRHbVBDZhgEBwyj2ZKi0UDQQuo48qeec3m7bUoGTXTCBXWay
         If7vB37pJ+RLUeNzGU5ylL8vHqRUhttb/zuQ5g8CBA+1LNIqumAbkSn+rrCvNJ0Qsjrs
         cBolnvFNUZC9n2W3J6+EhPorzL4p/CyFxt39W6xlH9Wn1mCCDTbZmmS0oqUuvbCG3Oad
         R5+WxJzdAdHX5KJwvhEvblpXoHD2dw5+mU80m4XiW8uxBQizvBluXlo7SRcggk0Kk8Fo
         PvEA==
X-Gm-Message-State: AAQBX9ddcKAt2RweIRlstUulQUA59801PHBrdi+YS6BDaakUWTYZkw5g
	WPKmAKcJ4kBnE7lQoMOPpKeVYw==
X-Google-Smtp-Source: AKy350b++kbFAe+i/4YL7K/q1Au2AeDmk3+vLitjkcmomPcnTX8FfsGDl3nKeXcT7Y1xP+AQZMe85Q==
X-Received: by 2002:a17:902:d50b:b0:1a6:4532:1159 with SMTP id b11-20020a170902d50b00b001a645321159mr673plg.63.1681070993842;
        Sun, 09 Apr 2023 13:09:53 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id ji21-20020a170903325500b001a5260a6e6csm2876304plb.206.2023.04.09.13.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 13:09:53 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v7 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Date: Mon, 10 Apr 2023 01:39:34 +0530
Message-Id: <20230409200934.2329297-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230409200934.2329297-1-bhupesh.sharma@linaro.org>
References: <20230409200934.2329297-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230409_130956_830848_C4B75A60 
X-CRM114-Status: GOOD (  10.94  )
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

Add USB superspeed qmp phy node to dtsi.

Make sure that the various board dts files (which include sm4250.dtsi file)
continue to work as intended.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 +++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 27 +++++++++++++++++--
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 +++
 3 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index a1f0622db5a0..75951fd439df 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -242,6 +242,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 2505c815c65a..e9c5d5fd2672 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -651,6 +651,29 @@ usb_hsphy: phy@1613000 {
 			status = "disabled";
 		};
 
+		usb_qmpphy: phy@1615000 {
+			compatible = "qcom,sm6115-qmp-usb3-phy";
+			reg = <0x0 0x01615000 0x0 0x200>;
+
+			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
+			clock-names = "cfg_ahb",
+				      "ref",
+				      "com_aux";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
+			reset-names = "phy", "phy_phy";
+
+			#clock-cells = <0>;
+			clock-output-names = "usb3_phy_pipe_clk_src";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		qfprom@1b40000 {
 			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b40000 0x0 0x7000>;
@@ -1101,8 +1124,8 @@ usb_dwc3: usb@4e00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x04e00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb_hsphy>;
-				phy-names = "usb2-phy";
+				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phy-names = "usb2-phy", "usb3-phy";
 				iommus = <&apps_smmu 0x120 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index 10c9d338446c..d60cc024749b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -280,6 +280,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
