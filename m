Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92C60C36010
	for <linux-phy@archiver.kernel.org>; Fri,  4 Apr 2025 12:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vr3nH+lbDRbaqpX5yIIOuXZEPlu6reH4DOZgGZBHk+g=; b=kAC/P2/pySruK8
	mThMalOo9iQ26wPYKFMihvKr/X3DCYOCPMnZRyqsIIk4WNvt04zCvRGfIfB2HYNdqKPHTkOpI5Mh1
	hw15PYKiLb6B+R1TfBQk7Lw6pl8cyv8RgAMWF1lq02JiNWKcYiJ1zsEv7Bj8470j/YDkl1uyWpx69
	1x2NwzY8HKDrPmrqPTyHevSQogzKcnQ3mKo6yHjM+xfFpFWn/VvVo8GR0Z2ZN3pcRftV4pUah3g1j
	1POTaK4vaJO7U/IrYq2M1MLfEJKCPWQwWDojuXszrT44p3KUFjZWnrxUhKDo0LBulJ6eKTOV17lyR
	pUkGWVKDUKO0bKEWiDsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0fz4-0000000Beoo-1SXX;
	Fri, 04 Apr 2025 12:17:18 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0fvP-0000000BeIk-2qDx
	for linux-phy@lists.infradead.org;
	Fri, 04 Apr 2025 12:13:32 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3912b75c0f2so186200f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 04 Apr 2025 05:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743768810; x=1744373610; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WkU6xWzc6lSGa4wrkLknImB41P1wMaOoruxvVliww/E=;
        b=lopZTQNckr7FAezg1OxAqommU+jXOC7FOdmsWfIlimLcJTWleG0x8Zx6c+Y7XMa9Bn
         S3Q9RsmSprRcmNGGSMBXIZ86VeHIb2v8PERfjhnev8/CjeKJjBcEpyOLD5A2iK0akY2N
         3eaYaY4cFfL+3YYaCljUiYXGvdZ6SU89ol2LfsickK2JsWWjmDiWLsX7X2eX0bY3iD2L
         ZcZGIiuHYXi1LT1c7s4Hc0C8JpL5lri9qvuTxO5AkYkuXBnEm3u9iN9v+9RXu70ZYucl
         1nawRPnhtHMPPnfnpUcN+qVBw82CedHklRB5Yu+DLZRj6zI6OZtpZkqVmVOEQQfSkJrw
         Gb/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743768810; x=1744373610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WkU6xWzc6lSGa4wrkLknImB41P1wMaOoruxvVliww/E=;
        b=Qd2h5l07wL89R2ZcHya4s/tuemuoPP4dsObfyuVcI0Z0wC24OVHb2Kf06EBXjyfMz5
         LTicjHWogxD/tHGxL4bozpVWqe/4SC0zaY8Q4ta+qNIi3auc1zcNhR38TVVgochgsGI/
         F3Ov6eTflHaYkRoWsg3nSjpjCGA4VgLogFG6TVOdRYH0ysIrz1C0YzUWYxq8NJuvsEGY
         cty1lqzhIDRoz++XmP46YWXbuWjzYrMrUsFqKsGbvCELnIqCNhAiZnKar+ZrrABlCpgF
         XUjSzEeTYgRb6B7lN8q/rKcxM/eyRZ6ltPLG2khbc7gXBc56Uw9IIh8wsIj4wOEK+zkl
         ybKQ==
X-Forwarded-Encrypted: i=1; AJvYcCV3R8WC2FVJlmimOGcoca5ZlhOSlYKT1JqMmkSD3t7oghQsnOWnQX9BPIoq+AepYyD52InAMzwvtFQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSntFX4Q/tyKrHG7bN+wGlmGwCoLoXDLPm/izWREWAkHsoO7C4
	8AmPT8mzIWsO7mtezUCcunStB8zy52E2o1JZkRMoJrS3SUTsR7S+sCoNj4UBB0E=
X-Gm-Gg: ASbGnctau8mXK07cw87xDbhoIADNZ8zLmblgZegPDUOSt79TKxiAbXsfc9oqkL5znDT
	3OlgMkcjsWQI7RBYVTQg2nH1xbS/DxnV6LrM3KhWnThO7fzGta5nEQQSIuT+as3QPgWdomDA9xN
	CScxDXbh5psexdLIchlDrqvXrQ4V3EmK6+YO4CtxZOWpcMsET15p3UVKWQsEanyxpO31iAOa2sk
	R1tGODNs1fOGwRLnyIdT+IaTJegGcEKK7Ulr/HspaxspPN6Ook3bri1f4SKIN1Jm3RSL4m0ZyXE
	kVpKJDMB56aL1QHTQ1jleGabsq1nF92HnKYFnjc8Pf6nKbYSqgF9aaoCjkzsjkaG
X-Google-Smtp-Source: AGHT+IHA0ZQjK8KraYmZvJELL/Kq9mNLied6TLIbpJo4CZlH3o0zAE5EQTuZmcNVi+hZHBAjCeQKog==
X-Received: by 2002:a5d:64ce:0:b0:385:de67:229e with SMTP id ffacd0b85a97d-39cba934dcbmr862924f8f.11.1743768809991;
        Fri, 04 Apr 2025 05:13:29 -0700 (PDT)
Received: from shite.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30226be7sm4140344f8f.89.2025.04.04.05.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 05:13:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] phy: samsung: Do not enable PHY_EXYNOS5_USBDRD by default during compile testing
Date: Fri,  4 Apr 2025 14:13:26 +0200
Message-ID: <20250404121326.318936-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250404121326.318936-1-krzysztof.kozlowski@linaro.org>
References: <20250404121326.318936-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_051331_720944_74FCEBD8 
X-CRM114-Status: UNSURE (   9.84  )
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

Enabling the compile test should not cause automatic enabling of all
drivers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/samsung/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 6566100441d6..b7ab402909a8 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -85,7 +85,7 @@ config PHY_EXYNOS5_USBDRD
 	depends on USB_DWC3_EXYNOS
 	select GENERIC_PHY
 	select MFD_SYSCON
-	default y
+	default ARCH_EXYNOS
 	help
 	  Enable USB DRD PHY support for Exynos 5 SoC series.
 	  This driver provides PHY interface for USB 3.0 DRD controller
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
