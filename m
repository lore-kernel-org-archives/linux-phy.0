Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC1C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 17:37:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FF71600EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 17:37:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5FF71600EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7HhBF4y8icY7jOyaM/Ko4+f5923F8Yvr/PFVCCKxmc=; b=h4p+OCgV5HqzEx
	QmeDZlJhjqbbC9wpWdAqSNm6XU/HTqJd7uQFmTGe3DGBIJ1ZL0i3FdqzXq4Oerp9W3xgQxyQd4fgm
	twBK3LEduMMFX48kjfspYiDqE+C8dO68Ak7wzTOi3OD2s9U5rRaU5+U3qYSrpalciXUJQEAoqX8Wp
	vLZli0g76MjT+L5QBSCAd4R/mh81VGBv7JBId6jbykweDmRU+pFbKBeQfrigU06rcZ0B44gci9Mts
	gXdcdjwST5lczRWvvqoqdiAVw/t1kWSpCCuLcrh+CxakJ7WupQH2/ViKfYfKC5wPhCkyikSQJU7I+
	3x6liuXT9QQZg/Oh8SdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdFWh-005Kiu-RS; Wed, 20 Oct 2021 17:37:19 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdFWf-005KiM-Bw
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 17:37:18 +0000
Received: by mail-oi1-x22f.google.com with SMTP id bk18so1608562oib.8
 for <linux-phy@lists.infradead.org>; Wed, 20 Oct 2021 10:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+Q+LEmepn36HSxPt5uJFp1Yk/izN2yIl7NSlQhJHylQ=;
 b=m0AvpWkfmHJ18/lAG2XLsY9hGW5OCgYp+lOgVrHzZZlOd72L7gdlpZET90ZjjhciSx
 6W6lxzK6oYLFF0YpB1gsUOLBqK4k3jn4i6URBFdTt3/NrpbYuJK55hSfA4mbFWi9uGaw
 UYCPkCWTw9SfBaMWgBSovDpLjJ+D99gpdlNeMV0in5ftGk6n04dP/UP2yiqW6+/BU3Nj
 9nDZFQdvgvHWMhdeh2e719BRVfQqJKsU+bkSmwNHx6rsEbH7l/qR5+r5PuDgvmeOaZgY
 3/n3zGCubw++ikkyabzk0XU9mvDvQoeDOESYyu056DtgxZOfUEDHbHkjmm0b7VD/+/aW
 vuhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+Q+LEmepn36HSxPt5uJFp1Yk/izN2yIl7NSlQhJHylQ=;
 b=xJ60la46ARXJvnugSFEQQHmgyH4jwx0uTxlNcmGkQPMp7jNCHIwetsxRSrobdhwK+p
 cKUBNONisBA3DRxz0Oe7wB5OF5Jgnva8gKXGOFDuATU1bwsPZpT4PwEaQClsJDLIir+H
 GaMMlALpCWJ7pQbIsvMAqnnvNg4YPk/YGW2jfAlVMFHbQqUEDYS/FtzoTbYxECsC0zks
 zq9pngMWG9s2z3A7zcW4RaYPKXblRcvchMRysGt42w/anBZXTmr7VQ6veuQJJ0aAcBe2
 vS3DCOp3eCwgAypaHdH2EwNDi5GUcr23EoARBSq9VEadmElZdJwYAy51/UCquDFPXxbJ
 foVA==
X-Gm-Message-State: AOAM532ep9J4tqgo9dAiNYNggNbzIEnt5Nk4+N2Rg2r7NBVDrP4FHkT4
 TQe/C0A/1Q0u8uVKBYv9FrjM1g==
X-Google-Smtp-Source: ABdhPJyRbztnB2Ozs88Qk+LtJ2QkLpy4F9RdjwJFGHpAra+QXJr7m0CvofFuHpnSY7lOjm2tumY5eQ==
X-Received: by 2002:a05:6808:2127:: with SMTP id
 r39mr298456oiw.124.1634751435769; 
 Wed, 20 Oct 2021 10:37:15 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id l16sm502070oou.7.2021.10.20.10.37.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 10:37:15 -0700 (PDT)
Date: Wed, 20 Oct 2021 10:38:59 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qcom-qmp: another fix for the sc8180x PCIe definition
Message-ID: <YXBUM/SrGHWonh48@ripper>
References: <20211020155604.1374530-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020155604.1374530-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_103717_440069_61BE410B 
X-CRM114-Status: GOOD (  15.98  )
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

On Wed 20 Oct 08:56 PDT 2021, Dmitry Baryshkov wrote:

> Commit f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support") added
> SC8180X PCIe tables, but used sm8250_qmp_pcie_serdes_tbl as a serdes
> table because of the copy paste error. Commit bfccd9a71a08 ("phy:
> qcom-qmp: Fix sc8180x PCIe definition") corrected part of this mistake
> by pointing serdes_tbl to sc8180x_qmp_pcie_serdes_tbl, however the
> serdes_tbl_num field was not updated to use sc8180x table. So let's now
> fix the serdes_tbl_num field too.
> 
> Fixes: bfccd9a71a08 ("phy: qcom-qmp: Fix sc8180x PCIe definition")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Damn it...my eyes doesn't like these solid chunks of text.
Thanks Dmitry.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index f14032170b1c..06b04606dd7e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -3632,7 +3632,7 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
>  	.nlanes = 1,
>  
>  	.serdes_tbl		= sc8180x_qmp_pcie_serdes_tbl,
> -	.serdes_tbl_num		= ARRAY_SIZE(sm8250_qmp_pcie_serdes_tbl),
> +	.serdes_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_serdes_tbl),
>  	.tx_tbl			= sc8180x_qmp_pcie_tx_tbl,
>  	.tx_tbl_num		= ARRAY_SIZE(sc8180x_qmp_pcie_tx_tbl),
>  	.rx_tbl			= sc8180x_qmp_pcie_rx_tbl,
> -- 
> 2.33.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
