Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA19C87FD2
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 12:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGbFzm3oiK4yHi25Hl1V8pVDO40BtiN7C7kvjnlnOl8=; b=X2XukMWbOElyTZ
	XM9G/kwZzbq+gvwnQYs/Ld6ED1HhzaY3URPEjysetPNV7bcDyafGQPJlB6iWVAiIeb1gW79n5/YWP
	cnFY/6HxYQ63VRZICgNcq7g/Bt06GE6bNX4AGutucr5N2pscL7WDNoSF48567DBwq0yGCgz1kUiJV
	Ayk4ifiR9GXq/eLLDSUhwuTJSm+c+Da8ZCr3X2KB8yfVIYPFzXg2PmkqcWaHOeXAOJDl32swjRLdo
	owktJWBRf4Dfn4V+TUJslsDa3Cu0EeHkHJCPmGujvzipl88McES+3BnyaUPvVr68sJmw2Rd6EZgtw
	vDKedkfvZjnVL0cCCJOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujH01-0000000Ck5E-2uIx;
	Tue, 05 Aug 2025 12:42:37 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujGjZ-0000000ChXQ-1ipI
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 12:25:38 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3b7886bee77so4603427f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Aug 2025 05:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754396736; x=1755001536; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I5Ep8m0VKAwV5mXrgq4DZR9sXOgq4tSE6SfXbq4E5+g=;
        b=P/HErILCwg6A63osNhNgaeAtR0Z8w6OyAuHvOGME0BCxcYUR0HjkXPNdMy6gEt7M3a
         wy2NShWFsL5qYkS9RnbUwkTaHUrOTnZpmheG82ZeI7eAMJbe2zGSI9oA4L2ha6FakAlz
         WaXEpuxrpsZ82ztEhl5iG5bYysnSAHwRFIi0dd+YNb89t86iMzSAgcggYbcWBbmJJKy0
         N3d6olc/6FrvOwhx3/QvvZSzOHeDekad1KBP+Aw7TbUOE9iqZXBZkGDTA4cIspQ4kgL4
         K1jDtB3vg6ghPfXGvMic2XjYh3iL2xZMEyfcZjnG13Nmwd5hW3FC6Ff9Gwpmd93PGT7s
         Qe/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754396736; x=1755001536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I5Ep8m0VKAwV5mXrgq4DZR9sXOgq4tSE6SfXbq4E5+g=;
        b=d/J+ek3GPZI4YcHSNlt6yhAqg+H2QRum84BbNGeJU/nua3luV+dN0W+rTIDgXtX1Bp
         O6f62qUqKhB7GD1JYH/UThJTrshTGMLhxBb8nWobIOFPwVvJUEtGomNzgdZvJPzm1b3Z
         XgvLMY38V8iWXDZU926V6eZttoacqkM6ZhVh9Ln1ZLk+amws1KkelQZLuG3iFLKb81FY
         nZ8Krr+ygC8muIBrgZJDGhZlPtWI9hWkL+fCzeLuJaWUO7yoJekYf5+Lk5YvmlGm3V9l
         M20hw8kkavzRlJyZx+m3bzD3xOCkppw43wjbtuhoLoHyDiHLH4gTavMU4CqjoBQ+7LEc
         jQyA==
X-Gm-Message-State: AOJu0YyxQKXOjq/9oj/TOpuAytRT7MowubJefJPSQV8Nz5H52Layn9O4
	K9DBcgJzwndaXdi0K+N6KxePuA7j3CyLuPSfFUgvVuJ0S+K1ikOBAgk8
X-Gm-Gg: ASbGncu1ga51xoRLd8H3nrAOyX5EoYvXwGhdjkPlltwiJtKqawve0nEU2oCA8Kk0d5E
	FM8uc0Xo16Wcrfoq+vRlO3px0PSypUXzQF3Rn/cuSE4uXuz96pqJ+RTWms9Mbraahb2zWHv/RAy
	fBrW520iLgtAi1ZrWue/cWGoVdG35B/+vlir1aCAIJUm0CX3YOShhI3KxJ5VxJZH80tv8Cv/Qke
	KkiSpFNxsaoC9ac5GEMxHaqskWQWzWrL81lHLLWKOAK/vTJ/wz7lYlXQNgx7n4kt6okBtUsXcae
	NH+6fT3saHjHmsSnxIeN0rE8LnTOzOYG5maKKYrAWyAE771EWFsglMxDGztJ2Rf9tPPJi3Ss14k
	N/n3WyUsnyo8ITjAbUr8txUfKaZRtEi9hT63tgzxa0EwmTwiZJUbieyo27uhGhCF2hl7Z8jMMAQ
	==
X-Google-Smtp-Source: AGHT+IH/BxE0hPVHk64qSFzfFDBSwRmjvC2GF0gHc1dmVlCBwJCvHU1LVAoN9rANd8IFap/CwdRMcw==
X-Received: by 2002:a05:6000:2013:b0:3b7:8146:463c with SMTP id ffacd0b85a97d-3b8d94cf0bbmr9070989f8f.59.1754396735746;
        Tue, 05 Aug 2025 05:25:35 -0700 (PDT)
Received: from iku.Home (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c48a05bsm19153986f8f.69.2025.08.05.05.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 05:25:34 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/5] dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and RZ/N2H support
Date: Tue,  5 Aug 2025 13:25:25 +0100
Message-ID: <20250805122529.2566580-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250805122529.2566580-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_052537_450331_4760231B 
X-CRM114-Status: UNSURE (   9.60  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document the USB2 PHY controller for the Renesas RZ/T2H (r9a09g077) and
RZ/N2H (r9a09g087) SoCs. These SoCs share the same PHY block, which is
similar to the one on RZ/G2L but differs in clocks, resets, and register
bits. To account for these differences, a new compatible string
`renesas,usb2-phy-r9a09g077` is introduced.

The RZ/N2H SoC uses the same PHY as RZ/T2H, so it reuses the RZ/T2H
compatible string as a fallback.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../bindings/phy/renesas,usb2-phy.yaml          | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index f45c5f039ae8..179cb4bfc424 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -44,6 +44,12 @@ properties:
           - const: renesas,usb2-phy-r9a09g056 # RZ/V2N
           - const: renesas,usb2-phy-r9a09g057
 
+      - const: renesas,usb2-phy-r9a09g077 # RZ/T2H
+
+      - items:
+          - const: renesas,usb2-phy-r9a09g087 # RZ/N2H
+          - const: renesas,usb2-phy-r9a09g077
+
   reg:
     maxItems: 1
 
@@ -120,6 +126,17 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,usb2-phy-r9a09g077
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        resets: false
+
 additionalProperties: false
 
 examples:
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
