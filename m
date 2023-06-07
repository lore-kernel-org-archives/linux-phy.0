Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 272C9C83003
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 05:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzBxgjddzq5ZvPoRTdSGRWxAfW4/UkSPH4/CtmZUKwc=; b=0uB08hOllF25U9
	vZUWuQGmBtMSy5gWYh7TfAnghvewzjZVnEjZveFMVCPON2HtIUsVHP87b4gUXciLF2x4eyR7c1pOk
	a44zsTm0Bh1F13tV9OY3xwZDxkCb5lNohbORcLJYyRy6VQZtisLYg50dGSWWdvy3ncqdcDERhvLSs
	NFkzTmQdClTNtCdipbpqFIyJSgyZgvWZBAWu2M8RHVAM4k+kxXF6uydpKVtHvgo7PZNVj/SeAiPnV
	44tOdw9h7dtLPlxRScoQU8UKxY4MoHANCQXmnOulcyf+Q5qkIVC5fk72M4/1Ny/LVLFJW2h//rqPM
	7qm4ErlK11qdHp5J7QPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHn-004MPl-2A;
	Wed, 07 Jun 2023 05:00:43 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHl-004MNZ-1R;
	Wed, 07 Jun 2023 05:00:42 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-6263b2526a0so51303936d6.2;
        Tue, 06 Jun 2023 22:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114039; x=1688706039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q/5Ew/nWKQC0Hp+PQTU4XGdu9OmMQKTpW4O893GVieI=;
        b=sCQf8tot4oqmWjxpMQ0kqLiG5RTUw0gals+TACDuNbqIlpTtLL8PSCUnapJMW6wcJd
         fGSyPl4oOB8D7IQhx/A3wSpdpPAkR9zZjXjA2z6w9etbZIyiMAk9wWUx8SnJJ2AX7Y+s
         JcGL58EsE+cuflsVH3phzlieHNl7Q6IekyjPBeYbhN5OWHxG4qbZXxNlK8MuwHrc36va
         /zJzv7ZA8ABA/sQUZA37GfKdjEIauW0Gpgh9RLG+MPL6tV/3oj7Iz/VA7/1aSVxFri9g
         w365LcNE0UwN2I1whQO2H21QGLUOfvM/8myMN1H7jSu15dzKMZUWfuqnPNQNRTqsLdHE
         blzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114039; x=1688706039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q/5Ew/nWKQC0Hp+PQTU4XGdu9OmMQKTpW4O893GVieI=;
        b=ND+8BkwnKKDYHc+RD6FYbCCPlvqBcMYer7u3FLWScTMsL7k+UGO0gwYPjRbxA16Ap6
         TKocA74qR5SfU0qsEQXrzEMiYMyCOUJ+JKDgdtPFylqP8hXKm8fM7z+cbzL0VsObAc3Q
         20S5u4qerOwBkgf3dcBmSWx8hufqlBU3IkAibdXDrzjlt17Kx+01aS+efksEET9WOH6q
         SluevFGuRjXu9JlL2Mw3Hmzc9z/ezzJuHtd7FbNcm4Eajc9OdYGTwPgjT4U+rOpICZIC
         KUxTGICiomsbg5dwosEEv+ORkkh2MVbdiiR0m2UpNJVnn0SOazwOVqm16HV+yyCwh5P6
         6gpQ==
X-Gm-Message-State: AC+VfDyYbg5h6YX+SoN0m4SmFeUzZOFJDN7zqJaQiikm/IYABsA59ZAG
	WsH0TErLoCHlJHGpc9Ii3to=
X-Google-Smtp-Source: ACHHUZ6iC8+WAnaSXhcTXsEM1Sy/Gc/mtMLM6eziiMleK5oK7t1+6j0M+QWw5yKnE57VqFA+TAW/lg==
X-Received: by 2002:a05:6214:d63:b0:62b:33cd:e0b5 with SMTP id 3-20020a0562140d6300b0062b33cde0b5mr2497726qvs.26.1686114039118;
        Tue, 06 Jun 2023 22:00:39 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:c358:f4f2:89b6:ca7d])
        by smtp.gmail.com with ESMTPSA id m1-20020ad44481000000b00621430707f7sm5848980qvt.83.2023.06.06.22.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:00:38 -0700 (PDT)
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
Subject: [PATCH v5 3/4] ARM: dts: qcom: msm8960: Add USB node
Date: Wed,  7 Jun 2023 01:00:22 -0400
Message-Id: <20230607050025.86636-4-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607050025.86636-1-guptarud@gmail.com>
References: <20230607050025.86636-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_220041_489738_726624CD 
X-CRM114-Status: GOOD (  12.58  )
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
