Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A224EC87FCB
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 21:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxNKgl2XH8fccS1z4bzhtror8H6P4LXAPWEwz4VQLfE=; b=kyjwFyMctoaCQ9
	9//n7lV8g0TIKLyYvSvID2R+9j6j/J/5B3ixDVLfpjX2XBMUFEwigkJ1CGRYCdvk8XmEA8j7JZkwK
	fqAcap//WUcJ2TE6oAv8oh+hs8r5xlVCsCoPHgPVcZ1oy6a700gieOCZKHawL6NMGub5Zd9UYxVAg
	wQBsabsv3+X9bitmDmfyYRDUlCPR8T5czBeWulF+sy6dMm+V8w8rnzKcgWNlGp/2c3CmHzCSnBx+9
	DQqr1X81pu5/DTQzhbBqQEYBL6zdkvXUnuXpFH2TK93CDJdtB46+4In5Vthzhg0jKJfzHp20owpcj
	WM1eNZzsKZuHGEkIbCcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0e-00000003kdr-1hfa;
	Fri, 08 Aug 2025 21:52:20 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukV0b-00000003kcV-3Tgr
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 21:52:18 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-458ba079338so19374675e9.1
        for <linux-phy@lists.infradead.org>; Fri, 08 Aug 2025 14:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754689936; x=1755294736; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s+fXikZUZkaaLPmFsKD7HSeeldtesS2bPwhKabpIbz0=;
        b=R3R4U66WxpoWb+h+veXQii56QGgIiu10NPUrXYY3mjQTMVKed7GYOTTKr7f0LWv4Gc
         hR6U+J/ToqIWKaPRv0JLpcffUoK8Emy/x16IQARrwSHM9xAITRHwJtHqZmYwLXxMTgoS
         ppsw3yePUerIQKqI+8f/096U+b0ciKB+F6xZxjrEE+gbkL4m83B4SzIg4Y+6rYTBvwyu
         5+eAtaOCYfVnBpmdpCHi4nA8F3/OtAyy5akVBc2eWPDkOGrD5XZ6AHMSfmZEqBPJv4+d
         vMktXB7NXgsioxU6cVFrVm+qZhaY9F6OonAh4SroALixKcD8ve7tHzUISxWZuFHH8VV2
         08ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754689936; x=1755294736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s+fXikZUZkaaLPmFsKD7HSeeldtesS2bPwhKabpIbz0=;
        b=a6a6ysKWmzcp88rSy1luUkVpUUPNuGfuXYE/mSo7K5z1k/EtAjqXv8REqyeQXv6nRb
         UUDUVkqsRgDtZ2GzsGbPK8rv6VZThpe1J5cfQEgdZHDm3epdcGCgVBuI5u7gwejo2vT0
         xCFycgmiB2sQE9ONhitOCQyJ+R1PymrnPmyEWQdmlp+Dqfj+PP6YfIBDLl6ffT9du8d7
         e5w8VCMcAbynY+aPFfu2XjbLsOdJI40mGHO2WCbdceQJoQOnoFJQnpxsaefAh0TisFsz
         tHoQvxS7465JvkcgvHw3Q6LPSlZBZ1ZR+gB53Cl6TjcNR9C8bHFL12cCt/7j5Z+ogh2J
         etoA==
X-Gm-Message-State: AOJu0YxCKgNFiizmr5QoToyOtgJFaZdj7wkXo+2ltkef/wZQIO0ouH4+
	dFPYbX1gdLewi+xKE23BemZluZFKkY7FjPzDw3fvkaQ2qFoD11v81Uuk
X-Gm-Gg: ASbGncvTKfFpt0bdeEjkEdIDmyML5WzADVXBLoaY/K8x8m+OsyezPG/ZefkV4UYCDqy
	XnMlFBzK9p1ke3l4tPPVs40C88s82RXzbi3lv2x0hThcUEAdpMBh9QKnHzYGKuJLTiPl+R2eIFA
	HQ+akWOBjOPCtTfQQL5BsX0TW+CT/lnF84JPlldQhQsxV8+8YrlZ/C+4JoSVJtWR6JaD595DcBd
	M+9/JnjP4Rz7D5AICbByWoAMX1jC+ZsFHShU5jKpd6z9ULStYyslH1SGGlPW87y43R2jvbKTVdr
	FHA7QluFKGVfxOox3QXUDrHVhw3ieq3WR0XCctTkBkqCXDhY9q96yr+q5bovEiFq3mjhGrI/QYa
	kTTaYaP4Yzb/Cp48zDConAxX6vyeKEfvzMBVcjVUVfH3dXZdt5nV35+DBDuWS2E8YRtChExZDT4
	z29j2Wc0o=
X-Google-Smtp-Source: AGHT+IGZxYPfZ8f3OOb3dfhUOyySNqL5+mV0PRRqjPLBZBpsNMy6HBq87hUeVascfeL1LTmbENPgmw==
X-Received: by 2002:a05:600c:1d19:b0:458:b8b0:6338 with SMTP id 5b1f17b1804b1-459f51bdc4dmr39764275e9.6.1754689936127;
        Fri, 08 Aug 2025 14:52:16 -0700 (PDT)
Received: from iku.example.org (97e54365.skybroadband.com. [151.229.67.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8ff860acbsm5326759f8f.51.2025.08.08.14.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 14:52:15 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/5] dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and RZ/N2H support
Date: Fri,  8 Aug 2025 22:52:05 +0100
Message-ID: <20250808215209.3692744-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_145217_865834_34DFE1ED 
X-CRM114-Status: UNSURE (   9.06  )
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
v1->v2:
- Added Acked-by from Conor.
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
