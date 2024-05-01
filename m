Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 543ABC25B5C
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJw9/8hrlT7nhX86+U/ic0dDagxVBu7hEXziMMyUPMk=; b=keegtQAjKHgWgP
	BnXJLUhd1vmaUW8By7maiirZ79I9D5zWz1rfd5yiwTfJwGPWBGmA/U6P/6NMmqsdft+h/Yw2QbBRJ
	rrwjAHEH6MInjYv3YrS/7PsFZB8mF5kgSQBh/dT0RmUlO2Q7ERbB6ZCQEo7gIE3vCHQ7twqMg0cDh
	P7CorcaQQFQuqU6TljTyRpkSVSSyFcZ8iDqR+lqrGrpEYk37HKccQNVO6Je+GJWxugC7s7uuxj3K1
	aMWQioA8MN5LrZQEfw3aTcA9XTB9XCi+ITBhY+78aioiPrH1WM4d3KsU1gScRLz60ozeqBmOUxBcl
	kC3cgvU34BGF3ikvYDzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Cga-0000000A7J6-412i;
	Wed, 01 May 2024 16:20:00 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgX-0000000A7GL-1d3s
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:59 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-51ef64d04b1so276278e87.3
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580395; x=1715185195; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6FF9R06GXOtRyjyQmdyGdOb96UxXSLO+caPktlD7cek=;
        b=K6mFSkVc+Il54luw70SdoV4Vu0vT8kZ1BlbV+OoJUe/uXQYNOQ5Ee2O56ZTUTJoBeH
         hVnGMueNzXd31P6Z4/gE4sT/sRG3Me5XwuPvAH8sqURzbgo4kVXgH8oRQ82kx3Tyi+8N
         U01YwASItkE5BeZuT3uTk0djfJ11YUoXPsLb+ck5zxyvrutTnXGjLWH+dMb2OAbJqMKT
         T8OjgSQHATX4ioqb2sraFbDLOSXnIe6slp3P8ys0Ez2iGBVfY/mQsAyDI+McTuNneWRq
         dHnf13rF7CYgQnd+IqN9far6gHMZb0Yg4EgwNNHKrcpXTRSSn/uO2hzhYtzbKQu5E0nv
         RHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580395; x=1715185195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6FF9R06GXOtRyjyQmdyGdOb96UxXSLO+caPktlD7cek=;
        b=HxjSLz7EP1kwGie+gufenuuPiKbvDewxOOUp38LFPLDrWeF/xhiu+Ts0UkrHCK9EQt
         85cja1Gmo4/ra672MTJPkq6vNjeyFuxPHVxHyibZnXXhrTE0pRZryj9i//LUheEifeMg
         3RoDbeWRJ+PcCDnHHXT9G85h0VQRA7swwf+b8j18xt9U0j7kYgTH/BUjBPRSlK+MUsTB
         i09+7uBx+e/VAeNHC6fZBNMeIczl7tGMb9h5yhDCjmJuTg6HT/KiJ9shqMGB5AX4odZ5
         2THziheiFTwNxIlpl3HH7dYceVr+Xhg/y+OhJkeT14XcEx/eZZgk/9QpcTwzMscaPNTN
         EVlg==
X-Forwarded-Encrypted: i=1; AJvYcCVMkZX+Sojx11tS8ff1atgB+7HdXrHdPQzrNByxtPnGNI/LNqE3QnA8V+dX8vA3fqnbtcekYAKpXLvo34M86bZrZJ0G5KEmW6Rc1JCj9A==
X-Gm-Message-State: AOJu0YyuktfRGhAjKo4ZZ6/lvTsJuD1M/jO6UHm9bUjRvRORY5CdU4lb
	grj3KaP+0/AgRtBfIXof6yhZMa4Ex8s/lxKbanogVggSa3/ChL7ICyNofQ2J0y8=
X-Google-Smtp-Source: AGHT+IF9IIAIN0iT5QCk7eZKT8YY1J2+6/5AFhPa96FrJyx8CVhDdS2uo6xfnAyLLVjblrMc5Lo77w==
X-Received: by 2002:a19:434b:0:b0:516:a6ff:2467 with SMTP id m11-20020a19434b000000b00516a6ff2467mr1809204lfj.0.1714580392994;
        Wed, 01 May 2024 09:19:52 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:38 +0300
Subject: [PATCH 12/13] arm64: dts: sda660-ifc6560: document missing USB PHY
 supplies
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-12-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1714;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ZyhemyLIYzl0yFINT+7/a2RvvKPGInbzW42JxBvs81o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuaBJdyWhG85+kYvWZOj3EctnoMvwuxbEfHi
 UzocJW6VMOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmgAKCRCLPIo+Aiko
 1U65B/40D3wYKAUWpOTQBQ/Y7MvHR4fbNmoSnTPfNnGgDNpBTYDGpXRqJTXmGEZI8/95jCR4Cab
 DSgu7xVOhkx+pctCP8Kg1QkUSYwAplpD0y6zFippmyVWkPactLwo9x5wl/PgPCJWzCk8VYHPiHt
 Aiv2sUaOxL17QsDkBeFVV/AgoW2USJ2sk1ZiCx9JsyPsotyl45s/Zfl8SaV0ghXX8xF/z2aU7TP
 s1Vui1GVVove53scROHkZXz6PD8zxdC6QwRVxNyBzPg+m/xLwnUj0ax7A6Pey1WZkp7LOkxS368
 qFIio7ruvBNFah1Vopequy6jEW2ojq2ncxxZisSe7Ss3Eiv6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091957_542283_76987DD3 
X-CRM114-Status: GOOD (  10.66  )
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

On the IFC6560 one of the USB PHY supplies is the L10A power supply.
However this regulator also supplies VDDA_APC1_CS, VDD_PLL2 and VDD_P11
consumers. Touching the supply causes the board to be reset. Document
the supply as a fixed always-on regulator.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 702ab49bbc59..60412281ab27 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -96,6 +96,18 @@ v5p0_boost: v5p0-boost-regulator {
 
 		vin-supply = <&vph_pwr>;
 	};
+
+	/*
+	 * this is also used for APC1 CPU power, touching it resets the board
+	 */
+	vreg_l10a_1p8: vreg-l10a-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vreg_l10a_1p8";
+		regulator-min-microvolt = <1804000>;
+		regulator-max-microvolt = <1896000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &adsp_pil {
@@ -220,6 +232,7 @@ &qusb2phy0 {
 	status = "okay";
 
 	vdd-supply = <&vreg_l1b_0p925>;
+	vdda-pll-supply = <&vreg_l10a_1p8>;
 	vdda-phy-dpdm-supply = <&vreg_l7b_3p125>;
 };
 
@@ -227,6 +240,7 @@ &qusb2phy1 {
 	status = "okay";
 
 	vdd-supply = <&vreg_l1b_0p925>;
+	vdda-pll-supply = <&vreg_l10a_1p8>;
 	vdda-phy-dpdm-supply = <&vreg_l7b_3p125>;
 };
 
@@ -464,5 +478,6 @@ &usb3_dwc3 {
 
 &usb3_qmpphy {
 	vdda-phy-supply = <&vreg_l1b_0p925>;
+	vdda-pll-supply = <&vreg_l10a_1p8>;
 	status = "okay";
 };

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
