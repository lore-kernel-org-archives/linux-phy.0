Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB98DC77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 08:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nJaptbWBjYM92Y5eVsHndP9SuNtqEUoaZ3f6dHGudQ=; b=XhLPchLN80wQWF
	xHDOdEzrCGMW18lN3wKGGmxEHl5JOKQvobBRyuEmLdge3A/utPPUGeHIZBkeKwIgBKqKNanELLwVr
	QNB1QC88SR93xK6L49tsUmaO+C26B/lE818jYYhShN7vM50yb4/oEobymYzHPHiflchCiK18Diupl
	6wDZ7XD84QgjTeZZduvEcArP6PNjuJ2ev4O4igrBNnvvFmLF025KCylyxtZDBh5gCbg3Kt+YCcnRp
	mCA2oxiEhovp/ZmIBWaDy1eoi1uU8ppp9OK8QIbaBzW9IYYswYtos0HycCJglqK9fsbRfa1m0kAUS
	3VR2QJZxyQExUGNxH/7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV46i-0000000DuuE-2ToZ;
	Fri, 27 Jun 2025 08:06:48 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV428-0000000DuNJ-0KXC
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 08:02:05 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3a4e57d018cso219251f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jun 2025 01:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751011322; x=1751616122; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVQ26FYhE65N8xhWnR/yeeetwdVwmUBewq4SGVBPUKU=;
        b=TlHmvYt5Qg6u4Be3YDYPdjW1sV3ib6OYLGua/JfKBxvBEQInL19455kxy6HcsPi12v
         cCvqHeJmVFTjENeWYA73h3JGiFHaOgodEHv67j6YUH1fczlz/wAjpBle8DL2ySEEMYUo
         JXh+MZ+H+3Fx+I1NGKkKHRf5kmI8lHmyC1Qxol6r1nZf9RvNyIbIVZgi1OwuyyhMLfbH
         6hJAUSbjIvzEdJRH+nsyVaEa1CaFUd6/n68uYPvnDEhyJS74w/47BM4fJsiwxZL5EJZH
         XjHJ4fviSixytc/8d/FePvLPnAYuXRxNJPxy6ib0cg8HM5LIwMjPBWaWBhKLWrtyufrh
         M2/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751011322; x=1751616122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hVQ26FYhE65N8xhWnR/yeeetwdVwmUBewq4SGVBPUKU=;
        b=e6UPJHfEsHRbL9TiDpqE1yDK6caUq2gidNK0DJgMNQ/UMk3OohxdBJHkDgLZ2w/WyG
         WoE1n4oyMI3yHGmS5bj6N95xG4y9m05mmNtUA5gllMLQsIJ8flECKtRSouQZvwZ0hcYJ
         4QrD1YwpRxpPVsbA2QqyI/zNXXVGBpDDuUtao5N6eNzoBYVYeXTn2DogW6OhjJJG0qsd
         ilS1Jqhapn2YEoNw+glXO0ungGt/g8MsZCS0PxNwamGMH3HWKWkZnn0YDFAWV3PIBUPD
         sPRg+3TSfOdpjjAs/+8dxLAqT6VsXacRgHdlnne6uX1nR4P17X66tzlsx/RnypzxBco4
         sWcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJ590ATVC6ms5FBL8RH1J1VV/n354jd/1DZdJk4rUoD/7CepHLT5NyCjGwxrFygvNrppzEXV4aYYs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yww6AVreO6xoSB8JTTvoVaMfMtUMGZeWl3CbDhkrsiSvvdrKjwB
	Sx+Xw3DEoVWm/BvnXHTre2pdwPSv19QuXdCT0c+eG/ZxpmQ69m1pCddnIcxVjLG9tfo=
