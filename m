Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EAEFC7114C
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jun 2025 22:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbOv4Tw9u4JPbXQFV3G6u6fZsStU0LZg+azWKw75PAs=; b=IDdme/juGB9aKD
	h2fN6ho6fbg9BHyAqFqfCkWjtcVdBPT9JO2nP5X4oST6u2RdyXluMvqBxOiRs10RPLC5ivPBP7npV
	tms779qpV+dbIlyrQd5PAD8Q6eUkKyfHL0/I0fLdPakdpbhW2A49qrI6D5uGWZiY+IUbQLtqDYF7/
	d6aAyn1BFBcVYCwOWWct1RRLtvtOHAQR6Bcq73u9JzrJxtN5JysNSjb7NObPfiSBHW0teZEWWGno0
	YPPJ0XVAeDwHMYvplZKAMw84KcB4MKvUg5cohFKgJzltKl4WsJicTZbsZS7aAYMZ21Zlkiemxjm6g
	RPPhad3HzTRy1NIbD6eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPq7X-0000000EkBd-3zBh;
	Thu, 12 Jun 2025 22:10:03 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPn9l-0000000EAYM-2D1u;
	Thu, 12 Jun 2025 19:00:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749754770; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z0DXjCfd3efZliCDFcqsVoAS+gJAU+g2CRWUu+35nhjhZxo3v1SYly5p5A1apRfDbaejdHE3h5fZFZLWPf9LXi/dA0QORUF3xyCl9dAnNwWx8qC/zSlatzzQM5fYFt3HledlkE5Res8Cm48bGGIOgOhHpLgOaenxv7CWnq3Hx0o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749754770; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BKmiKHxsyC9s74dEZUCVhW0dLCt+4VJJ4UwOh+/H/sE=; 
	b=SHqOdpFeVaOAQpBfB094uwG8oa8J3ZlKNBUp46pmqNmLrDjud7P6HSAvrpr9xOph36QDBQZ3EUzhar8GLUOVBD1KsBqPLJg5DT64iNMzCl442h4cZCA7Dt3lquUFdSlQc36HTD4JFOFCcy38eo10BQevwoFf+hzp46nthQKyXDI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749754770;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=BKmiKHxsyC9s74dEZUCVhW0dLCt+4VJJ4UwOh+/H/sE=;
	b=eao41fQdWmTPedrJvNMP+rvhBs+KDltNtF8BUjnvDWykLdBvTbFfCb3yGSAa/Q8X
	UbtJhJBjfHcgjdbtAXNxdBYaLShBTwJa3qlh/+K6Yn9oE1+gNXop57MXrRiYLAO2i2X
	Bp6MxMDYM08zRCNAbyFAXCSI+vMdL8hM76dxkVH0=
Received: by mx.zohomail.com with SMTPS id 1749754768033111.35290409790514;
	Thu, 12 Jun 2025 11:59:28 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 12 Jun 2025 20:56:16 +0200
Subject: [PATCH 14/20] ASoC: rockchip: i2s-tdm: switch to
 HWORD_UPDATE_CONST macro
MIME-Version: 1.0
Message-Id: <20250612-byeword-update-v1-14-f4afb8f6313f@collabora.com>
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
X-CRM114-CacheID: sfid-20250612_120009_587524_6E04DFC4 
X-CRM114-Status: GOOD (  13.97  )
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

Replace the implementation of this driver's HIWORD_UPDATE macro with an
instance of HWORD_UPDATE_CONST. The const variant is chosen here because
some of the header defines are then used in initializers.

This gives us some compile-time error checking, while keeping the diff
very small and easy to review.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.h b/sound/soc/rockchip/rockchip_i2s_tdm.h
index 0aa1c6da1e2c0ebb70473b1bcd1f6e0c1fb90df3..6efb76fbff9c158b79a87cdea02ef9db335cf700 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.h
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.h
@@ -10,6 +10,8 @@
 #ifndef _ROCKCHIP_I2S_TDM_H
 #define _ROCKCHIP_I2S_TDM_H
 
+#include <linux/bitfield.h>
+
 /*
  * TXCR
  * transmit operation control register
@@ -285,7 +287,7 @@ enum {
 #define I2S_TDM_RXCR	(0x0034)
 #define I2S_CLKDIV	(0x0038)
 
-#define HIWORD_UPDATE(v, h, l)	(((v) << (l)) | (GENMASK((h), (l)) << 16))
+#define HIWORD_UPDATE(v, h, l)	(HWORD_UPDATE_CONST(GENMASK((h), (l)), (v)))
 
 /* PX30 GRF CONFIGS */
 #define PX30_I2S0_CLK_IN_SRC_FROM_TX		HIWORD_UPDATE(1, 13, 12)

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
