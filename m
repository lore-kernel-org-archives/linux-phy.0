Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E450C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hlz0C0nDyjoBr+YomBJHjmAGZCvsPqAKZiBP/1v8vsQ=; b=keJ4ZU202g+wi5
	R6CdKtZJ6b6nIilQLqYE00/BRKHNWb47r0+l4cFpr9xy6iSHIiHUNXfE0Lwuw6rxEFq5ZKbeQom59
	dcgrIyEnzsrBwf+OiQyocMtx+jjukvfP6UIzT3T55sJuH5CAEn1r4JxF0rioFA2iIPl2qE5xRLwGR
	cql9P34aO+tv8axbbdHQtDol5aUuV5yA3FoXYSaf1UsoVvC6iOcjzY90pBJ833+tH7PuiTWvkOUVH
	blFRDtm8YuGlK6wpqge/ywQ9/E1RaK+cuc61kCJcY4FEkrniL5sGcqEaanl1pmx+DmKmRb7hIhtvx
	FnGt39ohh4JJVrvzI7tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootmu-009lPa-Kf; Sat, 29 Oct 2022 21:54:44 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootms-009lOL-2J
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:54:43 +0000
Received: by mail-lj1-x22c.google.com with SMTP id u2so12512932ljl.3
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wA4ecs5BTVznB6gnT50KpawsR75ozajtpzlo0UlIwkQ=;
        b=eSLqHl1zdJLxOXocDXf2o0zNlaIgOMoDVUOly+T82hbnyWTgMQ7utgpXvVGQSxB7/E
         DCx29Cka8mMwv6q+04VquBVfwsK0NW4H2dmS/PAJfQVaUgxBOT3aLI09pjE0osbulluc
         ON5THuDKHMX/JXmYEsX9Le38XPeqG6wtEAbOuLH9xOxJzPDi+BVg5K3JVeI6Y6aSHmiw
         XxRZiJwP11D0mXJPf55LPdzyvUZpyK2pdynd2rqrGD9A8qguNH3ZNos4BaUxhLebqvpj
         nCW14uzfa2QpP5lDOzHVDzU/cyWop15eyygi/XqdIV4IQfaBvo5mVUAlcCF7UftqI9pB
         umfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wA4ecs5BTVznB6gnT50KpawsR75ozajtpzlo0UlIwkQ=;
        b=ANt/m/d7CNcy+4s1qeRBHw5edoQPxYBE+pEPUx4Scb6+rInvaUmkrgTWTqpZ/R42EJ
         0NSM4qWZNh9Rl7kFMjxVMoBpRcXaKpzvpN0VJOGvsgehRSYk/JWtFbD8veeAgaOFtpW8
         9/9wz/OfSdZFNUPF0Jfg8F6p/WmSj8Hblpb60djA9RnKBhamSEEMNi/0eF3FFjg5FVEt
         68tDqHUMAnGz9C14SwFUUTdD8tF3zd5FomrN3TbMVKlomOo0z6ut5TeN3UtDKAmeuP+h
         fyxFr6K4SJ3JscHHhGEINqNvK5B+RBb82EM2DE49ISNAddW3WvP/ncgbibu+p5rSgU3/
         j+Vw==
X-Gm-Message-State: ACrzQf010bWzTslPnK8zsZvdTB7xs/UjjIUCgODA+X4p2UwXzUjGBKGy
	goTqhm9Rxa/sNvDsenfxukshsA==
X-Google-Smtp-Source: AMsMyM4cwF3w2xQlzU+lvk75HFMDNGKTnUK1KoagOWT29Onclg3k1iYgqXyTM8EgLGnOIlLRj8f/nA==
X-Received: by 2002:a2e:a554:0:b0:26f:ea5d:a075 with SMTP id e20-20020a2ea554000000b0026fea5da075mr2392803ljn.322.1667080480426;
        Sat, 29 Oct 2022 14:54:40 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id bf43-20020a05651225ab00b00497a191bf23sm444584lfb.299.2022.10.29.14.54.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:54:39 -0700 (PDT)
Message-ID: <53bc627f-0c3b-3417-d8af-6ced80eecc97@linaro.org>
Date: Sun, 30 Oct 2022 00:54:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 03/15] phy: qcom-qmp-ufs: Add support for configuring PHY
 in HS G4 mode
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-4-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-4-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_145442_167656_24BCC296 
X-CRM114-Status: GOOD (  20.18  )
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

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> Add separate tables_hs_g4 instance to allow the PHY driver to configure the
> PHY in HS G4 mode. The individual SoC configs need to supply the Rx, Tx and
> PCS register setting in tables_hs_g4 and the UFS driver can request the
> Hs G4 mode by calling phy_set_mode_ext() with submode set to UFS_HS_G4.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

(Especially if changed to qmp_ufs_init_registers()).

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 4c6a2b5afc9a..5f2a012707b7 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -553,6 +553,8 @@ struct qmp_phy_cfg {
>   	const struct qmp_phy_cfg_tables tables;
>   	/* Additional sequence for HS Series B */
>   	const struct qmp_phy_cfg_tables tables_hs_b;
> +	/* Additional sequence for HS G4 */
> +	const struct qmp_phy_cfg_tables tables_hs_g4;
>   
>   	/* clock ids to be requested */
>   	const char * const *clk_list;
> @@ -587,6 +589,7 @@ struct qmp_phy_cfg {
>    * @pcs_misc: iomapped memory space for lane's pcs_misc
>    * @qmp: QMP phy to which this lane belongs
>    * @mode: PHY mode configured by the UFS driver
> + * @submode: PHY submode configured by the UFS driver
>    */
>   struct qmp_phy {
>   	struct phy *phy;
> @@ -600,6 +603,7 @@ struct qmp_phy {
>   	void __iomem *pcs_misc;
>   	struct qcom_qmp *qmp;
>   	u32 mode;
> +	u32 submode;
>   };
>   
>   /**
> @@ -993,8 +997,12 @@ static int qmp_ufs_power_on(struct phy *phy)
>   		qmp_ufs_serdes_init(qphy, &cfg->tables_hs_b);
>   
>   	qmp_ufs_lanes_init(qphy, &cfg->tables);
> +	if (qphy->submode == UFS_HS_G4)
> +		qmp_ufs_lanes_init(qphy, &cfg->tables_hs_g4);
>   
>   	qmp_ufs_pcs_init(qphy, &cfg->tables);
> +	if (qphy->submode == UFS_HS_G4)
> +		qmp_ufs_pcs_init(qphy, &cfg->tables_hs_g4);
>   
>   	ret = reset_control_deassert(qmp->ufs_reset);
>   	if (ret)
> @@ -1083,6 +1091,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>   	struct qmp_phy *qphy = phy_get_drvdata(phy);
>   
>   	qphy->mode = mode;
> +	qphy->submode = submode;
>   
>   	return 0;
>   }

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
