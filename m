Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7FD1C47DA6
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+TJZFZ10DJFUpAikA5siEosQy0WlSB0RNHyWQRR9iw=; b=f5ItIc3JgGVM/W
	VpLhwCUrE+nu5czx6UkJpvEFbXPnpj7hXJssoTrFv2nHKDfsLszKPIWxSpvHJuuSr+B8FJ/AL/z2k
	07K9xuDmz5e50gkjtA8QCHdlu8co/So15958+w7SgJqn1CO5Vqwy5o3B+q1J33oWQPKaRhH4VfHvm
	H8Cq3LAvGD1d6BjTkuVkFOmDbO6CzhGv3I4lSc8yHZLxuOXoXhdzlpdVGvJXlzi/tEnSj9rbYP5/5
	idVaMCvHd9CeC7vKnShaAlk8xKtIesGeM0EKtHjjqrgQYC+WgdRiV+sBZTtgT4JruQqQYNeOWjmQ0
	EvZFyBYmBFRbNlv2LEYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl35-005gob-1X;
	Sat, 13 Jan 2024 20:56:11 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl2z-005gjz-2U
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:07 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50edf4f478eso4380703e87.3
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179364; x=1705784164; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HYf6KomQ+q+ORrPOfMtpnxD934CKPfXvUig596j98Xs=;
        b=ctI5PzpGr7ZRFUEXIeUy/L+LSNsqHDR2DflXCyr0ZD1ibDK23f7CPN/zeikOw5ANbZ
         PkW+dh5QbStKERZkLXw004HAgK97aMg9Ci0YCQWVqWaXcANUPJVExfLsHLWpZuXgI6o7
         WqDhiYtyAfYvXfulKdC7VuNSj9zbEM77LWAFRUXS5AAKQ7cpOjot68nafXb8p2eCnmSQ
         IC0O3UMAm0FVg9dG7jZa+6X5VanGuFzeWajYvvWiTw+tHeC9LTzxjgB7AuDX2mF8YvzZ
         EkO27LN3cliriSegxrTzAf9NxT3NeXonUcYZixKTQZc1xuuiGCvB1S79DbDrahR+aV1a
         IRlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179364; x=1705784164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYf6KomQ+q+ORrPOfMtpnxD934CKPfXvUig596j98Xs=;
        b=qroanqA9bavzxjtixEzgHZNcIsddtie3+NKHXVQpJEhIESUGdZBTYE11+NzbGhG/lR
         SMfxmz2MbHATKav547MI4EGj8EhNYkXRIWoaZAyumE/xZ9HE24ZoUtx/Lt5bs2JWqbU2
         V49d2GpI3Tm07yIKhGysoMVjFQTeWqdhtLJIq1+CG/2TRlnqMYIZHzKNUu11+qaWKaEw
         WbQlznaKZ+G3VsQjAgpBpfTVyk86GK7IN9jitdpcAPeiiG1uRKiz+EEH+MJ1O4PQygWR
         dvuDx+qy0rfJn4qVRQBwwP5mJw23kmOEko8CJVkHX+JkbyGbnhWNBl/nVYUNeYJAdGNo
         6/Ig==
X-Gm-Message-State: AOJu0Yyk9OFyZOqY/EHKW4eP07kRJdimivVqhfxoOUNufG31r4Irp8jf
	8CES3qLU428YtmHcc0uXjZeIBjrn37CUlw==
X-Google-Smtp-Source: AGHT+IHDcDjAUvVuG/RYmKMk8PaIF6toOUKEDOELgS2lKQF4sSHIVkplyiUbGlN4lnvQsER8SeKFKw==
X-Received: by 2002:ac2:4559:0:b0:50e:7915:ace5 with SMTP id j25-20020ac24559000000b0050e7915ace5mr1349568lfm.134.1705179364466;
        Sat, 13 Jan 2024 12:56:04 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:56:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:57 +0200
Subject: [PATCH v2 14/15] arm64: dts: qcom: sm6115: drop pipe clock
 selection
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-14-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1548;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=PByUN+WAixFhUZidNT3kE48yA7k+ACS3q0ToQ5RNUeQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjYHS9liGQDgqchYSNifXDFPFLI53DOsb+/p
 HdUvWrwW7WJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL42AAKCRCLPIo+Aiko
 1XcOB/0UurL9UkPJGLs6cbe4VVnAcRJgSKAPzl6lDHeo8QV1EVryu71ynQ/1z+Sc1Hiqp1clqqz
 hCaPXjqKBsArlbZu1Att0QTPAIK5badK9qegvFaR9iCtsZoXRGOSt3qDMz5wBOp8PhZecAAGyAF
 0D7oNwyHIbUTbf+8nD+HvHcHFfiB4eOx2QJF+RqQL/aOpM4yRYXstYRWysKmAoRBPmXAMgLpVzd
 QESZq5fXyMmp+BxOeuudaSGuSVNmuHetTH6UivpWZrNAlUuv3p1JGTtcBh1MEHaUU19CFjcTkOI
 8LQ4eSDFTDAVJl7QhTxJ/8CIwIsmJZa4FLTmLgYXD8dNHAjU
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125605_827526_D5803D5A 
X-CRM114-Status: UNSURE (   9.75  )
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

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

Stop selecting UTMI clock as the USB3 PIPE clock. This setting is
incompatible with the USB host working in USB3 (SuperSpeed) mode.
While we are at it, also drop the default setting for the port speed.

Fixes: 9dd5f6dba729 ("arm64: dts: qcom: sm6115: Add USB SS qmp phy node")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
[DB: fixed commit message, dropped dr_mode setting]
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 4 ----
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 1 -
 2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 7c19f874fa71..52f31f3166c2 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -607,10 +607,6 @@ &usb {
 	status = "okay";
 };
 
-&usb_dwc3 {
-	maximum-speed = "super-speed";
-};
-
 &usb_hsphy {
 	vdd-supply = <&vreg_l4a_0p9>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 160e098f1075..76c429e8ebab 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1600,7 +1600,6 @@ &bimc SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
 			interconnect-names = "usb-ddr",
 					     "apps-usb";
 
-			qcom,select-utmi-as-pipe-clk;
 			status = "disabled";
 
 			usb_dwc3: usb@4e00000 {

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
