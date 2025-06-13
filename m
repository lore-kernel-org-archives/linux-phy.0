Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78BF7C71136
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 16:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCrtLBwOPKACFn3mv67DY/U8Heobgu0moVl7+5HVxac=; b=lRqMv76GVxBeba
	27Z2b6b1d3YGgj8zMuEUJ06OPpRbz5lKkafoQ1l0+Ys4IY/u36JXPE1DeaIb85FRx1YKxenaZJwQS
	cnbuRIsbvpeZMmdaLMW15H5qGq8taNlstd6p12kG7+hCOOFYkFKQ9Z5wNwT6p49CyjsfeighdFNLb
	vImu5Yrl3etxtYKdVALld/9OlvrRy+tXmNmPttCfsu8BUEyrCR5WlScd3Z6tsNIE7SemZ3b6WMJQS
	8jhSEUzIAQHcaVZRTDoQDrYFqDzyg8oI4lZwAPMBj9laWMplwAqslqLa2xDqrvYMyBZx8kVq8VPs9
	WP1hF/DaXEE4LlgQEPCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ75W-0000000H1kp-0MfI;
	Fri, 13 Jun 2025 16:17:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5sF-0000000GnUL-2Gn2;
	Fri, 13 Jun 2025 14:59:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C201F62A03;
	Fri, 13 Jun 2025 14:59:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94B5AC4CEE3;
	Fri, 13 Jun 2025 14:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749826758;
	bh=Wi+mKmakmDEwMoqmItZexeO6A0PyjaxcjaKR+n0fu14=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jjgtPYEw+i0FlOE979WCYV8vcgpJYvTigzyODqm9N9rVd6tiEbmCZhta15yZ/LFTR
	 Tiew59WLUQlbwv+Tv0cb0bBSKpTQS4ui3rvnk1Zo/ic9w1Ncre7NZWLnTXKWYp9ZpC
	 nZ4pMbNAw213uGy+U23KSpNj8D9Zyg+/N8nHmk+2Sc5vcDOjwasOyp9bEFQ1bwF2oV
	 akxrQZmEEq3jmbATpowqgpBjP+0xuK+zfS++q4uBMcjIqYUEboLmRdEVetQDDrTE7l
	 OxBXQ3C5alTjHsSffqsPeu1Ni7G3j7gUgmCREAWl2K/drbRh0bOKnGlsK37Vm431fW
	 JdEoJas+Vh+0w==
Date: Fri, 13 Jun 2025 07:59:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Yury Norov <yury.norov@gmail.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Rasmus Villemoes
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
 <morbo@google.com>, Justin Stitt <justinstitt@google.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-phy@lists.infradead.org, linux-sound@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-pci@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, llvm@lists.linux.dev, Tvrtko Ursulin
 <tursulin@igalia.com>
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Message-ID: <20250613075915.302ba742@kernel.org>
In-Reply-To: <aEwZcM_leVvB0Cju@yury>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
	<20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
	<5493fd6017de3f393f632125fad95945d1c4294c@intel.com>
	<3683577.irdbgypaU6@workhorse>
	<aEwZcM_leVvB0Cju@yury>
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

On Fri, 13 Jun 2025 08:28:40 -0400 Yury Norov wrote:
> > > And perhaps that (and more potential users) could persuade Jakub that
> > > this is not that weird after all?  
> > 
> > I will operate under the assumption that Jakub's opinion will not change
> > as he ignored the commit message that talks about multiple vendors,
> > ignored the cover letter that talks about multiple vendors, and ignored
> > my e-mail where I once again made it clear to him that it's multiple
> > vendors, and still claims it's a Rockchip specific convention.  
> 
> As far as I understood, he concerns not about number of drivers that
> opencode HIWORD_UPDATE(), but that this macro is not generic enough
> to live in bitfield.h. And it's a valid concern - I doubt it will
> be helpful somewhere in core and arch files.

Exactly.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
