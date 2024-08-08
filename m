Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B732BC3DA4A
	for <linux-phy@archiver.kernel.org>; Thu,  8 Aug 2024 19:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptjDuwT9tG6b5ZIBV2NAMfXIuzK0xU2fa4Lj8OOGsv4=; b=YcJ8E/9UeTNZRU
	/5FqUIEqXkMsBzsh4zVj6/7KIasoCTe7sloFsf9Y9fTwNW10SZS8piMLhu7E+b03jgrLSVbo4Jv/p
	FMBH0ToTjqp+NxVk5q+rgabvQ8cj+6idxD5eIMxTI2VHST1EVsduWzcWX1lHmCfwdHiEMEwX/PolF
	5+J3keyqkaIA6fISSCWYb1wXJu18gTum84rYgFF2AFwhqB96fibnWchyjLF57vjSKPU7U6hjNIBKC
	kR4R4dpY306sNtD6wNntEVf6fx1UjYZR3+fsyjzmrOmYaGLj+Q5jNeXf4x9pi7Pb6CgIMSsmLMCiN
	xCbWLwRDUs1qLZ09+lqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc8f6-00000009Jjk-0vCk;
	Thu, 08 Aug 2024 19:19:00 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc8f3-00000009JjE-2ifw
	for linux-phy@lists.infradead.org;
	Thu, 08 Aug 2024 19:18:58 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2f035ae1083so13521831fa.3
        for <linux-phy@lists.infradead.org>; Thu, 08 Aug 2024 12:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723144735; x=1723749535; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AN/z600dILInAQ2RuZIwZlxGxr3ycWJG+/le4ofqv/g=;
        b=d5nwWxehXXlGVK5MVHFhofmtwH+s7IpCjZ/PoNHOp0AS3ouqLW1HkoZnOo1lCWGNE+
         5yY9wk8S9FjBq4D/HqmH96JLqLd/M4KzJs2638FiiZnUiQqjgVZFxv2/ZOW1hf5hB18G
         WhNA1Cke2XqBtubl4zrfvmMX2FyeNwcnPKWKwOpjKOQmyKOcgmdInD6LfEuPK+TBvrWF
         4gjqJflDrq2l1h+5yy+CgB7zv0rdq6UWZRj3xypD/utbGhc0BF5ECPfSVbqCatnVx1y2
         qiBiDM/GHu3udfW810p0mPKYOE7FrEq9hq83BlGhguBNwiTjrmBwENFCkV2FRCtnwbSd
         OIYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723144735; x=1723749535;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AN/z600dILInAQ2RuZIwZlxGxr3ycWJG+/le4ofqv/g=;
        b=D5uCl16fJXQtG+8gb28EozBHxRVucPZrtpKD0TJbuXnqxlpTZDdgsIUjElBnSJUJnw
         49PQ5BSWL3YUUGHKn8308gmJWYcGoS7n3MAC6xy2RKfV5Cf/Zon2QBIntSj/9sL/AFOJ
         GbX1AzwigabDgoHe0ExaOwJTlXKl+yiW5NIYWlkQj1ysr6c9X1nv9+kIW7R1aVB/+SrD
         5OK6NJSKg8hobz5EDeFXce6wugASH1ekVOx76z7UzGYHqokkejhcgOtJFiL5KMS88Ys4
         hhANH+mJFEGv+9x8Zlus+89AyDnC07QzjfeJlTOLqyQHiP2aZGJYZW2UEVrFWBc1DDPp
         n8LQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/4PZO+k91FL8GFqVVIeWfbOvp61N68PvByaNVmQzwIA+FH+fnU/t2LunXDHHT3NnfdqtUy5zp6l7DxqBjY81EPNFAPMqut0Yg/hFRAQ==
X-Gm-Message-State: AOJu0Yww4CfkXsB6dj2OKed1wYiX3/V+nSN2ZEDItuwhN7XLlBeh9DUe
	4hToT/qQLxuM0nLEKTwFVR3s/eMq5EMzoa9MOjXjdiTYIQGhagwd
X-Google-Smtp-Source: AGHT+IED3adyQmO8mvsEjFHmXzwBJwrydp7BD8mx9Rbd9ZV4+aFXzkyOoCZJOrTzVc+v+EeroHx2Qw==
X-Received: by 2002:a05:651c:154a:b0:2ef:265e:bb93 with SMTP id 38308e7fff4ca-2f19de203e4mr18849711fa.3.1723144734809;
        Thu, 08 Aug 2024 12:18:54 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e1ade2fsm22877181fa.32.2024.08.08.12.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 12:18:54 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ilya Orazov <ilordash02@gmail.com>
Subject: [PATCH v3 1/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
Date: Thu,  8 Aug 2024 22:17:35 +0300
Message-Id: <20240808191735.1483572-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <56a52c81-68de-438d-94ae-9decc799d824@kernel.org>
References: <56a52c81-68de-438d-94ae-9decc799d824@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_121857_708948_5541F644 
X-CRM114-Status: UNSURE (   8.65  )
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

Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
It is pin-compatible with TI TCAN1042 and has a compatible programming
model, therefore use ti,tcan1042 as fallback compatible.

Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
---
 .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
index 79dad3e89aa6..4a8c3829d85d 100644
--- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
@@ -14,10 +14,15 @@ properties:
     pattern: "^can-phy"
 
   compatible:
-    enum:
-      - nxp,tjr1443
-      - ti,tcan1042
-      - ti,tcan1043
+    oneOf:
+      - items:
+          - enum:
+              - microchip,ata6561
+          - const: ti,tcan1042
+      - enum:
+          - ti,tcan1042
+          - ti,tcan1043
+          - nxp,tjr1443
 
   '#phy-cells':
     const: 0

base-commit: 6a0e38264012809afa24113ee2162dc07f4ed22b
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
