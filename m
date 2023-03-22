Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88841C6FD1F
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 21:53:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5gaEkmhRHMCeE2a/2cm5/G1qQ3CI3Dfjp495aHNnzQ=; b=rutP5nXzqzvux3
	tK9BgpCk2NzuleJP+hAIAYH3rMEFVuMij6o+TTL39lcD1xo+OJY9gXB9HF5H13KZoQeR1ab4U60yo
	EuojV8Vj6kqQT2SNSaCnQI/Fv3/efwY6KkUYa56fyDHiMIhhZeTs0Ws4vXg2TETgtRnmg8gs7p/B/
	OrGtWRIwiDV84hiqr0+yV5Zf1wU3rXHwYsMOEWZ5+iwfkoy8FosOtzIG22wNyQHcMvWEHioNu3u0I
	Ppw2mhpVDmt/0llc2rCrGKLoOcDxMp0vgC0PJ/3NeLNhBUyxQVoNAhfzx9JNWwJawdx5aHUBCJuvq
	fKUYI+kp48oJnI5AX/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf6P7-00HXF9-0O;
	Wed, 22 Mar 2023 21:53:57 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf6P4-00HXE2-2c
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 21:53:56 +0000
Received: by mail-ed1-x52b.google.com with SMTP id ew6so15817811edb.7
        for <linux-phy@lists.infradead.org>; Wed, 22 Mar 2023 14:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679522032;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xehrL2dgpZYyP/0AM2a+lXnXwn5PW3e0iW5W0VmPTqg=;
        b=KI4TzoNHQxflEoUcBryC3LXEvMO9lxh2bsIloTZApwsunrsKsg/6DG3LYjPR5oFezI
         5d8J3vnMlni6v+vzv9ACcW66GzUBcBw/K8sL01C5mAu3Sl/R6PDlECvjEAcR6l0oG9iI
         3TAXYG4RGicppbFPS+KwYwga/aDWrOF6JisGaWjN6DkxOPEEmb2096NhC7ZlQdeu+XwH
         6GILqbGa4V8HaiubNnE+t5cWZAP5TQQmCIdNdah2XT1/mPkplH0H6XKVLHOZGz+PbalS
         SsQ02tae7TxAYj7DnzjObjMbDHUrMrzXtAmVblIqV5PpLUD86/Lz0S1/Oh+XmlAy3xkS
         1j1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679522032;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xehrL2dgpZYyP/0AM2a+lXnXwn5PW3e0iW5W0VmPTqg=;
        b=bouJnx9pUThizFZTaY+KaKLgFXYbVDAhEwULT9hfpRnEysj1BD2A1YvHNwysmHAY/I
         VwDeJ4aW1S52gYgyIaj63RlRIrYbO4CUBBwNsf8jkKaSFtt6Dq60pxxFOsCD8HchPMDz
         qKaIMea1fip/TMKKxUoNDKg+llKzN5eYMosBDVQENrUMeEKLjLE7UHqWud13YB7fwzBy
         s9vuOkshCyivhkENI0G0rwfpGY1meEi68IjBlLOcSIBPTYfzwu6y7SKqH7DmQY/wTiYZ
         /ckFORdP6/xdfS6dp/sbqqY8mXFwnU+9Nt8/Qtzb10Qur13wB5iTq5EFkoq76cluiPJb
         R5Rw==
X-Gm-Message-State: AO0yUKXtBIbCsCUOhKra37WxN4T5hBPBeOeP3kVHvN6MTjvJeFpRJD4j
	FpkwfkJ2AhqkziOtvG5153F5Ng==
X-Google-Smtp-Source: AK7set+sdpyhZHcj4stGuQd5RDDcBiVcAch7q43+icvAAhA35KsTbJdpiWJDVoDcAHwDrvEpoPevgA==
X-Received: by 2002:a17:906:46d7:b0:930:7164:e8e5 with SMTP id k23-20020a17090646d700b009307164e8e5mr7122905ejs.38.1679522032625;
        Wed, 22 Mar 2023 14:53:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:626d:5729:6e71:4c22? ([2a02:810d:15c0:828:626d:5729:6e71:4c22])
        by smtp.gmail.com with ESMTPSA id lk8-20020a170906cb0800b009311c9d33d7sm7656336ejb.184.2023.03.22.14.53.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 14:53:52 -0700 (PDT)
Message-ID: <4e1cc130-8bfb-96d1-1f93-f1389544b8e3@linaro.org>
Date: Wed, 22 Mar 2023 22:53:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 3/8] dt-bindings: usb: dwc3: Add IPQ9574 compatible
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1679479634.git.quic_varada@quicinc.com>
 <2ef0959be2aba24b3e3017cd09af7cc63aea74ba.1679479634.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2ef0959be2aba24b3e3017cd09af7cc63aea74ba.1679479634.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_145354_860199_4589BBB2 
X-CRM114-Status: GOOD (  12.00  )
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

On 22/03/2023 11:44, Varadarajan Narayanan wrote:
> Document the IPQ9574 dwc3 compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index a2aabda..3ae56d3 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -17,6 +17,7 @@ properties:
>            - qcom,ipq6018-dwc3
>            - qcom,ipq8064-dwc3
>            - qcom,ipq8074-dwc3
> +          - qcom,ipq9574-dwc3
>            - qcom,msm8953-dwc3
>            - qcom,msm8994-dwc3

No updates for clocks? Then disallow them for your variant.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
