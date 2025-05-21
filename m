Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2FEAC54F47
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vff+5LlGdh0xV6s4itreuOaTaIi4WakICU7ZJ7H9VE=; b=Q18V5RWtj3Nsqw
	US764ioWp9IiujxDfB6l0tS1J4fxUa747DXHd9/LpW2Lp+HSN4iA9XJq+RWfAPVZ0/dxhoy8wtrPe
	ANl7o7dh5k6LULNtYSxe0LoHWIR8Xt50KeSllScQbhrc/qgFt+zFOZjFKUUpmrtKZXsEN8RfRNKK2
	BtC29Zq5rbmBFSMXpWLcOaOWtx+Kw98wA+S57nmaKu/YKRJcTyn21kJQDNl7MbVXIkW9cLaiu6dg3
	JYmXiYvIy3I6lE3L/B2gpy1LySZqvVzBQcFRjNgKA89k82FWs3X2gr+v444nbmEb4KPrzoZ38ZnXd
	WS8swuHmF/J+DKBkpggQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNc-0000000G6Up-1u5O;
	Wed, 21 May 2025 14:25:12 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk9Q-0000000G3f3-2BKD
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:33 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-ad51ef2424bso1050972366b.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836631; x=1748441431; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cl9iumKUHycZw2LuiJs/rBHFbGkhee2I0sRJSJxgwN8=;
        b=mHkQbHSzIpaO0zjnDmz4iuGpV4Grmhf+Jow9TwNmTEvCYTmtihfIfA3+ARhT4tHx0Y
         7+m4Gk50UpShMkuGNVv0+RW3VjJQYRUdphBv0xZPkjte9yQ9GeNO972JpDvVFT6RO2Yj
         hTCRIIUAwtysiS3ITAO7LG4Pxmqj8Fwr3883Hxh0fxMdd9q/nzAkXRYFGipFjRidhB4/
         dC8l+XwhZh63VEKq/JTecrKI6NB6tOO+uf/QMFl8VeOgJuybpGfUKeDE1/pIglBKg/l8
         pJwkb+iRt4TiqLHj47hoC6ce68gc6v1vtLoy3LUsrq7CECsXImBl21ifH++IuzMB+YJa
         7yaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836631; x=1748441431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cl9iumKUHycZw2LuiJs/rBHFbGkhee2I0sRJSJxgwN8=;
        b=voS8LLVJMBJnZjck/CRzOVex9cJ9fx07/WYiDasglprNN5JUjeO0SOXqj+auS1YsGi
         SP9fZRQrkZuBju2tYf7/zDhaa3N5e2fgol1uoS0hcu2PMMZl3dZHMIQ9hPBkridIINOr
         fAgylCpx47yWHceyTO5yOE7EwCyKVRMf3VqynO0aB+Gx9vHPlUe5jIxIdv7SZIIt6q6r
         8ZfaqNxbD4pySH1qaS6nYE66963JBz89/KtmGNX1lFJf0VkiaurxPr4v6eEKqRG0I9A8
         KGoDFcAjGfnOUqJakaUjCgWbpls/7p6qfaoHHSgEJHW1v9+z0P3/5wXIzfJzTV9pQ8Z1
         Gm+w==
X-Forwarded-Encrypted: i=1; AJvYcCVDKinw3/0r3nAFpPmWq6emVYH6vLCiAkV3nUEivn2lIfYvS3pDIk0aJ2N+qi1wwlSqSEnwwunUrH8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCddv9/4zXvvgTgR/Pyp+I21YXuP0CsOA4iQdYWRYLBhVQw+G+
	SYK+YH7BI8yS9AnNVRC6T+JwJhh3LJQjIrj/tPJ2veX4lH4eW0isHH3u/B6720b+yJ9l8V5vgQT
	YLF6C
X-Gm-Gg: ASbGncuKP8tZJPUQdm4tsT1QfHMshhbsWmqG722Oq3MWjNQAiMnrkUixK0yK0piH9ZG
	xqEd/X6PwLirgBharrPvDQuR5jpTlIosa2H1R9AJkRPTKOqb8RUI2YbR84C0a6vmi6Y9Y5Jxtx1
	PsSPPu0uPR8limf1WaUotqbsL6lKmho86VxUPyTN1WNQ7AYyNenSrxb54LKD4b59JO6nyK0kxU5
	ara6UW9FXNvF8/hxd2djW1jDeMOOh94cpA56+OqSmwadyYJluwGX7ii8bpdQZdgdZQZkrab1e3o
	GvBEq4upvkHCuWlqVsVjr+0qGppbicbLbaJssFyL5INPC4bRn0jq6ZpO6gxZnkppRwr8Lw0Iymq
	+kO/l
X-Google-Smtp-Source: AGHT+IGD2TFDUAmZSCVXr+Ck8MJMzjDFoIU+oJlf9NZINhEoKVsrTuMXHWv6l6Kj+MwSbuL8IYJrfQ==
X-Received: by 2002:a17:907:968f:b0:ad2:53fc:a884 with SMTP id a640c23a62f3a-ad52d549101mr2012530866b.29.1747836601240;
        Wed, 21 May 2025 07:10:01 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:00 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 04/12] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
Date: Wed, 21 May 2025 17:09:35 +0300
Message-ID: <20250521140943.3830195-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_071032_563692_10993939 
X-CRM114-Status: UNSURE (   9.43  )
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
index 2822dce8d9f4..12f8d5d8af55 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -108,6 +108,7 @@ allOf:
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
