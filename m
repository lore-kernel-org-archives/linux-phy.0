Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D09C7EE26
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5fqhvjLipjUjD9msQxP6Tl/9cP+gyeqM+a9nLLwuZ6c=; b=o9qhb/ywB3gyZQO78KUAleQPmk
	XBdEHqTUJ/DtwSp4zmGXIOKu0m8iac2qucN/QYJ2i/ftLvUWIhYT9IM/kRMN3nx3ro39Bb43xHsQN
	xk/uNAWHsBuRJKn4ybDXQ0nhC9edHePVFerLy5i4DKW3UTStuWiVpcM/MTax+b5lG/hJqgu42Iz2X
	Y8VeQRopLFEUd1dgsBd4vb4/0TUimHDtKcKvfFXmmXe+Oiaprbi5ONEKL9tdlFPAAGSh54lSLFivN
	u9dOFice63Op+oFjmqYSGrtyTzHtP/atPdU3rCsh60mnkP7eNchbH+SZbdrxqoJ0UlrwI046kCKe6
	DDG2NG+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pybGH-002nZ9-1V;
	Mon, 15 May 2023 16:41:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pybGF-002nYN-26
	for linux-phy@bombadil.infradead.org;
	Mon, 15 May 2023 16:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:Reply-To:From:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=L/BFaR2bXmYV85aZ3VRwxHXRXyNTTuSJM62QQ7kJk14=; b=bfpsX1ojnZ1OwjIdJhiaHt60xH
	JkNYIWNgQHTJDlStv6Ho6E6A/xnPwzrIcYbsn1jgctJVsNdLfvXg4Y1lALpfmJUCnAaBnFFdpDxLw
	wf6FZxsWOMKgggooWPAr09HO5JbLZfPTFSKNLZ3UOjb+m6aqXY46bmOkc6cW+juMZaxf/Bejx8d81
	0q2a6+LB92kTK0RZtkYnsKokEYyIZp5dpKGT4ybJq5nPdQnR+IFtERwlWPI3rolgpWxQv7fxafDEK
	MHS9JW9IwDFFsRDBDmQSE/F6rcJvA4IZwLzBsQfwt6Biq99yS/puTGk4t/kJ0MgurNkurf+9E7hrm
	t48SPI5w==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyayO-00BWRL-2C
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 16:22:58 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3078c092056so6845714f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 09:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684167774; x=1686759774;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=L/BFaR2bXmYV85aZ3VRwxHXRXyNTTuSJM62QQ7kJk14=;
        b=XobnY8dEDD5WdDsk8tbcbCChwsRbJjuhaQcAVTQG6QA4fd8oGxrcXKJ1AgPzDHF4YF
         iuFoC+kO9NnOf4NjasgKbvGzdkx3vkK8Vq3z5lpynoTjyuR6lI9Wlh5JrwXm9ki5bFUa
         lvU4eBabnuZjU1+dgRWwwJuO54dZGOF5z31g2iCiTDMwzccWs0cGGRjNZR1rGlMg57za
         fAt81vYy5OUbGayVg5t4ljnYrTMa20FH+fdAh7okT3u+OZP+B5LNYEG5nyGV/U915VHL
         ILtJEcIOXMFzppP2iokbEhnB+qHCcr8HCYzYwbQ5eoCcBoJTw1ZMppByQhzC10RLlXj2
         aVtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684167774; x=1686759774;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/BFaR2bXmYV85aZ3VRwxHXRXyNTTuSJM62QQ7kJk14=;
        b=ZQgoWSLjbnPz1+flTeD0pkbyjxU6lCh2aOl6BQONVSxX8SQzfLP8TBz1UixT7IOnVT
         1Km0acPvMMR4jUgV9RAEOIQG7D/YnC8H+v+ekOzVieTeQZfpmj15yZnuxiSE2BWHfM1T
         OOsfPu29vC+NV6JU2kDtLYtT2ZQ9xE5o53nH8C2o8pMOQMfhDguvOoYteqm702FWmDYZ
         EgPfmNOQ8FJNbPiY9a/VXn8AOk+F44RPemdEZovG/Ce9xm53jsQUmUsdnQW2cOcEzQ11
         VF84Fz0ZWcuPlMNXUY8UX6fvOI5g8Qnyx/AnNdpA4xThRV/eB2caxuEqgZobeeV/VNA/
         yPHg==
