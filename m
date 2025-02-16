Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6211C02198
	for <linux-phy@archiver.kernel.org>; Sun, 16 Feb 2025 11:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xoxfiX7A8iJDGj3zk6lRU3H7HvOYaGotyNQGbYeeZp4=; b=XS70PUH6H80vgM
	0KfbU0STr4e7V5mKfKudqcQIzSeQtNRtKZ5d6fg9AikcanxbpmvoQ/sHY4qthkX3KCCoXhAul7WxH
	fbXuFFe6WiSXx+UoNhXQRLUh1W9a6riyY/nakT/DVc058BzwTXBz0GBUdJUA7DenTCTUgjwHjNzu0
	vfGsrQvFIIKmQWbJ8YfYmXbT7HVVi+TMF3Ulai4bwCoozPe+4Y+Y6oKYIIe4+wCfpZ40ibVfSL6RP
	Ny/UBih4YVWCba8wgKlklH4SdioZ2BvU04voEnzVNaxGI9MNTn8xWGgYbcTpRnm5NygCvizCQTEV/
	lT2bjHI4Y0z86WPM18Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjd3J-00000001it8-0Swx;
	Sun, 16 Feb 2025 11:43:13 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjd1p-00000001ija-31iW
	for linux-phy@lists.infradead.org;
	Sun, 16 Feb 2025 11:41:44 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-ab7bf29883aso54440166b.0
        for <linux-phy@lists.infradead.org>; Sun, 16 Feb 2025 03:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739706099; x=1740310899; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z+YOIFY1QqnkQull6bw6UkU5fZ1LXxRkH++QD8PUiro=;
        b=E3wggHKVwyBZeeSC4ag+OCggPfHr3N4z4WWe8A/RQFzzQmfHuQXGh9zkTQvPkfNdkW
         VPVyvBgaCMAoMNkY78EigaeIPYr9FOWCBlNOhCtSUrUsNOmaOSHxmQUw5ZgoNoEUfLBj
         0JuUki8BNxeSZptUhzAS2Zq8z7c2xuvvI8aqFv26D3MowEYdalVSgONTGtQhl1ULtGrq
         r3zmrHFX2oXqfnzKPDcV57VrhftHJyXu7KNBE71mcbIWinhZPNKjptxIKVYGE1jQjQkh
         Fd+5Fe14Inl1JXVN42CLdylHF+eI5QaTGZ1vAUC7PjGOfzuASnW3iolCNknJ/MuqKfi+
         vNFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739706099; x=1740310899;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z+YOIFY1QqnkQull6bw6UkU5fZ1LXxRkH++QD8PUiro=;
        b=fDVow37TJTLmREumg1rpf/14vIkhqzaJhyUFp3oajppHQHkF1JFIHiz8Nzxp4TNcEG
         Oe2oEicJrqgAuj4ra78qIC8+jvuIFJvO5Yw1BLTZpRJuvFHFJyLkGYtjByPP7apCJBfo
         anOf7C9iGnl6hWqZ4L9dCMZpPdCgB6YOjQEoulxDC5cAkTJyNLBpqHpziWaiuEfFHx0h
         6KUWEuWp4KwTIMTifn5+5MoPs3XmuX43hRkqR19tKg8yQlYMTtp0rIdfYCUgE+Xqf/mf
         PHp+byf/OaUhlUT9Kz6qnzfLMGNz3d0kB6HVKp1COM4rhUCPkz/eqhXVi4X73fRhFlPl
         smrA==
X-Forwarded-Encrypted: i=1; AJvYcCX//bcwmdyNcW6gDx6iqnFCIV/pX88EeBWufOYUHkqnmczcFO3RxOKpIQ1s2VoMvb7pY9M6k/iXKHc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWAIfVAAI0j0E2nRCNiepWv2osOKyK560KuPX3gKu3+Nh3pYpz
	fXExgTROhK2vfY8+SZgsOdrQMSp1Nbk7Yl2DNqqPJm0XNy4npfTGygiOyqS1i/Q=
