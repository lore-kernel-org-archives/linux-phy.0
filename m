Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F3A4D3C52A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p6tWzd2yEQSeeQacdLLMY6QA1wVsiaVLpJr0U/Bn8Q4=; b=y/y3eJvHYhgZCa
	ziejS0WeN99M4Fb09rgzTs8bspzKT4p4TFAvpfkPg2AGq/oBoOd4mmgG+i4NrsNPiLlxNkQf1E6Fm
	LZYoX0s23ENO5NiNVOH8sKKdB8z2iUd97KhjKpMQgACLRSMeci+7pFzFLeoB4V/5VN9gEqRY78bZZ
	vWv97LcKcCBzlI1LSLJrillwnemvTazGNHlSXqyHupsIuywe0l1C36j5CnihyhzSv53D92dCuy2dB
	AOuTYJkAF5Z+8WUDLkzSPv0JGDadHs+bJgScDhwde53MbTN1F6KpHwkj2YFQ+DxfHS/oZp0ugxAEd
	946rtUuF6qnntLq4vVtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1UYr-0000000FlfR-19Ub;
	Thu, 17 Oct 2024 17:45:21 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1UWb-0000000Fkyf-3dV8
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 17:43:05 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-539e8586b53so1975376e87.1
        for <linux-phy@lists.infradead.org>; Thu, 17 Oct 2024 10:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729186979; x=1729791779; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/aSUfPUctKuyVYotI8cvDlkFbLMA1IA5EpCMDOgbGlE=;
        b=HPAngyBQtsAlox27CUFqyHUa+zDJNwK7R19wjApRgdOKjWCydVDHKy808CCEgxg42x
         AKI7J29UBT0359VYe+9J50yTJOBeveikp1ahz0gR1RR2Jcjoc6SpkzcI878WCRWmuJ7A
         ndcsJl7ajBBB7oDMqjyh9AYgkp+hS4YpRWzatXbXyhAE5LZchv5EVwrJvSAFdnkptofs
         njtMzZXWeIgwfz8OcttcX9SWlYDxhns4GZKbEw/atTrawumsJbwP2kIW8fROQmggerUN
         8jv1B7Ui3+ZYa8E/UEL0wXm897YlUfRx0SxfS0t/HD9n+0RDbbfRF5xLYs4ZSpt4d1uF
         BoDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729186979; x=1729791779;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/aSUfPUctKuyVYotI8cvDlkFbLMA1IA5EpCMDOgbGlE=;
        b=S3cvPvIOomUvHpBCFjhL/97hMplr4eDMqM7rMOHi0Z12jsRs82OmILrDrOU/y/Zg8x
         IuF7NbCNxRPwWQksj/VSNzob0jP0Y5MXUkWcz/MxRZT3oYyeYwKDzz7s1dX07ya5FgnK
         OfETCTV90xvKHC4pnsDh16nGn3nf1eIR5Ab4oQsipk6f4HxYRH0lmAoAO+g5GCGR3UkX
         J51QP+aBIidaT2Is47yXXzTynDGDZT2vMNc2Xc3EavzyUeMhJPRgu1LrzmvkyUT9vQ1B
         9xy67wphfWUH+I1ajq+bgHPFmgIkF+WDLzIj51zzfgip2fjJ+00GOeDx8ONQrQIuWBjH
         ykgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhnYWL49B4m64VtrpehlXYFm17n3YnBiTW4EdkJKdWKsQEEPVTMoC7tfsiJXjE3gjtkqgJMmLEXnw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwwPTDcaKgdrzNsbXk9XLHNNETJewPjKi2UeFm2N5C2ZXaoPUA2
	pGUhiUlrlMWPO4z9f390TBYDxhrHZxApxd6t9TqJRVZuJdVQ10HJ2xqYlgbc+dw=
X-Google-Smtp-Source: AGHT+IF9KKIW/DYFefPefzknNxsKitQDJlwcbCioVSRgFuiR55EP6VFEkcjHuU7Puj6K12qnGsd+4w==
X-Received: by 2002:a05:6512:3184:b0:539:fcf0:268e with SMTP id 2adb3069b0e04-53a0c6dae70mr1454586e87.14.1729186979187;
        Thu, 17 Oct 2024 10:42:59 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a0000700bsm829835e87.204.2024.10.17.10.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 10:42:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 20:42:56 +0300
Subject: [PATCH] dt-bindings: phy: qcom: snps-eusb2: Add SAR2130P
 compatible
MIME-Version: 1.0
Message-Id: <20241017-sar2130p-eusb2-v1-1-1cedd674ec64@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJ9MEWcC/x3MMQqAMAxA0atIZgtNahG9ijhUTTWLSoMiSO9uc
 XzD/y8oJ2GFvnoh8S0qx16AdQXzFvaVjSzFQJYatNgaDYnQ2dPwpROZzrcxovORkKFEZ+Iozz8
 cxpw/EHLI0WAAAAA=
X-Change-ID: 20241017-sar2130p-eusb2-957ff135f21e
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1092;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=BoBjfw0fU/xy8FjiTHTpEHDtNOHCOcmc+T+HEPyrVxE=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEUygKNfypKjMR7XDJQUiq04vA630ffBe2jDF7
 v5eS2kYV5+JAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFMoAAKCRAU23LtvoBl
 uBLHEAC/QDflh0ZFLAJT5MjcuUf1Nci4caRT7rDsV/qWRc2vA4a2i3hjPa4SPTs6HG0wjptJIv3
 ocuIOBwmB03dcId0JVX77rbgaO3bR6uO1eBFXiWS3KFtuENFMGAkUEUi3Kta6/YtF0JN0h3+9g1
 gb2guknqIjJI4a72qWDR3ue8tolOfGaEz6s8a/d88pb/VlYgC5KtZGyG1P24gpzQ5kULHOZoxrA
 Bs1c8dcEP8W7+66+9wYOiCoshhzrJ03mBUmIPCDfoLsBfPFj4GKFgQoNjBP9+Bql0Z9HrA7Thhx
 8mibC5CKd/7rS3v61fDbH+DQL/L3ThibWMnlZk42pCLQNlzFYc0KB6oPRM8bWX6ZUkm9YI1rQMS
 kHKluHWpqDmlUkdzhLudPty/HiIHLCz7LKc1yoVi0iOcU/zBT885wecvtg/AsoRoFre/wXhXPTo
 kcGUa0hDkA9fDbrmupLzRGXe/Ts+5egLw98Af9eiqqBuwtQSumxQK/LLL56ldVF6hnj+xAMwjBq
 go4a/eg/DybeWvvucrvl98J5IhNAsN5Cv7eiP5sl9/9Vz7nmfmPIy5fRXE9Lh01TVRZvEOYirIB
 UuvQ5Zc9c5jFVmhMu6rhrkpp9n8nq6FXxkFxgNV4qH64NNMxE00NPtT0XPlvM0btTaZyx1rlkah
 cgfM1bfiQV1nOiQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_104301_999598_DFC45C13 
X-CRM114-Status: UNSURE (   6.24  )
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

Document the Synopsys eUSB2 PHY on the SAR2130P platform by using
the SM8550 as fallback.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index b82f7f5731ed4a6879ffbdc1b970fdfe0557f944..142b3c8839d62d91377061ade3a7c400eb970609 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - items:
           - enum:
+              - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
               - qcom,x1e80100-snps-eusb2-phy

---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-eusb2-957ff135f21e

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
