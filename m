Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F47C88CB2
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Orw97OMj855rmtC4+CptFFIe0a6oKWlsWs/Vm3xHRXM=; b=H8Yb+3LdvQb10/
	wlDwtWCOWoFOnFtV3Df7RBUexi6GobF0NXhXi703NNRWf8fXsZ52FPLFKv7K/E0iAe6GAyyemOKWa
	cMsCw1NWY3UnCJd/FW8e7JmRr41uVX9J3lLeOmeSr3vzxuzEJ3UQb9gzB40MOuZmoq1X+/DG4lf2S
	Ifl2JMjil/c9J697/rQKW+Cz7Yv5ur4Vj1W0QiEFyJOJzRCIJvbx3ul6YNOYc/iozIRbh9+PLQsF8
	cipWmLF1LluYCrweTcldcXvAHqSHtiJz2mRN1kwfTg7S8L8eD8Gz5AzqBy2MyedbW7IWd3dhBUPV0
	1m/SZH0Memx4CjTe2sXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkR-003oxl-1j;
	Thu, 24 Aug 2023 21:20:11 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkO-003ou1-0L
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:09 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-500a398cda5so390796e87.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=SOMpE6NpYB0KiQXynGmpaaNboa1TbzYXsZ67YwO4Jr+BUu3lIGJOQ3GZ35etuTqxMN
         lGEdARCyXyXSmlo7RLZ6IVg0rfaNdrKiX91zA96sW0Dyj9wHgAJLWJ4Y8kdA+PzZJ+wG
         CbwLOZMSoidtv4HSGel2I6rDS+361afeypafYST700ZtdWwnx8p33YXXGK+URX197XJY
         yhfE2KU47Z3+4fyINjaKO3otNVewQnZF+DQ8EkH649pZ8WvPs5N9BjzlTcpV55V4zFhg
         6msz9maP4vBFD4IDByJ1DgdrT4cS3otEwjOLlIzL2b3+bA38qSlF6MW6uFzi9Nm7gBu8
         hDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912006; x=1693516806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=G0exfZ5CkYl61xcFUChaDm9gBXxytzAjZNTWvPQZYOz6qy4dM98eqirFqn3hg7FqRk
         PbuLUMsuNsUHA9nkqOjs11PjgnLb5S9Xd0fxL20I0XqU/bg2kCsnlXD1xM/KlbxDfSfx
         FVpQEo9fwBMpPoF6xEhuJTGqhNOEYE7lp0FhOEsR00fpIkpw/Uyb7FxPLTYAJPf9WG+k
         rSd6+fc3JPk8c1uAaPgomlCd/NgDdZ+L49KXu1c313iYEvZmRRi2KDPqOP8NVkIxXg/o
         tradGBTUeJOMxDv1H104ctOXQGM26RGumzaFvlI5B6B3HzVJKLfFNc7GiDJPnCQWbeS+
         F0dQ==
X-Gm-Message-State: AOJu0YycmR0Udhdums04msGfMbJqzpQ5+8/kAOVRGzUccuX1wWhE+YRt
	wGKAaDPMOtp1f84kOE/BLTlJJKigctmT8DrpT+U=
X-Google-Smtp-Source: AGHT+IFw8/TyKKff8GA7Oa5lXZRTfWA5WrJqfutL+JLCJGLj4ey5TGqCy0b8VFfWWYyJZFwsdTd4jg==
X-Received: by 2002:a19:6705:0:b0:4ff:8729:555 with SMTP id b5-20020a196705000000b004ff87290555mr10630696lfc.11.1692912006706;
        Thu, 24 Aug 2023 14:20:06 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:06 -0700 (PDT)
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
Subject: [PATCH v3 15/16] ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:51 +0300
Message-Id: <20230824211952.1397699-16-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142008_182597_F1B35417 
X-CRM114-Status: UNSURE (   9.69  )
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
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 41 +++++++++++---------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index 4b0039ccd0da..89d723e4ad61 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
@@ -228,31 +228,26 @@ usb_hsphy: phy@ff4000 {
 
 		usb_qmpphy: phy@ff6000 {
 			compatible = "qcom,sdx55-qmp-usb3-uni-phy";
-			reg = <0x00ff6000 0x1c0>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00ff6000 0x1000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
-
-			resets = <&gcc GCC_USB3PHY_PHY_BCR>,
-				 <&gcc GCC_USB3_PHY_BCR>;
-			reset-names = "phy", "common";
-
-			usb_ssphy: phy@ff6200 {
-				reg = <0x00ff6200 0x170>,
-				      <0x00ff6400 0x200>,
-				      <0x00ff6800 0x800>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+
+			resets = <&gcc GCC_USB3_PHY_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
+
+			status = "disabled";
 		};
 
 		mc_virt: interconnect@1100000 {
@@ -603,7 +598,7 @@ usb_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x1a0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
