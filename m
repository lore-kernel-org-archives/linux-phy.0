Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 959BEC77B75
	for <linux-phy@archiver.kernel.org>; Wed,  3 May 2023 20:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjRPIi1ra1aNUJhrNfuAITvf7gUDqfJAf4DR+ugd00k=; b=ehJ82ESoWc5qhD
	bjVW9IEJ71mIf/rQXU166ulISeA/JSa6621UFE63oQBjq96ofv72QQsb+oGey3T6HNsy24kjheJsW
	3xoz7b6apHgPHWQbbholTDEE6LuMK2nJIglrQD2PzMmRJjaxdD9t0N0bXkXGfNknvIkxDfY9mFj0o
	JAzVVsoBddIT4QRl5hKfG8b78d7fpsS6sT0l8PIpYIPyRx0KhF2+OtO2WpYl44IgxxJufQhnAUVcZ
	ZO/3dUkdYhJ+vWXTIffppmx1Ph7+gyc9/I2SXFHvk/L89BVFmMPTDRgEiZKUEXXT6xyYnUVHNOFI4
	C010koJdhP/y8ZUX4L5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puJEP-005kcr-0Z;
	Wed, 03 May 2023 20:37:45 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puJEL-005kZT-0K
	for linux-phy@lists.infradead.org;
	Wed, 03 May 2023 20:37:42 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f315712406so40481685e9.0
        for <linux-phy@lists.infradead.org>; Wed, 03 May 2023 13:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683146253; x=1685738253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zg8Ct+w2MDSoMdUqUQHFAAraG1RpJh11C6Vi9b5JEbI=;
        b=A/r9bnz32AcAuY9RxBWTrKfy5MmAarE543F5s7pE57UxnVvBV5lDzvroYBT1aVoa0m
         kl9XzrqnL61onFNK0R3vzF6/iTNH0P15wk7VfNTFaC/W52FBAJqMl6ktTPGQi6JQpxxN
         dOXXVDpExxNowDuWvn13gjcxc9MGXcw6x8zBG7eaRHSVqH+sjVlNSykleKgOCkNfAW/e
         bkm/TJgmQkN79N3oTsuSzRN/1cTm/KSBasaa1Hr/1bQxXEM/ToIfAaXvFuRAh9oMWo8P
         AvYkDa1gha15tz6A9wUaLASPIDC0/muAGC+o6o5fzgKl8TlPfxa0kUvEwezvbdZVDadf
         MuRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683146253; x=1685738253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zg8Ct+w2MDSoMdUqUQHFAAraG1RpJh11C6Vi9b5JEbI=;
        b=TDplJgNfIOtguKlCH0EZSvJix8KaNA5svdnmA1FlnQOYF3Z6Vf4gW9DX6lPpx7C9Hp
         SJiMCEOFhqRPnA16tOrKrMvBE3F6I/s8FvKtQ95gtuvMn8quR85JYkCLgFQ2xmjRMoM1
         vjLCtO7EL3xaMm7dLgJEilqv+S+WzcZLBAq9Y3Itg7uKCJ0ljgOceVxu8kOUgoh2aI3F
         EylBLAVxwOnO7tZ286kxk3NUuprqdUdyaeD2e2jRHKjMUoCqL9E2M9hHXQU5GZMMptJJ
         iUOKdluZzH6IxupxE7I3vt239XvwAOyAeF31tSrH//YJbvNncqeqRto8+xOwrkJ2nnV8
         u60A==
X-Gm-Message-State: AC+VfDzoGgTf5MeMFWvINRtStamy+4vidIpGEcRmH7Y8gYrJAgmETCGo
	/rVhJbtE6MhsWRR++Cr65n+JWw==
X-Google-Smtp-Source: ACHHUZ48XOLx59K75gywAU2ORGIJyOLheg4445dpEi80FdfCXFGfwKXjCU7OUB3x0e9V+xUZyyGD5A==
X-Received: by 2002:a5d:6dc3:0:b0:306:31a5:75a5 with SMTP id d3-20020a5d6dc3000000b0030631a575a5mr704512wrz.8.1683146252869;
        Wed, 03 May 2023 13:37:32 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n7-20020a5d6607000000b003063176ef09sm7736899wru.6.2023.05.03.13.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 13:37:32 -0700 (PDT)
Message-ID: <a7387c64-5ede-6e7c-dafb-95630b550645@linaro.org>
Date: Wed, 3 May 2023 21:37:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 ports and orientation-switch
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-2-quic_bjorande@quicinc.com>
 <CAJB8c06H+3pxoUGXWOXyCgtbOj6y0OhSxb9dvoTo1b6iChy7ng@mail.gmail.com>
 <20230427195232.GB870858@hu-bjorande-lv.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230427195232.GB870858@hu-bjorande-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_133741_141739_2B2FF037 
X-CRM114-Status: UNSURE (   6.95  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/04/2023 20:52, Bjorn Andersson wrote:
> Do you have a concern with keeping it around in the DT (the
> implementation doesn't need to care)?

Nope, its fine with me.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
