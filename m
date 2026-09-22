Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C12C98302
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=FSZv2rMU1/18Lw
	0gbbNtXQd5ew5V2zjdQUN3qs8gUMicHoFMbk9bfSCbwtFEOaMEjb+RN2XRdnjgOGFxwMItZcXdKWU
	fwWAvos6EXOB7aRloM6qC7VFUog/42+KddXuK05SONE5BrEz0kPx5drfUUF2N/Ro7vc6Udu9DIGKv
	7dGGbwx3hePuCWfr4EXtJnoHkMYkjBirOXBZL5MrvzwGfNa73DdOZzb4Aek+2ibzVHm8AqcQqORYV
	6S6FB0iAU5nlbgd+lkh7qE93a8mUQshHjQ9lYqzG/YinivkBJgZWD8r2aEPfS99aDzpVCO5yhzq6W
	+Wt5Yva1NJ5IxDPnkWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96il-00000006Tox-1SVt;
	Tue, 22 Sep 2026 20:04:07 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96ii-00000006TmT-0N2r
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:05 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d952ac253dso1213175ad.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 13:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107443; x=1790712243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=jNJp3jVlce8ea2G5GzlTtotwzkdiaTsg7eHrS5JfGjtUJv4TtsO/Bpru4yoDAQRy5b
         EDambP9SH6FXRGOozzKhsK+1/0YaFZTebEcBqIxPvsvIu815P/O4ghDX/k9oGsYkhXFw
         Tz0NBc7imlqXvTg5Pc9CqwrR17yguALxKPeCX/H7l1dLwAnwno+Ha6qBq/q3+QiFv8z2
         pe4IibOcvqFten99ojQbSdo8lINRcDYEEVXsS/77bqBkKnxr1+h86LLqxnilSCeCpIK4
         P96H/wcnyH9VM6Xhq5x5uJi5hLL7KqoYN8B3FrGoXQ/e4cHRts8cVPdsBMHPBy8mO5jc
         BlFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107443; x=1790712243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=oxlDZbTH+jAXvHbjIfzL12kles1T2MxKRU625k15iRIfHdd+U9TpdiKdYDqJJc9JdG
         Um9xPlKCHqMVoGqAt6SEn8YC+M+fSzWyp8sydpDjVqwwFt6gksd0qWIe9uSDYWymF8eo
         ISg5Fk01u8VEfxPZh0jlz+x9QbTMeGuZvNoCd2N2s14Qc4IgT+Xw5JS+Lht2/SmBQWCK
         UrRsIXzUtKfGgMrc2QAE3sUlN7rVRyvomDZ4YV2Y5DdXgdzXlamt6cx6gmgqgzDf3xvI
         2Xr/S8xUYmLiYjzyHFrO96E3WRB68It7vrPt2j/U1QNzg8jobrn9OaUXlBf5vl8d2LFN
         C6oA==
X-Forwarded-Encrypted: i=1; AKwUvBwLtVeNCwLWOfNuGDWaOI1MLhd0+jMGDaXYtSh4VyyJO5cYNMb91S55/iKqSW2jmL7Qw2+iVvdW2dk=@lists.infradead.org
X-Gm-Message-State: AFuF++mlr0OTnrUpOIItq/RWI4cftKquD9Xuj19yGNQUoM6leYU5oMVw
	/eoa/B6PwbzkUHRsXEUs3QWZ1crdloD+GuaCiNpaRE2auyEwFi/Ub3TX
X-Gm-Gg: AYBFou2VAHwaypystbsQyZNsXr1cQYR2FYYV0sFZo/3sbMBC6Qdbmm+RtA9uaW+F08N
	mGjFT8N3CV2nYAP6Y9+iWJZ9BPzXgOSne7q/5M4c2G/F2PiztatGpkeGhjJFDX21W4kUXobucsK
	c41DtAJy69F+spIWWBdUn0e435AZQvFX1CPKbZVmRB6umtqypwBuTV/Liyx1Ro2FguK8Y5aXajL
	8Brdc6GqoCWB10vI062vqbW0ZZ+yrT7FjICgArx5sz9mXpTZb3N6fgLNmkSMzNyfE/BR00eVQRr
	hKm3DOdS3ziTzL4AjJB0hEU+liVvL5ev7Zd4Yey0mG0yQ8B8YBgx9GyqLg7yvE1qBhLDO8qmswr
	MQsKzJEbQkkh+FNKu6kBCA0pJ/41trNUzMsawSiuAkemQGnZqeuUqMX96nNS4uDns/UMJ5Z7CmC
	++ZiQSFX8yGGyLWROTWtlQcCPpgBvGnUBx3pQYuJ3QqzRqA8IOAXuibdg+NlQ8lvVqy14/jA==
X-Received: by 2002:a17:902:d4c5:b0:2d9:68b7:c324 with SMTP id d9443c01a7336-2df69d368e1mr4567765ad.3.1790107443277;
        Tue, 22 Sep 2026 13:04:03 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:02 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Wed, 23 Sep 2026 04:03:26 +0800
Message-ID: <20260922200336.2201212-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130404_121667_81AA452B 
X-CRM114-Status: GOOD (  13.11  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..8e898bce9af73 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 1
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
