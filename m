Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41CB3C87FCD
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NvrYusNcJENSEdR8t6CCGgeKjeRv190z6RXx91xJF18=; b=kDZOkhzUIVeu6NGnjcou9D752K
	55m/AXxNtfKQ8E4RfdhcM5S4nWt6LypzEnvQWK2lVmJuA1Jj0bCV1MQbyk2KZheUqJfWu4MMMDine
	yPI9h530MRBOzu/ShIbS/Q1VDVFQLsHWr4RyMkIscAMU777DrL7ATaBk+Q6rqx5LktSl3pffZ2uBi
	7ijd9l7c9Vf3tGzKIQHtIAvefHFjJlqb1esk27cdJiqSFtkVwEnP/3emlstnl3RstF30UnUs6wJ6X
	eXJr+nW8QAlS0xbOH6BPtYQHjJwYD55WsEt8LjcrZEg881RYQf/JHTh2gwemlFlV5n45eBwP5XVE/
	7T+NDuoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewOC-00000007bE2-1mqp;
	Thu, 24 Jul 2025 13:53:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uetz3-00000007K8M-1ej1;
	Thu, 24 Jul 2025 11:19:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BDE9C449F5;
	Thu, 24 Jul 2025 11:19:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BECBC4AF09;
	Thu, 24 Jul 2025 11:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753355972;
	bh=fKCuPREZ1fbNq7ig0PZdlTERupyUK7tD1jI8Qmyxs+g=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=sB9F7RQrKGg3BH5HBxZKEtr+kJAxtHztDJOH4j06rLBPmyPtxR8iCzQpvE8FN+9Iy
	 mcD/YAzmcUN8OsUa43o8rwSj9x+YBqvRJh5DMVuUHTFfj26IXlM/FWU+DH4kTUOUnl
	 FTi6NYjKApl0W1cCWyKtot5HZx3NdodGu8tGv8g+/FaCls7mqFfxAzSgirg+XBM7mp
	 YGT8Ybuu8+k/A3ti+/lmcOOP8rNX+h4vLb+A/HBHRXSF2bbwqJj6IdGKM6kE5fzSw3
	 zV9RNcWAGwDhEKw8LyJsm8l8Xse6hXdc0a6Hv6btUM7ggBxiqyHO9q+EUnGjDVQupz
	 EcJuB5Dd0NFIg==
Date: Thu, 24 Jul 2025 06:19:31 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: atenart@kernel.org, maarten.lankhorst@linux.intel.com, 
 houlong.wei@mediatek.com, linux-sound@vger.kernel.org, tzimmermann@suse.de, 
 mwalle@kernel.org, dri-devel@lists.freedesktop.org, airlied@gmail.com, 
 jieyy.yang@mediatek.com, linux-arm-kernel@lists.infradead.org, 
 linux-gpio@vger.kernel.org, herbert@gondor.apana.org.au, 
 sean.wang@kernel.org, kishon@kernel.org, arnd@arndb.de, 
 linux-media@vger.kernel.org, granquet@baylibre.com, vkoul@kernel.org, 
 lgirdwood@gmail.com, tglx@linutronix.de, devicetree@vger.kernel.org, 
 mripard@kernel.org, ck.hu@mediatek.com, 
 kyrie.wu@mediatek.corp-partner.google.com, simona@ffwll.ch, 
 krzk+dt@kernel.org, p.zabel@pengutronix.de, matthias.bgg@gmail.com, 
 mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
 jassisinghbrar@gmail.com, linus.walleij@linaro.org, conor+dt@kernel.org, 
 jitao.shi@mediatek.com, tinghan.shen@mediatek.com, 
 chunfeng.yun@mediatek.com, davem@davemloft.net, eugen.hristev@linaro.org, 
 linux-kernel@vger.kernel.org, mchehab@kernel.org, jiaxin.yu@mediatek.com, 
 chunkuang.hu@kernel.org, andersson@kernel.org, frank-w@public-files.de, 
 fparent@baylibre.com, linux-remoteproc@vger.kernel.org, broonie@kernel.org, 
 linux-mediatek@lists.infradead.org, andy.teng@mediatek.com, 
 sam.shih@mediatek.com, olivia.wen@mediatek.com, 
 linux-crypto@vger.kernel.org, linux-phy@lists.infradead.org, 
 shane.chien@mediatek.com
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-9-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-9-angelogioacchino.delregno@collabora.com>
Message-Id: <175335596917.1587632.3054141049365225304.robh@kernel.org>
Subject: Re: [PATCH 08/38] dt-bindings: pinctrl: mediatek,mt7622-pinctrl:
 Add missing base reg
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_041933_478938_751308F4 
X-CRM114-Status: GOOD (  11.33  )
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


On Thu, 24 Jul 2025 10:38:44 +0200, AngeloGioacchino Del Regno wrote:
> The pin controller for both MT7622 and MT7629 need both a "base"
> and an "eint" MMIO like the ones found on other MediaTek SoCs:
> while devicetrees have always been correct, the binding is not,
> as it only allows an "eint" reg.
> 
> Add "base" to reg-names and increment maxItems for reg to two.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.example.dtb: pinctrl@10211000 (mediatek,mt7622-pinctrl): reg: [[0, 270602240, 0, 4096]] is too short
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250724083914.61351-9-angelogioacchino.delregno@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
