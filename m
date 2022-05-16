Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06B8CC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 16 May 2022 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48Yzy/tCJQxbiLEI18IH0Pl0UeLECwXMYf+MXmJ66cI=; b=A4aYXZ5jEWIctX
	sRFGjax2Xgfd19Gla0RDwkXjSz5m8gyz3QeWT6DRGmQQlsyZKt73cAnoMu577Xp1T4hNtCgDtVpfn
	lC5sLlc8adKUs5PDclpXGtO2kJ/QN/9JqJwQTBfhmAc0lNKou6yJdXnu9dEVaVZygo6wC6GHkOJwz
	lV+FeX59KMPYQnZljwo81nQd4GEbt5URGlSqwnv3AcqvpuzwOTSyFCcvAAF5ExbKtQJfVJZdSdW5A
	tQWSx9lpr7gwdneUuFbtn1WAD3rI1G7TM3EF9/90D/20GqV80+6zZu2XrQpmUVoSY/LvrpOxXjIP9
	ZQT5JOCk5IhtG37sRYzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqUuS-006Mlg-7K; Mon, 16 May 2022 07:12:52 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqUsu-006Lul-KX
 for linux-phy@lists.infradead.org; Mon, 16 May 2022 07:11:18 +0000
Received: by mail-lf1-x12a.google.com with SMTP id p26so24120762lfh.10
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 00:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=A8n5NqBF8eiI63GzxK/IUYJgZos9yERKjGW1rbv7zxg=;
 b=emeGxsdreO/uEDfJ4oREHvWiB12JVp56nF0pafJi3R9OKjRFf2JGCvNtfVjFxlSdpY
 pE232FlSiaJXMlwIjhLHfDgbXNQFXJBDEtt9uEwYdSItjeo2eYQUW6cxmRpo5ifiWnrY
 Knhs9/RWgMbkNqHlNBXD7+TBKVdc/cASl5GCqMlWWB83McSh2XS8JEFgRmPfk4ux1+Zx
 GH47Ouv11aJ0TtJC5sHg7pIqM+92i7U8bvTubpXcFoCQyaU+yY0VypcEmnu3q8z19B57
 zS8Ml7S9/64EwVYJ2Hq880C76u11jin8rKOhlzqct+N8WkpeZsa6d7RfgiecsTag6cmR
 iTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=A8n5NqBF8eiI63GzxK/IUYJgZos9yERKjGW1rbv7zxg=;
 b=PQ8mqDmMxBbvbX9JFKW3gHbC1GbIIaOVQTlM47/djR7oL73Bz5S/k6Y+NlA+O32c2T
 Ocf7/KGOqQjyx6OjX6zAWytVRlqC0ftZ5POC3JHFj7LIOKu0Bt2SNU2ZcRi7HfN1gg7R
 Q43hI89Z+bwmB5sHLC2Q3G2nk1yQpzMHb3byvth67AEk0GVUlrT+LkcFPyEuCD1aHdQN
 2dwAXP6AnLdFfMXKeL2axrpYgN4P5PY52JzgwVKUrCloQgbW93Mkt1DO91JvFm9uUij0
 1uVB6Rc3UQpjw4HYETpUDAEmMbzue8CkgQEQttNAIm5YP1C0MPjFA2Gwj4ms3GUSeDOL
 ffoA==
X-Gm-Message-State: AOAM533jf57/blQqE+WQHWR2klr+aqOIPnPP2AbmQafU1vgDC8YGpa4Z
 EUwHCb+5nopyLAsC2a3zggHrpg==
X-Google-Smtp-Source: ABdhPJzGJNyk3ngpENl93DzIF49UfQH5FyPJS9+J6d9kc/q8lHaBvK24mhQHZKq9hsJOS1mW5yonAQ==
X-Received: by 2002:a19:4343:0:b0:474:d7a:634d with SMTP id
 m3-20020a194343000000b004740d7a634dmr12034699lfj.168.1652685073277; 
 Mon, 16 May 2022 00:11:13 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 u26-20020ac248ba000000b0047255d21202sm1216927lfg.305.2022.05.16.00.11.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 May 2022 00:11:12 -0700 (PDT)
Message-ID: <8b47e106-a567-8d8f-ddd9-34b71211002e@linaro.org>
Date: Mon, 16 May 2022 09:11:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp: Add compatible for
 SC8280XP USB3 UNI phy
Content-Language: en-US
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220513225348.1671639-1-bjorn.andersson@linaro.org>
 <20220513225348.1671639-2-bjorn.andersson@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220513225348.1671639-2-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_001116_781344_8FB9DDB3 
X-CRM114-Status: GOOD (  12.76  )
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

On 14/05/2022 00:53, Bjorn Andersson wrote:
> The SC8280XP platform has a pair of 5nm USB3 UNI phys, add a compatible
> for these.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 8b850c5ab116..0a9ee5b7600d 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -33,6 +33,7 @@ properties:
>        - qcom,sc8180x-qmp-ufs-phy
>        - qcom,sc8180x-qmp-usb3-phy
>        - qcom,sc8280xp-qmp-ufs-phy
> +      - qcom,sc8280xp-qmp-usb3-uni-phy

What about the clocks/resets/supplies in allOf:if:then?


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
