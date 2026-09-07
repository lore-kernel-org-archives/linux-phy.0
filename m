Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C779DC79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 13:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9D4VsaQ6GKyxiQwc1VSf/oZGSlNPkDMcKPHoDnLT4Dg=; b=tM5Q1Mv6VB+i5K
	/AgbtjRW9HvUhlftD7m2LILgkg8ubF/1bd5JNumAVNs8y/yyDIieCUwES5u1+WvgwLk09T0D4dHKV
	byBS/TriZeSJ/qxJFC4ksWRt+jwFN3UG6cma4uzd/otu1mFJU98/x7fFYqZrd7l26a/wqW343OwJw
	dL6HYb17aU1GKSwXc9Rrb8MUEHPQ7/I9jZvQ/VC7GEP9FDU6hrD0w2ZjpfycD0/H4yk70UPQlnAC+
	MsQBYjmMm1lJROHuRw9CHOneTCQddBKfR1TXd/NVnPwNRoqJDhyCq+pYIzqdAXTTn25HUduvYojUH
	WH3bVDLmfkn6E4yuXoJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Z1o-00000006tPb-0Ugl;
	Mon, 07 Sep 2026 13:04:52 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Z1m-00000006tOy-0UCM
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 13:04:51 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49d1331ce1bso305885e9.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 06:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788786288; x=1789391088; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Ozz1uZ9Dd3kKM267cb2w1ezLL6vpOE5QOnfezxsq4H8=;
        b=HdkGGtZPRyD/lkRZ7X3tJ7mXqO4dJg7vUJ1g4K9t+Htwp+9EaJ/1O9cLJ9rJ/1vTW+
         zQoAJJHL1ffq5fTdEYFm7DRdDt6dvip2CiS2ZacjvxAXDKfHeBK+ojNaBJnmr5Sg3V8+
         Q02XiZjXb7/BqSPlC605ZDvNh6tQ9GFuz0RiqbMhojaBw+Ck2K2ob9oyFgtzd5vcEVUZ
         jYLz+lreoOMzAmryIU6nksalHrQqhk9EnfD7NbrpLBNj8oCYrPObT+2yJ6x1ChlG9rLb
         JpbZ2uwirvb8dqBg7jXpedb1KLjWXrVZe8r9aYUK6vp1j5UIRd30T67iflYkbVZkJI2I
         b+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788786288; x=1789391088;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ozz1uZ9Dd3kKM267cb2w1ezLL6vpOE5QOnfezxsq4H8=;
        b=lEhLVTwn8ONk8niqOCeQ9n8j+5YY1yA4i3PqqnyLwLKd6pcRCgSU66AUyfvQG1PdR8
         zhV/MH0i0MFW4GNE6jubTcdxw7jSY4KpoYxruv2kdBjEsujj+mEDS/h2uj5RB9TPxPcV
         iNLIKAwS0YosxIMHdHz2wQCejdn9Bx43KLHPvZmZ/R3SrGQUVv5JqagQlCBC/AFXgjZQ
         EmlM1+EvlMkUyu9Dy6XSAEEAXGNoSJC02DgE++qyZLKosl9sH4W8+VWHWrRV/nWZAGvH
         7C1BGTDR2pOLYtRgjxuZPy49JyZPILtOiuVGkNPzA7/JRAw+83lnGlyL4VcAdkWgYx9q
         sFIQ==
X-Forwarded-Encrypted: i=1; AKwUvBxD+ThyOSV3YKSNAREA087Qiw4bzOekXL4Z4udZB3rs8CRw6Zs2MRJlFItd2whGwaCQox96eFW/ZVY=@lists.infradead.org
X-Gm-Message-State: AFuF++l41n/jVThTBC8ZydT9Z+ALvnr/ZEMUyITMdJeasBpo4TmV9sZ5
	OSapxodg57gE6NjPMR1eBTZMkxpbrTYouJ41ABGmJYPLYADO5eIndkmu
