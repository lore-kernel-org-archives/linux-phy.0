Return-Path: <SRS0=/0rM=KC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9E0C43461
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:41:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B18ED613ED
	for <linux-phy@archiver.kernel.org>; Fri,  7 May 2021 06:41:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B18ED613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LktyOnSlrbKV1pdTAvUOx10FxOjZhwzugrxsPH+i1Rg=; b=qjq2bC9xjSmBkgWJ4lf0N14vq
	fIbW4k1IrkEjgOt6A+HHsNqsileLjQ6dqOc/iPviWmbh8KNZZ1vCeADo18IegXWCdbXoWXqurHRPl
	YEUa/wnaAze0aYPWs34Se0dYCJMolfq5uAkfPrx0mnwpznvRyE0ufqWFbp8vDGVvg0QK5H9hdodjM
	DDfx04/HhHWaFN30mQijX8E6KS/foeYUVdfhddwqA6K0baHpSJXOoh0Gx5oP0yy4BH3TcQZlIi/RM
	IfwocAiWd3pu6Y18xorN5xnsGhjvwlMiWW5TK7i1rUCXIHPufeYxnodXd1/JS3ZmAV3mY7acbxldJ
	7bgc44Jsg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leuAs-006IXC-1f; Fri, 07 May 2021 06:41:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leuAq-006IWv-1i
 for linux-phy@desiato.infradead.org; Fri, 07 May 2021 06:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=s3n4fr9dTk5xRx8UuqHEXWcQIVk+nbzaIFIelcFE2hE=; b=4J8XN8RsDrXFx+s5xRCqbqC8tS
 cDkOXSiPWpFqVNppTcbS7bkOuYMAX1BsglyrFoObiSUWKxrPSUz71wGwGU1jtoExd+eZLksDb93KP
 GciZ8TMaaW+TSXta/C+mOFi5g176GxjfVq08VooD2G+Klv4bp7xtw84JMmj7JBRJ6AnVHD5XksICK
 7DOFd/WJ66DqSF5tmD9snzeho8+Bc1jEkSyEkAxMzgOtXK+dYYdNaS1ebhD4d7p5XaXCo3jQ1TJ2c
 dXjXTuyjVBjAnQ33kGqc83LmHnBxXrwqU+INyJUTyBLQc6QmLnUrIZMdCZQen+cPyM1OP8iwY30NO
 aSu+m8AQ==;
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leuAn-006cp6-9O
 for linux-phy@lists.infradead.org; Fri, 07 May 2021 06:41:18 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 r26-20020a056830121ab02902a5ff1c9b81so7086803otp.11
 for <linux-phy@lists.infradead.org>; Thu, 06 May 2021 23:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s3n4fr9dTk5xRx8UuqHEXWcQIVk+nbzaIFIelcFE2hE=;
 b=M7xIUdn7ch+gJjW1FHSOUdQL0R3TC1bcnypTyGGHLc0cY76uZ/GIWoVonMCyVzFbGv
 vNZPMumaBIhYJ9zgZWVfngxBJf/e7uFWIdPgSl1rWCswsask5rmOI15kShycUTA+uViL
 h9gmPCxAsZmKgnMRqOJ+9SOhO3SsVguxcFIqOs2cP8RE3Mtak1lSUX0FQT0WXASAVzdh
 3LOLTfJ3d5LPnBzARHqYKpvNG0VFsBaYjRTvJ6v9/NYbgR2o9/BmSoqaVxL4g25fQGAr
 NrftC/BJzDoSqmWSkwPAL2RYAUkbvSI5FIJuj/QeyvaR8fAkiExWMwS3Q05HmIMuMtTD
 kKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s3n4fr9dTk5xRx8UuqHEXWcQIVk+nbzaIFIelcFE2hE=;
 b=asB0kF4GgoHoUZqTwKNVu47/p3J3Cgv79KG3Guc/8nFp4djqAX8ldF09F/Tg6fAwnS
 1BFFky/3CYZfkNgMwKZekZ64aEuolF9S0uNzeBb4LDg25WWbsMkfgmJTSaWuQNxaFT4S
 /gmXn6IpUUOTJHVzKIuUEjGhUnriIvwn2iwZq/1YXeHTwuc8OPgXknEQC+VG092FK30B
 GZLagQ4QoihwI7vk10IpgsPxFz/Xv6FTgqfUnydlMst188lzSxmEJUpALdjWFDGEmP3P
 jVizi8H0jXKbedk8dG+jBwpAyZ3DK3DbkW+O+KCr4jYBxSBFaV6ZQvY/GR7tX9xOU2a5
 yYhQ==
X-Gm-Message-State: AOAM533mm3LDiPLDyRqOF38Cmdw+7XeM3X1iV8xcYAhSATyt4JCpgQxB
 0svq5GAAkw7T6YGk+KmgSw3U3oYQN0QH/2xDt9E=
X-Google-Smtp-Source: ABdhPJyne8zPKeW8cqCNwfckghTjW6ZFggoSHasJeT5Zz9euA0cLMfZpibRLgdHdyvqBIvLcrBmYp2OM+0h3cPIpy68=
X-Received: by 2002:a9d:4e9a:: with SMTP id v26mr6905085otk.74.1620369676505; 
 Thu, 06 May 2021 23:41:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210507060142.17049-1-sergio.paracuellos@gmail.com>
 <YJTd4cl6ZsPieC1b@kroah.com>
In-Reply-To: <YJTd4cl6ZsPieC1b@kroah.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 7 May 2021 08:41:05 +0200
Message-ID: <CAMhs-H_4BPmLZiMc1wT+AdhJ7_=ttpu5LhaXtks84brSAxF5mg@mail.gmail.com>
Subject: Re: [PATCH] phy: ralink: phy-mt7621-pci: properly print pointer
 address
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-staging@lists.linux.dev, NeilBrown <neil@brown.name>, 
 Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_234117_369329_66F9507C 
X-CRM114-Status: GOOD (  20.34  )
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

Hi,

On Fri, May 7, 2021 at 8:27 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, May 07, 2021 at 08:01:42AM +0200, Sergio Paracuellos wrote:
> > The way of printing the pointer address for the 'port_base'
> > address got into compile warnings on some architectures
> > [-Wpointer-to-int-cast]. Instead of use '%08x' and cast
> > to an 'unsigned int' just make use of '%px' and avoid the
> > cast.
> >
> > Fixes: d87da32372a0 ("phy: ralink: Add PHY driver for MT7621 PCIe PHY")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  drivers/phy/ralink/phy-mt7621-pci.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
> > index 753cb5bab930..4705931fb072 100644
> > --- a/drivers/phy/ralink/phy-mt7621-pci.c
> > +++ b/drivers/phy/ralink/phy-mt7621-pci.c
> > @@ -272,8 +272,8 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
> >
> >       mt7621_phy->has_dual_port = args->args[0];
> >
> > -     dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
> > -              (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
> > +     dev_info(dev, "PHY for 0x%px (dual port = %d)\n",
> > +              mt7621_phy->port_base, mt7621_phy->has_dual_port);
>
> This whole message should be dropped as drivers should be quiet if all
> is going well, and only print messages when things go wrong.

Got it. Will move this into dev_dbg instead. Thanks.

>
> And why cc: linux-staging?

True, sorry for that. Ctrl + r search for previous git send-mail and I
forgot to drop staging from there.

>
> thanks,
>
> greg k-h

Best regards,
    Sergio Paracuellos

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
