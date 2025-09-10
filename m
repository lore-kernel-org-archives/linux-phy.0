Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84472CA101F
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 14:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BedXY6Kkwk+oTG0wvOpkBz6z5/62xFxGeYIUZqRPJI=; b=fQTh5kkThFK804
	1bXzcd5IGkqbAmAySxk3MFbsQe6TxHKtfgbx6q2v2GkqrzMGXPCa5aA3c1fun+LcfarnEIwWg2E9Q
	ZItaFUfRqgGWYAAvp6eeFNzIe4dzOipzkUskLxVXWVDqYIjRtv8DSz5mPLWEUqGBaUcuWDBnA01pK
	waCAnQ2m66ay2f1IR6EXYyaPnzJazH9SfRKx5WJvyl45gjeVzFBdUMpkSLO3wE5AIkN2pZUep7Sra
	EgQ72WC+dbpJEbhkTQUie65IooVPBp4PCvMh+ur5nR16r/rnxXAa6Kc/YXb0jfrJ5jQb1gC9By9W8
	LN9+YM3NKltkXaNxdzYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLPz-0000000EYwW-1HyK;
	Wed, 10 Sep 2025 14:03:27 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLPx-0000000EYvN-1nOc
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 14:03:26 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45de60d39b7so24358315e9.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Sep 2025 07:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513004; x=1758117804; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/VRRoBJDxUtuCClVOWAtoorGRAjTpvhk+jM3BYoUxN8=;
        b=Olr/VdatGCuzlMxwnPunu+Q49M29LWhVoxJRq0f09EBvzXItY1h+Dr7T5vre23yhtm
         3uFDeB2hqRWdvTPsA5CPnKDQrjw7PkEkwnIoS+z/9ZaYigUNQw+CmB3yDkVyYOx9zbLm
         wp6vxB/L8DKcgXSpPkFXpU3kuyVskuP5nI0bpwuj0C7neByoUjCUzunqo7mPtvELGbre
         Zs2sKfMsBTlGXmQeakNdftgWZpGS2atApqm8y3O6WDBTUtjh1TAbi+8VfsavH4LrGrtH
         jEwJOK8cQTziBioLnVpZJQychkOAJXUf/eHhGNv8Uj/wrUhaIIsNM1P6zg+LQRDIe7Bz
         8tSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513004; x=1758117804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/VRRoBJDxUtuCClVOWAtoorGRAjTpvhk+jM3BYoUxN8=;
        b=dWp9x4C7uAfO7t/fWrW2nrdsoxzKwU4+LI/hRfZreUvmkWYu7GJdjExIKUQt/HaRs/
         TqB3pMSiykusVCyWyYb67suoT8QJ4wqYgfPUYnhTSthhZBFcBqTVhssJpcY+H4LRU6ED
         38QfI+oHsXdcAq+yDrc3wU6KI1cSml9T3dZEuOSN0BRx42LyhOR4ZshvmEVaL5GG77RM
         3mu3q0YzraE7GtP+umweABXxERINhL0gp5jXc+WYkhBwu8oAdlvh4HJ2BGTTM9DEJjyl
         dP5mwTdFDY7Iq2DEmXf03mvkFqvPhHBbPtpqTNDwefLJol5ta0svscGDukLOpta2mhAs
         CtNA==
X-Forwarded-Encrypted: i=1; AJvYcCWnWag8aYOME/F/P6sCvXj+XTnPLnfuZ3Fz66rtGc+YYulGDDX1pbq4mDV27S1STF0YFRdfkrMTXNI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7Kpr/euSz16AR0KxOpIO3amj4QWXyjEuj2JPOas1HNarM4XtA
	HXdRkYbK1d56RSvP2NjBBgQwSZQIJsIczgt254i5ES+hqqy0rmerYtWAjb+XHytKDn4=
X-Gm-Gg: ASbGnctIfYeet5d5O5iBDRH4DqinB905sd5Bhzp95f4+mufPikQkja6ZFRnnJ+hNotC
	UZZ86N+S1dqvr51HkmWnJPo1xe5vPbsyZuCj3idqqfh4nbh7pWz9HYCvYghU8ZxfmNiH9qdCMH0
	3b9nGzPCYZbv3ICSqWfF6hPHLPBp7W8Pu/xn+PZrODqw3iHkY7fRUXYJxFW3LVuRZi3hWxGA8vl
	RDVjeYwck58op2s3X7SaLdNruLbn2/dc4RKN7ljjYCShc4hlDjdCXDCusDiFgOra+1nzxKaYJZf
	dU2HgYO18BxOO8zmwHZgfg7aat3oZIOFDQRXYCNGCZm4CLRKuZSt8uErBfhLf7+AdIuncky6J0W
	0QWiacqG+fldTOKFecnVurKjacMfdCA6I9IjO36e2MKMed/Etsld3
X-Google-Smtp-Source: AGHT+IHhfcHfzteNbpb670GfMcFeMNBt1xhdYwJHk1+Sw0KbXw/4z1Sr9oNd9yxGkx0R5Z7OW1OtIw==
X-Received: by 2002:a05:600c:840f:b0:45b:6365:794e with SMTP id 5b1f17b1804b1-45dddecdacemr152293835e9.24.1757513003366;
        Wed, 10 Sep 2025 07:03:23 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:22 -0700 (PDT)
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
	Conor Dooley <conor.dooley@microchip.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v6 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Wed, 10 Sep 2025 17:02:59 +0300
Message-ID: <20250910140305.541961-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_070325_483050_4D9D3D51 
X-CRM114-Status: UNSURE (   9.83  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The reset lines are mandatory for the Renesas RZ/G3S platform and must be
explicitly defined in device tree.

Fixes: f3c849855114 ("dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings")
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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
