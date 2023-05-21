Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F05C8300C
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 20:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52lmKYw26vdauHPpNbjVLZuQazneYSUPa90ov+tS/wI=; b=mAdHs/084MeMlw
	oJkbJgKYXpzVdkb9dsfLrt7sTyv/vcqS1pqv6QSO+Az97VIMKTtnUMBhOV7pRzU74+43sc+PClvVM
	4YH5IXoJeOu2W7y7bu264SiW0iOi4jP6kwCpS6TmTYfdjWpLdF0lv43OZNXwAHQOdy6ygtrMBhytp
	ENTnQG03dLUB4jLdG46Asi3/4TacGtDalNlmoG0/regxab0l9FKL+5bBfybor9/4VzUECxKmgg1Nt
	f0SWwx5HGTiUwoHvmnGJOY+jU5XzCWa8WxMuqz7h0iAPdp1G3svVb7WtCWyFXZLkstDoiz54ESZGO
	ax+a1vUhsJ6tSoddL95A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paa-004bD5-06;
	Sun, 21 May 2023 20:23:36 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0paV-004b9d-1e
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:23:33 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2af20198f20so37796041fa.0
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700609; x=1687292609;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzve2U6INwQH5itjsfr5UFo42bizs7zTnlEHq2fDisw=;
        b=WZqp+hsuqlrkpVdrpjeaGYCRYP2htvmhaybPaB9Om0s6fHRMQDJ0YoLnnhGVwQkzzW
         gn02gQRL9YboWTrgaZlrdDzI4mMtCdUxPgm/o8OLfE2QzBZ0EkOXNlUz7/51duYf/0lS
         UI9ZE45Wpi6FlUvVsW51jYygH7CyizWIhrA+7pAtszxDT55o566wsuNAL8vkFm669BDB
         jmyP4Yqgdl7elhXbjcGXN3F1VMPUUfQdAW0X4KobPAZd6OnwiMeuQoJtfKt/ECncZwPG
         TTlg25/qXjeGh5TO+rngkq09iFJdDPL/f3KHZy1nsoPNjII58I6otK6VnvUrYjDOI63T
         RTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700609; x=1687292609;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hzve2U6INwQH5itjsfr5UFo42bizs7zTnlEHq2fDisw=;
        b=TQDUFnEvgZnarlr/47wPkNfS4SgMjDZzD42sV079nnszVcZvDn5sonWbe7xijtTZy9
         YPr682A6tV0Q/81wbKbo5RBc8oD9O1S05I2cJT/lGzMXFhWrVqmsL0djWz0ygUGZwDjd
         tnQHDuvQWLlRqF9wMUnNmZmSkvUnWGtX0KhwLjEuqGJph9K0pfovc8BIQZG5JilIkkxz
         bL5+iWdOBW3kErFQKz3Hdh69cr1IKgWDA4VxggKZUXHC2YITapoKmgfrlkZzCkvBL5JD
         5Oiyi5JzDjXduPZ/55xLg8d454/8exU+CrRH/8PEOMl+QbAiNGmbY01BJMHiReEAfHIz
         6qpQ==
X-Gm-Message-State: AC+VfDzFB9XDomgkz5nQzW6uEI6GKbm34nCciD4R/bh7rnFX5BALURG3
	1R3hTfnpKxURTPYpCvygxOmbiUhioyTrThS5Gvc=
X-Google-Smtp-Source: ACHHUZ5PWQoCJcsB/E/8krwGUSZQ0r68R0xfkV7lJmExGtyjUJyh0OrSEW9w5mlcqiKp5VWvhTy9NA==
X-Received: by 2002:a2e:740b:0:b0:2ad:1ba2:eff9 with SMTP id p11-20020a2e740b000000b002ad1ba2eff9mr2970708ljc.20.1684700609404;
        Sun, 21 May 2023 13:23:29 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:23:28 -0700 (PDT)
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
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 09/10] arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:23:20 +0300
Message-Id: <20230521202321.19778-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_132331_549071_F2BA4770 
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

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 48 ++++++++--------------------
 1 file changed, 14 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 1f442e1be63a..e2e210e10475 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -3398,47 +3399,26 @@ usb_2_hsphy: phy@88e3000 {
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
@@ -3575,7 +3555,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x140 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
