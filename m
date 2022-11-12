Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F887C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qV7LZFYRSVrovgWE51ra/5+/oBh4DBVEiJluMLJvhUQ=; b=V/cj8M/ziLM5Mj
	HWkXJ54vUZR/vCGeqI3r26U4dChyoVoYnlobUrpqpHRY1id7sVlnPITfDQ6s4G3V+M0MWv1aIbXMd
	Nhra0YuVAGwNSdSaBGQ6lyS3WlKh6LDnKV9FUEUCoSNNx6Nl4Md8Zwpbev8F3Va6ODB2tuoIk4eaw
	PYkNHMGyKeu3JpJQiX51Z73ROa0fKfKSsQqFSn2zh/shCZSNUCSETrCGqDG1RDjJSDl/oe/BhmhSP
	WC4zrLl1j9D3rM/3u2Tbh4PPoxo7kdFJ6lYDuOeUegN+xkQJmjFaQxzDKzG2wqIUu885U4lsNHI4H
	NqqrSOA32YXtWeL7wAZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl6k-003yho-Gi; Sat, 12 Nov 2022 07:39:18 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otl6h-003ydE-Km
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:39:16 +0000
Received: by mail-lf1-x12d.google.com with SMTP id g12so11475877lfh.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B3rJhIFR1mK2yHxMMcxFO8jz+qe9h76vXF9R64i7TOU=;
        b=w9SSLDRAXqi5Uj5XgcgIbxPK/g3Xj/OLGH6H8zMIcZYZ2gicerSghhMI2KsppTD1RB
         LIHgl7foTOGi8XtmjCV9aOLbIgMEUOMqVwoe7smsh3YMAQtrvyeGzoJ9vr03RCTsSFq2
         Kpbmz7VBGDwX91Vmf/nMpCBg4DTpGPTJhRmjAHEo+gBf0treSRRwBdXzzNBdbBNiJ2rg
         ZU8CQppU+XaKWiXnJLND1welt95RGxcU7Wn62lQ66q/RXugR93UGtAv6xpQIvMkC17kL
         ubWBOWsaGnlCAGu9x/46NqGQT2oldpAyttNvEPU62yipYFoUEJPYNA71NOkt8kqumSYa
         4G+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B3rJhIFR1mK2yHxMMcxFO8jz+qe9h76vXF9R64i7TOU=;
        b=5aZSOb5SfijGdS9apz4UkEHtR8zXITSWmaDYWUjVSWsxU6v2VVXu9pGKr5ywkbu4+g
         B9tvqpsqODosyFnmyXgLIIECqMfAaGY7hgFC7pXtFEbbK4xkcH8XvzStGt7r1TWyUzwu
         36FYhcERWGzymUxgYZI6C+L/NMug1om1CBZFfkz/8i9vAsqMjrebPCgnhym/CcC4qsyI
         mesH/hFLIMzAn/wr6VnyeA+vXerbpTPxmaVtPPRFwrkj67s456kPPj6wHFKlYPQ7/Pq5
         wSr20tjNFe9gtaRIokd+odCT2pBwVHznwSLsHZQX+dLYVVzjSjvlakNBTgcge7tm6y6S
         lqfQ==
X-Gm-Message-State: ANoB5pmW7smEN3AN1GBVhRV9fvf+mdBgDch7qoosO92tb5kLxZxeUp7b
	EGkiPryG1LmTKv9dQIJ0WZeEBtMj6GdcwN4y
X-Google-Smtp-Source: AA0mqf62E0O1VTd1yn+byHz2PeVxx7XBq5J+K6rXGTklbKKVcIj/WRrGa/mTnyxgJe1vhxjf43IzNA==
X-Received: by 2002:a19:5e4b:0:b0:4a2:46f8:24bc with SMTP id z11-20020a195e4b000000b004a246f824bcmr1688117lfi.180.1668238753043;
        Fri, 11 Nov 2022 23:39:13 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u26-20020ac25bda000000b004aab0ca795csm736999lfn.211.2022.11.11.23.39.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:39:12 -0800 (PST)
Message-ID: <56752623-d865-2848-3132-4df769a31d39@linaro.org>
Date: Sat, 12 Nov 2022 10:39:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 16/22] phy: qcom-qmp-combo: add DP configuration tables
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-17-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-17-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_233915_710794_53FA1AF5 
X-CRM114-Status: GOOD (  12.40  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> In preparation for merging the USB and DP configurations, add dedicated
> pointers for the DP serdes and tx tables to the configurations.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 45 ++++++++++++-----------
>   1 file changed, 24 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 499368e19e00..b27d1821116c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -816,6 +816,11 @@ struct qmp_phy_cfg {
>   	const struct qmp_phy_init_tbl *pcs_usb_tbl;
>   	int pcs_usb_tbl_num;
>   
> +	const struct qmp_phy_init_tbl *dp_serdes_tbl;
> +	int dp_serdes_tbl_num;
> +	const struct qmp_phy_init_tbl *dp_tx_tbl;
> +	int dp_tx_tbl_num;
> +

I'd prefer to have DP-specific instance of struct qmp_phy_cfg_tbls here 
instead of having separate dp-specific fields. WDYT?

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
