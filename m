Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0E71C87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/UZvTCfGP9lbD2dEONAHd7xBreudUe4ZmgV7A3+v8I=; b=hNzNtNgDlRWANH
	18rcuaYyToBs6710zfbkOR7pzK7zYBwd/M/P6omxdHb4xAPoD8DgB72ESx2kPgHDbTH1KxaIk7Vj9
	hgcvxlLvkJvVhlo9adyQU74LLipSdAAkBVs/jtEtP17wzJuNfxZx4WCYWCFttiO7wmIqbA9dohpsN
	Ck3KM34CZG7cS2Toq+l9PLbhvS1BNLkXEt3nJtKhlq2YHpOykUzEJKnZAq1PM4wvI6LOvAx0MRyCX
	uLHBjb9xIRZoFMAM3sckwA0KBtXxTj7DlfdWGnhZlDTyE8LJGk6eGXs55oNLXD9ub0OANE4MLWNYi
	/rzNraoA6z9c4RMKCqGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP3n-0000000AeO1-38uT;
	Fri, 25 Jul 2025 20:30:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP3k-0000000AeLp-1o0S;
	Fri, 25 Jul 2025 20:30:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2391944F67;
	Fri, 25 Jul 2025 20:30:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3FC8C4CEE7;
	Fri, 25 Jul 2025 20:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475428;
	bh=ba7r3CQWnc9Pg59zckBMYOhewHfZtzF4js8BFZ+0f9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dbW8S110p3NBmLaJdPOPH54qeqD00XyhjoRdv89Oc/9seV5Gebju3lz+V2fFMuB/Q
	 ZG8upnvyRHMVpuySek1hBhmyctGYtzAQ6cXCXKjp1lQQHSzkE4iUJER7UN+9bgbZVA
	 QD1lVSbKRyDW0ZEe0/EMwhfbQ3E0gDpivtn/VhyvaLE9BDL80GMlVu3pdeb2Z5HYzH
	 TunHOOTBpQ6fbovuC8fjR2Xisgued54rZ+8BjIfP0ES1hs+vhy0arR1Uy65Q8BhfC2
	 L9k/9/uQq129XN7CqmqHgViTcChBd1BD0wYRt70Q9poeuLwbSEYOWmAUrgkw/tMMZW
	 DvOdLKPmgYbZg==
Date: Fri, 25 Jul 2025 15:30:27 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: andersson@kernel.org, devicetree@vger.kernel.org, ck.hu@mediatek.com,
	olivia.wen@mediatek.com, linus.walleij@linaro.org,
	tglx@linutronix.de, mathieu.poirier@linaro.org,
	sean.wang@kernel.org, andy.teng@mediatek.com,
	jiaxin.yu@mediatek.com, kishon@kernel.org,
	linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
	jieyy.yang@mediatek.com, simona@ffwll.ch,
	linux-mediatek@lists.infradead.org, krzk+dt@kernel.org,
	linux-remoteproc@vger.kernel.org, mwalle@kernel.org,
	davem@davemloft.net, airlied@gmail.com, chunfeng.yun@mediatek.com,
	linux-crypto@vger.kernel.org, tinghan.shen@mediatek.com,
	arnd@arndb.de, chunkuang.hu@kernel.org, atenart@kernel.org,
	linux-phy@lists.infradead.org, frank-w@public-files.de,
	linux-media@vger.kernel.org, sam.shih@mediatek.com,
	mripard@kernel.org, lgirdwood@gmail.com, daniel.lezcano@linaro.org,
	maarten.lankhorst@linux.intel.com, houlong.wei@mediatek.com,
	dri-devel@lists.freedesktop.org, herbert@gondor.apana.org.au,
	matthias.bgg@gmail.com, jassisinghbrar@gmail.com, vkoul@kernel.org,
	mchehab@kernel.org, linux-gpio@vger.kernel.org,
	kyrie.wu@mediatek.corp-partner.google.com,
	linux-arm-kernel@lists.infradead.org, shane.chien@mediatek.com,
	conor+dt@kernel.org, p.zabel@pengutronix.de, granquet@baylibre.com,
	jitao.shi@mediatek.com, fparent@baylibre.com, tzimmermann@suse.de,
	eugen.hristev@linaro.org, broonie@kernel.org
Subject: Re: [PATCH 12/38] dt-bindings: regulator: mediatek,mt6331: Add
 missing compatible
Message-ID: <175347542615.1838505.12887834541571951617.robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-13-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724083914.61351-13-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_133028_489019_C2642DAA 
X-CRM114-Status: UNSURE (   8.50  )
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


On Thu, 24 Jul 2025 10:38:48 +0200, AngeloGioacchino Del Regno wrote:
> This binding had no compatible and for this reason would not be
> applied to anything: add the missing "mediatek,mt6331-regulator"
> comaptible.
> 
> Fixes: 6385e21692bb ("regulator: Add bindings for MT6331 regulator")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/regulator/mediatek,mt6331-regulator.yaml      | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
