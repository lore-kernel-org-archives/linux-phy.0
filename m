Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 755E6C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 09:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/CJIIBpzg6jlzZ4lQM+0xlSdb9AM07rn8UnnnWF4h0=; b=n7Tghtz+WZSa6w
	ADpeTtd/xaeiMwwVrryQz4FeCuIPClHBvnh7eGkMa55ywsjtPYV6HCtqQibGRtP9CJQlc+kQV3wH7
	r3i7kPuGi2Ynygcl7GR4hHWiNdMprGCrynC7I0ZnGWNqXQKz3AIAL1/QSmBwReXkXxxwWHrZXxEuA
	k/mxghYZ9/xTzqd1AvoxESbW03FbXdrYCw1Xur4CEfrx84qQrGMRfZnTuvwrR9TNdmNLs5J9gJmBk
	AMFj0CTPKLjgBqwWxR1Z54URJUc121Jc9U0HTdarR7y7tMJpB/esetmovQ9l8KVJIjt2pGPUI1eEm
	D0wWcAjZGM5op/6IFrKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhLx-002XFK-Sx; Thu, 02 Jun 2022 09:42:53 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhLm-002X5G-DQ
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 09:42:43 +0000
Received: by mail-ej1-x62f.google.com with SMTP id s12so1643463ejx.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 02:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=B4D6MxMYl+3ZuwgsJ47jzKSrYMEG5KJifOF4pk7vzzs=;
        b=Kn/WQxYdGpIBHBwnnATdh8w0WJZOlGgDTe31LevQPiMQ0mGdIRbJwgF1WH7vCrQker
         PhRyNhKOwevgGUcNyUTSn3ld/1+xInxEigeafe4i1aWSKOe6qQpiC4T70d1s9bLzetWF
         z8VUFlGkLLqAOu1psxUYbJRZItSM9uxeVP+tG8I7y7/icCUgRiC89GkaRaijskd40Hz3
         z/t9myg20lnoFRQGu8i6nficnlFwlRGzOA9meCCwNe2b0oDMwJLpNC+xNeH7ak0vc+cl
         KW789jHd+9AwVenrsPUojg6K2pKgor9yQe3lfIwNxevpurNc+/UuhOlesD5E4nbDSRBr
         ty8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=B4D6MxMYl+3ZuwgsJ47jzKSrYMEG5KJifOF4pk7vzzs=;
        b=SPh1OpRoyWZtwpjhImy1l5f8oZW93QJdiW4icZsIesecQMZTfalrfwLf6LVByPizUP
         dIb0IGslJqHN1Akgplajc4BrbLUhC1+sqtNXt9edeX6R4xtGhdQSud/o2C8xuBsWun3n
         IlNFSFJio10D6vw7P0Esr/rQV2qQEaiU7/z2ngMj1z/Jg/n0Oop5xZaJDptNGHT01b7z
         YORIGCsIBAoOwN16UNgBoDEnmI7HlCofCZXja2Q29Eb1OQ1mIRGPOM/EOktf9IG5xLI2
         z17p7aK8ecSjOVojP0sh3fv6EbySxrqw3rdHbx+q77axF3R+cuQOPHgLBtqcNHRP1OoE
         sZJw==
X-Gm-Message-State: AOAM533BMGvVhkrr3SHpYnI9NoQN8LmPkehXwK+nJAVic24C8ZTMR3Ud
	+Oi0UP9ou4ltcOxGsHqY7r9d8Q==
X-Google-Smtp-Source: ABdhPJy7dT8Qq2QIyw/y3OMrkj4C4MmBmxL2I2IIZGdOhk/uv9/5ZFg6bo829RedD1Cxim2PYPfZIw==
X-Received: by 2002:a17:906:478b:b0:6f8:5850:4da9 with SMTP id cw11-20020a170906478b00b006f858504da9mr3383156ejc.619.1654162959186;
        Thu, 02 Jun 2022 02:42:39 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id re16-20020a170906d8d000b007081282cbd8sm1331183ejb.76.2022.06.02.02.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 02:42:38 -0700 (PDT)
Message-ID: <58e06727-a9ae-7466-6bc3-feee92bd9bf1@linaro.org>
Date: Thu, 2 Jun 2022 11:42:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 2/6] phy: samsung: ufs: constify samsung_ufs_phy_cfg
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p238f5019ff98e4d9fcf5fea0001a773a9@epcas2p2.samsung.com>
 <20220602053250.62593-3-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602053250.62593-3-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_024242_542066_A951025A 
X-CRM114-Status: GOOD (  14.33  )
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

On 02/06/2022 07:32, Chanho Park wrote:
> Put const qualifier of samsung_ufs_phy_cfg pointer because they will
> not be changed from drvdata.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  drivers/phy/samsung/phy-samsung-ufs.c | 4 ++--
>  drivers/phy/samsung/phy-samsung-ufs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
> index 602ddef259eb..b7ddb91a02be 100644
> --- a/drivers/phy/samsung/phy-samsung-ufs.c
> +++ b/drivers/phy/samsung/phy-samsung-ufs.c
> @@ -75,7 +75,7 @@ static int samsung_ufs_phy_wait_for_lock_acq(struct phy *phy)
>  static int samsung_ufs_phy_calibrate(struct phy *phy)
>  {
>  	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
> -	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfg;
> +	const struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfg;

This should be rather array of const pointers to const data.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
