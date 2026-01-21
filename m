Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FDDCC4450D
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 12:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toCOAvdBF02K6ZAOK4aPT4BT5Jn3412yiUrhPqvKCZc=; b=w/JfhtnFkuJmCm
	Au4g6aflOoQk0x+EqL1mPWRD96dYNMEFWu3qopwom6USBw4JqoGlexTsrHDbc4Xo4VdAIkmLb4/vl
	xigKEskHp61TYCawAvhrImjKpau5MXxm8y0hQIm3AHuU/4PqBZ21v+3sclx775/IPzvIx0WUruxh1
	s/qXLA7rKpfttoQ0h/0/XeZ//Ozo3gjl/M9TINEb37HaPu+29aQViAvMald0KYIu4qBZwtIDKTAbT
	in3xHclt5SFUaOB2bSMjeDcm966yCbuxbWFqbQPTQs5WK25c8SikRL3q7MBfPQZpYxPejOgZo33gj
	9qg6ehHyrYcYeEyB20dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viX5Q-00000005OgL-2hm5;
	Wed, 21 Jan 2026 12:13:24 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viX5N-00000005OfX-1Grw
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 12:13:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768997597;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pR1+T8ar2wUy/+ZR9alOHlg05/eYLbiG2l/Es9gVEDs=;
	b=UTI88+isirTMk2r8imUMZpOm+6uR1Gzdy+DSVXuZOUt7dpI0GwmWe4ix8MpWLcGdpXP0MA
	1wN/mnp5xcLsbTpOEMc2ryu44CrOlvXbc6EVgwz+A0ja0AUNPTUnBtlyEhD1UR6NomvJiM
	5KeilWZOhbykPpTGGU4QlusQVf9JuM8=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-659-TNgP72VsP_KuP-6stM1nAw-1; Wed, 21 Jan 2026 07:13:16 -0500
X-MC-Unique: TNgP72VsP_KuP-6stM1nAw-1
X-Mimecast-MFC-AGG-ID: TNgP72VsP_KuP-6stM1nAw_1768997595
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89471437f64so23560656d6.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 04:13:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768997595; x=1769602395;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pR1+T8ar2wUy/+ZR9alOHlg05/eYLbiG2l/Es9gVEDs=;
        b=VLAonSA7LUedY3JsdUb2O9i9Cx/TcD1SaHJuUjy884pJ9tGL9dJPAdcGEjJVobt1Cm
         +aM8ckr4I9h7ufmYoI+be/R8zX8Wk3OmdJ4fxZvKQe47+ydJONXLsNO3OL5ZH/+4d7al
         sYEez2JqQZV/sqnj3TqCbwUOHr3vOKU+L/sN/h44lBHSIzWInsyHyxTubS50Ja4p31Y1
         xKLq1S5X7oqK0SlWvFSaJD5gaetAs09mCDHh/fmUqXFidQheyfaFmtLtTOesy3lePU4y
         G+L3ZYuNjcpTpZT1umVL4IXoXkTFD+4FdKAVEyuByP2pABzGrMs0CyHckj0fgJydCBvl
         ftoA==
X-Forwarded-Encrypted: i=1; AJvYcCU8H1m+U3+Edo4l4o8gLu9T8yp+hvfbm3U4jlgd9xHdpeycKvNEJQvqMA9fTqnFTqKrSuGfvK2zQC0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyg7p39n58Dg5rDUs20nGnMoJQ1GQutp34MOgzFI3Oo0pMzHNnr
	aCAVOKBzRBuFb0E4rQfuO+bZmbqyhNGHnZo+HruoGtocnYI9uYFcSKUGA8VaFZe+E5scXgRFvy5
	N0AUmhqWwXPrQfcCYUAb1uA81kNla3pJuHq1pH+CB4c8N9qQLW7AYPUzUl9SxiQjjEFs=
