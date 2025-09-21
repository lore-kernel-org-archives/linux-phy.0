Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D20CAC5A7
	for <linux-phy@archiver.kernel.org>; Sun, 21 Sep 2025 20:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVEX3v0JzSKXsH5RImK7nebduGKozqqzAbsBwNUzWzE=; b=K3GrhW28UOtZsk
	extRTGpbwnPPqe1Js1tqT3scMABXplckiQhrT5wTnZB5uW+p8IhjzxMqvBDTWrqazTitiUxjpLIuc
	qIhcJM2e04+V28ZFfvZ0THkyIuv7IviJO8vK7QItlYaNyWSKOsM9hoLiukPaE2FVOsM9Kpy5Ncvw4
	gH0LumksWAKfmJiBjUD7nxshczY/UrD0VUoUnDHdxTKxxZyy6zQ5JEilyrQsgMcShSK+FnQBR78QG
	/SRQsQi95sSTb1RZYqrXwWKMF9o8rnbt7oKKw6AfVj4fKZsDc+bu9Oy2d7WdTsIWgv/qHkF2W2GaH
	QhNvXyt7EPaAD+x7E+2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0QIL-000000087zN-3ZLL;
	Sun, 21 Sep 2025 20:04:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0QIK-000000087yT-0lqY;
	Sun, 21 Sep 2025 20:04:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D4FE5600AE;
	Sun, 21 Sep 2025 20:04:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A835C4CEE7;
	Sun, 21 Sep 2025 20:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758485061;
	bh=oK6PNMhjBQuguBf6ZyCDvGmGsPBZFWxojb6mTU595d4=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=iCTBvx1ycWtFaxbFJjKnE8lmTRV6YKBljeoNPWr3O0f9KOI2wK+gY/chvSLppb2iw
	 nKDM1jLs/kX3EvgUACM5BKR1e32v5rVmusbFg6REu8gh8nHtL4KnpR4cztPIEWYsyn
	 85sV5ZWf8I2axh1P00A55pSPIoljTkKeShL0Yo6iD75KN1B4tcxd0MZkgqGmYUT1mQ
	 IpOfY2l2pbjRNsgwxsBcIB9YfzgZxcgmX2t0tM84PDIkYUJsgjzu0i/zQZHS16n4gv
	 WrApdIyoKSa91FOKnNUjwHaVFh7bF8WfL1saxL8xffSMJav7UkpqNUB9WhDh8//gHr
	 V8yFvFNiMSeTQ==
MIME-Version: 1.0
In-Reply-To: <20250623-byeword-update-v2-19-cf1fc08a2e1f@collabora.com>
References: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com> <20250623-byeword-update-v2-19-cf1fc08a2e1f@collabora.com>
Subject: Re: [PATCH v2 19/20] clk: sp7021: switch to FIELD_PREP_WM16 macro
From: Stephen Boyd <sboyd@kernel.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, linux-sound@vger.kernel.org, netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Alexandre Torgue <alexandre.torgue@foss.st.com>, Andrew Lunn <andrew+netdev@lunn.ch>, Andy Yan <andy.yan@rock-chips.com>, Bill Wendling <morbo@google.com>, Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, David Airlie <airlied@gmail.com>, David S. Miller <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Heiko Stuebner <heiko@sntech.de>, Jaehoon Chung <jh80.chung@samsung.com>, Jakub Kicinski <kuba@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Justin Stitt <justinstitt@google.com>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof =?utf-8?q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>, Liam Girdwood <lgirdwood@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Manivannan Sadhasivam <mani@kernel.org>, Mark Brown <broonie@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Maxime Ripard <mripard@k
 ernel.org>, Michael Turquette <mturquette@baylibre.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Paolo Abeni <pabeni@redhat.com>, Qin Jian <qinjian@cqplus1.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, Shreeya Patel <shreeya.patel@collabora.com>, Simona Vetter <simona@ffwll.ch>, Takashi Iwai <tiwai@suse.com>, Thomas Zimmermann <tzimmermann@suse.de>, Ulf Hansson <ulf.hansson@linaro.org>, Vinod Koul <vkoul@kernel.org>, Yury Norov <yury.norov@gmail.com>
Date: Sun, 21 Sep 2025 13:04:19 -0700
Message-ID: <175848505982.4354.2243738737036950081@lazor>
User-Agent: alot/0.11
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

Quoting Nicolas Frattaroli (2025-06-23 09:05:47)
> The sp7021 clock driver has its own shifted high word mask macro,
> similar to the ones many Rockchip drivers have.
> 
> Remove it, and replace instances of it with hw_bitfield.h's
> FIELD_PREP_WM16 macro, which does the same thing except in a common
> macro that also does compile-time error checking.
> 
> This was compile-tested with 32-bit ARM with Clang, no runtime tests
> were performed as I lack the hardware. However, I verified that fix
> commit 5c667d5a5a3e ("clk: sp7021: Adjust width of _m in HWM_FIELD_PREP()")
> is not regressed. No warning is produced.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
