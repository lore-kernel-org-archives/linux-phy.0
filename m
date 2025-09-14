Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC014CAC587
	for <linux-phy@archiver.kernel.org>; Sun, 14 Sep 2025 14:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1esRGxO8jv1zc5ymHPvx51vkAQMaUyUWTenhozYUqaY=; b=AMx21viL0dAEiZ
	W0h1EgvM5C6MRSZtBNbfWOAfWnffXcc5KU+fDvXFXvIpdVN0W43q7EzhRanTku4YaVIAVtLsIOaht
	01ktYmmTN5FPfY3qYRLSZhWNkPyR9vvGyN5CTSHtPotrqKp6s0CliXTUBfbq74oGSAlSrd3huUENq
	8XGtRkz1vurdVk2Kgc4ydcmRLpIeNJz+iw9BXyCcDsxWMjCqcB2S3RxzhNmp8g6mquwaGV8348wP9
	+uXbZK7BWl0FHOl2CGvLREh53TIiJYvh6CGCqB58N1w1Awu+KZhpH/dOK4DdX5mFmt0ZZGoe8PoW6
	PepkCYkdgh4CAy9uGftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxo9H-00000001bG8-1tYr;
	Sun, 14 Sep 2025 14:56:15 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxo9B-00000001b9h-2Dm3
	for linux-phy@lists.infradead.org;
	Sun, 14 Sep 2025 14:56:11 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45f29e5e89bso8940785e9.2
        for <linux-phy@lists.infradead.org>; Sun, 14 Sep 2025 07:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757861768; x=1758466568; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=Inicd/kh0Ga9I6+/ZxZyOGvltMphGkAShzht3h4LJbs6uK+3m6I20y5vD4ywEB7D2g
         5/z3xpEkQ6DVl5M0VdHazRtVvnt85sZmM/67gRJV9KLxztSMLlz6XtVwbDosaN616i1B
         6KEZgRnmR/DtYn/AtOZDZYuN6ClM9J6RvP/Hsq5aDXjaR9a/Wek7jguCfrWE+x+aXyiQ
         c/c2a1rYsDbsU7t87rbaunbH9pRmaWcxcP2Qf7iM+r+ttpGSuzjFoFoNMkC6pIHM0sGI
         qfOw7IZ2RCWoLiyCpjoj/+96ULe5oQZujd6kOUGN3ZYHCCA06RysvDMbGrvbFz/T9VGv
         6DJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757861768; x=1758466568;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=AWGlA4sQqFm4B8XDvxgZIE3R0UHvGb1EfBOxFHuTS8Zl/Mzh50hG/1uSl6eMMQYjeF
         uyfQGtdcNTuk1Y9nj7rD8DYHMMnvXZEqL4klKfNcaqg/ODflQzHTIXiwWzmuzjird/we
         RwKdC2tCeMW4cYQ2KcJEPIuX4kqmwN7G3q1gWQqAdG98zLp3XLS8zdrOtyp1ePpkahbb
         wWvaduhEjS6GZg4oFSI9lbWQh1ddTpo6EbImO32dww6EyORrAwIjkdCcKAtBcXgEqk+0
         HjA9HsImdlg9lH7CL7Gdjgm2oQMcZF4Wg0CGkC92r3xx66wvcdBbop0v4v5hTWvk+qRU
         gCAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBVooc0sIOGOxafXSVww0q/ofW0HVLMcnKDxOu5pmaY0R9o+28O5CE0MlAP5V0x4u2tN8GX2WrTeQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLVB0mmHMJChxkgX6aDD8DkkuSKLrSHSRx69nx5x9915VtfHhL
	KNKSgAANeuEsrWu1jmypbQvEnahqCNolLu5V3FV4GtDSdqBg2y9KTb2z
X-Gm-Gg: ASbGncvO6HUk4aubbu3ghAcxBgYtY5+yL88Zx84YBtuiVns9U2O1yz2LHHAQi7TUJ0R
	nnzfyBCRynNGrOvLxqLX1FDdu4qRdD9jClq+ijcWrn+QUK+QWkPl3+0kvNMXjnFPgzfKMb+8Eed
	0PzR4tpcb/CQ0kR4uaJgr0FLNKv7jD6iU3wNySfG2LGTY80mwf4QF/IAOfff7MV912nRcre4UtT
	Czy++DvF64aHUI22d3mVFb9HNRYVoqo6wVOPOnNHSKYmwbAtjYzzkqmmq3iW4SLpurrS3HEnDqP
	/pkIzAaOh1T7vopWdIpllKt3+paB+FzfySOcmc4jM/40LY19QQCOyUePbm1Cfjcb9YjN6t0QcBJ
	tcY+hVx2gbLAjBKohWRMdkq2O9fU6Y7UV3Amk6hxtCWllFe/i5Q1bdbkhREBwHRBLgMz5ed6Uk9
	YixYwm+jnz
X-Google-Smtp-Source: AGHT+IGA9P0DPlT3qLVqItOCiBENzd7lo8jFqFbJSSw4qh0mrbF1bC17C9VB8+t7dwhrkHYrwMRVbg==
X-Received: by 2002:a05:600c:1c96:b0:45b:4282:7b60 with SMTP id 5b1f17b1804b1-45f211fb7c4mr77463375e9.34.1757861767382;
        Sun, 14 Sep 2025 07:56:07 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037d62besm136303475e9.21.2025.09.14.07.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:56:07 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
Date: Sun, 14 Sep 2025 17:55:54 +0300
Message-ID: <20250914145555.2631595-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914145555.2631595-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914145555.2631595-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_075609_599943_811620D0 
X-CRM114-Status: UNSURE (   8.19  )
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

The exynos8890 SoC features two dwc3 controllers with one USBDRD and
one USBHOST controller. Document compatible for the USBDRD one.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e90640320..2b1544baf 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
+      - samsung,exynos8890-usbdrd-phy
       - samsung,exynos990-usbdrd-phy
 
   clocks:
@@ -209,6 +210,30 @@ allOf:
         reg-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos8890-usbdrd-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+
+        clock-names:
+          items:
+            - const: phy
+            - const: ref
+            - const: pipe
+
+        reg:
+          maxItems: 1
+
+        reg-names:
+          maxItems: 1
+
   - if:
       properties:
         compatible:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
