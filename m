Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C292AC77B60
	for <linux-phy@archiver.kernel.org>; Tue, 28 Mar 2023 10:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSMa6gdrgnP0TLSYDKQYhW5qiJdL2Q10bLMbfEwDJgo=; b=DUQBoWFMMgFNxM
	yeFwOcmgNlIuGUyBTBImYoATZwQoeuxqfvXHUKqnbdZWkCBWrmq+qpjoz1uwNTXu2+kGjO7cMO4Wy
	GEbKW5gkz91oBxhKVaN3RpW03Pagayt438hB051N7U3yO/WmUvlpF8pTo7cyD9YRWf75hithcRf4m
	rUivzeLwIS4/WHHusVkEk1fiIxIdhUlXrOPh6wI15Cx+5KOUe1EFfX6bnBdXEU8D3k9nMWm2dYwE9
	KCSmAkblnnNnK2DXA9cQE9V7309/GK9vwvDS25wE4D5eSMZ0xb7rzqwobymBVkuKOM7sAXZQwnH9m
	xJyDUixQehlF66fWM99A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6pi-00E0fA-1N;
	Tue, 28 Mar 2023 10:45:42 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph6pf-00E0cs-2c
	for linux-phy@lists.infradead.org;
	Tue, 28 Mar 2023 10:45:41 +0000
Received: by mail-ed1-x52f.google.com with SMTP id eh3so47657326edb.11
        for <linux-phy@lists.infradead.org>; Tue, 28 Mar 2023 03:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680000336;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AtHhs7QB4pvJcwjdzLIh8LZI6q/2lcp/523QTwwGlKc=;
        b=lgW0DLNSJ485rxyEs2NYbnwTaAxRcgjs30iMncoQvvzjtI2ZNvKtbdMSoYdYWot0g0
         eiDrRKM8+0LcoMR+KXp3xamQUz1mi6cxVUA8mO2dS6a1tktv87vWFABjxlzF8FxyWDDH
         MKOC0cWhXaAVFAJUts/K+ipkg4Mf1REtq7gGGLD/rABsY5bpgleQC8R1iaL1u3bxboYx
         TI/n0arW2KQpJGP4zR7i2hxka2WPMlJz3qvgYEC0JMAxFUkr/JHRM1zB+049zkD7Oy/q
         vH+aGt+syb08gKGM2oPaGDpdor8U0SYl5vX6B/Uuw4YZ1A+MlTqXtquJzBz7IB8TumE8
         k2QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680000336;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AtHhs7QB4pvJcwjdzLIh8LZI6q/2lcp/523QTwwGlKc=;
        b=fEYMzXvO643NIyDJs/aM2jp4D3Ft23VJ0DFmxPlCii8gy8VxWHquOLG2idNBKXk1nW
         0iHkG8qLcoZwSmtueMmRSdAMTTOpnmaUbb2BgidESfbVrevlcDLb8qqTnQo3KujUuI8A
         6UouS+x2uaAD1wRZBnR6M7k9rfeTBaXqWCvNwCj7cywU2rR6VkItcV9V6XyccVGD6EHD
         E3cP8aIRj16H9pkFnFI/k9V5IyWR0Xc8Vt8nL/WuJJ5tsL76TQswwVgTz3wh2MBtPqVG
         8NGgrkeErR8nL0uVWqt76TFKzd+go7NxpXOSZRjShggpCoLwSG92OV6ee9nQhzeliX6A
         RVpQ==
X-Gm-Message-State: AAQBX9eQxgs8GraE/D8ImcVFJPm3m5hXeWpFZxKlliIotZvyPXkS8dYD
	Dnx0FOIGPxaI6feB4tRtGtQ7ow==
X-Google-Smtp-Source: AKy350Zoahxskd2t4AgYpbNUQl3+Ml9SOLvhMzfmdEYZ8t+v847J2jJRWAeAzg7qLVvtNankTNF3bA==
X-Received: by 2002:a17:907:6f0d:b0:946:b942:ad6a with SMTP id sy13-20020a1709076f0d00b00946b942ad6amr2165945ejc.38.1680000336004;
        Tue, 28 Mar 2023 03:45:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id c5-20020a170906924500b0092be625d981sm15212907ejx.91.2023.03.28.03.45.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 03:45:35 -0700 (PDT)
Message-ID: <8b011bd1-a419-e52b-935c-d0e3752a1db9@linaro.org>
Date: Tue, 28 Mar 2023 12:45:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/9] dt-bindings: phy: migrate combo QMP PHY bindings
 to qcom,sc8280xp-qmp-usb43dp-phy.yaml
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-2-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326005733.2166354-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_034539_859193_D18FEC25 
X-CRM114-Status: UNSURE (   7.99  )
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

On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,sc7180-qmp-usb3-dp-phy.yaml)
> to qcom,sc8280xp-qmp-usb43dp-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 278 ------------------


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
