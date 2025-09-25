Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C21BCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJS3NUeufWauXZTZTPSkRAIjwKV1VXDGxdJqxdqwXSg=; b=OL2Ztvml3z9ogD
	N+oSf/hSgVzYRLh/41AvH7+IJF2B4vbvS+xK7mW7Fbx8u24grhjduVEfMgPvbo6RQwz79ooTwQ7pc
	kx7gsHqBEDNd8JIjnKD7brMmsiHefyZZr4CgMiCL9Sp7UdIS+7PYEweZ4Z+2ek/kDMIYa2mCwcLbf
	LdbuQhgAmIsGTYgWcNawsFQ3dADFxHTiaUJnHAcBzkxPdIK/thUBHyQF1Mc2y47A29BP0Pwns/Zmy
	o8DSBNAe1FBVY8Y+8YvY2yLPvlFGkgOz0AU1SdOD78qTCZ5BVzxMk6MlPt62OxZSyGKiKMOewoQTe
	wvrkpu7r9L5C8TBfXoJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipZ-00000007tvG-18sW;
	Thu, 25 Sep 2025 10:04:05 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipW-00000007trn-3MLe
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:04:03 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3f0ae439bc3so306996f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794641; x=1759399441; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CZgyfHtUHQdMbguLJFX4F1FvUu8sipY+NMLLL9K489o=;
        b=nCbRYsIWdJbAyXjHE+4qXY1utQ+ud/HVwueff+LfzKkeWeinarhRNqwYVdo1K95jKP
         0vX6ONbCVq0717kJLUahBJYvC68fcDN3h+U1q5Wrg0cJVNjs+sa5lbTj5pEuvfnbKmAP
         vuN5paCDlNOjXsXsyzrq1MBvBMSjFJ23/D89EQpJKYMVPKVhAJZWxtbXPKmuUh6p2eot
         q4wJZIgSc5iTB9WueaAaQcAuC511823JVs8YvR42omJTI5LVj1xpJQa14qwrnl/KJiVD
         m0zOLw8I3fTdKESkii2MFhjfnj54t6xs8MZsot+Q0Ps5v08OHYdEWibBNj4tFOE/RNpy
         amcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794641; x=1759399441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CZgyfHtUHQdMbguLJFX4F1FvUu8sipY+NMLLL9K489o=;
        b=NAChereXwR/lkQRrapGT+q1HhZv2+6mJQCisTNogFLqihdCr1Hrq3qtMeQD9DV5vEM
         IyvleSzT9X5BsZph9q3R8gSNVXX8PCUIVsPnjDHg5td2tI8qtyKakGTxWq2gn8IpV9gJ
         mNE1W2QxcN1ECYW6aSzBReUKvFM4bg7o3xSPdfN06DoTFnuvs3NGA+sPS7aydmtOEmE4
         HyosREINX+8MNpV7EM1Okgs7P5UbAWGbZSeEbJxKjKf7zz358vdtTPFbYrPvsJi/VQAq
         YEqYJ6FKJIGQnOArsZVNOBhjankXFRd7cHrNOPXTCAdD+F0HdCoZ52i3xieh4qYrY6D/
         IJjw==
X-Forwarded-Encrypted: i=1; AJvYcCXKy6fD+yCkAGiHsM0HNUo9sJrKkQdSaUMUtk7wKuheuOvvSXzjBGE3QiG5rI/ZyqKyGEk2WQCs49A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw92GfgDfEhxRlxpPfLZGYZ1laKr983O0Fr4HWOqAjI+iRbPUPH
	fYfLGMj+bMsU3OyNsticn6rktoZxXyh712Lh1T1FirJZxNatr40JDthNQB6olZny+w4=
X-Gm-Gg: ASbGnctLW3NNbEh8051ECz3mWmnr6lg1XkYXNdbEUujwdW+6CdK6WMTbA3FigLS1vHV
	77TZCYDZQ2o5Pi1q6AaC2EFHrOGiFzsx/1pMYODSFeEVx8V6h9oUoIIv//18s5EyScJ4hP+eYPQ
	PJi9EZgnLDpuec6YkXwDbfMJ3GE9FF4ZG8yFBq4ydsZy4TqdNmNlZXSZp7MbIXgzJZvZ9xwRGuv
	HDNcs76Xgs2fvnvMJAgklWiF9c8SVbcSfzcWE5yGR5kMLtF6fn0AbWZqmrZIR23e/JWXmFJewZj
	q1U+laOiNSBNlPMig6b1IM2M9bwkIMijmH4FCsLg3J99CTOLrWWIjaUqp45evHcTa0pkdUfUl+v
	YrJmVsZCj5WyADUVzFfkD5bo5XH4vIc55VGV3fr4agBqtFQlCFA6484Q4FHzDvEc=
X-Google-Smtp-Source: AGHT+IHo/3qusJbcYRKvdsf6z3fzubLCdhWCe1adxIeyHLBVQ60Km31sfkop5cZSQNMmWg9wyfVu1w==
X-Received: by 2002:a05:6000:1863:b0:3e8:68:3a91 with SMTP id ffacd0b85a97d-40e4cf41e80mr2677896f8f.60.1758794640880;
        Thu, 25 Sep 2025 03:04:00 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:00 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Thu, 25 Sep 2025 13:02:56 +0300
Message-ID: <20250925100302.3508038-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_030402_853489_D08A99B8 
X-CRM114-Status: GOOD (  10.33  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- dropped Tb tag as it was reported that it is not valid on bindings

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags
- rebased on top of latest version of renesas,usb2-phy.yaml;
  Conor, Geert: I kept your tags; please let me know if you consider it
  otherwise

Changes in v2:
- none; this patch is new

 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 179cb4bfc424..2bbec8702a1e 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -118,6 +118,7 @@ allOf:
           contains:
             enum:
               - renesas,usb2-phy-r9a09g057
+              - renesas,usb2-phy-r9a08g045
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
