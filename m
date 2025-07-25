Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C8FEC87FD1
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sdqqKptdj+BXJAhVG4+RYO76Tg3byaNVFu6UY18Pqs=; b=i+Di7S0kXFZKl5
	dREkaag2/1fAiPRBh9r+dEJm/s63NEnJzXOia7O72uXrEobdI+U3rH35Bw+PmHZMH0l7PQn0py3Rc
	9cX4Nw0R/prujKNqLZgxTTTOjvIdHy1oI5My0eDC9ox4ipcTTq1g8GJpTLbc22xV279PktYvGkJPZ
	5HY0aU8jTBpdKqfLGHaaKtgYe7jZN55NXlxXT3JILDkbQu1McKr6rW7wg5siQBz7tAuhKZ+tzHrbE
	Iilke19MfQL03tWj/45x2jjpzwFg2bWnDWZLA6S/t+9h1MploS6ikZc1cBWR8rKVzNKs2gxCwZhl+
	NCnB9vHJbHSdSI4zrMQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP3e-0000000AeJX-3ubk;
	Fri, 25 Jul 2025 20:30:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP3c-0000000AeHz-00rr;
	Fri, 25 Jul 2025 20:30:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A63B04192B;
	Fri, 25 Jul 2025 20:30:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63321C4CEE7;
	Fri, 25 Jul 2025 20:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475419;
	bh=3rcW5T4b32wrtkaTZSV6Q1gWpx5l5voD3MquK0Q4cBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uZ5PA19btE/yRueT0j7fKcKmN3DrMeOir0e1gsbj8yaS3uyi7D1F4UIlMCA/slpDZ
	 ihTd7CKXcZf+1sZVkBN8RJGE7md62p2I+6yNu66rojh30veUJOQKBcBuPGOPf5RQhA
	 elqqrdDAq8PsPQ5JSKaJd8sOWHhdEXt8LbrdddRC9fmK7Kt2S+ziBl/smsPhXYiSjr
	 7sSN8zjT5m4DiFA48LfhRzhV20060InQ0rid92ItlB17orD6FLLlJ+SYC6Jv6Jza9r
	 PxhNzX3yRaJYJ+TbUMIrod+90q2XCWbaLBsd+9A+s9gOjdKa5AH7eesTheQU4l+cjb
	 Qigm1vllcFhsg==
Date: Fri, 25 Jul 2025 15:30:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: p.zabel@pengutronix.de, matthias.bgg@gmail.com, jitao.shi@mediatek.com,
	shane.chien@mediatek.com, linux-mediatek@lists.infradead.org,
	herbert@gondor.apana.org.au, houlong.wei@mediatek.com,
	sean.wang@kernel.org, mathieu.poirier@linaro.org,
	linux-media@vger.kernel.org, conor+dt@kernel.org,
	broonie@kernel.org, daniel.lezcano@linaro.org,
	granquet@baylibre.com, arnd@arndb.de, andy.teng@mediatek.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	eugen.hristev@linaro.org, chunfeng.yun@mediatek.com,
	sam.shih@mediatek.com, linux-crypto@vger.kernel.org,
	airlied@gmail.com, davem@davemloft.net, atenart@kernel.org,
	tglx@linutronix.de, linus.walleij@linaro.org,
	frank-w@public-files.de, jiaxin.yu@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, tinghan.shen@mediatek.com,
	mchehab@kernel.org, jieyy.yang@mediatek.com, lgirdwood@gmail.com,
	linux-sound@vger.kernel.org, vkoul@kernel.org, tzimmermann@suse.de,
	jassisinghbrar@gmail.com, mwalle@kernel.org, fparent@baylibre.com,
	linux-gpio@vger.kernel.org,
	kyrie.wu@mediatek.corp-partner.google.com,
	linux-remoteproc@vger.kernel.org, mripard@kernel.org,
	simona@ffwll.ch, devicetree@vger.kernel.org,
	chunkuang.hu@kernel.org, ck.hu@mediatek.com, andersson@kernel.org,
	kishon@kernel.org, olivia.wen@mediatek.com,
	maarten.lankhorst@linux.intel.com, krzk+dt@kernel.org
Subject: Re: [PATCH 11/38] dt-bindings: regulator: mediatek,mt6331: Fix
 various regulator names
Message-ID: <175347541826.1838218.10273283619500191646.robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-12-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724083914.61351-12-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_133020_059055_4BB9FE5B 
X-CRM114-Status: GOOD (  10.30  )
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


On Thu, 24 Jul 2025 10:38:47 +0200, AngeloGioacchino Del Regno wrote:
> This binding was never applied to anything because it misses the
> compatible, hence any mistake in it got unnoticed.
> 
> Before adding the compatible to let it apply, fix the names and
> the node names of various regulators.
> 
> Fixes: 6385e21692bb ("regulator: Add bindings for MT6331 regulator")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../regulator/mediatek,mt6331-regulator.yaml         | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
