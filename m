Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41286C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9u0FYCG91tDJecoiY53q6D0ZT1iO/Yzid7K2/7aCyzk=; b=EnYZS2WHXWAC+L
	V6XWSm5GKvjuEk43iqM+xyrpCRjIxiYVDKlw85cjUmKs5unTCVFavGkGPT8WGqnQdcWy6NzXKXzkm
	vT9WtuUzM8sZSJ5HksqMP7KEMiigJlEWUQj+aq8g+x+Xx4dNvW3ZY8hUeQNzs9wEkU0TQW5qcP30j
	zumhbBTexbenOIBSKqje3GcXJLemiFqRrhSS6QfbLL2OQ/xyQUe3ecG66QZF4xGDfo2POzQlXk1oN
	7pWtW1g+zPrbe7+48akLGfsUuHxM4DlihnZ2zHTGXyRUFEagpnmy3g71iaNMxg2WMw+NxpL/x9whX
	NNPzYrYkhLwl5o2WxTUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtY2-005KI3-Jz; Sat, 29 Jan 2022 19:38:10 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtXB-005JxG-7e
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:19 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9088C3F1E8
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485029;
 bh=Fc1eyAl7NybW6jYdngJRL9d8j3U5amMxubQkyGhXpG4=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=EHgJh98pAdJglXUEZBBftdcOTi0hyPdE5DU3P1Z4CSlIp5MUGkFXeiqTpBWQMQmLW
 stklFbmKggC0TmiitJAKUfGShWc3iOOiXGBvoiifFjHha1h82P6j83IqPTzy8Eh+2b
 LEhCiZEj7v+tDzL6sfBXCeAXMfgTWdMYD1sgTddR+1DTL/m2BslRh0zQA6TDBKuSQe
 Pa9/q51N5b/DYoA0pLKcEDt4YPudGF3GFIGh6XNu2qf+qteCnEA5DmbZgGGujw+y7V
 1iHxwL7VnLfAxwlrRW7Kh3yfhuRFzdmLc7WwMxgpGzRZFxOZdQwHoSidi5x2VWqxvk
 iU8JzFJyHVNpg==
Received: by mail-ed1-f72.google.com with SMTP id
 ed6-20020a056402294600b004090fd8a936so4775037edb.23
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:37:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fc1eyAl7NybW6jYdngJRL9d8j3U5amMxubQkyGhXpG4=;
 b=LdBSSPzP1zEqHoc1lCFvlH/bW71shzBCWO7Lt+1vzijALWUG6Uhhtqdd7axsBi3E1w
 zlfmvYO3vhQm1clvWxqML05rSSJWqRGMp2iOKgZ2QlxRERZxniLNP9TThPRapPoT5Sdm
 lUNVd9JCGllKVPMUug1IhWK0vqAQuuBozyNpx3UDp+MBRNA0a01wLhtYKWJCiXiowGFa
 izI4qldH4cdlHKRBqSqbbE/R2A2PoybITPGq9+44MFZ790Po8t0r9IEeIrLXVNqX1SqM
 FheAPklSq6F91IxA8XKXdkaTa5O/V+c9he3GSqQNQs9hRX1MCHDuwpbyjUtbRFx+OinQ
 OF3w==
X-Gm-Message-State: AOAM532/cijmlxsQE9K3Tr10a2OA0MZQs5PWyxevKZfiSBh9Ra6+n2lt
 vijKEbPdfU5hxnss9CiXZe8Yej0BShfjjN7JCaeTZEAdE7ml2ysEYtZ2d5FI04pP0Ip0MAmZPws
 IuF1tKR7NroXoO1WuO9YpZno1gBg9C0nMAwyneihl89c=
X-Received: by 2002:a17:907:6096:: with SMTP id
 ht22mr11140551ejc.611.1643485018006; 
 Sat, 29 Jan 2022 11:36:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw2C00tlFyQ3RoELXj4WirLkICa8agfl7xt6lK1t4z9axQaIvO2QsBaGqe8J3bXTyJSyrs97A==
X-Received: by 2002:a17:907:6096:: with SMTP id
 ht22mr11140538ejc.611.1643485017831; 
 Sat, 29 Jan 2022 11:36:57 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:56 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 7/8] dt-bindings: phy: samsung: move SATA phy I2C to trivial
 devices
Date: Sat, 29 Jan 2022 20:36:45 +0100
Message-Id: <20220129193646.372481-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113717_464139_66CB32A9 
X-CRM114-Status: GOOD (  11.79  )
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

The I2C interface for Samsung Exynos SoC SATA phy is a very simple and
limited, so move it to trivial devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/phy/samsung-phy.txt        | 14 --------------
 .../devicetree/bindings/trivial-devices.yaml       |  2 ++
 2 files changed, 2 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 1ee78016dc72..b0abeb4ac0a2 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,17 +1,3 @@
-Device-Tree bindings for sataphy i2c client driver
---------------------------------------------------
-
-Required properties:
-compatible: Should be "samsung,exynos-sataphy-i2c"
-- reg: I2C address of the sataphy i2c device.
-
-Example:
-
-	sata_phy_i2c:sata-phy@38 {
-		compatible = "samsung,exynos-sataphy-i2c";
-		reg = <0x38>;
-	};
-
 Samsung Exynos5 SoC series USB DRD PHY controller
 --------------------------------------------------
 
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 091792ba993e..d53a4b2f81aa 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -283,6 +283,8 @@ properties:
           - renesas,isl29501
             # S524AD0XF1 (128K/256K-bit Serial EEPROM for Low Power)
           - samsung,24ad0xd1
+            # Samsung Exynos SoC SATA PHY I2C device
+          - samsung,exynos-sataphy-i2c
             # Sensirion low power multi-pixel gas sensor with I2C interface
           - sensirion,sgpc3
             # Sensirion multi-pixel gas sensor with I2C interface
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
