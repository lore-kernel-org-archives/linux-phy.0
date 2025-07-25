Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61DA8C87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iz67BerKIQMXejJ2I15BahhAHTxHTQsNPG6lPgHF5eQ=; b=QdbDjnfJ3Xmbeq
	V5thhP7vsstMkDINTcKafAAvSd+MC6bwIN8CHnA6n3uLHcL8s8AiBpT8bUrenFfkHZSJSMTULr+9Z
	EJ0wBhsTEBqGBGSV/YFzd7m+ulqNWeW+X7AXB942q9QeVsEUTtKuY8B87lTcUi7O61vGxwBY5frnm
	OSs5GBi74nl15kqAd+/8S/DYno+7XEa2RQgT9GCy+R5CbCL6HKosLh4AUdnEVDEGIk+BoyQtWtlMw
	0I/fsXahfqVW8sqgW0tMJ3vpysh/FcDkoeIaYzKt1/fZZU+wVF0ht0Ok4+GTGgqMpxASlxM2nSp2u
	WflpvlqtQm9C5lD3bi9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP2x-0000000Ae80-0coY;
	Fri, 25 Jul 2025 20:29:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP2u-0000000Ae6i-2i93;
	Fri, 25 Jul 2025 20:29:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 455424348C;
	Fri, 25 Jul 2025 20:29:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F213AC4CEE7;
	Fri, 25 Jul 2025 20:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475376;
	bh=FpiQA0h1rzmVXkCXdxYXb5ICmJTBTxxEhCePZRRuCHA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jKwaEjYNVtXEiydTCcEXLSyh+1Hte1oAwHkS4BihjjRez/a8NVKcMBqFkGy3BEjuq
	 +X3eWAJWkqsX9CAX38Gq9toeBq6zU0OGfjuMPHzK604QZONe0tfL0x7mgWzcHqHdZu
	 vlOXoFxUcNZhtdWazggpl9Z/j9sQ4HWRJu4toM8I/xgTLt0i5/upQFIw/sO2Do7hgl
	 JegXzXTVwDd0NCMgkZqdfLubKFRC5Rot6gn4SVzsCSjZDN4fLGSWCN0dGldo3Qm8wh
	 nyH+PzpGN3FsB4DrzfCqJGE3Fa/7MeveQBlDdwA+V8tXz0sKj41d/P+hzWWrpzuUQ7
	 o3cXKDZLnLdUw==
Date: Fri, 25 Jul 2025 15:29:35 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mchehab@kernel.org, houlong.wei@mediatek.com, shane.chien@mediatek.com,
	airlied@gmail.com, arnd@arndb.de, lgirdwood@gmail.com,
	kishon@kernel.org, sean.wang@kernel.org, sam.shih@mediatek.com,
	linux-sound@vger.kernel.org, jieyy.yang@mediatek.com,
	linux-remoteproc@vger.kernel.org, p.zabel@pengutronix.de,
	davem@davemloft.net, linux-mediatek@lists.infradead.org,
	granquet@baylibre.com, linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org, conor+dt@kernel.org,
	andy.teng@mediatek.com, linux-gpio@vger.kernel.org,
	krzk+dt@kernel.org, mwalle@kernel.org, vkoul@kernel.org,
	chunkuang.hu@kernel.org, atenart@kernel.org, broonie@kernel.org,
	tglx@linutronix.de, jiaxin.yu@mediatek.com, simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com, chunfeng.yun@mediatek.com,
	linux-arm-kernel@lists.infradead.org, ck.hu@mediatek.com,
	herbert@gondor.apana.org.au, jitao.shi@mediatek.com,
	tinghan.shen@mediatek.com, fparent@baylibre.com,
	linux-media@vger.kernel.org, mripard@kernel.org,
	daniel.lezcano@linaro.org, frank-w@public-files.de,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	andersson@kernel.org, olivia.wen@mediatek.com,
	linus.walleij@linaro.org, kyrie.wu@mediatek.corp-partner.google.com,
	dri-devel@lists.freedesktop.org, mathieu.poirier@linaro.org,
	eugen.hristev@linaro.org, tzimmermann@suse.de,
	jassisinghbrar@gmail.com, matthias.bgg@gmail.com
Subject: Re: [PATCH 10/38] dt-bindings: regulator: mediatek,mt6332-regulator:
 Add missing compatible
Message-ID: <175347537496.1837320.18080816352465991088.robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-11-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724083914.61351-11-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_132936_700616_97FC09DA 
X-CRM114-Status: UNSURE (   8.42  )
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


On Thu, 24 Jul 2025 10:38:46 +0200, AngeloGioacchino Del Regno wrote:
> This binding had no compatible and for this reason would not be
> applied to anything: add the missing "mediatek,mt6332-regulator"
> compatible.
> 
> Fixes: e22943e32e1f regulator: ("Add bindings for MT6332 regulator")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/regulator/mediatek,mt6332-regulator.yaml      | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
