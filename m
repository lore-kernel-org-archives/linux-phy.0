Return-Path: <SRS0=DrSA=NA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC09C4320A
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 12:14:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7666E6103B
	for <linux-phy@archiver.kernel.org>; Mon,  9 Aug 2021 12:14:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7666E6103B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGpqdMb+FUFfehth363qJKcKiqmEgt1eV0Ut4K8Mv+I=; b=4I2EE0zoOGNBq5
	BLY3UuurkKyPk9W7LhjxCkvTAGeZLWb0DIz3PJuioy7bdkUsoGAEKfrK+r5bOsYnQEUnSZuCFH9a2
	dEjdt2wPeL+nz43Mup40qldTzldv2YgzbZgrOnNkqJYgOrkZiAR0aZtRsWJJNrlL4PuOMV2zivxLP
	RJ/5fEaCFMCjqtt5A9WnCy7pYZgCdBWkspYnVth1fJi6cRw6liyfXYlYKc1Sa2ODXlANxp5kEYj8b
	hQObl4GMTxZmWZdZiZ2Usugrk98RspcLe2FrGaQ7pUmELhTlLMrbCn2rt0we4e3ksAzb8/IXaksJw
	Czxxpj7B9+sNkSHvyqkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD4B3-000Ukt-Oo; Mon, 09 Aug 2021 12:14:45 +0000
