Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B010C71136
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jun 2025 22:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeTguPn5IcJjBz02aGg7ApZ/So/3ayikSB6YDh5X3sc=; b=EUUCMZneBbsA6C
	R3qo3fkcZkDRkO5UGUO2ykm0CMtA3S8JztlzRuWrRoiAPnFcV/xRRjFxrAV8zsj8ts+mFgii5QD3h
	JlmhgGExjYrh36KVRKqJT2GLYOlvIFG33U4/aQfX+JkdCB9ZxsEixd7g3MGPZUQ0NJ5q9uxCIFERu
	t9LeYzbmmA3hrHfDPzyqHsz8ptfaeE9nxTsc3F5p5GrTbzQotCS1BFdDvoPFE01Nd3UOGkaWOVb9e
	mXXez/HTptLvSbacWVzrcdnjX0wzs5fwsl0rQGUqelgLULOBbgq86Ov2/dMFoMor+g1NkJcu32aD9
	KDuIR6B4Omw1FpQnb9Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPq7e-0000000EkQc-057J;
	Thu, 12 Jun 2025 22:10:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnqX-0000000EIlW-3nEZ;
	Thu, 12 Jun 2025 19:44:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CDC5A629D2;
	Thu, 12 Jun 2025 19:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC383C4CEEA;
	Thu, 12 Jun 2025 19:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749757459;
	bh=WRHnEZE/VavbEbIByL9Ab4jgxIptcm5CTwjQkexAzn8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=TV//cMaWvCwRdwpfczgwfekYTq4KpVrIcg5pbXUbx2lym+SxZm9g8pySw6t1uZg+7
	 NpdGkBhZz71C/WAv56FOexy3K+ZXwre3cLw88imhzrGxamgghkbXdxsBhA9nk0aeT0
	 MTHlEEt/eKxkiFp29H+KB99+NQXh2ZFc+cVORjPQy+2joq1MRPguBQY9Q7ekUNsTsS
	 aM8WJhaly2F8i1GFUgUf1yz/CaEAzEOeVTjsH1X75uThWjvNm1ioH3Jt0ZAP/Tcyni
	 ulToNy5Bgy0sxqczU9uV4K0qC2uDT4BDggr2pFZ4uTwcIF5ZUdJ52VPmIbZYW2//FG
	 NK7HkgKxhZSwQ==
Date: Thu, 12 Jun 2025 12:44:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Yury Norov <yury.norov@gmail.com>, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, Jaehoon Chung <jh80.chung@samsung.com>, Ulf
 Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Shreeya
 Patel <shreeya.patel@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre
 Torgue <alexandre.torgue@foss.st.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>, Manivannan
 Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Qin
 Jian <qinjian@cqplus1.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Bill Wendling
 <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Message-ID: <20250612124415.3399e26b@kernel.org>
In-Reply-To: <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
	<20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
MIME-Version: 1.0
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

On Thu, 12 Jun 2025 20:56:03 +0200 Nicolas Frattaroli wrote:
> Hardware of various vendors, but very notably Rockchip, often uses
> 32-bit registers where the upper 16-bit half of the register is a
> write-enable mask for the lower half.

Please limit the spread of this weirdness to a rockchip or "hiword"
specific header. To a normal reader of bitfield.h these macros will
be equally confusing and useless.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
