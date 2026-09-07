Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBB4C79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufLyKr1RnCOXCeDu0z/xURBRt/fVyp8X5zs1rJ/MRPs=; b=ANB8G3iHixxVYq
	9bUn4vycpdae1/aL6LANk4xddiFRqqAL/RattMxm7nQv7P68PVsomdOMNbZixJANskUN2nGZ9yYfZ
	nTgEkWqzvTjTZVueewr2j5sKroJrMpPVfIvpHz8iYWA32eTTshix1Br4/hBg/GATG8DYsn5/9wsEr
	bGAlybaGq1foRLiQY0A7uiV7eXAkq/uwGsJ1eVZOJ7MuPzVlNITIwWT6x3Grmqur42P0QYjKzfBsx
	/q5ab5AIq+XDmQNwI9IFp7KHfz5qo5yPgmeZK7lnXXe+4D08ta99ZtvzG1hKSo6UH77Sd93FBO3Us
	q10XaOFieVeIKTpoQonw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xfw-00000006g0F-36Uv;
	Mon, 07 Sep 2026 11:38:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xfv-00000006fzO-2F8R
	for linux-phy@bombadil.infradead.org;
	Mon, 07 Sep 2026 11:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2k3YSo3vpVW3e75vhErB5oixVDeaXIpJznt6jU4MH/I=; b=LKq5pPqpUKLc/nS+xm3vwLhaVo
	iO2AmHRZi637p7gPPxxdDuEEmvOghmr2K7UTixMXkkrgDMHbyV8tCQIr/GziHz8ls9otOs0OBLWU5
	QTclDGMflYNgocNexfPPhwdVS1zqHS94HtGagYvmVIhJ+mUWaKZL1mcyvDHL6BFDkUqc7qpSqaQXj
	sKtwVmk9r/x6tTDgMDDpkOwXEiDuOkz3TNcI9u7MvhR5c7t/VBA9qkyi96o8It3tfVuoDci/GCFle
	BDinEGtqG1mjMd163jjMrNpxAl3Fxo5k6lIIAGUAK5jFNqq+d/b/ok11UVNTKzm/dXpA/zIPjuH/H
	1Tfe2ILA==;
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3Xfs-0000000GAEn-2mOL
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:38:10 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2d560775ca2so23213625ad.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788781086; x=1789385886; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2k3YSo3vpVW3e75vhErB5oixVDeaXIpJznt6jU4MH/I=;
        b=gQSEBqI/lm9AmmlICFS7bV0y3iGyMKzMUjXA/4rOpY0MJchG+udezQBCcDxFYJYQvc
         usOyH5C//7zSVAcwhaO10/d7823NcCPnZUXbWV8CGB02wfJO0MOx2SU/AQzfl6AfN6Wf
         qsPZ1BsiJ9Z0DCqaW1KHTE24cqk0FsRd2Nc6BwH8xN5Eiz/MVDWYKBcgxvLk1uyewiW5
         GeEaZWFbQeUDGi333R3EuuYPlBsxXeRqVFVldsJIeVe1PZl6hIpoKJjRtqU5Q3ZdJMrG
         mCHhmizUxN5Zs+lh9S1kZwqph9WhT5o9B4j+8n48e1TZL5SxJEfItbRkOSrVxMJ/Ke2U
         mj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788781086; x=1789385886;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2k3YSo3vpVW3e75vhErB5oixVDeaXIpJznt6jU4MH/I=;
        b=fBweS78Ajoxf41MVhCesXwntBjeVzJn6hKm33HE0j7v+ndJIQoM+JEPLTE/08gU7Fo
         z/mkPucyzSbLfLkZJvu83v9nDRfrqBJSS8pVxKzTZWNuV9o7RS+eOTna7mr7JX3+3Eiy
         X9bTheDj/aiSOicZu1NAE1g1Gqu+cSdLDOl2qKRVO6/QpMam7AsXxZz9mddT1LIJmVrY
         kAryIJyYtDdCTXw3qB4VW+RVeKkRG8H4w/qQTjYluy2wB9+O+JSuthWZHS+pL+aQeVdw
         CbEzAA67VhDY5MnkXAb6FCiIQmQ5/6OPHdlVmfN6qJpaKZcpjsikRBSDvv35ulj32tXK
         +9QQ==