X-Gm-Gg: ASbGncuNhh7X56ULH0OQXi+Vs4gmu93+BJxnJta9uX4yCPawmQ7RpxKVHzE20uHk1vN
	5k20e0GsbmNUGYFhwQlIzpX6bh2qQt4M/5X6VMqm2D2XzIFTAOTXH7SuX34A9hClq7e1jDfudk0
	M+kW2Gm8qJ5k7F1V6g9+8s3amSOk66IBNFstcLpNgoeutPPTlpZffdLAo1JDOYywuLfSAcYjh37
	PTJ/Widy2SKRCBpNsAEgyQewVG6qTR+GLf4n+ELZKAy3BBjZvEgvViRy64ZCnmGD+xEfXcqV/5v
	+YDG3MfbWwV25ikZ7I4f9PFgO+FX7w==
X-Google-Smtp-Source: AGHT+IGC7GfLml1oeu8oNIX5tls4ha6EZGX1Ok0ynCFcQ9rntDrsSXbTflTn2CbbuY9r3Pnoy6M6hQ==
X-Received: by 2002:a17:907:7248:b0:ab6:6176:9dff with SMTP id a640c23a62f3a-abb7053d8e7mr248373666b.0.1739706099492;
        Sun, 16 Feb 2025 03:41:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba533bdc41sm682048066b.162.2025.02.16.03.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Feb 2025 03:41:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH v2] phy: exynos5-usbdrd: Fix broken USB on Exynos5422 (TYPEC dependency)
Date: Sun, 16 Feb 2025 12:41:36 +0100
Message-ID: <20250216114136.245814-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_034141_780914_78D2B05F 
X-CRM114-Status: GOOD (  14.57  )
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

Older Exynos designs, like Exynos5422, do not have USB Type-C and the
USB DRD PHY does not really depend on Type-C for these devices at all.
Incorrectly added optional dependency on CONFIG_TYPEC caused this driver
to be missing for exynos_defconfig and as result Exynos5422-based boards
like Hardkernel Odroid HC1 failed to probe USB.

However ARM64 boards should have CONFIG_TYPEC enabled and in proper
state (e.g. =y when PHY_EXYNOS5_USBDRD is =y) for proper USB support on
Google GS101 boards.

Add itermediate CONFIG_PHY_EXYNOS5_USBDRD_TYPEC symbol to skip TYPEC on
older boards, while still expressing optional dependency.

Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
Closes: https://krzk.eu/#/builders/21/builds/6139
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Closes: https://lore.kernel.org/all/3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com/
Fixes: 09dc674295a3 ("phy: exynos5-usbdrd: subscribe to orientation notifier if required")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Patch for issue in linux-next

Changes in v2:
1. Add PHY_EXYNOS5_USBDRD_TYPEC, so arm64 defconfig will have both
   symbols in-sync
---
 drivers/phy/samsung/Kconfig              | 12 +++++++++++-
 drivers/phy/samsung/phy-exynos5-usbdrd.c |  1 +
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 7fba571c0e2b..b20ac6b75993 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -77,12 +77,22 @@ config PHY_S5PV210_USB2
 	  particular SoC is compiled in the driver. In case of S5PV210 two phys
 	  are available - device and host.
 
+# None of ARM32 Samsung boards use Type-C, however newer ARM64 do and
+# PHY_EXYNOS5_USBDRD driver needs TYPEC to be in a matching state to avoid link
+# failures (see optional dependencies in kconfig-language.rst).  Intermediate
+# PHY_EXYNOS5_USBDRD_TYPEC symbol allows to skip TYPEC on ARM32 boards.
+config PHY_EXYNOS5_USBDRD_TYPEC
+	tristate
+	depends on ARCH_EXYNOS
+	depends on ARM || TYPEC || !TYPEC
+	default y
+
 config PHY_EXYNOS5_USBDRD
 	tristate "Exynos5 SoC series USB DRD PHY driver"
 	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
 	depends on HAS_IOMEM
-	depends on TYPEC || (TYPEC=n && COMPILE_TEST)
 	depends on USB_DWC3_EXYNOS
+	depends on PHY_EXYNOS5_USBDRD_TYPEC
 	select GENERIC_PHY
 	select MFD_SYSCON
 	default y
diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index ff2436f11d68..6d571dff2898 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1456,6 +1456,7 @@ static int exynos5_usbdrd_setup_notifiers(struct exynos5_usbdrd_phy *phy_drd)
 {
 	int ret;
 
+	/* See CONFIG_PHY_EXYNOS5_USBDRD_TYPEC */
 	if (!IS_ENABLED(CONFIG_TYPEC))
 		return 0;
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
