Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47E3ACA0ED3
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 00:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EFLLgyKW7NDKhT9Cs74e0Vw+WIVTNRKn9c4TTu2Lx4=; b=UZKkvZbQVhsQhe
	2pcG5pmujU5iGvwZqeCj3ITu1Sw9+q6xrpM4WrH7gIErnT9Cnnsd7RKrCzBKlDu5ZmTY2Mw5yUdBq
	y8nD/gE3He0iqgvsCiJrxaQdR2f89PhI0BLbTnz9tVSjcKfYh3l7niv6bSlXM0kifonwHNfhsOIFZ
	/IjLSaYqRPpFGSjeYGmyLxfYDN9umWq1IzpgSyEECOPoN2iuZuRVdhDxPml4yUg/4XFQVGNIDpQg8
	TmRiU1A2duLBzg5e6kohX+HFb9tdSeb4KVKS72SXwJ9PTaneKB3L+yueIx4VS+BkOwxzWOp3rlpmN
	ltWLXkxg+UpY50LtDDMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slHhf-0000000Fsta-3rVK;
	Tue, 03 Sep 2024 00:47:27 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slHhd-0000000Fst7-1o7c
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 00:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1725324442;
	bh=0O/A4lCVXJDxmFbAgjL24Xb2vjqQhEJrhcsb++kedbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PgJfziKWlFdQiAVQ730ZvLBQRdHmSvnW1kjSLf6jvA3EfTDvj1ZYm8ILu2co4QYAm
	 Pw4T9rJkfdRlQo9Kn6nIM+liOx6Qr35l0V2bOsssp6MU0ZXDca/F1WpWam7vuXiPcO
	 ab/QHjdTjTciHWCjWtNOuwtdUZknTDqt/jRX+PuImM/T/CoQiZ0De6T0v0qQeHHUQn
	 Ff4hlD1Vv/UggmflAnKN51VcyRbsAR6/Wwd+6f0JCiE6/351q6kFeWphhDqmaKwhfG
	 fvDAONjan2ETi+iVl4Ieo5ELVh/qW8DU4EmdVU9jIN42ylnEuPDv3thC1M0XWIog6n
	 k+iPXC0L4M1fA==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id BD1B99B4
	for <linux-phy@lists.infradead.org>; Tue,  3 Sep 2024 09:47:22 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=OvrtsMRj;
	dkim-atps=neutral
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id CC1E5A8
	for <linux-phy@lists.infradead.org>; Tue,  3 Sep 2024 09:47:21 +0900 (JST)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3df57a519a2so2012878b6e.1
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 17:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1725324439; x=1725929239; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P7ARnFjZylRZ2oKJUg9WtJng/LRGDqMKM1oE5U4mL+c=;
        b=OvrtsMRj9tlyxly8D9Vz8dDRNwpkaHP3IRh6SNWbYZxENhKo1dBsgbR5/97mmBkbRs
         +YaJI79zy7GzSs/7TMQ0GfybDoXBFSjCz6KdRN8uHWWmBYPzlNd2CKSb2yE1mdjs5SR9
         pxWTjt8iDepWENvGt41yeyTcAol5U97tavi1MHl1BAUZXwIz521uGusEbZJnPiM0TQD8
         i3W+fV+28EYmCVLQclza53T+OE/WG12pkycKeaxJ3/Ba51u79W3fkqbCcg53yQSFuSQX
         UstYW/9+5q7CxDIXzXs+Lo6dKxXDkWVHSw5eIYRWNZm0ch7f6RgQYLBwBxU4/NElgBMh
         hysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725324439; x=1725929239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P7ARnFjZylRZ2oKJUg9WtJng/LRGDqMKM1oE5U4mL+c=;
        b=WcvSG8y3V4GMMCd/oR1eGK7uK8L0VUe20SEnkSROYNQRo9R9P6YRELZd4U/7df2gTD
         XSynnClul0KINaow8yUSKTMx/nlK5qWqtPw0ea20zFUwsr3FB2PBIE5Qbx1Yj8m+Z93G
         4QmYr6m3mvuQqnpYcom4xgZGrgoxFrWlR8WuAVCwXYuNxlG2U+aHx/u480GxaL4O3pVE
         tFqRTh9M3A7m63WD9MGJvC7P3Dwbf9/7SjxaFmkO7RJwyv2HwAl4yrB/95hLiMQ6uz7b
         ruQgh0WpoJtdfSxNApMar7sFvjVMCs9wYf72RN2Nh0VK4r/k4rp52RWsRJfZlqxLFMMV
         4Fng==
