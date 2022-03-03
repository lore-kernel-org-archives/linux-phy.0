Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DB5BC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Mar 2022 16:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKw7o2V+sdrB2ZVjTSAb2eRJ9615ZymsAQHi/splZBw=; b=QL1Q+RHA8fBqYR
	UbiPN3x4+0CEG5nEB3FdBGb4Holk/kyUq9OFSDelo8wtBZf2iLiBFE6tzV/7zM2YvQ1vNvJnuMf37
	YMImtMxWL8CfBAFzzPNGkXcGazmRCkBV5MF1N5GS12hI8LASB8+fle7cLYg46VsaPUOxEnhXxFe9G
	dfbG4cThgswnsk+i5cOOgduSneOJrghUiQAyW6F37Z6eTbp3uxvQt4rVZ34bhBk+ofdlmtmVU9cCU
	n8oN489pQBF34KTdR1252bbmRAXir42oyZZxYbhKqac4xblIx9JhRiVFk5YnSKtgE0AeapMkeu0V3
	6o6ki7eUbehlI2ohjKDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPnti-0070Xi-Fe; Thu, 03 Mar 2022 16:01:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPnrX-006zgv-05
 for linux-phy@bombadil.infradead.org; Thu, 03 Mar 2022 15:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=MdwjWjZqm0RnOglfFnSZ5WY/pIE+2hElYzOWtQJQrYc=; b=l2figVmM2obXTbYA866/D9hjU1
 unUK+Uzy9lsIIyV8CwJHTjnbiN2QFhUKwTzbGTgQR0p/sDBMWX5uQV2gIAfomlE8j0V7Thz6OY4sm
 msqRwuPcZWlmxLN/kA+oTrwgd8El9urJm67St6TC3I44iulzZ+8DQMzzrZB1bXQLO5URowkHdxguJ
 o2WhiONqtMWeMlA1u++vGB4q/MjDB/BJjr+G/WmtHLQDKBqWrO19SzTPUHNkrufgLta7t8vcUas0o
 azQZRMYsAuuvD6YhDfD0cb/8/jCCUz6FE2xMgyXFv1vcCk/8+vr8fei1QCGx9mfyAD2krXk27DEau
 +9sDfjQg==;
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPnrS-00Ewwh-TJ
 for linux-phy@lists.infradead.org; Thu, 03 Mar 2022 15:59:29 +0000
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5A7BD3F1C5
 for <linux-phy@lists.infradead.org>; Thu,  3 Mar 2022 15:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646323164;
 bh=MdwjWjZqm0RnOglfFnSZ5WY/pIE+2hElYzOWtQJQrYc=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=iBgc9seJnQU63p3sE7YBgOI3sDErrUBtAFmNiojds/FR9W6gEmiFcNQWXNmT3nJkx
 YWuL541U4k2HBH+Tlfh2cPWyKDI3DoGiqtF7sX1CH0sobDHOIfVSwkDWXf7R1ceNij
 G8ic1ZsJmx1vY+A4P2KBJDL43dowH0ed19fY6V5biblXD5kx4IC3tPq+ovUhZnRTxT
 qhTSeLRjlF9uG5yFwOE19pSaSXVm9VNYN2IpLTkD70vg2Fw7qfRZ45VIggDJ6tMnpv
 05WmxCWwoLk23N3IiSaPEWmyIgYZbZmHfpUX1iVqPg9sQvM+WKhxnqdp1ma4MU978T
 Ps5TUAgj7epow==
Received: by mail-wm1-f69.google.com with SMTP id
 26-20020a05600c22da00b00388307f3503so462735wmg.1
 for <linux-phy@lists.infradead.org>; Thu, 03 Mar 2022 07:59:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=MdwjWjZqm0RnOglfFnSZ5WY/pIE+2hElYzOWtQJQrYc=;
 b=owE7WQwCvSLPaxYiPebVbNwKvAZ59YWMd85UPe0JMIFS0OfZ6ApdY7uz7a2nomqvos
 xNbmmqpPQ32NoC+qQlZw3nVEhNGjn3glG4vQa7sIxkhspUnoj5WgTQlvmOZ3wUXNZTZj
 vW787b6fgt3MxCPg7P917opvRKqwUKJhkAuJXg3HHNFdDCKryfC2nJzX+htI+2r3EF8J
 rRHSr27L4bdLxDZWNXjjfyatiynvhhA9oUHIeh0kgEy+Qnf/evKzVA3MwYtpvBNHKtNh
 P7qA2P9pi1fkUCcsX7XwsmZB1Dj/3ILYtGItFalOsP9nb60t1Eh+AmMP+HOEF7z0plEA
 4IBw==
