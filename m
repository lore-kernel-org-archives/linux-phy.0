Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B44EC79F86
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 12:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsxW1XJYdJQxwBI3UPT/B8qhEQBRTFyqj6iNI3Deq6U=; b=xCqt8ZSHXSyoTF
	yIcL417oaHN67UQuIS2FskGfoIuUqX3I3KjbUxOE3+DTryuCwW6NLzFPg/WxITabxeSRZUS2Mebgg
	GWz2RrFquarjzo4JieOC4GK/FH4PwIwzCJYAVj3QzvrlOt78jWuuj1yvZCPq8eDVPPKH7Kn6GgpRp
	kbygpkOh31hZeM9cAEU3hPDVH61+o4aOWUVM313bpktMvzop9ZG4KGVRr5XPerQSv871RHe9H9twf
	+/mtDxKHDQpfvzBQOyueX/FN6Sj7LsP2stKtVj+88d0TkpW+QoFKDhbkRBfBPPBTn1AiOXvJjAgO3
	/yi+UPIMgENmqoT3686A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjU7-0000000BGFw-2zge;
	Mon, 05 Jan 2026 12:14:55 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcjU4-0000000BGDj-1Ubl
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 12:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767615289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pALCUxgG0Sih3gS1zvT5EYeP9u7uxFAHJ/wplVNqgIA=;
	b=CL8esZY1GYAaPV/IZ7WsWlwGBj13y/IQcaqsIRArVMNb5/Q+NTkVPMf6qcDry5aokXap+e
	Qp3p7aLxStjtEwdF7suBn1LLJZHAcxe29ykATjuPh/UQWkCkZjh/RbkOKXgCNOGU26R51K
	fLMcj8qiKFH4EZ8ys6ngGpc5mZR7w5M=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-614-rsXoMmROP-yOf94rTUQFjw-1; Mon, 05 Jan 2026 07:14:48 -0500
X-MC-Unique: rsXoMmROP-yOf94rTUQFjw-1
X-Mimecast-MFC-AGG-ID: rsXoMmROP-yOf94rTUQFjw_1767615287
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2ea3d12fcso2321048185a.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Jan 2026 04:14:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767615287; x=1768220087;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pALCUxgG0Sih3gS1zvT5EYeP9u7uxFAHJ/wplVNqgIA=;
        b=R8XcBYDdTNT6c2be95s3HCJUBnNA2LSUF/SQJEaoBwCKtq9s5yB3olcEIjte4a/ZQL
         qShldoc6trr5dCGGdB3rQIRWNqbvgCmIcIh7l2cnZ0KfpZ6TqqDVDi66HC6ls9emfWb4
         7UNw/x581zagXQwTw+U+0DMnrUazdJ8zqSnSlN0krdwKPdwgS6uIVBn1J+KINPsOIbpb
         p/apibnD50iGvpGrxPoJYxzi/F0TeJOCSl5U/YXQ4/qVEBpu/xeVks95GPBJpqPs+BRI
         RbarYQQA7S7DBFFPJGVLRk+Zo7Y1mE6S7tfXAqezVVT34Bq/G1BqmOfUalP2X8DwKKtx
         DdPA==
X-Forwarded-Encrypted: i=1; AJvYcCXtIODPv5xz1th4kOu2FY2rilxKoNWwQyASSEMtexDmYl6jbNQgb6BgxNiW5gzP/p1npYtzUvAGDMM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhroRqAYyeyP3KWCdLlZ0WLLK38JzMuroSj6rnvMRTQ4oEpU5d
	qb7x4oDJ9SJhW8TavzjiVGgFhe8l0UoT7jL9iupAxcEEgLPcAzokp0HIJz/AdzXjXdHiZwLFVtr
	iUtupKp1swvJdPA/5JzJB2ZdK9q2ac7UeufXbinX7KfR06xrn6sJx+zUBZx6ADU8wM5+yQpulak
	0=
