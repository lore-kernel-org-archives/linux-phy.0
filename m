Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72BD1C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FndhmA1oJswyOoYghpRc0BKpM7woa4hH3KzrhfMp7o=; b=inr2WItjlNBO7n
	POSCg9HM/UTkM3gedw+5e/8Q6vQWsCEUUg/u7dayNfvPY7uB1OBQZAtdDBrk6D5VLVwj7/DguSpdj
	/pZY0bt8/jq+ajntPBfL/Ex2XTz03Xaj7uSa5mjGqc8dv341AleyLMFKkMzoADAGialnqSF79rOQL
	5/akWiDkY0gDGh/3LF4YM32W4HQkCzyffXNHe1+CR3XdhjhPctFUF5JCcYY7rXv6acko5p1qy3laR
	UPXaGfKiIWMXsKzY0ZOEeyBYgKMhUpQ7ZwHywVhksvN1i5U9sdHISfA4STQhwkTzm767pdBJUO7qI
	EDViPYOkblH45r6ON73A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZ7-001iop-Nt; Mon, 24 Oct 2022 13:32:29 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZ5-001inw-7n
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:32:28 +0000
Received: by mail-lj1-x22b.google.com with SMTP id z24so2797052ljn.4
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yXDMfbSvdfRJmnrB7Bcegq0YwNab1P2a/cSzHqB7sk4=;
        b=Ev+R/iByfTSfP39Rd2yDi4ivGXPJP5rkZVEBuevoWI0BvgeqNL+TSY6mhXtGIKwAhs
         ngHWlJBs81jFtaPLSADx2fpR2B4ks+F6s9CVTD9Z1N1O7+QS6857TmtElBy/GHDS+8ZK
         dlXdeTldpBr9U5hITtsE+ZKC1GFjSruwzYXeuo3XTQvOMvszIrmwL5H1y9KzEFwNMfWJ
         Hy0EEuVWDpdO/svJ34mDSlm050tJrCzO8ALcErUMTRuBDgXI6lU82FxOw0TVX/p6LXTr
         gYoG9fzwdT7v5ln2medVBSwR1ESi4a6LhTqJ0rh33pvq8KKUfMzcp01ERiQLVu4Ns2bJ
         zlMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yXDMfbSvdfRJmnrB7Bcegq0YwNab1P2a/cSzHqB7sk4=;
        b=VJrrWqFwr8HuZNolFB0bIBVe6LiSLYxGoDJyu9oTS3xgEeVy7fI7/cramBTUv4qRYF
         7VX/SMNX0r1Q4vzfbQ3gSvbDwlukQVaaToQtSVeBzko+aTkyW9MrlV6yHmCHWAGLHt93
         7gDy1K4RPP/XvamhTNzU63o3DEmNXVhFf9wnioGJ6rFqOdVGzJ4251S/PipgYDaYOkij
         VUaCXFqLN9Us9LSrOOrAgQFBd9W4g2BzICDxT+QXgwUW2Dlp9iFBwyYvwnFLPEUPd3O/
         dRsiXVOv2wObInmhKVwYHL6V+oOkhr9Errlor3BSJXUWfu2bepCVwRFkaRY4h7yrq8IK
         ap/Q==
X-Gm-Message-State: ACrzQf3WFVaa4LwCMqtRamnCF/2N9CKgS136C5huD6upBcRkkVKh9RC1
	aYjV2/lj8sxYL28oug0xq2TBzr5ggeykygZB
X-Google-Smtp-Source: AMsMyM4PJ88PVCPjMKghg+zRn3JJ16K/+Z7xJXEWO8J3+ykBBXlXRim6GW7JveGLx2JhXB2MEZMuAg==
X-Received: by 2002:a05:651c:242:b0:26d:fb4b:9c8 with SMTP id x2-20020a05651c024200b0026dfb4b09c8mr12278995ljn.353.1666618345667;
        Mon, 24 Oct 2022 06:32:25 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o17-20020a056512231100b0049f5c71f1c4sm4518301lfu.198.2022.10.24.06.32.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:32:25 -0700 (PDT)
Message-ID: <966b0ca2-c474-9009-04ed-5c57a68dc2b5@linaro.org>
Date: Mon, 24 Oct 2022 16:32:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 10/10] phy: qcom-qmp-ufs: add support for updated sc8280xp
 binding
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063227_311503_58C82EB7 
X-CRM114-Status: GOOD (  11.97  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> Add support for the new SC8280XP binding.
> 
> Note that the binding does not try to describe every register subregion
> and instead the driver holds the corresponding offsets.
> 
> Also note that the driver will continue to accept the old binding, at
> least for the time being.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 90 ++++++++++++++++++++++---
>   1 file changed, 80 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