X-Gm-Message-State: AOJu0YzUMjN1JPa4+BWRj7EPlo+h1OTSCM9rogLq9hr/yTldbalp8g5m
	YTpynO5SotN5UmqZY0QLkIThmj4qEDUXUlOE/cDu8gwrFEJyszZvt/4k+I8NKOImH60qsfh6xz9
	qAGWXdxhY+9FNC75RzpBtGepvKztnvB9nalYYZJVE0k+HOp3I0zKP91OS/HYWDqQOnop1XbSV
X-Received: by 2002:a05:6808:1147:b0:3d9:384a:3674 with SMTP id 5614622812f47-3df22d0794bmr9595455b6e.33.1725324439665;
        Mon, 02 Sep 2024 17:47:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGB6Sde9zsaMe0tMPPO5JTt+xM/npdn6qChe52GLMN/HnLv/unqRL5WZ3snt4wDRUuJHaPG2w==
X-Received: by 2002:a05:6808:1147:b0:3d9:384a:3674 with SMTP id 5614622812f47-3df22d0794bmr9595434b6e.33.1725324439361;
        Mon, 02 Sep 2024 17:47:19 -0700 (PDT)
Received: from pc-0182.atmarktech (178.101.200.35.bc.googleusercontent.com. [35.200.101.178])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d22e77451dsm8149770a12.25.2024.09.02.17.47.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Sep 2024 17:47:18 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1slHhU-003N1Z-3C;
	Tue, 03 Sep 2024 09:47:17 +0900
Date: Tue, 3 Sep 2024 09:47:06 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [RFC V3 3/3] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer
Message-ID: <ZtZcit7HVzzedgdk@atmark-techno.com>
References: <20240830032442.226031-1-aford173@gmail.com>
 <20240830032442.226031-3-aford173@gmail.com>
 <ZtFfBs4HEShmJKsi@atmark-techno.com>
 <CAHCN7xJL-aS+kFp2YwtSSUUMoTBqZCsXb0qvCpYQGpJVM_qJYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xJL-aS+kFp2YwtSSUUMoTBqZCsXb0qvCpYQGpJVM_qJYg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_174725_604583_1E9C8191 
X-CRM114-Status: GOOD (  14.57  )
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

Adam Ford wrote on Mon, Sep 02, 2024 at 04:20:11PM -0500:
> > -       const struct phy_config *cur_cfg;
> > +       struct phy_config cur_cfg;
> 
> Wouldn't converting this from a pointer require me to do a memcpy
> later?  It seems like that's more work than just pointing it to an
> address.
> 
> > -       phy->cur_cfg = &phy_pll_cfg[i];
> > +       phy->cur_cfg = phy_pll_cfg[i];
> 
> I think this is would have to be a memcpy instead of just an equal
> statement since phy->cur_cfg  would no longer be a pointer.

C allows copying structs like this, it's fine to write it as just an
equal.
It's not 100% equivalent, iiuc simple assignment is undefined behaviour
if the elements aren't aligned but memcpy will work even in that case,
but for us this is not a proble mand the generated code should be
identical... Also note I'm only suggesting that because the struct is
tiny (1*u32+7*u8 is less than two u64), but this code isn't meant to run
very often anyway so we should prioritize readability -- if you think
it's harder to understand than an extra pointer somewhere I have no
strong opinion; as said in the previous mail if parallel uses are
possible it'd be better kept on the stack anyway...

-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
