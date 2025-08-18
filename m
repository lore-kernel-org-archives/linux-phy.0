Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96BC3CA0EE4
	for <linux-phy@archiver.kernel.org>; Mon, 18 Aug 2025 19:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoVughFB8VNIUTsIDJ+SRLejtbzrPWUKgorQAml7144=; b=e490gshindLtNS
	bOKB+JXvNwplDOEFtkCZV+HGENk0xq7S0KlKXNc2q2TIBUaJRRRitzwV5E+ioycM9uc6zk0sdcO25
	15u7st6TZfbggB9yQDp5H6oTfAiZVylBRv4Ec9eVn4Jw1+jZxPrYPftaILYNGlIXb9Ga2uJ+ctt/R
	jv22DX5868u7maMuwl9miWLeiETcsLVm6WurgT/qQIE+wfuXKh7/VHE1GBySAY5c+QrbXNAa4d4Gb
	uzAxTAaUX7wWE3/DewtSCuTzaULYp0QH/F8Jum3bT78P5QEqk2pi9Yc1XSNvJDQ/d/Q01ta0gxk1G
	Qwvxs41cYx8Rap0ikdNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo5nX-00000008YPx-1FEt;
	Mon, 18 Aug 2025 19:45:39 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo54n-00000008R0u-1JVu;
	Mon, 18 Aug 2025 18:59:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1755543564;
	bh=M1dIcKPewO8GjoiDE0+H9+TiBwX2gefN9QiT1gI6ePo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ivgTVbxjl01+N69VTQFV5SLwFWo5Hh5J+7LLAqX13Kk+cuLs4eBoYOQpY1xvbQLi8
	 L2PevdS2lm3HMrb19yn/0MhkZXZJvXb9u7sY5yQPQhitkYyl9NwdVmmV/6P9KWgSYu
	 5UIbs6LETd6uoACcmShm2mgWpZ0/vj+JEufDXFa/DwXAaHr36hksIxafkWEDpUUKrm
	 IiaVRv0yV4yVfMBCHiP+UF6pkfD0yTQo9DzEyBgIrfrkxqVrtLGBJfdUJA2NxDoJcs
	 Ct6vwGvmOvaDt2epQuhhHvQRKb6Hn4yprzaJSA/+wJGKoNSE+VdqN5NYLvtW16D1cy
	 R7W3tvCsP2C/g==
Received: from localhost (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id C445817E1357;
	Mon, 18 Aug 2025 20:59:23 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 18 Aug 2025 21:59:05 +0300
Subject: [PATCH v3 05/14] phy: rockchip: samsung-hdptx: Use usleep_range()
 instead of udelay()
MIME-Version: 1.0
Message-Id: <20250818-phy-hdptx-frl-v3-5-c79997d8bb2b@collabora.com>
References: <20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com>
In-Reply-To: <20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_115925_504133_3AD61D2C 
X-CRM114-Status: UNSURE (   9.56  )
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

rk_hdptx_dp_reset() is allowed to sleep, hence replace the busy waiting
with usleep_range(), to allow other threads to run.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 5605610465bc812737f773e0f6232cb6dbdc78a4..83ec892bd6760865fc9e361f4003c5bfbef55608 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1075,7 +1075,7 @@ static void rk_hdptx_dp_reset(struct rk_hdptx_phy *hdptx)
 	reset_control_assert(hdptx->rsts[RST_INIT].rstc);
 
 	reset_control_assert(hdptx->rsts[RST_APB].rstc);
-	udelay(10);
+	usleep_range(10, 15);
 	reset_control_deassert(hdptx->rsts[RST_APB].rstc);
 
 	regmap_update_bits(hdptx->regmap, LANE_REG(0301),

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