X-Forwarded-Encrypted: i=1; AKwUvBxTiEEux31edm05j9Pfm/fvNapYvR/NaMCNkNzalD0+zIUBa8oSSCxv/sMgv3QdtVcOF0AP3yVPXF0=@lists.infradead.org
X-Gm-Message-State: AFuF++kMq2OKP7DKSuoFnje/PhoWqKLHNzkHbao5HTE6oQkQNT/soF3b
	kJ4oWs0XWGHWqKIp1nFucpk1DyR5LH5LA7jEbxeiNbEQwRnnWkvXOCgf
X-Gm-Gg: AYBFou1yB4ThIGbNOffWY08uyl/p2D+2Pv4YtxNiR0e88LLtsPyXFY0diyD6d393Gvq
	mdgpXEboD1Kj4fDxkiTHyfgqJAkwNureTrgrU8p1fUSMNlGcGkTwvuTBKyP2WUA+2sffQo6rwYs
	O9wAFCzBcUmUr6P2IeNr9KOodnRprc0R8ftwxQ34mBWaGUVagVOUJg0MQqb+c56nBVPNNPruGai
	AOyUnM4aWEb0wcBHRNWNfy+li81j2Li5FScDAENHaCQmhklItdP1rZUTCAZ/X51+BjLuepVlZla
	HDSgodB8th8x2rCkSk/9G2uzqI4xsx9D3XtnbPOwQBlYOPCvMMktFh2N2iGBB4Tu5k5F0l5tLJb
	tUyiW7+uHAqPCsSBJLg/x3MtJm3dHCMBdVkEUfnN7XfkW8VdSKOLUyrlPjkFjkbie/GZVQnbXIO
	Z1b9AyO02jHYJdue2CLpoVAbax/yHOBbscM2lS7H51EJFNS194ai+5+0QmmbQ=
X-Received: by 2002:a17:902:7004:b0:2d8:d4d3:3fbc with SMTP id d9443c01a7336-2db12629346mr237775995ad.16.1788781085615;
        Mon, 07 Sep 2026 04:38:05 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db149ca4eesm44727255ad.66.2026.09.07.04.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:38:05 -0700 (PDT)
Date: Mon, 7 Sep 2026 19:37:35 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
Message-ID: <ap6hHV49iWexJlWp@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-4-inochiama@gmail.com>
 <20260907105611.uvhdywq2pwikfz3y@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907105611.uvhdywq2pwikfz3y@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_123808_887586_3DC93D3D 
X-CRM114-Status: GOOD (  19.54  )
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

On Mon, Sep 07, 2026 at 01:56:11PM +0300, Vladimir Oltean wrote:
> On Fri, Sep 04, 2026 at 04:37:07PM +0800, Inochi Amaoto wrote:
> > diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> > index ea47975e288a..13f9f030122f 100644
> > --- a/include/linux/phy/phy.h
> > +++ b/include/linux/phy/phy.h
> > @@ -81,6 +81,17 @@ union phy_configure_opts {
> >  	struct phy_configure_opts_hdmi		hdmi;
> >  };
> >  
> > +/**
> > + * struct phy_bulk_data - Data used for bulk phy operations.
> > + *
> > + * @id: phy consumer ID
> > + * @phy: struct phy * to store the associated phy
> > + */
> > +struct phy_bulk_data {
> > +	const char	*id;
> > +	struct phy	*phy;
> 
> It's not clear from your design intention if struct phy_bulk_data :: phy
> is permitted to be accessed individually by consumers. Personally I see
> no reason to. In that case, can you explicitly mark "struct phy *phy" as
> "/* private: Internal use */" (like struct regulator_bulk_data does,
> albeit for "ret"), or simply say in the kernel-doc description that it
> is managed internally by the PHY framework (as is done for both struct
> regulator_bulk_data and for struct icc_bulk_data :: path)?
> 
> This should help at least LLM review flag abusive users.
> 
> > +};

Yes, in my design it does not allow and I have no reason for this too. 
Because the bulk data helpers are for ones that does not care a specific
phy. So this is fine for me. Thanks for the thing I have missed.

Regards
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
