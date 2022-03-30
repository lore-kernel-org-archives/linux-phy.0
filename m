Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE2F9C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 08:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BainnKPWu/UkSROCrBA+nBYi2EH2JnjMHNknxj/VHQU=; b=tCB5KXj7eQemny
	bOrHrQXXufPIaN+CDlCLKXb4b+63NQlvp/Pj/MLMFuWLGcv6fzcNrdVFfnUag0WD7HZZzkdWFEgBY
	tTHkOQKzAxGpeSv9SuSBA+zvaQYPjpk6l6GmMVTxsGhWQUITZ42iWkeV0PQSV8ULG3YsyDpBXHSYz
	jkr5tFtrjEBlQZPjjnJ6AeM13dILhGFUvJilmNkR9TuI+/xO9QlI3AnC2D1SMkHrKoKfVzTLespwG
	bFi63p6dqsFFGEJqi3hFgI5q21Yoe/1vSuJBt06ziXWVpoOSW7k9cuha243bt6pSR0TEHTgFUdgct
	g0IhyUTBcpVJft27tLdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZTPn-00Ei3n-7t; Wed, 30 Mar 2022 08:10:51 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZTPY-00EhxI-O8
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 08:10:38 +0000
Received: by mail-ej1-x631.google.com with SMTP id bi12so39941309ejb.3
 for <linux-phy@lists.infradead.org>; Wed, 30 Mar 2022 01:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=2Bx33AfU/HrMdmUVrutEhCI4XtzN6zsWPn96wMBqWfQ=;
 b=tB9ZV4xNkTjWB+JfChV1RXPd3jTDRvTlqgUVZYBP73R087rphFaYQlaPGbG10bTd8R
 pIKQ6ekTnt11peeMgweBaV6uj4ndWFbf3VcF/DGmbU5F2D/yOES7wCXZSPPwwCFD5xsb
 fCgioai7oet8z9ESFfxsTNgmSyNvezi0kmrxk1ygD6fHzUwhh4fj9ZC/l/7SUKlSu0bH
 F8rOagD4youDcBgNXFC23Iqu4mLEld97nRv1ev2JFw0htFR0QzgyGSbsmbYOWhyeV2F0
 F/kpEbXStSTMndFlA0o7wctslBAJLaldhLL9AU6MxBflZum8YWO/WNhG0+IUoCJo2RNJ
 UJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=2Bx33AfU/HrMdmUVrutEhCI4XtzN6zsWPn96wMBqWfQ=;
 b=4DLhtxFlmM+qD671dHH1eUo/ArRbmhYIEea22TmzSXyvzNtTzPMOXVdyVxfJ0vh6uA
 gRRVOCkvfI6l3QUAFnlG5HLxlZrM4XEe63gbZGP8kgvRht33l3w9FG2anvG+iUQExATq
 Qj18Dayw0+jGGBzIhmaa13XPHzKLkY8pZSz1abnVKBzUE6fIWLVQNZ28u+K/D/c4mA9T
 h4oWzqevOx8ZVFQlh3BKAlxBjMIycbTmtZSmil7cnvV45DqQnKVOHWpIZ2ojPdNsCgBv
 UfmRXX2uFLXwhwE4gzfvwJzeB0YYGnpVcleQ4+IGZLrM0M95dqD6Mz9eqryr+2XfFdlh
 z3Cg==
X-Gm-Message-State: AOAM532EiYWh1Y6VVd+KtI1Bd39lrfDpca57qM2liEh+WiKOuS2jtYbu
 GVixyvHf2pF4z4U9IERJCLL9cg==
X-Google-Smtp-Source: ABdhPJyr3a3ngbzY3rpCE8sm/h/E4CpGMIzRZRj13oMVUUOM4QcQjBwxtlOdEeguU+Me2VirmtUfNA==
X-Received: by 2002:a17:907:86a3:b0:6da:870c:af44 with SMTP id
 qa35-20020a17090786a300b006da870caf44mr38389614ejc.445.1648627834085; 
 Wed, 30 Mar 2022 01:10:34 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 b17-20020aa7dc11000000b00412ae7fda95sm1129147edu.44.2022.03.30.01.10.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 01:10:33 -0700 (PDT)
Message-ID: <20a7dc75-93d9-dcb1-9f2a-b962a1f84d31@linaro.org>
Date: Wed, 30 Mar 2022 10:10:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: uniphier-usb3hs: Fix incorrect
 clock-names and reset-names
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617651-9004-5-git-send-email-hayashi.kunihiko@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648617651-9004-5-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_011036_804443_2918A73B 
X-CRM114-Status: GOOD (  17.34  )
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

On 30/03/2022 07:20, Kunihiko Hayashi wrote:
> There is no clock-names and reset-names for Pro5 SoC, that should have two
> properties, "gio" and "link" like usb3-ssphy.
> 
> And according to the existing PXs2 devicetree, the clock-names for PXs2 SoC
> should have "link" and "phy", and minItems of clocks should be 2.
> 
> Fixes: 134ab2845acb ("dt-bindings: phy: Convert UniPhier USB3-PHY conroller to json-schema")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../phy/socionext,uniphier-usb3hs-phy.yaml       | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> index 33946efcac5e..1bbd164f2527 100644
> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
> @@ -31,12 +31,14 @@ properties:
>      const: 0
>  
>    clocks:
> -    minItems: 1
> +    minItems: 2
>      maxItems: 3
>  
>    clock-names:
>      oneOf:
> -      - const: link          # for PXs2
> +      - items:               # for Pro5
> +          - const: gio
> +          - const: link
>        - items:               # for PXs3 with phy-ext

Similarly to our other discussion, it would be good to convert it to
allOf:if:then: constraining it per compatible. The change itself is ok:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
