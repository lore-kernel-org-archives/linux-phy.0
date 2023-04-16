Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C8CDC77B79
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 18:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lm/Hkm6+Olsl1YIVNRfkvWEu0niR/oLObAzIMTrs/Mw=; b=S918fQK158H6F4
	q++rabH+JN5E4HKTXa4jURSnBC6iYp2nAFjcT1owM0ga3LmQt4Y5KjzxxXkGHthOjWNaAR+KdqSJX
	8lcO0sXv55195aeMAb2q7DXk2fV/H7xARSr5lSwQw/sCyJxPK+WnppSsk3H0USzrwXZBkNIuRDfrq
	byr049tbclJHevNJBcBKMAUKm5UZwLBm1/fp7HzEttUIfK0UgtZk3lpzCJVcWU6XDqMknT1nHOQZr
	ewLIh30xs5A2li4nlhVOfw0uvh9xYoPIZPPzkjGlg71rnjzi8IWvoDdmDWRmnxrUmdOP0T/dTw96R
	HVU/t0MfUhqpDgNAqHlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po6qu-00EFpM-0G;
	Sun, 16 Apr 2023 18:11:52 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po6qp-00EFnm-2l
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 18:11:49 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a5so1999050ejb.6
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 11:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681668706; x=1684260706;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B6n5E4CO4kCJf3nGE58OKGGQOMHXRP5JjX8b0teIIoI=;
        b=ZzVcFejIqZ1u900JscVEO4eycpl/XhuypeXEfmIP1+mFuDcrOetJZg9pgtiTzhk7bV
         yv+jXuVWrZrgi63qs845JZT4+uDvwzRhGZg2n8vWHSdukWIGgXUdjiaR6Ge0TZTpLakV
         sd9idN4jVXnhSaWMnTx16O7GNfJwl2RJxPmgaOwy2gM80ImGxbWJ/eBotoETGIePkDwX
         DJuJA5rWLDcRjNYG3lJteHo2gmKiS1ZWg2Ezw/JZWqRmDGp+QFDFE0ULQWWs42ga2lHp
         SyfjD4jeLBXHheEGulco2Ne/KNSZYlVccr3fXkNH7H4NRBwIMAyPeussFZvDI/E9VsQD
         E4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681668706; x=1684260706;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B6n5E4CO4kCJf3nGE58OKGGQOMHXRP5JjX8b0teIIoI=;
        b=NYCcjYbHpdfryjDY4/RkUNCGv6k1GigOMw1URicrf1j6RG2Ex+szHB/QrzzyANWVR0
         D+hp/H0SgWJ8nGKsBaJCb8rTxmEBQn7yaYvj1J1w/kWBtNDN3h0ne5NitwGprJCgxrMw
         aoSBJD8AMvE77flr/v9i+EdOvv1TD0MKK6Orln1VEMMI+8uh9NAOqkpWnWVRHgLHM9mM
         F7RPxHdqqACxVsdOpkd6nU0E1Jw2knvsGimWWRhXMWFjEmIB367YViurQ/dUIb6BnFIy
         yOpPLYHqz7OMkHljebY08iktesZkHXD2H3hCDfGF0bULsB3ixtZwgopnFDUWZWI9OiYO
         wtKg==
X-Gm-Message-State: AAQBX9d2B/YGkLk6pyZkXzOqlPPQpFw6S1PKL/LlVX95V5JBl5Ed1nz6
	3KWMBKgEjYtUI8fX+Qb1ZFv3FIcH/RxbWg9wuDc=
X-Google-Smtp-Source: AKy350YdJ7HOUBtJuBV+9N3nl3r0pYo2W9W9x4AL+g+AIjJcSDFtAAeTr6+vxOUNtnVBQv5afOfW7w==
X-Received: by 2002:a17:906:c294:b0:94f:5242:a03a with SMTP id r20-20020a170906c29400b0094f5242a03amr2582922ejz.63.1681668706168;
        Sun, 16 Apr 2023 11:11:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id j15-20020a1709066dcf00b0094e0fab7705sm5375294ejt.107.2023.04.16.11.11.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 11:11:45 -0700 (PDT)
Message-ID: <930d9bfe-7b23-766a-a968-4d3822dede74@linaro.org>
Date: Sun, 16 Apr 2023 20:11:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 11/12] dt-bindings: arm: samsung: Add Samsung Galaxy
 Tab3 family boards
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
 <20230416133422.1949-12-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230416133422.1949-12-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_111147_927836_7DDD11FA 
X-CRM114-Status: GOOD (  14.94  )
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

On 16/04/2023 15:34, Artur Weber wrote:
> Add the compatible strings for the Samsung Galaxy Tab 3 8.0 series
> of tablets.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
>  .../bindings/arm/samsung/samsung-boards.yaml           | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> index deb2cf971871..4ee026e7f7ad 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> +++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> @@ -104,6 +104,16 @@ properties:
>            - const: samsung,exynos4412
>            - const: samsung,exynos4
>  
> +      - description: Samsung Tab3 family boards

s/Samsung Tab3/Samsung Galaxy Tab3/

> +        items:
> +          - enum:
> +              - samsung,t310                    # Samsung Galaxy Tab 3 8.0 WiFi (SM-T310)
> +              - samsung,t311                    # Samsung Galaxy Tab 3 8.0 3G (SM-T311)
> +              - samsung,t315                    # Samsung Galaxy Tab 3 8.0 LTE (SM-T315)
> +          - const: samsung,tab3
> +          - const: samsung,exynos4212
> +          - const: samsung,exynos4

The entries are ordered by SoC compatible, so this should go before
Exynos4412.

> +
>        - description: Exynos5250 based boards
>          items:
>            - enum:

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
