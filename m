Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A474BC7EE24
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 16:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qpraNgoLqPMCOi4Yn1q/+YtOWbKNPGbkwUB+Q4bw/1U=; b=oN20N29uKwvKCvrpZeWZaDUvUZ
	N+iZibnRBbAwOrsDZeH9E+OMMEzZY5yR/oYyIZvDvl65x1jFMvz2wc6YXTfU1u3lo5rGmRrGg2UHn
	x9o+N4UMWUkVjF4FToaON0x7a1iZ0zQRIv7eZu5tv5ZF224stPte0dqFtfH6XOQhtrNXRvEBPnTj0
	rlldJc2svncRuTuY0zfj0fWGqkWLEX4sixE2X4/VdNc4uYvuSp5zc5w2zWgPrdNgaiPhdlUlCXniC
	iffGiW2IEqjt9DTWbsCOT+Nsz3uljUlQEKcLrVpVfoDRnvjFdoQhY3M4YCGKIw4cwIF/O37nFLman
	KnYs4Ysg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyb45-002kup-0w;
	Mon, 15 May 2023 16:28:49 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyb42-002ks0-13
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 16:28:47 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3063891d61aso12429556f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 09:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684168124; x=1686760124;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0EEEgIKjrzXriSIZ47448RB5cvvZ9f5tDK/8irMyJ0A=;
        b=q+6DFdEJ9P6y6gOzW1Amd/ymELg/jIXWBJNSmQSpi/fDkwod/uEA41cAt0DT+rXDgR
         ke33N+i5dCKM0/P2JhM/9MEY5E1bi4U+Iq0vWxU8BCc6Pjf4fxCmxEo6RbO8629K9qT0
         Az65ViRhzQSDrYqSeOXa8lkXrLTkcxhkVDjR0CbySgGeN29S0/BRdQFAOAZ5qfZvw6QN
         rIIEaev5SmOQxj+nuZBy8HqF4f4iv5q8qvDaL1D27MUur1oSZZ3R/UEU3+4nV2FCNwmB
         I4JbiHRS0HIMLtqwIWW9pHJeHUlq7/cjJ3WS69iYg8SXXG/37NP4P6t1RJytRyhy6MGF
         bH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684168124; x=1686760124;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0EEEgIKjrzXriSIZ47448RB5cvvZ9f5tDK/8irMyJ0A=;
        b=LSK3CHAAIEioHtUffPlZrsQqBE08JWeiTtwigW5S/w+Kj2rjMvdoTyPgI2ENaL227h
         kNcLrIHS6nxcGJ6fdq4pDu0iX3bvoSle7fPR3G3L8WqKbHIxGv4o0Dc8OjSa67yKxDiL
         gRBmh9uCY4h5MwlTRdn8vOI0hQG7POQcEB8NV6G/3ShNLBdKxxNye9ApxPYUnoRFHpq8
         PF0+C/C5HBmVLncb+Tqa9gGGVgQdmIZSbGx3FXF0YDQsdYt2vCukGqZFkEHm/06yiKkT
         WhRZUYNFFpUDjLJBhzuiTCVJ1yqLZOlVBD8kTFudOCX6WsVhnq+3JbUF5K+x1UD09hKt
         96Vw==
X-Gm-Message-State: AC+VfDxtjna+dlAOnL+2m7JXpClCztnqednrNbkXx4Qrkg2nBS+qtPfA
	s4WjLq0LD73sZSaxG5aaM9MTjg==
X-Google-Smtp-Source: ACHHUZ4keKZPJ3OsaATsIDklN6VcscEM8Q+RmelGpy5mLTn+dW5HEPELp7rHCx1oGcdaks1d2wvlwQ==
X-Received: by 2002:adf:ef8c:0:b0:306:8034:b2e4 with SMTP id d12-20020adfef8c000000b003068034b2e4mr23192900wro.69.1684168123493;
        Mon, 15 May 2023 09:28:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ee7:a396:6195:bb56? ([2a01:e0a:982:cbb0:ee7:a396:6195:bb56])
        by smtp.gmail.com with ESMTPSA id w12-20020a05600c474c00b003f07ef4e3e0sm30127103wmo.0.2023.05.15.09.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 09:28:43 -0700 (PDT)
Message-ID: <14405799-9b56-6767-4a35-51ab8ae636a9@linaro.org>
Date: Mon, 15 May 2023 18:28:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 04/13] dt-bindings: display: add Amlogic MIPI DSI Host
 Controller bindings
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: Nicolas Belin <nbelin@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
 <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-4-2592c29ea263@linaro.org>
 <fe2f22c7-8c39-faf3-bc65-a7c089200134@linaro.org>
 <eaa3ecd0-dcf0-01d8-b3ea-9dd900215839@linaro.org>
 <80da6b9e-ba82-d2c9-2854-b444635150fd@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <80da6b9e-ba82-d2c9-2854-b444635150fd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_092846_365939_EEBA3B9A 
X-CRM114-Status: GOOD (  21.93  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 15/05/2023 18:22, Krzysztof Kozlowski wrote:
> On 15/05/2023 18:15, Neil Armstrong wrote:
>> On 13/05/2023 20:32, Krzysztof Kozlowski wrote:
>>> On 12/05/2023 15:11, Neil Armstrong wrote:
>>>> The Amlogic G12A, G12B & SM1 SoCs embeds a Synopsys DW-MIPI-DSI transceiver (ver 1.21a),
>>>> with a custom glue managing the IP resets, clock and data input similar to the DW-HDMI Glue
>>>> on the same Amlogic SoCs.
>>>
>>> Please wrap commit message according to Linux coding style / submission
>>> process (neither too early nor over the limit):
>>> https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586
>>
>> This message may be automatic, but context is always important when reviewing,
>> this commit message is a re-spin on v3 that was reviewed by rob but I decided to remove the review
>> tags since I added a new clock and did some other cleanups.
>>
>> While the process describes "how the patch itself *should* be formatted", it's a best effort
>> and not a blocker.
> 
> Other issues are blockers.

I agree with that

> 
>>
>> I'll fix the wrapping since you pointed out, but referring to the submitting-patches.rst
>> file (from a very old v5.18-rc4 version) is kind of childish.
> 
> It's just a link stored in automated responses, what's here childish?
> It's still valid in current cycle! Look:
> 
> https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597
> 
> What's the difference? Srsly, I can point you to submitting patches
> without reference to specific line if you wish... Or you can check by
> yourself.
> 
> I give the same reviews to so many people that have templates and Elixir
> happens to be the only place allowing bookmarking specific line. Which
> is helpful for beginners because the entire doc is huge.
> 
> I can make an exception for you and never paste direct links.

I value those kind of links for beginners and newcomers, really, it's a good
thing to do and we should all do the same.

But I always take in account who I'm reviewing, and adapt my comments,
I think it's sane to not appear as rude because we all forget to check
some stuff when send patches upstream, or at least I often forget...

Anyway, don't make exceptions or change your process for me, I'll live with it.

Neil

> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
