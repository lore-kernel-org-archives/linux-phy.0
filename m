Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8D1CC88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 20:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=FVoshQTkHR3X94
	99Ipb7AhR8B2wr/lURWwBD7gqataA+jE3Kv3109T+lPtCiP30mhjwxIMfdkxCPzq/+MwIDnKj7qRY
	mZwoU5l83ojBJsAD+xEbaGGwaDaaURu9jXop+r7HtFrHk6Bf2cMJJ/w9CDHOOV2+5wqYnPeJnLSJv
	OqvuiUuOrrlxFjoQ8o8TGGBwHXJifIad2GZU7mDzo1aoeqz8V/QPJ4vdQdyolJPaLgW7B75x3bsTL
	5rSFPFNx+hSqVjJfwjTiCKavOAyzXW0hm/A78ghn7hXpBXUs4JeMQWM/s4uQUtA0yv5V/xSh+srdx
	u5vRcUQuDxPfdOnTDl3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J0y-0000000CSXg-1ZEr;
	Thu, 17 Sep 2026 20:47:28 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J0v-0000000CSUP-0o3g
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 20:47:27 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-398b9f722abso39495a91.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678044; x=1790282844; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=Rm/FDPSzisZPQBk9Qw8VFbIsuQ2K/6aEumKwoTm9/q90MpEWPwlGRMDydgXP1ip1w6
         admFkAfGnYZYA7/AU6wUO8SZFPpQcw9WtMlIZqCg4wAEEfRr7qPQLqDc0zo09jDsJnE0
         k06lHHxS13RHICmNYHXYDsNTDsc58Qonj9fRRz2MYJJJy8Y6oAF3ProDF1bGpFTZAoDB
         3PAt7DB9p5FJ2uq/OXRj6KKyoKHY2BEBmWRtnTU5E3XPdxB3JjNB7GDXzYuD4j9AUpfB
         eDLlHoktPnoZnbxgOjtEKXqL8+dzDxW0cJRfNknt38FzhTPL5LXKy124CIgR2dTBjf5h
         BA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678044; x=1790282844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=qLaIxsQv6Ubp6J7psugB711KE/JUPxBYeIGxrrh85ely9PYIb4X5ekNaBcuPX9HwVA
         6PlEjovCGI9BK7U0XuKO0g0HOnFdFWTnDZrZygCvpLH2iY3nFK9ap1ayZuO/IJN8kmba
         KXyPweBOVWc+GE247EgbVdUim6vT79dHv1IjTOovCgZhVUBPYzbA2bRoRPpmlmMb77oo
         A0ro6zwekbjeKNAGt41FGbWjlVItscYXOylqHSKMk0AQTdRPjg8O5T5qHZn0gZ5MuVnl
         n/9/lUz4rQg7uygvhc6vaxIZSobOZiAvCXtH9oo1wbn4Du1zjVPrBJ7+Ceb2oRObJLE4
         AsRQ==
X-Forwarded-Encrypted: i=1; AKwUvByRuLFy2MzI3rgwkK0LHYWvd26OOdzmQ3ihi4ZdH98Qrel1cCmeU09uFdaaea2XE9nBy4al+Bjbaas=@lists.infradead.org
X-Gm-Message-State: AFuF++l/eW3hkenDd0/sOX5MaTXT+Tg3a2yA2PBYmaU8OpJyDDiQCQwi
	z/9JGYDaU94yWCFJ/XWnlIVKZu/O1dyisvx2SY2O+2VXUp841Ol4lgaR
X-Gm-Gg: AYBFou1Ub9Or7jCD0givetDs90wwfZJGQdts9FlNUR3PJHCWjHrk7ewRac8cZh/eKz8
	CWXXVm7CeMz/BVeZtKJRpAs1ecE+fMttA95zrndzbqVnVk/r8eWpci0Tsp4apRdDLIaYhkIfhvx
	ZcZqT93a1wAqx5vNnQHtZpveq50V3avSeDbNEUOddYD3lCPdUpjAFW2tkTuiJ24kKf7Gz8ijm8j
	9RroIFS4A413r11lpQWTz7Qab7KYRc91jto3EfwiA2ZxzgT6mz6ypJ8pxECMByyT4h+OZaPqDo/
	KwXLfaRnKFJ4pgiFmCik38wohf6eLOGIMFgap4KtvQumN+03KKmyBR+EZbmyL71gVKGet2Dd2rB
	zNpyRMhFPfv8hmiEDqE7yHFTUw3THRswJTZAblmSxiqOPghmNCFN2LsC2HnhBSdZf9AqcbY1tyc
	qeQxedyeOY/+wUKmDt+yycQ1HcaOtb0ORMRc6H/QevtqTJR/cX285egD5HjGd9Syc4Hfh9cMJ+L
	Mez4LRH
X-Received: by 2002:a17:90b:3fcc:b0:39d:efa9:cd1a with SMTP id 98e67ed59e1d1-39e54d36eabmr634669a91.4.1789678044538;
        Thu, 17 Sep 2026 13:47:24 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:47:23 -0700 (PDT)
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v7 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Fri, 18 Sep 2026 04:46:13 +0800
Message-ID: <20260917204624.2427486-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134725_234108_49C6E3BF 
X-CRM114-Status: GOOD (  12.66  )
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
