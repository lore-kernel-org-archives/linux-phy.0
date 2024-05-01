Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2465C25B5C
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24TJkxXBk2x1b5QUZ4YLLKgJ3zmYvXjFTRTMxanUiMM=; b=badfy9157F/1W3
	Lm5LgMvCq/kkhPVzzHn+BlznQtaFET/5dX/zvOz0MQgWMmG7iRvItLOycE9586nYzORhZsWNIms9p
	FYtokSre0lfXyc5fFrsNER5dmSD+NzwAG6gl9AEV8DgY/A1Ifzl7WrO6w92eI5SIiX+ie6zI6LOKD
	J8bbmZxICr+yZJv8xP/T4G1gysWZk+F/53JzC4g5EqUBlJSL9B/19bCqUHJWh/+YVbbPSIhvsrYnU
	hjHlrgV1aUMht8rp0+1C9dFF0uMZY5l/4RxfkwYg/NumKdG4SANgHpAsV0QqFJ4hIGYlSp74WHwVw
	xCDcBGuOMOYjJAcvLT6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgV-0000000A7Fh-0CTX;
	Wed, 01 May 2024 16:19:55 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgR-0000000A7BK-0kgN
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:52 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-51967f75763so8128924e87.2
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580390; x=1715185190; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SdE0TiTMN/48xeZ+pHH+oPuFReIZ69nKUJdRgCnFUAI=;
        b=tvhw7mKgtENtUoyLYsMC3bGj2J4XPZ41zfqwvi/H/BUm443sUC/LoAzgqo8TQS//J8
         wDXbVp6AJXorxT8dFCbHru4sgnMc08M31cC+UnrXtz92e1cq5Og8uxi/j6eapeTtVOQY
         Nflb5rvwC1s1xl2yHtIzRm8o0JjrhyDVz5bLOMKA4WcNil3LmQ2RJ5QvFJk3ixXYzcA9
         X6x+kQv07DXArKU1FXI7KwD8nFOKk1byyh41mvyRxQQARm+lRQV68Ucf8+ftRsbCS8F6
         K3d8S4QtXStJs4/P/xeWkoZh7cRfGKuZ1kI26QESSSZtLEe8+5YViTHEPUozjj8Y4hJx
         PZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580390; x=1715185190;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SdE0TiTMN/48xeZ+pHH+oPuFReIZ69nKUJdRgCnFUAI=;
        b=mD+bgsOeIOkwNHSfTy8lIain5BksShZzZ0OI1ydSCe0Z4ouTErR46iunDDgg3UXntO
         CyYaLfnvPIRb5WIDtRO2WtgAuPQTQvgBh25XJe0VXpq4T4SQ5CFwQQri/bd1LYTuSCeW
         j62clVSvG+DNm6qSFbQfGpsI69jZ8B1ENvgVI4kLKXf/dr8wvg64arpKGe0X5WLx+4xN
         cUMdkR/7DT0ldvikLE+an1KvLoWJRvT5e7Fii5HbFP5Fncu3TzrMxsQT2dcBgRXiRxYD
         oVG+MZ8EEKtuBGiCZ4r+cqYwStSlu6qv7KJBg1ClAOg+1oXdI68sj6FQc3+pv9cjCTgZ
         2fTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgChaDDHk9EyfRvx+rCTNJSSek/QSEclxR3Mas/D2gV2O8X2Km7+DToUFxVi5vIG6imUHPDcE2rOtejPplx/jiFzqV3IX6JfOEhnfzRw==
X-Gm-Message-State: AOJu0YxwRhRS/zczKNKyoz1yS1bEf1Bhh4L5JKUMCmTbfKZT68hXwqv7
	MMjHRYy83BciHkppodGNrmEwFyuCc/O2nfc0UJsg+7eDe+6ZdqTm5+awjN1vUyQ=
X-Google-Smtp-Source: AGHT+IEzH1r+KAKKI0+V0TSv0eZBFtF+pUKpqOpQ2nnjVvVXz1kUbLHYfMDVODAGrvd6no8Kxp4S4Q==
X-Received: by 2002:a05:6512:717:b0:51c:1fb4:2327 with SMTP id b23-20020a056512071700b0051c1fb42327mr1723969lfs.24.1714580389720;
        Wed, 01 May 2024 09:19:49 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:34 +0300
Subject: [PATCH 08/13] arm64: dts: qcom: sm6350: add power-domain to UFS
 PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-8-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=767;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=0+KzZGJu1d5OGxNXPG6e3n4G8A0DMlgKu2iIRaXSmrw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZG9KMaWwMEuMGJ6kOQpZ9m+V4z8y3kNlwO
 mGlES+81UKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1c+zB/40c/bo//8AFR25A6n7dxcgpQLMeBuOuILTaGaPo7ScL2YXqhYwmyqoNCs1rq4Nrk4dW/z
 OhFRMF2bv5IWrbF536sObeUhNiot4h7LzixMbpsg1+bsd1qWs4VP6RfMoT/ov6T4EMS0r7gBKpu
 VmwZncz3OagI0BbtBgOGsRalVmVafEAHUNbgWMN9H9Stq9mUOJpQQftFZr09JRtOs9aV3u2iU01
 U3Grhdtw6P/ULCrdlcIRvGJlKK0+1d7uIlR8RmcRAuNMxhkCl++OdtT0tK7LbrRgamVCD12YwTN
 Stbr+SbA+u3OE0Wy0gBFYWjHRZiG5Ul91RZOwgVjpq1rb2R5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091951_268653_0DCBE545 
X-CRM114-Status: UNSURE (   8.52  )
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

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 84ff20a96c83..acf0b0f73af9 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1197,6 +1197,8 @@ ufs_mem_phy: phy@1d87000 {
 				      "ref_aux",
 				      "qref";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
