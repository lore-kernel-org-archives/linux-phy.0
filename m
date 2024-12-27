Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B55EE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gzkc4CiiBFDYufsSqf4E0s7gYGRNudKA3YRYN9H61U8=; b=NDEO0v4355YjER
	D9q2evHL5HURaW3XnrkePN4PlE2TdE2hwP7DkgNLTwl9vaD2Mt44OQkCcg/JtQ4BsP1R+VHKAo3bL
	qFQYlC7+T/CbhuZiC6k1LDoa8c3emds00m+T5f45uyN7aJ1jX/f4Cj00YdRO6gTtV4roHvQlXf/0R
	h58FyX8Wr+3/ahbZnY2jA/dVOledroMgxUGt0b/1GcdaGXRV1pG+bbE7bx2ZQbRUiOjfeq2g1SZSn
	d4yCbnNrk54Lt0ZUVVlHyRIvEjXYxfPlsRRlPicARXdzjsncdY6R97TYhSQwh/1YKuUf+SE7sAbI0
	xZLlpH9DKWMatFy39iBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8Kr-000000004Zv-0jli;
	Fri, 27 Dec 2024 11:16:53 +0000
Received: from omta34.uswest2.a.cloudfilter.net ([35.89.44.33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR8DH-000000002v8-1kTg
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 11:09:04 +0000
Received: from eig-obgw-5002a.ext.cloudfilter.net ([10.0.29.215])
	by cmsmtp with ESMTPS
	id Qs9VtS1VV09RnR8DGtqggb; Fri, 27 Dec 2024 11:09:02 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8DDtIy7gcEKuR8DFt3tOc; Fri, 27 Dec 2024 11:09:02 +0000
X-Authority-Analysis: v=2.4 cv=Z7YnH2RA c=1 sm=1 tr=0 ts=676e8ace
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
	bh=obwp4Uet5DlEIt0J2ySMGAkOAswbOhVFXBB3XZ5Jqiw=; b=Tvz/n3Yw2wGJ0JUud95nFYQHIs
	rVGf68hyUTRY7Qz3Ip3Tv1Og27+hofnvSwCpa6LtmD8m8zPqSn/2JoVheI3f5YQscxSdtXt2bPriN
	GHRTzzlITfNkubnYwmGxR+WblyQuTF+y+RSy2zMUww81RXoMEEmOpBxBQ7WI3X9MnlUNMHlXjwnlq
	2wx2YvhFbSKTkXs4k2r/IluQbEVFladmr6VnNrRUdRFwL/U4b/O89isUwquU7xu5Ko0WaogaLR0c7
	uD4egR4hDme3ABUBNGu31xy8EtMAerR2yjPtc6e28jqwl4K5xB1afBFQAwiOCe3NKmTbMusMe38Dj
	toTPB4CQ==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8Cz-000bEK-2u;
	Fri, 27 Dec 2024 16:38:45 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:53 +0530
Subject: [PATCH 06/22] dt-bindings: display: sun4i: add a100/a133 tcon lcd
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-6-13b52f71fb14@linumiz.com>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=1081;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=CRTcqeTXRyDN3TGUF8oORkuSGchQveTRlcokaVR1eww=;
 b=cli7oGc0yDB4ocC0xX7gntd9c9v3pTzXHenzFk0VcjzJc+qcHjH9QYS9YxX4U/J00KveIuqIe
 dlUsfLShW0cDpP8eJATwNgBej/CuN4y7YE8oPJaZKfCGNKA8lux4Az1
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
X-Exim-ID: 1tR8Cz-000bEK-2u
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 173
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfC2a6v6Jqo0aNkhQZOSXzYZQ6rSzMYf0tOB/wfF7lf9q45m+aJDNgtwbsI3MHjZwGVSCxuanwesEuABbFwiyHOaFTXBYgXTRre2EeUudn/kG0uNEHoRh
 Z4+67kum7rGQt7cvLu8V3fctg62BU9x5aUkibybe/iKf3ugm/2B6nT7HS4PJ/ETUR5pmexLpMSz2ITaRg7tTf29Typ2DWsghM7o4QxkgPcJgjzTPLFEUl1sZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_030903_471879_EFAFB692 
X-CRM114-Status: UNSURE (   4.59  )
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
