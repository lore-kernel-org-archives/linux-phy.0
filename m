Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1D34C83F2C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 06:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJCRURLF/Urz8SY9xOgdeesK+8wF4K4z2FN8KT5JWzA=; b=D7qOnRVOZ9EGH4
	0CJzSIQl78+/CfZpaphf74GdZkbbSwlsR6sgMJdhONo0tnDdIIIcrBTdQKktSMMCWf8kOCPvsDomh
	rbwk1XvqcQRj3olqeTNHHkkg1DbUITNgxTAuKjzZAk2nCe4LTsN7dU+GSaHPPE4g8n/isrckSzOJw
	6rb/xr+zNlTDBISXvwngrvjjkD9P+ubw+H0zddpUJE/8em3gj5Wu8NxfW4NKJycLpmjZaXfTf62Y7
	V19en8/7oVIv67k9u25gkk1bNVCdqp60AqGjwifLroczipMv7q9xoZROb+Uex/CLC4mRR836eO1is
	aDfll2YPSO72NAYS65vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPtv-005MCM-1q;
	Tue, 05 Sep 2023 06:51:03 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPss-005M7T-2b
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 06:49:59 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-977e0fbd742so300207066b.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Sep 2023 23:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693896596; x=1694501396; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rTMu+0u1+GO0RL61mvq2i6DERDDrEIJ4goYljDbYbAQ=;
        b=TgjAtV07M5AocShCHpbTwl0EqEx+/F8yG++WTPTTSAYGjOk9uYthSq09iQh5quVJ3N
         hCOBC5jeorzw6MdgvxclefUDTe8z2wyPdLJduVsmDdSxZS6U/9bddXWG3At/G+4kNIpX
         CYRaYYJzDSCutu3vhPWKBm0xA012daoVWT583Y6yJW+zK4hoBy7ADbsdvIkieSxfkYCy
         CYo0kTknRed6zEIbFLsHU5b1u0M2Y8qmQo5fhB/LTIFIKFWpfx6aUvs2FrfJBaQo4XCZ
         hR3ZyOX+gI+pOGaunp+5LKA0yv5iBn5auLlj7jcl98JAgl1VWe9lpFQfyda9yDNF+OKe
         TYEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693896596; x=1694501396;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rTMu+0u1+GO0RL61mvq2i6DERDDrEIJ4goYljDbYbAQ=;
        b=FHPo0dQu9KVqZD/fkZ6ePlMyRkJCFoPR6pfdh2jUhpSSZXJE3KQfzfjUnag0qNai9g
         u05qidHDcX5dcqeass8oS0oSD0HxxCd6MbLgnxf3BN38UzYgJPPc8Yw/0iMm+xmpqOA3
         ecFW+XYN4ndykG1gw9IX3YAe96WTjYShcLzM5soyn9DilfEhViHqDeJ72LkPQP8pKAJn
         tNEYPe+xdywK6wSxDtD7X7d+2ea+1Cpl2Enwc20fD55uPvr5+P750cPtvAEyHFMtx4M+
         Lfl4fn9zSrZj5eO/3xikT4yBu4LEPzwFWw0G6t+a6wQ7Ca/0Wv3lniJnJpSsjtQNeyx1
         /jTg==
X-Gm-Message-State: AOJu0YxqYngZ1gzsJ9YBlz2PABKRfYuWkB2mvQFC9H0uXWnGmxjiGVVO
	gAY4EFZlFMgxn9IEsoHXNCL2tQ==
X-Google-Smtp-Source: AGHT+IGijYOlHUHa+7vPd8yx3B9LIbKbDQ/ea2dKVeTDc3FfNuD1fkI+KN/sbWU2UGjgA6cTDy6BZA==
X-Received: by 2002:a17:906:209c:b0:9a6:1811:e4eb with SMTP id 28-20020a170906209c00b009a61811e4ebmr8481802ejq.38.1693896596631;
        Mon, 04 Sep 2023 23:49:56 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id c25-20020a170906529900b0099b42c90830sm7156243ejm.36.2023.09.04.23.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 23:49:56 -0700 (PDT)
Message-ID: <96c76c55-d5d4-e4ef-e7c3-ee35b2d7ad78@linaro.org>
Date: Tue, 5 Sep 2023 08:49:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/5] dt-bindings: usb: dwc3: Add missing SDX65 compatible
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-4-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1693889028-6485-4-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_234958_844016_98601FB2 
X-CRM114-Status: GOOD (  12.01  )
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

On 05/09/2023 06:43, Rohit Agarwal wrote:
> Add missing SDX65 compatible for specifying the clocks used.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index 5c13229..fa51f50 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -186,6 +186,7 @@ allOf:
>                - qcom,sdm670-dwc3
>                - qcom,sdm845-dwc3
>                - qcom,sdx55-dwc3
> +              - qcom,sdx65-dwc3

That's not a complete change. Update the rest of the file.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
