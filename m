Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CC3C3DA7F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 12:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BCjLfo7XFqxXjeZbpBLTkwqZjf1ZryxZcNdq2W3ex8=; b=ahTkcqMxuqPzP3
	EPFgyKuQgrgzYw9kAjaj2fP26WJusKy2c0WoxVJwvDLjXdQ0RqmcaR5FoIcIE6ZBPaeW3F1HeEXau
	M8Cms+xuSCBa95RGRomQfW1nf6BumUl7mcr0od7C8H33XLBR1m2EG56RTue/50b3ooijQzlk04rle
	g2bHsQdQMRtqOi0XXGqlAStXDHmrDjS5EfyTMkFEGBKtU4tsGa5tLw5VUohDm57BN/30iuw0dYR5f
	P73RnIuwQkXmX4llHcg1BKZS7WnVoojB0lEE68WqKv4fYT+ukaWoRr/QfvV4D9gKt6TTwt3rkO7cy
	McuorPxKqyNtmqIKm+kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8I6-000000011d6-0TnV;
	Wed, 31 Jul 2024 12:18:50 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8Hs-000000011XH-1uxB
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 12:18:38 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52f025ab3a7so8726262e87.2
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 05:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722428314; x=1723033114; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ef8AtdFgaOFukIlkgGOXCKezxspkLpfoqsDfZ+2AvFA=;
        b=fiwV4JzMItVkxRB5utcjZRRDmcngN+w9IpkVJjPqpgBACb16WPz4kDw3UvKSawL8gW
         Z8CoxGHjEki/erIMlR5YJwvy5y+4ts8IyYX85uzLiTt0EsOb93rEtjdFgvTLJtt9oI3B
         A0l6mb3MgU+kaodayarflbhJcM6GR91FuU6/g4KSsMuyXis/vMswfx2RO6MHNlcBS04m
         z4NtzE9YYDY240r+I0kEi7KJlvX99U8XE5Ft/m6JSQvcDutAA56enhjBcn7Us3nGDbVI
         2v9cf93TfeL4TvH2Hz36C1ginCfX2nCdzyCrtScrAathM/BRYfdqkGsEM8j0bkWzweyQ
         xYPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722428314; x=1723033114;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ef8AtdFgaOFukIlkgGOXCKezxspkLpfoqsDfZ+2AvFA=;
        b=U3YIUOF4+drLGnV6eO8JzynQZ4Na5lwlWJdpK0P4Rct31DRbLyxuR8vFbXQoJ0zzzO
         NHXUfImUAEB+jBsq7dvKjD76A5iPVCxST8HqIJ0strI4KuJd6gy8EVqYynf3iGrJW2R+
         phG0VpMvNKTZXZnQJl/lsjaoIfI6itqxeSfwlyOL705zIA/0momEyrFasB9xgzZzeyZY
         q7b3F2O/JjO9dTXH3bax4ExzRl5f31Ghq5ojhpVH+Kjwxxwz7KEU9oKuoA18QUU6mFJN
         +3PyJyQG36dmOYolmjnPFZvFG+rF5l4Sijx1mL3A5j7ekLweXK/1bBQSj7qm0BxETIJ0
         C3GQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuPu9nLimmfrF57eg9FQeWK2uTw5hbpI33mFpjLpfsP44NYVirOv2WFUP+8sgNq84zq00N+lrCUMe3NwPqmewFxDV+scstX53GzmL2iA==
X-Gm-Message-State: AOJu0Yw3sa6FWonSZ7ihUGYdE35GdFgfZlhOuMQClYoBZ4DnPmuG/gOK
	MzUjeSRSR4IAFpk3YOzoy8ZIbNIg+UzyUyliQMVRyUEujcykSghp4eOY6NsgTMY=
X-Google-Smtp-Source: AGHT+IH2dwcdWcsCN5LSSxUGg3P495Lui57f35rqpd5CqDHf/YYIimlDAmIlZZClVTpdVINKDMF6sQ==
X-Received: by 2002:ac2:48a7:0:b0:52f:c24b:1767 with SMTP id 2adb3069b0e04-5309b27228bmr7804179e87.19.1722428314320;
        Wed, 31 Jul 2024 05:18:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c19febsm2196526e87.225.2024.07.31.05.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 05:18:33 -0700 (PDT)
Date: Wed, 31 Jul 2024 15:18:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	kishon@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <knjl4q5zyqz3wrqp5aawgpxk6aqggvteb72enpsgweulgrxmnu@ol42qtug4xvi>
References: <20240730100351.51454-1-manivannan.sadhasivam@linaro.org>
 <ZqoY5kFLDEmkb495@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZqoY5kFLDEmkb495@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_051836_546652_116DD709 
X-CRM114-Status: GOOD (  21.63  )
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

On Wed, Jul 31, 2024 at 04:28:46PM GMT, Vinod Koul wrote:
> On 30-07-24, 15:33, Manivannan Sadhasivam wrote:
> > These register prints are useful to validate the init sequence against the
> > Qcom internal documentation and also to share with the Qcom hw engineers to
> > debug issues related to PHY.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-common.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> > index 799384210509..e6a6bcfcac28 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
> > @@ -9,6 +9,7 @@
> >  struct qmp_phy_init_tbl {
> >  	unsigned int offset;
> >  	unsigned int val;
> > +	char *name;
> >  	/*
> >  	 * mask of lanes for which this register is written
> >  	 * for cases when second lane needs different values
> > @@ -20,6 +21,7 @@ struct qmp_phy_init_tbl {
> >  	{				\
> >  		.offset = o,		\
> >  		.val = v,		\
> > +		.name = #o,		\
> >  		.lane_mask = 0xff,	\
> >  	}
> >  
> > @@ -27,6 +29,7 @@ struct qmp_phy_init_tbl {
> >  	{				\
> >  		.offset = o,		\
> >  		.val = v,		\
> > +		.name = #o,		\
> >  		.lane_mask = l,		\
> >  	}
> >  
> > @@ -45,6 +48,7 @@ static inline void qmp_configure_lane(void __iomem *base,
> >  		if (!(t->lane_mask & lane_mask))
> >  			continue;
> >  
> > +		pr_debug("QMP PHY: Writing: %s --> 0x%02x\n", t->name, t->val);
> 
> This lgtm, but fails to help when offset _might_ be incorrect, including
> the offset value as well (not just the name) would be better imo... 

Can we please use dev_vdbg instead? Having dev_ part makes sure that we
can not mismatch PHYs and the sequences. _vdbg is less important, but
I don't think we want this in the log messages unless absolutely
required.

Also, could you possibly apply this to all other QMP drivers?

> 
> >  		writel(t->val, base + t->offset);
> >  	}
> >  }
> > -- 
> > 2.25.1
> 
> -- 
> ~Vinod
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
