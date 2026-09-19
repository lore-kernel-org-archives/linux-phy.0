Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10310C982CC
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkekRenuAsJhpFU2uDvgM2TvfpEigWEYeY3rP/EPu8I=; b=Lm5ocjbArk0dIG
	ITyHA1UywpEV5xjD4dVl7FO2XmLUxYlTrkXf0iB4tmkiVjqtnFv3B8BL7Lqvx6jGwB+Iq5ZMq3AVJ
	0jF+nK7VBlBhwjcOio6IXMaVFIaqDCBAcH8ZgVLLfoj6dpEiUoQYzZx3z8mXttvLkdOawirQyjldx
	RSmRqM4bD8uHKWIAgucS2j5kXNHrqN0DgSNFc1ycx/X/WMxG91FbvVHCTXoEpJUXJZ37q9NUzzlAu
	iioFyiysgpw5TjSAw0Q+3CQnJYERDdgqoLMHAe1DdBHNh5BM3ANnnJ2eoRJDKx9HUQ1J2SuX4BTAu
	rmhfzu4Q6JOyyjnDzJUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uY0-0000000GGs8-39Uh;
	Sat, 19 Sep 2026 12:52:04 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uXx-0000000GGoh-3162
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:03 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc53988d9f3so807382a12.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 05:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822321; x=1790427121; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=WG0ZlNh2tVttLThqTlkqbuQ2iF2YklFJllKmdQb5WXnnjPbWT7nVQCnj6j9GnEdWxI
         KdxqNJ95nYOf1w5nIq8Wu+/X3L92ETDGy2h1+EXoqHxcEuy7NwrYVcLrgUSF/XFis8Rr
         c5P9oB6JW0sx+OZiRh0BJ+msNNiV/8BnqV5UCIO9neM1/0iKyuUdlUCnPYNBUihWK7by
         CZTsOIjrE90OFJR+LUDtINq0XqKt6cPN19AdSb0jIOwqxkK3qaeRQ/WREzSOXxAnwkd8
         +UWTx6katJqevn2sYBYcqiQ+c4fupMEdPFn/hboKiv0KCinxFyy9TSYpXnTb861lAgiO
         ZOxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822321; x=1790427121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=AYOoz1F1iHqFBlOFT1rsVsquWrBDpcRIgd72x2Kz+DRC3EvT4TrW2KN+EVVrxWrfrx
         19FSJYk2RtkpivdE5OPlvdG61b0mdXyLyHEZxDRdz+S1RzOKEooYk2xZ7+PPE9YGax8V
         jLL6issKqP+OUzpqaWvmALci4RtYabvQO1sWFosWFuu7ogED0B3jViP2PJFIkao7VX/8
         b9ClC8VdVyffTVRJgcl4DyTygZLu0Lkmgk2vXvIM449gs2fMYMsgkMgHG42aD9AqSqK1
         EAMYn9kEwnOVstS89uVc8Xi+6BPEUsG6Q/TtCMT8kJEgzt0JZbVJHgxyA7teNM6O0eqM
         Hbrw==
X-Forwarded-Encrypted: i=1; AKwUvBxwhANlbQLkMnaqVAfN6YYotienaDs0FIXw3EaFC69Q7NyuhkRofOs1rqE1XRDNeM+T1QZHXjhWP1I=@lists.infradead.org
X-Gm-Message-State: AFuF++kb63vcm2EGk7ZomjA4802gXDdSb1gRo5eexz+25sBBwFLFKH2o
	VXsmy9YgAxHIG39bV83X+pXZJq1iAPiKeqw86DJxByrX5/8DekGgt26n
X-Gm-Gg: AYBFou0QNGiE+GcARS6H1coQpRXwB7niL8Xi8ize31eQEZRCR2VaHEXupVrviV+IIq/
	wihfyMtEkotHP1t6XbIdaM9dzhRp6ngut9QT1LO9oXFc8bMjY+tUtIDcwI9q0WrWeggIPLUgbAZ
	+eAd2EH0D2OfYGW8JbBfZKvasSdcMea2amAKp9/6rvPtlz8kYhZIRwf+GmXnxI6r9tHzPdKEYM8
	IoKjUQwimZ/26hcti4hR+tdY2Qd8RCwoC8PeKMF7oi7yWB14EFqxV0nblhZmOii65z7egbtPuFR
	U2pirbuxVbXZoMSMBa6M+qzlZYUkgGNnNicTT11rF9X+7LJ62JtN4l0lOjU+nfEFWu8lyZWHU9R
	4XWTHUF0PCf5Quii5gg1O1puE5RmqOtzZHLlYHmMSGlvtr5RJcWHXP5z1k8aOn1wtiKOANqUMRY
	q3/ZYIFRNSskOnOGlmC7u/hfgemrjGyD4s+/jWhn9hDekqNyYrL19qfFJebBWuTWxmgQdDWg==
X-Received: by 2002:a05:6a00:9086:b0:878:3783:8a82 with SMTP id d2e1a72fcca58-8783783932bmr1483263b3a.52.1789822320744;
        Sat, 19 Sep 2026 05:52:00 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.51.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:51:59 -0700 (PDT)
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
Subject: [PATCH net-next v8 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Sat, 19 Sep 2026 20:51:09 +0800
Message-ID: <20260919125119.2107089-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055201_776821_9D3EC792 
X-CRM114-Status: GOOD (  13.27  )
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
