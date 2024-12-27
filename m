Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62769E7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 13:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gzkc4CiiBFDYufsSqf4E0s7gYGRNudKA3YRYN9H61U8=; b=160rLogaMnDhqB
	kzhfQ647OVK5ff7jlqLBxwdQQccPN2gT/VUOYc/hMuU4wQKf5vRgYFx+XWhD4EeDyqJsaXnjK37J0
	lriKY37D7t450bVzEDuYFzQBueyIiurFR7rphfer7kG8Qy3ACrBl/D16//DvJJJL6TM+VlrYRzLc5
	+rRI7iiJntVg151Zl7GpQ9411aEDQZju9Zka5UR2bno0NmiO9t0X2M4JrTr0GyvfNjAcbbt14ZwoD
	9upCZefGNrZA+xLnjQNs72Q8eyGMR9UT3yPK3UiOubly7dhAUoQ0eSTupt6HyOO9a6rNGrkJ0UvLw
	NlreglkjsHptD50BPDJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRA63-00000000FI4-0a02;
	Fri, 27 Dec 2024 13:09:43 +0000
Received: from omta036.useast.a.cloudfilter.net ([44.202.169.35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR9yV-00000000DPQ-3vZg
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 13:01:57 +0000
Received: from eig-obgw-6002a.ext.cloudfilter.net ([10.0.30.222])
	by cmsmtp with ESMTPS
	id QmX6tUbCGxoE1R9yVtlHF6; Fri, 27 Dec 2024 13:01:55 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9ySttjYd65gFR9yUtg72V; Fri, 27 Dec 2024 13:01:54 +0000
X-Authority-Analysis: v=2.4 cv=Z58nH2RA c=1 sm=1 tr=0 ts=676ea542
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=hmV1tqqUXjKF9vlo9u0A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=obwp4Uet5DlEIt0J2ySMGAkOAswbOhVFXBB3XZ5Jqiw=; b=R7Us6umv47cGLWN96p+n2kuilt
	T4xbbAnWSMZSIFwCduIatoDSNmy+JQa2ridc6dRf8Pt1mykb3W//+qZV9GrvaC1lmGpUqAoxMuByi
	28xqI5wh/nMG0uwq6FLlG26edxLNAnTUeNbd6SgVKCV77g1zgM1dJ8TScb1oKAtfJMHB4BrCU+5BW
	e/GoPh0elRPKqPimnIr1g5WEBDTasHtPeG0hBCyynjEPRKPyusEVu7oKHwnLGAYCwx8irWwlwG0dV
	dJJeFsp1+bOgY5Bbbce+6sTRvwghy9bp4BaJhBoIQQWxQsmDGUG3vgWPGOxjdQ9/xCfDFH2+lICLA
	ehZxlm1w==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yN-002EaQ-34;
	Fri, 27 Dec 2024 18:31:47 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:55 +0530
Subject: [PATCH RESEND 06/22] dt-bindings: display: sun4i: add a100/a133
 tcon lcd
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-6-abad35b3579c@linumiz.com>
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=1081;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=CRTcqeTXRyDN3TGUF8oORkuSGchQveTRlcokaVR1eww=;
 b=q6BzgLGnGYveQnnmHVz6+J3ibLxVLdkr11DjytwaQY3TlWzBtbvPJD+B3rwNv9fc+tfY6Aece
 zCQBGTM8D6YAgqZUDnZE+z0AVaLKEpyEs00l4L7O0A05eNwUzZd3jNJ
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR9yN-002EaQ-34
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 201
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCuQvFqPsGmlxBYhQI8lHNTob1w9HYNB1+boxlOpPhoO4FcG0JTUEd9Hk/RJyptyXiU5wM0MKYEom4YSeDvajEMjm3awCfN1V5DAvpvnw9rJ8nI9UiiJ
 4rrreIiBBf5FsB6MfBbHEzGgD1N4jHPEZfib6bTnxttfto7HkJmKjQQPWezby+zu144KzEsmj08r86PyLWhMn5ysCy1oZIROdDmTKtzaJHFijoxVZ68eAOFJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_050156_046896_07976E38 
X-CRM114-Status: UNSURE (   4.40  )
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

A100/A133 has one 18 bit LCD / 2 x LVDS / 1 x DSI. All the controller
shares the same GPIO D block, where LVDS controller can co-exits.

Although 2 LVDS controller is available, there is no document details
for the second. Add compatible for a100 lcd controller.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index 6d8ae781c230..7ea45a0a2073 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -35,6 +35,7 @@ properties:
       - const: allwinner,sun9i-a80-tcon-tv
       - const: allwinner,sun20i-d1-tcon-lcd
       - const: allwinner,sun20i-d1-tcon-tv
+      - const: allwinner,sun50i-a100-tcon-lcd
 
       - items:
           - enum:

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
