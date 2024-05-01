Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2AB9C10F1A
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpgC/LevDiE2LZ4g8bULrCYQlL2/ayJ+3+YFxAhPq30=; b=VlyljsyDdcEgdX
	ZDc/wBJ+4vp2D09fO1a7u2dOlcTWIXiRnUXLEsAWeSeC3gLZLTemHootO+moThwozdIBahk24xJ5K
	zlp2SdFQw9KmGYcJfy6ouie87F9J9V3oLWaOVYWA3nCWGJ4NEA2C8a1w3GqFnIeSYPuF9psY6A84b
	J5E/Kaw5QxOj53Y1H3j8OJqdSzxzTtzNA93cgcxWWqTcgBUKLPnM90Tmp5ySORXK1J52gb/qgCC2W
	F75fykmcwJLrhRkM7/7n/O6Iy1dUHx0i6DtwjfIvqfCszmSQtCStUmw7wOH6AWcFAUiCXOlYSxawc
	wjluj8aKLUoBcnw0+sxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgR-0000000A7CF-1i1H;
	Wed, 01 May 2024 16:19:51 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgN-0000000A78i-08Up
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:50 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-51eeb947b78so368701e87.3
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580382; x=1715185182; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k66DwDazgxPIlwfE9lr0x/khAGuHbXzCOFh46QZYNQw=;
        b=axnS/VBftJwtA06r8ObXy6O0jzBnMFyLkCoYJDHpGEDL+jb6UopPv1FzsT4qBLCvGC
         Q/VO1FGE7IoM7h6qkNBuZLyKtfW2BEz5Uz+MnPw4jsAsWD5Hkk9L1QMxRyqf5rIewt5+
         nG20B/l+oS+t+/nV1rxc60cZD08+r0lGOB/a6oChuaF4lj+X78xc5dc/uzTGg8C3QDi2
         hgrEHmZ4qmcR/HW1oVEewdKF2GMMU8/diHGU9r9Z7nalRv90aPZnRxoUughjf9XEZmZb
         dUmXYEai6mamzPoseYMYhob0GKh0caK3vcNwZJrjme6HLkUvPidtOv+pnHxE9DUBIEei
         9PBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580382; x=1715185182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k66DwDazgxPIlwfE9lr0x/khAGuHbXzCOFh46QZYNQw=;
        b=bVpaNNSIjCb8G8RH0o0fxCVIbcV9R3UAxZEeTw+pxeM5bGKFzWqUJqfW0F4TLn3Kaa
         lQ7SAIfB4MgumKjNw7l3cunz4CLMYuOrZoKUgN3AbaNRpSiSZmNWEpFexYo8iHpaRBtr
         2OA5B1LFaMfDonLOp5jaPrxudAd0l/hp64PFxxCEpiS9LAQQ1k7bh85lV8wvKggeuSVR
         IxHHKa6TV8I7CwFyW1eTBnakGZEgPHsmfovy0LFRWxG034RN8i4T++jiNHBk/m68TJ7z
         z7Evkh9o4ri7R5uztOOKtbGQKOQ6bnZUuCEXeNFIUUGsF7mhGP4pRpn4p7ToAlzlLqxD
         zAXA==
X-Forwarded-Encrypted: i=1; AJvYcCVt2S3z6qCvS352XCK4Jz2nqR3Aq/nEFCYMlQ/+QpFVJ6OjBT42hwowRZFvDAgVYzYln+VB8O/ZjW8xcWYi7hNp9wNHPrOSgOvJ8qgkJA==
X-Gm-Message-State: AOJu0YwH25PSSsdEqU+TdXmypkTeY87mCT7obihxIWqUhwI6kfZMXtme
	H+L88Ly/iSf+j4svB5nXiXNY91yoQfxe+e22rVjVEn4ZI7dpFUwIDM8VF6loP3o=
X-Google-Smtp-Source: AGHT+IHMwZPdU6yvzS7oQ6zjkhi4uk9YTE2D2xn1JB1jRQ8/UX/d/a/3+DaTH6Cmc2lhms+iawa6mg==
X-Received: by 2002:ac2:4d14:0:b0:51c:d528:c333 with SMTP id r20-20020ac24d14000000b0051cd528c333mr1612148lfi.20.1714580381827;
        Wed, 01 May 2024 09:19:41 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:27 +0300
Subject: [PATCH 01/13] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: fix
 x1e80100-gen3x2 schema
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-1-f1fd15c33fb3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1072;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bHPVaX7g1ojgYmJfgd+Xo3j75Gojgjju01OfDQ+hGiY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuYW6i6tD3pxOn9MhzjXJUE6c0xF8sREaioL
 UwTJHP5oiOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmAAKCRCLPIo+Aiko
 1Y2RB/9nIv/KsMCJ40k/VRUMsZFgk21ukKZv/QKS1BnRorGhrkrplN5wVz0i96EIRjHwStOu1+4
 RCjg7lFa7OPPuedtvkaBr2iAryveUfHEUEtdWRNWu+twi82EGnrmeslw5H+auM/QDlD2/A+5aES
 teE8NI5fNBHKnt+Mh6t+ofzVfGb132U5QvTjyWLAJ/lD7Wloixh8WaCIjoAp/iv/ZlqYSk8zXeG
 gEaCn1zBennqUdqekB5eFvXiC7TD1Jj/X3O01tIXG9Ia8IpWi/YmBp3dRHzBNRdyyMxS25DLYGa
 +jTUnbZNSUvkbeXUFldlHuLqvlgb63B1CuOlBlOhKpMyNQAR
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091947_148219_1BF80E57 
X-CRM114-Status: UNSURE (   8.48  )
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

The qcom,x1e80100-qmp-gen3x2-pcie-phy device doesn't have second reset,
drop it from the clause enforcing second reset to be used.

Fixes: e94b29f2bd73 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHYs")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 14ac341b1577..16634f73bdcf 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -198,7 +198,6 @@ allOf:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
-              - qcom,x1e80100-qmp-gen3x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
