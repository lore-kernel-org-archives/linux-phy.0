Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3D3AC369BA
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMT0Oxm58ee/kvrYwSxVBLsfj7DPooOgf+YP6+tbTA4=; b=axne7I/ekgQQIl
	cLKvJn7MH50+2doao5p0fD+ae041lCu/DvEfk2fGMTaZnfw4LhMjGim+UXp6BxZa2DAx8O2GxNM5+
	kuNJRpQBgFqRsk+CW73i/VmI3h1fMyAYdT+xQ8uBGMF0jZzwtIBtNwM0NiXNhGgSgFlYcXv2oYCkd
	LdaAlOkcYN7AMfw+X2Msqmv0nubHvsfWvf0fxh/tIuRriaIsnLtq+4COnO0eTjv/fZMRlx5wGpN2a
	/iTvs18L6Gmyttmxj9NmB4ItIEu0zcNsJKkc6LEhjSwH2fJKeRZ4xLyDTmuj15X3pFpjP4Z/ElyyP
	RRUdh7RkWa1mxZPJV5Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnI-00000001iiw-2jF0;
	Mon, 14 Apr 2025 11:16:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HjX-00000001h7r-3SIG
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:13 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8DAE714C6;
	Mon, 14 Apr 2025 13:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629007;
	bh=0rz+qtGwR8012ibx7Ol/9THyUm6cLrG8rh2vtI7MsMc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=F90HVGaEHXcVXQRlikSZOeq7nwTdxWgLR/O4ZCJ/sMd9RPYwtr+y16vk5hguc5RG6
	 ZabqFXdTYkxEUjoNsrIBzi1A42TECpA6ci1B7s0jFzikYPu0bFYpOhbLvyTEnJ0QdE
	 r1RTUt3/E2wro+VPNkM0nJRHSOykrs8npHfRZ0eY=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:13 +0300
Subject: [PATCH v3 04/17] phy: cdns-dphy: Store hs_clk_rate and return it
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-4-4e52551d4f07@ideasonboard.com>
References: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
In-Reply-To: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Jayesh Choudhary <j-choudhary@ti.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1212;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=0rz+qtGwR8012ibx7Ol/9THyUm6cLrG8rh2vtI7MsMc=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O19WJKrDQFr1DAKHlKplUTsadmGLQhQQvcKW
 3x6+N/hII6JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfQAKCRD6PaqMvJYe
 9c46D/9NFtvR0pSbvbEr3POjEwVF8VIo4YTvY9yeNi7QVERsbNO4LX8+wumnIOM6ZNS19JrLKgA
 HzJoND7mcdrBMuaQcPZbXTtd0y/jRhHZ2AFHD6Z6pRHA1+xyeOMj0KPJduROOWr296YFh++gXf8
 eVyfECyk1eH8gj5IIh6Kq9gRiZL+C/n6cDH8y8AGq1F0D103cSSb/tqXVR8SOFqfu3YxOFnEyly
 TPmd7awGgG6yL1bupzFQdgUA6v4fcJoUYXfm1/UtC6uts2BRVribCDI2xgGTVPqYm0twhp0TxPg
 8XJYYSyR7MPNsywfIBywl5dr5TzuulaNjwXMd3yFXS9ItSW0E5Nuaczmpnu4qOFUVfnvTZs3uZx
 xeA0OtsWnOnvFMU8l4jCUCfjQIwFow8HBH4CUkaEfe4bUPocc/JZr1oCVJylPgastaVIOUlLVgG
 ZVFbK1kqf+HiCTmpqN/MDqZQkipBZtO9C5r6SmphPwtnBlDWCtAvzDRI3zhyLpB504z6peiXW0D
 epkaULqBWDowlMJEiMFPA4Mspv/Zh3mX3Arse0ijIFhuzP8VKUt4FpRVNq9v5TUaYSbcAPKwl18
 lY0eU+a2KedupqNNjMoBubaBPVhN7lWVdYW69hzd3vpbhiWBSdiN5dmQBtMb0zGPLOdIb7G6UGo
 Mb0wlAvFKtMJ9pQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041212_008713_B8513564 
X-CRM114-Status: UNSURE (   8.67  )
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

The DPHY driver does not return the actual hs_clk_rate, so the DSI
driver has no idea what clock was actually achieved. Set the realized
hs_clk_rate to the opts struct, so that the DSI driver gets it back.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/phy/cadence/cdns-dphy.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index ed87a3970f83..f79ec4fab409 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -79,6 +79,7 @@ struct cdns_dphy_cfg {
 	u8 pll_ipdiv;
 	u8 pll_opdiv;
 	u16 pll_fbdiv;
+	u32 hs_clk_rate;
 	unsigned int nlanes;
 };
 
@@ -154,6 +155,9 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
 					  cfg->pll_ipdiv,
 					  pll_ref_hz);
 
+	cfg->hs_clk_rate = div_u64((u64)pll_ref_hz * cfg->pll_fbdiv,
+				   2 * cfg->pll_opdiv * cfg->pll_ipdiv);
+
 	return 0;
 }
 
@@ -297,6 +301,7 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
 	if (ret)
 		return ret;
 
+	opts->hs_clk_rate = cfg->hs_clk_rate;
 	opts->wakeup = cdns_dphy_get_wakeup_time_ns(dphy) / 1000;
 
 	return 0;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
