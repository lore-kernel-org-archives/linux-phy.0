Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 076D8C3DA7F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 12:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxqUeArs4pVrNaNFoWMPCgZ3/sCLWFf7bmvqn2Qm5WY=; b=xpDGPmuW72lHd0
	s21EVO5l11ZB1BmXCiZbdlvDRWvvdtywaru8Bra2TcdPPJit8cvggqGjNDZveawFw3ZEYzAtwM7Db
	HETCm1Inl3hbVeVTwyGPTGO5id/n+lSReqeRqnBcBjt58tIgpv9V+1Ff5uqvhqG945KzYoevfGAdQ
	iZhv1448DLXw590mPG8rSysPRv34Qgm23VBxpw+PmSWb8s+e8ZiyG+TOCy9dOHWO96eQod1k9NTyt
	9EYVF6oQDEWVss9D7Sur5aS1Q0iQi0cu8fQ1FLNLq8SwEFZvALjBB4MnS052tfVXlh44koqSyV00l
	KS0xOOJsCXptAA3QL+mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8Il-000000011wV-2LJ4;
	Wed, 31 Jul 2024 12:19:31 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8Ii-000000011uL-2h2e
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 12:19:30 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-52f01993090so8710883e87.2
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 05:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722428367; x=1723033167; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZS7SjZ0Q1lIeKnPxLIzMq7+G1/0CZ8+qiYitWCXl91c=;
        b=aM/SgJYaRHlSfILXkKvkvhAFDOp6aHMC1EdpIKbzLc90pF3oZKgvViLFO/YfphNEb2
         rmJ/xAq0n+4ngweG2vhItymNT6UlNtl7OKu2bqLCIyAcFfmhIGKOLdHJ2Sghx2VLT+NY
         mqaCfnZp+m+kHT0nidDOVLOLpHh7ehQjHIzggdFEBvzyjaV84D0gtL1yqVAz++uaaeyP
         Y1SyrsARWVPTE7/6NdLcGaGRF7gq8GGTPMoGrFUcBb7F21Jj9EPnJtSDvMFhpS2ioXOU
         YaoW4XvciRg5IdBiEFE5xdClYZNniMeVrnzkWGa48jIa/wrxVLh3kTHGpPsUJ5ySFWLy
         aagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722428367; x=1723033167;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZS7SjZ0Q1lIeKnPxLIzMq7+G1/0CZ8+qiYitWCXl91c=;
        b=FtTs2d3vmNDEBv+pD9lD02542YGQXNBS5yNunujUwgSVlSdRoQOmKQsofakKyu8gBm
         IkqyV2niPhZwuDgWEXcFSVOAar1lHitpuyuN/Jvx1TJiq1xXSeBaF2zfqOyGcitnEH6V
         7+rYWUwlVdhRd0pCTyxA7WZWOiUtl4bktnrxxh9sCf7HP3Ta68CRC0dqguGNWGMrYzoR
         dC7qCJjocydzLytX9Hv1UvRqC6ESqh3IQsr/vXIlETA6TdJQ46NxGYZhRVkZEYt65AvP
         RkFEFhdDegZPvzPFgY1UQNK6vb/yvAZk2/uwE507MNz73nyuoDF5why66T1vjevZRchv
         13GA==
X-Forwarded-Encrypted: i=1; AJvYcCVTiNYjReO7T7pV0pw1HQClmqc+BWTDHqFcQha+Z3lm8zXeknawhNXTox+S5rYgN3gUdgOewSGem6GcYq78byzEx4CriXV9sizwXxYFuw==
X-Gm-Message-State: AOJu0YxkZVPP2CU56YBp9w9qg4yCI5bjKIW0W9EuuUxfhGPXmgMIZzlG
	ZZRRbpKru60cnsf3+PY1ngIFzhx+FCXMmgMLhcmujLrjHtO3lEjU73InE+otFZp57yrwmf9UEn2
	d
X-Google-Smtp-Source: AGHT+IFwcEfe8qCY6v5xorKupZOP+DOCeKfMqDzht/uIvX7Fps/kmNwieXy5dgRLm35+kmGBuw2/7w==
X-Received: by 2002:a05:6512:1142:b0:52c:def3:44b with SMTP id 2adb3069b0e04-5309b27d680mr7587479e87.31.1722428366532;
        Wed, 31 Jul 2024 05:19:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c08cf9sm2201909e87.149.2024.07.31.05.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 05:19:26 -0700 (PDT)
Date: Wed, 31 Jul 2024 15:19:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	kishon@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <sqaeseivhysqzzc2udkjv23l5tysjr6hxtlide3an7dngwtdoe@njmgfk3kcvt6>
References: <20240730100351.51454-1-manivannan.sadhasivam@linaro.org>
 <ZqoY5kFLDEmkb495@matsya>
 <knjl4q5zyqz3wrqp5aawgpxk6aqggvteb72enpsgweulgrxmnu@ol42qtug4xvi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <knjl4q5zyqz3wrqp5aawgpxk6aqggvteb72enpsgweulgrxmnu@ol42qtug4xvi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_051928_716295_0B98B276 
X-CRM114-Status: GOOD (  23.96  )
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

On Wed, Jul 31, 2024 at 03:18:34PM GMT, Dmitry Baryshkov wrote:
> On Wed, Jul 31, 2024 at 04:28:46PM GMT, Vinod Koul wrote:
> > On 30-07-24, 15:33, Manivannan Sadhasivam wrote:
> > > These register prints are useful to validate the init sequence against the
> > > Qcom internal documentation and also to share with the Qcom hw engineers to
> > > debug issues related to PHY.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-common.h | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> > > index 799384210509..e6a6bcfcac28 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> > > @@ -9,6 +9,7 @@
> > >  struct qmp_phy_init_tbl {
> > >  	unsigned int offset;
> > >  	unsigned int val;
> > > +	char *name;
> > >  	/*
> > >  	 * mask of lanes for which this register is written
> > >  	 * for cases when second lane needs different values
> > > @@ -20,6 +21,7 @@ struct qmp_phy_init_tbl {
> > >  	{				\
> > >  		.offset = o,		\
> > >  		.val = v,		\
> > > +		.name = #o,		\
> > >  		.lane_mask = 0xff,	\
> > >  	}
> > >  
> > > @@ -27,6 +29,7 @@ struct qmp_phy_init_tbl {
> > >  	{				\
> > >  		.offset = o,		\
> > >  		.val = v,		\
> > > +		.name = #o,		\
> > >  		.lane_mask = l,		\
> > >  	}
> > >  
> > > @@ -45,6 +48,7 @@ static inline void qmp_configure_lane(void __iomem *base,
> > >  		if (!(t->lane_mask & lane_mask))
> > >  			continue;
> > >  
> > > +		pr_debug("QMP PHY: Writing: %s --> 0x%02x\n", t->name, t->val);
> > 
> > This lgtm, but fails to help when offset _might_ be incorrect, including
> > the offset value as well (not just the name) would be better imo... 
> 
> Can we please use dev_vdbg instead? Having dev_ part makes sure that we
> can not mismatch PHYs and the sequences. _vdbg is less important, but
> I don't think we want this in the log messages unless absolutely
> required.
> 
> Also, could you possibly apply this to all other QMP drivers?

Please ignore the last phrase, it is used by all QMP drivers.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
