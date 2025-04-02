Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84EFFC36017
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 13:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FqXmBRY4SQBOP37sJtjwBSNNnX7heT3FgzK9LkQ1FyQ=; b=WAXOVBRGnlmle+
	Edup6YLA37WLKblRhxjsJXs0ITYccehAeHVJWXpUaSF99qounTOvh5RYYMnKQXS2sl9f+EEnR+f9r
	8GndAAKbm7jmUSEfWeMVuRlnrjc2QPRitYxsX7cXtSOa+QqV7HftNaVFQviKnx0b40dvTa8rOhQjW
	T/4HvmNIM1FA/dLe1p9V+4AnDz862n1aMhJYdBlQfy8fc3k+gCCkiG7bUc1UJC3cb2rTc+zxPLZ5k
	umjy8iEnfoyDl6W9IWXEZ5ez6uve101cGGnb2glRSO5V4DjCa+HTBCcGYfhHm2YZsfRqtpSMLrCpr
	4mFxlL4ElmH87eP5wOIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyHv-00000006GjL-1DLj;
	Wed, 02 Apr 2025 13:37:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyBZ-00000006F6t-0niz
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 13:31:18 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C062C415;
	Wed,  2 Apr 2025 15:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1743600562;
	bh=EXsPshiIoDYGDEyH1ssoZWs7SUk1ozHqA0IubK0bN00=;
	h=From:Subject:Date:To:Cc:From;
	b=B3R2KBr+lPNNTWY+x+Ruimy9WpR9p74+jE7sxl6/7TGnp8DrIk8/0fN90NRUN68uQ
	 VWAL6N+lZHUIPtja8cbH+gnZVQS9zZNNNslsKL+wWxH1aRahT/fqTKFROwkSG4Nyve
	 0quBjdgkAAR9JRXJQJ6nYJ+SlYaAozZp0uPRzGNk=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v2 00/18] drm/bridge: cdns-dsi: Make it work a bit better
Date: Wed, 02 Apr 2025 16:30:42 +0300
Message-Id: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAM87WcC/3WPQW7DIBBFrxKxLhaMwYasco8qC2DGNVJtEnCsR
 JHvXuysu3wjzfv/v1mhHKmw8+nNMq2xxDRXgK8TC6Obf4hHrMxAgBYtCB5wLhxL5HG65cRbNIP
 H3iiDktWnW6YhPg/h9/XDme6P6l0+RzZRKe7w1pjdCtBJrQFMozsFxnLJXXY4vlzjR7dEd/mN8
 +PZIK17gneFeEjTFJfzSYpOdYgugJW9b2WwRgcaBkHKGggKnA0WlGd7lzGWJeXXsXWVR5n/Zq2
 SC96Dhr4PelCtv0QkV9Lsk8vY1Hh23bbtD3FUfXQ/AQAA
X-Change-ID: 20250320-cdns-dsi-impro-3d8fbd7848d1
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3726;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=EXsPshiIoDYGDEyH1ssoZWs7SUk1ozHqA0IubK0bN00=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn7TwXJpDfvBWXbZPgxgthnPmSkLRB1SKElVV9f
 7NoCOz25N+JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ+08FwAKCRD6PaqMvJYe
 9aCyEACKvtpBZCJo8bk+tTUvShRGAu0rYd3Nhrsw+lDC1Swe8/nqKUNKw8Cnd04hmV6pCxL9ecf
 j+j4avMt78zxBxDjbFozH76niNajFf76/tFZ/RffBnHmIetL3Nwk5tNUxtBpTS6SUnA4IzsxC7o
 PCWoklxlZLoRCu1Lyp4xmltuSlmuinv4gW4uU+UldzrlShwybRKpmO4LHq/VxRk4wFPlVMlxPNu
 zRGBrw0Bk7PDi+omxD67aSJ7qn+a4c6SxBtClLlHyKkdx7mr697Bon10TDiCUJ7D6+sPVqeckjg
 01KdlLlir7/t2Bjx+VsmRXpxiLwi+0JnlCKwUwbSAaIMn75xtqRnuLCjjZCQE3wTHIMIADmlDdO
 K7KN4Mkdc6YxdKmR4Hhe/eIym6IWTmLKIU41EtOUsqIVaTHwtwnR2UHpq7brFl2l8Fos6IDTsfZ
 7mXSd8WrjHhmDp840uJ5QEYrNcNq/IBuH32O5gikQ1n3tcK4BRIHOwi0ZsGhcSbhrGfnOUD8SuA
 w0ZQAv1nY5tV15VpDIJfUK9V21pG1+MZvcqcKNEMy1IXoPI7NlFE4jIvLT+XjkoIugfYc8EtFO0
 sN5t6ofm05qvRrmb62cnf7YFhwkcG5ZcYAeGzsOlVMNcOfPiWHI/nzD6VMUHdJdaH8Eo01qOUb4
 OnLpyI6kY0q4LRA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_063117_374238_E21D3F73 
