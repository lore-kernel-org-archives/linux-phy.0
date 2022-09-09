Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CD85ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uT807Ge2yEWdOIAS5oeUVQKlsihI3iskYCAdaG0Xkk8=; b=SN14rjY9wVR/Br
	hqXwHmLOw96+yftsARKKLvAoH8lQRzcbaPWKEV6Uhlk3EWNzWvaaa1MhIADiz2hw4afQ8iJBCU52b
	d/ejSqtUuK3RDueYGTLIwu/qjdxkEllEhbQz3lg0CWkRI7OqXkSUCAotdesHRKscjRVT/3n21klq5
	Hv8mbxlNl+CoqgT1UwRzO4iyPbDmOZ6oMJGP0h2LL0ptp2cR/sxxZYEnspnBYE6HJLQVQIfkYh9uK
	b1x/trC8tBd8m+cHkmS5+61GMA471evDG8yTAYDSSGqDSq6yuVHrm7z8ciGuNpvhwJ+z9xmFYg8KY
	1qCbZMfxrFvW17fvnCoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa8E-00EzDF-LA; Fri, 09 Sep 2022 09:17:02 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWa8A-00Ez4k-2p
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:17:00 +0000
Received: by mail-lj1-x22e.google.com with SMTP id z20so1099131ljq.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HwSPkOLsB3PaeJ/979fVd6W4oSX7MjdZh6/4vBoMvj8=;
        b=fLLK6hOWnY1NKt2/9ajJcBXVBawXcP/rjqy5sIzCV2fC6BSP2GyZMCrq/Oe2XtVHHc
         0UdYW+rQP1P51uENHMtg4PZ45PX+IlMOYfA9fn2iRzihWA1IyM0UxzL3xT7TZsikSicy
         RVAz8bl5sLqfVAHDPBGjvlsyo61vlc+3OOHFW+UTEaLIzbr8md3sxfF3hRIZWe1cKYg9
         85mdXqUmtYGjcNBYCt4gW4MfB8J3awgA2aY1Oz0EWC/Awy40MCebQDkPhLypHjCOc/LN
         lVKIaazrD26h2zV4qxX7aL/CXHhME8xJOekIwykOKFW2Gj5OKG7b9Xscwv8MLskBvm4O
         AWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HwSPkOLsB3PaeJ/979fVd6W4oSX7MjdZh6/4vBoMvj8=;
        b=ZcAMRnZJA0L8l+0pPUxLHwYsYZSVLoEhEs26SpsatM6ZAjqNcMMoQ/EXifvJI7YOqE
         B2d6s56TyqsCLhtFdADoVzzGb3Jf8pn7CqqWrqjNMPjrFzmZlibAbsTeQRKs/D7FOjyA
         x8MoxmL9R2+q5mtqFBPJo6B8y5bQJj23T7mhQuarC6I83RUv9ef4ovxqg/KtEJfHgr3S
         NVP7JEiqnNKrhn3GFP8UpDPWzkd0LXMdaPN19zhkG/igHvcP83a3oyscCZtoiPXSUUSd
         RFKShStqJjEnEZquGIzApuMIYULY3JwCavz8I8F/SUZrIfLI5uzYQWTUF2y7oKtwZ7WX
         xwFQ==
X-Gm-Message-State: ACgBeo033IJhLD8fFwMmqNQNJ7NiMWY62L53yXUsZJqZq/D3+TFGbVuM
	cH5wDqyEI7V5aQaSMT4sdW7rbQ==
X-Google-Smtp-Source: AA6agR5tI6dxeZKZCdHy9EBG+L1v4GYsDaaX6M/D1VJQjaAot1Jq+s3AYRya/65TCVY4znvdNajeOQ==
X-Received: by 2002:a2e:804a:0:b0:26b:66d3:4d51 with SMTP id p10-20020a2e804a000000b0026b66d34d51mr2396991ljg.293.1662715014841;
        Fri, 09 Sep 2022 02:16:54 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v9-20020a05651203a900b0049476261c30sm3305lfp.113.2022.09.09.02.16.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:16:54 -0700 (PDT)
Message-ID: <47066467-bab6-2f68-2924-cc93cf0c803f@linaro.org>
Date: Fri, 9 Sep 2022 12:16:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 2/3] phy: qcom-qmp-pcie: shorten function prefixes
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220906074550.4383-1-johan+linaro@kernel.org>
 <20220906074550.4383-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220906074550.4383-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_021658_164666_E50AD4E8 
X-CRM114-Status: UNSURE (   8.59  )
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

On 06/09/2022 10:45, Johan Hovold wrote:
> The driver function prefix has gotten unnecessarily long and hurts
> readability.
> 
> Shorten "qcom_qmp_phy_" to "qmp_" (which likely stands for "Qualcomm
> Multi PHY" or similar anyway).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 137 +++++++++++------------
>   1 file changed, 63 insertions(+), 74 deletions(-)
> -- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
