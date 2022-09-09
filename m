Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49CA8ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwYEi6wMz5nqdzxlzrX72WRlaJjr9oCOAUDDnPky+p8=; b=OQzXmVpiHuLWO7
	CZ3l5pVkC5cUTGqEEFMf94wjUfel+YtcsrsZNIOtEeIIaulKH5tXlwkhw2VXkfplaGmmU8qWbdiSL
	SLjdnRxDFR6WWAFVmDaJbW9YhUUM6YqzDiP3vOOPdfbkt7w76KmNR/C6jfulU6FKO3LDymfKIohVK
	JmzN6a6+RTLY5mHdTJBBOQd3A0c6lUpSycT+0K9c5jUKkT4AjcWn3JOHBpffQusBEpNGictJ0b7Og
	wTGLKa8kNvcHGHeUXSagFGK/oDJZvWW9UPBGvfLfuZFNKF08LZaOXCKr1q7RZUqg8ci0bOlXZnPPU
	8m85eLc3QVU6blywsJaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWad5-00F9sU-Q4; Fri, 09 Sep 2022 09:48:55 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWad3-00F9qW-TB
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:48:55 +0000
Received: by mail-lj1-x233.google.com with SMTP id bn9so1166947ljb.6
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=WancZI8YP8VSBJAFL6bEJwq5YWTwAf+vMCt1jVIkDpI=;
        b=c/DmfEX3Jnhh+mQTSH6JbH+SMCc4p+AoYmc3hYG/O7E55Ha0yMLz0LyHjH4BBA9h7P
         YwSD50JRjdW2rpXjQVFTdSHT+OkvV8DUFPjZrmhMsjyzOpbL6H1XGyo5ookN1wEA7C/A
         +iI6tKzRSuLL2mO5re+U9nkTNEq5tWIqmMJOfh06fW/yHtBbXTgLrgauEL4OIb+vt94Z
         C3BheGp56c4OUqj6H2vGytcBKd/QaePsJHYGJllGCgUay3NAANXzJPQGOLsPphaKat39
         utwY+/tHIOdD6F38N1H8k76MOvpNA4cqHJwzvEAnhX5j1wugGQKXoJ6meKM9lbfrjpNc
         qnfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=WancZI8YP8VSBJAFL6bEJwq5YWTwAf+vMCt1jVIkDpI=;
        b=jAuQUFNULqtV+wgMeUldNXlCRAqgq7J9nOCFvcm2X1/hPrBweDCXiOPbn/d/mGbMeY
         vxZsSwjAI5leiHm3+AGsn1Mf6epezpwPNYF1tbp1I2HXQk4wpKmLuTVzuFGD21qsHFCl
         fEFEv+rfZCluE7Di9Z49KenCN+wlXvUvbXrD2wqOguWbnK+AMFltpQYvH4gPsr39JJHq
         5JiLGEVtoaH/2Y+WRg+X5RK5tl4W2nyEPAriKo8jTil11MSRi6pCIow3RqeEAHdjiiB8
         Ev3mWST8u9igNMembukwyWmuJhnT5glNdQZmN/KUrGPQSqfUUShv8mctFzbcnLpdJb/5
         MFdg==
X-Gm-Message-State: ACgBeo3f1gF8l94Vqjk6BesE45GK+5mMn16T17fJDoCR5husYySgSri+
	lix6kM6kH6WQGFB+DHgv1J21YXibynwjoA==
X-Google-Smtp-Source: AA6agR5kHxbAlNJlHm7H2K0r9upPb4NqqNY6jgApbJ1GdX2iE/bsEdx4ndsCr2/DKqvXVTOk656snQ==
X-Received: by 2002:a05:651c:1a1e:b0:25f:e7bd:6a4e with SMTP id by30-20020a05651c1a1e00b0025fe7bd6a4emr3995212ljb.362.1662716929326;
        Fri, 09 Sep 2022 02:48:49 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p21-20020a2eb7d5000000b0026b96b8ecb6sm3814ljo.111.2022.09.09.02.48.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:48:49 -0700 (PDT)
Message-ID: <03814cce-4b48-0570-7638-a84bd84c6f7a@linaro.org>
Date: Fri, 9 Sep 2022 12:48:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 16/16] phy: qcom-qmp-usb: shorten function prefixes
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-17-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-17-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024853_998609_FE641902 
X-CRM114-Status: GOOD (  13.25  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> The driver function prefix has gotten unnecessarily long and hurts
> readability.
> 
> Shorten "qcom_qmp_phy_" to "qmp_" (which likely stands for "Qualcomm
> Multi PHY" or similar anyway).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c |   3 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 121 ++++++++++++------------
>   2 files changed, 60 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index b020409b92e0..4d0eee620f37 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1105,8 +1105,7 @@ static const struct phy_ops qcom_qmp_ufs_ops = {
>   	.owner		= THIS_MODULE,
>   };
>   
> -static
> -int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
> +static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
>   			void __iomem *serdes, const struct qmp_phy_cfg *cfg)

This likely should go to the previous patch.

Otherwise:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


>   {
>   	struct qcom_qmp *qmp = dev_get_drvdata(dev);
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 08e0799e8832..41635c21e3ca 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