X-Gm-Gg: AZuq6aIaQg0NMU958b5e4p4OqwSFs8N15aM/lioDIINjbT8csrRJSB+/WdAMoHUZ5EK
	ID4IxtexOntUi1VWCXqPmLoNfA7MlBXrO/v9MMPoLKYswqY9oIPAEpdNXg+k6NoH7rk+XNo4XGy
	OGCv0sSr5+cCAMtJg05+ZHEEmE4XPuyHoozFBBO4jxMG1fuNhtQzf3MeswfjElQcdBdxnzB36CO
	VdY6ti7aaR7XJ4gbk1QmrsgnTRsm+n+VgX8kgDy5XwvavsqSSwTGBCsZ3zmoXO1z+zcZoEAtbpC
	sNjajWCkWCzkdmeBCeT39cuHQmhignsn1m0/5FtPnujH5UoPaZ7qF+0tceBj1iG2sQ0MLJrGljB
	Vuv/YkcawirmKlmxpLRdQ4QpPh04/bkFJFKQ5a7yXDbUY
X-Received: by 2002:a05:6214:5181:b0:888:4938:49e5 with SMTP id 6a1803df08f44-89463ec1bbcmr67876376d6.69.1768997595492;
        Wed, 21 Jan 2026 04:13:15 -0800 (PST)
X-Received: by 2002:a05:6214:5181:b0:888:4938:49e5 with SMTP id 6a1803df08f44-89463ec1bbcmr67876096d6.69.1768997595126;
        Wed, 21 Jan 2026 04:13:15 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8942e60428dsm133105716d6.22.2026.01.21.04.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 04:13:14 -0800 (PST)
Date: Wed, 21 Jan 2026 07:13:13 -0500
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 25/27] phy: ti: phy-j721e-wiz: convert from
 divider_round_rate() to divider_determine_rate()
Message-ID: <aXDC2ZVzLU6nUbPb@redhat.com>
References: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
 <20260108-clk-divider-round-rate-v1-25-535a3ed73bf3@redhat.com>
 <aWelbtaZjS4SZGQO@vaman>
 <aWj3LPq37Dr9OLU6@redhat.com>
 <aXCGlW4lgIImN8Eb@vaman>
MIME-Version: 1.0
In-Reply-To: <aXCGlW4lgIImN8Eb@vaman>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wuMc1wI2KJP4Wtaoj8Dp_fYpLwbuIoAsJK6u4jXsVMU_1768997595
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_041321_444329_2BAC1CFB 
X-CRM114-Status: GOOD (  26.52  )
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

On Wed, Jan 21, 2026 at 01:26:05PM +0530, Vinod Koul wrote:
> On 15-01-26, 09:18, Brian Masney wrote:
> > Hi Vinod,
> > 
> > On Wed, Jan 14, 2026 at 07:47:18PM +0530, Vinod Koul wrote:
> > > On 08-01-26, 16:16, Brian Masney wrote:
> > > > The divider_round_rate() function is now deprecated, so let's migrate
> > > > to divider_determine_rate() instead so that this deprecated API can be
> > > > removed.
> > > > 
> > > > Note that when the main function itself was migrated to use
> > > > determine_rate, this was mistakenly converted to:
> > > > 
> > > >     req->rate = divider_round_rate(...)
> > > > 
> > > > This is invalid in the case when an error occurs since it can set the
> > > > rate to a negative value.
> > > 
> > > Acked-by: Vinod Koul <vkoul@kernel.org>
> > 
> > Thanks for the Acked-by.
> > 
> > However, this patch depends on this other series of mine that's merged
> > into your phy tree:
> 
> Should I pick this one then..? If there are no other dependencies...

Yes, this patch stands on it's own, and it would be great if you could
pick up this patch in your tree this dev cycle.

Thanks,

Brian


> > https://lore.kernel.org/linux-clk/176661322399.4169.14248756511703978007@lazor/
> > 
> > Stephen asked for an Acked-by for that series or an immutable branch.
> > 
> > This will allow us to remove round_rate from the clk core.
> > 
> > I also have a small series to post that's dependent on all of this that
> > lets us get rid of the noop determine_rate implementations that only
> > 'return 0'. I haven't posted that because of the dependencies.
> > 
> > Brian
> 
> -- 
> ~Vinod
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
