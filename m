Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B678DC7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 12:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oRRN/IafDuuhDNsnipX2v/rwbXu1XYq9o5k/9aoHi4=; b=4yQj+y6Q42biGz
	/BaAa/NqJutsvkgpf9mWADT5wJBs/FLOo+IvCvC9XG1xfC7t4RdAMv76/rH3Hk0Z6eRxNhhIyGUiG
	8Skq7yrPR2YSHu+bwhjs/mCGmG9gZX8vauCWeZTC/O+2HDxwg2V56eHSC98k2vTnG4NrRd9FQkMlL
	WVjxrBl6lV8uMUs2CPiwYbEv/U5yMBI9iIgmGjCCKxP+U22T/yFN9fr3aRA6mVLktrwUu74MRViWG
	nv8g9klKAcA3VfdSs1Eqak4bhBmsTi67jXvDRI0nmW4dq2K3W2iyMTNvU2/c6/O8wGXLdad25kpPH
	8+ugiHVkYf9uKiyA2mLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peEri-008zcT-1B;
	Mon, 20 Mar 2023 12:43:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peErg-008zbz-04
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 12:43:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F3DC9614C9;
	Mon, 20 Mar 2023 12:43:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DD09C433EF;
	Mon, 20 Mar 2023 12:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679316230;
	bh=3L9RSVyHVKcmoJzAucUoH9eNRK6jXEQQXLoDnI6KoZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U9HZSvj2T4jrnVdkZevOpl5TsEhVpNw5vvGGvE8p70PPY6Z1PdNDNoIR/vWwwmK+t
	 1a32z68S/H45gRK/f/yB5EuHyrstF3Uee2QZ1/rxWF3QVPClhviTUDxXjONK6xWvJ7
	 rz1J3UlgNQSZmNsPebL78BPfsyO7/svIEy/kqZWh8IbnyRKydPJEqBdZARljAFCV4m
	 6SvV2xxXQE/DRdVEjJLkZDOyjOs9jGg6vZbE0vsESj1Ii2+ncsYEqAMX9Sy4LC6nWc
	 M5WugU2WRItgpPM2JAOOW/yFkESzpVhpIKGj85navKXKNxFkszovhx86ZZ893aVyGa
	 CaM2JusOo5PnQ==
Date: Mon, 20 Mar 2023 18:13:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Colin Foster <colin.foster@in-advantage.com>,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v2 net-next 1/9] phy: phy-ocelot-serdes: add ability to
 be used in a non-syscon configuration
Message-ID: <ZBhVAg4hkLu56fsi@matsya>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_054352_093934_C831EFFE 
X-CRM114-Status: GOOD (  18.95  )
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

On 20-03-23, 09:24, Russell King (Oracle) wrote:
> On Mon, Mar 20, 2023 at 02:19:44PM +0530, Vinod Koul wrote:
> > On 17-03-23, 11:54, Colin Foster wrote:
> > > The phy-ocelot-serdes module has exclusively been used in a syscon setup,
> > > from an internal CPU. The addition of external control of ocelot switches
> > > via an existing MFD implementation means that syscon is no longer the only
> > > interface that phy-ocelot-serdes will see.
> > > 
> > > In the MFD configuration, an IORESOURCE_REG resource will exist for the
> > > device. Utilize this resource to be able to function in both syscon and
> > > non-syscon configurations.
> > 
> > Applied to phy/next, thanks
> 
> Please read the netdev FAQ. Patches sent to netdev contain the tree that
> the submitter wishes the patches to be applied to.
> 
> As a result, I see davem has just picked up the *entire* series which
> means that all patches are in net-next now. net-next is immutable.
> 
> In any case, IMHO if this kind of fly-by cherry-picking from patch
> series is intended, it should be mentioned during review to give a
> chance for other maintainers to respond and give feedback. Not all
> submitters will know how individual maintainers work. Not all
> maintainers know how other maintainers work.

:-(

Just saw the email at similar time around mine! I can skip anything
which is tagged net-dev in future, saves me time from useless endeavours!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
