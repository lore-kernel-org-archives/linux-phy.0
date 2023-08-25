Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84223C3DA6F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 10:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XPuNF/6kWZ7ZdrvL5ofhh28+hTNLBxUOca20v+SIGI=; b=hRSvME3GgoX+pk
	T1pB9Qvml5JusGXT0Fe/dzdzQTvQEkfPKeL5Zc/1VlvtpaLa1aXwAktEZ1eUOFaTIVkFvUviVqJIn
	0l/sc0ew5YBUhhNwACa70LXipidUZxFhq+JMvPanAJon0lxpIxnYA5EXTv8ENhNsTIf1Nw35i01Qb
	HX9vIW8RVGNB9dwhAzJwZPWQqUJW+yKDqAAd1MUFSok2bmAwfv1U/1OL022qwg5J7bzxbFoalWFPj
	E8AVXF9zbWhM/NTS6fccOiDahIaGkHS7IU/8K6ZWTbQNBqN8aFJf5QkMpdkNnw340BO+PwTO6ouhW
	2lIawjGDhI9jc+el5z+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUDO-004plE-0h;
	Fri, 25 Aug 2023 10:38:54 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUDM-004pke-06
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 10:38:53 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5256d74dab9so1166530a12.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Aug 2023 03:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692959930; x=1693564730;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D3C+86T5StrlLjJhPZobulBJ5EM1n9ZhQMafts6OhmY=;
        b=Iny/APsjg2ZXEcZFuPYahGnFXzs8Q673KdHP1n472FNMvhnQWGofqWgUnF49fL9H4j
         psTf3gW2UqW4XbRj1XFRwBcpF7O7kr6M7yV3tMs6l+Zei6sxDEX2Nf01ijNoabDSpYJg
         9F0FEjPZDm8DyIuovK0QdtM44Qnd0V7HDlXmxmllZO09wj9zZMigiCJj8Ikl6TdGk//i
         /M9zfowc1aCclRT7FVoDSdueNEuS1IkmX9zyeRh3J44wvpHWkcrJzU4L174L6lgtwq1q
         Yl3I8Wp/EwvZSGqIJFrnDCyrdALRjWVgDH1B6dU3frUdRWzAGe772l4wz4/8CcT//qbC
         Gnqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692959930; x=1693564730;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D3C+86T5StrlLjJhPZobulBJ5EM1n9ZhQMafts6OhmY=;
        b=XNcZ53gx4bsZj6H9JHoFLYWFClyrq0SjoGmGUV5TbykcGp9JLQIoP1xGk3IdzRcmCy
         LfNJv+Ifg2bujOG+j07E5sw6AJXilDZF9gaCwx+9YxCh94yptjY37Szyt/k+9fsHRDgX
         8wvbFv8yUiErEXodgWIQt9+uaWwMG/tEpyqgvWzO5eXaAA2MuzjVNwXo2QtTHzkcBmjf
         unnAAVBhFzFeFCwDxl3xziERzQqOGRbhO8hanKyYjKqpjZOrvbEnFeknjU8Hth01Qry3
         XALn3wi6onVEH9ekltebsr8pEjKyqoLlwPhqD1D4wVEnAv4P7BsMcFN4yUsTXbxFJVnn
         48LA==
X-Gm-Message-State: AOJu0YytFNKtIQkP/C87kVNGgnIN/9Q+9yGTrTMCNGeFw+N8dYeJVi6u
	ngElrr03JOo8nvaPjHfF5QAvfQ==
X-Google-Smtp-Source: AGHT+IFN8932Eby5S9OZDlGNpVF0+Zju5KfZZSZwwcQkQWqVLGGgaDFmghzjTCLMy5XUEKel54LPSg==
X-Received: by 2002:a17:906:9be3:b0:992:3897:1985 with SMTP id de35-20020a1709069be300b0099238971985mr14396652ejc.43.1692959930048;
        Fri, 25 Aug 2023 03:38:50 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id r22-20020a170906365600b009a1b857e3a5sm818029ejb.54.2023.08.25.03.38.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 03:38:49 -0700 (PDT)
Message-ID: <5373a7b5-df23-47df-b732-60a31c1ea6d0@linaro.org>
Date: Fri, 25 Aug 2023 12:38:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 5/5] arm64: dts: qcom: ipq5018: Enable USB
Content-Language: en-US
To: Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
 quic_varada@quicinc.com, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Cc: Amandeep Singh <quic_amansing@quicinc.com>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-6-quic_nsekar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825093531.7399-6-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_033852_073752_0FE90468 
X-CRM114-Status: GOOD (  12.03  )
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

On 25/08/2023 11:35, Nitheesh Sekar wrote:
> Enable USB2 in host mode.
> 
> Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> index e636a1cb9b77..cdf5e22ec54e 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
> @@ -70,3 +70,15 @@
>  &xo_board_clk {
>  	clock-frequency = <24000000>;
>  };
> +
> +&usbphy0 {

u is before x

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
