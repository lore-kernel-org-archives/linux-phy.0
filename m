Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FFABC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 15:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjKQEsD3eZwQvJi1lrIbNv7w4EigupOX/YwKwV4Ey6g=; b=UIXLb5obEF7Kne
	FUVyQ4q4pHGVWRNmCBY9WuSAN48KQB2+tEBtKd0D43CzK9+0x75mDDqXSMXfj7/t36C4YvljkE5a0
	5zj90wOIenpI8S7dNlFkC+8ckjLnlbTijqOOItZIGllHTlKrczSrZo2k/+w4ZdSMMTwDVS1m2L8dM
	WsDP3tV/9MfckXoK50SDOrjfwDtrfDxqe+MJIFglNH/4IQFAOB6XdaYL21W7zyOeHj8yIQNbNnqxO
	V6QkWDZkrS5k8YGSxXGGY+poJoGc5ZK6MhrbMzOnL6cPIbJHPJa+zTjfj2hzAp47EMPgaHyoUqrXr
	3NgEfYSBSdbJPtokNGYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVoT-00GX8x-GF; Fri, 11 Nov 2022 15:19:25 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otVoR-00GX7G-C3
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 15:19:24 +0000
Received: by mail-lf1-x12a.google.com with SMTP id be13so8787106lfb.4
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 07:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z1mqXwvWmPhab1TlCcop37vPKl3pWguvjIJOUMn4sIY=;
        b=lRFSJ+iixZbdJTxYfczKSrJhBl2gDGcJWujaHoQ0IW/UjhTXhA8AHsZ4tfrNCHxxvp
         U5JqMIxcToRCENRVI61YoGvCs09aJHlCB8jmaK3DtrAfay5L/7T4z/et8f0NXlu5Er+E
         ZCRID4XUVYtiTfiABSenvlvb+tGe79Ulh3SNzxtUvEMztKtE+NjAk/ceVs9BfF6k8Pyw
         A8wvTh9yyr4y9TFFOnWyHLQzT7bQwYIaK7F3XE5+5Uuyqp6vPxxSsjs6APKc110S6xud
         Y10yCUy+tQ9OfsNsj98I+awvK/ky6JwsQ4xBXqnx+ZovZAVZhUTojtdFCkVj89Q1TTUq
         H7fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z1mqXwvWmPhab1TlCcop37vPKl3pWguvjIJOUMn4sIY=;
        b=p4Rp3MX/5g/RSMlRFYyC7XuIuQc/Uoa1+19hqIYhLIib2ycfB7E/JXXqkSxBsx8et7
         FrIDg/IGRJ2MR8ArEvims1CvBjGlUtA1ZXvGE46zDI7qjhP3rTAOCimvCDEWQHlt4AFY
         Lzi+rCDzp5zgBWMAlo9m5qcPg+DM6xdvGMfSUoeGPjn8zzwVwTI2mLbJ3Il/dT7+6Rvp
         pA9bRKFZtX2KbvhQXLOXJWpla2sIzDTbug6ZxgmH0sgsnxb1+QutHCX68lCvfLg2/Imi
         BojK2Pn1tNIM2TiXiy81PdeTzAuwJ65i8OiV8CUxjX0XRTeqBvl2LTmKGo0OMkzhG1Pm
         7q0w==
X-Gm-Message-State: ANoB5pmDldbLjP9micFh+7GBFdYJ7cq+w693hGZh7IlW4J/BIdW4z5jp
	LrzDMCJhoFFPXEVu+k6ockymkw==
X-Google-Smtp-Source: AA0mqf4MLBY3EOROYH2BI548oGHzi0oPD+Q4xK3FHZtfNMFWB5iNosXtssjHoXmiFaInj3oNg8aGBg==
X-Received: by 2002:a05:6512:3c8e:b0:4a0:5393:3749 with SMTP id h14-20020a0565123c8e00b004a053933749mr889517lfv.494.1668179961701;
        Fri, 11 Nov 2022 07:19:21 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id s8-20020ac25fe8000000b00492b0d23d24sm367101lfg.247.2022.11.11.07.19.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 07:19:19 -0800 (PST)
Message-ID: <76e9ddb4-b33d-5e86-4ee8-c6b164236bf4@linaro.org>
Date: Fri, 11 Nov 2022 16:19:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 04/14] phy: qcom-qmp-combo: restructure PHY creation
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-5-johan+linaro@kernel.org>
 <Y24Vyn8o1VkUecKY@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y24Vyn8o1VkUecKY@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_071923_460569_54FE26D2 
X-CRM114-Status: UNSURE (   9.34  )
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

On 11/11/2022 10:28, Johan Hovold wrote:
> On Fri, Nov 11, 2022 at 10:24:47AM +0100, Johan Hovold wrote:
>> In preparation for supporting devicetree bindings which do not use child
>> nodes, move the PHY creation to probe() proper and parse the serdes,
>> dp_com and dp_serdes resources in a dedicated legacy devicetree helper.
>>
>> Signed-off-by: Johan Hovold <johan@kernel.org>
> 
> Please drop this first stray SoB line when applying (or I'll remove it
> for v2).

You need to send a v2 anyway to have a clear check by Rob's bot, so drop
it then.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
