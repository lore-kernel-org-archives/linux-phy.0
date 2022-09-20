Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CC4C6FA8E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDqUDScOalB+Rcgth9ZvkBspzXpIYU4EIX8vritcIoY=; b=JhvNIDlHKuFAam
	fizWq6WuevfzpykEJlLRKztNW4/e4sfytOZaxB7cbwkIILh+nvl4xhI65SoOf+oEVqeEYB+zU0sLS
	WUsZ6BZaMvJhZ8H5iSjY7rLmGp9lzV+xbptMrY2Tk7fms6iDwSGyVjl7vDdJ0yIkpv57vpxQCzHAS
	qUTCWdSt4r3M20+oe4HO3L8OnTPvoiuF8QWI1B/c0/JU3NEkJ3bVAuFQmIcigW+QOmF/sPwQAg5g5
	Flipw/PY0Bf0teLvo9GAerq72WDDGU0ygx0NjFEi7gfxes2FeTm7UAWzJvM0bSgQCZy8pQYrv2bjJ
	CozB5E8yazMWQJ56fMdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadfR-004G0X-RZ; Tue, 20 Sep 2022 13:52:05 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadfP-004FzE-B5
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:52:04 +0000
Received: by mail-wr1-x42e.google.com with SMTP id y5so4443561wrh.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=wavHRpIWkpyu/fKpoa4LUcNf3AdZyP5am8fHD/jGLRE=;
        b=thALaoFEIkou3OZhPREDndGPX4/7jF7ShmviKDCgYAgqh1z+qLL9LNgPp8qw5VjE3w
         6e0/fkVPATk+5NZHXQd7hdrTjSE28UEnz341OFPioAMQppYS3FaJMcKq5YZDvmQmrY4w
         Dm/oXNDrimCOR+I/hSw0CAPx2q6WivhXsTKG4C6nR/T7c3gnBaPyuqo8teonguZvNrTZ
         VW7YH3OfUF5FIvoeaRDCqZcxPEiKPikYrMJtT1Map3WZLZkoqGguE5sCjoYgiC+ObZ0C
         ev6708kyCJdmR6rgScMsNz0cCruVQU+sJT1fx6tgaTNY+DhWmLxXhgiW3oGfgVmrsh3/
         OoiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=wavHRpIWkpyu/fKpoa4LUcNf3AdZyP5am8fHD/jGLRE=;
        b=XJWw8u+GQKBKMEzj9xBwxF+1WY/4ty9Becs4zfNbZMUYwh9JJYATHJYVMpmsaGapKY
         bpJDT8zJG2d2XJfKlEm/QdwPqVXCz1NmUH06LhBbU3AdS4lT5k7CRgNmqHpSSihXBtnT
         FvRpoLhD4JxGFF02w4XVRt8SCr5ciEGU41p0DRrE2ewoFfa1Rx1uiKLDJR9bUplPTKjZ
         cxmQ4TnuaXFjGXCflOrpzkCL1VZVf4lWuaRHo3RmEPtb//7UDeQaGC2mtGQGFLnfFxLE
         s5CmINbwW2SpRq80PKOiDaGhEn3kNKrRHt7HETkVaGNsCD8LXW6qtPn93cwmvi/Tx09Z
         3quw==
X-Gm-Message-State: ACrzQf0vDLUkobzjJxWTOiRijXgJ9tKFbA+v2Dx4BODuQgmQLoxMkDZF
	FB/QU9LmeJOsgXH+y4dLxEWH2A==
X-Google-Smtp-Source: AMsMyM5a+rZ0auh2vbTz9I0PrgjTcQNeburU0wRnf66nxizH0SYO1n8k+g2mr7qf0bOh21TjCoL3cw==
X-Received: by 2002:adf:e609:0:b0:22a:a6fd:cfe1 with SMTP id p9-20020adfe609000000b0022aa6fdcfe1mr14602066wrm.0.1663681922043;
        Tue, 20 Sep 2022 06:52:02 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id c11-20020adfe70b000000b00228c483128dsm19919wrm.90.2022.09.20.06.52.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:52:01 -0700 (PDT)
Message-ID: <050ce714-3c4b-97c7-458e-c5e8d38cd9ac@linaro.org>
Date: Tue, 20 Sep 2022 15:52:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 13/17] phy: qcom-qmp-pcie-msm8996: rename nlanes config
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-14-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065203_481544_F23FFF70 
X-CRM114-Status: GOOD (  17.46  )
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
> The nlanes configuration parameter is really the number of PHYs provided
> by this QMP block on MSM8996. Rename it accordingly.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index e261837aee32..0f8e739936ab 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -186,8 +186,8 @@ static const struct qmp_phy_init_tbl msm8996_pcie_pcs_tbl[] = {
>   
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
> -	/* number of lanes provided by phy */
> -	int nlanes;
> +	/* number of PHYs provided by this block */
> +	int num_phys;
>   
>   	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
>   	const struct qmp_phy_init_tbl *serdes_tbl;
> @@ -318,7 +318,7 @@ static const char * const qmp_phy_vreg_l[] = {
>   };
>   
>   static const struct qmp_phy_cfg msm8996_pciephy_cfg = {
> -	.nlanes			= 3,
> +	.num_phys		= 3,
>   
>   	.serdes_tbl		= msm8996_pcie_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(msm8996_pcie_serdes_tbl),
> @@ -861,7 +861,7 @@ static int qmp_pcie_msm8996_probe(struct platform_device *pdev)
>   	if (IS_ERR(serdes))
>   		return PTR_ERR(serdes);
>   
> -	expected_phys = cfg->nlanes;
> +	expected_phys = cfg->num_phys;
>   
>   	mutex_init(&qmp->phy_mutex);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
