Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEEE1C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 26 Apr 2022 23:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5oKA7Sc27sxLU3MQ8kJCtcHjT/rKxtnqNVSeEHRpWk=; b=VJt5xnyhk35Tt5
	bqGr1zM0BXrEP3whVwCe6OxhCIKTN6+yu26ydNPUCFUkIByAFNJWqzyH44yAW8SRwIaBcl9Z9lhSx
	W0DDOGhLGa6xEhDroU/r2wiVtcgoUMAcGqc29BLIJ4XUz/LRkINP7dgdDRSIoZtujYCxTyUz+vrLb
	CAdZVr5WgSplg6XmVFbkn90ndhDtbAySuJ8bQXB/wa5Z5MVoyQCexyUGHPk7907JFYJgIK61Bx7HO
	T5huWEEEJdOi40xMUSqFZqUX3pR4a2XS3a1XnZzx7ptX6W3CEy8vL+0d9vq8rEhN6LVHxD0zFe6rc
	+vlRQ81HTqc/bRnnU8oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njUhw-00GgdJ-5Z; Tue, 26 Apr 2022 23:35:00 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njUht-00GgcE-SP
 for linux-phy@lists.infradead.org; Tue, 26 Apr 2022 23:34:59 +0000
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-e2fa360f6dso310270fac.2
 for <linux-phy@lists.infradead.org>; Tue, 26 Apr 2022 16:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rqUfSOGZ1teIwHlqjTqKW5qefctpAygnKO2drKsH9dI=;
 b=D/qioClAQ+KU8gvRilbYlhEYHKiT+0H/WIBXw23GyCqUBT5D8fmk9R1OIc44TEA7js
 +LJywEt/aWtxDDGmaIb3x7OIM9HUv4+VQCyEeqSNT3F9YE2mgLgWg6InNomvU/TLopSj
 SPjIXyKBWIW+4Pe3DeDI3Y01BJlrBk79IPWZmRFqwmC3rPlB0eiLtSEBBUrueNP3krfd
 GsXNnOCv1ouynGD/puxrVQzOADywScBxVEXDVOp35gElrUGBKctk4MTsxyXLlwt9RSfb
 YLeojdMQg5/efwjxkeMR2EADPGvVf5NrUJgSFqU0870iNFTTEF0O21XVoVCBFHEDoZVn
 HBvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rqUfSOGZ1teIwHlqjTqKW5qefctpAygnKO2drKsH9dI=;
 b=nxd5k7eP0k5fQgpPDjToc6x6EeIHGCBHCFnsVmpa6iEUmO9ixebkZgNAWkVM3yL7JJ
 R6BGu1J+BNYmKrBvHB4ahnySdJO/RQUgQrsS34afJdV0pPQ9xvYbtyl/tv19P+KjTePb
 efYsrxex+EpBEElqcxXOHA926OuxEXb25E7zlL9AwK3Qug4tr1F+NJaZ3TjvzMxVfD/X
 zhpU3yYUuC4aXvU7X034MnSmQF0nFhZx19eZhp48pIjVgxMrLiQdfi3JrGOmZOArDwC8
 AuxMpO5xlIAUGZoGoZ8azctikC+9kgd9uucUWTaGuO/AzHrN0fN+Hl6sCPOfMNnMWJq/
 iCgA==
X-Gm-Message-State: AOAM530Ibej6xD3IQqOBQaE7j72byu9eK/HM4lihuNQTtPvz7gmqMHC6
 WhtC10vSit3ZOqErVZ27jLbEAQ==
X-Google-Smtp-Source: ABdhPJwVdqnpXywCFOoorgAPIFV29CT0TZAoi/FfYZqaI//R10zdLuGPYfllUCuqMHyeD6k33aytKw==
X-Received: by 2002:a05:6870:d5a2:b0:de:f682:6c4d with SMTP id
 u34-20020a056870d5a200b000def6826c4dmr10417337oao.283.1651016095986; 
 Tue, 26 Apr 2022 16:34:55 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 t22-20020a056870e75600b000e915a9121csm1341699oak.52.2022.04.26.16.34.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 16:34:55 -0700 (PDT)
Date: Tue, 26 Apr 2022 16:36:51 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>
Subject: Re: [PATCH 1/2] phy: qcom-qmp: fix struct clk leak on probe errors
Message-ID: <YmiCE35hvUzQW2Bc@ripper>
References: <20220422130941.2044-1-johan+linaro@kernel.org>
 <20220422130941.2044-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422130941.2044-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_163457_960429_CD3A5E4C 
X-CRM114-Status: GOOD (  15.27  )
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

On Fri 22 Apr 06:09 PDT 2022, Johan Hovold wrote:

> Make sure to release the pipe clock reference in case of a late probe
> error (e.g. probe deferral).
> 
> Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
> Cc: stable@vger.kernel.org      # 4.12
> Cc: Vivek Gautam <vivek.gautam@codeaurora.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 7d2d1ab061f7..a84f7d1fc9b7 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -6077,7 +6077,7 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
>  	 * all phys that don't need this.
>  	 */
>  	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
> -	qphy->pipe_clk = of_clk_get_by_name(np, prop_name);
> +	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
>  	if (IS_ERR(qphy->pipe_clk)) {
>  		if (cfg->type == PHY_TYPE_PCIE ||
>  		    cfg->type == PHY_TYPE_USB3) {
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
