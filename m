Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98482C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Zlx61PLedGqCKkENFVLsrFY8CXXcSbxTiS+cdE2oB0=; b=tsw5rLkfXGjQ1v
	ciFvmHec6bH1WBRh1XyRZ3xwIyveimbYndH9QNL5xTYaEYgaJyJxbEkq9gYsMqCETUtcOP5DIIp6o
	4vUpAbv3hbhHHxYHDhNExNc5mU8rBMYRzQlv3FcR3lPbPvKXiut1H84Gq4yDrZFmkbC1JJekgL4Uz
	YojmKM/M5fAxGbtOiXAdGa9XgJpRkcna+xNUK79kBPitHBXmVh2ugMdjLKgQtkrkLVFOZXL5KXZpX
	ZDFdK/QGUgWTDyDhXaeogblsrF/8sGY6baJLPulcbJu3LKcMZUoqenLlzL/cMhXyMWK+qXtxs7zsM
	CxaJpaycTnmo9SnaTtIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadeq-004Ffv-1e; Tue, 20 Sep 2022 13:51:28 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadem-004Fc8-TS
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:26 +0000
Received: by mail-wr1-x42c.google.com with SMTP id n10so4336545wrw.12
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=ie45F/lkLLynh4wGP5XxIIavgNdgbFKnC44CCTp/NRI=;
        b=lrPNrEQr+xNLISBtmLHGMl4sny3vDZKH6tJ73KRXFF/z+OqE65D6MT2Vt6TNTsRyED
         IOUlazvaj2Xo7Hs5cw+aMa+Aj/mgfrLqbrW5Uyq9IDtXLL1TCYINRtzSF04dE2ZHmWAO
         4uzFWz4db3ePQZCkEpEdGsay1RkFqpEmB3TC4V8YvX87thlihx8+4t34+3pYrzoHPHIW
         9lveiAHp/OvMSw29Ez4F+Lf7L76p4fYUGLPtWQQ652Rx+tGSfX3FDHQT6QwEfs5uwtuq
         glcxO3xnQbBTgSYywgvYdfmE+JZTunzw3OrX8z+TohdF0uxXlV1WSFvXS8mpy/WTqM7u
         sKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=ie45F/lkLLynh4wGP5XxIIavgNdgbFKnC44CCTp/NRI=;
        b=SOPshlN22aoHTwNvHlvzxD0ocW9PYIkGL3i9wqIboqZPd0oOkcpi7LX4pnkGpcRUiF
         1J6Tn+paZHls6Jvr4z53gbHTN0ujSQr9oVxnH1tzFrRKiHJQMmeivAYA+VgFcpermAxZ
         FZJq3RlhjYq0AJ1/XHs3jKVdrjyWBP20s7Rho7bmRjAg+4oHcqYskNY8Rf5kwpqRQfzZ
         3WaOqM+oA2P+Bymuh56B2TbKrHE13BhY3WBc6DNPiM+bxXAL728tUydl1HE9Ee5MsFVm
         6Z2djlnhaz6WtXrj864Dy0Wl/Co5G7EzJU82zGWCcM8xe2iHQzsRB1wOW4ERTEn6b/tZ
         QgaQ==
X-Gm-Message-State: ACrzQf3jVpnKF0TMXJuo0uQliF2FnzrQJxzaVnJWzFiJq1ZuHN3Heh08
	U1Ru/h3+YZCbI3ZKcyQA4zM9sQ==
X-Google-Smtp-Source: AMsMyM5/im8/35tKr1t1+wFKKnt4WVrkH/e+GlT1tr5K6kmneVuOMtgNWUvOuzQ+4lfcAARt5mV+mw==
X-Received: by 2002:a05:6000:78b:b0:22a:da96:8ae6 with SMTP id bu11-20020a056000078b00b0022ada968ae6mr13830191wrb.232.1663681881322;
        Tue, 20 Sep 2022 06:51:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d4b09000000b0022acb7195aesm74782wrq.33.2022.09.20.06.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:20 -0700 (PDT)
Message-ID: <ffc992a7-fe2e-fff4-1ee0-efd727103f20@linaro.org>
Date: Tue, 20 Sep 2022 15:51:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 05/17] phy: qcom-qmp-pcie: drop init and exit wrappers
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-6-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065124_998263_37A0283A 
X-CRM114-Status: GOOD (  14.68  )
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

On 20/09/2022 09:38, Johan Hovold wrote:
> Drop the unnecessary PHY init and exit callback wrappers.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 29 ++++--------------------
>   1 file changed, 4 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index d25f9215b86f..525097e3b041 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1877,8 +1877,9 @@ static int qmp_pcie_serdes_init(struct qmp_phy *qphy)
>   	return 0;
>   }
>   
> -static int qmp_pcie_com_init(struct qmp_phy *qphy)
> +static int qmp_pcie_init(struct phy *phy)
>   {
> +	struct qmp_phy *qphy = phy_get_drvdata(phy);
>   	struct qcom_qmp *qmp = qphy->qmp;
>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
>   	void __iomem *pcs = qphy->pcs;
> @@ -1925,8 +1926,9 @@ static int qmp_pcie_com_init(struct qmp_phy *qphy)
>   	return ret;
>   }
>   
> -static int qmp_pcie_com_exit(struct qmp_phy *qphy)
> +static int qmp_pcie_exit(struct phy *phy)
>   {
> +	struct qmp_phy *qphy = phy_get_drvdata(phy);
>   	struct qcom_qmp *qmp = qphy->qmp;
>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
>   
> @@ -1939,20 +1941,6 @@ static int qmp_pcie_com_exit(struct qmp_phy *qphy)
>   	return 0;
>   }
>   
> -static int qmp_pcie_init(struct phy *phy)
> -{
> -	struct qmp_phy *qphy = phy_get_drvdata(phy);
> -	struct qcom_qmp *qmp = qphy->qmp;
> -	int ret;
> -	dev_vdbg(qmp->dev, "Initializing QMP phy\n");
> -
> -	ret = qmp_pcie_com_init(qphy);
> -	if (ret)
> -		return ret;
> -
> -	return 0;
> -}
> -
>   static int qmp_pcie_power_on(struct phy *phy)
>   {
>   	struct qmp_phy *qphy = phy_get_drvdata(phy);
> @@ -2060,15 +2048,6 @@ static int qmp_pcie_power_off(struct phy *phy)
>   	return 0;
>   }
>   
> -static int qmp_pcie_exit(struct phy *phy)
> -{
> -	struct qmp_phy *qphy = phy_get_drvdata(phy);
> -
> -	qmp_pcie_com_exit(qphy);
> -
> -	return 0;
> -}
> -
>   static int qmp_pcie_enable(struct phy *phy)
>   {
>   	int ret;


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
