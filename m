Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0238CC7EE22
	for <linux-phy@archiver.kernel.org>; Sat,  6 May 2023 10:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9mXCQOTAGZOQEirDvRfrahFkdcHO6Eq4w5GCBThJD4=; b=webEliF/q4a7Wu
	N4yApaAzQinWJ9d5u7rmluDk2AMntUrdgADmjIL+ZMqb1264D68IhU53paRhAKHxkB/HjmeB/Cf8Z
	KocS8mMk4r2q0O29TNa/kIdtHyDvJ93GniK+uKfNJo3zS0xlib9/rHrkvbg4/n5zBz5TowfsNsVq/
	xgxkjn0aDfB4986LqU1/b10DqLH6lJrB22oia15/CG25+PncwHveH8S11mPbtzMCFF1fU1MesLQSK
	9WvvjKL2VVfj2aAe1tAFOWpyLApWJ51A+d2hwcFJqPtm68Jroa+YCFS+z4krLwGvxn6mmDj5Xxj2V
	HuA6DazgX71PpUGq+d8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvFBf-00D5X5-1g;
	Sat, 06 May 2023 10:30:47 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvFBb-00D5VX-1H
	for linux-phy@lists.infradead.org;
	Sat, 06 May 2023 10:30:44 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-965d2749e2eso309376766b.1
        for <linux-phy@lists.infradead.org>; Sat, 06 May 2023 03:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683369041; x=1685961041;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=om5rBZjpQmGylRwHMCWGL04Qa98XCtT0ijIQXJtCbpg=;
        b=Uof1PVeZ2PigSWjj/RuJh5B4jduLV1JTD2KLBJycgqsGK7m73CXn7eW88cHN4mC4Cr
         dM4fQk0G5Ec0ZCl0qChvoy9Ai19Cm1VOFCegoZJK+wMQH2kQWdKNc6Bnb+r/KKDehW6t
         qjRQfr3KSEzSZTExdnDOw9rRBTNb2OM6di47nseWiQMNk/tobd7o6VupZpsJmHLYPGZH
         2qKRbnuxnkdgdDu3bu/svnaDlpe9jmOUeoXvEORdl9DayjnLdl/x5AeTZj915Svij+f6
         rlVCVKnhXxZCzpK16zdCCsxGeNOWyrn1hNK+H1SVTLKOXbUlvPu0tzQAThDmY23Td5sc
         ZT9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683369041; x=1685961041;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=om5rBZjpQmGylRwHMCWGL04Qa98XCtT0ijIQXJtCbpg=;
        b=CMbl8QGR1+w8ogatX9ibTKE2U++VICdYv0LnWTAUNoVUiPPXDdLld0WC6POqJbME3e
         ok+V/PIAY+b6/6QIRdqzpdN+v9ZYggoeZhx2Gha1m58GGQyyF6M8X0z6W3hzsrirpwEi
         07K3Q+U7G+gWdJUgD11hBjQVtvo58MIDgXaEk4GvNqDukihvCO6qbTIm1Xn61B03c0C+
         muxThK46Nw3HyVd2ec8K/rsdpX6+jMkhbPTKS8mbg6rcKQRY39VYWuOtBNNDLT5P4hoy
         +tRDsVFLWHfhW3z3ht/ultwv7iuFwo23zrtDYgeDRCGkp1xvoYq5B2kt/V/FcWWzXvTB
         zsvg==
X-Gm-Message-State: AC+VfDyJHCJFH8jvNePuEIFYBwYFO9N/1uhKZniNSAaxTuKs63j9niGi
	9CbPeZkteqzOGpQ/DGS6GZSrVg==
X-Google-Smtp-Source: ACHHUZ4as+xxLviDsQOX+GTc5E7TjPcuUmqsob35yRWQz41AIc++JNtv+eFKhD3MleB3Q6677/6v3w==
X-Received: by 2002:a17:907:2d88:b0:878:711d:9310 with SMTP id gt8-20020a1709072d8800b00878711d9310mr4364603ejc.1.1683369041240;
        Sat, 06 May 2023 03:30:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:efe5:7c03:a10a:7a40? ([2a02:810d:15c0:828:efe5:7c03:a10a:7a40])
        by smtp.gmail.com with ESMTPSA id jz4-20020a170906bb0400b0094bb4c75695sm2123565ejb.194.2023.05.06.03.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 May 2023 03:30:40 -0700 (PDT)
Message-ID: <0503436c-e3ea-7c28-e6d5-39fcd8c53d4d@linaro.org>
Date: Sat, 6 May 2023 12:30:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 2/2] doc: dt-binding: cdns-salvo-phy: add property
 usb2-disconnect-threshold-microvolt
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, fushi.peng@nxp.com
References: <20230505185247.1854677-1-Frank.Li@nxp.com>
 <20230505185247.1854677-2-Frank.Li@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230505185247.1854677-2-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230506_033043_472043_2484D49E 
X-CRM114-Status: GOOD (  14.29  )
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

On 05/05/2023 20:52, Frank Li wrote:
> Add usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching). Two prefixes got wrong... It's not doc but it
is dt-bindings.

> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> index 3a07285b5470..3c7f5b3f9211 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> @@ -31,6 +31,13 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +  usb2-disconnect-threshold-microvolt:
> +    description: The microvolt threshold value utilized for detecting
> +      USB disconnection event.
> +    $ref: /schemas/types.yaml#/definitions/uint32

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Drop ref. Add vendor prefix.

> +    enum: [575, 610, 645]
> +    default: 575
> +
>  required:
>    - compatible
>    - reg

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
