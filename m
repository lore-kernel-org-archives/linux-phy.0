Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82CD2C7EE2E
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 04:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzBxgjddzq5ZvPoRTdSGRWxAfW4/UkSPH4/CtmZUKwc=; b=xI1BUTQuUjxR7r
	PAQys77nm+Yr3zsycEaf71yXyioH/zhfBl02vXSjmpAAV6ui3jQomgQuzipQES0SvraYFbiS8/Svi
	o026a1Bjo5rwwpod2hjJ1tmfUVZroeHywxigNxx9GBHt8LADJgr/WedNZ8Dhc0Xu+iz+Q7iEv5+m+
	k27XMMg3/9t+s5TFVD35Hzl034eGPUeLpTHSR72AxJLIQPTqh4XEJ2Nr/Whd+OBT8ovGag79VlbkR
	jnniQigTtGdHBWPgotQgCQziJEOKIB6WLl/HYUdYIio6a0foxFTFvyMnenKMAgyHs2630LNrsRYln
	OYxwjRHqcqCKd/WcEHJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6NxJ-0005G2-0Z;
	Tue, 06 Jun 2023 04:06:01 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6NxG-0005EP-2u;
	Tue, 06 Jun 2023 04:06:00 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-3f8612168bbso22033071cf.1;
        Mon, 05 Jun 2023 21:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686024357; x=1688616357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q/5Ew/nWKQC0Hp+PQTU4XGdu9OmMQKTpW4O893GVieI=;
        b=TdZhC4fK9DyYXDuCcL99ezhhzR2FYt5SIbcIGNGUEACCtmtsKkCwRtxsijJbkV6kRC
         bySvqYT1hfdbs/wqWfgksdGbUqtETeL6afYwVlY2SNDvXXqRV5bi4PCGkKr26owu/2pV
         /He6pn1J99ITVTlRUTSMW/l4+IwJJ9d7GK/TlaLuK0t9/UabMnoLEOjMNV76r/QihlSL
         qD7OcOs3KpGuY+M1VSzX3OvfwsxLXbzT3CYbS3hsmYgeXuQuxQZ1NnuLEKbKDblDLK6Z
         7iV3tfYrTGw6OVhLwZrT4OJ19vrmGbe3BsB8cy0if8J3l9mmes4T4QxHykexeSlHG0ou
         DxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686024357; x=1688616357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q/5Ew/nWKQC0Hp+PQTU4XGdu9OmMQKTpW4O893GVieI=;
        b=cmDAaZzmpM1zdJxKeNtgCipmpcasDrUnxlwpPO9KxyRxIbGYDrpiAXfMs1n7+HZTgV
         F9XHjiBPkplNlc5oPSK++eSFle8HB7qDOKhD7NB+AuJs5nodQWjOfuJe4QZPdhstJzzy
         X8/9LUxYOTynnbwN9c4ijqGRKvObWuDBTgaZTF5ePTVIGntQcKeDdVoC3Lm5eTJqYnRj
         8LLb8DoJGiv6CX53nASgG90xaYw+AMbeiS6Q59ZwNHi1sPpvERXGzmZs6N53gIzdwWlN
         W6pzjKwOWAdDEDvPQ/ZA/2u/5Co2qN7HP2bbRj1tG5bdF5t5uPS0ZP2QwDpHIrB52m/U
         6joA==
X-Gm-Message-State: AC+VfDx+ledKKax6wLaV3DW3vKla8uKYmUXwxwL+zXwaPZ1nrmDzwJ7q
	9W4t2QAxhv8MlaxeVvWgGM0=
X-Google-Smtp-Source: ACHHUZ48ICTMK8+jPajYie1seRRfS8Ys1Qbmh2kMJZTCbKIUEJYe04P9PZ6VW4QJWdw6nHCyIIObcQ==
X-Received: by 2002:ac8:7c56:0:b0:3f9:a73b:57a2 with SMTP id o22-20020ac87c56000000b003f9a73b57a2mr749030qtv.26.1686024357354;
        Mon, 05 Jun 2023 21:05:57 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:aac8:d62:35cc:958c])
        by smtp.gmail.com with ESMTPSA id e2-20020ac84b42000000b003e388264753sm382980qts.65.2023.06.05.21.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 21:05:57 -0700 (PDT)
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
Subject: [PATCH v4 3/4] ARM: dts: qcom: msm8960: Add USB node
Date: Tue,  6 Jun 2023 00:05:26 -0400
Message-Id: <20230606040529.122433-4-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230606040529.122433-1-guptarud@gmail.com>
References: <20230606040529.122433-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_210558_946402_C159F54D 
X-CRM114-Status: GOOD (  12.42  )
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
