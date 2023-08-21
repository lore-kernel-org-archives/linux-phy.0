Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3390CC7EE43
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1ijshGjyoTkPWH7dGsP8dTcQEcAa9g+vSf0HBqeyqM=; b=j1SRVzzSB4Iq0v
	nLcx8ULf0yIybbtnVYqykNYLQPgnmZyXuTZbcEiI7MLZEXUycVF0GaJ4j+kXmenxbkfBWZo7hJI3L
	X7EMLSwre5meZufBv4SZFB0DWaJsJNhmzN/DuGNnCkDH6iTFWPEO7GEs5EewMleEPNpvC+VyVJqK9
	incX1vHkVXOoFoRMAuYgHximRonNwE8uOe2q/PVI1HvqNiimMbbduPHMVO6D2jU3zV8Gc5Ex13TON
	iEEYHhEOtO2FH5GappWJuusayI6nPircrfTClYhWATmmNr59XatB9snU74pwQXAdqt7e0bpawwXuO
	rfIdskCCvpEkNuxwvSAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjw-00CjsL-2o;
	Mon, 21 Aug 2023 00:25:52 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjs-00CjoU-2H
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:50 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bcb0b973a5so17828051fa.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577547; x=1693182347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZpBNHpYglDb91ucrUq7ha/N1sRsDyurprg1I9sqkvpM=;
        b=Ve2bGEtzV1B8iq1jUe5uhNR76V7VY499ywn4IKn/QjganYP6xYHKn+zVVikLna30Wn
         Z4RqRnLxbS5dF+M8Qdi7+zO9DIFNuOe/p4iGgF8S5GTMpGfpx6wIF0QworwZNbtwN9s8
         LTFeeoYXjOUQb8FN1AcWfa639Xe9/DvecD7iyAudIvnmCRorfMIfXGHUC/P25ssZ3sp8
         aYjyb1ddZ/JBmpQieUVCcxPfIePouQ6Gj3N7R1IWL/KcT9sO/x8lr7+HAvyqIx15iujL
         04QN/mXZHxGwWzJkUn2rHAyXmkjH1qZWJsjnS9cbkWeBbrZyuNs6CuIoRQWZPObfzVCy
         1e+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577547; x=1693182347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZpBNHpYglDb91ucrUq7ha/N1sRsDyurprg1I9sqkvpM=;
        b=R805oHyu6EJd6ZTgzmtMokk/z3DTboEVtdKB62a6YJwXiwErBw5oPn/XYO4N4frWvp
         OPQT42v+tT25MawsyUd2mK2qKqo2kADl2L1ZHsYDsbnpj5FCnulLi7nQuHoAqsiTbHyx
         QC1uAg4d8MjeIWzneKXEu9AYpbufNQ+c6rvKiFTZcgmvEj/92yLdnKNB2jjMSc+Yv0Is
         4XktrzSSY2t7EflJ7IoOec4oCBu4JiQZc9dOjwy7EF+l/7Qfxlq30uhgw/Du/PBxj/v0
         32orHn2JxTVBsq8GFKWunR5PQQj3cLu/809UWbx1vMP3DjhF+lLokh3eHJAEYZbsQI5y
         MknA==
X-Gm-Message-State: AOJu0YyKZ8dNZhXfWJVj/74hWHzcjvl1exsEs6D1eCfZClJxpffrD0It
	3sIRJ1UTy3vtzCll682WxCvhvw==
X-Google-Smtp-Source: AGHT+IHvV56xREbDBS0Zw1zRDCkTfHxKXpSlpk9BmpE6LFk42DhGYDo+2UzzYrn1f8mV3jvH9o2CPg==
X-Received: by 2002:a2e:8416:0:b0:2b6:ddab:506a with SMTP id z22-20020a2e8416000000b002b6ddab506amr3852069ljg.34.1692577547389;
        Sun, 20 Aug 2023 17:25:47 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 13/16] arm64: dts: qcom: sm8250: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:32 +0300
Message-Id: <20230821002535.585660-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172548_739104_E1D13886 
X-CRM114-Status: UNSURE (   9.06  )
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 38 ++++++++++++----------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index abe39b0470da..974bdc1a9f34 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3575,32 +3575,26 @@ usb_1_qmpphy: phy@88e8000 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8250-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088eb000 0 0x1000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb_2_ssphy: phy@88eb200 {
-				reg = <0 0x088eb200 0 0x200>,
-				      <0 0x088eb400 0 0x200>,
-				      <0 0x088eb800 0 0x800>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		sdhc_2: mmc@8804000 {
@@ -3905,7 +3899,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
