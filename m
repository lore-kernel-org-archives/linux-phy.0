Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED1BEB64D9
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 12:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNq/lULIZKzfHlgCnMMo00Swqy6+ICt9eytiuTzkM7o=; b=KXAarayOJe2OK/
	E88R5UjbgQLfvLm78IXgk8PFgEMfMOVmVbuGj2JjeLZGBweC+ecTwrZv6rnrK8+tP7umsxo9Qh7c6
	xdgn1zc8nXwWif3nEpUDsG5G03WKEv9aJTCq3S0PtlyKJMXxSfr0c+UbrQFMGM1oPgnVbri1qdvAL
	9g6UBrW6RdQ88LHsVuTTliYPjE36I8yNx7eieQIHXp/Qz4xJfKY6Uri+fY/l4zLcVbwewaQvSPZ1x
	jYUNu2i+GQWSdQW0HxejNNjkUZ1u3qkt76NUFbnZFAG1hG0WDaQ7DQFMc3BGRZpkm3XPgH1fGzB01
	uFwZLCiHtEsKjl1KKgdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJYYl-00HTZJ-12;
	Wed, 12 Jul 2023 12:03:07 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJYYh-00HTYH-2u
	for linux-phy@lists.infradead.org;
	Wed, 12 Jul 2023 12:03:05 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9922d6f003cso883112666b.0
        for <linux-phy@lists.infradead.org>; Wed, 12 Jul 2023 05:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689163381; x=1691755381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s9msiQhE0J2p91vHOA4ZOCDcv/a0GBjpu+sTeuRVydw=;
        b=cXsyAbo+BPyMLEl5aWd0tgYnpgsKnblSdATvOzyhjigswuH/EaO1l8LeXOQmuuN3KI
         ndwFf631jU6/x3Am/LAgubiXLCwbOYVcdVWZH1+NF0Tf3cZfY7SeAu1mI6OHOk2KlUoc
         oTOdmAUcl+La8mJhoRdA+o5qk67coofVaGoEWzeWyAfKk54DuLyMeW++MLxr4pZj9aXz
         gzS1OTVySo+GvEAB8MzJXTE8/0kfOybinr8atZWvRZ5hyEb2/Z10rq/FCxXlmAeT07x+
         T/8mUugctYfVnWKHgJO8HNkpdsepFYImoU7d77lnosAMV72FWyCKZk5HB+WHy58M5k8k
         v+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689163381; x=1691755381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s9msiQhE0J2p91vHOA4ZOCDcv/a0GBjpu+sTeuRVydw=;
        b=kY9OVoarbp1upjxlEhu14M18rF714JexQjSJ5JsPJi1nZwgeUiFdhqxF/IeTLByozz
         yor7W93iaYyMP3a16akWeEB6JncY3x7ZPSIbaRq9kEIia6EMbyuq4Xe7st9TDhB55hQU
         Uzb3D5yG0S35ZesjQnRcePT6oyT+2wEtDVEc+/yvUIn8TYScKdF1rlE1nzCql5bTKFHV
         f86O3RurkPAoMFz6btI8pFEO0c2GhtAXMqtVu796YTuUWBNStGVi+ts7hcyEk3XKAoap
         B1uGIYE6ctjfarn1HkbcqN0opmOqJNpOg6NBejRwQHncVJ5WSFR7O1FDyXbVy1qU+Xme
         3+ug==
X-Gm-Message-State: ABy/qLbZW+J1Kv76qj8xa5pR0uCRfGEGlBf8BxSwZjdlbb7qnuVjtsA2
	Re4071TlKbOe1H3w+k+xU0lxXA==
X-Google-Smtp-Source: APBJJlHzdhJk4indcnSb7Y9CQRJsIol7Y1AeSF5J4g7RpsKNs/GqdicRCCJ2FZRXBWmLAzS7nZse2Q==
X-Received: by 2002:a17:906:7a0b:b0:993:ff93:cf8f with SMTP id d11-20020a1709067a0b00b00993ff93cf8fmr10916036ejo.8.1689163381364;
        Wed, 12 Jul 2023 05:03:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id q3-20020a1709066b0300b0099290e2c163sm2441851ejr.204.2023.07.12.05.02.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 05:03:00 -0700 (PDT)
Message-ID: <08da796b-f1a9-19dc-cde6-67414927d2a6@linaro.org>
Date: Wed, 12 Jul 2023 14:02:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: ipq5332: Add USB related nodes
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 neil.armstrong@linaro.org, nfraprado@collabora.com, broonie@kernel.org,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1689065318.git.quic_varada@quicinc.com>
 <23b259b72c8f6faad99f09c37ac8b7b6b027cea1.1689065318.git.quic_varada@quicinc.com>
 <ddd97ecd-bf4b-85c8-1f0b-8ca175799076@linaro.org>
 <20230712112815.GA21004@varda-linux.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712112815.GA21004@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_050303_940257_F5A8FF29 
X-CRM114-Status: UNSURE (   9.98  )
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

On 12/07/2023 13:28, Varadarajan Narayanan wrote:
>>> +
>>> +		usb2: usb2@8a00000 {
>>
>> It does not look like you tested the DTS against bindings. Please run
>> `make dtbs_check` (see
>> Documentation/devicetree/bindings/writing-schema.rst or
>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>> for instructions).
> 
> 'make dtbs_check' passed. The '2' in 'usb2' is to indicate USB v2.
> There is one more USB v3 controller in this SoC. Hence, to
> differentiate between the two used 'usb2'.
> 
> Hope that is ok.

Nope, unfortunately it is not.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
