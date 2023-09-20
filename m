Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2A2CE79DB
	for <linux-phy@archiver.kernel.org>; Wed, 20 Sep 2023 14:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/8djCSu0ttRYmZ1TDxiMp1BDUILXT1tCJlAAeqwGGg=; b=HttqOhfzsvJQyL
	YYLKyCLnfyFWyaruY+mPo6tcMOwLR5gQuhWqsrneUp3COn8coTezMXBWO8Zzj/Vh5c3Yr45efmRCT
	3XgpYmKdra4LbRm/W0n8n91/Fs5FYKGyz6kAGdFFAWtbwygDbPZeUWhFde0WL5dwB5kPrXHEQcYBc
	L0S4Juu+EpQeyh4BrB6vZkF5JDaJGXiH1V++p2+G/nU032XouD1E633a1uVcs4eqy+ZbN9xUb5aBq
	pmZp70J/aRwxSudhpaES1exr/zMuSg5YMzlBFxOw+7CTD+eXcDk9ZSBcdIwO6cR3Z6xnqoEFABH10
	jdN6r/xWy1yylq4Ad79Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyC7-003K7J-1P;
	Wed, 20 Sep 2023 14:28:47 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiyC4-003K62-0U
	for linux-phy@lists.infradead.org;
	Wed, 20 Sep 2023 14:28:45 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c00b37ad84so55310371fa.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Sep 2023 07:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695220120; x=1695824920; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LtxCq9Na6rpCtPYQhYFE+hYkNtnlIQOOpKV463CAC6I=;
        b=Fn5mSebDu6viVXCImuxLwr7CwBhoU4iWFHS8BJq8rqyYIblKoNareE9I8lcbyvHfwu
         EjLwp+DOEExfBZFyPH8ODR6WaRWGGPMXkM6QeoXPNm2XWn+d6QoJcGzWX3KxrPjpiUjM
         H+eNt1SsjWtHj9x1B502RMzLsQgmkcYaXcI4Mt1AgUIM3c6bPnL1Cd+NI09SD6xcu4ox
         Iqfp5eo2S3n6GSokWZGFgZUhURPsZkNDIagO2aiZ1TWEXEWiAK5JGMohFiI6/Z1ZeJzg
         ODJK+lyelSkLVDiJagf/yxNlk7yM0sYHa8UALeBveLQjzIDMQLdDo6MQc82Wat2HPiI1
         a/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695220120; x=1695824920;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LtxCq9Na6rpCtPYQhYFE+hYkNtnlIQOOpKV463CAC6I=;
        b=CcdWyWh26XgJ/cK6wpTfW5jUZ52nsx3u+W2S6UiK5ln9mcrFS0FLxj3GgUEDw4+K6Y
         pmHsI7EnRAUbm4ElBB7XHbYDwnhQVz0zjf3eQMS1Dj2Uqktt4Sq+HnWEsXPLIKDePKoX
         toek3QkqSSQtFIfGsfk92ghKjgdC1hCRKGli70ysQsLJLCYCUVCmjF+/yfBOlwPWYZyx
         1VGv0WgT5MT+C+cbUOphq+J+XjFhpcQG7W1Wm/YHm/uu/7CG6yN1vYIIhchfk8dTkY7P
         Bld4AH41NdsXuWi+szvyNOTQuLSWdSvEK3gLAUk2gvsxBWFXoW39jJA0a7cX5yDzHM4P
         3XJw==
X-Gm-Message-State: AOJu0Yx9WFvtfKg+rYg5dxNVNPoGcqDCy6HLgBtq2nZaGIBz591xvUPi
	kCE0WP7MzE0jLe41YRA8afZbSw==
X-Google-Smtp-Source: AGHT+IHy7BqgLDFZs6UQbHtu2/7vJypH4EJX8MKjk8ev1/EHp8Jj55x1ob7FX8sqs1VAb0K4W9HOQA==
X-Received: by 2002:a2e:884e:0:b0:2bc:39f5:ecb4 with SMTP id z14-20020a2e884e000000b002bc39f5ecb4mr2411051ljj.25.1695220119763;
        Wed, 20 Sep 2023 07:28:39 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id f13-20020a170906390d00b00982a92a849asm9418489eje.91.2023.09.20.07.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 07:28:39 -0700 (PDT)
Message-ID: <911fd752-d5dc-79e2-91b7-74c70e5d8632@linaro.org>
Date: Wed, 20 Sep 2023 16:28:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 4/5] PCI: epf-mhi: Add support for SA8775P
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
 quic_parass@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
 linux-phy@lists.infradead.org
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_072844_209420_B2751B3F 
X-CRM114-Status: GOOD (  13.40  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 9/20/23 15:55, Mrinmay Sarkar wrote:
> Add support for Qualcomm Snapdragon SA8775P SoC to the EPF driver.
> SA8775P has the PID (0x0306) and supports HDMA. Currently, it has
> no fixed PCI class, so it is being advertised as "PCI_CLASS_OTHERS".
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>   drivers/pci/endpoint/functions/pci-epf-mhi.c | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/functions/pci-epf-mhi.c b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> index b7b9d3e..4b349fd 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-mhi.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> @@ -114,6 +114,23 @@ static const struct pci_epf_mhi_ep_info sm8450_info = {
>   	.flags = MHI_EPF_USE_DMA,
>   };
>   
> +static struct pci_epf_header sa8775p_header = {
const?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
