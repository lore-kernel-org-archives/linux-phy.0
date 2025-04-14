Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2FF6C369BF
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8RV5cOxFoUbcSkix+wMm7i+z5rXK4NTHbFH4wP9OljI=; b=xEeB+sGvmhkEud
	IHjsvEfb438XSqxAg1W3Z8xm0ITKQakizXadaj6q7ID/Qft6bXcTzqTJ96UslpUxu0TSAsj2qEQju
	vRTrByujiPSO02s/VhmrOAK5FDkLnvHdOAiYzGcd+968MHPV4Dhye5L5EZIg/NWmhGL4CiCXGsOnr
	dUL8R2nrllEfH6fPRrlIdWMsGdHhz+ImrmUEy7oyJVb4tlofB8Rxl4G+tkL7hs5S+iwsMN6FtfnT2
	HBIxqEWzDVnLegtj5Zg8tIoLfPjqLNaiF6HqXoSuio5enlWPvcM7uuhdi+wT/DgSQau88dLhjLixp
	/dkOeXi1blwaJljYp9YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnK-00000001im9-2916;
	Mon, 14 Apr 2025 11:16:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hjb-00000001hC5-0CU6
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:16 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5F1171995;
	Mon, 14 Apr 2025 13:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629012;
	bh=r2d2HB7/bIbl8ir7v45yLuBpRydPumEUWn8w+vZt7oE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=U5dRjQ66Lq1/hkWT7FkeWTApkyoG56AWun/wVZZuTe6Em9Skptg1EXLDWZrrQP5Lh
	 g+zEPO7qZtY+jERvTjLCwTMrJU0NCSKIlBZChgxlGxr0ZqiqYZPFOwHZRZuBoXqt1U
	 T9zEb3jIzkRPhGBKK8FH9RSvoeWlTzMlfMVOxpIw=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:17 +0300
Subject: [PATCH v3 08/17] drm/bridge: cdns-dsi: Remove broken fifo emptying
 check
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-8-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1856;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=r2d2HB7/bIbl8ir7v45yLuBpRydPumEUWn8w+vZt7oE=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O1+dkbnt0hWdDmW1bZOk/SLwgABLeodN1zMT
 YScC+tVZw+JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfgAKCRD6PaqMvJYe
 9f12D/0RvaGn/98qfrgGpDan09/UwnbQurUIFMYSbMQ6wuP9bBCmygmG3sEkO68lKyepmfrvqxE
 QYitozEFhIxhg2krvsIAjNAtEU6E/A+1V7STcf04oY3dUS+/xvCIqS+s4fuCt4WMRLkWtkdFkid
 h1yrGnvwdu1JZnHvfJfZzra0HxCO3DSDej73BSbxj7A3sa6edJ4FYBnPBXyZKPm2W8K6ykf7iw3
 VsR4W3wKEfrwcZtJPnnDB57RHoL3a0zPpHZfNg3fxXmz8h1iIg/cCAHWL3stefDSabS07L2ezEz
 iqRc95CY6soSMDgWgXjGcdNUzhozdib/1eBTsYkg5ScU3bNasBReTBD+/EuLLal5+3bnPCCOc9t
 PEUWE1UZJ0uu6KJ+44uTjVEry43T3V9GGSLJc4ZDinWeW6F1D76x69EgHqHB7OXG275wGRQMNQM
 0cFtIpkm3cJWLUHxNB9MxXZNtOT/aiM+v7LVM5IwUoD5EoiRaRdy8H1fijod8BLM+QJ5Qy/8VIv
 5ZIe0cL6aGiUkYg1Pb8j11U2W3PZG6L6NoYsWgmwJKTm5GhyWgR1eRj0fde218IgGzGMS4SzLLN
 4gMTE9izOlTRr37tQ5acLTTz5eaxQFWY5ZNYN7sjPKGWIVzI5CTi+k9YUclqQvCBQAWXPtKzdiG
 ytGws2lLV0tRL+g==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041215_245013_F03954BA 
X-CRM114-Status: GOOD (  12.91  )
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

The driver checks if "DPI(HFP) > DSI(HSS+HSA+HSE+HBP)", and rejects the
mode if not.

However, testing shows that this doesn't hold at all. I can set the hfp
to very small values, with no errors. The feedback from the HW team also
was that the check is not right, although it's not clear if there's a
way to validate the FIFO emptying.

The check rejects quite a lot of modes, apparently for no good reason,
so drop the check.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index d521ddb8bf75..bb8ac7161abf 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -553,7 +553,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 {
 	struct cdns_dsi_output *output = &dsi->output;
 	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
-	unsigned long dsi_hss_hsa_hse_hbp;
 	unsigned int nlanes = output->dev->lanes;
 	int ret;
 
@@ -575,20 +574,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 	if (ret)
 		return ret;
 
-	dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
-	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
-		dsi_hss_hsa_hse_hbp += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
-
-	/*
-	 * Make sure DPI(HFP) > DSI(HSS+HSA+HSE+HBP) to guarantee that the FIFO
-	 * is empty before we start a receiving a new line on the DPI
-	 * interface.
-	 */
-	if ((u64)phy_cfg->hs_clk_rate *
-	    (mode->hsync_start - mode->hdisplay) * nlanes <
-	    (u64)dsi_hss_hsa_hse_hbp * mode->clock  * 1000)
-		return -EINVAL;
-
 	return 0;
 }
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
