Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534C2C87FDA
	for <linux-phy@archiver.kernel.org>; Mon,  4 Aug 2025 09:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8rCFYRg5qGJBaeWKQLWbbfk/MIFHpvf3+XDYf1r4qo=; b=af1BPladoGHxF+
	7QV9dUsH5gNd8S4/2pYpsV+LOsXQQ9mwB669vbrsMeHLtodcOq+qiGuSACoSmQSusW1MIunqzeij0
	2yTHVYaP1BmAElsy4WkPcI+OHMswZ6OzMG2aIPGRo6HuRUW8mh0WXQRJjwT0OI5NywPfHpvlMDAxG
	bQn0jEiqceAvsJcTXqys/rU1ZkaE9t7asA98eXuXg+JwbXuhiKyqQnsWlEUxhCT8Eoo9IjMtKGadb
	j42n2k+haMczIrYs8ES1HLjc+/LC+qVXdvyNMbm/ZMyC3Sz8cw/PPehIzfK9mNI9l9Oroo7xNKh01
	X30nmOxZ6IWWulXeCLjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uirSm-0000000A4mk-05Vy;
	Mon, 04 Aug 2025 09:26:36 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uir5k-0000000A25C-1whF;
	Mon, 04 Aug 2025 09:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1754298166;
	bh=8C3vrohJCMkNz48Npe0D4JIHwbn6kl862AvU60VY+nc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JLhO9L5BrmEQq9pumRV6CfhrlnygeF7jd5jsfvnwprETB0viNvn+WVgy4x+oprZNy
	 NZMHKJ5FUGdpXtd/Z91veR88ZNZxnRiWy8gzUpM4VD3Bp1+ZMGJqkHlVDnltCmoX77
	 pEC0B9HdhIbwF0CXCerXL5yvMdtg6lc/MykiJ5GtAdNMH6gFfi+lYx/xupQv3RbuJ0
	 NJv4suYr1gAPIRqj1dlB/qP3+0QaKx3IJNkcXs/mM23ZuHvaqBDEZUS58CU+kpHguY
	 UFnQcc/YiVj/hwrJ2+LpHeezdF7hUj7DmtnENhEATscLQJ5rLRzsOuY/8U3nY2X7ZL
	 NL5nQ/VDDluIg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6AF9917E04DA;
	Mon,  4 Aug 2025 11:02:44 +0200 (CEST)
Message-ID: <72934f23-08eb-4214-a946-7aa7a432352e@collabora.com>
Date: Mon, 4 Aug 2025 11:02:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/38] dt-bindings: media: mediatek,mt8195-jpeg: Allow
 range number in node address
To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-mediatek@lists.infradead.org, robh@kernel.org
Cc: herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org,
 conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
 airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com,
 mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com,
 vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org,
 linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org,
 andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org,
 tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com,
 ck.hu@mediatek.com, houlong.wei@mediatek.com,
 kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com,
 tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com,
 olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org,
 arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com,
 frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-15-angelogioacchino.delregno@collabora.com>
 <70ae6787-ee0b-43a0-851e-1fb6c82f6c31@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <70ae6787-ee0b-43a0-851e-1fb6c82f6c31@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_020248_653370_3D43D881 
X-CRM114-Status: GOOD (  11.17  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 24/07/25 11:14, Krzysztof Kozlowski ha scritto:
> On 24/07/2025 10:38, AngeloGioacchino Del Regno wrote:
>> The dual and triple core jpeg encoder and decoder (respectively)
>> on MT8195 are far apart: the only way to have this to make sense
>> is to split those in multiple address ranges in device trees as
>> one big range would overlap with other IP in at least the MT8195
>> SoC.
>>
>> Change both the jpegdec and jpegenc bindings to allow specifying
>> children nodes such as "jpegdec@0,10000", "jpegdec@1,0" or for
>> encoder "jpegenc@0,0", "jpegenc@1,0" to resolve dtbs_check issues.
> 
> 
> This should not be needed for standard MMIO/simple-bus nodes. I think
> DTS is wrong here.
> 
> Which cases really need the ','?
> 

All of the multi-core JPEG enc/decoders on MT8195 (and newer).

The DT changes are included in the same series as this commit; check:

20250724083914.61351-35-angelogioacchino.delregno@collabora.com

Cheers,
Angelo


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
