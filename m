Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B444BC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SYBHX68JyhzQocKZ8t7RMHRFOc+BxJSxg1DTeAHhn4=; b=zKv4mxPiuGEfDx
	GxRO26QxpDvKWaLLBN9AOGBdjZCaJQK1zSVHM8LZN2qZzvBJADsBYRsU6QIRGBmepwALMAdWR2QaB
	MXPRlcpTSubDHTaqK0ieQhPdD9Q8DIt8J93QJatcq2gZ8xWmYnXSF+JEaLEtcs8GFzRsbv1OTzfH0
	F4DSChmOzK6wfZW8bEkeDHNW4nb2gOkWclJnZspPkV5GERskmTE3IWx+5ccC3sODXOpjjyWMeRu+C
	n7er8npMZhM70ty0yb1Hq8hL9SuojZJH+M92Vzi5kBum3y6hdWl77SIB7mXT0wMXgmPA0QcW05LWz
	d6DjJChdPRWHuZPcjJoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuoo-00CdUh-59; Thu, 14 Jul 2022 09:07:34 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuom-00CdPD-7u
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:07:33 +0000
Received: by mail-lj1-x22b.google.com with SMTP id a10so1419503ljj.5
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IFDdRvC9ZQ77e13XEaQ5abctlA6xZYx1dQc3x9ug9p0=;
        b=Z4qi8sR/JKAHbfgzIpvlLsBmokZm90HVdCB480lzZJKqZH847+f6bGs4IArLGPAL7N
         dqunROMcAAWtAXK9lo4mwI0NyeZ+JDW6P2GYea61r9+CHK83pv8LkDSzcyS5iDpNpXPC
         fFPnCjOtz9fy9wSTb+Jet0jOoXTSGpZIsYVbY33tHSMwiETZ95hZB901UfoXcqnN9kzt
         gqPLFVBN8jSiKd+7W/W6pzQb1fZ+Gn1JS9VAGymaqDr1CVR9lo2qmX3XjpCMb37TCa1f
         yuwXdIswQOlpEmhFtjpDTERFFJKgISh/E+xRFkQy08i6RPnbI18pANxdqws0P4/ATy7o
         3Obg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IFDdRvC9ZQ77e13XEaQ5abctlA6xZYx1dQc3x9ug9p0=;
        b=XSyG+eebht5vCv3zkZfuh8YFC38prjA/P3rpbkT0HEXy+2hP59620l71RKvURoUPQ4
         5Y4yjmuH8c8OxtKFvit4qG+rI5qbEWWkjynH3C3/bfr3sHi3rbpQaLPTlEYrJY+3wu7J
         wd7CSBKQ4Z9/WKDg2Jg7HaSinbM9vGQPfnvWaLFpNc/T9oTTMeAkDGWD9wz4RWwNq8+I
         ZJnTp0zCi3xJz6E65OAhJJ+CWmNQUFGOqEr7kdIO5kPHekKAemxJc5RJKowYEeCFVINE
         TvJH+de9P/lm7gu+LkJlw7dGU2pt6dFC+xFv+Be/ao3Trv1QLC9lGpUkagGfMhkKEncx
         +jPQ==
X-Gm-Message-State: AJIora/8Bpf3+cNmJDTw0wkEFNa59bj2I+sR5ZZ5H6qqlyNioyvJz4fA
	ZD0lNGVlkNKPIaLlxbHGFaMtgA==
X-Google-Smtp-Source: AGRyM1tzaFWQc48vaEzE2Yomk3B1qT9dVcVRjRU8KCSVyQXEIxRn20YoW0SyKHg5PQMsK8j6Ii7kmQ==
X-Received: by 2002:a2e:994d:0:b0:25d:8554:6c3f with SMTP id r13-20020a2e994d000000b0025d85546c3fmr4153887ljj.471.1657789645970;
        Thu, 14 Jul 2022 02:07:25 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id p18-20020a2e9a92000000b0025d7517edd2sm180506lji.11.2022.07.14.02.07.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:07:25 -0700 (PDT)
Message-ID: <26916d41-f398-8527-96f4-9a28f4f4e789@linaro.org>
Date: Thu, 14 Jul 2022 11:07:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 03/30] dt-bindings: phy: qcom,qmp: drop redundant
 descriptions
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-4-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_020732_307296_F07F4FD3 
X-CRM114-Status: UNSURE (   8.95  )
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

On 07/07/2022 15:46, Johan Hovold wrote:
> Drop the redundant supply and clock descriptions which did not add much
> information beyond what can be inferred from the corresponding resource
> names.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


(...)

>              - const: ref
>              - const: refgen
>          resets:
> -          items:
> -            - description: reset of phy block.
> +          maxItems: 1
>          reset-names:
>            items:
>              - const: phy
> @@ -376,11 +334,7 @@ allOf:
>      then:
>        properties:
>          clocks:
> -          items:
> -            - description: Phy aux clock.
> -            - description: 19.2 MHz ref clk source.
> -            - description: 19.2 MHz ref clk.

Here and in other places - I think you loose information, because the
frequency is not mentioned in clock name.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
