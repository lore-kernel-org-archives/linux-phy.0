Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09BE9C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 04:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BStRl4op96Cn0+YQrWErxZW4Z8+TkhhpUR6fXwGvNYU=; b=Ea6eWEpWZPS42A
	TRuU0q0DF5GQCFArqLnihdIpg01mdAVPOiAueJihVGTDgYJcDu60MUekWxpRgEQ2rZi47DtVAGJKs
	jkpcAjTclZMutrMYUtljHe9mH874fZQO2sw9MDw6+EiU4mLbL6QAy7nolqD5pieHudD/YSE6xU3Ml
	JjlsQhLyOmSDltDQC4WMqK8JI0XZhZg/R+C/Y1YWLUsxJo/fKm+N2b1yj/r5JDwl+KZZTZwGN4fFz
	hrgBrb+s93ZGxjH2EqufWlqoRD5Y/BlO3bud7IlWhDXTZlzsJfFuomjaI7S3G0d8GcE42tgLhyCSW
	rBey54K28Cc7N0jAGL2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oi75C-003GTn-Bn; Tue, 11 Oct 2022 04:41:34 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oi759-003GSp-RF
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 04:41:33 +0000
Received: by mail-pg1-x533.google.com with SMTP id 129so11889777pgc.5
        for <linux-phy@lists.infradead.org>; Mon, 10 Oct 2022 21:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=omnom-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RIvDTD88Q5aqj0y5uenzJkWztoDkBAY3byn/dBOudeE=;
        b=EVA5wQHpq0CK/mlaafqza8TV+2AW5CwpjLiSkAtQMcrFNtma67C98aFiD6LL7oumiJ
         4Z/4sh82hlDE9sHeBUO1GTAN5NfO8eXvfzZAz2yhpjIelZ5qyah8J4SZuY6grAcCgoES
         1AX3vKcks4rGIpnMFwkxsJGhIL+Zd+/u9A9l8370pQAGbB3Y1kCXa6qJMxN4rDuyfsG6
         rPP367hdQPMa9RTQ4xbwhFQGxpc00kwISKPWO1E2jK0z2Lq+lNu8+DqYGLcfU7aYb23E
         KDbkB8X6gp6a/z9b6DNoRmTJ6BkfIVnSBs9u1wUEhZTWjrx0u9PFesGBfCUGL34TZ99H
         W8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIvDTD88Q5aqj0y5uenzJkWztoDkBAY3byn/dBOudeE=;
        b=07X6PS4dsDlmh7AGFfO29rWuAnidroOqmC98HecMono5/lIw5sleEaJl9m7gsP4Grx
         8ZWZ7tslfPrguPTtcBuS2VcL2r5s+eIbgOPI8KYxazFJTFmNGvKUiFR8BYXRMuGGP6ng
         c/iWHExpaRaRnJaqUrSHBh9lmq/7vltGlkxngObMGgFqmvQeo0BUQso4LEofcYH56lLA
         iUJSgSDB+jECE6LT7/us1LwYIXLz+56d3W+kh0uGV11nWxNJyEtQVdticTuT2nXuDypy
         fIg1dvHCzvYqwwjtV5WyrOLTPqxJF+RrGaqaPwk4mE2gI1IC8VNo7B//7zJtswKdnsiT
         IPtQ==
X-Gm-Message-State: ACrzQf0NXYdVBJmZn1UlLdOy0JQNFe6bHTYLPKqq9Y922ngHz/7zMlUb
	Wk7yM1uo4jDRSRJYf+CcoX1qjw==
X-Google-Smtp-Source: AMsMyM5Ez+kjDNPf2UflpLcuXB5SAY/OVRHOD5ckuoNILqYaRp1mBkiKDWnx55PKC1x4lOInCKyTEw==
X-Received: by 2002:aa7:9d11:0:b0:563:9272:b659 with SMTP id k17-20020aa79d11000000b005639272b659mr4800544pfp.86.1665463290135;
        Mon, 10 Oct 2022 21:41:30 -0700 (PDT)
Received: from [172.21.10.158] (119-18-16-128.771210.mel.static.aussiebb.net. [119.18.16.128])
        by smtp.gmail.com with ESMTPSA id 123-20020a620481000000b00562832fc0ffsm7768342pfe.56.2022.10.10.21.41.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Oct 2022 21:41:29 -0700 (PDT)
Message-ID: <5bec43fe-ff81-bc68-7b62-9e605b7e1f42@omnom.net>
Date: Tue, 11 Oct 2022 15:41:20 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Frank Wunderlich <linux@fw-web.de>
Cc: Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-2-linux@fw-web.de>
 <20221004150929.GA1506199-robh@kernel.org>
 <EC42D2C8-ACA5-4B6A-BC95-534CBDFC36C8@fw-web.de>
 <20221004205744.q5eybgbx6syszsqq@mercury.elektranox.org>
From: Andrew Powers-Holmes <aholmes@omnom.net>
In-Reply-To: <20221004205744.q5eybgbx6syszsqq@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_214131_888092_9D05CE69 
X-CRM114-Status: GOOD (  16.24  )
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

On 5/10/2022 7:57 am, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Oct 04, 2022 at 05:19:11PM +0200, Frank Wunderlich wrote:
>> Am 4. Oktober 2022 17:09:29 MESZ schrieb Rob Herring <robh@kernel.org>:
>>> On Thu, Aug 25, 2022 at 09:38:32PM +0200, Frank Wunderlich wrote:
>>>> From: Frank Wunderlich <frank-w@public-files.de>
>>
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - rockchip,rk3568-pcie3-phy
>>>
>>> The driver also has 'rockchip,rk3588-pcie3-phy'. Please send a fix 
>>> adding it here or removing from the driver. Are they not compatible with 
>>> each other?
>>
>> Right, original driver has rk3588 support,but we can't test it.
>> Initialization and lane-mapping (bifurcation) was bit different.
>> So we wanted to upstream rk3568 first (but have not removed this
>> part from driver).
>>
>> I see that someone added rk3588 basic support and if he can test
>> rk3588 i can send compatible for it.
> 
> Basic rk3588 support is still WIP. At the moment patches for the CRU
> are still pending as well as base DT. I hope to land them for v6.2
> (so next merge window). At the same time I don't think PCIe support
> is realistic before v6.3.

Hi all,

I can confirm this patchset successfully brings up the PCIe 3.0
controller/PHY on an RK3588 - I'm using a Pine64 QuartzPro64, which is
very similar to the Rockchip RK3588-EVB1 board. Runs fine at x1, x2, x4
lane widths and full 8GT/s lane throughput.

The PCIe 2.0 lanes (which use the same PCIe controller driver) need some
changes to the rockchip-naneng-combphy driver that I've not quite gotten
to a working state, but that's unrelated to this series.

I have a (very messy) tree based on v6.0 (on GitHub at [0]) with
Sebastian's other RK3588 support patches dropped in, along with this
series and a few other tweaks. Works quite well :)

So insofar as RK3588 support is concerned,

Tested-By: Andrew Powers-Holmes <aholmes@omnom.net>

[0] https://github.com/neggles/linux-quartz64/tree/qp64-pcie

Cheers,
A

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
