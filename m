Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D9FC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Dec 2021 15:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2sQ4oAGnc2RV8J2TjiMikK5PFTQ9U74VTDHpEckH+A=; b=MT7lpBhSafizdn
	NLUAxETKJ0KvDpBKZ5Aw6QWrOYJsjDEXqjSgQwNFz/7imZhsygIS7sRfbQKgPvz39F3yd3FpuG9qu
	yft/E0TeUKcBMITYjEzdRY2HZGC3s4iUYACKes1sWHSq32y0KRz1tNUK9vVF93SJI0+RCUIdpeynP
	R20t3/N+1EqIBxOzFWOeOTp+zsU2RHxNEn+cPW8OaZSuPJb9kIeu1Tu0Ca1e995o+QGCmNUMAHKU6
	GtrSknfu8qrGaJimUgDSbMi7O5JwBka6Dt+wWAkV8tJPlOA4AO4UQnUehq55HfTEQxy+JfXr8u6Vj
	/eXIdT804aPRB9Rf8v0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mucNP-009Czj-0d; Tue, 07 Dec 2021 15:27:31 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muc8h-00981s-Tb
 for linux-phy@lists.infradead.org; Tue, 07 Dec 2021 15:12:21 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 i5-20020a05683033e500b0057a369ac614so18415628otu.10
 for <linux-phy@lists.infradead.org>; Tue, 07 Dec 2021 07:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2dXIPzvKXL/0XHAniN5ixw9zTONENlVQpVmdzuJjKmg=;
 b=rqU6GY5ntjRkYqXxOUSIWtDihVOINk3LhHZh43bwBMPNnuJ3WuC+aS1nRzh0ORm/Vb
 kaz/s2ej/8hT7+HIg19Sxq5L3xLusJw0wLSbk5pL+Ll8dEQJXeYJaxjB1oWQ2M+EgEOM
 ivUnFPCiueTJuEmJBD7hp26Dq83JGSVwQAdEu1acZrPKzcO65JHZ1gLnzZfo17bxoSKr
 XmduCeztcCSVNYJUcZC5f5cwpt74s7uEVrvHh1KKy0TmtOrUWqwgIgb4N89rqQkhnJ9P
 RwXVSLG4jOLPWu4XIspwgblYuMZb+Dg6HSsaOHa6KX+S+cjp5rYWExUluuWuD2Dfet4G
 BU0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2dXIPzvKXL/0XHAniN5ixw9zTONENlVQpVmdzuJjKmg=;
 b=NBMWsL5sIQ5hIg4AayKqi0r1AjmtwSG7LOyucgSHQZQdHZCpqtttMz8Ayl19/4po62
 zYQed89sCsunBzZ7gI1l0hzPOuoTQH3wFI09uxExshHCqD66z0L1WX774k6xDQMJC+i/
 RjxaMXTR8EdkMaONMvhDOZhK6xg/kpDb0I08J016SyR4cpI0/SxQbLCEH2zgV4Q/hNa2
 LY+lWjVlJ5F/6YWhIxoEydZnFpJLCq2aNikKJryE9Ltss4IaPj9nsOw9QaZbnh1+aI6C
 Kz0xCbxt2gJdoS67X865Bq8KF/Zzu5aAVkbl4p4LKYpJgILxA9ZGJUlZAtgj0WK069vP
 7MBw==
X-Gm-Message-State: AOAM532i3s0qp4NV8G9FXPTVE/mvOu/TmL/17yAVCryuaS2a71phmVpK
 SEvTMWYxN6SjiWGZuL13N6lRTg==
X-Google-Smtp-Source: ABdhPJxGDA5E1j8PGQLhg8Ah1uL+m+DMGpdwG4j76U73RL7cKyHVJyW8WuUHtQstdKAqDQV0LdXopw==
X-Received: by 2002:a9d:4d0f:: with SMTP id n15mr35888387otf.125.1638889939138; 
 Tue, 07 Dec 2021 07:12:19 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id q9sm2779689oti.32.2021.12.07.07.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 07:12:18 -0800 (PST)
Date: Tue, 7 Dec 2021 07:13:44 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Guo Zhengkui <guozhengkui@vivo.com>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, kernel@vivo.com
Subject: Re: [PATCH] phy: qcom: fix bug: application of sizeof to pointer
Message-ID: <Ya96KOynsO478cVx@ripper>
References: <20211207131642.5313-1-guozhengkui@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211207131642.5313-1-guozhengkui@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_071220_029649_18601334 
X-CRM114-Status: GOOD (  15.10  )
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

On Tue 07 Dec 05:16 PST 2021, Guo Zhengkui wrote:

> Fix following coccicheck error:
> ./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
> ERROR: application of sizeof to pointer.
> 
> Use sizeof(*data) instead.
> 
> Signed-off-by: Guo Zhengkui <guozhengkui@vivo.com>
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

Ouch, thanks for catching that!

But the clk_hw_onecell_data actually has a variable size array at the
end and as you can see further down I store 2 items in that array.

So that sizeof should be struct_size(data, hws, 2)

Would you be willing to update your patch with that?

And please add:
Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")

Regards,
Bjorn

>  	if (!data)
>  		return -ENOMEM;
>  
> -- 
> 2.20.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
