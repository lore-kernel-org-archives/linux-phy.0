Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B6FC77B73
	for <linux-phy@archiver.kernel.org>; Sun,  4 Jun 2023 06:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzBxgjddzq5ZvPoRTdSGRWxAfW4/UkSPH4/CtmZUKwc=; b=EJI6xbFrkcGxh2
	aiJ4Vc3h9VhPoyy9ycLhfNxqiqV+gQ5ZPzLrnw410zfFzn9fnaHoQBDbVHtwfmO4PBVhNNRBogCD8
	jIOpDweA02Jvx99N6DsWP0dIYWpsVBDU2mXIeF10yeLutguGdRXcUMUXolKS2JLqHzKf/y9xndZ8O
	qQ40k2lOyO6Ptlr+l4UdXAFELFS95T1H8Q1uU55eBPlizhbHZdCZd9Gdasp/0MLqm3iFvATv0qCpO
	TC8HRaaOHScze/dlto8exmBiGI+knVns7urL1mQrV5j3l7pxFaP7CpED1avizCf/PurNFiDW61dok
	KBwKzsJzreJVUYIR03aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGo-00BSFQ-20;
	Sun, 04 Jun 2023 06:31:18 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5hGl-00BSES-2Z;
	Sun, 04 Jun 2023 06:31:17 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-3f80cd74c63so40274881cf.3;
        Sat, 03 Jun 2023 23:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685860274; x=1688452274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q/5Ew/nWKQC0Hp+PQTU4XGdu9OmMQKTpW4O893GVieI=;
        b=HnlYJwm4Zkbm7yG/IaCjrAicxSigatDlp4bx1nsMx1gg9Elv0gZ7Abm0ZBLpe5gFzU
         uIIZ/1XB6ZFrZ0Ig04e3dT+SJjQbHutE+VBcTXdysC10j5K36tFx+xfC1J1Fnb7ecPUq
         I+rhW4A8jdjLGsTw8qNm0+f6Ze0PmdUEI+mhExh6IppK0/YWTlqY8o64FDN+XptCJc07
         zbuSaD2Pfouuj0kOHcA61b8B3IdOi4Vj+iDN6JjytmtuHxS5lTZ+e2Tw3ZborgLpK5OH
         cG/FmDOndYyLfh3yWNEHkEKziD9+ombvbpRIQuO+UiYTC20JA8fEbbWlTFamXpYfvUhL
         tFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685860274; x=1688452274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q/5Ew/nWKQC0Hp+PQTU4XGdu9OmMQKTpW4O893GVieI=;
        b=X8O3rY5CPNQuEMhX967TEVIWsJmOz6Yrj3GdgTShJ4CngGOvqwBmBxWKeXbpIIms+d
         saZNw75wFfdRZ+ba70BISz1vvkLfbFAK1uRg/XtJTBSwB0FpZvdVMZ/vki/+AazxtSMW
         rxDFN9aFPXiqbYqpne1DJqfCkC2NEz8aGfXAqUD8WihbEr2kC1hrmT+sG7S1hWjk7Ib5
         WKeLh+G5b8+zwRmOO75Gj1NLFHQtUQfcYUbth8UWuTbVOcJvnNwSrpSCYXx4JCgZgGCb
         SUL/HQ4ryZ/y1RjUfM76szIa89XjcqjwuO1jaYQWcQXJLjyRZ91PHVvf2jJ+9bahh8yp
         odkg==
X-Gm-Message-State: AC+VfDyd5WiFlXGMp9cqPiFVKSaWDqcmm1GLqF/qm+4f5FV3FhzX2Obg
	0wZhubCgqRuQWH1LLPsu4P0=
X-Google-Smtp-Source: ACHHUZ45R7wzOpIgTXwOOHz3OkdPTRNH3bRGV1/88LFhz8a0+qi+kH4HsWLxDWk+1Evqq7Aj2uf7fg==
X-Received: by 2002:ac8:5913:0:b0:3f5:1f9c:5b35 with SMTP id 19-20020ac85913000000b003f51f9c5b35mr3360428qty.63.1685860274486;
        Sat, 03 Jun 2023 23:31:14 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:ab78:dd77:aea4:8d1a])
        by smtp.gmail.com with ESMTPSA id e10-20020ac85dca000000b003f018e18c35sm3044163qtx.27.2023.06.03.23.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 23:31:14 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/4] ARM: dts: qcom: msm8960: Add USB node
Date: Sun,  4 Jun 2023 02:30:20 -0400
Message-Id: <20230604063032.365775-4-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230604063032.365775-1-guptarud@gmail.com>
References: <20230604063032.365775-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_233115_836465_C834DD74 
X-CRM114-Status: GOOD (  12.18  )
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

Add the required nodes to support USB on the MSM8960 SoC. As it's very
similar to the APQ8064 SoC, the nodes are almost identical

Add a label to sleep_clk for the USB node to reference

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 arch/arm/boot/dts/qcom-msm8960.dtsi | 34 ++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom-msm8960.dtsi
index 2a668cd535cc..581b3ab5c4ca 100644
--- a/arch/arm/boot/dts/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8960.dtsi
@@ -3,6 +3,7 @@
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,gcc-msm8960.h>
+#include <dt-bindings/reset/qcom,gcc-msm8960.h>
 #include <dt-bindings/clock/qcom,lcc-msm8960.h>
 #include <dt-bindings/mfd/qcom-rpm.h>
 #include <dt-bindings/soc/qcom,gsbi.h>
@@ -71,7 +72,7 @@ pxo_board: pxo_board {
 			clock-output-names = "pxo_board";
 		};
 
-		sleep_clk {
+		sleep_clk: sleep_clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
 			clock-frequency = <32768>;
@@ -370,5 +371,36 @@ gsbi1_spi: spi@16080000 {
 				status = "disabled";
 			};
 		};
+
+		usb1: usb@12500000 {
+			compatible = "qcom,ci-hdrc";
+			reg = <0x12500000 0x200>,
+			      <0x12500200 0x200>;
+			interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&gcc USB_HS1_XCVR_CLK>, <&gcc USB_HS1_H_CLK>;
+			clock-names = "core", "iface";
+			assigned-clocks = <&gcc USB_HS1_XCVR_CLK>;
+			assigned-clock-rates = <60000000>;
+			resets = <&gcc USB_HS1_RESET>;
+			reset-names = "core";
+			phy_type = "ulpi";
+			ahb-burst-config = <0>;
+			phys = <&usb_hs1_phy>;
+			phy-names = "usb-phy";
+			#reset-cells = <1>;
+			status = "disabled";
+
+			ulpi {
+				usb_hs1_phy: phy {
+					compatible = "qcom,usb-hs-phy-msm8960",
+						     "qcom,usb-hs-phy";
+					clocks = <&sleep_clk>, <&cxo_board>;
+					clock-names = "sleep", "ref";
+					resets = <&usb1 0>;
+					reset-names = "por";
+					#phy-cells = <0>;
+				};
+			};
+		};
 	};
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