X-Gm-Message-State: AC+VfDw/O8No8y7s975tD6zI/uYyQqL9IX/SU6IawH8RT482DIVfXCGv
	LTX1lnfZbW73gUM6+LvDZrsflQ==
X-Google-Smtp-Source: ACHHUZ45LY914ONoEcieAp+9ip6x5dmqMig4lZWDIrIooklY3Q93vho3dB48zUvDlbhW6BuZmPpLZw==
X-Received: by 2002:a05:6000:1b8f:b0:306:2b31:5935 with SMTP id r15-20020a0560001b8f00b003062b315935mr19815654wru.55.1684167773728;
        Mon, 15 May 2023 09:22:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:ee7:a396:6195:bb56? ([2a01:e0a:982:cbb0:ee7:a396:6195:bb56])
        by smtp.gmail.com with ESMTPSA id u19-20020a7bc053000000b003f09d7b6e20sm37425314wmc.2.2023.05.15.09.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 09:22:53 -0700 (PDT)
Message-ID: <9cba6384-123b-1cd1-ed02-08365a0ed529@linaro.org>
Date: Mon, 15 May 2023 18:22:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 01/13] dt-bindings: clk: g12a-clkc: export VCLK2_SEL
 and add CTS_ENCL clock ids
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
 <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-1-2592c29ea263@linaro.org>
 <5cb38be4-a27f-dc1a-cbb9-c195505a9e7c@linaro.org>
 <9fa0662e-8854-05f9-da7f-ec8e08d2badf@linaro.org>
 <d5c030f9-2f4d-25cc-b922-d00f5033ac37@linaro.org>
 <6228670c-3e06-3061-f304-a2c641962ffa@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <6228670c-3e06-3061-f304-a2c641962ffa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_172256_820250_2EA255A1 
X-CRM114-Status: GOOD (  18.51  )
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

On 15/05/2023 18:15, Krzysztof Kozlowski wrote:
> On 15/05/2023 18:13, Krzysztof Kozlowski wrote:
>> On 15/05/2023 18:06, Neil Armstrong wrote:
>>> On 13/05/2023 20:28, Krzysztof Kozlowski wrote:
>>>> On 12/05/2023 15:11, Neil Armstrong wrote:
>>>>> Expose VCLK2_SEL clock id and add new ids for the CTS_ENCL and CTS_ENCL_SEL
>>>>> clocks on G12A compatible SoCs.
>>>>>
>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> ---
>>>>>    drivers/clk/meson/g12a.h              | 1 -
>>>>>    include/dt-bindings/clock/g12a-clkc.h | 3 +++
>>>>>    2 files changed, 3 insertions(+), 1 deletion(-)
>>>>
>>>> Bindings must be a separate patch from the driver changes. If this
>>>> causes bisectability issues, this means entire solution breaks ABI and
>>>> is not appropriate anyway...
>>>
>>> This is basically how we handled CLK IDs on Amlogic clk bindings for the
>>> last years, the amount of changes is very low and rather exceptional
>>> compared to early development stage.
>>
>> The commits with bindings are used in devicetree-rebasing repo, so we
>> want them to be separate.

A lot of commits changes the bindings and other part of the kernel source,
it was solved with git filter-repo a long time ago.
While I understand in an ideal world those commits should only touch
Documentation/bindings, it's sometime not possible.

>>
>> Meson is the only or almost the only platform making such changes. I
>> don't get why, because the conflict could be easily avoided with using
>> different names for defines in bindings and local clock. Approach of
>> having bindings strictly tied with driver commit is never desired.

If we did it now, we would have make it differently and expose all the clock
IDs on the bindings like on Qcom, be sure of that.

> 
> Also one more argument maybe not relevant here but for other cases -
> this makes literally impossible to include the clock ID in DTS in the
> same kernel revision, because you must not merge driver branch to DTS
> branch. SoC folks were complaining about this many times.

Actually we handle this very simply by having such patches merged in a immutable
branch merged in the clock and DT pull-requests, it worked perfectly so far
and neither Stephen or Arnd complained about that.

> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
