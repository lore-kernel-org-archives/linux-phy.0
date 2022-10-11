Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 305CEC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smfK5pVYGCvTZ+3dz0ZMufbUqoLFC+HtZZYUCng+xBE=; b=ZUIBC6CNOVX1l8
	7sCV+yRRFVaezMNv2QfoLUy5on/UOJNdgump8Snp/MK/+YGg/1mOFOYfDaqQhAXEqbzzNtQk7zciA
	zecDCOQDJOUZHOVG6CHlRhyDeO+rmX8esfnVbOGpPaw0nVC6FYUSMoUnK273rO+luxFbgO72eUUwt
	Nbaq/MJa97/f9CTAJ8OTgLXS4If/pL4v0dtHABXkJFo+ImGyrsuNPY4gSLBjfT/Pq0rSH8VmfmS+n
	k7aguLIRkNMEQzaTbazTvxzPZPthaGa2iK6umCNRzZfcqywKFttRbYR8h3Y0eXKB3EaZUWtHtpNb5
	IcCIkXjVAGgKUc2fuNvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFfW-004OMc-IF; Tue, 11 Oct 2022 13:51:38 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFfT-004OKI-Qe
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:51:37 +0000
Received: by mail-lf1-x133.google.com with SMTP id m19so19834292lfq.9
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o7V++WRSPzaIDtGPEYYIIiLOO8ku68lRU6L7fLLgI3Q=;
        b=Sea8heNcir0vp/8tNk/nbJMEcljg/b+OQ4OrKIO9cgl39teEP2kb1+RAz/zlL6XlBg
         yVJYQJJv7wixN4//iWeHIS3sfH7V17twJU32hAZKOXAOZ8lFw/GuiOud8Jh/gRkWYH8U
         ix5GPIGkdPYflocYiLcDn9NvqEK0IvEIBwJ2QlCDQGuKezyn6U2xOAIDS2uhZSof9wii
         M5iI5N24h9SXbpk37JtIrRJT1T3VMTs/ljewXxDWzy/U5aTnbWksLqoQNdk4G+FcQVqH
         LXAyXLS67zNhWp82cPngvQShSVjlDWDgBwfW/jRS6ljlsXtpNTnVUpoFRbDw7qO/R1tE
         RhwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o7V++WRSPzaIDtGPEYYIIiLOO8ku68lRU6L7fLLgI3Q=;
        b=nXtOSO/KTk4+97S9B4ApbeSIGbo08iDjQJHFbpYWtK4QdT3RI6/p17PYbheeBEwyBq
         WusmReg+7mQrEbIKqYNb/+nhMIp5fQASpPSg4y3P641APL3QENN+1jJwucE0kIsADFoN
         ugRqiVeGbE5LA5FebVbwmCOMFUl/yTjFDrkIVlnjAd6aEl/JzDN9YgqlakBHew4o8TNx
         rtaLImyBqsk+ny0kz3YvfJ+LuDOO1Uo/b9RibG9ivsDSZYt8u/qo4lgRM7Iu1ogt4s6L
         4ADCS1aO3k/WLuA3Gw//IzxAumLx/0AD1z5sdu8Wy8cJSuyjoq5y7WC3GjjksoVQ3Ir1
         CB0Q==
X-Gm-Message-State: ACrzQf0d1sVDSkyjZTAMnifMDm9JKHT18n2ouY+7JDUunKpOiabZhiOX
	wtW+nK+EAD92TnAj9fUqoFCaLw==
X-Google-Smtp-Source: AMsMyM5+Em2WuyFeI+AHDoe3/21E5mF1yAld+l6gsPiQ+mJCtYUt2LN74Yv02SdFHeaJYgXN8CPMIw==
X-Received: by 2002:a05:6512:3989:b0:4a2:7d73:495a with SMTP id j9-20020a056512398900b004a27d73495amr8616989lfu.492.1665496292251;
        Tue, 11 Oct 2022 06:51:32 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z2-20020a05651c022200b0026dde66326dsm2097544ljn.109.2022.10.11.06.51.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:51:31 -0700 (PDT)
Message-ID: <d6a6c8f9-9404-62c6-e7c9-77c21084c2fb@linaro.org>
Date: Tue, 11 Oct 2022 16:51:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 03/13] phy: qcom-qmp-combo: drop unused in-layout
 configuration
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_065135_890869_1246150E 
X-CRM114-Status: UNSURE (   8.96  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/10/2022 16:14, Johan Hovold wrote:
> The QMP combo PHY driver does not use the "in-layout" configuration
> macro to configure registers that are typically accessed using
> "regs_layout" arrays (e.g. QPHY_START_CTRL) so drop this unused
> feature.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 ++++++-----------------
>   1 file changed, 14 insertions(+), 40 deletions(-)
> 
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
