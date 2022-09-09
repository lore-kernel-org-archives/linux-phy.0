Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B33DAECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 16:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0yyqL7YijPGtkLMiT5uKte7ujQPpCyoZmsdKftyD40=; b=j4q0n8V6IePysL
	m6I0n2DcRvw3TiJLfd2wiplV0+HEpU3h1+uAvbr+FcFlp6Toup+LA+3fb4oa+WBsCad87KEW4+wgj
	sFZDZ0bHTQ+7ge0d6mXaiNRRyxkC3E9EK/dm9yFN62u0ogI/ErMURGaKsOKPBrSC/qdGYVpfDmDlL
	z/AyccYIH/M+V9kkCnUOglP4Qz+ZG6oBplXcIXn4gTSwRE2QUJnioVnsitThkS+R8w5yFryt/3eip
	+TWlLbQAwxhrkXzrUuVwTVcPSz+bJQOHl32Bb8zahYR0XeGUrTsHtANL20f4dFsNFDlGfeBxw0rpu
	hFTNLMHX0kKkEEUDEixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWh76-000R6B-0F; Fri, 09 Sep 2022 16:44:20 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWh73-000R3e-IC
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 16:44:18 +0000
Received: by mail-lf1-x132.google.com with SMTP id k10so3681735lfm.4
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 09:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=U7UrK1+HGzEIxbJhZktE8rdEJk1xuFEQXHSaI9c28OU=;
        b=g3YFVfIz6AsEqhLdHS5c+6sx9LmlotKHb6suIWJTk5XVoKnJXFupiMRBQEvWWBVzHL
         A97E2s1bR+qGYNbKuEMDZZgTQ6vTIhQ726EATEtOJJC1ZgtgKgaSgPvLXEuMzsL7fi9s
         IiuVe3iJ5F238GblBqj5uLyrCEKECAIhxDEDzPCUoxiQk8vmWt76TqIzj/dDDKTaw6ec
         jNjFH/DUAylAYvg9rzRT3sluzv7AEaDN+ynShKj7WGBYrpJfbmESdslaJ6pPbJ0kNfTe
         i70dTxafUbhOe0oN6FMlKekK8PP9NwrdEPJZQcthWTsVM73Lv5clJfXzfTbyYQiX69nP
         9QZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=U7UrK1+HGzEIxbJhZktE8rdEJk1xuFEQXHSaI9c28OU=;
        b=iPQPbOqNTOC+xkutVPiVo/yIvb4DsDWWli9R0mLKIZqusd/6ULl21BhqEyyS3oNxts
         p0S9fYsMleFpkt8Pckm8DE7Im9TxGSXzJX9xOySy3W1jiXMsx+in9GmxgzxMKwvWLxSw
         2LypIbFug654G7IGY+Q1n/vagUhN/9P8xFJKD0yNHuzI3Q4mF64zzMz0GAUrf8EkwTn1
         Xdp4OgJGDcBAlC7P5zKgs4Nh3i142gHFeoGFp4aMo92zNIsVp44K8gZeOq4tguKcJKwY
         jFglTJqFUfDz+357von/xn+VzOsPufkoudKk6QW34h3WFnC1h8/2v1N7USpqScjrE7CB
         fUuQ==
X-Gm-Message-State: ACgBeo31+Iio4VwbeqcaKIWCEp7qREnioXolNawWEczLKr5uDcXp7xYF
	zUaAHGeUCe8aWEFeBf9ClSX8Cw==
X-Google-Smtp-Source: AA6agR4agaDUB6B07saXimeKTtI4I8JOYnVnquMHco4KrFonNA0i9ora3u5f5ZpLA6c8Tyh0QPv04w==
X-Received: by 2002:a05:6512:10cd:b0:498:fe5b:8ab3 with SMTP id k13-20020a05651210cd00b00498fe5b8ab3mr1099189lfg.613.1662741853756;
        Fri, 09 Sep 2022 09:44:13 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w13-20020ac254ad000000b00492c017de43sm144013lfk.127.2022.09.09.09.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 09:44:13 -0700 (PDT)
Message-ID: <c3b4638e-05f7-cc73-b893-422f92909f6e@linaro.org>
Date: Fri, 9 Sep 2022 18:44:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
 <20220909132010.3814817-2-dmitry.baryshkov@linaro.org>
 <d72fc00c-85ba-8b48-1fcf-42fe9e8daeee@linaro.org>
 <59242592-4e3d-b7c2-e0bb-b39df780c26b@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <59242592-4e3d-b7c2-e0bb-b39df780c26b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_094417_635046_08823BAD 
X-CRM114-Status: GOOD (  11.91  )
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

On 09/09/2022 17:03, Dmitry Baryshkov wrote:
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 1
>>> +          maxItems: 2
>>> +        clock-names:
>>> +          minItems: 1
>>> +          items:
>>> +            - const: slave_iface
>>> +            - const: pxo
>>
>> Why pxo is optional? Commit msg does not say much here.
> 
> It's optional as it is not present in current DT files. The driver will 
> fallback to 'pxo_board' if the clock is not present.
> 
>> It seems you also miss the DTS change adding the clock.
> 
> Oh, I'll add it to v2.

How about adding it to DTS and making it required in the bindings? I did
not check the driver, but isn't the driver fail if clock is missing thus
the clock is really required?


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
