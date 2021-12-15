Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BBF7C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 10:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwRM23mMJJBClT0GTVZQ6lbrpU+srpeArzyq4Gp6H3k=; b=Qd6ueNnOL8vFNz
	4B7zG0Sa2KbaqeVBl/zLtyUN8adrZkxUVu3MQ+PMzai/lOpIgCi+SR+lDh9eB08JOkomEw9PHBBx2
	U23ZyE9hNgZ2TWReCZIX9elQVNyeWmTmFXdwEiPxqyvRRrRRNtWMUmjB5zzCTpDR8zuydzGAyJVWA
	Af+8gFGpzVH3aT0hLzfQyA7UjhbYcCf8VQUJi85ToV55ZpXJa7sRcbPdiGpAfRMO6zJdP4WJftf92
	FM0dphQ6gdGQggX41f22Tb1LbqdiL2m4AuP3cfLWfZD6sQ7Mj39y5KV3+U6+0E4mZA/DJlw1s5RxO
	ZLfeioAC93fD9Yecb6pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxRwh-000JNg-6w; Wed, 15 Dec 2021 10:55:39 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxRwB-000J4v-Jn
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 10:55:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=gv9eywbYzCFEDkiPM7dgAEuRO3TyH6NHy6r2zf5+uvY=; b=gw
 JFVADgfeEtv9qzzva6hX8Tp6vLQnzpMCO8MU5UM+MEXZmcdGn8Vogpu/A5Kt5vBeGA+Wz1GAapeQZ
 tvqRFwNzJKh5XVX8X0Koj2y4OyA8T/yHKBxVEeiZUWuMLo5rIz3ZOKKtLjWNZNkCHezKodpyOwez0
 sfepRoSO8dCSeoc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mxRw4-00GdUB-Qh; Wed, 15 Dec 2021 11:55:00 +0100
Date: Wed, 15 Dec 2021 11:55:00 +0100
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
Message-ID: <YbnJhI2Z3lwC3vF9@lunn.ch>
References: <20211214233432.22580-1-kabel@kernel.org>
 <20211214233432.22580-3-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214233432.22580-3-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_025507_691152_206D803B 
X-CRM114-Status: UNSURE (   6.38  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Dec 15, 2021 at 12:34:32AM +0100, Marek Beh=FAn wrote:
> Common PHYs often have the possibility to specify peak-to-peak voltage
> on the differential pair - the default voltage sometimes needs to be
> changed for a particular board.

Hi Marek

Common PHYs are not the only user of this. Ethernet PHYs can also use
it, as well as SERDESes embedded within Ethernet switches.

That is why i suggested these properties go into something like
serdes.yaml. That can then be included into Common PHY, Ethernet PHYs,
switch drivers etc.

Please could you make such a split?

       Andrew

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
