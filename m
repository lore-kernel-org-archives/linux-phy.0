Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84591C982C5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=2BvT5VJC1THNt0
	/tyEUPDZoqVBeq4zSO+cyai8LuLQzlDrPq4e7OtcPj2yf7SGCn2/AcaJLjf9BlPttCtBDqlLElD04
	KObXL+poFgIadWEo0fHcdcGPqCKc+vRWuPrtV5cAs25lsUbc5iVgjR+a40S8n2BIO9oQNSgooTQEX
	Q3FYBJHDecVM3MN2VAgMCi56UulyazgewrfLRjs+KPQDFBHjXWIVNCF2BEVfmpSg+OQtgcw0YvXhm
	hYYt3L/mzKxdz9/55DhFZ6Ky0DHH4xfgUKJKwHd3P6YKTQXBNEyrotzlxWXc+hEEl1tC6JQVXHWv/
	j6fL96iaPj03CG4BKyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRF-00000006XEt-0jBb;
	Tue, 15 Sep 2026 12:39:05 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SQs-00000006WlG-1m2m
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 12:38:43 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-398a384b5f7so2726480a91.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475922; x=1790080722; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=Dn3gv86bCSuq8TjgCq1iRrWSrcSaX/dlLU5s9P8sr2pqW9+f3MDtIW3t2DAKlQGM3N
         bAW/Ja4PODCaT4T265xFJGOgCIsWjVY+B/v+fvk2lBRd1UE7quKPZwIzzTzF6TQvvLma
         DcS4EStbmTFQYKRzdZjb3KbC5b+OvtrR2Pb3Xie8U1tGU1F5p489Ed7InmvWhvgEffkF
         1S8y85qP0zrHqLfatOzDUfVUMQeYvuG/f9oQQ93sTwdoY8IdjtGjp53JjJt+zVd+tFLo
         LrkFsrxxeceqn+iPUBtPxorUkf+DmCOlQtL6jSECRcL1rvZOlnsf56AVZxI/7z1VaM2/
         ri4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475922; x=1790080722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=Gzyq3FJCbFm3pKG6kddf7OfgBc3v3ujK7arZ5GMpJ+O0efP2j8v7yh9X9CxM5aH7Qt
         tRQcRxtLphProRSAzf0j/DKwJ93qMFeLS1WgTOHG9bF4/8/2WqXUmMZWtTw9y+vfjy9U
         KFB7km1WIOxYcqfWHwzbK2hWjBTpuBA7lBiNGpzm0A4c28C9BYry4ab/qTfa7hpK6XrK
         u/It0PEPYinxShOrWnhmCXJrs5mVq2/il+2kIEcr+IA7s1KK8OTj3lsTXzcBbc0jh9YE
         rzCOoIp5uZ0ukyPxUVBSJS0r/u89sFcGLWeUPTTaJTXVcCvVEPGIhkoorFLwYO3hbxZj
         LXkg==
X-Forwarded-Encrypted: i=1; AKwUvBxnmN0DITVXTqBnf0gzQpa2MtfwT7ZSw9lfqTOPfdWfkO6YA0o+k5zYGmEtwpB0cbctAJf1k1PLlCw=@lists.infradead.org
X-Gm-Message-State: AFuF++mEuhInCyOCFqOmhz5h/k9mj6rjO0UpmSxbcID3AmIQ9gxyK8Ew
	CJ55dTo4iDpV208AnlFiLqEWW7cM3RUPylqbqk6ruBa3NpmkWk0MMQLa
X-Gm-Gg: AYBFou3zwwedYXKKR0UT8aL3YnHQ5JSDVkhTvBXiJHpqAIpVKN5qMXq5gGd6EyiDTUw
	TWqSv4Tf90ZkkodsnjC2OadhDD9QJ4ZUrpm840GJfcQmQ+OF0TKrxOj2qRaCTXwr/csckTw3A9Z
	aaS9nFdkwibxIBQ0RCIO87hiijOwJHTPWQ9LwPSqTsEwO2B3F68Z+G8ogFqKnbDRJP3A1HePvus
	ygJE+iJoXn4b85FoLuSSNih3alxSRwu7hwtXWjETBEDUeLot1nCSzkI9vDP1bmV/vnpsmT/TuwE
	rkUjR+vtj/sXKN0DD0u5FZAU0CMHVjw8Gs0DdM3IqMBVoHt8h5Lx1tA7aL+mY2OBtGbclGMerol
	ctqDVTj8iVAMCIm5jF3sd50jfe3NeR5l5P1hUsmQJbj0cZH3yhuqcwLU5ROSxXdXYYvmsJM9tyW
	4O0YdGO5xtKiEHiIqHwU32SdE8FWjghQXsxZM4VNT/WM1+xFXPQKa4PiS215ncUtejPQou722/G
	uYxdnR6
X-Received: by 2002:a17:90b:39cc:b0:39d:e54c:8658 with SMTP id 98e67ed59e1d1-39debf547abmr16493286a91.5.1789475921598;
        Tue, 15 Sep 2026 05:38:41 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:38:40 -0700 (PDT)
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
Subject: [PATCH net-next v6 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Tue, 15 Sep 2026 20:37:51 +0800
Message-ID: <20260915123802.1561724-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_053842_468379_49E5111F 
X-CRM114-Status: GOOD (  13.30  )
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
