Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E4B9CD5BD2
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 00:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RfkwzX7fKOXEbDAaG5GF41dVKT3sZF4IaRU9aljQRk=; b=yqlbvYXu42qOgs
	HM27xiCxEXUBIaO1d3iO7wS6qniGKx9xFoX3gOswmdtU8HXnPV3WocrSUvSl5umHCrPi9p111Va05
	gOD0e/j8R7lqTQAO4VSd6py35Iwnsd5J769QnscOvI8qVvqW045YZU/cr0QWf5B4Wp1hdkVenT3OV
	kedl1WchMGzTqOJof5Tya0nJ+NLV4NYDunvcci2uQynXgIlrN1p1GKQfKnIOwQ7kFu1O0qDFpB7wF
	nVbJXHwY2MWk0imov4sC6TmJjlAOmPSq/8q/QYmjVbcuJMkCVl4uUeVfLZf+WdbQJNIVLDeoasF06
	fx+TcNATsXqjMWW9ivZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS2cG-000000036gp-2ybU;
	Wed, 27 May 2026 00:59:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS2cD-000000036gV-49hp
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 00:59:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 41D224341A;
	Wed, 27 May 2026 00:59:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94CE01F000E9;
	Wed, 27 May 2026 00:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779843560;
	bh=TYit9wEjI/z76WLsn7smknCgNatfhJCM1ND91bSyqVY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=VWUh/cI8pSri9IhaHGdmrY9ujZl9ULA+2s4qCexgeQKsj32HcfEmuMSVNtfZmw/ha
	 CqVN4p/0+l9epUel9NgX/4G62QCypzFhEyez28aFzMhoATzHet5KdJ4CJ10CLxRqdi
	 TS5nQUAfb8eqbNwCQ09LRpYSXzoPtWB0nlxqw3+f4AX6Ci3k11UhBdqepyxWdMlx+D
	 hQsJIl/s5P6nCxJTnsVPHEqpLP+VInXWQ3iROIjF+sPwUnod0vovM4pOowcYYR/pJ2
	 zrhbDmUx97jIsmPXhbsKrSCI75X5K1x7sMGWGbhqjAl8j1I/uAoPvdNaVj87ye0L33
	 pYU4OS8ZPPCgw==
Date: Tue, 26 May 2026 17:59:18 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Petr Wozniak <petr.wozniak@gmail.com>
Cc: netdev@vger.kernel.org, maxime.chevallier@bootlin.com, bjorn@mork.no,
 andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, jan@3e8.eu
Subject: Re: [PATCH net-next v7] net: phy: sfp: probe for RollBall
 I2C-to-MDIO bridge in mdio-i2c
Message-ID: <20260526175918.472aa0f3@kernel.org>
In-Reply-To: <20260523151859.1665-1-petr.wozniak@gmail.com>
References: <20260523151859.1665-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_175922_060610_D6BC82B2 
X-CRM114-Status: UNSURE (   4.93  )
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

On Sat, 23 May 2026 17:18:59 +0200 Petr Wozniak wrote:
> Subject: [PATCH net-next v7] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in mdio-i2c

Still does not apply on net-next:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/
-- 
pw-bot: cr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
