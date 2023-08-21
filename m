Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1ADAC88CB2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2M/otJ1WjsIkjdDFHHkSejt7gEkI2Ei3/ayr2Pt2rM=; b=brtLgVugtkK2X3
	p1v4yaeAZ22Fqhx5W63z3MANxyFZffig68GUlZy3dduLmjGUspdfkvRtH3ndm3QDhe4kypVw83cCO
	eb9+BEDPvGQ3jXYLZaB3cj8ZBtiP1cwP957+UcInhAiOfg6hBhD2nhBLlcaK76Hi5iLrpSPh1v4BD
	YNJFSHXuhK/Kmyalll0cbxOjJZUx616z63jiCbKrdlnF4HOXMURuYsnWjKuczTw4JniAf5qRw2KJ1
	pkTYRDNXUGFBAcs0uonOWNxWIBgH1uzZ9codWtC6cd0w6wPBAmncTCQ4yDRk2ci8A1RJlGYwUTzd9
	qKkgiSJ/uTloL+fOh8Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjy-00CjtC-1a;
	Mon, 21 Aug 2023 00:25:54 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsju-00Cjq5-2m
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:52 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2bcb0b973a5so17828321fa.3
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577549; x=1693182349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T2cQbFAa2dZ8daCARAy1nE0Yfl5a2H4VUsq7LUs1D2Q=;
        b=w2iBr07HV/8Ow4TEf2gDain01qRE+rxcl8X3CvdlfrqTupYTHWEQwHyxrZVhM8x7n8
         kVKy5UjlsWNdUQ5IuxnAVVRZmANR1KHvMeW6/I6gPDPX68rTtOhct+n3Zhs+q4eURe5G
         hDyoMy17v19PKck/TGAon85OodpNs1u+4jIMNPzGceFb/ebsg8BE/vvPoPkrR/1moLYw
         8cP/HBpvQPnmxSR4QcJP7m8qUT8l8mUkTjnS6hxLaj8McrdH+TnGKjYGlW6YNAN7V6DB
         2vapZLy080C3/MjSxrNgA8u7BQHjQNr1KJ6lsBX1YgvLWPtVG0BFfRddF8LatTR7ihQY
         71JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577549; x=1693182349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T2cQbFAa2dZ8daCARAy1nE0Yfl5a2H4VUsq7LUs1D2Q=;
        b=FOZI+2Ft6hkL60mmaeRpVZPeVupiD16E4H6PtVyT0lapdDfhJyr+A7lFtiK4ZITBVD
         VLK1QaYE9YH/0VuL74eq+Cb72/v2Nnk7O9HZsck1Eu+yd2KViBsj5nlA6yu3MvQNHi7E
         w7kKEZBcy5SDHVoKUEFvNQxZUgzgjnW8szfMLhSdF41h9DskV/qD/gKtFiSTtdKpFNn1
         7hP29dhu2FW8yMnzuynUTVvGBVg4r5wDI1F7OsDEju3KWe/yS3Vl1EZiFL7UxkINEP6s
         rgG4I6WdIfxW1IUR0MQMz/ZXO5nx/7031gBIXyZyY2SeFBNLnOk2/oym/M7rF1pJH5jV
         tCmA==
X-Gm-Message-State: AOJu0YzOe4V/s4W820GO76mZUobyfOLtYbWnnlL1g6KU8JWTbcccbzQ/
	ogTz65P9LyPJ+QCsp2bUDaujig==
X-Google-Smtp-Source: AGHT+IGiPuaS+EIwN/EbTXdgbiGsljU6WSGT7dDSOesCS8ouxH/oNWhd4sZyjvaA4is1238BsHnv5w==
X-Received: by 2002:a2e:9e07:0:b0:2b6:e283:32cb with SMTP id e7-20020a2e9e07000000b002b6e28332cbmr3320113ljk.23.1692577549595;
        Sun, 20 Aug 2023 17:25:49 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:49 -0700 (PDT)
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
Subject: [PATCH v2 16/16] ARM: dts: qcom-sdx65: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:35 +0300
Message-Id: <20230821002535.585660-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172550_905121_225ACE95 
X-CRM114-Status: UNSURE (   9.14  )
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
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 35 +++++++++++---------------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index 1a3583029a64..27e2cc84c363 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -233,32 +233,27 @@ usb_hsphy: phy@ff4000 {
 
 		usb_qmpphy: phy@ff6000 {
 			compatible = "qcom,sdx65-qmp-usb3-uni-phy";
-			reg = <0x00ff6000 0x1c8>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00ff6000 0x2000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_EN>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_PRIM_CLKREF_EN>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			resets = <&gcc GCC_USB3PHY_PHY_BCR>,
-				 <&gcc GCC_USB3_PHY_BCR>;
-			reset-names = "phy", "common";
+			resets = <&gcc GCC_USB3_PHY_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
 			status = "disabled";
 
-			usb_ssphy: phy@ff6200 {
-				reg = <0x00ff6e00 0x160>,
-				      <0x00ff7000 0x1ec>,
-				      <0x00ff6200 0x1e00>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
 		};
 
 		system_noc: interconnect@1620000 {
@@ -520,7 +515,7 @@ usb_dwc3: usb@a600000 {
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