X-Gm-Gg: AYBFou3M6t1KFQWv8cyKEzorJa4GLvMNVeQhp9wTCtuMgSZp+I6mQn4NBaNtQNhH3/z
	4s69kh/VivnnIGSVhAKKYlG85P+mB/JU3B4qgyCSHcC0s9TG3x/YG7poiUdBb0Qlvwn8HiGYeV8
	pyfaJ8omgexTVqdqhCk48VgoVo6VPVx/QEyoAyY3XTXeFaePaPqjWZ0grGW+5N7pKK7Uh4BJPYg
	Oi6UYIzS5rpY7DdaOFD/mMwnTkIeO3nE2h6TynEBDH08esDeDH078ulBp7QcT1bRRld4+JPqEao
	kN/FzEN5E/7myoCgDr4xz8TOz1jafGa3+ojqqzoIdKEv72f2+TmRcNaaXKIR/pqhg2UMtPeO4CR
	mec58JPTr6Qd1qcy2URwyQ5zkdK1bzfgIc8/+bfVnOKlLytZnVdYeUxlTaOavDUWmg569vq0cgl
	UPPjvVHR2b7LU4XnKNf15UJZM9b2T35lkxRUFSbcUF9KyfkjlfxhU=
X-Received: by 2002:a05:600c:8b2e:b0:49c:cbf4:572b with SMTP id 5b1f17b1804b1-49d01dcc1fdmr129690105e9.2.1788786288114;
        Mon, 07 Sep 2026 06:04:48 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cfbdacc45sm280376825e9.11.2026.09.07.06.04.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 06:04:46 -0700 (PDT)
Date: Mon, 7 Sep 2026 16:04:44 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 0/4] phy: core: Add phy bulk helpers support
Message-ID: <20260907130444.zwuiczzhlk6yalpi@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260907102849.w7yn43x6m3f2rnuj@skbuf>
 <ap6fcP7Oct109dkY@inochi.infowork>
 <20260907115712.dg5pw4ajvrtdipey@skbuf>
 <ap6ngAxlztCAFSH0@inochi.infowork>
 <20260907121653.4ajpkjt2i5opmwzc@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907121653.4ajpkjt2i5opmwzc@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_060450_172889_ECE6D86A 
X-CRM114-Status: GOOD (  28.10  )
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

On Mon, Sep 07, 2026 at 03:16:53PM +0300, Vladimir Oltean wrote:
> On Mon, Sep 07, 2026 at 08:05:57PM +0800, Inochi Amaoto wrote:
> > On Mon, Sep 07, 2026 at 02:57:12PM +0300, Vladimir Oltean wrote:
> > > On Mon, Sep 07, 2026 at 07:29:49PM +0800, Inochi Amaoto wrote:
> > > > Yes, I have one for it. This is the spacemit pcie driver.
> > > > https://lore.kernel.org/linux-pci/20260907112606.465778-1-inochiama@gmail.com/
> > > > 
> > > > But it only uses a few of these helpers. So should I remove all the
> > > > things that are not directly used, and let others add these if they
> > > > need?
> > > 
> > > How many functions would go away, and how difficult would they be to
> > > reconstruct, if we only were to add them on an "as-needed" basis?
> > > 
> > > If the answer is "many", I suppose you could also leave a note in
> > > phy.rst that links to v2 and mentions unimplemented functions because
> > > they lack a user.
> > > 
> > 
> > In fact I think it is happy. This PCIe driver only use three APIs:
> > - devm_of_phy_bulk_get_all
> > - phy_bulk_init
> > - phy_bulk_exit
> > 
> > So most of them will be removed as only a few are on the path.
> > I will follow you suggestion. Thanks.
> > 
> > Regards,
> > Inochi
> 
> I think you should call phy_bulk_power_on()/phy_bulk_power_off() as
> well from the PCI controller driver, even if the PHY provider driver
> doesn't (currently) implement them. The Generic PHY API is about
> offering some degree of mutual consumer<->provider intercompatibility,
> not just a pretentious indirect function call k1_pcie_init() ->
> k1_pcie_phy_init().
> 
> So those 2 functions should also make it to your v3 patch set.
> 
> BTW, do you need a stable tag to be provided by linux-phy, to continue
> your work on PCI in this development cycle? You should mention this in
> your cover letter, because it does require a bit of maintainer
> preparation beforehand.

Since we were talking about drivers/ata/libahci_platform.c on the other
patch - you could consider also converting this to the PHY bulk API and
this would give you some more coverage so that you don't remove unused
functions from your submission.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
