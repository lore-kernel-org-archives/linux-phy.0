Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF9D4C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 13:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2f8qKmF+FSgAoIXfUDau51DBMThuyJ/9PMM1WYO5vU=; b=d5SSqBzsUg1Ruv
	V6N2EU81BMxi2IeiqBY9v//RPxdgVs3BQTxxdOn5gHPzCt5+16eVzmy+Qg60QZZOOT83pBerm3yZE
	WIT4LguwPneAfVe94vHCbKswPg0OkbVo1j3mCbhtC8M5LQdWrS6NSlc04kQZsrysMDslSK9pI1qT2
	wNdEfFqC+LdBxBBB4tDuNMRN5I2gfGULEWfFcmeY/doASrWC/8MqxcERbioDks6yYtWcjSRkHJyqu
	M6rkj+/VU9wirCdlICxl4fBhZ6D7fYwnYzD4cvYr+aM4EuwDL6X+0cAMMrA7M7qySbZcpBUGYJIEM
	lNlzlEYIK+k/pLuShlGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlVgp-001CqZ-40; Mon, 02 May 2022 13:02:11 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlVgm-001CpN-80
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 13:02:10 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 l9-20020a056830268900b006054381dd35so9685135otu.4
 for <linux-phy@lists.infradead.org>; Mon, 02 May 2022 06:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CtdcU9l/eHtmGbmVAGb3hipx1MyfPt8hYs/X++xA/Z0=;
 b=Ya3yCRPVQavN50597Nmysg2ex7niSVKPfGsl0FDOOHtfjZXz++DXVIqM8iQl8IqIye
 qlWQa6rT4Ka/uZGAYXrQeJ6vNKimjSASuzOG3/6NC6G3TIvyTUrlqLMVxCMR6AqP2rG0
 xGRql6dU/PdZryV+hLB7vHjgHl+f4WslJAGQJLD/AwgFMcPWv/ClHmui+T7kXVfjYeHB
 3owCU4xxX/DeC/MwGYNlNHq29MTdTr+6qF0kCLktPVvZ++mreh4nuzgxpH2moBRafT6M
 v9SUunzFZmzZz2+ZF8+CbACMhPE4bRWSVu5sWCg6m6MfTEK8UQDPa3WO04K+RLkAcVBf
 3MTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CtdcU9l/eHtmGbmVAGb3hipx1MyfPt8hYs/X++xA/Z0=;
 b=P2fom+/j9klMNnF9IZKMmJ8f8e5QFma13X/6PKISC4MgeQj8Zu3fyqakgKEIXkbo/P
 whT79nqeJUlnxqDVlg017mHIBVt/Gh4TM55urMioWF1Sr4RetJmnRyBLEApE8o3b2IXY
 LCa9PFfqbLVOl9tIiRQUMlvLw5zUfP5Osrh15tDsnepe8ueQTNtXQJXiLEhpb7t8m1b2
 oyapxYCfXDKprNnL6R4NA/Fbj6gQ3UXIUbnWUxopHQ6hBzOVo4nS8BqntPsFPOWVU5Ek
 DqKjRIMWSxrvYYWrUs7Rg0F+uzSsXTlrevAK/riEXUsFAEXNoFYnvQLBtpxqw+7PAg1T
 kFXw==
X-Gm-Message-State: AOAM531dki1tMisvNKVrmFGJ0sEwsv5DyIhW0Ix5q+8pQHHkO5qW/2Of
 wgPX/c6j1ijLhERztCUJEjJV/g==
X-Google-Smtp-Source: ABdhPJx2sMpmpPcUY0yXRX7INEvhJoOBK+SadoHUezaQq8ZRTfpqOrIOAL9cLBu8v6P+b1R6JS/R9w==
X-Received: by 2002:a05:6830:4b4:b0:606:1c6:9c1 with SMTP id
 l20-20020a05683004b400b0060601c609c1mr4066231otd.255.1651496523716; 
 Mon, 02 May 2022 06:02:03 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 f9-20020a0568301c2900b0060603221247sm2814962ote.23.2022.05.02.06.02.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 06:02:03 -0700 (PDT)
Date: Mon, 2 May 2022 06:03:50 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp: fix reset-controller leak on probe
 errors
Message-ID: <Ym/Wtqjpdgaaf2tp@ripper>
References: <20220427063243.32576-1-johan+linaro@kernel.org>
 <20220427063243.32576-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427063243.32576-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_060208_363924_DE683C13 
X-CRM114-Status: GOOD (  17.70  )
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

On Tue 26 Apr 23:32 PDT 2022, Johan Hovold wrote:

> Make sure to release the lane reset controller in case of a late probe
> error (e.g. probe deferral).
> 
> Note that due to the reset controller being defined in devicetree in
> "lane" child nodes, devm_reset_control_get_exclusive() cannot be used
> directly.
> 
> Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
> Cc: stable@vger.kernel.org      # 4.12
> Cc: Vivek Gautam <vivek.gautam@codeaurora.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index a84f7d1fc9b7..3f77830921f5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -6005,6 +6005,11 @@ static const struct phy_ops qcom_qmp_pcie_ufs_ops = {
>  	.owner		= THIS_MODULE,
>  };
>  
> +static void qcom_qmp_reset_control_put(void *data)
> +{
> +	reset_control_put(data);
> +}
> +
>  static
>  int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
>  			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
> @@ -6099,6 +6104,10 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
>  			dev_err(dev, "failed to get lane%d reset\n", id);
>  			return PTR_ERR(qphy->lane_rst);
>  		}
> +		ret = devm_add_action_or_reset(dev, qcom_qmp_reset_control_put,
> +					       qphy->lane_rst);
> +		if (ret)
> +			return ret;
>  	}
>  
>  	if (cfg->type == PHY_TYPE_UFS || cfg->type == PHY_TYPE_PCIE)
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
