Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D3AECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEG/sXnxmE2X/flPo9knHzlmP2GDX8YsgMalMSxb+1A=; b=yZYqNOn1jljU73
	QLhkqvlwQ9Or7KCxscsg08IUlK9fZxSLDWdLy1gMoX4HyyFblw4fwUfqO1SIfcl4Qt4vrtrgVWh1V
	6LN3SiIUQpVOW6ebR2eZOXgKfA+WUuhNTgJ6UopS9vg1J/wREmnNezPKwcJN7bztagml5iodKVpl2
	E14GlC5immuQr6JDr4/Czej+kNsrpjiDmbPiYSwM1uzFVVM+F6BPZL6h686wRh1BleS1rSfJ94MZP
	Hvxb+jp54Df4eVR0npRFGqirrt7J3pxzVze7icQAofXR+AoYcZ2EolglDPU/9JsZlzjPggyeUycUL
	Fxr1k4MlwZoxOwN5t1aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe67-00GKmm-Py; Fri, 09 Sep 2022 13:31:07 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWe64-00GKld-PC
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:31:05 +0000
Received: by mail-lj1-x232.google.com with SMTP id p5so1806933ljc.13
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8fE1xHhj1rx7cmMJremD4HsnXubaysHbogPQ0gvVKrs=;
        b=laeCQogBil0kNKmOq4YbG5bMScPrE3bPhL5U9Hk+ak1VKEstHONjqMLZ7sG5gCRu9S
         PmEUz+SuAvmiodyr6GKez9ANBSXpiTtMq/586ziSa0OBTLP2pgWotP5nY0Hlku7LJmOm
         cnM3ILo+9G+0be+meMd0kWxxkoHZq/H54ra2gt2GyZ2IGU8x+SRX0JUN3m0DQo7f0QmI
         gfpQhNqBvZ34qnAtbvruTDiKChRAxP1Qjad6xdUTR9TynGOXLor6bDbk7tLvJUltuMG4
         ate1ouOW8xMUzKNV+uB3hoOnM/2NnPrCj9xjPMw6AMBiFXKEtkki/CIjXiQ4HVFBQtxd
         5jTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8fE1xHhj1rx7cmMJremD4HsnXubaysHbogPQ0gvVKrs=;
        b=ADB0BW975kAOKIQBMNKFkh8nvvkbHBWfVkiiEEfuT+zdj5v9AMM90Hpc2S1fDplaga
         uXyEVAHotJp53DJKOC6mqN29wfPH+B4Xs2zcRZc8pu/DhDf1ZSG2QkydCbxDNrkaOscO
         13++ocBBD6CTU1t6BOj2jh9dHNd5hMLWg3z9O10MZXWzM3wNRIlJlHVoUaXzFOqbtjnt
         GV5YT2eRTf9jhehrDUk7rKucwV/YanfP+YPIQNCZ/wqO73sbDVwT9j6ISzgpeGp087vZ
         jGVYloQwGe2Jc4ATT3NJh/ZkNkoRBFH1M28NkUri4zSFQngqygPAr1RSd9apeimmTl4H
         +PlQ==
X-Gm-Message-State: ACgBeo0o92OwmUu8BnHUj1LuNJi/j6fBpGJBBW8GTfBwTQnUjdXSqLrC
	j5IZtkiUV2hxWf04395CplbdGg==
X-Google-Smtp-Source: AA6agR4qK78Xi8NqPtj6vXo5jScWYdrp/+Se2i5pDNRdMOUUycdnrpLChWBksA67m61uFhum4k72VA==
X-Received: by 2002:a2e:a28e:0:b0:25e:734f:38fa with SMTP id k14-20020a2ea28e000000b0025e734f38famr4025040lja.446.1662730262156;
        Fri, 09 Sep 2022 06:31:02 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m5-20020a056512114500b0048af3c090f8sm92057lfg.13.2022.09.09.06.31.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 06:31:01 -0700 (PDT)
Message-ID: <fbc3f608-4686-6d06-c679-8f51dc5a0240@linaro.org>
Date: Fri, 9 Sep 2022 15:31:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/6] dt-bindings: phy: qcom,hdmi-phy-other: mark it as
 clock provider
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
 <20220909132010.3814817-3-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909132010.3814817-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_063104_844991_EBCA69A2 
X-CRM114-Status: UNSURE (   7.52  )
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

On 09/09/2022 15:20, Dmitry Baryshkov wrote:
> Eventually all HDMI PHYs are going to provide the HDMI PLL clock to the
> MMCC. Add #clock-cells property required to provide the HDMI PLL clock to
> other devices.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
