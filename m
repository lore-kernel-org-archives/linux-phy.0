Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EB11C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  9 Dec 2021 04:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iFUuKLyPfgQ/HrqKN5M8DvIzx2eRY+TKpgCzRa3zIw=; b=K9i9oEywxc6NNR
	UL2zYMwsQwpKb8G7rkCYvl5lsZ0U9X2h5tzLZ4wPHUbrErhX+enazgzqdtUQ8Cu1NZd4B70KyrpFV
	TtL4H6s0kLFFw5SCLQwbL4xUjfpjYYS9bpeFUGB2e28xIjeEijWintUdjMOPAGRUEoJFUHf8OFDnh
	z9kln/GWI2Jwpc7nWoenspHjcBq4XKFM9uAmlqnoF9ldS7lhLzuM3Bxxeqv/HOMD0pIaxzeT9dvdc
	dW8B/YJCMIGPUWCLfG1w1ag2K54vPsnau5Tq7XJ60vvt7vnDWRL8VAThE9hIncD7lTOUySGVqzrmG
	MaK4EpyAbmom6e0TF1WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvBML-00EvyC-QR; Thu, 09 Dec 2021 04:48:45 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvBMI-00Evwa-KZ
 for linux-phy@lists.infradead.org; Thu, 09 Dec 2021 04:48:44 +0000
Received: by mail-oo1-xc29.google.com with SMTP id
 t9-20020a4a8589000000b002c5c4d19723so1417905ooh.11
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 20:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UzPrDz37TsbgctSbF3jQc1Www5xR/uLVIm/OIh4LH2s=;
 b=pAgQQ1bgUJN66G/xpqk6sN1Ime7Y0O4qp5cVTQJqayrV5KAFuoiw26TORvLt8r4csa
 EoT2O8NlRQwcYcI9nDJG5UZZZVUM7ObMEvrdQXrCuEPsDb9vpSO97e4ztjc72QBaljaV
 gdld3FSuEhonRopMY2va2tW0weV284CGbfPGkWVvXMohwl4RWtWTlhxRWzAhRJ5CuSYQ
 uo/faMw3tvgr/xMpAqlJYB3T8xPHft4qiZQ+fT//xwkTmMg7YB1tzM2fZ2n79Loqohyw
 g/fGDYCbZDkmqnsydUUi7rGFqjiWWGc7juN7Wh799PrdVt/HfrUS0CUp3tuUhg89Zl+S
 lYeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UzPrDz37TsbgctSbF3jQc1Www5xR/uLVIm/OIh4LH2s=;
 b=2cJe1RKhiJTXchvmZLhgtDD0ASs7OaOGphyXZIYgun8HYdTBnGV1TpfoA+BPV+vM0O
 sMtFI/0ozhPTGodwelhtXOfz0uQj3rQaUbttZpu/shy4eFi3qtIxMlD5OaqLcTTxg/e/
 wOsk8tYZEPTWBM0/QP6tcgMxaD7fKgixGtW12HuQQiYS/8X9UxfAuq4ZPJFFxAvd2IOZ
 XBH+f5FG8oO4iijqErmO2XHo8J6WfQECccVdKqogGqBioos6zw5WIPN61a0Hwfw20dzs
 zwnnub5Rammv/cTiz2dEF925UjDlhYw+/AF7/Qk+qxhZvcMzjdsX5hekI3k9Usq+1MYz
 gdzQ==
X-Gm-Message-State: AOAM530P85yjmESQ5xsx2NMxYHuuqdg7YGO39ki2C7qVENxrb6uB8+l/
 2FW7q71KLw77phkIlUDvLm0HpOxvWEuNCw==
X-Google-Smtp-Source: ABdhPJzVriX9cyPCHvhpXlfeRj4kbtylQnj9PMKFLon2CWif8CeJ1hyJB5YbK8VCDsdi+6L5U4UZbw==
X-Received: by 2002:a4a:e155:: with SMTP id p21mr2592272oot.84.1639025321519; 
 Wed, 08 Dec 2021 20:48:41 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id l9sm805883oom.4.2021.12.08.20.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 20:48:41 -0800 (PST)
Date: Wed, 8 Dec 2021 20:50:06 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Guo Zhengkui <guozhengkui@vivo.com>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, kernel@vivo.com
Subject: Re: [PATCH] phy: qcom: use struct_size instead of sizeof
Message-ID: <YbGK/iNJYqtgF1kD@ripper>
References: <20211207131642.5313-1-guozhengkui@vivo.com>
 <20211209032114.9416-1-guozhengkui@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211209032114.9416-1-guozhengkui@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_204842_748211_9653FC54 
X-CRM114-Status: GOOD (  15.41  )
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

On Wed 08 Dec 19:21 PST 2021, Guo Zhengkui wrote:

> Use struct_size() to get the accurate size of `clk_hw_onecell_data`
> with a variable size array, instead of sizeof(data) to get the size
> of a pointer.
> 

Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Thanks,
Bjorn

> Suggested-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Guo Zhengkui <guozhengkui@vivo.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 17d5653b661d..a8ecd2e8442d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -571,7 +571,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>  	struct clk_init_data init = { };
>  	int ret;
>  
> -	data = devm_kzalloc(edp->dev, sizeof(data), GFP_KERNEL);
> +	data = devm_kzalloc(edp->dev, struct_size(data, hws, 2), GFP_KERNEL);
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
