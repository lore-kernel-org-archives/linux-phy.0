Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D82BC7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 13:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ev9C34FeAdQcsNn5rz/+3N4+Sr70tYyXfAVFmk3HDM=; b=kmDgFE6xez6/57
	+RNrLcgXQSassM5FXY3sE5V2EAXih/Izoug4DA0m4MYm8ds8OWX/7Ay11dStHbzf76PALhIyIPPZe
	Ti16exKk+koC99Q9iS3mknk2efYp7BrgFdEsbUU4J6gPN6oOUFaZQdPTDgIChoY8VAQ958Rp7M3sV
	I4ON0B7uJNfCccICdoFcusz90MG/ZvlyUwlGw4WYyAQ9yy6hYm+LRMA2H7E85bXMhGW3IhYgujyWk
	mZV0P3UqKY4Zdx4fe7xzEsXsXr4eQ2h/sMx3DgP76jhFziqZYByORH9pwaDTEMK56MIh33QMwFBlW
	nHTLVArRIqbJ1TAkRUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6X9k-001vAR-35;
	Tue, 06 Jun 2023 13:55:28 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6X9i-001v8s-0v
	for linux-phy@lists.infradead.org;
	Tue, 06 Jun 2023 13:55:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686059722;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+2vpzcTLmhOhv9xEcha3D2h3sBmK8u0Uc+ZK8J67Uc0=;
	b=WkBUmzrPF80W0nQL0286X3Ok2aHd1uQCQujXSDgI/kB5yk2xhMHSShUvoXwSGemIPvxZ0E
	toE69ABfF30NDLgFKTepoIxiVs0js8hAXc91TeNDFn7ooxKYcdHDjw0OYWcfIbLIvAJnsR
	7MPcwoSAC8xtSIK08dhhoapGo6cNufs=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-339-EOBpHRUiNSeOogwiqxpzVw-1; Tue, 06 Jun 2023 09:55:21 -0400
X-MC-Unique: EOBpHRUiNSeOogwiqxpzVw-1
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-568a85f180dso90549557b3.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Jun 2023 06:55:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686059720; x=1688651720;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+2vpzcTLmhOhv9xEcha3D2h3sBmK8u0Uc+ZK8J67Uc0=;
        b=Hx6tk+vfOPRdtYIZ7GhSP3JEUJrlMrxfEbyr8BR5kDKVIgBkCEgmAtGGOthGwv29oK
         uKucJw4jf8pqmUVeTEUj5PZ65AkYPxt6ru5wNq34s7rcxel5wNPun1vNnveG38uJAYTR
         xx6FWClwXkHxw/jfV7ag/w1fxd+Yzec4CCRrQy3DKt7H0aPPTHaA9c+cygOg9D+4LelZ
         Nra9vb+ygEqv647pCe6nXzcVvKRvKVVDdKriJkWLK6yrlT82ngVutdc1LI0OLd8+GQhd
         tWpMSS4qJU7lsKUhI3ZztVM+2IfM7uCloGvr4PxALYCQ2jvrNt3xjPANAqL7rXrIjG/M
         Cf0Q==
X-Gm-Message-State: AC+VfDxqrp8LeB2vZOayzKv9KVDXwruXmQQX8/4jymlJTqVxqYR0t5Tp
	x4LXupmxxbUz1IO4RWS03ew5ix/gr0V2p4tY/Xgmi7ua1fu9MMIhxdFE5BCwWFJ+NYbrpKm5nS1
	g4BMsz20CHop3UlcdZPQ09x9Pzg==
X-Received: by 2002:a0d:d2c6:0:b0:569:44c3:b39 with SMTP id u189-20020a0dd2c6000000b0056944c30b39mr2095585ywd.11.1686059720548;
        Tue, 06 Jun 2023 06:55:20 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5Sxu0H11Z3SFSH722R28CZSrOu/ebvsQLCb2Cyw85/QC4Fg3z8y60d2PtVniYr9lJA5vtk7g==
X-Received: by 2002:a0d:d2c6:0:b0:569:44c3:b39 with SMTP id u189-20020a0dd2c6000000b0056944c30b39mr2095568ywd.11.1686059720247;
        Tue, 06 Jun 2023 06:55:20 -0700 (PDT)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::22])
        by smtp.gmail.com with ESMTPSA id a138-20020a0dd890000000b00565de196516sm4095534ywe.32.2023.06.06.06.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 06:55:19 -0700 (PDT)
Date: Tue, 6 Jun 2023 08:55:16 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Adrien Thierry <athierry@redhat.com>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Wesley Cheng <wcheng@codeaurora.org>,
	Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/2] phy: qcom-snps-femto-v2: properly enable ref clock
Message-ID: <20230606135516.beujjl2oyvt6gaig@halaney-x13s>
References: <20230605184455.34832-1-athierry@redhat.com>
 <20230605184455.34832-2-athierry@redhat.com>
 <fe51f704-3d24-d184-0251-39dc64a25598@linaro.org>
MIME-Version: 1.0
In-Reply-To: <fe51f704-3d24-d184-0251-39dc64a25598@linaro.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_065526_422618_7A149618 
X-CRM114-Status: GOOD (  33.81  )
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

