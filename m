Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C04CEB64D9
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 17:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frTvfENSj+kOG6+8F0PmR6JB+KsjfFnfpV8ysKG+Xv0=; b=aqvjufbe0fqcw3
	pseO5ps44CkjfnshdgeaalJ+NseILnKYEOWkHn5pWn/D3SgHrJkzA7B96Z2Gye1B3VWEA2j53jIrd
	mVV/UIyzehzNRL6E/CECbPrLNQcvL/Y/dYss/hY2KtyHEJ9ZSHXUxs7ja1MpOj9xBEJXvJs5O5M6s
	FybUi8GmNzCiKFB4g2uRwmx752DVKeu0GMUrECsgr/INyi060JuttzIZa8c3vfAXrJcyulIZukOSb
	16Rr86CDaODHkvzt/RAB4ysPpXq+qSPtWPRfWWzN3p3H04D3nlwEu/FllCqYczpzhoyoJkstnkmqB
	th5o91S1qsAaqzgAfAxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9U8t-00CKGe-0X;
	Wed, 14 Jun 2023 17:18:47 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9U8p-00CKEm-2X
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 17:18:45 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f655293a38so8685399e87.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jun 2023 10:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686763122; x=1689355122;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=01GZCQi4jW3iTPlZS/6XKfYfxWg0CJyIWbPtEBU+NGs=;
        b=d3pxVIQxqggFuRwLe38EtwVi/fCKgmc3oPVQMxBWI06KrlRg7vAR4bOxtPVYH6wLtt
         osgXP/LJH3l9c6fY9hrcBqVkzBu7hLUpLyjGdUgMjqP7dqiTmv1WcVA7Lf3gKepC5T9p
         rpezGLWA0Y4D6jfy8yisdu5K8b1sMLWsLxllpzLxJPPS8YmgqDIiXp1p9IIPFvlrw6qU
         npmRtASxVM+u+MMo9eCx/T0xfQ337U4RmYxwPFgc0IzSiTlQjAmWPyTtg4QYVOEAva7n
         TMizjPN0XkxZTqP5/ZsAkbjan/eE3QJhZb0gMCIjN2imIQ/KkbEcB1otCsqnBL7ayRU3
         pD+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686763122; x=1689355122;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=01GZCQi4jW3iTPlZS/6XKfYfxWg0CJyIWbPtEBU+NGs=;
        b=Xb5RE/icfCXC6mcdYlKtw/ZGvH/928pDTaPCiXznP02LxeYdiidLu2nsQm38kFNN+d
         fSAgw8+t39nIaQZLpQiyzfLsXtZJ+bk1ZdOi09IVhhNtx+YmHp9ch2Kzgi5Fhz+kgfjS
         XJRlmpiM9Ru5R9spAOn2UY0UqUSRU3MQDVDR6Fb0nsIxvN8DGY9oAq7k2NnLAVhKB9cZ
         obstk3Fs1/EGo+HJXGCjIEGPjtOeCQvHNpGEOTHba9m9+ImV75uPqmaTQp/EGKJzvgd4
         cSGZRib/JIz7wvqc367HCz7RYsWbQKu1Fv5XCE/wC1bW5J3uSXDkJeXiMNYVqDyehS3o
         cSrQ==
X-Gm-Message-State: AC+VfDzVsxHw24cYaG7c3/+gFx2D2hqc2Jn4l9vVxbbXAWuBE7Sxe9ZC
	fzXk0xCBMlQPxjAdvFm9a4WqFQ==
X-Google-Smtp-Source: ACHHUZ5w/UFu6CbSJpdhRbFz7oQJ7rJNpCU0zTqS4RoW8U0/j8ms8b1OclwcHKnIEJYxZJTaIx0hSg==
X-Received: by 2002:a2e:9d8a:0:b0:2ad:95dd:8802 with SMTP id c10-20020a2e9d8a000000b002ad95dd8802mr6864901ljj.38.1686763121737;
        Wed, 14 Jun 2023 10:18:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m8-20020a056402050800b005149cb5ee2dsm7968375edv.82.2023.06.14.10.18.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 10:18:41 -0700 (PDT)
Message-ID: <77043c58-539a-d6e5-accd-b1f4d3c77712@linaro.org>
Date: Wed, 14 Jun 2023 19:18:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: fsl,mxs-usbphy: add
 fsl,hold-line-without-vbus property
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, jun.li@nxp.com
Cc: Frank.Li@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org
References: <20230614111548.1815146-1-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614111548.1815146-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_101843_826272_C01DA781 
X-CRM114-Status: GOOD (  15.65  )
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

On 14/06/2023 13:15, Xu Yang wrote:
> The data line can be kept or disconnected when vbus is not present. This
> will add a flag "fsl,hold-line-without-vbus" to describe this behavior.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> index f4b1ca2fb562..c5f9d8a8298e 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> @@ -87,6 +87,13 @@ properties:
>      maximum: 119
>      default: 100
>  
> +  fsl,hold-line-without-vbus:
> +    description:
> +      Normaly, the data line should be disconnected if vbus is not
> +      present. This flag is used to hold data line even though vbus
> +      is not present.

Why is this a property of a board? Why some boards need it? Neither
commit msg nor property explain why do you need it.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