X-Gm-Message-State: AOAM532VslZHei5KNfytjTbo+z9C46Mf9iQnhEXiOnide5n5gdIvSiD2
 FFnX8sfykgS1AxCjbrgU/mrQ79iFNXN0cy5YURCXanb64+MUeau/fdyxvJ5nhubaGodY5fGlTkE
 uumYx7l+e+zbCf0wx26DchvzCYIrC/6avoFkH01+tIa0=
X-Received: by 2002:a5d:50d2:0:b0:1f0:2348:4331 with SMTP id
 f18-20020a5d50d2000000b001f023484331mr8154305wrt.19.1646323164091; 
 Thu, 03 Mar 2022 07:59:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxHlIPEDuVmE/S59LvjLHrwrYJRSachY/7BYD0C1MLQqqJNXoqHm4h7MEj9W5zhmieIqEBtnw==
X-Received: by 2002:a5d:50d2:0:b0:1f0:2348:4331 with SMTP id
 f18-20020a5d50d2000000b001f023484331mr8154279wrt.19.1646323163879; 
 Thu, 03 Mar 2022 07:59:23 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 o13-20020a5d648d000000b001efd62a840dsm2610469wri.111.2022.03.03.07.59.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Mar 2022 07:59:23 -0800 (PST)
Message-ID: <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
Date: Thu, 3 Mar 2022 16:59:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_155927_078551_13D5C92D 
X-CRM114-Status: GOOD (  20.52  )
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

On 03/03/2022 07:13, Sandeep Maheswaram wrote:
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
>  1 file changed, 125 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0dfe691..227c097 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -50,6 +50,131 @@ properties:
>    vdda33-supply:
>      description: phandle to the regulator 3.3V supply node.
>  
> +  qcom,hs-disconnect:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect a disconnect event at the host. Possible values are.

':', instead of full stop.

> +      7 -> +21.56%
> +      6 -> +17.43%
> +      5 -> +13.32%
> +      4 -> +9.73%
> +      3 -> +6.3
> +      2 -> +3.17%
> +      1 -> 0, Design default%

Use "default:" instead. Here and in other places.

> +      0 -> -2.72%

In current form this should be an enum... but actually current form is
wrong. You should not store register values in DT. What if next version
of hardware has a different meaning of these values?

Instead, you should store here meaningful values, not register values.

This applies to all cases below.

> +
> +  qcom,squelch-detector:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect valid high-speed data. Possible values are
> +      7-> -20.90%
> +      6-> -15.60%
> +      5-> -10.30%
> +      4-> -5.30%
> +      3-> 0, Design default%
> +      2-> +5.30%
> +      1-> +10.60%
> +      0-> +15.90%
> +
> +  qcom,hs-amplitude:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This adjusts the high-speed DC level voltage.
> +      Possible values are
> +      15-> +26.70%
> +      14-> +24.30%
> +      13-> +22.20%
> +      12-> +20.00%
> +      11-> +17.80%
> +      10-> +15.60%
> +      9-> +13.30%
> +      8-> +11.10%
> +      7-> +8.90%
> +      6-> +6.50%
> +      5-> +4.40%
> +      4-> +2.30%
> +      3-> 0, Design default%
> +      2-> -2.20%
> +      1-> -4.40%
> +      0-> -6.60%
> +
> +  qcom,pre-emphasis-duration:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      This signal controls the duration for which the
> +      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
> +      The HS Transmitter pre-emphasis duration is defined in terms of
> +      unit amounts. One unit of pre-emphasis duration is approximately
> +      650 ps and is defined as 1X pre-emphasis duration.
> +      Possible values are
> +      1-> 1x, short pre-emphasis current duration
> +      0-> 2x, long pre-emphasis current duration

I could understand encoding of percentages in way of register value, but
a boolean flag is too much.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
