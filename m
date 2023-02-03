Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42F7FC05027
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 16:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Im+Yx4iwHWcEuRzzSI/S/MLzhkd4dHrgY48xvzcqJg=; b=wUmYojp0s2T0Hz
	lQRss09hafQlQVU7e7Hc1AO2D1dA5qxdymPkvxFwdiUKWc3/i+nQK6bcDEHkV7k09sXZL0bVBr/8a
	4GM7d71kc8epuQINeqH0/NaT7tHlBLPczM/D1OAhkcMomLr/6KlV/PlIBS/QCvbQd0N3JXQ1Cc/n/
	JXxYfPxVDWCuIu3Y3pkb3juLTyjhw61x4Ztj+lSHXho3r5jxPy/6thIBvGhbcjIpfSMheXtIxMMyX
	HUG1tsYZri+4ZYCLsX2KSBpoie20YolifunHSaXwQEEyTUXaigtLOPrrfAzhBvwbjtyukjkaJdd4u
	ZMIiRF1Z7Oj1kh2m2YUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNz4H-002xcV-6a; Fri, 03 Feb 2023 16:37:41 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNz4D-002xZP-4u
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 16:37:38 +0000
Received: by mail-ed1-x534.google.com with SMTP id fi26so5723350edb.7
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 08:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4wcL0nQRhBAWB1PMR9qb7XiJJ/6J443HseXKG3FZopw=;
        b=L28byQkfPMPWQIn+VRbwrmpGzFAP6BdovDv0YYOB0OSKkJtVKvQq4RP2Psnd46Hh8Q
         tLsHjw6qEhnTJMLmDHrzUAZKJA29g6Ay2uAbeBQ8Yg2wTLA76wiUG2HPaMsH3XVE3JlA
         nv8RyO25XKEmkjR2deACBrA5TqEXuoFNbZUA95gSpI0i+4gYXGRppY5x5qQLQAKXYwiL
         el2+kMKrCx+CT86n525ObPnwXVBf7m3zlimPA4jbzYO4H+pgiR4KP/kEZPEQn41lcWBj
         rWw+GvAR7jtZealKyz3JBA/dbWCWwOYOeT6MkLVTf08HHM2yBvHQN82RS5hQbpDHJKwh
         1GmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4wcL0nQRhBAWB1PMR9qb7XiJJ/6J443HseXKG3FZopw=;
        b=fGVyP29aqly6AGhPK+j9YblmxCvK17lsHvERXcHBW6+KkZZXRgJC/xRCb1sI+aYxWz
         DSRCkIPdn+16dvX317YHcltWhXObmsy2h6BV5eEBVpjto9+UqSkFKLclzF9zi8sm5WAn
         jmkGvFbyOGRV9n6cZTL1TCPeucPMS0y3mbSLrqEx5hNpSyTV08z8zyzceB3BpgK695m4
         vQAMV4bWLJZ9GbTD/fzMIN645tV2ST8+J7GF2amUmtyVKDA42ZGB2zve6HQtVqARf8YD
         eZKESZYeN+IycT8innIU3gw0S/FShmAKZ4T1SlZfA7cF8A3/AvroVP4dODQMXpmcFe1z
         lTeQ==
X-Gm-Message-State: AO0yUKXjtNOsP5RQNggGYdpSotfWbunKrlF/PNgnID5QLGr2uYLEfa8N
	mTJHdjDIFfL8t2xlp1IIs1BfnQ==
X-Google-Smtp-Source: AK7set9YH/fARD2jhh2Go28SGdsvrYw+XFTTSJaV0P7RRj0AgB/AZ4G5hP4Tzd8FaZKC7ljmZga9wQ==
X-Received: by 2002:aa7:d7d0:0:b0:49f:a3d7:b84d with SMTP id e16-20020aa7d7d0000000b0049fa3d7b84dmr10041994eds.34.1675442253732;
        Fri, 03 Feb 2023 08:37:33 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w12-20020a056402268c00b0049e65e4ff20sm1365815edd.14.2023.02.03.08.37.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 08:37:33 -0800 (PST)
Message-ID: <8254180a-e3ff-9cec-6fc4-6799641314df@linaro.org>
Date: Fri, 3 Feb 2023 18:37:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RFC v3 3/7] dt-bindings: phy: qcom,snps-eusb2-repeater: Add phy
 related properties
Content-Language: en-GB
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-phy@lists.infradead.org
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
 <20230202133816.4026990-4-abel.vesa@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230202133816.4026990-4-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_083737_273333_0C926933 
X-CRM114-Status: GOOD (  14.34  )
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

On 02/02/2023 15:38, Abel Vesa wrote:
> The phy properties are used for allowing the eusb2 to interface
> with the repeater, which is modelled as a phy driver. Add the phys
> and phy-names properties.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   .../devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml     | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> index de72577e34a4..8efb09b2dc5c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
> @@ -33,6 +33,15 @@ properties:
>     resets:
>       maxItems: 1
>   
> +  phys:
> +    maxItems: 1
> +    description:
> +      Phandle to eUSB2 to USB 2.0 repeater
> +
> +  phy-names:
> +    items:
> +      - const: eusb2-repeater
> +

Do we really need the phy-names? There is a single PHY.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
