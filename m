Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9544CC77B7C
	for <linux-phy@archiver.kernel.org>; Thu, 20 Apr 2023 20:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jymGftvqcWy/9lWWSF8MkeBgTYWUx4BN5zgPPiYYWVE=; b=PFV2nbOhTJiNJq
	iLPHtNKM0c9KbJCTi4kMyIe8VCSMh/7+79HIVbLqKWjocLgZ+u3VIyX5+NvZ4MC8HsfrH7w+MbAR3
	KM83y1EM8WHdwLRkpVZlTRmk6rT0JX2Oz0BQ9WPucqJ8J/79u7rnzJxZBNMKVuxkK0jliQ3F86h83
	Q9W/riqniS/yxI4tsuz3ACDewAmqyj7BDUe1UNgBzce71A3dqH1mJ0ToNKQV7rgHVIgm1UE5pSsZ7
	IElF50QrHAGHb0BMtJAAN4vMVzd1JDY4Reb4rcC3arTqXigKH/CNZskCQmf0flLLk9Wm34yiH4/l8
	dJS/yCBaNxPSRcChtuuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppb6A-008y8u-0U;
	Thu, 20 Apr 2023 20:41:46 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppb67-008y7a-1f
	for linux-phy@lists.infradead.org;
	Thu, 20 Apr 2023 20:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=QZ7z7uB29RQBHquVUum9Sz9RB67bfCPqLptEE5uQ75k=; b=qfP64YB7LDbZsGZvH29OLAqhqF
	wmXSb08KfeWpx03CxhqsHu1hFwenNIQA+YkeA075mtTOnL8XyEz7ZX7VhDedIZxFCCjwrxADBssNI
	85aOM8EYIrgOtJSEhLSGc61OK+OmnYVe+4+xYjQNxVnuVllMpQikMKOCQbHZg7vXOqYY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1ppb5r-00Aoxq-5V; Thu, 20 Apr 2023 22:41:27 +0200
Date: Thu, 20 Apr 2023 22:41:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Herve Codina <herve.codina@bootlin.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 0/4] Add support for QMC HDLC and PHY
Message-ID: <277bcf23-146a-4fb0-b57d-5545770b5db2@lunn.ch>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
 <885e4f20-614a-4b8e-827e-eb978480af87@lunn.ch>
 <20230414165504.7da4116f@bootlin.com>
 <c99a99c5-139d-41c5-89a4-0722e0627aea@lunn.ch>
 <20230417121629.63e97b80@bootlin.com>
 <a2615755-f009-4a21-b464-88ec5e58f32a@lunn.ch>
 <20230417173941.0206f696@bootlin.com>
 <9e7fe32a-8125-41d5-9f8e-d3e5c6c64584@lunn.ch>
 <20230419090406.681e0265@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230419090406.681e0265@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_134143_554596_B8BBA3E2 
X-CRM114-Status: GOOD (  12.09  )
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

> I can move to a basic framer abstraction as you suggested. At least:
> - devm_of_framer_optional_get()
> - devm_framer_create()
> - framer_notifier_register() or something similar.
> 
> Where do you expect to see this framer abstraction and the pef2256
> framer part ?
> driver/net/wan/framer/, other place ?

That seems like a good location.

> I think driver/net/wan/framer/ can be a good place to start as only HDLC
> will use this abstraction.

> I can use the framer abstraction from the QMC HDLC driver itself or try
> to move it to the HDLC core. Do you think it will be interesting to have
> it move to the HDLC core ?

Having it in the core would be nice. But i don't know that code, so i
cannot say how easy/hard it will be do to. hdlc.c already seems to
have some code for carrier. So you need to be careful not to break
that.

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
