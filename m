Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 922E7C7115B
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mQNhIWoWpg2mRHyf7kv8OPqgHWYnqFnm4LMMqlRKxw=; b=j5wGbQ3BPBRJhE
	7RoPluzgYBbwwltnOzX7uYH2wTCP/1d7mMM8WPsHtUbKKgjHEeFbWv4fZV8zpe7OnKPu5gJuQOP77
	6eTaH3t9JGYobJcyxeCNCOJLWKzH3D9/TiiWvcDEMNq/z09yo3E7kj5vCt9Tp0pGT53fIXXZFmcNa
	H6y6/xyVqj0TRxdMiDSUmUCFm5tVlwMlJMIeFYUdCHmzyKOnPPLTvwp7Yfm7KZgDN2Ab8RFvf2KeV
	4W3kk/vWqzPc4cbW6zAogSaQMhsQKrag8pS9M+0W+K+B7Hl4b2TDCJb8gJ1lYfAW0eaTvo5QhY2b9
	I69fuzZiln6DSxkzyX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRptg-00000009kig-14eQ;
	Wed, 18 Jun 2025 10:20:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpa0-00000009gLo-20VR
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:41 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 79BFA156F;
	Wed, 18 Jun 2025 11:59:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240764;
	bh=SdsFxcP7kgRnccaBenP8n2NR26UZV0KXLNKJ22UARi0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YVsmBqoPGA3QhrXuNpkcqjwiWH1rnIWZUoKC8Bq73lg8IGWPM0mFkcD++pPczLSWn
	 /b2gLDhLOu11yEnLLSDZOG9+IfLudpAxLjZZOJ5CK6ypaXwh8eAJOwF2X034s6J5rW
	 oEhqmdZSPa812uHI43L0P9xJ1AQWPzqu7+395cts=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:07 +0300
Subject: [PATCH v4 04/17] phy: cdns-dphy: Store hs_clk_rate and return it
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1374;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=SdsFxcP7kgRnccaBenP8n2NR26UZV0KXLNKJ22UARi0=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo39r9sodyAJ2tcO/X69aOfndhCXQftZPghxE
 Hmwz/4yT/qJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKN/QAKCRD6PaqMvJYe
 9XrCD/9a3slbZN2powiZp5L/w9sEKj/2HZcjA2+hVNNc0EKvkmPweq7VVf7hKsLSBbcRDcK08q5
 Dkqb6QRx93vi+9qkPSTFHveZmMWswfJkFN4lWSyNS+h1UeuNpFovZBQL2EozuDYEmFRsdTg/eqI
 dIM/Xegbc6M5kcENYqQSGQrEfzamkDdsOYp59hUqgHe6TXzi4jgMvtpWk9q8y1fMBDLm/jnKFXa
 H54kvMYKjH1zyBQF6oOJBrBsdBky3HgqXzzfSi7FW7FJNOItnDHZ368viXhNr4x/Vp5cI6BQY4z
 1m1wFcdkIAk/6uZRynKGX+ncUJ+2829f1yrZrgREcwm+j3gfOkInMwCi7qj9TwIJFMRCDmqJyh7
 KfRiEGSIMxg3QwAuw17/tFryeqH3htPTFQ9nDzuLVt9VznH0J6X4DvFqvLYU6QSTrOe0QWdMk3r
 PO7IbEP3KbO2k4D+zo/jeLjMD5tE/cWyhgrCyv049NQ/NKf+RT0uRY9s+o8FTta2aYOIg1LOhMi
 N2crEp63tVBSlSH9zpvzutnzelhKSWyKWem4d5v9RlwUBe88/CItMxDys823sJsD7GzaeX9njl9
 /MO/X30FJaPvbeFLBqnRTsXDpudHRjrdrvEGOhnJpn1y+F7oRXWzvLJLnRw1TYvsrrRSTefliyN
 a6aSda0/qL5KuJQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025940_711376_F57F381E 
X-CRM114-Status: UNSURE (   8.68  )
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

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
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
