Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2038AC71157
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tq1sp4muime75SUhCrT7JU4scHP3YqzRBpm+8VUvTUk=; b=VYeKJgMGxzRddL
	cgX2eXiCvJ3cpXkcoVW6WB4eV7AcgSyLETGtJpwNzGu8gmN87gNwXP5UAU89Ry1nU2UfgXtwr0Iu7
	0oLzTQZJhPnpf5ESyah8bJaNBQ2nVdxezE8DjYk+CsGIuW+gz1PbaaKpHxhO3GbicEcCCslCFU2T6
	vntr6krprtrVEZLYltj9ynVdTQJ/JTic07FXjT2hkgUrC2VNkqvzXsY8CM+tdL+WPzQ+u+QSZXVHJ
	JxeV+WQ3H+CN+4f3TRu9PBCLFdAaokIJ9dpR78NkHxx6pRHkX7OsDgAG/OJIMrgFrQRvEMT4qXDzI
	QIvcEZ7wec0r1ZEySDDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpvr-00000009lEh-3CCm;
	Wed, 18 Jun 2025 10:22:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpa1-00000009gOb-2N1K
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:43 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0814A17D1;
	Wed, 18 Jun 2025 11:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240767;
	bh=CyQv33b09RvHl4nOFdkuxj7qIGokAYoC0TXSVeU5XvY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gCeF45A0fmquNkacgBzrQ36gp1Qkx6DoBIX1zUHyJes/13JDf73ffOvaJ0U1AhMfW
	 dlqVGnBC7TBOn3JTsB5VIa5JXURL144ihVYKDgB0sxLVef1BAyXpl7JdrRgtKygNIL
	 OiZzSU/FDWVWH95x4JhlPSnFPWegBnRkVyKfQ6+I=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:09 +0300
Subject: [PATCH v4 06/17] drm/bridge: cdns-dsi: Remove extra line at the
 end of the file
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-6-862c841dbe02@ideasonboard.com>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
In-Reply-To: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Jayesh Choudhary <j-choudhary@ti.com>, Dmitry Baryshkov <lumag@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Parth Pancholi <parth.pancholi@toradex.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=786;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=CyQv33b09RvHl4nOFdkuxj7qIGokAYoC0TXSVeU5XvY=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo3+zRxirnMuQfMTECONQzyd7qv1sEh8AoZoK
 6sbY60qyROJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKN/gAKCRD6PaqMvJYe
 9UDzD/97Dz2GUH4Uu5er5xQvbd22dCoUAd/QUJlR3L10ujrOs/4quGGZNkmXEiVvBk3msxFMYz1
 9GQhv03i87x+Q3hl/pivdm2VycLD0xW4qJelAoLLTFzLGZQY1OdD/pL9jvIXgRrBplOopb07yZ9
 SJ3QeibiZnrljMAJ91ldn2yG6RKwHB9NDVV5crw1Mg9kYsqgGwJbZRqSVpdB31kAzq5Zx/oYNNU
 7mIKMC528MwOQScUxAOA0uWCYstwKYx43HAg0P0nI3kqQrgrWsUKfGtfBSjhgch/UO0r9mxuxee
 Mxv0NpIrhfTKSuQ9kBZxHQ22korkLPO444Gnei9puRzeT/cv291MRw8OQPfqziAJLBctiV/bM8Y
 jqgKRCs+m/wCETZ0K2wAk6i4UvWRh5nJm6Sk91l9Pv85vOK3rmPXD5keFZm9SuMYqIVX3DIJj/J
 naMY2cfEmRAU0a7Ei0eVsxbzw3pkYkz8I7sSJDaM0dzIzR2uZtL0fJ7/rZ5ZbpunZMtMf49D/16
 6WACrRxwhJqttSoj6AxzKqzWtJRwJF9WRhRD+aDX7nKxRkt2+FI79xUhTGWFzi4nG15Myq/fPDA
 uyLhpizWIzXEnDUYnfrAqM8sTuh6+p4/TvlEVaYc2dAhSB7BgYCoZAaznc7vVo0h8GutpNsFZGb
 G1t7g7hgtOtW3tA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025941_760114_8F3D8DF2 
X-CRM114-Status: UNSURE (   6.69  )
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

Remove extra line at the end of the file.

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 695b6246b280..0c7ad05b6e53 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -1442,4 +1442,3 @@ MODULE_AUTHOR("Boris Brezillon <boris.brezillon@bootlin.com>");
 MODULE_DESCRIPTION("Cadence DSI driver");
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:cdns-dsi");
-

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
