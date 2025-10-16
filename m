Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 810C2CCD19A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 16:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2arMPiDwUEPL6imbHBLN1rlLiJrxraGc5xzzXRfj0fA=; b=5GLypXZ1orWw+h
	8N/NsCu3poH+9hh9RVHEaGwEu2gisjSH3hgsSNrxHNUrBUk0r7YzN5EogwiYzdQdToxpvY5iojYW4
	qRsLCXkGEBLsyqP0q4cEWlb0tDKA8rZbbqs2taNGzOr0jJtVObFuDCW2YZO5XHN5KFmQLYA7XxJoZ
	xBekQjUddiqK3U6y9/8o6UcRgt4psCHZFnViVsE3PDPFo557NgXifEiKGH7dfXv6i2exVWDZrQ0dM
	gbo3768v0mYvA9Lm/K1jkbOtLGr6BI6zRag3nHABOv6tMQjCeWbcM35HcAGu/0mP46EF65yjbZSvI
	odXpwX7gWRC2Fad1jDnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Qjl-00000005PNh-1BZ8;
	Thu, 16 Oct 2025 16:21:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Qjh-00000005PL1-312R
	for linux-phy@lists.infradead.org;
	Thu, 16 Oct 2025 16:21:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760631712;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CA7cuB52W2mQEAqgkUGyrUbyJm9rGb31mdD8XpbhOA0=;
	b=AnQdXSbpbaqc+pJ5AFJnZd1+MTaEZTpyYBLt8EOnkDZVB1Eb8qeY27XRzoeElMREOyyqFU
	ULmSwLwTk+m1meb1mBkYc35xQ4U6jO8z/oASHPsfsUXSm2qFCk9GpJ1V+Z2mEoeFWFiPJb
	kH9VDsKR3AvS9iQRFryMqyjNVnpncHY=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-494-w08l5cy4Oy2CDy5Q6wI7AA-1; Thu, 16 Oct 2025 12:21:51 -0400
X-MC-Unique: w08l5cy4Oy2CDy5Q6wI7AA-1
X-Mimecast-MFC-AGG-ID: w08l5cy4Oy2CDy5Q6wI7AA_1760631711
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88e7bfe5ba7so321944485a.2
        for <linux-phy@lists.infradead.org>; Thu, 16 Oct 2025 09:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760631711; x=1761236511;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CA7cuB52W2mQEAqgkUGyrUbyJm9rGb31mdD8XpbhOA0=;
        b=fITgTP/Tvbk9+Cbg/oe6kGq0leVpHE7dSPjLJXFxYkAN1oqyXCc4mJtPME6zTjQb+J
         lxivPgkIrT6vl1CR0Ad702CpGhXHMx+Ac9QoUGgtn/xdvXcvFxGiuk0szw3z0M4nd8I+
         eWknuvqAGltMKjXC9pBss67UhaZsN2hJwzN1fkiU+ZH4n+fZ0+kWRS6vE+MGfHxDvKr2
         LOEjcyKDHtbusvMVWmDqrc39GdRmils/2jbep+U8nzPwLrP/djtWPPXMK2EMgDuyY+M+
         kK5VG4SIo8at+5Z+M8CpvP+PrEaE1qv2aR4FQHWfzisP3STiCvRQ/jshlWcWxgHbl9fR
         bimA==
X-Gm-Message-State: AOJu0Yz5aUgwB/610+sL0+Stqhzw5iiNVC+Obdeg/0lBmRjyqvQ1eA9W
	trYKnTj/w3fqmbNuTtKMJRL0wXgfOBtNqTso3XlXm7d7E5oDEPPwmhAD81+4ZY7pP//9BlEisLq
	/czV9KFabIs5hTF27aVWu/Zby6BvWbZH4o50/okYEb9dzkizmL1f1gwJ3rQ79tfPC+BE=
X-Gm-Gg: ASbGncuixfSz1uUaYbhM9FEEgCw3w67TToguz1MIdo5xAKR4VeafwwSGOYf55aZmc1U
	8NUQIfP3GhfAzlOsFiMlZmEs0ij2wf6Vu++hS4TVvxbXk+puENDuhYFwWd5RrpwTils/oB9HVn4
	eXjRgDp/92wG+M7dnaH256lhU53d7NtCIMQGBTVcmRmQC0y7543LtzJ0J9YJmJq9y/4tqwgSTye
	skopaifUKej0uy1fGExpDIlrFS1a9LfBrofo7iJK1rnHem5cGeuohRjsjWfUDPbnd7fYnDVqMKz
	c4UTROObR0ebtbZVKaVmu/tP+5f31MXJbRztRfjJbTKRVtrlaqNu5ynzzf/Msq1MSeJFl/iXFyD
	q2cxIl5CQgE8QHvQnBFemZ5fC0ZnVWI/chdH2gsYrDZT7XfBbtXFDs688cIBdcXnBhw==
X-Received: by 2002:a05:622a:1a9f:b0:4b5:ea1f:77ec with SMTP id d75a77b69052e-4e89d091468mr10559461cf.0.1760631710988;
        Thu, 16 Oct 2025 09:21:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4xG1metr/rpLguKpcRm9DUmy+rwmLo2vG6JrUEiGqV+HAheQWldgSDUdPw7Kfed4P6HKKmw==
X-Received: by 2002:a05:622a:1a9f:b0:4b5:ea1f:77ec with SMTP id d75a77b69052e-4e89d091468mr10559121cf.0.1760631710594;
        Thu, 16 Oct 2025 09:21:50 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e885a8e10esm36941801cf.11.2025.10.16.09.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 09:21:49 -0700 (PDT)
Date: Thu, 16 Oct 2025 12:21:47 -0400
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/9] phy: convert from clk round_rate() to
 determine_rate()
Message-ID: <aPEbm5qK8-hkV3w_@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RC_YXS0YX_G5RBwdBu9SzNwR5XBS2k4vao1OgjoWPjY_1760631711
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_092153_848905_45FE2A4A 
X-CRM114-Status: GOOD (  10.82  )
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

On Sun, Aug 10, 2025 at 06:45:28PM -0400, Brian Masney wrote:
> The round_rate() clk ops is deprecated in the clk framework in favor
> of the determine_rate() clk ops, so let's go ahead and convert the
> drivers in the phy subsystem using the Coccinelle semantic patch
> posted below. I did a few minor cosmetic cleanups of the code in a
> few cases.

I'm hoping to get this series merged so that we can remove the round_rate()
clk op from the clk core. The clk maintainer (Stephen) mentioned this work
in his last pull to Linus.

https://lore.kernel.org/linux-clk/20251007051720.11386-1-sboyd@kernel.org/

Thanks,

Brian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
