Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76DE2C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWX9g8b7H70hvOyml2FaGsTdhW20tkmaQHoDoPyMn+o=; b=N+hlJWfN9TLPdO
	4ICFSzmq2sGjxaXUL++WHXFnyUREkDjBH83P8YImFNcIEtbXD30bBjUfM48auF581hx5howYfTdr5
	QDLQI5LndjoUgXrpsW9j0DylhQHqykF5JaJfjuWL60qyrBno6B+WsxrrSK+QMLIDWfEJviyKpSzKY
	g03ZkAITYkg+XmHCMiKuJj1RpOwBdObyd7b1DHKdSjLABN0W4HcFru7MIfiLax9vXBaaKMWcsMAzS
	GtAb48uvwFP3bf7l02rQEwI4oQHispM3FXgw9i2V5XEGC2hGCRYPjwBwiQi1RNwGSBznwYzumz1oc
	pzNZU2cUtikl0ltA2KXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fZS-00H6Mq-Ss; Tue, 05 Jul 2022 10:14:18 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fZP-00H6LZ-IJ
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:14:16 +0000
Received: by mail-lf1-x133.google.com with SMTP id t25so19721639lfg.7
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lPXhWDoOfExJjgPsmL1CEp68eFY+r76VW+WY/tss/fE=;
        b=vQvREX/3QsDFJau7WAdyfgwa1sDBm5vXA2Ztopvuh7EtLCqNgA8qiU2Dl659S+FT3Y
         B/GziNZV1ja24c1e6TIZAFPch/ofsNWvOg8jnBHx3KWpAagi4hQrG7Lz/aMl5ZxNkdc8
         lm/l6HVxcYtOfVnY1mv9Xja87QWwWbv0IKgli1Vswooc54X450P/uwzYJSm1B0M3/IQr
         SMGq/mdaUFHcOK2cc//iWyHAgceMjU0gxuo28ZWpTECBWQ5xQFPAI8wy2r9ztpVEaAmb
         3uX7eSSbCPvu9AatugMvS+byrPBcj/EI/FBzNTk7yt18DLLU+VKX0LVICqtlPzyu9wNm
         1Png==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lPXhWDoOfExJjgPsmL1CEp68eFY+r76VW+WY/tss/fE=;
        b=NrNkFGM/QmGu9k5PfYs24KoLmV0BqIdXdGNkn9BQ0BaFxLRifLHSOoX7GKDRR8x1XR
         6aeApr37BrpEHxVr8OFVKg0MDLnkmnbXp9GVT7fkAxoURFkH83U081hRAqgObsE10SmU
         vIyVy2WdV+yzJO2MMeUBPLgEhRG4knIWoXkJyhDB7HhsDu7dRl2s4u/CYiqzmHyzByG+
         hXocQTjdv5jdfKGvxz/52PPnCnSDavMyz6qt04zRDFukTSWcdhps0C7FXec9UppMrP5Y
         1miDs9R3qvZDw2R2NF7gnHgJSNNaPQXZKUT8fohiKtPBYA41GKR1pxmhTN7pWc+3Uq3v
         I4AA==
X-Gm-Message-State: AJIora/S7LIAnd2lgSnnykh8lYVIHe0OFjM2ys/o+w1ktfMjGevE0jiV
	82cUSimAck/nAoxPKs3X3rKNUg==
X-Google-Smtp-Source: AGRyM1sdptptUE0CYcTaiCawPWgSL5xOx2Xwf85TPGrfekC1PqPD0hKVi47IBftBdgcH5BrNZ0/PAg==
X-Received: by 2002:a05:6512:33cc:b0:481:4eef:6f68 with SMTP id d12-20020a05651233cc00b004814eef6f68mr17920868lfg.667.1657016051647;
        Tue, 05 Jul 2022 03:14:11 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id w23-20020a2e1617000000b0025d3a72792fsm7577ljd.47.2022.07.05.03.14.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:14:10 -0700 (PDT)
Message-ID: <fa48afc7-bb90-884f-07a5-5580759928e0@linaro.org>
Date: Tue, 5 Jul 2022 12:14:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 15/43] dt-bindings: phy: qcom,qmp-pcie: clean up reset
 constraints
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-16-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031415_653320_C79A8B2F 
X-CRM114-Status: GOOD (  12.58  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> The PCIe PHY binding requires one or two resets.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> index 0486b2b48d72..557cccc8f4dd 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> @@ -52,11 +52,11 @@ properties:
>  
>    resets:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 2

Squash it.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
