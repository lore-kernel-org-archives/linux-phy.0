Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 757F9C54F51
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 11:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1bEAlUpoHM0Qj941o+2kkrsk/ly6Oougt09Zntp1aE=; b=kpSxehqFqzm4W9
	1KSU4TENtx1P4UKw/bw+gMD4Wi/Fi6Upfc7JPpdVz3yzKrB65pBD6Vl9IgLKjr0SelKEzxfPFHZ/p
	0SOztnTlxH2JbuQRRZI8TLNVQJZsA2GLxOY4CbPK6T3TXqsf7OS5dImcyi5rL6zyZM9AFvci23ip+
	S/85dlCaJJ8c9bNVJ+fEIdBmEcx+LKNWIcRV6S+mW8Iw0+Qzq8NyQB6q2iHjNEkyD3cR03W+wVIYO
	m/Oo6VBgemp9za8dstm4GibXLEq/cLsycaYjtpzRzjPmQvwtRF3VqtLQxR1SuA5lDKk8Arx5r9niQ
	ySO1tdsisx1TuYxTlZZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2ny-00000007n5i-0jQZ;
	Wed, 29 Jul 2026 11:50:34 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp2nv-00000007n46-3iVx
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 11:50:33 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4954df200ddso5026475e9.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 04:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785325830; x=1785930630; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nvETHTy/c+xg48mfhdZIbcQoJJ41K2xfS24xxpSFG5s=;
        b=QG7Oc3CcZE+niP+rf5gHKmAHrrRa4CHZR6Axm6/Y/tj6n9muUK0Jwi9e1/bVjfgO/9
         x4t93SEbBrVAFNy7TyI9pwnnVpEUEAwa3VJq+REl0yrIsy6sxTgpvAr4VEOqkcoxZbTs
         7rXc7M5VVVdPwSr0vXELOytIbxk/XIYZHK3O4xcErTNg5uDHBN/oGinP5ygnYM2Xi5FU
         9rAsdnHk6SrjYmm1eMz7w/puqa5O2dWG3DE+DOESM2wvHyD4u6KRZJx7zmnqa4rvVuwz
         rZF53jgu9aMxXy+k9WZs6KOT2WaJ28jGuwxGwbMewy1x8nHIaYKfO7YGcizZHct3KyfS
         8/VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785325830; x=1785930630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=nvETHTy/c+xg48mfhdZIbcQoJJ41K2xfS24xxpSFG5s=;
        b=bSLU25QwCH0yjBlelkhFtDyzIPogoW7sXinjvMl2szxHJ0e1IorrnybQq+gg/I3dUo
         qqdD6BNvS4Koj8MELIVoGD4Vt7ioJ1MhUtBpry7dtJVC+wchRgnuiYi8WX42KX/ImG4n
         s1FvedbVXVw8cUC/HuqTau7L+XcFl1wc0Y09BESgA65mWSJJv9Y35ZHwPzvYlzP0in65
         cYTHMCTpVs+g6UOcInYwqBjoFQeTnc5cOerB8yOl/2vIwVrTgVscOu/nXF8lcJ81M85J
         2O2T8x9nI2wFT7LbyJUBgsabsFa5dX23xHluaHdTOojwjHb8YycJf3LtNjAaDT6B7ja9
         lzuQ==
X-Forwarded-Encrypted: i=1; AHgh+RrknxsHRmOzaq3Nrq6Btu29/D5i9Mg5cqLv4PBnPy/AxP4XwgpvSHpyujbJ7tz6E+Mkb3ItjXIafvQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWQ2rzu4c1OvkjEHTDne7Oby+RHx3vUeOCbJXDiM2CbmdSwKTe
	8KnlqptfYyijVlyY6WD5gcwWGYPMuAnhfwL/w/WOLnfVni2QpvU7la4IZlTlPg==
X-Gm-Gg: AR+sD125W1gHEAxdWGY2cxoXxnhN0wpnOJ0PWkhhLOXbmFWlDU+B/vY2CioPJBZshC3
	o9OSMLLMUkwhnP3lquICz4QgEr4D0aVThGP0hr8LWZ9uaJGLZ3lKqJ5bBrsm7IfdbBvhDIFT/DG
	ttcGLJDWrOydVRaLj8xW6ZGcgzJRJQK804Q+7BmIE2QjLcPXd5l55clW9Bw3JC0QeLUQI9hS/t1
	A8Ot80jbAlklXBZIqXaS/vRPWY7qDMnPjszpm1vIenHQ8TSYWnwC/JxtVVfthhUlz/4uHqm0aMY
	p6a0XPFkr7R1inAzVquMDgMTJsEyuahGFaEopksKhoRULBYORR6v9LeDotdpHO2L3NNqOHUY6HD
	fwsSWXa7KZc7OUm4+PBNgRrr/APDLn8UCpcan5pI9fhMMKGWivsZQ8imkF+qUOFfdQnEoeH+GZe
	V4N5LgfG/iW0YWYzipPJkluRT7LXiNAxgYSb/bsdcYmAEc40uYW/kQvVfnd5ZeRALMG9Z1gyIka
	jWoxOukNZmV9g==
X-Received: by 2002:a05:600c:4744:b0:493:f6f0:d66b with SMTP id 5b1f17b1804b1-496c6414fd8mr67790835e9.1.1785325829559;
        Wed, 29 Jul 2026 04:50:29 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:10b8:4461:ee04:15e2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4957bfc2ff2sm326144165e9.4.2026.07.29.04.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 04:50:29 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 5/9] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
Date: Wed, 29 Jul 2026 12:50:13 +0100
Message-ID: <20260729115022.222340-6-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
References: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_045031_994614_92C1FBFC 
X-CRM114-Status: UNSURE (   9.78  )
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

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device tree binding support for the RZ/G3L (r9a08g046) USB2 PHY.
The RZ/G3L USB PHY is almost identical to the RZ/G3S USB PHY, the
difference being 2 OTG blocks on RZ/G3L compared to 1 on RZ/G3S.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
v4->v5:
 * No change
v3->v4:
 * Moved the patch for easy merging.
v2->v3:
 * No change
v1->v2:
 * Collected tag.
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 9740e5b335f9..d6b9d08ceec6 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -16,6 +16,7 @@ properties:
           - enum:
               - renesas,usb2-phy-r8a77470  # RZ/G1C
               - renesas,usb2-phy-r9a08g045 # RZ/G3S
+              - renesas,usb2-phy-r9a08g046 # RZ/G3L
               - renesas,usb2-phy-r9a09g057 # RZ/V2H(P)
 
       - items:
@@ -132,6 +133,7 @@ allOf:
             enum:
               - renesas,usb2-phy-r9a09g057
               - renesas,usb2-phy-r9a08g045
+              - renesas,usb2-phy-r9a08g046
               - renesas,rzg2l-usb2-phy
     then:
       properties:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