X-Gm-Gg: ASbGncuNObxlyXNganmqWcSCL+/DJllrnW2jf9iho+fNb3rLpMOQa2EMz9Ojrb0xPPb
	Ka+TMTASaFM5bK9psHNQ01AN8TpwPDGspE+AbRXV9MhXblf/FIsGgLfe1aNgH5dYhOYI2TROgiI
	CLMu5Jja9kHb19v4mm3bKONrMvwCr12O3YmyicezY5KBbn6h6NiLKnj7BP27NPLAvzbfeL0Gza1
	ZyN1aLUt1hxmsn4GczSArMPIPW11Drbu957b7XR+qiSsMXkw+hz32a1RJT+Qj+2KT4ZogtH7cfa
	Z74x68lpyEvkoHqGqE+QDvtS2iTqUithqNOMec4OzibIt8bqsBRJhJf2FgmNgC5PnT++GGiwolV
	89a08OyM7FEI=
X-Google-Smtp-Source: AGHT+IG+OUuFO8zduSqG52Q/uKbJtNoMJ4tCAnBmQyaOHPjqHe1gEHM8je7qA53jNQAj3w0qWDlO6g==
X-Received: by 2002:a05:600c:3b2a:b0:43b:c825:6cde with SMTP id 5b1f17b1804b1-4538ee24a9cmr7911235e9.3.1751011322546;
        Fri, 27 Jun 2025 01:02:02 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a423abbsm43490295e9.39.2025.06.27.01.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 01:02:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 27 Jun 2025 10:01:52 +0200
Subject: [PATCH 2/2] dt-bindings: phy: fsl,imx8mq-usb: Drop 'db' suffix
 duplicating dtschema
MIME-Version: 1.0
Message-Id: <20250627-dt-bindings-db-v1-2-d5c7072acbee@linaro.org>
References: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
In-Reply-To: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1112;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Os18r53ZbPW4+3PxVUJh52djHd2zkWOgpdekfLd7+7U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoXk/0+ng738Vf2atAtc8/9LZzBj/cRNYfbJxNV
 4fZiTT1cVuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaF5P9AAKCRDBN2bmhouD
 1zPRD/9ec1PBGRt9uSGVge2T/60FqQRPu2KOpknFFJ3Yj2DgYRFSk+cXIn3PZ4WYAVB/TIJslkB
 ZIl8QaXjr0prI1lcoi0bW4gqRy+srh++tfMfquip1o0iXOCp5aogQjaYO6u0UFcq8C3+GharY9I
 bMigbXVaL/jZ4lajDdJdM+y7p+5AcdOT9IvlYrTdKvappu9skwsr3bRnSI+mhOT63xhyIF7DWFW
 zJSWlLnRXfR1N+GLwOxrnjllEQNvCpAsHSSF7941WAxyvIznVNXDTgQ78QVhe26fbd/F1hs1z1Z
 DfpRyzJsH4uEFlNn8L3Y+7AEYG/kF83EVxbdZpqmgPnuMTyE/lulfK0LIRBr3hy35j/MxYpxSQK
 5cvNU8yfNqQRq4fBQJc9HR9Ns8Xyu23bvbjNXaNb0ek6aOykGhZ4Ggi5EzVxNKMicwX/XCmsDDs
 t47EZRIViAWLgpWgxClkV3I+AnGiIQMs59AEAbgFTc7Uj+WGvsYZbeGlbix9YccewK0RopMqYCd
 XmBy5pgRiTfFm1XWRcITflD24deF+yfdUT8arxFklLnGBf33AqrHY8zHb/E5u9Xov3xZTcs/iqJ
 nD5oqiQ3Dif0Jftw7mzCCalnUJJ+lJFXGwmWilNvJYtuB6eDo4xwTFz1Ca92alNdhDTpZIGC7f7
 FaegpyIa3vtZbbg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_010204_124302_0AD9B4AC 
X-CRM114-Status: UNSURE (   8.68  )
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

A common property unit suffix '-db' was added to dtschema, thus
in-kernel bindings should not reference the type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

RFC because this depends on dtschema changes and should be accepted
after new dtschema is released with this merged:
https://github.com/devicetree-org/dt-schema/pull/166
---
 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
index 22dd91591a09428214afaa4c9c8e37aae9bd8aba..6a47e08e0e97b286538798190225ca2966a7ab34 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
@@ -76,7 +76,6 @@ properties:
     description:
       Adjust TX de-emphasis attenuation in dB at nominal
       3.5dB point as per USB specification
-    $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
     maximum: 36
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
