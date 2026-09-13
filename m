Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8358DC88E63
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 18:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=KNXPblxITNRSbd
	sKfpdbaAyE5GmaVwUy9/hvQHw+0ChzS8O8+UefxzSntCjBt6lhPJdpPKsbxDFxkyLfZuTMXOCSX1j
	6gIduVJuyYen8R/aeMmrpfW+rljSDhGHSD8PrVoU1m7qiRTNZU+nmO/U1hy4pWDoLteI4HeOqktTI
	E24VbTg+aiyO/8KhXRve1o6Ky+wjQqunSSuza7YE0C/2Ymh/qhgDarRU/3IamAiwSjpwCAJvDCvCn
	rFBafWGPMnejGgBjX1QyeZM00gQhGCaPsSg568VZb41SIgLll9UaYDVxqzudezg7O1LKKty0jeCNw
	8dG1tJx+EDWRaJumtGlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pQl-00000001wkK-0var;
	Sun, 13 Sep 2026 18:59:59 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pQe-00000001wg7-2r6U
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 18:59:57 +0000
Received: by mail-pj2-x08.google.com with SMTP id d9443c01a7336-2db33361b2fso18525085ad.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 11:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789325992; x=1789930792; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=N2DsRkli4aC48ssaTM+JS3ZMEYnoVDPLrBldYLLduNNe8HyalXW74XFiSDLnZFIpGn
         gaDxHcBKdjzj3qCbdItf69xOLYxYz1ihDPEKOGQkolc3Vhb6DitIorlh+JWSaRWxcy6u
         3QZ0iZyr12s5dNpz1crq9nWAgLgbUDRczlYxhcQOz1Q2b7txrD+Hq1b8Tl85OJ5ueBff
         1hQe95xgMjdN4Vhuzcs9rg4jxCo06ztX5KbJMblStmkPhooNX/iBY5HqI1WjzRYmHjvO
         mHOyDU6Rb+zLUOESMYo/mUqNgEmiIsj2fXnBMqPBfl9vjJba0bldntN0HoUXAJVMy9Cn
         sf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789325992; x=1789930792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=dtheT8Dn92uIowUCiwW9VswOOU6syrEN2X3Tbf84ON1lVPp/JFD1sTcB+VpEH0gPff
         p1or6OemtsXLNImAYboRenODoJIKB8Z9HtPbFox3bkMH7Xama6uLx1fQV0LGrGGphE60
         OeiF2+hwjPUSr2n/y3Wg1mK99G8NgjYMATI36cxhC8MVv1Sh/Wwt7YqQptcmyCRpXI74
         36/1K8NpghYoI4Z/CQB5M71e7Bbq+nihrbMAU3NiTjcBQmrpzc2XrlJolZMv7K07pu00
         HLjiL2g0bKalOEen4ijYmMeBiToo+XIhLPYKTDl32iM60FHsKvPu/1rhtmcJ+c+fG9Ly
         4vvA==
X-Forwarded-Encrypted: i=1; AKwUvBze4MTHXEhld3ZZKxJIdXVrRCrjTCs4kgkf8Y/4uSjCutze5daceoyFNDrmBywpsRZfUdY6qlHyWYY=@lists.infradead.org
X-Gm-Message-State: AFuF++k8CLyr51z075f7k2GUXdrVVPYQkeyYAFjGVYqNIoWUDi6oOuOf
	kYzeQqRIB1HkFdP089LP6qoNbuUGIv7amwjeIoj96Kb/xOrGplGkzJyP
X-Gm-Gg: AYBFou1cNbjZd3wJlicixXs+qRvwktiT+PXpp7BoELgMkRPpwWLKLagCW336NEdjuH6
	oL10d4QUtNg7HVj6iq2Y0tGIlzsauiB1Ld8ARiUsU4BAWfqYxuiLqDY/K9dCqiPZb+7lLto1HMg
	QbioXpM/t+Q2SrmeZMj7l55+cGVLryAQsVI7A4ggixYwYnvG3wf23dE1W2LmZLn7T4pB4tZC5tx
	n9kTGYcDzA9DZNVNH5G58Eh1j3GBjKQojT10/l2pwqYBki87CnmzVuANLldxhyCy19ZKQjfzaS8
	Utr/EE7THQFgi6Wmemz09ctIZKW+XXz7TrPLyDUeDVmRyBy3Mgm9doYLSxmrLwfbGIgGJNhoaQR
	8FKR2+SownOHLPTKEAOqm4RSzJT7XYb8a1aI7/i1tEcRCzF/Ts+vc7m25yJdXb8op/2g9Y2AknV
	iew+RBtLhH12RP92PSqG4ecc2jqAhEUSBJWNB0CuazUZrB+4+yqyYGm53MAC9F1mhAf8dfZw==
X-Received: by 2002:a17:902:f54b:b0:2da:f1b1:56c4 with SMTP id d9443c01a7336-2dd2a1c9d19mr243912565ad.3.1789325991655;
        Sun, 13 Sep 2026 11:59:51 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.11.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 11:59:50 -0700 (PDT)
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
Subject: [PATCH net-next v5 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Mon, 14 Sep 2026 02:58:37 +0800
Message-ID: <20260913185849.907479-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_115952_738546_BEEA33DB 
X-CRM114-Status: GOOD (  12.81  )
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
