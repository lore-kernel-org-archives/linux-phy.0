Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9611AC43219
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGJl4msE6mKC4fVbpAx4LznvUwP1cs6f0flcumos7CY=; b=KVsH1Oe7R5cdTJ
	hOZMgHCpYgUNh9RsrteZkCzcKEiPpCh1eWZcViQvltkBKBum95WhTmP8M2PC13ypEQBvgTmIejCGk
	m8zGFDpTeiCpiVvz64QdGPoiLeT0myRdtUbacWpM9F5hZcrr+sJJJJWq4QrrXJbo4TIyIKcXwtvV9
	tI8bW3kkeVkEmdd2/ZrrhKG77mthxD8URCfpL1h77ZO/uXr9PxVeDcLiJ/lwdBCR6JB5zfxY3BRR8
	uD9ZpPc3kmmvrWd9gajNS1OvFPsW22jvfZ0zDzXwXJekuFYbHz8dOQIP4Ye1D1QAbzlbG3Xk1+6fJ
	8sKxFb0/X7lgQfbFnfdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otojW-005J5s-J7; Sat, 12 Nov 2022 11:31:34 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otojT-005J5M-To
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:31:33 +0000
Received: by mail-lf1-x132.google.com with SMTP id r12so11988310lfp.1
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hyF6FkyUHkukwBAE9GVV4YhjtohoXdGwlx3Dp0iejE4=;
        b=ArCIX/n5Z4pVv90yyrB/6VQHqH5YHooQEMvqH4IE7TAcy9/vtmzrMPQqFpy4yWy3B3
         d1Fv737eu2hRTFl8AMHvO045l+APx469fYZcUoflKRJ08SRWz44p140uu3RrZUay6ttN
         l2skMtTnSCLQ484x8V8wMaD+HiJKwhUyFOXAKQQJQCetFvR7ibCnNf+Oz6xqxToQWMJn
         7HQdmHMM+5gk0agt+OZCJ/vOlc5iUUaDo1f+L3daYskuDOnckKAVY/2apY1trDFqWp1+
         t/SoazbX5YhHrbS7Ef31WXnJBbPUBNdiOdbIDWCS+4dX/eos4Y/sQXR39f+ehySifluq
         i00A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hyF6FkyUHkukwBAE9GVV4YhjtohoXdGwlx3Dp0iejE4=;
        b=fjvoI17mRdu3lcqjtgukMVc5/fD++LAP18VVFD6A3zs2J3rGuCimhGjfvqxdN8oruK
         uFkVQHQR2rE3Tgo/EtP2Kwiwit0KUngUJKdItGAIsR46xO+B5TPyqKTA6ugr/B0xX1ja
         K34JQuWPBt7MrQn6nv1erPttzA96MIaqRl2u6Htr5bBrXN7O/5ykm8goQ7Nun+ARO8Po
         R5IgEHVRZ0jQtpa4JKhHUVpIfnvX0H36+no/XSbywz1u/18cMVYYNxzI2dQ/ZptV28Et
         Xg4V5C80xpFqdLfwSsVQP1L9RW858qjjQlyNVTFKAb/Ntz3kRxgRcgdIM2e4T/JiCmGr
         oUzA==
X-Gm-Message-State: ANoB5pknECjrQnPJYoiP3/ZQRpvRyyOl3bKum+PRJHYA7yU7TPYyPSZ5
	zAas5eyH20UyXFqDSc5HlwD4Hg==
X-Google-Smtp-Source: AA0mqf74V0/CUUWbv/npiqfkUCReOUvxvwo/eAL5/b6e4Nh/H+ULAIDj4T6zihNXsIEojUo9x56x+g==
X-Received: by 2002:a19:e30e:0:b0:4a2:5163:f61b with SMTP id a14-20020a19e30e000000b004a25163f61bmr1894854lfh.177.1668252688147;
        Sat, 12 Nov 2022 03:31:28 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020ac25fe8000000b00492b0d23d24sm824305lfg.247.2022.11.12.03.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:31:27 -0800 (PST)
Message-ID: <f3ae781b-2046-e1be-564f-9de74107f000@linaro.org>
Date: Sat, 12 Nov 2022 14:31:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 12/14] phy: qcom-qmp-combo: rename common-register
 pointers
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_033132_015426_4FCF5F32 
X-CRM114-Status: GOOD (  11.01  )
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

On 11/11/2022 12:24, Johan Hovold wrote:
> The common registers are shared by the USB and DP parts of the PHY so
> drop the misleading "dp" prefix from the corresponding pointers.
> 
> Note that the "DP" prefix could also be dropped from the corresponding
> defines, but leave that in place for now.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
>   1 file changed, 12 insertions(+), 12 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Note regarding the last phrase: I'd suggest leaving the DP prefix in 
register names, it makes it easier to visually note & verify the 
register block.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
