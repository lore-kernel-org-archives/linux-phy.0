Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED63C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKaJORKEeaTWxeNLdk3OsMtKhLDcjAUPe2QDbyjYFCM=; b=sIXTZOuJmhYpph
	NpSv5mYGl4UqMpJklJwodDywl5/SQBUM4/QElUUt8fQCUKy7W/1+DEaxS5pTQ7U4o38l86qNVyXGW
	kZGMKnjtqZiuIGw5dYJQFSF51laRPQSJ7cwCn1PwkoeAi1Ft+Rf58UTCXYmF/Af8Npgi1xcDrY17T
	F1NPXwcmXefjTxIEk3OyZYTwugEeWUipv1HOgvUocCLyYmMDN8iW6v9S34EHaxDQPgNpgmWowtfTw
	5E+aqGiXljRW6UKuxWZPVLrkpjxJZYlXtLzd8yYuFCg/MWxN/BkQPXMCvWk+E5DxsguswWmo74tcn
	l3Su+5bdjIggIfLI3VPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoyL-005NLv-Qq; Sat, 12 Nov 2022 11:46:53 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otovF-005N7V-It
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:43:42 +0000
Received: by mail-lj1-x230.google.com with SMTP id t10so7286071ljj.0
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eD380Euz1OwWXwV/1GZN8saR9RgPwtKZ28UMySQa2Mk=;
        b=gZf9k1QJDk/THIFTwgZxD6eyimwV7m0KPGKZJmKycGgkZdOY2v9hu1Wr94hFktFywm
         xjCCEfADJbGH7CcyAEEO92DQl5wc9MKFEBofj0aF3K3hY2LIiI4dkgow2ws5Qy8aQERG
         d48Pu1UFXHhPjtbBgbLpF66VqBPYRV757f89GeP7nbOSTDvH+J8cc5oVcptTpnZH/tu/
         D2fE2eAmGzVaTMLwAJwUR9agMHYL1QduxnhEwkfnxaIlcgCqDnezCVh+k/UlurITzfme
         GEpJWJ6pQ2nvT5LNQx74I1rGbJF6iJcOWo4rM28VwoJupDLYp4rNnab9Wt5Jq/8jc69i
         FPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eD380Euz1OwWXwV/1GZN8saR9RgPwtKZ28UMySQa2Mk=;
        b=N0yvJR/YtqpJjLpI8T2TgOawVKXSgcVL76Jx14ZUBZ0pXtCRKpqfzo+9XACCp6i8l5
         9KBgjMCSrwp4qm/kInpXG757vDm0/8U4gbGP/kweZSCf9sdUJSwA7QIoandDSf/QRTCG
         4GEvfahfKQDaNoJviB8uUQUuYPDwxZn2vaz4cm6eRrcGhv6W3cwKqBLX4KXHWZO/4BkN
         /6BRIwQ7ATkR+51rWrJkv+MfwUt44qTBljSau3RFvzkDZE6G5M3qtauHolhvhYbchwiL
         EiLwnMroAY0Y/4F5rRRMXaczfFFYK1hz1I2E1hsWUXF2Ti0Ccg675VC8KsG9icMG9nxg
         kjDQ==
X-Gm-Message-State: ANoB5pnTy9GO5LTZVESQ+kWRKeNm+6xbjQdnSZBlHbI1+6HObJVZCqPP
	D2J6jJPDBgk9kn/yWS9MvOVMmg==
X-Google-Smtp-Source: AA0mqf7c0VjEh5RXmezmzILU3Lrn76idN3LFYmk0/+FNKQeyP5Lm2ylYYVVsZ/r2NR1e3qaPAL4qaA==
X-Received: by 2002:a2e:a553:0:b0:26f:c2c8:682d with SMTP id e19-20020a2ea553000000b0026fc2c8682dmr1719037ljn.16.1668253419137;
        Sat, 12 Nov 2022 03:43:39 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 10-20020ac25f0a000000b004a287c50c13sm834743lfq.185.2022.11.12.03.43.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:43:38 -0800 (PST)
Message-ID: <14f01c33-dada-b66a-f81a-74b9028de18b@linaro.org>
Date: Sat, 12 Nov 2022 14:43:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 03/14] phy: qcom-qmp-combo: drop v4 reference-clock source
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_034341_669915_94AFF14F 
X-CRM114-Status: GOOD (  20.09  )
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
> The source clock for the reference clock should not be described by the
> devicetree and instead this relationship should be modelled in the clock
> driver.

Do we have a fix for the gcc driver?

> 
> Drop the management of the source clock from the driver for SC8180X and
> SC8280XP. Note that support for the former is not yet in mainline.
> 
> Also note that the binding has never been updated to describe the v4
> clocks for SC8180X.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 51a03ac05c91..e6c7cf723b19 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -947,7 +947,7 @@ static const char * const qmp_v3_phy_clk_l[] = {
>   };
>   
>   static const char * const qmp_v4_phy_clk_l[] = {
> -	"aux", "ref_clk_src", "ref", "com_aux",
> +	"aux", "ref", "com_aux",
>   };
>   
>   /* the primary usb3 phy on sm8250 doesn't have a ref clock */

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
