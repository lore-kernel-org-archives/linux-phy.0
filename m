Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC942ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 14:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4N4rUCsfDYgbI84fwFum+xZo5XclJ59yFE7NGmj1gaU=; b=MPCIqOIyOdcAyM
	hqs8t/cx+2z9oS0ozJsGNfmbcpjrApsD+6K2LEe+MihQVo81IXDTbF8mWSMlhlNfOtoEG3dJVmwUa
	SsOsbAXfK/I1LSJ+x5WrCvTOy7j5umUhp8SJH1geL2Uw8RWovzwXrk/tWqdOE0AN7H7/ntwq6wnXo
	2ZPcIbwWb1BrJgffepguEUc6lQAoSwvlrEOBF7IRTE25GKKtBdYGpHn2x6JNTnRbf6bz2CVlq/mWh
	sKw8w0LFVZQiFOu5HvtiZBb5zerlCU/KGyGaV81l4LFcKMDA5vbYkQquUw5fvEiIVxWafgD/pY91T
	onT+kqOxafldws5ekWMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQAX-00Hajk-5M; Fri, 28 Oct 2022 14:17:09 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQAU-00Hagy-63
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 14:17:07 +0000
Received: by mail-lf1-x12d.google.com with SMTP id j16so8486913lfe.12
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 07:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4J/sXyEdqyItftLKRWQlfAWzGrOTW4HnYFqWzMysIi4=;
        b=ZAL5xdvHt5LTVV98rbvm/6GVG7tPk50osYKnbq4cW9aBUDbMM2ZBuNrVDrWu7vhQ9X
         Hpi/T/OQSeA6kJS/sR8eKQ/26fNqKlY9PsD9t/MP4qO7o65/8PASdP1AB7nplZ4gOzJz
         Z/lHLC6TEFHlKSg4xatMU/FHWFNk6e0B1P+MDqI5lFnLQYpUi5jAmEBxFVRfYljaZCl9
         0GeMkc+8n5rqae9qCYwYfyQY2O3TnZqG99bJRyA6RnqLrtma8W+77TjHgvlTjBLoJUmI
         xObLRsuHh88/WnD87ryb8PvUR+Q1WNtMPDKU06znt3oUOLuj4OlQADfr+6L29QuI/tDT
         rf8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4J/sXyEdqyItftLKRWQlfAWzGrOTW4HnYFqWzMysIi4=;
        b=wvyEzQY67eO7LlJI6cbliFliorMsY17nuXhRA0ZmyNgbXbTsPEof0J9o0JwLpH+eb1
         Nyz7ilkoCrHDzTMx3StOsCtKbm/HAo0y0q4qV+TkhXLMtLOE7Mn1f6bxSMmUzvTUAFFm
         E4jBbWFRk0gCPu91OkYmakGGYnoMVuVrEsu74GJys/XA3X5jSxB7usdgIlSxbZbaefrV
         SvgiSAR/4r257rIkZbPkxmGoAY+RLho5wPasT5SRJrTgaFwBsLmJsbQXmUUZCyF1/UlS
         Lo3H5S8yYnptQ+wEvgOy9bGUuTEud4yIeUjKFpqetRTfVlcBIBSEGhHfBvFAyvi4JigK
         kl1Q==
X-Gm-Message-State: ACrzQf1MFV3yQEsDKd+ccDPfmFQSKUstN3OCfPJLBLMbK9bjAg+ZRAW9
	/9ir7VY3HDXNKnzDRk1Kqe02cg==
X-Google-Smtp-Source: AMsMyM6eQiKVik2y9rlF5HrxniO/C+2f15b/1ffW5U9Uj2hWXG+lSG3PQEG8rBodPyFRQNcgbaf6sw==
X-Received: by 2002:a05:6512:ac8:b0:4a2:61e7:7963 with SMTP id n8-20020a0565120ac800b004a261e77963mr19939264lfu.363.1666966623425;
        Fri, 28 Oct 2022 07:17:03 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v22-20020a05651203b600b00497a1f92a72sm578570lfp.221.2022.10.28.07.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 07:17:03 -0700 (PDT)
Message-ID: <f8c0e2c1-945e-9bcb-30ae-05bdc43269ee@linaro.org>
Date: Fri, 28 Oct 2022 17:17:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v4 15/16] phy: qcom-qmp-pcie: add support for sc8280xp
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-16-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221028133603.18470-16-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_071706_259871_1A1928F5 
X-CRM114-Status: GOOD (  11.25  )
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

On 28/10/2022 16:36, Johan Hovold wrote:
> Add support for the single and dual-lane PHYs found on SC8280XP.
> 
> Note that the SC8280XP binding does not try to describe every register
> subregion and instead the driver holds the corresponding offsets.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 299 +++++++++++++++++-
>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |   2 +
>   2 files changed, 291 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
