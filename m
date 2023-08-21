Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12B34C88CB9
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Orw97OMj855rmtC4+CptFFIe0a6oKWlsWs/Vm3xHRXM=; b=xLhDUJpY+18Moy
	LvES3rxMUTn5LQddcoWYDCpLZ3OxzoWe9R0sgccdMDG928ytTlNfEtR9KZPxkmI8/FE6Ouy+z5KMu
	mc522TltQjaI5ZsnN22r372XbXNJuR5SqQ4ubkqHlyuONsbDijSotOaLI/OOQHmWX4rhzYy41/9HZ
	srgqMlvH0FyppdHIr5GYH7ctRLD8zB7UWPrOHUgisiFF80dvhwkeoamKNxY6L4GW9a2+hEwhE4XPs
	ldUeqXstoXr+Ol4JH/QvZvYW+ABDMdULT7MUlB3CQIXccjwBCBd232RApnAmsA42PeTr0KpWXvPjP
	PFWEgLPsp/KFWqW1D+Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjy-00CjtM-2R;
	Mon, 21 Aug 2023 00:25:54 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjv-00Cjpj-0o
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:52 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4ffa94a7a47so2846728e87.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577549; x=1693182349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=paTuTONbgPM6/Nq7s3XtkFCGXrenm0xbPhXNoWnX2DFfY59hPE8S1R73xtJLq+5USx
         cMpVbQdAuPdKBCiQ0Tx2ZyOW24N9OPdIEiD+eJ1WcCUhokx30KizX838ZINUJmx7dd5D
         6ddIeYFOFLcWEn0v4aGHUSCzfoBmlbEviPoPCs0rEzfAgF8g/RM7VLTzMakspyD6bXKh
         jgC535HpLYqOA7eMHwi5m6EWDDBK2pCP+DKisfiC0UpMUBB0L7fifdCqfG21pqeDjPR/
         0gTVaPff0Q0r385qXDrXbv4sp0ct3xTHUQGEIn9qw6WdX3E+C/MA2Dq8rqo5V9p8q6lv
         3YXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577549; x=1693182349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmrj4hWVWgCIAJXxquRVjvFHWWo6+y5kGPhzifypRbs=;
        b=iPnEBcC+tAW5VI3iDxmafOQ+pRAh/HmXsHcKQ25qL1uUaBZQmX/ps1lNW/eBbTPnqs
         w7bbB4Z3lcFLF1gyn/2JI3KKgj3giQlmxcLvMZUhIC9/J11WgyEWdHSZUumhX8UePKXY
         qdYe6w+7YZbIPJaHIa3xXQLklrK6vuk2R9/fVJgQznKPpmvrRfNGaUl0eZtDRPGxN1ZA
         GNYjwNrpK5zLhmE6Gotm9/mQaFr/dGrFGVu+kOllsVgrtjjT20MY80rxB2Gc2S2XJqv2
         4tdAgsCby+xgfGxwwEkKytmPlNOPw2hBIP3G9uD6ZPX8l7QfimPTk10JJyjZpQeo95N4
         Igcw==
X-Gm-Message-State: AOJu0YwK7qKU+Md7JNjicIgup4TCBfU4LYASjSGiIfXacOOiBhRTJJNK
	L046KWCqmAW7N6DAuPGjYkFUWg==
X-Google-Smtp-Source: AGHT+IFRUmGPmF5YbAglWYfw7FWy4uqzyzku3Um1siMwbXmxt29ZZJY0jhLZAXNYYswTA5rsB1RyJQ==
X-Received: by 2002:a2e:9dc6:0:b0:2bc:b88c:64ed with SMTP id x6-20020a2e9dc6000000b002bcb88c64edmr1452538ljj.12.1692577548892;
        Sun, 20 Aug 2023 17:25:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:48 -0700 (PDT)
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
Subject: [PATCH v2 15/16] ARM: dts: qcom-sdx55: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:34 +0300
Message-Id: <20230821002535.585660-16-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172551_297261_4ACD025A 
X-CRM114-Status: UNSURE (   9.60  )
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
