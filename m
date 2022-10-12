Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD09C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OjEBrHCnOv2RZQAU+Rr44gT0EfRsOakWJ5BVIEPXAk=; b=PTmIsCA7u0+xaE
	Tr5zFxDCNcfP96ZzbeeoXrUEQ15NsgmjgOp7CMbzc4rxBOMUyUv9xY8lwuGP9D8+Ekifu9Pkpdb3U
	JgoHiGXNZgcGhQU0SUGnj0VAAfbn6OA9UtTPKCCpZV1fnbdFHbryWEp1v2cxDY9QCvrOLJW4e4Uzr
	mUZhWqCgLDdFPcsapQzoIQKxN8hivw3g5Cy9ITBdcWd9hFDCI1a2dZyb86Z17ZpNDijPrkFW1u+Dc
	PPhQm3v3PrV3kl52fk9BjK8DSGA615cxQrQcvjbcH+cYpMrZ89zycmcCy1dwwmwsrb3C1U3EmdBux
	lFDuJjTwxSo5eJjD8sLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij3r-009Mte-OG; Wed, 12 Oct 2022 21:14:43 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij3o-009Mt6-So
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:14:42 +0000
Received: by mail-lj1-x22a.google.com with SMTP id b18so7028ljr.13
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nZyBNqSnvYMphKf3R14IEtoGMj+mpBrmqZfyga1bqsw=;
        b=VhMak40WlTljj0imeT8iGYU7G7/1WjAWnDS/DMVdrvBjsXX31m9R84HCdbfC1wrU48
         ELeeYCTf/YSdM4Di7aHLVj0oqD1Z7rIkGSDSC2Xd5q9A1yBuPhmIfanxNNGa87G5l5f3
         YEHxo9IAnA7MwOQrTnInMxGEnmNsAX9SWPA+lnKZyEVL47+YgHZ2awAwK0aEx3hDCPg4
         6P18UQVpr0Kbx1CF03mAe64Fp0+BEZqfbKy1NWQ6jQRl9PIg0v7AyzoLiL6uZNPpTLJl
         fNaSh2alT4mfh241jqGOaqc3dgB81AEr4VEA5zF2obCuCafi0sWSSDIYzPrhwsZoC8oJ
         xRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nZyBNqSnvYMphKf3R14IEtoGMj+mpBrmqZfyga1bqsw=;
        b=2rQvmw+YIPUgdBMglpW8oU4XDGP9NHLx1WxFdPx2BdjRaU0bd49E8oyRM4Z2NYmvbi
         jqg2EVaKwnEtiGErjJOoeGA4yGLCyxly8jOxr54U9b+lnS3K5syp5vbJEJmHpW3fqsJX
         myA4RevF59n37wf4AGto3ScnJwm/5KZ10ue9qYnVoLZDtL5fcpNHM2UtjpzO9LBioydi
         oE6ZD2NORJTdPg1bbSialneRUbhhcl7H2/Une5sU5TDW6A1lc1VUE+Y7+zFWivk9vsru
         itvBBTDu5vkWjy9abmNEWhNQU5p9tLpwCR+/WZ0WBFxuFBUW/QdmmPS+/DUNGsXEqvNp
         lwkg==
X-Gm-Message-State: ACrzQf3GCnQ5kUKwZ7l7IDasGqDbWekPJD8gb2vQhoUk8+8k9GBdoEwk
	zfPSRkRI/iJDVbcciQt3m0nTbQ==
X-Google-Smtp-Source: AMsMyM7W9fcKv5hoMaeiG57NqvIo+vlchll+kekxhky2K8C66dGlelY28KhA7csxWFX1UvFQaTn0Zw==
X-Received: by 2002:a05:651c:1950:b0:26f:a406:6f6d with SMTP id bs16-20020a05651c195000b0026fa4066f6dmr7354742ljb.240.1665609279521;
        Wed, 12 Oct 2022 14:14:39 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f15-20020a05651c02cf00b0026ab2a04055sm112848ljo.130.2022.10.12.14.14.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:14:39 -0700 (PDT)
Message-ID: <e1d03a86-4369-763e-2559-68ff044cbad1@linaro.org>
Date: Thu, 13 Oct 2022 00:14:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 10/20] phy: qcom-qmp-ufs: drop unused phy-status config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_141440_956067_AE6C198A 
X-CRM114-Status: UNSURE (   6.75  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> Drop the unused phy-status configuration mask which has never been used
> for UFS PHYs.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 9 ---------
>   1 file changed, 9 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
