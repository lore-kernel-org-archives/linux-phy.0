Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AD16C38A2D
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 19:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjhZ/alIeCjQPrK6V7N0D6YQ2QDwDoJY4VATntx6fco=; b=TkLE51d8c/pN6Y
	V+Wq4vKTXpMREd0mE1DdWsxjLF6KMlAeyae+Xnyq11phHryOQXtZ9K/MgG2BauMk6rDGAbCJlW110
	Bv9/v2LzpfyZ2FBXf+hZtY2Z/kJ1/sunbwoGbg5WutwL1OSZr1BGKsl2l/QVS48M4pFhP7l7tf6Ry
	BVjdIvbCZyFoR1kg4SymopRW561gBFyvvEmczRN4UjBGbak3u2Il6DBxdtdUdxt6fyBhf6PQINhv+
	rCn+8b14hDUINe18Ywymc3wEgPVHRxXNhL8T70KguF3ICNkPOCKiICQWRlJH/8IcxsAhIxdTdUguo
	YOCRhD519mXdRFXRYxbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onlxE-00Al1d-0m; Wed, 26 Oct 2022 19:20:44 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onlqO-00AiYF-9b
	for linux-phy@lists.infradead.org; Wed, 26 Oct 2022 19:13:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666811611;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TcwkxX7f9akzTpXldeCvOVlbHPDFS3e55cTn/Ew1HBQ=;
	b=el0+FRtPphhrZlg1WNJobZsFCGHaoWl6GhYr1oKY2sJKx4Blg1KBmFHm4OIlAqzD9n9N36
	11+J95LwnJwY7+7zzA/TFyE2ErwgoBEdaWippMmStrbGjz0i0pViw2TjaMSfdm+JFQQAEN
	o9FfpT5gACI217bLL1hw0q1IEx1/p5I=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-398-DwDUTf2YPY-9GuoN-MW6dg-1; Wed, 26 Oct 2022 15:13:29 -0400
X-MC-Unique: DwDUTf2YPY-9GuoN-MW6dg-1
Received: by mail-oo1-f71.google.com with SMTP id p29-20020a4a3c5d000000b00490e1cdc13aso1621863oof.3
        for <linux-phy@lists.infradead.org>; Wed, 26 Oct 2022 12:13:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TcwkxX7f9akzTpXldeCvOVlbHPDFS3e55cTn/Ew1HBQ=;
        b=B/bX2JdUX58vwh9MKRm8vtgL7v4tS0qp7chf0p3WrU9iPnuVID613repsNVdMjijwG
         e+IKCT0l8gsH86HOcdaR6FWy9zqnOr6v7lG135dzZVQ+PIFiFu+LTTC2M6sQmBuVRVpM
         bmPqF8E4xM+XEcsofaJXhDSmOfh8dMRemJ+oAImAnSgOUOL8ErU5Guey7qFSx5BBtHOq
         i2GgeTc1FmKI9bNwSZwW1LNqCtu2Jk9GKmfWgrWhh4IN6u7JiHJaCFBsjJcfp+WH6rS8
         9wee2zJHNb2sHb2u26R+NJeVrjNBZ5A4WUsz6NtyC60LZgAKND3tC6iKsU6yeGR0U/QH
         qrzg==
X-Gm-Message-State: ACrzQf1cbJDDY0yLKz69TO8Uu58tkYkffYR6ElwBL/DQ6hCac21Jyxi3
	oOS2JTftDMp2/SXpu8XNsW6h3V/ZvBBofCAeOJGAJ7C9QwLcKfjgObv8cUqsnfXUfE9PPrfE8in
	UsmKTc3gifnjepqU2wpixCwFGsQ==
X-Received: by 2002:a05:6808:1802:b0:354:b406:540b with SMTP id bh2-20020a056808180200b00354b406540bmr2692772oib.256.1666811607657;
        Wed, 26 Oct 2022 12:13:27 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM51GHRU3SteyubonbaqiEhWoUUnM42aduIw9CPdsyhnz0+5pKAXp58pAeWEh0n/myr6t/6Tvw==
X-Received: by 2002:a05:6808:1802:b0:354:b406:540b with SMTP id bh2-20020a056808180200b00354b406540bmr2692756oib.256.1666811607376;
        Wed, 26 Oct 2022 12:13:27 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::21])
        by smtp.gmail.com with ESMTPSA id cc14-20020a05683061ce00b00661948e6119sm2568306otb.47.2022.10.26.12.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 12:13:26 -0700 (PDT)
Date: Wed, 26 Oct 2022 14:13:24 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-combo: fix NULL-deref on runtime resume
Message-ID: <20221026191324.ehk3zarmcboq32zn@halaney-x13s>
References: <20221026162116.26462-1-johan+linaro@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20221026162116.26462-1-johan+linaro@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_121340_472139_D20CDC90 
X-CRM114-Status: GOOD (  17.95  )
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

On Wed, Oct 26, 2022 at 06:21:16PM +0200, Johan Hovold wrote:
> Commit fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate
> PCS_USB region") started treating the PCS_USB registers as potentially
> separate from the PCS registers but used the wrong base when no PCS_USB
> offset has been provided.
> 
> Fix the PCS_USB base used at runtime resume to prevent dereferencing a
> NULL pointer on platforms that do not provide a PCS_USB offset (e.g.
> SC7180).
> 
> Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
> Cc: stable@vger.kernel.org	# 5.20
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Andrew Halaney <ahalaney@redhat.com>

For what it is worth, I double checked and phy-qcom-qmp-usb.c has this
done properly already.

Thanks,
Andrew

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index f6328434c61e..ad6a0fd7ba8e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2144,7 +2144,7 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_phy *qphy)
>  static void qmp_combo_disable_autonomous_mode(struct qmp_phy *qphy)
>  {
>  	const struct qmp_phy_cfg *cfg = qphy->cfg;
> -	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs_usb;
> +	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
>  	void __iomem *pcs_misc = qphy->pcs_misc;
>  
>  	/* Disable i/o clamp_n on resume for normal mode */
> -- 
> 2.37.3
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
