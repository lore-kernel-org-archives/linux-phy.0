Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FCBDC3DA79
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 19:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AxzdYlfqgvT0U4BIzwIAUVi2haLJ8SG3WJiY0AmYks=; b=meyAavUmMIH42B
	JutvpFJdpXnR8Cn/YbhQ4e3qotU6f45kDnxpdoRjdLJVrXWFH4Xud4SQHezyTZV2jnFPj8Jx+0vw/
	H6YDzVDh1ToDcpXdWwX58HuHwRQe/zmBFlqV8xmbdvCcHps8Q9Pt6C4al1wPgXRwNBRkqkDXu0gVD
	zJHb5ayNpSSPXZUA6JbCB9FgXQgkuyZh0xw0wd20LTP3/FvJJ5fj/+ufZCYjsAWTokCceGPolCoZh
	1VQIQ6VyiMLBpst29Bc+I0GwaTWis8ha8pi5Sg6fo9aqUeO7ZL4/UxjzjT4e/GqcOwOtFj84Swuv+
	XAIIxp5wRugYNAuX7vdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAyta-001UR5-0f; Thu, 29 Dec 2022 19:48:54 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAytX-001UPE-Uz
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 19:48:53 +0000
Received: by mail-ed1-x52e.google.com with SMTP id b88so20647670edf.6
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 11:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=541SBCv8SU6FPzh9UWaGvbUvGVDwpHo87zFERdHNWi0=;
        b=Rzvy+I7F75jZMdEUittNMZUI83ttB0C748UEtsIIh1KqT+IpY3yEU5fNM8GyBgKoxb
         WP2bL4k67n5d836msKdYlrc6q83/CrGAYMNKBOERpDehMbekQB+aDip7qBvd4sBCgtN2
         g3sSuVGWaZwUcLjFvIqVsPmjHTXmzfNPRGmwbs26NIQ1nKeuif8px+UTOBkZtCq8sUKo
         c29d/9j2WIBA0sRf6W0pxadb6SAqAu8iAzHvadDHRFV54eYXjwebgvPdbjliQ5DdfipW
         i/0B+uGTz50cD5txm0Y0KClWITQMXLqDfJ5jfAL2HaXVPuw/zxEMm1gT2w1e1ZEFk2rQ
         5Qew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=541SBCv8SU6FPzh9UWaGvbUvGVDwpHo87zFERdHNWi0=;
        b=aGPyOz7oEDIud1hIT1DG944q9HbopJ9JR4+tKKbCSlJ5d80S2t14ScNVF5b3vx/o15
         dOEghy/TCgBXueBUn39ufJWQTiMvo2Qo5WpeA834PmbkgvZJQztR8bEq3ZCY+r+Z0pLR
         3NvcdVYYCEhWJ3h6h4YiWenovg+33St9f+sXjAlEE58ao87nbTapVJdWuXQ30o1O0Rkm
         oU/Jza5SraGhn2yVRoeHmGJIhEV/hAuKiuzw2qWURt1VgvH1TrYkbm5YC9R+863GFFB3
         Q59KH4WbQ8xk2+CSGWVpV8FA7mSCwxSwYPdqIZCu4fioCo0bE7fm6a8WEgaG7VgDqNVq
         xowQ==
X-Gm-Message-State: AFqh2krnR4iJjrEFmrM8SrpKjktfUIGpAVnbn9nQ+V/ePYM7LfMlua8C
	YiifSJ3P778DRbMzqrhkRsdA8e9I6bzXQEyIbY0=
X-Google-Smtp-Source: AMrXdXtzMH8RQc69dHcJbPn/IEciyDfXVfpA7FY0UV5nx5VJSiLTDU10Hdm1GSWIS/rb8qewbPffkw==
X-Received: by 2002:a50:cc4c:0:b0:479:8313:2fdd with SMTP id n12-20020a50cc4c000000b0047983132fddmr26523037edi.10.1672343328647;
        Thu, 29 Dec 2022 11:48:48 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f? (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id m9-20020a1709062ac900b007c0d41736c0sm8838265eje.39.2022.12.29.11.48.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 11:48:48 -0800 (PST)
Message-ID: <d1cd6d30-2142-765b-c201-4d6662576665@linaro.org>
Date: Thu, 29 Dec 2022 19:48:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add qcom,dp-manual-pullup
 description
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>
Cc: agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-2-bryan.odonoghue@linaro.org>
 <Y63jBu38L/5cQ75S@gerhold.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Y63jBu38L/5cQ75S@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_114852_033424_90918360 
X-CRM114-Status: GOOD (  15.90  )
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

On 29/12/2022 18:57, Stephan Gerhold wrote:
> AFAIK it is not possible to route VBUS directly to the controller on
> these SoCs so this property would likely be added to the SoC dtsi
> (i.e. msm8916.dtsi and msm8939.dtsi) and used by all boards.

So db410c signals the SoC via GPIO 121 / USB_HS_ID

https://fccid.io/2AFQA-DB410C/Schematics/Schematics-2816094.pdf

Which causes ULPI_MISC_A_VBUSVLDEXT to be updated depending on the state 
VBUS.

But not ULPI_MISC_A_VBUSVLDEXTSEL this is the additional register that 
downstream updates when "VBUS is not routed to the controller"

I don't have a bit-level description of these registers at the moment 
so, I'm guessing that ULPI_MISC_A_VBUSVLDEXTSEL *is* being updated.

The reason for that is if I just set ULPI_MISC_A_VBUSVLDEXT then as a 
device a host never sees my SoC via the internal USB hub.

In other words, for me at any rate I need to see both

- ULPI_MISC_A_VBUSVLDEXT
- ULPI_MISC_A_VBUSVLDEXTSEL

to get the pullup to work and hence the Hub/Host to detect the 8939.

> This means we could just bind this behavior to the existing SoC-specific
> compatible (i.e. of_device_is_compatible(..., "qcom,usb-hs-phy-msm8916"))
> and avoid having an extra property.
> 
> Thoughts?

So. I'm OOO at the moment and didn't bring my db410c but TBH to me I 
don't see why we do this whole dance with the pullup on/off with VBUS.

The right thing to do is to run an experiment statically setting

- ULPI_MISC_A_VBUSVLDEXT
- ULPI_MISC_A_VBUSVLDEXTSEL

On/off at power on/off respectively on

- db410c
- My reference where I already know it works

I'm not really seeing the utility of - partially waggling one of two 
registers with VBUS.

Why not just push the pullup on with power-on and off with power-off..

Its worth an experiement if you have the time, if not I'll check it when 
I get back home.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
