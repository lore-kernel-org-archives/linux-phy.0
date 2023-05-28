Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E5E8C7EE2F
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 00:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/snEmLYtkBKahNtTcxdxWr6uJDtuEYiRXFdjHS0JUHM=; b=rCJcNjumYpY0Oo
	oRfdQqhthDq8dPl9Oli5RGdyuQxozrBW+pQ5QtqTB5EQMyhXEFmghH373N09zUzHe2m8A5s4RE64/
	J1+DhssNfZ2EnZuVUYVIkpGxUUQ1LvEqotmXjl+W1jq+xsYHOqfpLL47L8+cWUiA42T5tYHiP7oHC
	BHOVLInEAtbdIVDKtD1w1EmU3PVtWeFVaXCXnjdAdIj8tiLrjIFPqHztmiTwibk4IWHVhu2bPdx2O
	cDXPWs++OzS4rJyZgol54gsc3vMjzaD7n1fd8S7T2RUW37piVa4VRmuemdnGYiO9fDuW2gtTjIOKO
	uBr6nDAuRa5nL2oC5aEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zw-006Zqu-0t;
	Sun, 28 May 2023 00:11:00 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zs-006Zp5-1q;
	Sun, 28 May 2023 00:10:57 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-3f6ac005824so19748161cf.2;
        Sat, 27 May 2023 17:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685232654; x=1687824654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxL0PbJXvl5Whcio0hte+d8fY5qOd/JOohZDFbRWZJ4=;
        b=ZZf0VXNqrJ97iOah24XtxGRQ+EiZBEv589J8AQxLmizYrOXqjWvRuI1qkByCN07IVg
         YpSc2FTzEqgjYOj4s2rWC0kTI3gu3BZqUEEC4oiI+QL8MTiDCZICcWwB5LBAHv8+O8Zq
         5fLej0veV/XEhL4Awp5YJJp+N7kGlOKT7WMIWTZ9l8vRLOHyjmCAbvH9YArUSQLtEP4s
         +80BBmax7JvN62XBiebRvyFP5Durzlbi0byoEWdWVeb5iZzmCiiGV8q4LR+ucld6DATW
         ZtRUeHrptU9KL4zrrz6lJ98lO3BhY7XGM+3xTiHfdn+LWSUiKGW/G3c2woApdZi3PG9g
         /JaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685232654; x=1687824654;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yxL0PbJXvl5Whcio0hte+d8fY5qOd/JOohZDFbRWZJ4=;
        b=BnX2Vg7Rc7nEOu7Ml2wCGZieQvi3jRuNdvu0U+/2Jk36Xqlcrzhzxg95CcuaCuHyGE
         HZw5uS04EIgoVc+VeGrqbeQUjd+9W1H5VJJTWbrWeH1wyM+p/FbXb1EJ7daJ09tvXRxF
         WqeJCB+PoJg7FnssnvjYJnZJnDlDCUGEEdm0zRsRsUZUqdfLnRVSzJFzZq6HMBeHkfOr
         08pRUS+QSEqRxDMa7zn6HCtjUqPORE+0PXWvxH57DwWRm7ZmpZ8/0pThXIwzN6mzITMO
         Q9Sk8blutg70rT9qfnIaMgizSOxZ7nkhgPok/vo9eG9kJwcmJcjux6SzSzjMno9cOWTU
         UG7Q==
X-Gm-Message-State: AC+VfDwC5eEbRiePw/zzentyAsTrAX2IXYvE3yCeiN0OGZ/8J/CltvN1
	u9mwVml4IHmHjUiXzpzghjg=
X-Google-Smtp-Source: ACHHUZ4mTky6H6gxephaGU2QhnztmGVpYXtr5/SkPNW9dzvCvbbUFQbGWkK6HsQWQcF8UfBgZgrl2Q==
X-Received: by 2002:ac8:5795:0:b0:3f7:fd1f:9e4c with SMTP id v21-20020ac85795000000b003f7fd1f9e4cmr6901176qta.2.1685232653901;
        Sat, 27 May 2023 17:10:53 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:28b2:2867:6311:b7d0])
        by smtp.gmail.com with ESMTPSA id t18-20020ac865d2000000b003f6a7ab1450sm2518454qto.30.2023.05.27.17.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 17:10:53 -0700 (PDT)
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
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rudraksha Gupta <guptarud@gmail.com>
Subject: [PATCH v2 3/4] ARM: dts: qcom: msm8960: Add USB node
Date: Sat, 27 May 2023 20:10:08 -0400
Message-Id: <20230528001010.47868-4-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527040905.stmnoshkdqgiaex6@ripper>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230527_171056_614733_21707B55 
X-CRM114-Status: GOOD (  11.88  )
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
 arch/arm/boot/dts/qcom-msm8960.dtsi | 35 ++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom-msm8960.dtsi
index 2a668cd535cc..b11e606440cd 100644
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
@@ -370,5 +371,37 @@ gsbi1_spi: spi@16080000 {
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
+			status = "disabled";
+			#reset-cells = <1>;
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
+
 	};
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
