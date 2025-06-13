Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 304C1C71153
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 11:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yTjmfegRVN9ZoiOJX+lp5vvpP9xvfcI0ceWjbysKhy0=; b=ezDKkFYLE4cOIo
	GarVoyrfGmUyORoHauL+OTk4KPzFOtdVsps4ONFFFgxQHG3XsEqVnPr1PsTEpmjgWcwM3sJjEg2qE
	w2id8RKDXAmAJkmm7dAXTWoPMj1XaMHc4gEaGU52CF9PR1ts+HGbuZTI2sGV2xGARKSEVAPJUJ9lD
	eFlHBqZ77E/v9RBE0jB8qyKv9sZWmMHxmJPF+99hlLbG8g7PZTKbRFWFnFn4bAXAxNtDosSARHBMd
	Yn3FqH8kN+jdpH6V5SEdjzqja5TOvSaVXiXo+D3zi0PL0lyLR3gSJGpMldO4CcLhYoKSBGrxl1ehS
	V000AhzKO6kKQToa8oQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ2ca-0000000GAxe-3xYG;
	Fri, 13 Jun 2025 11:30:56 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ1Rd-0000000G3Az-3Ec1;
	Fri, 13 Jun 2025 10:15:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1749809732;
	bh=CZqYmHg36RMSs1ABWyY6d1Bd8dHgzQog9KqyX+oH+Lk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hPYQPpsaE6puBxDXojLRDR1BTHvBiTT4DxSG2fp1VqTMJGRFbuJJG9mBWuT6S8Bhr
	 GH0D+YbNoCyVr+h96i86944sAcuSmZLne4zxBO3F4kCdhNHKR+erVRWSOdpRz5lkDJ
	 wY3NGcTphnUWlnonyAZlr/MmsZ1ZUm7B3a21XR6MEdqCyWPtw1eDSKQfxHqeiXE/r/
	 hvmq1iQxB0FK7FYlrQJP97uQsqXPN0+n5N4IzzY0wwQPO40YQ1uuhdQnWhVLglsS+l
	 +qENCeLTD07E8uz/NptSuuyh6+6BgDSlhteAfq4VUg8WXqdhlx+FW5AizQL6LAj3BC
	 E0C8nbLHeNTdw==
Received: from [192.168.1.90] (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2A22C17E00AC;
	Fri, 13 Jun 2025 12:15:30 +0200 (CEST)
Message-ID: <c8e3081f-cd0c-48c0-8934-bd81fd681943@collabora.com>
Date: Fri, 13 Jun 2025 13:15:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/20] drm/rockchip: dw_hdmi: switch to HWORD_UPDATE*
 macros
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang
 <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-13-f4afb8f6313f@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-13-f4afb8f6313f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_031533_980346_F94E79CB 
X-CRM114-Status: GOOD (  14.38  )
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

Hi Nicolas,

On 6/12/25 9:56 PM, Nicolas Frattaroli wrote:
> The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> drivers that use constant masks.
> 
> Remove this driver's very own HIWORD_UPDATE macro, and replace all
> instances of it with equivalent instantiations of HWORD_UPDATE or
> HWORD_UPDATE_CONST, depending on whether it's in an initializer.
> 
> This gives us better error checking, and a centrally agreed upon
> signature for this macro, to ease in code comprehension.
> 
> Because HWORD_UPDATE/HWORD_UPDATE_CONST shifts the value to the mask
> (like FIELD_PREP et al do), a lot of macro instantiations get easier to
> read.
> 
> This was tested on an RK3568 ODROID M1, as well as an RK3399 ROCKPro64.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

This again LGTM and I could verify the RK3568 related bits on my Radxa
ROCK 3A board.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Tested-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Cheers,
Cristian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
