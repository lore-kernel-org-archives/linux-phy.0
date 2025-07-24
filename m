Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C71C83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uaNMwK1EEstb4qxuSWc6S8feCiL2IgoFpCQArxOqYAY=; b=iWugBdFZxcU6OAaceTyq31SPiV
	MNnaqSgK8aucUhx45LqU3fKApGe0aZFJON9OavgUCWM6oqt2Uc1wBEAW8cTgj7kh42UD62M+32wiR
	K83t2x/GXT6sf14N2zIN93eifEPSqv1P9JWMBRrMFKJvMOAoyA9bffTM/VilYFBBoJ0nRbCyGvRRu
	OyJOotiHi2zz4fbgHgUR4SswWehThvPlrQgXXVU9Iqu0BnKBt7ztD1Eqgne2m8JXe2nE2vw0khG5W
	2uMBLyPnQgRlZNHWnGDlkfM9AULSBI+x2zKZht/BNa4MtA+dH2ngGfHe9irD79yxKVXYoIYsGjYSE
	QfS/VVUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewOB-00000007bBm-0mHE;
	Thu, 24 Jul 2025 13:53:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uetz3-00000007K8J-1MXW;
	Thu, 24 Jul 2025 11:19:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E49685C6664;
	Thu, 24 Jul 2025 11:19:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69BD5C4CEEF;
	Thu, 24 Jul 2025 11:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753355971;
	bh=s3ZnbItH7r6cLHTy+VwbS1Kg3RPe/mzeNlY5FzZW73M=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=CStr8z/rOsij9S3z3BJm9fHa9iakjiAXVR9PdOK5taBZURJfAPAAkHbj0KuQviY7p
	 KiL6Uvucdwz8LxwOWz7lwhX5I2qtRnTp09/USJTZHE24W+o2XT/5ls0Mo+DqJ/EQGy
	 4vOkkwAzobpebJvh+VgDfNRDeqyhbjww7Rd7PHdXbcy0KDnMtuIOIRC83Uv6MAlwmL
	 VYSko7BVS+mI+5gLRGV68wZS0TlpY3UDdnSSzeclWayt2BApahaiftZuAN6c9obWp0
	 2tUwExST1V+igIM59xAHMg7CBzYem4LQ8BDzMMNqgOtJqDmA0vvctgoZdBWhL20O8G
	 xRs89hLXeFgbA==
Date: Thu, 24 Jul 2025 06:19:30 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: frank-w@public-files.de, herbert@gondor.apana.org.au, 
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, 
 linux-phy@lists.infradead.org, krzk+dt@kernel.org, eugen.hristev@linaro.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 jiaxin.yu@mediatek.com, jitao.shi@mediatek.com, daniel.lezcano@linaro.org, 
 linux-remoteproc@vger.kernel.org, granquet@baylibre.com, 
 lgirdwood@gmail.com, linux-crypto@vger.kernel.org, 
 tinghan.shen@mediatek.com, mwalle@kernel.org, sam.shih@mediatek.com, 
 sean.wang@kernel.org, p.zabel@pengutronix.de, matthias.bgg@gmail.com, 
 vkoul@kernel.org, mripard@kernel.org, 
 kyrie.wu@mediatek.corp-partner.google.com, olivia.wen@mediatek.com, 
 dri-devel@lists.freedesktop.org, atenart@kernel.org, arnd@arndb.de, 
 conor+dt@kernel.org, shane.chien@mediatek.com, houlong.wei@mediatek.com, 
 devicetree@vger.kernel.org, kishon@kernel.org, fparent@baylibre.com, 
 airlied@gmail.com, tglx@linutronix.de, linux-sound@vger.kernel.org, 
 broonie@kernel.org, andy.teng@mediatek.com, jieyy.yang@mediatek.com, 
 mathieu.poirier@linaro.org, chunfeng.yun@mediatek.com, 
 linux-arm-kernel@lists.infradead.org, jassisinghbrar@gmail.com, 
 linux-media@vger.kernel.org, davem@davemloft.net, simona@ffwll.ch, 
 linus.walleij@linaro.org, chunkuang.hu@kernel.org, ck.hu@mediatek.com, 
 andersson@kernel.org, linux-mediatek@lists.infradead.org, 
 mchehab@kernel.org
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-5-angelogioacchino.delregno@collabora.com>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-5-angelogioacchino.delregno@collabora.com>
Message-Id: <175335596838.1587473.6783798436849190740.robh@kernel.org>
Subject: Re: [PATCH 04/38] ASoC: dt-bindings: mt8192-afe-pcm: Fix clocks
 and clock-names
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_041933_445887_AD1914C8 
X-CRM114-Status: UNSURE (   9.28  )
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


On Thu, 24 Jul 2025 10:38:40 +0200, AngeloGioacchino Del Regno wrote:
> Both clocks and clock-names are missing (a lot of) entries: add
> all the used audio clocks and their description and also fix the
> example node.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../bindings/sound/mt8192-afe-pcm.yaml        | 106 +++++++++++++++++-
>  1 file changed, 104 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dtb: mt8192-afe-pcm (mediatek,mt8192-audio): clock-names:3: 'aud_adc_clk' was expected
	from schema $id: http://devicetree.org/schemas/sound/mt8192-afe-pcm.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dtb: mt8192-afe-pcm (mediatek,mt8192-audio): clock-names:4: 'aud_adda6_adc_clk' was expected
	from schema $id: http://devicetree.org/schemas/sound/mt8192-afe-pcm.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dtb: mt8192-afe-pcm (mediatek,mt8192-audio): clock-names: ['aud_afe_clk', 'aud_dac_clk', 'aud_dac_predis_clk', 'aud_infra_clk', 'aud_infra_26m_clk'] is too short
	from schema $id: http://devicetree.org/schemas/sound/mt8192-afe-pcm.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/sound/mt8192-afe-pcm.example.dtb: mt8192-afe-pcm (mediatek,mt8192-audio): clocks: [[4294967295, 0], [4294967295, 7], [4294967295, 8], [4294967295, 47], [4294967295, 58]] is too short
	from schema $id: http://devicetree.org/schemas/sound/mt8192-afe-pcm.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250724083914.61351-5-angelogioacchino.delregno@collabora.com

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
