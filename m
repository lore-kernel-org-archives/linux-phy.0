Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF37C0502A
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 09:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7nIQG/GVvbMQ/RjooJFkBV9+L4qWg4ZvJe9IUvlV4c=; b=bdUGa7w+ahJsZd
	tpQLJHpJZlkASlwIKiIBfmTC7LL3fVW9PKnQdIxqEAWYU0N8dLXEa2lA6+y0wbaoijjKO6TLuBRdz
	z+WqYcMVi8dHJhVIyO95nxNqaWurKQN2GzLhmVhWQjlCRsEguCUwHNj0n+Dn4pyRxWTOEnSUTIDdA
	F2XwetZx7X85vm+zCOMHfOZagWukzDhtii4e6/mO9no51s+eCYqo2RS/csYEE3zKnVBX/wi2UF8E+
	7qfcCwU8x+8PU71m1HXfyg+GRWcapIE/VP7vWy10S6cEVQ4hj2cY0LfsWqsGWi54QxyGbf/OHy5sx
	YXBRIN6r4CqfacdQK+8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxbV-00Fg1Q-1V; Tue, 30 Aug 2022 09:32:17 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxbO-00FfwJ-6f
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 09:32:14 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p7so3565715lfu.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Aug 2022 02:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=DI8R5uBfUCPdaITMxiTJ7CTu8pb9+geNomuQXiCpnr0=;
        b=EI+kX0MIh7dM75jIWk5kzV+psrJX2vqVdAV3nYBd368tgD9H4/7BQNqg/NqSfxwQWw
         NO52QwNk1KHMnuXWgM0aY13g4hlfug1T2ig/krnVYsA0T66MxhlBMCvkhCqUvOw0ywqG
         bDzuxncaHbd25Zpu1lkX5ZY4cnBXfS++ss7GhLx+Op2yAf+vBD2s+ol8DTusmln4r+mu
         NrxlZ0tW6emLdtJPTFReevrJghIz6LpvusVer4pP5dZAaQMXsRtDPa7KmmUjle9Dp0l+
         MpNw5gCu8Qp2Ygqg1i+tGXvAizICUojIuJyW0lNihDW/8Yv7cNv0W5UqnwtWTZDkuaSl
         BCPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=DI8R5uBfUCPdaITMxiTJ7CTu8pb9+geNomuQXiCpnr0=;
        b=NU1HNCAO91sitYzlUbuJZYAP4lwYgBy8JzeQFEz8T0PV6mCPtvAoi7n847Yy00qhD8
         1LuJV2W2QoDp0tc80JCPaVOYDKW2ee50u+Nrf8UwSQSscAYP7ck+zTsai1KL+DBoqIAV
         jW9VExDLo1MvVfpl25Ynj4GDpwo/0U0vZEpnEOp3lHS4ZJes/jikbn0DyQCJCCYfzAZ7
         Qi4hb5x2ACq2DHTaH89LtF3wGKDzV0KrLYfRUhfzRJKQr12j1HWQdGP3o/gBCRdP0Yj4
         LJ6ta/iUmk7LmMMRc2jDQFNAYAohRmTJy4fXoucNpqJW2JvYMPbjyz0j4W7SDfc6DKgN
         hIdg==
X-Gm-Message-State: ACgBeo0zMmXDlv0xyRk68tsIni9gultxZtnJihSsT7dINBcgCaqaE3R5
	1HbQ5xYuBBdSsKrSK6yz7gJpUg==
X-Google-Smtp-Source: AA6agR5pvdm6ppGDodlxvczV0eI5jT2RR3G29/7S9uRukhMpYXw8vrXirlsmxe2a8LQqnM76clooew==
X-Received: by 2002:a05:6512:261b:b0:492:cd8a:e1c with SMTP id bt27-20020a056512261b00b00492cd8a0e1cmr7173154lfb.528.1661851925857;
        Tue, 30 Aug 2022 02:32:05 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a28-20020a2eb55c000000b0025e2c5a12b6sm828961ljn.129.2022.08.30.02.32.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:32:05 -0700 (PDT)
Message-ID: <aeec2729-e610-f266-f336-847675cf85ec@linaro.org>
Date: Tue, 30 Aug 2022 12:32:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <Yw2a44l9a6zz5qTJ@matsya> <Yw21t1SUGjCcUuuw@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yw21t1SUGjCcUuuw@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_023212_464506_9C6A27D4 
X-CRM114-Status: GOOD (  16.02  )
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

On 30/08/2022 10:01, Johan Hovold wrote:
> On Tue, Aug 30, 2022 at 10:36:43AM +0530, Vinod Koul wrote:
>> On 14-07-22, 14:43, Johan Hovold wrote:

[skipped]

>>> The final patches add support for the updated binding to the (recently
>>> split up) PHY drivers. Included is also a related combo PHY cleanup.
>>
>> This fails at patch 2 for me on v6.0-rc1, please rebase and resend
> 
> Are you sure you haven't applied anything to your local tree that causes
> this?

When doing the QMP split, we ended up in a similar situation if I 
remember correctly. Most probably the easiest way is to provide a branch 
for Vinod to pull in addition to the patches being sent to ML.

> I just tried fetching the v3 series from lore and it applies just fine
> on top of 6.0-rc1.
> 
> Note that if you've added a new compatible string locally, the second
> patch which sorts the compatible strings is likely to fail to apply.
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