Received: from mail-ua1-x92b.google.com ([2607:f8b0:4864:20::92b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD4AG-000UKf-9U
 for linux-phy@lists.infradead.org; Mon, 09 Aug 2021 12:13:57 +0000
Received: by mail-ua1-x92b.google.com with SMTP id d22so6894070uaw.11
 for <linux-phy@lists.infradead.org>; Mon, 09 Aug 2021 05:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0zVmmfKjsh0O6iTcBeLVuCbww8hMd82b9Le3k2jDVtU=;
 b=IeN4102EglVq6qp9hh2HqtonBYVIky9VwVBQB6Gvbk+p1dYiI/3JCTZFyt6RjAOCVv
 SqVs6vpO9EUQgvDdFVlfIjUDD8jC9JEHJ0k6yvutzVOurcWoI/mtDoElrZnSG6JWdYeq
 OsIuCcaSyg1a4ujJK5zzLSSHRi3Ybw8Pv50hFnG9kLxd9oEq/cs984/0nNA3VJnGH4w0
 +ikRhA9yD6YgAOxn2aGfVdKuastyUfRBd215VG7V9YBL3ivYajvZSTNHdD8y6ZKW3J+U
 ZPIjod43oKSb14ICuisE/yhq+7hHgX0/Hcns0tK7u2E45Uk8dDBL2btJraHiPbaGp/EV
 sIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0zVmmfKjsh0O6iTcBeLVuCbww8hMd82b9Le3k2jDVtU=;
 b=YzVbywTuAIZxHpA9sMwv+0enCW9RM3n03bUnKGu/KFA4xSd5gk5PaM+LgbU2XInR6Q
 Rtt4O7EpFPqMifInmDn+lTMC0OxCkFoGTXExmlWOl2ERyTBb5yxiFcMolSOzju6EPrD1
 4nak3Z26OrA6AahiofiL03uWKVrxjOhSk874hxdlMoT1FSmA0B7jUJTFJUw8g3f9UHIi
 TXzgJAZj2HFJQX1WKFRICydrxbYUPQdGtpnTguI7OEtjF+JPebjtefNNu7gJZBSGV8oX
 VCyEDlZ5rgxEGq02g4sGZWrP/N0W49PXywpWIXw0YZZ3w432cq+13PvqYwn359iTq71u
 iqBw==
X-Gm-Message-State: AOAM531lQ4ZjEQFmXvxayFKFGpRJIvCW+HHMzFRYEsdZwfo97w/BUe8n
 xrsnrNBQqBPqsk6vWEox9ep/nHN+gHmzHscVoC3xjw==
X-Google-Smtp-Source: ABdhPJyEN/N8WiArAmLbZiGvWNJvbwnRfJLMyXEkrASw8j5gZV6393JjHpibblCKurC+9vhkAUpbaDe81QmpxRZ+PiE=
X-Received: by 2002:a9f:25a7:: with SMTP id 36mr14751050uaf.129.1628511234750; 
 Mon, 09 Aug 2021 05:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210730063309.8194-1-rashmi.a@intel.com>
 <20210730063309.8194-3-rashmi.a@intel.com>
 <CAPDyKFqZ-H3+OnYyyY7y611YrRAAMFq+W65DMfM4wSNvY_fzjA@mail.gmail.com>
 <MWHPR11MB17891909766F5295AF34B0578CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
 <YRDqQvKQ71/824Lu@matsya>
 <MWHPR11MB1789D2B707B39CB42322C73A8CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1789D2B707B39CB42322C73A8CF69@MWHPR11MB1789.namprd11.prod.outlook.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Aug 2021 14:13:18 +0200
Message-ID: <CAPDyKFp5HcCfsoLgBc=D9RKOrVY2SuV3FKsFCVT2=WaxZBsNiA@mail.gmail.com>
Subject: Re: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
 support to the arasan eMMC driver
To: "A, Rashmi" <rashmi.a@intel.com>
Cc: Vinod Koul <vkoul@kernel.org>, Michal Simek <michal.simek@xilinx.com>, 
 linux-mmc <linux-mmc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 Mark Gross <mgross@linux.intel.com>, 
 "kris.pan@linux.intel.com" <kris.pan@linux.intel.com>, "Zhou,
 Furong" <furong.zhou@intel.com>, 
 "Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>, 
 "Hunter, Adrian" <adrian.hunter@intel.com>, "Vaidya,
 Mahesh R" <mahesh.r.vaidya@intel.com>, 
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>, 
 "Demakkanavar, Kenchappa" <kenchappa.demakkanavar@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_051356_363287_3B9A75D2 
X-CRM114-Status: GOOD (  16.49  )
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

On Mon, 9 Aug 2021 at 13:17, A, Rashmi <rashmi.a@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Vinod Koul <vkoul@kernel.org>
> > Sent: Monday, August 9, 2021 2:12 PM
> > To: A, Rashmi <rashmi.a@intel.com>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>; Michal Simek
> > <michal.simek@xilinx.com>; linux-mmc <linux-mmc@vger.kernel.org>; Linux
> > ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-
> > kernel@vger.kernel.org>; Kishon <kishon@ti.com>; Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com>; linux-phy@lists.infradead.org; Mark
> > Gross <mgross@linux.intel.com>; kris.pan@linux.intel.com; Zhou, Furong
> > <furong.zhou@intel.com>; Sangannavar, Mallikarjunappa
> > <mallikarjunappa.sangannavar@intel.com>; Hunter, Adrian
> > <adrian.hunter@intel.com>; Vaidya, Mahesh R
> > <mahesh.r.vaidya@intel.com>; Srikandan, Nandhini
> > <nandhini.srikandan@intel.com>; Demakkanavar, Kenchappa
> > <kenchappa.demakkanavar@intel.com>
> > Subject: Re: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
> > support to the arasan eMMC driver
> >
> > On 09-08-21, 05:16, A, Rashmi wrote:
> >
> > > >
> > > > Rashmi, is it safe to apply this separately from the phy driver/dt changes?
> > > > Then I can queue this via my mmc tree, if you like.
> > > No, the phy driver/dt changes must go together with "mmc: sdhci-of-
> > arasan: Add intel Thunder Bay SOC support to the arasan eMMC driver"
> > patch.
> >
> > Why is that?
> >
> > What could happen, emmc driver will complain about phy not found and bail
> > right?
> This is right, but ideally both mmc:phy and mmc: sdhci-of-arasan driver code changes should go together

If patches are well written and can be standalone, we (maintainers)
ideally prefer to queue things on a per subsystem basis, because it's
just easier.

That said, I also noticed that a new compatible string was added,
"intel,thunderbay-sdhci-5.1". This needs to be documented in
Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml, in a separate
patch, preceding $subject patch.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
