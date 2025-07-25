Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C83AC87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNlAxN46M0jn7JvdU1QnFbY0xtH//EB8SbtRhE50Mzg=; b=JpduwwXpjV6Lp+
	pALlgN63LhZP/jsaLz0kV/0jKWPhJUhOamarr63MMec6chl0w8f8lGxJayT1lMuEtQHFIJt2lg2J5
	QOP/4NmNrsdBlsvUtx7CBtdDRZ/KUdw4Z8rDH8nQeQMZCk1X078GBwQNEIpTkzgvw8b3HGpKtdqAc
	/xhH4nrmdqbXOAFYHpECOMTwmOmskXPWuEIZm0+28+TCf8fwMAlp4Avsoxd0zE1BqyFZn33aJIQwl
	PPdPXaJClQFyVsTKZEdnJt2/+H3kMK/K795MkbSQlKOCES41lUbTq48p3BMLq5Db/4vchdzbEqkSJ
	kOrEy0ZOLiyjhiZKRi2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP1A-0000000Adcw-0hXw;
	Fri, 25 Jul 2025 20:27:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP17-0000000AdbH-0CIA;
	Fri, 25 Jul 2025 20:27:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4AB695C5FBA;
	Fri, 25 Jul 2025 20:27:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C85EEC4CEE7;
	Fri, 25 Jul 2025 20:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475264;
	bh=aTUYa4oy4wxPOvc8JecX8ElfkuEQILHtAfALn/xab6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AivHnx6fxOn/tyd89Fe+bvxQTmzuwiKd6XahF2foKADROK61HvS8eG5aqcgsjOwo0
	 QrEn+cpmRseYPEDN+2lgU6QGI7SWcgLSxrjNGxFM/oXNPP0g/f1sztZ5kRvMK+GsBq
	 OO1DuTpijsVzwGPHQ8K1/2vhGbRR3SuWmbHvI5JVhuQorMFU1XtVhK6yReD050/FzQ
	 +u83DVE9OuKOXkCV052rxzX/HVExTYmVgnWa8IowrfBlMwtheKx2ti6lXTQNmGMmsw
	 J1yqjYwhoBbqr64fW7jtsZdYr/zCSY9zIZ1ZpMs+HRj5QCZBoAuRmyJrBWNJ5NFF6a
	 kc+jE5j8hHdYA==
Date: Fri, 25 Jul 2025 15:27:43 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: ck.hu@mediatek.com, mathieu.poirier@linaro.org,
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
	linux-media@vger.kernel.org, olivia.wen@mediatek.com,
	p.zabel@pengutronix.de, broonie@kernel.org,
	linus.walleij@linaro.org, tzimmermann@suse.de,
	daniel.lezcano@linaro.org, mchehab@kernel.org, kishon@kernel.org,
	houlong.wei@mediatek.com, herbert@gondor.apana.org.au,
	jieyy.yang@mediatek.com, jitao.shi@mediatek.com,
	shane.chien@mediatek.com, davem@davemloft.net,
	maarten.lankhorst@linux.intel.com,
	linux-arm-kernel@lists.infradead.org, simona@ffwll.ch,
	chunfeng.yun@mediatek.com, airlied@gmail.com,
	kyrie.wu@mediatek.corp-partner.google.com, mwalle@kernel.org,
	chunkuang.hu@kernel.org, linux-gpio@vger.kernel.org,
	linux-sound@vger.kernel.org, dri-devel@lists.freedesktop.org,
	lgirdwood@gmail.com, linux-mediatek@lists.infradead.org,
	atenart@kernel.org, vkoul@kernel.org, andy.teng@mediatek.com,
	linux-crypto@vger.kernel.org, granquet@baylibre.com,
	matthias.bgg@gmail.com, andersson@kernel.org, conor+dt@kernel.org,
	jiaxin.yu@mediatek.com, arnd@arndb.de, frank-w@public-files.de,
	sean.wang@kernel.org, eugen.hristev@linaro.org,
	sam.shih@mediatek.com, linux-phy@lists.infradead.org,
	tglx@linutronix.de, mripard@kernel.org, jassisinghbrar@gmail.com,
	fparent@baylibre.com, devicetree@vger.kernel.org,
	tinghan.shen@mediatek.com, linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH 02/38] dt-bindings: display: mediatek,dp: Allow
 DisplayPort AUX bus
Message-ID: <175347526170.1834693.13284335506775768371.robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-3-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724083914.61351-3-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_132745_125973_279B9AD9 
X-CRM114-Status: UNSURE (   7.55  )
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


On Thu, 24 Jul 2025 10:38:38 +0200, AngeloGioacchino Del Regno wrote:
> Like others, the MediaTek DisplayPort controller provides an
> auxiliary bus: import the common dp-aux-bus.yaml in this binding
> to allow specifying an aux-bus subnode.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dp.yaml      | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
