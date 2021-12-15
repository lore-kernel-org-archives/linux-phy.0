Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B8A3C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 17:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQZrFFGgBPvdhrQMy12XNu6yhSM1Cm+KwhffklFb1Vc=; b=ZoKEBLv6w3y6Xd
	6sLPcq6JqQZWflfVqZcgyXLu25LH4dHSzv4eQEF6ZMQXMiNIkN1aCnijcdQAfgenEVapUFq2cyDp0
	MOyx3jh1wzbcs8xCQySBddlWR6XiRnx8BfqMqVz5QajgD2XHM+seO/l7jJPYtngWWIX7G1B8ObhU6
	ZWwNxsskWwiEcTrTJBsM6Fv+vLO9QM2jk3oq/ov/Z8rdaKzBM50Kzb4EXbRpTHIOG6VuYQMcHKoMr
	iAVVsapwxzbdYleWIvdgK02B+e5lyS6AjvbgS6GNhXzILRGwAA12iDIfes0Rgv8YYRelBs+S0RijI
	RqEX5CEqolIpBxbGUu5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxY5r-00269S-PZ; Wed, 15 Dec 2021 17:29:31 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxY5p-00267T-4t
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 17:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=IsKqA2tK3+7cyYJ4TiDcn9G0sUxGo7/dPh+Fqmbhh2U=; b=n+fIMXH2aiCaP4x9M8ednECZpm
 BzIH7qpVni+mmPDt3vtq98NUlxBrul6ZbtPwPzijFdR9zPbvbiWyNgpWrdwDIXmVC3sqfjYAck3tR
 gypZgOtONnZ5RbuIcVRNP+S6MlDTDCvad7tDA8qguoNjwg1ZOq/bpJI5SQh6f9Ps86Ek=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mxY5b-00Gffw-M2; Wed, 15 Dec 2021 18:29:15 +0100
Date: Wed, 15 Dec 2021 18:29:15 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree 2/2] dt-bindings: phy: Add
 `tx-amplitude-microvolt` property binding
Message-ID: <Ybol6zHZQ12cViqm@lunn.ch>
References: <20211214233432.22580-1-kabel@kernel.org>
 <20211214233432.22580-3-kabel@kernel.org>
 <YbnJhI2Z3lwC3vF9@lunn.ch> <20211215182222.620606a0@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211215182222.620606a0@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_092929_215726_34327B35 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
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

> Hi Andrew,
> 
> and where (into which directory) should this serdes.yaml file go?
> 
> My idea was to put the properties into common PHY and then refer to
> them from other places, so for example this would be put into ethernet
> PHY binding:
> 
>   serdes-tx-amplitude-microvolt:
>     $ref: '/schemas/phy/phy.yaml#/properties/tx-amplitude-microvolt'

I don't know much about yaml. If that works, that is fine by me. But
we should probably check with Rob this is best practice.

   Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
