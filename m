Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C35F9C87FCE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xI5Dc/GRleYH1DoMMUK9MDqizKuTvk+x2RLMHqsTF4E=; b=2mwBELVW6c7nfk
	ZEIL7jtuJ1MOagF9bUitglOXwNHO/vmqk5mQ80tDXtQFtHrBt8ISQDv9DWsY84DJdP6xvD4lBUS+M
	Osoaxyr6loDaQHwjsN4Hl+ErfzzVZlT5lLZMg2Q0jeZxncaIJlSAz+ZV0COp0Woiv2SiqsOC+x2X5
	tjTuZm0EHNJyNzU5nHGh5V/TeikShrqX42TFT98Bvp7BO/M/kaHTd0a/8v5x4UOIYlFkJnAvX+O+z
	KYVVP228YZiqKuP02QvloClB1+jHWZpWpePWRMjfZ+zCYuAmGRr+g7MbXtTJFgABUVGG9K7CD/lXi
	zqztjoqodgy20QtxOs1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP1m-0000000Adjp-2Gr0;
	Fri, 25 Jul 2025 20:28:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP1j-0000000Adi8-0OOg;
	Fri, 25 Jul 2025 20:28:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B8C4416DC;
	Fri, 25 Jul 2025 20:28:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49DE1C4CEF6;
	Fri, 25 Jul 2025 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475302;
	bh=90YjidsW0zLfZ2EVgtXoscfqDLtrHgB9m/jDQVG5PWk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hCV5qzX5FcJQA4jUKlOvPOf0uPNZFnxjS8SpjO4vPyWdTLmiiniC01y1vRcAEqpuQ
	 ch5awJmTQUZXLkBsqHUw8LR+DvmjjRGNmsiUY3gnWa8juFrOwKLkFaNAywPkRH6X1L
	 2T0Rm+Hnl3I7WH874DB9G1Cfg/rBdOomAfOL9Z0F4gujhwDlk7z4Qvs41FKYpl6kvB
	 +oKfi+dcjn9xFtoLqSl9eOho8FtJ+BZkG4T8okai1wn2zzuXT59v/kd0lUfL7zYJ5a
	 5n5RQAebqjE94nWw6X5XcvwBXf1t/4PmAN0PROqQuBvwdbxGx/oE9W1UiLZLYeAWPz
	 ipk20JnM64rnw==
Date: Fri, 25 Jul 2025 15:28:21 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
	chunkuang.hu@kernel.org, atenart@kernel.org, ck.hu@mediatek.com,
	sean.wang@kernel.org, kyrie.wu@mediatek.corp-partner.google.com,
	airlied@gmail.com, olivia.wen@mediatek.com, frank-w@public-files.de,
	sam.shih@mediatek.com, krzk+dt@kernel.org, simona@ffwll.ch,
	eugen.hristev@linaro.org, fparent@baylibre.com, mchehab@kernel.org,
	herbert@gondor.apana.org.au, tinghan.shen@mediatek.com,
	jiaxin.yu@mediatek.com, linux-remoteproc@vger.kernel.org,
	jitao.shi@mediatek.com, linux-sound@vger.kernel.org,
	mripard@kernel.org, matthias.bgg@gmail.com, jieyy.yang@mediatek.com,
	broonie@kernel.org, shane.chien@mediatek.com,
	linus.walleij@linaro.org, davem@davemloft.net,
	jassisinghbrar@gmail.com, kishon@kernel.org, lgirdwood@gmail.com,
	granquet@baylibre.com, dri-devel@lists.freedesktop.org,
	arnd@arndb.de, andy.teng@mediatek.com, linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org, mathieu.poirier@linaro.org,
	linux-phy@lists.infradead.org, p.zabel@pengutronix.de,
	tglx@linutronix.de, maarten.lankhorst@linux.intel.com,
	andersson@kernel.org, houlong.wei@mediatek.com,
	linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
	linux-media@vger.kernel.org, tzimmermann@suse.de,
	chunfeng.yun@mediatek.com, vkoul@kernel.org,
	linux-gpio@vger.kernel.org, mwalle@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 03/38] dt-bindings: mailbox: mediatek,gce-mailbox: Make
 clock-names optional
Message-ID: <175347530117.1835509.4802205566620946645.robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_132823_151538_257F6C8D 
X-CRM114-Status: UNSURE (   8.59  )
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


On Thu, 24 Jul 2025 10:38:39 +0200, AngeloGioacchino Del Regno wrote:
> The GCE Mailbox needs only one clock and the clock-names can be
> used only by the driver (which, for instance, does not use it),
> and this is true for all of the currently supported MediaTek SoCs.
> 
> Stop requiring to specify clock-names on all non-MT8195 GCEs.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/mailbox/mediatek,gce-mailbox.yaml        | 11 -----------
>  1 file changed, 11 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
