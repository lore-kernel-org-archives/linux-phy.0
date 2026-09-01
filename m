Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BE8FC61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=lVLxTAeEsr7cNf
	ymz/YmP8D4wNLk4XiUXUr07CKAzZTGOhyOqVIar87OqYtHgpmTimv9a5Ae5mQAwIvN/tnTJs+5eAK
	QL+t9uLZxfaubivQA2gqGmPgA0O4TMpjGBwqBY1oPaVBp1kk+1mF+yASeMWf1T3LUmIufPuEhOQdN
	TgAuNN5lvCGl7Zc3fVpo9HNKZd9QZwB8R3hOQnaOCghpnW3EAOX3IUwiLlWTftC3btz1nDybJLp4M
	N28YOeWdHyp/0ePru3fE2Js6gavIu1Bbe96l81pQMIek3SjicShEpEmOLO4Z0R4tgtQIV1KgW9Da0
	HfFrj1fKxVqntNVmV8lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0E-0000000CPK3-46eX;
	Tue, 01 Sep 2026 15:02:22 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0A-0000000CPGp-0ud4
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:20 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc1631a57d2so2430837a12.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 08:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274937; x=1788879737; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=V+/dGm9L6Lz0MjNHzEsD34z/nhQxwSU4Fs5hQpZABZywyDkBU2f7UyF8ZO0S6PuwNQ
         4w7TpqyTbJKR6WxCpIm6zcxDmpbVG9UGrqOelR9wngDnksTT20WhnXLvqEiFpUM9p5i1
         u1q56kYTqXge1OreG/3/aV3hs26LekrMr9b35YAnv3eXoxbRIC0uSthkzD9WvTNBOuv7
         1IEfQTqDGmaJSxOGr8W+PxhGRULflK/GZ3nGeukuJg6XKWpE/Ezrga0b8k8wiYoMKfkf
         kIC273eJyke55+pm2RR4cDiYiankw6Drfj/2ZMBEulV8PzhGm1dvqfzGKdL4VM8xY945
         Dn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274937; x=1788879737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=WWHNZIg2Pv56TasHhGCZVSCwlXYyNdIzS+IzEyIEsjTzSSXGRNm2kWoJYEzdq73D3n
         ddNI1EoFtH9xaJQ6jw76Ydv/pUZZ9PTVuKH4pz5IysiDnvfyuA29gSE3F2kD9DV3ODMV
         hYGU1xkjTfCuzjQndxqcT6bQCmdcLRB6arI+HMMZYwG+NnlCpUSkWJZiGksXcHwfpjvF
         CLMEZYBHeq360LwDZFUGYogIR+Hf8mCkEZ3M49BUOnvsj1uh5yNkTrTaIhqGos/yxQ0D
         t6EIAZl3Jdihpf0XUWXibvUfFdDIXDcI03dNOcCIgOQ6nmXgth6+TAatE9pwqErg9V91
         yELA==
X-Forwarded-Encrypted: i=1; AHgh+RqRxc5vk7WaHjoHpJQu6+QJnpAOH2M/QPDCuWEOgQ6DzpMsdqkfZNv/0EQdcyu4SUsqrcAXNFnl55k=@lists.infradead.org
X-Gm-Message-State: AFuF++mkUXhmQs35RofEpSwvdtlh00714gopLxVgajQThRfytf1ISPNK
	OLJLY2pt21YgBhmWoJWp9PRTA6JXhbKmq9XZrWpM6NfRyGpE28tDgRNQ
X-Gm-Gg: AR+sD13qK0OxdnKsBkvEyKyZFASk/oAiuFIGpMT4z5XTg78BZy51uYu5XntWIjhVFub
	rYVP3WIm66Df9Vks0TgZLlBAyDbZ9hUU41DH2NzJlK6KlXiKtqq5xrgGTQ4+CjGGpauub0y6vn9
	77thB0rYS/AIRl1kO3x++/SneFQoeH3KQKYEppdbYukuMmlDdi4iImN5UTDm1eNG/hiNtTSZMH8
	spddb6EtjBaNdtw30VtIl0bYjp//tThwmUFxZSJc56fN/0FAp169xDZWWdBDIwkM6ds7jx5OYoo
	+Jn8MAk5rac9pMfKPCA6ovN4whAH8BgHYZejST7m2f2j9ClpUzi8XmlV4+w5CL946qONqNWG8db
	9gBLS10RZ017Go8Ci3ogDrLocSxGCTB6EqN214qtXEarPEyJ45GXD3yZWf7K9gZtUGQ0SaNNimf
	fyrWoY5s35dXhcsepeSUtUUGnEFtHDnCBkQN1MllnstAilLZY5uRgBMyqhtRo=
X-Received: by 2002:a05:6a00:3397:b0:85b:cf16:597 with SMTP id d2e1a72fcca58-85bcf1605c8mr9714948b3a.19.1788274935860;
        Tue, 01 Sep 2026 08:02:15 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:14 -0700 (PDT)
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
Subject: [PATCH net-next v3 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue,  1 Sep 2026 23:01:02 +0800
Message-ID: <20260901150111.141037-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080218_268815_6EB03771 
X-CRM114-Status: GOOD (  13.52  )
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
