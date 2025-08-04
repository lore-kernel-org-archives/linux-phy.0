Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 850F2CA0EC3
	for <linux-phy@archiver.kernel.org>; Mon,  4 Aug 2025 09:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=karrzHLGtYe1gVnFcQwKzO94RaefWNsS7Pz5cYrjn2E=; b=4fdg5JcQ8HHd0Y
	+UXpyWkGecL5MJpuiPPtmMKdvleCENVAFmGCRxfB79diJH6JvUNBYVR7jAk1SBogDlODOSwRE4Rtz
	ohwqMkSBI9TSBg61skmljdDHzaxoZCYpY7okXTYz5oNp6Ucksm7ZScn5w65arIfvGLVzAPVXpuY9i
	dFKNRqOFTckS9qgkMH7QPifme+JvC8odcjUs3I0SFBuKfg2jwhfsjj5LF4+3VLAvNJ0Y0EoQSaSo7
	Cs2C6LL6/JGpRi3W8triG5l8La+bCBVoXc3fYRFHwXXPO/fB3RLZPXpE9C8vl91hxFtxy3tJCcMzQ
	14l2KYQkpiSvQJoo6CmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uirSn-0000000A4os-0v3Y;
	Mon, 04 Aug 2025 09:26:37 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uirB1-0000000A325-3FiB;
	Mon, 04 Aug 2025 09:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1754298493;
	bh=dNCb1GbU+zMwwHGSEs5J88EmPe3I2aoFVC/o3+7U2F0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PlBHTgSi+7JUOYuxMn8femLuLfq3RszCQHshgoXnZkewKPTRWb22SaKzxCGHhf840
	 FQTF+WkJpIePV9vztC7CZg4vYnqlyZRMQG56aEoIjG7KFvVRT+Kj4scAov60j7U5ec
	 Fzz8Ec1QZUc8YC4G13q8/RbRYSKruZQQxe1PirBbachk/U30E0fnliOldzBjunQON/
	 +dvTmo6jULLhF59a8odkYh/Q+tot5DtamutSrYLrrNMH9Bvnh+GB6u9hPnunLJtliO
	 0tmK/DIrbt53tW3dHiFdNBmZ5ChqnnxHdFu1OtU3dZyHCGWHzIoP9IUvu9EYfsEQhh
	 u/iH0Tx98hw7Q==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9849017E0593;
	Mon,  4 Aug 2025 11:08:11 +0200 (CEST)
Message-ID: <fe135942-3040-4858-b2e4-a8e4507b89e9@collabora.com>
Date: Mon, 4 Aug 2025 11:08:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/38] ASoC: dt-bindings: mt8192-afe-pcm: Fix clocks and
 clock-names
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
 <20250724083914.61351-5-angelogioacchino.delregno@collabora.com>
 <b7c9f6b8-4f29-4e38-9c93-e22cfed7229d@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <b7c9f6b8-4f29-4e38-9c93-e22cfed7229d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_020815_987317_E28FA80E 
X-CRM114-Status: GOOD (  15.62  )
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

Il 24/07/25 11:12, Krzysztof Kozlowski ha scritto:
> On 24/07/2025 10:38, AngeloGioacchino Del Regno wrote:
>>   
>>     clock-names:
>>       items:
>>         - const: aud_afe_clk
>>         - const: aud_dac_clk
>>         - const: aud_dac_predis_clk
>> +      - const: aud_adc_clk
>> +      - const: aud_adda6_adc_clk
>> +      - const: aud_apll22m_clk
>> +      - const: aud_apll24m_clk
>> +      - const: aud_apll1_tuner_clk
>> +      - const: aud_apll2_tuner_clk
>> +      - const: aud_tdm_clk
>> +      - const: aud_tml_clk
>> +      - const: aud_nle
>> +      - const: aud_dac_hires_clk
>> +      - const: aud_adc_hires_clk
>> +      - const: aud_adc_hires_tml
>> +      - const: aud_adda6_adc_hires_clk
>> +      - const: aud_3rd_dac_clk
>> +      - const: aud_3rd_dac_predis_clk
>> +      - const: aud_3rd_dac_tml
>> +      - const: aud_3rd_dac_hires_clk
>>         - const: aud_infra_clk
>>         - const: aud_infra_26m_clk
> 
> 
> You can only add to the end of lists, not in the middle.
> 

The devicetree follows exactly what I've done here, and if I add to the
end of the list (which was wrong from the beginning), I'd have to reorder
all of the clocks in the devicetree node as well.

I know that I'm not supposed to add those there, but this is not about adding
new clocks, it's about adding ones that were missing in the middle.

> Also, please drop all _clk suffixes and aud/top prefixes. These are
> supposed to be clock inputs, so you name them based on this device. Not
> based on the provider's name.

That breaks everything: the driver uses the _clk suffixes and aud/top prefixes
to get clocks by name - I know that "driver" and "binding" are not two words
that go together in that sense, but *otherwise* we'd need to perform way bigger
changes to get this situation resolved.

Those "way bigger changes" would also add bloat to the kernel as we'd need to
parse clocks with old and new names.

Can we please avoid this on SoCs from years ago, which are only getting maintenance
and no new feat/dev?

Thanks,
Angelo


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
