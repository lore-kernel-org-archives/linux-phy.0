Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75296C7EE2C
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9pEU13V8C9XmhlntQbNygp4qPqfvscc/NtHmSC1Nng=; b=Eh4OiMQXkm/19D
	c3pZ6pujrrS7buZ2EovMBw0k7mOzLFMiaDKhTugC9rVQ+8RGv7hY9Tw4npTi0PHPyqNayC6dMMCfF
	1bRxNm83Dp5y7caMJAL3QJGiWfGlDzDl1L1gBqrKIXhrvgpDASVz9fpd1whhYbHzOnwVkc38eYEo9
	RQ6XwiUCXg36SXY5vL/dpVIdyijoPgvsvuxlL4TzFE5Ym2M3sC5VMR3HnDtbWygFVpJMev89Gt/AA
	ZJCVkKoyfP3DZ53eBmCA72AcTwDEC8f4HbXbZHqbsgMO420AL9ot6R4T22xgi2p8zUwNqen69Erj3
	U/cZCzuCruDrza5xJ9KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjx-00Cjsb-0R;
	Mon, 21 Aug 2023 00:25:53 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjt-00Cjp9-17
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:50 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b9cdba1228so44900761fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577548; x=1693182348;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhz5s4p9df6iSnMVEljVBPUMS53rGAftjG7CgRxMulA=;
        b=AYq5HS7zSH+YdRyj9S8XRsiVGKZiVMf3qvOfjIP6ExBA0G/e/JKOyFCWmARX/xYTp0
         uPrtK+RmNfaNHKr3bCetkOjqjPKBeoJ3orPxcIlwVdZJnWY3opj+nZZNKmAxMnmvR5EG
         YhSuJmdJSC33VG/HwS+PwzG9c3Z357tCgfNuA2Fa4tV5vmR9hSLq9Xofh3vXNN+w679E
         CxldALSsELoFCjZOLKvoqHCuX/3xy+HDOWZhKFcjwTHpekAEjwamKW+aPO8ci4Qa8i+a
         e0YFzXl1L0YXOecZN/dDX7QLeWnY5vaIavLxsQkTaoQeMH6g6eZOASTs+Sqmu7ZTL3Un
         A4vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577548; x=1693182348;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhz5s4p9df6iSnMVEljVBPUMS53rGAftjG7CgRxMulA=;
        b=a99xp6/fJTJm/qC3cK70Vpc+vLZqNqElZCTECPoI+7llhUD6VN+huxWVkFyEwFKZkM
         xcvD0cGgPnBTnEc6nzTPOOCIxc4mfWF8gjJk7B3Pj1jSufK41V3KCWiIYoXtFl6pwSQN
         JUZB7Rshk224r8E1dbs4Xb7qTSD53sJuJdBDEL8cI2Y5RKhzOY1W1yn9iQky+nP5r1TJ
         ON2ZX8sQna1Vw84+tyghXIH6JFVmg5WtnvVrqY0Cbcp+eTLP8sJbgEcWXF9cRk7RiSdH
         AaI0xh37t17qs/+LaAgQ15NRktnMY0oIVognpbhLYfKcXVPh76AEYiwIOdu2vHd4mCnf
         gy2A==
X-Gm-Message-State: AOJu0Yw3+0hw6aNUZVW+cTZC7oS4Un1g6d8QV3+PQuwsBBuk5Yo83Wwg
	7BJWcEg5wmpYKuIS9p3x/dbZLw==
X-Google-Smtp-Source: AGHT+IFex0jGw34onqGocUkifo4hGv887oiHeh4glBUa0Qn2xd7BenZKOA87pt+IHGS/xU7PwqexGA==
X-Received: by 2002:a2e:9a88:0:b0:2bb:bfb0:7b66 with SMTP id p8-20020a2e9a88000000b002bbbfb07b66mr3831876lji.1.1692577548074;
        Sun, 20 Aug 2023 17:25:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:47 -0700 (PDT)
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
Subject: [PATCH v2 14/16] arm64: dts: qcom: sm8350: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:33 +0300
Message-Id: <20230821002535.585660-15-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172549_390194_17082386 
X-CRM114-Status: UNSURE (   9.05  )
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 39 ++++++++++++----------------
 1 file changed, 16 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a26dff42329c..8faf9c2e7d09 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2229,34 +2229,27 @@ usb_1_qmpphy_dp_in: endpoint {
 			};
 		};
 
-		usb_2_qmpphy: phy-wrapper@88eb000 {
+		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sm8350-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x200>;
+			reg = <0 0x088eb000 0 0x2000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_EN>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
-
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			usb_2_ssphy: phy@88ebe00 {
-				reg = <0 0x088ebe00 0 0x200>,
-				      <0 0x088ec000 0 0x200>,
-				      <0 0x088eb200 0 0x1100>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 		};
 
 		dc_noc: interconnect@90c0000 {
@@ -2409,7 +2402,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x20 0x0>;
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
