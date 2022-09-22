Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3317C6FA8B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 06:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VePvpM55S/0wgnf28Ms28da24qEQLO6GagAmh33ixm4=; b=tgCH9Pe1JHOEZP
	hZbMYQEfjfrTB7UcywDANOONAhTc3L5xhDxONNNo32lDRpowh8d6rIlSwW8QiSDwxx3CxLMAF4Kod
	G+c+FAaas5wXych8fCca29LryNgy2rLKrrdhKiyHnJgaZC4QrykKQG7q/9fS46X/flB6Dzx5AC9rg
	YO7eErV17qf7fZZSezyUohu0L0xAvvxAcym4LEZfOaORNL+0QD8vcdMEHXhGn7h0mT/VXFw8uoxoJ
	XF3U2/ZKaHjTIioofLYQxcbe1oWdjJ6VZiN02W8LbOlB2MxXiwzAei8IaAhoz6dDIZu53Zr4Ao0wZ
	azw2nZ1d6av/da4x1Kyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obG6Z-00DfpI-A1; Thu, 22 Sep 2022 06:54:39 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obG6W-00DfnJ-Hp
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 06:54:37 +0000
Received: by mail-lj1-x230.google.com with SMTP id z20so9837917ljq.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 23:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=o+uu/9RKBphu+zm7TwKOrXkxy3xHEkf7FRx1AonLJpc=;
        b=N/3/P5+L+iID7BMiTHffQPyeJaNFN86/1f0sSV9lpteQxDNzqFdz5OdnPWWGR248UV
         rarm/iwKPco+zTVlTcMz1S9+JOyCwMpk7ReqlzbMtMF/fON2684SGA7AM06bzPu1UGW3
         PY2XlM6pxOoAnmeqLE0EOTycQjfqHk8ADgrqj5oxxV73IrZIbYpTfcVwHZRKTB7L9jGn
         kyVx74KNIzwo2p827DskvI17B+FwWnF2F0Y/6riUjHqq9D5j8blTs1UzgnEJM+LAltpC
         lSuDOagSqy48KnDVQtlrzQLnIOIQ4N1rJDjuVkkm+0DSE+jAMvzYrMuuv3evRPqvm6zu
         7SLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=o+uu/9RKBphu+zm7TwKOrXkxy3xHEkf7FRx1AonLJpc=;
        b=AbdcPrGoy8kXeNV4qdkZ2oyhJ5hP5yB9ZJLTTx9tNR+mg2eizZI9+zayDETM4rjXKO
         bqj7Q411+zpm864YTEySdz/urdcyF4GRzIlNOGxclUcunVMy10TuRPA+H6bW5TaeaX0X
         bFGTO4VZlubpRH82uwSc1alOYrWM3Lxfop/vhwmEqTmk4/gGjH7IEXFzairJy9BIX0FN
         kIn/ofdBWQO/8AzLDdgqpt4CI7VwJ92muISW3f6HTB6Ov+fu26CitbFs9hHIw9RYT4fc
         Dex9Fdcg9CYn+XFlorB28fTH05txAM7SbXfVshKjj68YIkosfFJoaZbnBNcBU3ONgDdb
         JkoQ==
X-Gm-Message-State: ACrzQf0H/MfJmseYHlyQ0lc/+DbaGQejjcrs/S4VLppVCfMkaCXpTScA
	dZSdWuqc8Fivn4AJtIA7e+CLaw==
X-Google-Smtp-Source: AMsMyM73rElfFWYmfa5lgS3NaACXv9Nniq1eeiCeWsHRAcEKJR4mqjh7OZAvuQLMQr70W3iILGG5Zg==
X-Received: by 2002:a2e:b16d:0:b0:26a:d1da:db8 with SMTP id a13-20020a2eb16d000000b0026ad1da0db8mr589601ljm.217.1663829673780;
        Wed, 21 Sep 2022 23:54:33 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bf27-20020a2eaa1b000000b0026c603169aesm774796ljb.0.2022.09.21.23.54.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 23:54:32 -0700 (PDT)
Message-ID: <f8aa2125-33c4-0860-cc34-f6d303b623db@linaro.org>
Date: Thu, 22 Sep 2022 08:54:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: dwc3: add sdm670 compatible
Content-Language: en-US
To: Richard Acayan <mailingradian@gmail.com>, linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20220922024656.178529-1-mailingradian@gmail.com>
 <20220922024656.178529-3-mailingradian@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922024656.178529-3-mailingradian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_235436_643157_2E22E1E0 
X-CRM114-Status: UNSURE (   9.66  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 22/09/2022 04:46, Richard Acayan wrote:
> The Snapdragon 670 has DWC3 USB support. Add a compatible to reflect
> that.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
