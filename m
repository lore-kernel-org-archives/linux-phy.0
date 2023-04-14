Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8807C77B79
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 10:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsSMcVJbUqDnnP0ZVVyNGNLSPViy6b30Q9zxvjurwlI=; b=vYzev2spzzw3wj
	VxVWjtNl2SgQyrUkk/lX/h8HedMKpJLcDF+r0d12Ad/UfIXWNnCzM7gTCi3H1/LqML8s0YIhcVPfs
	kvNlA9Q2lDuC0yt0yGFnUb9JHMjrI3wKlr4W+7RcIAv2Vk4qKjBvX7aQ/2RMyUmuwF9LQaHXWZrYc
	nCJdhB1Y0EHbgFz84al6DftV/sDgpZt8qnDbTSB3PU2/7kQqnnOhOgnAdbvQm/1aOMCGp8OUn7Ar9
	+m/nmT69nIzmDnUct3jJgfwPTBj7ugu5s4PBH05NttlVZ17BV8RywbiC6hAZMs2LpFKF5EaTTGPeT
	r0/cMTsU6TjOz0c98rCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGfc-0098vq-1b;
	Fri, 14 Apr 2023 10:28:44 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGfX-0098tr-2Q;
	Fri, 14 Apr 2023 10:28:41 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 914816603222;
	Fri, 14 Apr 2023 11:28:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681468118;
	bh=O6UuvcllmyzTDSJc0UaOYAOQKjJ0Wjevnx+e8DkBSeM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=K7R8qjegIdkwqF/7w5tJJg9sYdFwlpygfiAAU98C2JMgVK6z54cj3NGBb+Dh+a7Dj
	 bhVZ5Ysb9z1WPSdWUKinHqi0zB15C4bAajyFYITfw2htlrg+PD5kZT8oTybHYXR3ZW
	 vLP+6gasJtW94RFPOjLSrRk2nbaHoQxj1BdXWRJ1MI3FI+Piy78/Vbx1UxxGHXqGWj
	 9oc021CUl1y9zyStzyjMhgp27PeAsj1CUsjOv2fDk8Uhchmw4gWvRCI8CBKqgzCxm6
	 I0585IrwHpupbTWjRSNelofMwMGEKVD1G1VDSQJhc5FC16uoar+hXprJwZdT5nHWtl
	 I6OnS2YrUviZA==
Message-ID: <5e085030-39a6-5aec-3c66-bb647b9e8da3@collabora.com>
Date: Fri, 14 Apr 2023 12:28:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 22/27] arm64: dts: mediatek: mt6795: Copyright header
 additions
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-23-angelogioacchino.delregno@collabora.com>
 <6fc26e38-ac45-b4a3-32f0-2bae686371db@linaro.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <6fc26e38-ac45-b4a3-32f0-2bae686371db@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_032839_918573_8B23A758 
X-CRM114-Status: GOOD (  12.35  )
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

Il 14/04/23 10:46, Krzysztof Kozlowski ha scritto:
> On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
>> I have added more than 800 lines to this devicetree: adding myself to
>> the copyright header.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> ---
>>   arch/arm64/boot/dts/mediatek/mt6795.dtsi | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt6795.dtsi b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
>> index 29ca9a7bf0b3..a4c950b65006 100644
>> --- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
>> @@ -2,6 +2,9 @@
>>   /*
>>    * Copyright (c) 2015 MediaTek Inc.
>>    * Author: Mars.C <mars.cheng@mediatek.com>
>> + *
>> + * Copyright (C) 2023 Collabora Ltd.
>> + *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> Copyright is a result of significant changes, thus it is a part of
> commit(s) making these changes. Adding copyrights in separate commits
> looks like you are spreading them unjustified. Squash it.
> 

Ok, I'll squash it in one of the commits of this series.

Regards,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
