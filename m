Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EDA6C531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5V59UkX1mloF9BWpf06GQsRxQnt8UVCpkAVXpIoYO0=; b=ewCveiGjGEgnZL
	gBmccC5DHKAX375NTiYDJ8LKrE8Mj8oU9hw0nq37sUgCjq4xhb3vsr7gkLCFL1YvSZpCb6esD3kpN
	eLM0lc02x51z7nvNbpoJCqfOgUAMXz30WBg/9aNP7rWCCuQPo9y+HtrBK2F03LyIwavYEL2LOeH/H
	cl2SzkdHRZGl4dwz46tZaj8Df6MvEwdlTx3Wkxnnm2IlZA1NVfFitmRwtKhJyJVo2sqiK3DzwBLBK
	ylNZ1kXjQqaeETD5ZK42pTmsFOwE0vQNEBQrdU2vraw3nF5oeNLxkXmWFV5Kmi0hJgLiXHfDzO24b
	b89IXF3RGjqSujddb0Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA9f-0000000DS99-2eMn;
	Thu, 22 Aug 2024 15:55:19 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jt-0000000DKuW-0VjG
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:42 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2f3f163e379so15125601fa.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340519; x=1724945319; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0EG858HP8in5mb9F5t+mQtv5qilS1TpleLRM5JdIQFA=;
        b=Onhb6CUnTmeA3urj5TTVNP7R/iy6xyCySR57ohqZKb0hA4uEdjjvXMVkY/WwN+Zn/R
         rs/V0yoJBYJS5kYo/viHxqT2vcYjlLCv8YcdNnofG0W1ebLKB0G5O8FYAmBG8/GsE//Q
         WIWwPvcVDWh6iigg6xhYwTfA1c+YnsYilv3Fmjn1YFwLYBIdu7LkHEs6lFUsK9mGtpIa
         4evQkYxET+lWXQdjuKSbLTppeuLwS7PYva6a/jEWjXpgDHSWwsaMe1wJO1r4L+mEswxI
         d4I7NpXytSDIUJt0V9dAEYeuSkJEndy+k9EIVNrAY5kMqSQXaLj1mi6bG6p9XQigHPA7
         S1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340519; x=1724945319;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0EG858HP8in5mb9F5t+mQtv5qilS1TpleLRM5JdIQFA=;
        b=uB1Z17zQopC4H2tQziW9v+KgWmLaGZeed+SCR9MCo/okb8RKjTS8kh+5dwHYultuBJ
         dHs1eeevYOe39zKjLA0DOtchpYu3BBw77kj2XEcZPHsS/e4+pr7MknBcxdvrcQWTkiXl
         tupG0nvaujumSSyB88BdWev3QYy3jvGjEb6UmYttxVSvjwYvnEy2KbuFzo4e0JBa0Sgq
         xZg4VzRP29ajr2a7EWGrddfZaqotbgESpdoorg1S7+WjHp9crExUXHvOuLdBQiBwGcuE
         rBdAO2r1FxyxO+7RrUkrw9re/Bwt/1ktNuTIISCcZVEhsulqvo/wUHsOsHE7KUQCK2m7
         oGqg==
X-Gm-Message-State: AOJu0YzX1EzbRbUSBNJgnXN96hFtOI4JGHxpvFgfJUikRdt0w/WYlYj0
	A21mW1ANd1TVll4Wq1PGF316lY+pzwk7PL1Itjqo5AKH3T7gbN68IeDE7dC4dnQ=
X-Google-Smtp-Source: AGHT+IHayguZj8Wa8CKYZZKYCnPQ7ddSFCBCknAgIFfJUW2xU8Ead14TNkyeRYtLahQze0o0yKHgSg==
X-Received: by 2002:a2e:a988:0:b0:2ef:2677:7b74 with SMTP id 38308e7fff4ca-2f405f0057bmr21390771fa.41.1724340518917;
        Thu, 22 Aug 2024 08:28:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:38 -0700 (PDT)
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
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 11/16] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3S phy bindings
Date: Thu, 22 Aug 2024 18:27:56 +0300
Message-Id: <20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082841_274842_2AACB486 
X-CRM114-Status: UNSURE (   9.97  )
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

Document the RZ/G3S PHY bindings. The RZ/G3S USB PHY is almost identical
with the RZ/G2L USB PHY. The difference is that there is a hardware
limitation on the max burst size used when the BUS master interface
issues a transfer request for RZ/G3S that is configured though PHY
registers.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index f82649a55e91..af275cea3456 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -13,7 +13,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: renesas,usb2-phy-r8a77470 # RZ/G1C
+          - enum:
+              - renesas,usb2-phy-r8a77470  # RZ/G1C
+              - renesas,usb2-phy-r9a08g045 # RZ/G3S
 
       - items:
           - enum:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
