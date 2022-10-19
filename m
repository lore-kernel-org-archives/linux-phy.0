Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1216BC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY4Q3b2KUp//jq7T9Me9dw+oL19RT1jwqG9nPpqCahA=; b=l0nsoDnxIMCNa2
	WKTt7I/O47w5YoPPzsPlRx7lajVoiWWczoKHKwWq6tXbJoH9KAo6UcdwkInXpvrot+fz1Lu0qCnPr
	XGqwMxYh6p3c0X29nG52Lkv7jedbNfl507lQ1nOUcjJzH4zIiQ9igsvaedFZ6TFCJwfg61O845ahE
	wTW8YlIL8dO9uIriThlDO/YtbdWQHbGXsfuVEfIhLVG6h0JpfDs/beJdP7GfmX2dMbc7Wj8KAn6VI
	lzyl12Z6MgQl9McJNOiJ76UHiZgWDDbRV4+9aSuigI5dk2JNmYhaONWwzNZtRVX/p9U5Ju6frY4RB
	bHa36whpSYufw5K9OmTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8lS-001vsz-Ge; Wed, 19 Oct 2022 13:05:42 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8lQ-001vo2-28
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:05:41 +0000
Received: by mail-lf1-x12d.google.com with SMTP id p8so1807170lfu.11
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5UnIKdS/ogwwde9hLUwkHWUhiP5dC2TYUzEPI9H3VXY=;
        b=MmT1SYTDdT1XQmRyk+pUP/6sTlU5r5MH5UcNupoZdUOqE7yg8UdieoecejuV20/p7p
         VQIh6n4hg9EGQRFMIxCR3qvjtSeLsbttkSZ7gPGX+3+ERpzF5dFBCWvS9zDKv730/fTV
         6XGzJIAu7nOC3GgmBIqpH94cSghtmJUtmNB08dKCJi/QeAwM7e4qqbd4CtGQjyPsY0qA
         kCDtrwitAE2/ayba8KlBCyxQ++T2+VgqowyEKvg0wRirTRUj4q9NRPPWgXca1Dy/v0li
         8H4xRP7LLk40DzERSXYLqe2Muv1b7TQWdxdThHssIQrTHnvN/VLSBQz5jV1bv1sahXgI
         /PNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5UnIKdS/ogwwde9hLUwkHWUhiP5dC2TYUzEPI9H3VXY=;
        b=H72TyzkhM5LW536pUf7lbvcwOa3K7vaHPTqcADCP5FKvTmfYXJ0DHO+Tbatm0RfpqU
         vvZdhZG7plSQw0K0x5zroTpSq638y0usy4IUMbA04HrNuGlbiZb5fwmbsqquaF1oqHlk
         CrHLnKv2mz/3SywGt9y2NCaRlPo6tdSOHtYBJoVy70Yt+mstZH81DkPE5TLkPlyKIHYI
         SyCBZ6HHloJpufrOZqDPd6KHbkdZIXOkWNLVIxDjr+gFcszTHUWbAE123AyQwJw+zdws
         WuHdmNb8RzUJ52PFcn1UqiFkCuYHEb1nlgqfEmkj4TUWYfZ2GTcOTD/8AFspdN7GeKaw
         eRtA==
X-Gm-Message-State: ACrzQf0unQD3OSvo8fzRBWxIsmVekzTmMP+dbYvrYIzpgo1/zRqVzq1F
	aXF9HMS/oZBdo0RAfvaxBhMb27zWm+ZFLw==
X-Google-Smtp-Source: AMsMyM7nB9iWbVD0xqwF57VOzWjTruUqUVGa9pMdYMYF7NUjUNJW8H1LBlZsJ59iaS0NAtu9Zp7S8A==
X-Received: by 2002:a05:6512:150e:b0:492:d9fd:9bdf with SMTP id bq14-20020a056512150e00b00492d9fd9bdfmr2686029lfb.583.1666184738585;
        Wed, 19 Oct 2022 06:05:38 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id e6-20020a05651236c600b00492e5d31201sm2298249lfs.7.2022.10.19.06.05.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:05:38 -0700 (PDT)
Message-ID: <42ac56bf-ad46-1e49-1e65-fb406d8836a8@linaro.org>
Date: Wed, 19 Oct 2022 16:05:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 05/15] phy: qcom-qmp-pcie: clean up probe
 initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_060540_128048_878CB28D 
X-CRM114-Status: UNSURE (   9.93  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
> Stop abusing the driver data pointer and instead pass the driver state
> structure directly to the initialisation helpers during probe.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 49 +++++++++++-------------
>   1 file changed, 23 insertions(+), 26 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