On Tue, Jun 06, 2023 at 01:14:00AM +0200, Konrad Dybcio wrote:
> 
> 
> On 5.06.2023 20:44, Adrien Thierry wrote:
> > The driver is not enabling the ref clock, which thus gets disabled by
> > the clk_disable_unused initcall. This leads to the dwc3 controller
> > failing to initialize if probed after clk_disable_unused is called, for
> > instance when the driver is built as a module.
> > 
> > To fix this, switch to the clk_bulk API to handle both cfg_ahb and ref
> > clocks at the proper places.
> > 
> > Note that the cfg_ahb clock is currently not used by any device tree
> > instantiation of the PHY. Work needs to be done separately to fix this.
> > 
> > Link: https://lore.kernel.org/linux-arm-msm/ZEqvy+khHeTkC2hf@fedora/
> > Fixes: 51e8114f80d0 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
> > Signed-off-by: Adrien Thierry <athierry@redhat.com>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 67 ++++++++++++++-----
> >  1 file changed, 49 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > index 6c237f3cc66d..ce1d2f8b568a 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
> > @@ -110,11 +110,13 @@ struct phy_override_seq {
> >  /**
> >   * struct qcom_snps_hsphy - snps hs phy attributes
> >   *
> > + * @dev: device structure
> > + *
> >   * @phy: generic phy
> >   * @base: iomapped memory space for snps hs phy
> >   *
> > - * @cfg_ahb_clk: AHB2PHY interface clock
> > - * @ref_clk: phy reference clock
> > + * @num_clks: number of clocks
> > + * @clks: array of clocks
> >   * @phy_reset: phy reset control
> >   * @vregs: regulator supplies bulk data
> >   * @phy_initialized: if PHY has been initialized correctly
> > @@ -122,11 +124,13 @@ struct phy_override_seq {
> >   * @update_seq_cfg: tuning parameters for phy init
> >   */
> >  struct qcom_snps_hsphy {
> > +	struct device *dev;
> > +
> >  	struct phy *phy;
> >  	void __iomem *base;
> >  
> > -	struct clk *cfg_ahb_clk;
> > -	struct clk *ref_clk;
> > +	int num_clks;
> > +	struct clk_bulk_data *clks;
> >  	struct reset_control *phy_reset;
> >  	struct regulator_bulk_data vregs[SNPS_HS_NUM_VREGS];
> >  
> > @@ -135,6 +139,32 @@ struct qcom_snps_hsphy {
> >  	struct phy_override_seq update_seq_cfg[NUM_HSPHY_TUNING_PARAMS];
> >  };
> >  
> > +static int qcom_snps_hsphy_clk_init(struct qcom_snps_hsphy *hsphy)
> > +{
> > +	struct device *dev = hsphy->dev;
> > +
> > +	hsphy->num_clks = 2;
> > +	hsphy->clks = devm_kcalloc(dev, hsphy->num_clks, sizeof(*hsphy->clks), GFP_KERNEL);
> > +	if (!hsphy->clks)
> > +		return -ENOMEM;
> > +
> > +	/*
> > +	 * HACK: For cfg_ahb clock, use devm_clk_get_optional() because currently no device
> > +	 * tree instantiation of the PHY is using the clock. This needs to be fixed in order
> > +	 * for this code to be able to use devm_clk_bulk_get().
> > +	 */
> > +	hsphy->clks[0].id = "cfg_ahb";
> > +	hsphy->clks[0].clk = devm_clk_get_optional(dev, "cfg_ahb");
> Hm, maybe you could first check if we can get this clock
> properly (!IS_ERR_OR_NULL) and then allocate the second
> slot..
> 

The bulk clk api handles NULL clks without issue if I am reading right,
so personally if we're going to use the bulk api I say we carry the extra
slot unconditionally. No expert on this stuff but that seems more
straightforward. Honestly I wouldn't mind using the bulk optional API,
then checking the "non optional ref clock" manually. That's closer to
the ideal flow to me. Super opinionated though, don't take my word as
right.

> > +
> > +	hsphy->clks[1].id = "ref";
> > +	hsphy->clks[1].clk = devm_clk_get(dev, "ref");
> > +	if (IS_ERR(hsphy->clks[1].clk))
> > +		return dev_err_probe(dev, PTR_ERR(hsphy->clks[1].clk),
> > +				     "failed to get ref clk\n");
> > +
> > +	return 0;
> > +}
> > +
> >  static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
> >  						u32 mask, u32 val)
> >  {
> > @@ -165,7 +195,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
> >  					   0, USB2_AUTO_RESUME);
> >  	}
> >  
> > -	clk_disable_unprepare(hsphy->cfg_ahb_clk);
> > +	clk_bulk_disable_unprepare(hsphy->num_clks, hsphy->clks);
> >  	return 0;
> >  }
> >  
> > @@ -175,9 +205,9 @@ static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
> >  
> >  	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
> >  
> > -	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
> > +	ret = clk_bulk_prepare_enable(hsphy->num_clks, hsphy->clks);
> Aren't you dereferencing NULL if the optional clock is absent?
> 

Similar to above, the bulk api seems to handle NULL clks gracefully.

Thanks,
Andrew


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
