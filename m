Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EFD3C61CE8
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jun 2025 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mV4XAVfSwT2miY8X5vg7op0w6K0RNhGTv7h5Qud6GOw=; b=H8kHtDkI+S8OFI
	3fPAlkAGds9h1iaF5Mm+ToFl9nOjMGIO1QqMIK+CncJSl/LUT+LqRS8AlIhOSSigBxtga3Zhvv3yQ
	zwRxLc2Cw7WNKFw/+qu6tmHex90/WxFyBBTeTvOHjs81mBSUB/h72GhJy/6Oz8w0E5LkdQFrDcoHP
	GlkDI2/CuycWEkDpFiOeeZMO0zQSm3uT/wWnOeX/Q7lyhqrRja7bJwJ0F2J12PXL39/e8u4kQ2Tsy
	aQps/MtVA+Gb+DxZAbONzoq7Fbux37M14ZlEBdWM7Ka2UN4KQWSWTiLNG58LlZ4WXbABkYeLzitlC
	8QTz5G54uNtghiFN1HNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnuK-0000000EOrh-04Ki;
	Thu, 12 Jun 2025 19:48:16 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPn95-0000000EANC-3lX4;
	Thu, 12 Jun 2025 18:59:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749754730; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TRM8mOFWyaBYak++nZU8l9Lh9sNaOvaqbi+IF5KwOXAxpxEdhGnj1xHPo0BC8t9jwMsc9bX/n8u29ShdL0HXM2/KZSM6AifRSMqgUwexN+YhM7aeCbVbJShzARE4YkEzpYLZ5Kl1m5XncFNxaNW2TlIfz8bMHFHmUWtWiC97aWA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749754730; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=40rYDysgIuUPOjEXjeVmWjUJjq2cy29Zm9mzxshoj3Q=; 
	b=eyNXOpLzG/KfGfQO4VVrBHoSStZG4ttQiQp3pf5y0tTiFbPx09TIH7qU1JY1Ukt6Z4f8vFGHQlc+pcugmiZctcmzwHuqHz5RNz4p72Jew++h8+/OXDSH+Xyy6r4Rtuycnl4JmsZQ67YaLGSpYcOaPW1FyrRNMi/XI1wpARBKEXo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749754730;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=40rYDysgIuUPOjEXjeVmWjUJjq2cy29Zm9mzxshoj3Q=;
	b=XM21WvZ37+5lexo4sUsG3vQNVq/vd9yOHR5204FfyyT1AsygHfQnx7rmP30dSsCV
	gxz9M1jdmgWMM+DOtWyARQp9vl6GI3NO4/zPJEBCngqxsifVQJFImONiO6r9aufCazz
	n/10voaGC+YtJZJdXTRGZXwgCnTmvVrUrDtegWwQ=
Received: by mx.zohomail.com with SMTPS id 1749754729031715.0037807596458;
	Thu, 12 Jun 2025 11:58:49 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 12 Jun 2025 20:56:13 +0200
Subject: [PATCH 11/20] drm/rockchip: inno-hdmi: switch to HWORD_UPDATE
 macro
MIME-Version: 1.0
Message-Id: <20250612-byeword-update-v1-11-f4afb8f6313f@collabora.com>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
 linux-sound@vger.kernel.org, netdev@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_115927_987912_781943A1 
X-CRM114-Status: GOOD (  14.78  )
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

The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
drivers that use constant masks.

The inno-hdmi driver's own HIWORD_UPDATE macro is instantiated only
twice. Remove it, and replace its uses with HWORD_UPDATE. Since
HWORD_UPDATE shifts the value for us, we replace using the mask as the
value by simply using 1 instead.

With the new HWORD_UPDATE macro, we gain better error checking and a
central shared definition.

This has been compile-tested only as I lack hardware this old, but the
change is trivial enough that I am fairly certain it's equivalent.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index db4b4038e51d5a963f9ddad568282485ed355040..ab6b1d91127885afe0f5e0feb265d6b7b02d88a7 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/irq.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>
@@ -31,8 +32,6 @@
 
 #include "inno_hdmi.h"
 
-#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
-
 #define INNO_HDMI_MIN_TMDS_CLOCK  25000000U
 
 #define RK3036_GRF_SOC_CON2	0x148
@@ -392,10 +391,10 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	int value, psync;
 
 	if (hdmi->variant->dev_type == RK3036_HDMI) {
-		psync = mode->flags & DRM_MODE_FLAG_PHSYNC ? RK3036_HDMI_PHSYNC : 0;
-		value = HIWORD_UPDATE(psync, RK3036_HDMI_PHSYNC);
-		psync = mode->flags & DRM_MODE_FLAG_PVSYNC ? RK3036_HDMI_PVSYNC : 0;
-		value |= HIWORD_UPDATE(psync, RK3036_HDMI_PVSYNC);
+		psync = mode->flags & DRM_MODE_FLAG_PHSYNC ? 1 : 0;
+		value = HWORD_UPDATE(RK3036_HDMI_PHSYNC, psync);
+		psync = mode->flags & DRM_MODE_FLAG_PVSYNC ? 1 : 0;
+		value |= HWORD_UPDATE(RK3036_HDMI_PVSYNC, psync);
 		regmap_write(hdmi->grf, RK3036_GRF_SOC_CON2, value);
 	}
 

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
