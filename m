Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92496CA0EE8
	for <linux-phy@archiver.kernel.org>; Sun, 14 Sep 2025 14:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1esRGxO8jv1zc5ymHPvx51vkAQMaUyUWTenhozYUqaY=; b=lvPOERQHLoRWaj
	KuHDg2bO2nA40ah0wokXFRIwVZJJL19Nz70udSocgSVakCtj9qDI7VxAqsRwCuW2ioAaNoExIv4oX
	7+n+HCW52VFkVhS4bhLiNQjc44qTwU/LZZIJtUblvsHLn6VKbY04g7m++p8tWk2YMyaa25/5RAdsT
	/dG0S7EnGww1Qufmw62Xg4NTPJB+3PCCDr2fHxWjC6rq4bkcTNBqDrrBWPn/z/n6CESYjOjA1kzh2
	L1qdbALyN1+XVtk1q0nncgqTmbXuKpffbDecYSmmIY341vYO654ljfGdsbgOYAvG6pGJUaPUYZjO4
	yIicGd1V6kJ5MLrUM/FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYK-00000001Tha-1N9G;
	Sun, 14 Sep 2025 14:18:04 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uxnYF-00000001Tc1-1146
	for linux-phy@lists.infradead.org;
	Sun, 14 Sep 2025 14:18:00 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so29836985e9.0
        for <linux-phy@lists.infradead.org>; Sun, 14 Sep 2025 07:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757859477; x=1758464277; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=bZPSKWbapmeaGsvFSgQJJGqEBJDXBT74gb/ZXKQ4PhhNBI5mYZKm0VcOz6gkMCGTHZ
         mmSVzMfOUem14vGcFWMFRu/p/br97a0RIijV8yVgqVjmkU6PoEhhB/vXCNOn/iWnqbcb
         70loaXgTcFUYXd7qR9G9jJJER0MYiDBX2J0TraMusiWpe5xV4zKAh7/O1c+HI3+PfjpA
         Fg/AC1/yAiAUGF9Le3zccDNE6AViCvcJ+gEZTZsnwdQK4M1NzO0B9qR6T2yiFLLSdNij
         3jBzbqR8TM6i4z7gEIUrRhV/hvo/gMi4WUBfsCCKDiSL04eDOFKIfxYNCG0DqRLmTz/p
         Askg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757859477; x=1758464277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WLnk4ZbyfQe9FhVo0Iaf0C5FfaSInQx1UG35rxo35j0=;
        b=tnJQG5U5qzh6G3QW3js/TI4zi3blxDFVjEhexsraFvko0suiYq3JVzADXhLx34oyu1
         sI/iVVnd5LPGzEeeGXOqzJbCZNfscKOtYRdNeXlWUZDqHKSwpc7bcGjTBiow6f7QVDtG
         qRVTB00ASLD6vffML5YnHZJlF0r84v+LGc08VTrT39vN6YGKfSWB2Y+lH73xKABS1ubt
         6dan0MrinpvpdLNL313Ux1/74EFOF0hBfTUjHmBrpPJDcF8BYEUrS3JwMPVYKKcjGyMu
         AfxAOORMBLobH+kxWXORl5UMq34ZQG4JRqOuDkA0yhHgP1dSAMrmEPzkun3Ufgw18Awj
         Y6gg==
X-Forwarded-Encrypted: i=1; AJvYcCWnP7u2wZpV7XuZ9KZCsXgCmeRE7GpcnZDU6Nc9jZG+4aHlQ75MtqrfHZnNUVCsP9VLBgAlEmOD9BQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfTeYcY7GiSBwmAmnlF8Ql3fjsuP4Y4ObsQ/U0QgS4leg5yKDe
	KKVYDKnknvMVYSaYhrGEErGmalhbrS7NOxVXJL0F3iHjmKo/R0YGWl2CIr5Dog==
X-Gm-Gg: ASbGncuFHyIzM063zeE10uAMJTEi7e7lEOwUGPeeT0TNu9tj+gjnMMLCVYw/QOPD/Db
	94oWXplIv/kLHJ+9n8SLEPfk1VTIhkpgMFGfHkwfCRxDwj0kIqhCuk0EWngQ+/o16vX19m/KvIM
	i2QcsGB3FbwHdMkINEZehFar4X7+4OXFT+qR++HHWbkUStsg0pjdPVt6A0En1vGWZc6uS3V+/Lz
	oVDuKzq7Nxw8DMLIjusY3VhoD5S2/mlortrD3xLtI9SX1KxBEijXOpr8jXIYhqPT3NmBF6Y1nCx
	xcRErDU9y0fFy2uk18MlPdQO5IOwTadAVOpA8OxYnwhxYMIwCVph/cD1YhHEW2XWxWB/kjq/RzC
	SUW9Vb5ptEV9UrjRr82w8rc2Wr4kZ6/pIiARgTNL18Bad61ixLlxkA6jJYEst+fOkwOP6pswRjw
	==
X-Google-Smtp-Source: AGHT+IGZa2TxgX8agd2exKpvk7TmNbKmYcyR1Hha+oaP27Kljq84rYHxWKx4npcT6+CgUwnc/mAUug==
X-Received: by 2002:a05:600c:40c4:b0:45d:e775:d8b8 with SMTP id 5b1f17b1804b1-45dfd5aaff0mr93879005e9.1.1757859477068;
        Sun, 14 Sep 2025 07:17:57 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm7319270f8f.23.2025.09.14.07.17.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 07:17:56 -0700 (PDT)
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
Subject: [PATCH v1 1/2] dt-bindings: phy: samsung,usb3-drd-phy: add exynos8890 support
Date: Sun, 14 Sep 2025 17:17:42 +0300
Message-ID: <20250914141745.2627756-2-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250914141745.2627756-1-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250914_071759_298594_68ABC0FA 
X-CRM114-Status: UNSURE (   8.08  )
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
