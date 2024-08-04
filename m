Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B966C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+qWWUhUa7Tj2wveqcDMZ3b9vViiE0co71CU9PnSKsw=; b=Bz6z1InTV4rl2V
	ch2fj7BMStdOTJ4tWLKaXNvc82wRS56u+hI+MO9OuGQlqzY4bASW1BUdtWBVIZ20Ew6VyCDs/HmSY
	AcI0v0fK6tJsn8drHQjKE+RRW9ElJ9al0XfEce6oAJJLoreGlsh3IyENd8ppEEziIIW623ZLsrJuf
	Fdm4f4QZ+0jhHF/5nIc2WycNd8hWeaQwWCvF6oNzg1wu/g8Bigj2x0pL9lyt++CV1Bfu91MYKukLX
	4obYLiaq3JE/tqCl1B7AZcUQ/dccKRotaC8EmoYGRb7UlULMglcoHBoV5/955ctSXqX18qSkDbcwM
	/QjI1y59JHl9b2PAkovg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajDv-0000000DztH-16Qg;
	Sun, 04 Aug 2024 21:57:07 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCG-0000000DzKT-1ZkC;
	Sun, 04 Aug 2024 21:55:25 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a7aabb71bb2so1240399266b.2;
        Sun, 04 Aug 2024 14:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808523; x=1723413323; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAWeL7Nun9ZYhbxsfj7pwIcuKQrCXh/qT58VXqHCCDU=;
        b=c3murwA1VUXTPwKBA2OCeb28twdRfeKEpEKfgNlx2ZYz3A1tsBAMSFjfGQUUXeG875
         GAi17D9TrKYsqgpEWyIFuM1wtLOhT2zLLLCiFlFBwXDckeqrkieATnb8HEaoy0FXJ7LU
         1mb8cZiaWSjJaI+b3RrBHkZ8/A60Oc3i66CPC3oMNtDCPOWzqF87Zp8fyn0ihxKFeXVr
         uiu2ztfaSduCqRkytcgRq5UMzPbUmw+QZtVtT01GVSVpipv9Vl190cU6apweXsVrC+eR
         gOcSdO6/3/1oxBmg9nUk4WSqbbMGvhQAIIjGO/0bh2INW2UJHudicgyBG5gKGDkWBCgo
         OtWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808523; x=1723413323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IAWeL7Nun9ZYhbxsfj7pwIcuKQrCXh/qT58VXqHCCDU=;
        b=jghWKAkNMtmG1NweasewN0Rvl4ma8lHIr+851lACNxKg/AcVlUQWdicsMuLo6RVVH+
         ym02WZAr1KmkxJp9DG5bdODt0WtqZPs0qmtAC+3o9hfTx8LqENcvZA0tOwNKA26nAxvW
         hlmDYStbNWd1it67wvvEz7ZtowOOkRC7vBi14HTlIIPP4o1golFb7vhdus/qKapWNAb7
         G4Md60Vrf86QpklxEQcMRZrXvJZRp3UpZvZ71wU581ZoJ5Y48fk1lCxaQcNQob3iH1bO
         Gx9Z55pmM4Nry/Y1fyJZ+FXv2VXDk2keJVtbehm1H/KVknC1nZJt6Pe2uOKmmJztCODf
         Cy2w==
X-Forwarded-Encrypted: i=1; AJvYcCU1uotX5kEbkOF203hFvF2tjGYMOKc7gQuj+iY1kRkb7NQ4IKro7xJjKGedsftVZo2BrAFg6mL7Jxj/xMiq9dczrqD32e4gtQptlSzshR+6Q/wVbuQ=
X-Gm-Message-State: AOJu0YyImXOzdUNmxN2BuWpvorf33QJhiwHkemB9YDnz/I99u4DKtaej
	Tz4hCpVx02bsz+5G9HbSOP6MAELC3aTQ0LTtx4s/erWxEe1TWlTZ
X-Google-Smtp-Source: AGHT+IHgEEDrTSF0voUwvDDCfjCGSv0d/UaByu12LrTyy3FIYy3fv13CItLVvOLTPykh2j0xtVTI2w==
X-Received: by 2002:a17:907:7207:b0:a7a:bc34:a4c9 with SMTP id a640c23a62f3a-a7dc5101505mr659446366b.69.1722808522604;
        Sun, 04 Aug 2024 14:55:22 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:22 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 04/13] dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos7885 support
Date: Sun,  4 Aug 2024 23:53:49 +0200
Message-ID: <20240804215458.404085-5-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145524_443812_C287053F 
X-CRM114-Status: GOOD (  10.75  )
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

Document Exynos7885 compatible.
Exynos7885 USB PHY has two clocks (ref and phy) like Exynos850, which
are already described in bindings.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 16321cdd4919..bf993d738bce 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - samsung,exynos5420-usbdrd-phy
       - samsung,exynos5433-usbdrd-phy
       - samsung,exynos7-usbdrd-phy
+      - samsung,exynos7885-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
 
   clocks:
@@ -168,6 +169,7 @@ allOf:
             enum:
               - samsung,exynos5250-usbdrd-phy
               - samsung,exynos5420-usbdrd-phy
+              - samsung,exynos7885-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
     then:
       properties:
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