X-CRM114-Status: GOOD (  10.17  )
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

While trying to get the cdns-dsi to work on Toradex's AM69 Aquila
platform, I hit multiple issues in the driver. Basicaly nothing worked
for with the board.

This series fixes those issues. While I itch to make much larger changes
to the cdns-dsi driver, I opted to keep this series relatively simple to
make the fixes more clear and possibly help with backporting.

The series also touches tidss, but those changes are not strictly
needed, and can be merged separately. And the series also touches
cdns-dphy, and those changes are needed.

This has been tested on Toradex AM69 Aquila, with:
- HDMI output using lontium lt8912b
- LVDS panel (sn65dsi84 + panel-lvds)

 Tomi

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Changes in v2:
- Change the tidss clock adjustment from mode_fixup() to atomic_check()
- Link to v1: https://lore.kernel.org/r/20250320-cdns-dsi-impro-v1-0-725277c5f43b@ideasonboard.com

---
Tomi Valkeinen (18):
      drm/tidss: Fix missing includes and struct decls
      drm/tidss: Use the crtc_* timings when programming the HW
      drm/tidss: Adjust the pclk based on the HW capabilities
      phy: cdns-dphy: Store hs_clk_rate and return it
      phy: cdns-dphy: Remove leftover code
      drm/bridge: cdns-dsi: Adjust mode to negative syncs
      drm/bridge: cdns-dsi: Fail if HS rate changed when validating PHY config
      drm/bridge: cdns-dsi: Clean up cdns_dsi_mode2cfg()
      drm/bridge: cdns-dsi: Fix REG_WAKEUP_TIME value
      drm/bridge: cdns-dsi: Fix event mode
      drm/bridge: cdns-dsi: Remove broken fifo emptying check
      drm/bridge: cdns-dsi: Drop checks that shouldn't be in .mode_valid()
      drm/bridge: cdns-dsi: Do not use crtc_* values
      drm/bridge: cdns-dsi: Use videomode internally
      drm/bridge: cdns-dsi: Tune adjusted_mode->clock according to dsi needs
      drm/bridge: cdns-dsi: Update htotal in cdns_dsi_mode2cfg()
      drm/bridge: cdns-dsi: Drop cdns_dsi_adjust_phy_config()
      drm/bridge: cdns-dsi: Don't fail on MIPI_DSI_MODE_VIDEO_BURST

 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 224 +++++++++++--------------
 drivers/gpu/drm/tidss/tidss_crtc.c             |  25 ++-
 drivers/gpu/drm/tidss/tidss_dispc.c            |  22 ++-
 drivers/gpu/drm/tidss/tidss_dispc.h            |   5 +
 drivers/gpu/drm/tidss/tidss_drv.h              |   2 +
 drivers/gpu/drm/tidss/tidss_plane.h            |   2 +
 drivers/gpu/drm/tidss/tidss_scale_coefs.h      |   2 +
 drivers/phy/cadence/cdns-dphy.c                |  24 +--
 8 files changed, 155 insertions(+), 151 deletions(-)
---
base-commit: 10646ddac2917b31c985ceff0e4982c42a9c924b
change-id: 20250320-cdns-dsi-impro-3d8fbd7848d1
prerequisite-message-id: 20250226155228.564289-1-aradhya.bhatia@linux.dev
prerequisite-patch-id: 46845a8d15042dd343a29a17fc0b9d0eec2605f5
prerequisite-patch-id: 7ce82c26cb9e18884492d2282a72ff2a760aefda
prerequisite-patch-id: ec2071425cab81da72e0805ad92fc52731d7a24d
prerequisite-patch-id: 32cde02288e0c36ed687f67778937a61f78b2d90
prerequisite-patch-id: 5f302e2bead8994763699a909ad0b5501f09ed9f
prerequisite-patch-id: 30611df6ef38c7872107d6bf6dde4504d46ab224
prerequisite-patch-id: 99831bcaa13e25b957d83a6320f34bcec223b939
prerequisite-patch-id: b0ad38bc6b323ceea7a1d2266b0fab8deaa6b05e
prerequisite-patch-id: 38dbce2b9302a764be9dbdc551578f02d797dfcc
prerequisite-patch-id: 133f8b1dab4f47d429b1924df981564ce3736233
prerequisite-patch-id: 879c546693a53e4b72c1ee25954c894ae57a441f
prerequisite-patch-id: 3e7edc818ac078a138f0e42e3f47fd685fffb84f
prerequisite-patch-id: 673b9f0b1936b5a49973b71cab5d13774583de38

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
