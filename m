Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B260D44C48
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 14:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uN1fQQzq9MhTl7K9BcXx8MkAb1xk0n+X+EkzHl6aB4=; b=PfmTCVGrQ6Q234
	39P0C7s6DfCkHbLoSfC0xkih+rJWgHxwiQE0E6Q+u643baA3l01ZVQ1H6gE7CC0Q99FsckY/AbOA4
	C/RaZ0iz9+o31Fobsu6gDmyUTChjx8Z37Xj+BI4N1hs3hvMW7BuRd2+ec42GQBA0Z5A5N3c9p7/PC
	WI6Yeh8tzZxjs8acqHMBY74f0obcL3iTdLCl2qe47d8js4xX4DI7lV7UYc877zvY9aHd9mw9CSsHq
	eJcoQCg6FWz9DCIPLcn/bCdAcLr1rVja/1RvIxPVNyCvFd706lh1bh0sS7VpdzE44465vd++jwn7k
	BtloxQRmtTmXvrS2JdsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOBE-0000000CT3Z-0eJx;
	Thu, 15 Jan 2026 14:18:32 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOBA-0000000CT08-3KeF
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 14:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768486706;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=t4RC+ObhpewYzGNMozpFt20pSaSgz2F7mC9Tp5X8J9U=;
	b=TnUytmAmpJtfpqkjhQFamxMMZm6RCIrpU92o05qtxZLB372rMncrbU0vUSK1ih03MyiQzG
	FWM+yYhvAZKTRYkBq7Vf0Cu2hcGOew1JwfT6P8cM3IEyuA5yg7HgoPpl8Af/IlR0kF4ott
	6FaXQovWFpdLqS7DvcrmxsxJqB9NvXg=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-626-5-QVm74-NiW6f6LXQEIkTQ-1; Thu, 15 Jan 2026 09:18:24 -0500
X-MC-Unique: 5-QVm74-NiW6f6LXQEIkTQ-1
X-Mimecast-MFC-AGG-ID: 5-QVm74-NiW6f6LXQEIkTQ_1768486704
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8887c0d3074so28343406d6.2
        for <linux-phy@lists.infradead.org>; Thu, 15 Jan 2026 06:18:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768486704; x=1769091504;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=t4RC+ObhpewYzGNMozpFt20pSaSgz2F7mC9Tp5X8J9U=;
        b=aKsGTJo6tJ8FgpyK0sBYl07G1/hSTZ0cxkETs3/O9D9xn2kVeDnnHz/sOT/Fig5nQR
         b698+X5YBhSA1aHFLBzbvnloIg4czHm2wdITMMQTmO6TbHZDNj+Gf3gU1946w7kS4GQo
         kfI4aEIAQ0cEQVdjE7wECvPU2oayUGQh9athnHeYEktyEMQ3VKazJv3iope9YJ/6V2Md
         NLaZ3vKin6A/ykYclzusqxe1y3GQH3y5TsArvn8q3V0549mbcMvaOo6CBxwhMy/slhw8
         CptGj7guNrA10EVBp3QTlLyX1z7zniwiRXQ4MWDtzJC3aQd//k+BEQ38eF3Aj+/FrW94
         fbRA==
X-Forwarded-Encrypted: i=1; AJvYcCX3K3Wa5h7wrWtlSB7p6AW6t8c9gPlpA6NgP7B9eFd5++W0lrEYd8c/zoimTy8LHNyLi/3Ci0Tso1c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXu9/1TD2Yt4yvV9aq7cdGwV1a3N1eLxlS1bXlum7lk3BtZsuv
	nKv8fYlIuiVm/VLguby0oxtWvqM19RhHrleKQCkM1fDLg9foEt4R0ARAx5kvUTI7NIDEu70rvfZ
	n/ChFk9fPdS03oJC90Qs3m2sq7Nunut8syb7g6yv4Tsy6YO7NJ+M/sgUsZD6k6/kYEr0=
X-Gm-Gg: AY/fxX5Vx6d0kvgJkkaqoLPoJwN+lxqqkgt5qni3Z1sHwJlkEhf7lWB1xtqzeBpVWYH
	umTmdH35757AOnuLecKa6dLrq0ulDrtxoeg1opKIqInL9EEbzOay22tJVQ+s/Ie8tbWlQm9qigP
	NN3yR5TWSskYxvysJfW1MR+7shFbnPMw96eZtl/tUSoq6kqhMy7MeDVvh9piVRhLFZiTBTdXIQF
	MM0ksysdXZdAhIOjM+4/7JHa7c4OYmYlWycY+NOjZtmt9bKBmm8BSbproZaZfYGujgnxWQUs42p
	Joh7lQgmHwEWV+5p4AgATxBd9jHf9DND5l+852Kj7ALCWzGxx5RE/aXFAXQJUJNvYBCxge4hIIs
	nSWTM/M4=
X-Received: by 2002:a05:6214:508e:b0:880:38ba:a4d9 with SMTP id 6a1803df08f44-8927445deb6mr82449796d6.67.1768486703842;
        Thu, 15 Jan 2026 06:18:23 -0800 (PST)
X-Received: by 2002:a05:6214:508e:b0:880:38ba:a4d9 with SMTP id 6a1803df08f44-8927445deb6mr82449266d6.67.1768486703308;
        Thu, 15 Jan 2026 06:18:23 -0800 (PST)
Received: from redhat.com ([2600:382:8103:a511:9f9:74cd:13ab:4d59])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770e2a8fsm201085636d6.16.2026.01.15.06.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 06:18:22 -0800 (PST)
Date: Thu, 15 Jan 2026 09:18:20 -0500
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 25/27] phy: ti: phy-j721e-wiz: convert from
 divider_round_rate() to divider_determine_rate()
Message-ID: <aWj3LPq37Dr9OLU6@redhat.com>
References: <20260108-clk-divider-round-rate-v1-0-535a3ed73bf3@redhat.com>
 <20260108-clk-divider-round-rate-v1-25-535a3ed73bf3@redhat.com>
 <aWelbtaZjS4SZGQO@vaman>
MIME-Version: 1.0
In-Reply-To: <aWelbtaZjS4SZGQO@vaman>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Q_OJGPpp0f1uLsoPSimGEDrao1hFH41l1aWCXB9vqzE_1768486704
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_061828_906885_3551584C 
X-CRM114-Status: GOOD (  17.70  )
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

Hi Vinod,

On Wed, Jan 14, 2026 at 07:47:18PM +0530, Vinod Koul wrote:
> On 08-01-26, 16:16, Brian Masney wrote:
> > The divider_round_rate() function is now deprecated, so let's migrate
> > to divider_determine_rate() instead so that this deprecated API can be
> > removed.
> > 
> > Note that when the main function itself was migrated to use
> > determine_rate, this was mistakenly converted to:
> > 
> >     req->rate = divider_round_rate(...)
> > 
> > This is invalid in the case when an error occurs since it can set the
> > rate to a negative value.
> 
> Acked-by: Vinod Koul <vkoul@kernel.org>

Thanks for the Acked-by.

However, this patch depends on this other series of mine that's merged
into your phy tree:

https://lore.kernel.org/linux-clk/176661322399.4169.14248756511703978007@lazor/

Stephen asked for an Acked-by for that series or an immutable branch.

This will allow us to remove round_rate from the clk core.

I also have a small series to post that's dependent on all of this that
lets us get rid of the noop determine_rate implementations that only
'return 0'. I haven't posted that because of the dependencies.

Brian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
