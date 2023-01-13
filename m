Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6250C3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 19:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wW6MOOOEf7R/15t6jfqsxrT0Th/V+R+0osisXVH3k4=; b=WKEixDMcE+TbjE
	Gy3Zj9v3XCba2ciVf8/yU6OlPSlajrbaNH4DkeVDT9iXAv+1cHa3DoWFFBQwgNO/QCdYxGVhhWGHP
	Ww5BFvvd3B/4hnRpNR+9oYjfEL+Qfb9zPlesr+TbKLzDpXk1Ax1fFVQ5v2cTsHDMAuKYJ9T+gUajY
	NEyiAZ/LQy/b09Xqw6ejgnpBnYqD+7PTYhNTUcBQ7bw+DlfgwCr93JFXuUPTQ+p+MQFw83EI3htOg
	0RWK4htFz/EnJoPESiDThnVckM9P2MqVqllic+hFklb+8N8mPodVLSuGbNpkcO/fxOOYPdDY8W4Sl
	JGLxBlxllV/DQehBwWUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGPmP-004Eev-3b; Fri, 13 Jan 2023 19:31:57 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGPmM-004Ebw-65
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 19:31:55 +0000
Received: by mail-yb1-xb35.google.com with SMTP id e202so207178ybh.11
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 11:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q3w2TiU+Lm4nUzsmAN2R9y6Z1pBbZIeSZTFy+e+i1Wk=;
        b=wwkkD/BbYvU5NuTiZHjqY6R/O+FRehpJ86yRYqvetizP1k1TrxND2a8wx5XckTHlAR
         +bzA9nNbrS8Hi2ckThe8kGGYkIxYsP9CReFyV5gT9J4XPS8UJ7Cp7zUobVzaDAxHL+Rd
         29Xk+FkVcheDmHH0IhvWxzPdfRREwBTEbwmN6Ssd+33B7k+QEHeUedzmqn7VIvFFSw6U
         AAohESqAXJJNdAOFkDqC6I6VRaxf8qWA+GveIBguZcE+sk92sku8QQdQbLOh1pjKaXnI
         0L2eTI4kOu03otfB272qaDnq8eASvQfg2uFIuIMEzYAv724TEzM12sAWMNa1wrw3XOtu
         Q6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q3w2TiU+Lm4nUzsmAN2R9y6Z1pBbZIeSZTFy+e+i1Wk=;
        b=Dxj0JAPJmH8bRECtXOJwzA5ILoZzVgDFxRJXd4YLd/UeKpN1iSdr54QJpwFbAjwN+l
         LAY4W8tH4BCIPt0LD6ZvI292I96jFhTcjAB7ntYLYeNM7HvWO+a1HvzW+sgOsu3UG61q
         sEdIcVOFtxdn0TGQHIJ+U0mzTLXXJcHafZx793Kggg3UNrJ5i+19RE/1QP1ZJD849XkF
         9MthmnWfBFmqY2wcB+S86mVwNUHpZaPcyuqTbUcYmEe4WFX8sodKOkYkv+97srnhhvDm
         Ndtbxo+HSV2WtFq8gn4l8poKToqTYDW2G7JZ+r27j301ULECd//7iJG+ZWJAjW8m/xMs
         PpQg==
X-Gm-Message-State: AFqh2ko1VAXqVPrxn8GS6BLeyoIga9yx7CeKVBRGmKAz2xMgai6CfX/T
	x36HmDqxtnfZA1CJtKxIi0ZebZ8j0U4q1QLrnoAqeA==
X-Google-Smtp-Source: AMrXdXtimzxWwdAam5pUjv6lnc370dF1DqEq+lHlc6Ucv3r0ITCLyfKNu6YkXfF2piMkkorsB+TRlnbtQAkbkc0H55Q=
X-Received: by 2002:a25:cc7:0:b0:6e0:c7d3:f026 with SMTP id
 190-20020a250cc7000000b006e0c7d3f026mr8920588ybm.275.1673638311180; Fri, 13
 Jan 2023 11:31:51 -0800 (PST)
MIME-Version: 1.0
References: <20230108195336.388349-1-they@mint.lgbt> <20230108195336.388349-4-they@mint.lgbt>
In-Reply-To: <20230108195336.388349-4-they@mint.lgbt>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 13 Jan 2023 21:31:40 +0200
Message-ID: <CAA8EJpp-RwPOv61MtoXYb3Tuy5LDWWBCvYSrGUOvg8vWhid_tw@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
To: Lux Aliaga <they@mint.lgbt>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com, 
	bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com, 
	gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org, 
	phone-devel@vger.kernel.org, martin.botka@somainline.org, 
	marijn.suijten@somainline.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_113154_253564_8F29A075 
X-CRM114-Status: GOOD (  15.89  )
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

On Sun, 8 Jan 2023 at 21:54, Lux Aliaga <they@mint.lgbt> wrote:
>
> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
> compatible for it and modify the config from SM6115 to make them
> compatible with the SC8280XP binding
>
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> Reviewed-by: Martin Botka <martin.botka@somainline.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 318eea35b972..f33c84578940 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -693,6 +693,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>  static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>         .lanes                  = 1,
>
> +       .offsets                = &qmp_ufs_offsets_v5,

Please don't randomly reuse generation-specific structures. This
structure is clearly related to v5, while the PHY is from the v2
generation.

> +
>         .serdes_tbl             = sm6115_ufsphy_serdes_tbl,
>         .serdes_tbl_num         = ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
>         .tx_tbl                 = sm6115_ufsphy_tx_tbl,
> @@ -1172,6 +1174,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,sm6115-qmp-ufs-phy",
>                 .data = &sm6115_ufsphy_cfg,
> +       }, {
> +               .compatible = "qcom,sm6125-qmp-ufs-phy",
> +               .data = &sm6115_ufsphy_cfg,
>         }, {
>                 .compatible = "qcom,sm6350-qmp-ufs-phy",
>                 .data = &sdm845_ufsphy_cfg,
> --
> 2.39.0
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
