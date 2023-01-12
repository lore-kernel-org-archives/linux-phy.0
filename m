Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DFA7C61DB3
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 17:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbbmtuCOpSipa6OqLq6h3abJRwEpmbIkCSnA5PC3dBs=; b=BlvtXKGWR8J2nf
	jLSbYJBLvp9faPfQF2MzvMNMhIgt7Y0RTStDEnmZHajJBj2aSIgyaj4ebLtvFDg9PePr5U/lf6QWd
	TREWTeiNCs5RtTmuAPRGZp2SmzWxJxzr61yVoNMyeGMbw2fUSM9dXDC+EhuK2a+8MIyvc4JSy8Qgh
	ttQHNqlOFKoPNI1TlyivNuRCmepZg9c9FHZ/I4gyoLeGRmsW4oMWNrtnHaIls4V7NPA+4jt/36w4t
	iOsfLmE2RZEySsZ7zo7Zmmc4KDvj2If87PCqqz2/c4q3mxcA9BgyTfs0KKe3K7oLvdzgkljjGtO5J
	VIWmtjXCf4B1Tdy/G3bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1l1-00G7V3-IL; Thu, 12 Jan 2023 17:52:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1jg-00G6jj-Aa
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 17:51:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D1D1A620E0;
	Thu, 12 Jan 2023 17:51:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C551DC433EF;
	Thu, 12 Jan 2023 17:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673545891;
	bh=lvNaruzURY6N1iADoLOUBP6m+krDZ1q4OvF3FENwHWw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=afDS8FQDUxrdrN/Mh+8UHDcuI601ipjIAglx5CvqRWJsiiCxCRHB/LMTqnrOHSibc
	 veg325c7UXQYXftxgJT9HfXamqAxDtFqQ4FGgBnRWnpPrTjsTefw9/fyep1TFT05u6
	 yNp3GcbuT3VR5MgGPJjQUC8edclJJA67zFjV58804nP53h4unNGoFQtwppo4UtNsUy
	 7rqhiFCpfDgzEfSylj+AmLRqm+QH3YibtAdmecPjkvccQe8tNtkIy0eZEGtxsnncM4
	 +C3jier5+Y9GOEc1Ye3E5doocCt3PD3VC9ZvPrigbptsd/Hx93u+x7R3ZqJJMGfrtT
	 fvBaHZjz48bwg==
Date: Thu, 12 Jan 2023 23:20:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
Message-ID: <Y8BIX+js1ircJyb9@matsya>
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
 <Y6xP4YRAp68TfxFi@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6xP4YRAp68TfxFi@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_095133_350336_4381ED12 
X-CRM114-Status: GOOD (  22.18  )
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

On 28-12-22, 15:17, Johan Hovold wrote:
> Luca, Vinod,
> 
> On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
> > Add the tables and config for the combo phy found on SM6350.
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > Changes since v2:
> > * Drop dp_txa/dp_txb changes, not required
> > * Fix dp_dp_phy offset
> > 
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
> >  1 file changed, 126 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 77052c66cf70..6ac0c68269dc 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> 
> > @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
> >  	"phy",
> >  };
> >  
> > +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> > +	.com		= 0x0000,
> > +	.txa		= 0x1200,
> > +	.rxa		= 0x1400,
> > +	.txb		= 0x1600,
> > +	.rxb		= 0x1800,
> > +	.usb3_serdes	= 0x1000,
> > +	.usb3_pcs_misc	= 0x1a00,
> > +	.usb3_pcs	= 0x1c00,
> > +	.dp_serdes	= 0x1000,
> 
> I would have expected this to be 0x2000 as that's what the older
> platforms have been using for the dp serdes table so far. Without access
> to any documentation it's hard to tell whether everyone's just been
> cargo-culting all along or if there's actually something there at offset
> 0x2000.
> 
> Vinod, could you shed some light on this as presumably you have access
> to some documentation?
> 
> > +	.dp_dp_phy	= 0x2a00,

No sorry, I dont have access to this version...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
