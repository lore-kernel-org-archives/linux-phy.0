Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B6A9C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 05:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ey7C6rkPgjentSkvflxM349zzwJ5ciJBWIM0ChlcdBo=; b=fXHAfx6qxvnF09
	k9XR9OhMD2YX/ZXndl0ycgqCkZW1Ctaosti37h+FZs22hTC1R+nkQMY5QEM+kybm5EBZh/w1AKS7i
	+Qv+SD4Vy47G42GkBnegMMppVVZo1sw9W17rf1a3UYvtbIzyDc0mlO1ZvQWj6xJiKql2Vf9x/XXRg
	2x4uEx9dlkohWaHl5+WSG/W+VI1j1L9Tb4z2bp4AO0DAcJzcDAlMkkBKgxRtYJ5omyrmtmThCZ16N
	73AoTMv1Obz5Zqm+fnxyn1UUu0yPvAMXG9YDFCK1aXQvrHor5+PooR3ClecqraRaISBO1LGLuF2Uz
	5rq8lL9uFYmuN1le1BBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mupIL-00BJUl-HS; Wed, 08 Dec 2021 05:15:09 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mupIH-00BJTF-Vl
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 05:15:07 +0000
Received: by mail-oo1-xc36.google.com with SMTP id
 v30-20020a4a315e000000b002c52d555875so442529oog.12
 for <linux-phy@lists.infradead.org>; Tue, 07 Dec 2021 21:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dfMISllvOyWeVC+M/Lt3oKRlwVYRNEKwNNcO13cHMrM=;
 b=w7gbnGzi2TRt1kl7Ye3Z2EYtK7pcvLy3h8DtGE8yu71lLVdrLfLjnLhs/ofVGC+wQL
 aDFSUtexED6u1bVPnz7CGBIKKivW/u6/EftnTLM3i7mJ+DD0ioOaN878DbmMICsMcPbc
 MkrTq6tpeW+Amee4Kyzlxe767YdqHvGBQ/m1RsOjfmvD6mtyN9FSoXM+T/lB279emjKg
 cmWvPCc2/6dN2JbeRPzeNHFYeG/eGbVp2RObbNHxRTfUriUSYIuIg3p636d3YtzWe2Pq
 k6Tn5JSy8N3Gg81/7SncEQj+p+tgAF/ob/2rRwdAsR5unY1ltFqgzSyQpST/4s4o8g78
 u1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dfMISllvOyWeVC+M/Lt3oKRlwVYRNEKwNNcO13cHMrM=;
 b=5JhpW8JB3ovMzcBPyFnIQbmlefA9jGMbMZuDr7yt5c4KR1FdBrcpfFWlJSaPa2qmGr
 tM1bsAN9WRGElqAdLdx4o767PHzpdKj7F94iebyeI0mp9+vWXyYmZzKJMPwSlDjpT0OY
 snYmg2DKtoHnOUt2ou6Z/4krzemjk6RFQlrsjarMBNnw2lt45FxkuGALH2TRw1lOCCMP
 mI710pyHHAE6VkoqIy0qSeEKCyFLeyviAY3ZdeTFZa0vuXIHKlbElI91QOj8mAIwqxt7
 Zril7Uf6oKugcVkhK4DvLeY1p+4H/1eeBIhq43+Y/hlufJUbdp0HsoMAJ1ob4fwy0o4l
 ytXg==
X-Gm-Message-State: AOAM532+PbaI9S3ZC6EA1/7fYZ8O9E1q+ebnoJxvmpYw213/UCIGL+2y
 X4RUEydvV+uK6xeNsGYB6K4JGA==
X-Google-Smtp-Source: ABdhPJyWLHJDdtX55Elxz47dPEkRUd9l59nFSHL4yGwZIVmqFg4uYvT1tdiVUtNZ8gwkJ4vASweeIQ==
X-Received: by 2002:a4a:300f:: with SMTP id q15mr13770211oof.36.1638940503654; 
 Tue, 07 Dec 2021 21:15:03 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id c9sm389389oog.43.2021.12.07.21.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 21:15:03 -0800 (PST)
Date: Tue, 7 Dec 2021 21:16:27 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: davidcomponentone@gmail.com
Cc: agross@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>,
 Yang Guang <yang.guang5@zte.com.cn>
Subject: Re: [PATCH] pyh: qcom: fix the application of sizeof to pointer
Message-ID: <YbA/q+dYoIh5qdbb@ripper>
References: <c74d05d5197fa4fba96c4bd1cd597cd644c694b6.1638924754.git.davidcomponentone@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c74d05d5197fa4fba96c4bd1cd597cd644c694b6.1638924754.git.davidcomponentone@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_211506_131871_D8DF8AD9 
X-CRM114-Status: GOOD (  16.60  )
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

On Tue 07 Dec 17:03 PST 2021, davidcomponentone@gmail.com wrote:

> From: David Yang <davidcomponentone@gmail.com>
> 
> The coccinelle check report:
> ./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
> ERROR: application of sizeof to pointer
> 
> Using the real size to fix it.
> 

Thanks for the fix David.

Please see my answer here
https://lore.kernel.org/all/Ya96KOynsO478cVx@ripper/

Regards,
Bjorn

> Reported-by: Zeal Robot <zealci@zte.com.cn>
> Signed-off-by: Yang Guang <yang.guang5@zte.com.cn>
> Signed-off-by: David Yang <davidcomponentone@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 17d5653b661d..5fe4eab9cac1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -571,7 +571,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>  	struct clk_init_data init = { };
>  	int ret;
>  
> -	data = devm_kzalloc(edp->dev, sizeof(data), GFP_KERNEL);
> +	data = devm_kzalloc(edp->dev, sizeof(*data), GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
>  
> -- 
> 2.30.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
