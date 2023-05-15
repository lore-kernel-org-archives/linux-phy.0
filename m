Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD3EDC7EE23
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEsDDS1oOUslz/z3xyoZZL9mG1WGii83YvyfPf3v3TY=; b=q6pr/fOEDvzn/b
	4JTHn7zOpC3y7gss/FE/xMfkmSYeE+uQ8Jk+vRWFs49rEMhtCZ9nvZTAewzEkS2yNgb1hNh4kGZS8
	BUxloD0/b1oio6FRCEQyeDZW29xHbuBHhKgu6pwlgF50dPUuvEM0b00LsUftgxeHkNK8kjhwHHLMt
	KT9IZR6cUHvlNCr3tpjx2BCcra/iTyfrK5ID2kK1PWJ86qI2bPwZEIV9rlVIG1PjaOdqA1gd+y3Lt
	YWXJJDNrRuiousP+3ji+ENrlfSoLgEoFSmpVT5Mcz4iXKUmZeEh0dgnsXzIpBNLP7euJ9yicJPBAc
	nr1WyPwQihW7u1uPIcCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pybFm-002nJI-0t;
	Mon, 15 May 2023 16:40:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pybFl-002nIl-0B
	for linux-phy@bombadil.infradead.org;
	Mon, 15 May 2023 16:40:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HqUKnr7IQo6kAfIcW46mPtLrFF4JcKeEB/JMB18Eu9o=; b=fXtwAoZUrEz++bMiVwY8nKNhHf
	Miq9GUSSs6feLfjDdnfkczIxfGCBmzOPOtAinB8ddA+wMfMrkVb8uP2Sc1Bw1TF+zBhPnTeUPyzhc
	9zugTO2ISzaga/NKEbP2yERiFiQ7k33CHPnd+qRykH1yYX3vYksD9MeOggBDJAIruQK012GlC+GoK
	RQd4StEIQNKfKjhqIcp56k4W9wTdkdZQxfqBZ2Yl6US+b2mgN4pKxLFl/8jedSWLyahVFVjhc8Kky
	QBrEZY+HVk064AkVFbCdddRIpoKmcX/zzmvszZ7cvYm+Jx3gwXs2zMXnBHj/Rq4LWAGx4UHZfwXru
	I+dP1ZJA==;
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyaxo-00BWQM-2m
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 16:22:25 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so113330967a12.0
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 09:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684167735; x=1686759735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HqUKnr7IQo6kAfIcW46mPtLrFF4JcKeEB/JMB18Eu9o=;
        b=IFOu69xMjQDkgS9weEDled/TdBHMLC8yBGornivzVwLbLX77xvDFLzkoUqW7hi9p1t
         CKaI3h/mDs5Z3JBQ7MBKkh9y4mCkeCX/9i6zRH7s4LBA8ibeKmgux3dAFjRGbwEy+Z36
         ApdQ3qPRZq5UXS2EtTjNC8uyb85BQCuYuGUK0hXmgkcbX7bT17ABTP5SS1jxo54Q0Ujy
         sjdtshj3OT9BXTu3drUjNDncIEBpqNBRRZdoPTJ71PUWyi5VNtciC6D7wzTEJ4XUfXuC
         F3vVSQyZ0Awq5Df63fkIJlHVjiGg/Xx2nrna0EMvpaA52kV2CS0e9KDA0wpEYhJfaeYp
         7kNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684167735; x=1686759735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HqUKnr7IQo6kAfIcW46mPtLrFF4JcKeEB/JMB18Eu9o=;
        b=MxnwfNsmtEJbpM8pM3nDCpa9OyF9WKY+0GjWEyG/RdznKGbwEJwg76YoXnZr4Zl1DK
         L5KUteN4TeIXBg96I0STLJtNi4vQtBP9dy4+W8+joUpGR4gtmGZ4TPBCntPQcabNr3NU
         f73cnBib/J8I+Grm1CQ/5Di0MOZJcvs32jsXTkzeKGy4zzeQqPvM2iTCiRvdJIQoihMa
         kiQUYWcFbe/ewOWnSnSwjyVsQJ8euQF89vk67adqQs3gzA9+8LOzM5hpOrqIeLbOtTEk
         vS5AoD3ncr0jVI5K0dG1KODtQkXA7rpn2De300T1q5KtApqlwJQ1JxiPNt9fjakTBqMc
         vlng==
X-Gm-Message-State: AC+VfDzo5S4oc3wLWom+6LzMQ6TOjJsnU1JxsD7rso99ULnrFN4NcZ7Q
	osgH5VXxmB7mZ9rL6ZfCMc49+Q==
X-Google-Smtp-Source: ACHHUZ4LIljnAHBUrSfA9rndvPnsXVWvxuzuNDX+pSF5zFw9AsRvRtnw68XknYeYz635GIn79GF7dw==
X-Received: by 2002:a17:907:3ea8:b0:953:37d9:282f with SMTP id hs40-20020a1709073ea800b0095337d9282fmr28963636ejc.38.1684167734983;
        Mon, 15 May 2023 09:22:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id fy7-20020a1709069f0700b00965af4c7f07sm9645534ejc.20.2023.05.15.09.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 09:22:14 -0700 (PDT)
Message-ID: <80da6b9e-ba82-d2c9-2854-b444635150fd@linaro.org>
Date: Mon, 15 May 2023 18:22:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 04/13] dt-bindings: display: add Amlogic MIPI DSI Host
 Controller bindings
Content-Language: en-US
To: neil.armstrong@linaro.org, Jerome Brunet <jbrunet@baylibre.com>,
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <eaa3ecd0-dcf0-01d8-b3ea-9dd900215839@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_172220_954646_FE15152B 
X-CRM114-Status: GOOD (  14.24  )
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

On 15/05/2023 18:15, Neil Armstrong wrote:
> On 13/05/2023 20:32, Krzysztof Kozlowski wrote:
>> On 12/05/2023 15:11, Neil Armstrong wrote:
>>> The Amlogic G12A, G12B & SM1 SoCs embeds a Synopsys DW-MIPI-DSI transceiver (ver 1.21a),
>>> with a custom glue managing the IP resets, clock and data input similar to the DW-HDMI Glue
>>> on the same Amlogic SoCs.
>>
>> Please wrap commit message according to Linux coding style / submission
>> process (neither too early nor over the limit):
>> https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586
> 
> This message may be automatic, but context is always important when reviewing,
> this commit message is a re-spin on v3 that was reviewed by rob but I decided to remove the review
> tags since I added a new clock and did some other cleanups.
> 
> While the process describes "how the patch itself *should* be formatted", it's a best effort
> and not a blocker.

Other issues are blockers.

> 
> I'll fix the wrapping since you pointed out, but referring to the submitting-patches.rst
> file (from a very old v5.18-rc4 version) is kind of childish.

It's just a link stored in automated responses, what's here childish?
It's still valid in current cycle! Look:

https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

What's the difference? Srsly, I can point you to submitting patches
without reference to specific line if you wish... Or you can check by
yourself.

I give the same reviews to so many people that have templates and Elixir
happens to be the only place allowing bookmarking specific line. Which
is helpful for beginners because the entire doc is huge.

I can make an exception for you and never paste direct links.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
