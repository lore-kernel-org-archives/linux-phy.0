Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23BB5CA0EED
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lfn90iiCuBsjOlxy7xosdCOgsH890FwNc2UM90KXAiA=; b=oKUYO3t2qNIPiz
	e31da1jwXonBHcVUL+DlTQ6jY5VlOXv7ml5S7Tj/y8riEQapWiEAs9PUFrQ5HR/jkzgBim0mXQGZC
	iHN4UIoSwlpn0Z6j74rUgp0GsA+ibyFzY5azkmjCRhnZO7NBfg4JUqYInTLWd76lFfe0jumzTdSAe
	blPeZp7i9DXEsSbWaXlgo2JdkCjSMVMtnZWy3M3apqLmGSHRUMoG0qpZzQ9pRvZshneDddGtXjy1N
	7S5Yl2blud1mbnd3yMlm4NzM0Eh7riSfNx5CugquKtMgUibDfoPaUOLMj8hHs2P3KfEEDFM1REBwd
	SgOf/eTuPljE0pKifzGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF6z-00000009S8F-3iPB;
	Tue, 19 Aug 2025 05:42:21 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF6x-00000009S7I-34uJ
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:42:20 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-45a1ac7c066so27581455e9.1
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 22:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582138; x=1756186938; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iVVSbvDZnii6bdSECwyy4dO1N94UmOnjL3r7C2ZllGQ=;
        b=or5Cl8oww0aQWGVLfCCFaCyWD+OpNCfntOPhO4BlCYAUTR9wwBY0GcbPoR/XzAWnPM
         7wDDOiZd9FC8HOfoszJ5EYGsfBFj+A1FSMEVViu7/vpwDF17eN4BjoU24+69voAtk1/O
         qelS2qTCt/7oQLvOy3CBTs6480PoG/l4M6Aprj432O8is/3BckSyxl9t903RaNoJoVdq
         naJOlrsYP2XpMSj/vyCKJvoD+X3req4hEVSxdDpGpn74Ig/J33Gp/9NlwSiuWbl8iaU7
         7gsjHorqfrZsQ2kp7wB5ylKuJHKLNQYSsUsSCrwXA/VL9qarCBTmMLvBl6DsvHFFZg73
         gd5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582138; x=1756186938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iVVSbvDZnii6bdSECwyy4dO1N94UmOnjL3r7C2ZllGQ=;
        b=BUCIAhArUyGACqoLkVQRj86kDNsqAWPSzO+6n3SgB5GDd5+OBZJ4o08Ssag5BwlXmu
         zEF51xHab7yWUm+Pzf5AA9rSjWjOzOHweTY0PBI7qDUSgZKIOGoWQGi00lfnVxJZ9gYz
         AORP7rFBfbnZ1wBYneNO64UhQzGU+lCVl+Q+UsJM0tgJtwXIoi9PHe/rXdZUXrGKtpof
         5tjGTw2mcbA/1n1Z+SgsRAS8kgJuUZztSsz2flZEjZG9Zjhe/+HMacpcGn+Wn5vWFSCA
         UDogT1cMBdqw1xUljf7GJPz+YGql6I+nL6ezr6UjK0O6PihPZ3CBCk6wO/cT8FaE8d1S
         R/4Q==
X-Gm-Message-State: AOJu0YymffpkoXW8DvCBBFANAiLJlferqngF0ZUOblAAQ54GvfN8tGvC
	PLfIGM7q5wuXN6p4wQaVPQ5ogskiRjD85n9VGlKDOaR0QqUgR2puwQM5fk3X9vs5AxA=
X-Gm-Gg: ASbGnctkxGBCDO0+/DW/RgE8pZFPaSxtivW0bfiEvtcwuHM+63DfryqDayftx1+hakY
	BRvm0u02trUg4/DShE5OedjJmkDXhqeM6OTVDUVyu5TwoqqXu8a3bCUFErU6VD2eqPFvW9chV+h
	fPK5ADiCQhLTgt2xt0fqTaiLxJRGSylyVpVFP2V69bYrU2X9Odm391kD0uogSSLxHSfhv7ujQyU
	MP4Anq3RtfKuBvZdsvg+xrvLkkPSR8Lx4otOcy0G9yYqTBhEUBspyVylO2oF/9xTsDs5OUJeMr+
	2D0lK6h0FykOzKP93um6cx6PzvsnWu1J8Sx0Q1JqWOhYRS8ypyRjEigJjWoZQ7sSaFIkMwoyWHV
	Yr6Ye7rtUCEELqTA0gS+PLAZN9tliOpu/4bTo0dMkv3b9U9+sAsyzJ5x+7mfXYd0d7ZY3xUyWej
	nBon+Cpj8=
X-Google-Smtp-Source: AGHT+IES5nhyLecC//rzL0myf1sxGPLvYHvc/2o3mQNfeX2wl3bWpFVtSwP/LJs1efnKIwVnA0xT3Q==
X-Received: by 2002:a05:600c:4f50:b0:458:b8b0:6338 with SMTP id 5b1f17b1804b1-45b4546ce02mr14595e9.6.1755582138106;
        Mon, 18 Aug 2025 22:42:18 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:17 -0700 (PDT)
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
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Tue, 19 Aug 2025 08:42:06 +0300
Message-ID: <20250819054212.486426-2-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_224219_773062_C7FF15E9 
X-CRM114-Status: UNSURE (   9.95  )
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
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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
index f45c5f039ae8..52d777057281 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -112,6 +112,7 @@ allOf:
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
