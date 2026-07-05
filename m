Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 233FEC43602
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 07:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6uYKZAgwTgh3PUrQCVOFJ3YBNpDsDQn93bIJLFAd9Y=; b=wBILM4wDEtGpsS
	zcdCW6Dg2J53ew0umkSxN+4qYNmuuTsLxaXpzlXUUO8HniKT+1DvXq2vkajCYv21mWgh3WXG8tCBB
	bfhf/eWtb5G9gdPonTtiuctbmn5UQhAqZnlB7is6z30cqVN1cuexaQMPMs3Ahs0x08aIQ8J4rh4Sm
	rYbZeU/G3ZzxdObVmbv/hBJ+Hnw3CBW4qPcDH6hRxh+PexOYQijwZSV2Hn4pTTYo/K6XLHbZ68KwK
	m0pQb3sa7O8+X1L71uu/P3p+59o2CUrENzifc3+PgX7MijuOwWGOdvYo2QXnVb6/0vsj0Y3HtyLiO
	w2VJfDPDb2pe/eYKeevw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkU-000000094gS-3mUo;
	Sun, 05 Jul 2026 07:58:46 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHkS-000000094ew-0J3Q
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 07:58:45 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-493b691cb44so12389825e9.0
        for <linux-phy@lists.infradead.org>; Sun, 05 Jul 2026 00:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783238322; x=1783843122; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ii5elS5NgLsQv2qqwGxrcHkoRbkINQLFmPJvl9kn5Xg=;
        b=msJ7sUEd4z/we5nUHHAP6l7Hh8+QYsFCfZ9/HqXaf5TI7hM3YCkjSHGFT7ZrvJYubV
         ooOB/OaJAmHD1QwWVWQXwOMNPcVzBUzU76Eh4C5Cv9J4Jl5AOJpdXdOE+mnoUSbKn1EF
         37kgWmph7uw/Tcyw0g7zcK/2hLbCp7DU105oBQb1FBA31KqU6+BZom4ULTmlZEd7Be+8
         0lgWrM9aHwbNeyd/byP+laX1ko17fQkfbQY/WRCEPXuFwTvIkMa5fQzz0lxDr9XwyKd6
         PJLJqf0W0tre655se1BOCbs7eZX/F3ZTzG1z1jFSYBh+bTS2iUgSsZeKMT5EBsr0QtAi
         fShg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783238322; x=1783843122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ii5elS5NgLsQv2qqwGxrcHkoRbkINQLFmPJvl9kn5Xg=;
        b=jFMcXwJB1mk64UjlKALOaldGssXgRGrc6feXSAFvQawRRw2UhElwDBjVPZYqZ6rcz0
         WPrcJmnTrn39Oh9BuHALlTMHpkZwOD7xyKQ1vEyVoqDooaZwWl0qk1i3zH2+saRAhoBw
         G5SLpxEqTMnD79Oix6lNT2r+5id3Mw005W57Lty8xZJQ2mnt6xlMqDAEqK8HeV0DJq26
         p2GbL2Vn21KTYflKH4qaAF/JMeOKyQpZBE5N74SNAqskuZE5KzwaDfULjmPTv+0ZlwlU
         IW3ECh/0GeEqhA7NFBzVDaR5sTkk3t3/aty5lE4+qyqwmgywPcVdOB2WFXEXzpl0sqxc
         Pb9Q==
X-Gm-Message-State: AOJu0Yxbrs0ZMstoEygdUcD317OiM5ZFpRk5jg7Pg+8jHJLYZcyRh35n
	FDKf2pzF1Wm69bLaAS3ETtcUhmeXouNEDud5N3hBdqKAW0FzMxQL/8fd
X-Gm-Gg: AfdE7ckfRizH8vOxZD2Ksc7WAqWfB3oq0AQl3lNkI25lBoY7VSaBm5QDWiyRf7OgBCa
	tyTcn1f7oCWPfJfLj0fgNryWj8EbJV0dbiBdM8QLLEaTlY7XK4BVUGQp6CLVOmOMNCVUdJO5N30
	Lh4ctJA51Sm+82+G7WIiJNPwREFnt2W4c9QULBnwGtx0H65HjTwgMZiy0fQWSUASTAqhApzaFnR
	LPzU8tRWKnrGKa4oj+JAwOVk590QeIAAm0AVCkC8B7OSbDM1QF3DIPK20l/RFpaUs/IscHPeutE
	wbyeW993yL98kWJdDtYyqbCJduxwQ8e2UOLKZY6jg9pwNoIwGDmBw6X97CAYgKJ+3hdCsEZkT5H
	MpBWcIqZpKMDfoyrOC9BeblO7LGeMUCM0+lp3Vydi4ciJpOR93GcNAhp0/vo35KGoSiwaeMq90D
	uaDt9XW5+lfP6n9ufhQAh4sTuy2GuFujNdWQ==
X-Received: by 2002:a05:600c:474f:b0:492:4a70:faaa with SMTP id 5b1f17b1804b1-493d11db16emr58211645e9.11.1783238322443;
        Sun, 05 Jul 2026 00:58:42 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c63bfba1sm305769765e9.15.2026.07.05.00.58.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 00:58:40 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH v2 2/5] dt-bindings: phy: motorola,cpcap-usb: add chrg_det interrupt
Date: Sun,  5 Jul 2026 10:58:06 +0300
Message-Id: <20260705075809.1793784-3-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_005844_230796_DA6CFA4B 
X-CRM114-Status: UNSURE (   9.35  )
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

The CPCAP USB PHY driver uses the CPCAP charger detection interrupt
for DCP detection.

Update the binding and example DTS to use the corresponding
"chrg_det" interrupt name.

Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 .../devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml     | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
index 0febd04a61f4..1a202cd29724 100644
--- a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
@@ -28,6 +28,7 @@ properties:
       - description: sessvld interrupt
       - description: sessend interrupt
       - description: se1 interrupt
+      - description: charger detection interrupt
       - description: dm interrupt
       - description: dp interrupt
 
@@ -41,6 +42,7 @@ properties:
       - const: sessvld
       - const: sessend
       - const: se1
+      - const: chrg_det
       - const: dm
       - const: dp
 
@@ -91,10 +93,10 @@ examples:
         interrupts-extended = <
             &cpcap 15 0 &cpcap 14 0 &cpcap 28 0 &cpcap 19 0
             &cpcap 18 0 &cpcap 17 0 &cpcap 16 0 &cpcap 49 0
-            &cpcap 48 1
+            &cpcap 48 1 &cpcap 13 0
         >;
         interrupt-names = "id_ground", "id_float", "se0conn", "vbusvld",
-                          "sessvld", "sessend", "se1", "dm", "dp";
+                          "sessvld", "sessend", "se1", "dm", "dp", "chrg_det";
         io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
         io-channel-names = "vbus", "id";
         vusb-supply = <&vusb>;
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