X-Gm-Gg: AY/fxX6J/jxyGWK5iQjV5nz7chR/ApyR/IRJ/u5gqFHFAao5V9FqHKNrFzqd/b5IYMT
	EDqkKbJHlhbmbCYHtXmk0/dYJEnM8S5HPO7q05+i0tRJNe0IgufdIaMad40LyYuy8K3tpVZc4Yx
	m/JJG78WaCzvAoS3m9AARo9Kuua6KPAFzW5T/PK14xzG1ny1lWPbjfOYzqdofCLhtroY9WLiQTP
	+dPhSrvMH5pYa9L5Hl61kIb5BYEY7RDgPT5i0pR9DOE1yP8JUdenxwkPcilA0TZOyxfGQXkw+4W
	tgpQeNZDAGERz3sVzNfTg9q8iHvY4lIkxvdkhfDdgJzR048MdKejlEuSUdAJorzjYOdPW8tfHEM
	78V2lKiYL2UZg39Lcjvvvu8C3NDT6U0+k+bdJbw4vsZf6
X-Received: by 2002:a05:620a:44d5:b0:8b2:d6eb:8203 with SMTP id af79cd13be357-8c090501db3mr7123130885a.69.1767615287423;
        Mon, 05 Jan 2026 04:14:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFX37kzKtyI4pVa2B6zkJ45mbfVDYf5b4bq6gq1EC+G2OfHkde7TEgVCraCyU1NH7StTtKeCg==
X-Received: by 2002:a05:620a:44d5:b0:8b2:d6eb:8203 with SMTP id af79cd13be357-8c090501db3mr7123126885a.69.1767615286882;
        Mon, 05 Jan 2026 04:14:46 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0971ee247sm3701650785a.27.2026.01.05.04.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 04:14:45 -0800 (PST)
Date: Mon, 5 Jan 2026 07:14:43 -0500
From: Brian Masney <bmasney@redhat.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Stephen Boyd <sboyd@kernel.org>, Maxime Ripard <mripard@kernel.org>,
	linux-clk@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 9/9] phy: ti: phy-j721e-wiz: convert from round_rate()
 to determine_rate()
Message-ID: <aVurM1XRqiYlzi1B@redhat.com>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
 <20251212-phy-clk-round-rate-v3-9-beae3962f767@redhat.com>
 <CAMuHMdXudWW3MPKqP0-d+DyMNRF-X62oyHRnj=MM_9MSpJw6sw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdXudWW3MPKqP0-d+DyMNRF-X62oyHRnj=MM_9MSpJw6sw@mail.gmail.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: U3aaH9lgVpRSbHrcVRN_Yz3M6hna0dzIxBS3YJQX4Pc_1767615287
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_041452_456453_947941C8 
X-CRM114-Status: GOOD (  22.36  )
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

Hi Geert,

On Mon, Dec 29, 2025 at 11:18:52AM +0100, Geert Uytterhoeven wrote:
> Hi Brian,
> 
> On Fri, 12 Dec 2025 at 00:21, Brian Masney <bmasney@redhat.com> wrote:
> > The round_rate() clk ops is deprecated, so migrate this driver from
> > round_rate() to determine_rate() using the Coccinelle semantic patch
> > on the cover letter of this series.
> >
> > Signed-off-by: Brian Masney <bmasney@redhat.com>
> 
> Thanks for your patch, which is now commit 27287e3b52b5954b ("phy:
> ti: phy-j721e-wiz: convert from round_rate() to determine_rate()")
> in phy/next
> 
> > --- a/drivers/phy/ti/phy-j721e-wiz.c
> > +++ b/drivers/phy/ti/phy-j721e-wiz.c
> > @@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
> >         return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
> >  }
> >
> > -static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
> > -                                  unsigned long *prate)
> > +static int wiz_clk_div_determine_rate(struct clk_hw *hw,
> > +                                     struct clk_rate_request *req)
> >  {
> >         struct wiz_clk_divider *div = to_wiz_clk_div(hw);
> >
> > -       return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
> > +       req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
> > +                                      div->table, 2, 0x0);
> 
> Is this correct?  divider_round_rate() can return a negative error code
> (from divider_ro_determine_rate()), which is not handled here?
> 
> Looks like several other users of divider_round_rate() use this
> same logic, and thus are affected, too.

Thanks for the review! You are correct that this is a bug.

I had planned once round_rate is removed from the clk core to post a
series to remove divider_round_rate() and divider_ro_round_rate() (plus
the _parent functions) since they call the corresponding determine_rate
functions. I'll bump that up on my todo list this week.

Brian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
