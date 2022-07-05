Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D191BC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDYXmeHeF1P3aiS2s+snzFwHXHN5Ung/PLqtmxKtGNM=; b=mRdrGCpI2Or0WQ
	pFQav5EHpvmqPNSL7pBP/0oqk4q6+c/5qCUSQjz13UW0+KHFLg/OunMNcj6duzWjheKcOFLZChgjM
	JEOrZ7FnHQ+OvWHht4LTBtrWdgKqGDQ1TUVDcxirsAeHQqxudhWWkeM9InsUxHNxVgBtioYyMsQwb
	O76moG2IeaADytrZp5NO7EeFp5GtmSs04oXRQrh7cP7K8q9ZLQb+WVxZNOYjlDtn0aKM9KvHsZF/y
	AkVgUkH+0a0UhjHvLTOMDTQ5uRpDcVdhwKF61YGhqFj4B6RfpCv0FRbTw5zq396kIVs3JYsJb1zh8
	ijVbog5aScMizs7IjNMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fXj-00H67d-8E; Tue, 05 Jul 2022 10:12:31 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fXh-00H675-2p
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:12:30 +0000
Received: by mail-lf1-x132.google.com with SMTP id t19so19077981lfl.5
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mZWko2l3JM33AGERPGLEXqE2EWRggkWimZrxTdJnBrQ=;
        b=lVgc4eTYGqLD0IaHHe8PqmVRvpVMIHWLrYx692D3ISLZALd9+vHr5AzI/P5AvGC46F
         ovwkA24GeZhvo5gQc1mF+A+pB5Ougfktzld939IW7WlA+FjfLOgXuSuhJS1DoTV+NCwq
         bJxoAYLt2Mvd6E0m/2gDpvRjCV0S3/KL/b7eakXGbj/rDfdocwd1YYvJ73mRiosjPoug
         8HdNXa6oBxhYa+ss7Rc1c7HmT23Fqga1td1bKiD42Bvxa4/1oCt/QmGMnKiV7Z5ooQvZ
         qktsH3OgfX3Z0IW6Bhwe4oZza0jMPJm5cEcRWc83nII6vck3vTzyRmjS9P3zWusVHX3z
         r+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mZWko2l3JM33AGERPGLEXqE2EWRggkWimZrxTdJnBrQ=;
        b=YtNTCCl7bcU7FmnOHFf0k5lsFh04+oaC3BCjkYpAeavnlitonNVXHg0GohGup5ffZr
         6uztRCKXpcMFA9A0J7vU7b+7FYr87GQgeCtuqNRASi1MM05YW2LoWlC8L6l/9kltT30E
         T3zX1bXwoF2r8ZmxRUOqn+gYJTo/5iV+//UA1DS5YNYoTcDsf1f7779m1IKM53OwB7RN
         v1hb28KbyXefxVenEWlJJD3cBtajmQStsEhJH1/sxzmCH74vQEX4iEIgpsLieY7QTg/X
         byZXJ9W+bJHK31yU/we+0wU/SJrP3TVIIy6YmcQbCL8Y8QWMymQUngkQmWlsoVfapUJc
         vYIA==
X-Gm-Message-State: AJIora/5CDMAM2ge4gC16RFOQleJwpFW6kcP9qhdLTLXjh0lHd6/Fzd8
	xaI+hQtpXNrGFhBgt9p0IagLsQ==
X-Google-Smtp-Source: AGRyM1sTJIqHUj9k+zJkKMNhCH4MRxYX1aZCBKcFYO69Ra4u9QWn3nqtNVAorRS99L+Md9eq6+appg==
X-Received: by 2002:a05:6512:114e:b0:47f:5f76:22bb with SMTP id m14-20020a056512114e00b0047f5f7622bbmr22600890lfg.648.1657015947264;
        Tue, 05 Jul 2022 03:12:27 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id y9-20020ac24e69000000b0047f647414efsm5620858lfs.190.2022.07.05.03.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:12:26 -0700 (PDT)
Message-ID: <2a5fec43-352c-b304-e0c9-761e1d2b67ec@linaro.org>
Date: Tue, 5 Jul 2022 12:12:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 11/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate
 reset names
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
 <20220705094239.17174-12-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031229_180916_3255EA42 
X-CRM114-Status: GOOD (  12.79  )
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
> Drop the unnecessary "lane" suffix from the PHY reset names and mark the
> old names as deprecated.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 20 +++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> index 7931b1fd1476..0bea8270b37e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> @@ -94,11 +94,15 @@ patternProperties:
>            - description: PHY (lane) reset
>  
>        reset-names:
> -        items:
> -          - enum:
> -              - lane0
> -              - lane1
> -              - lane2
> +        oneOf:
> +          - items:
> +              - const: lane
> +          - items:
> +              - enum:
> +                  - lane0
> +                  - lane1
> +                  - lane2
> +            deprecated: true
>  

How about just dropping reset-names entirely? Marking entire field
deprecated and removing from DTS? The same in the previous patch.

Usually one-item xxx-names do not bring any useful information.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
