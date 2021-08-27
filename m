Return-Path: <SRS0=0dgd=NS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38AE4C432BE
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 21:11:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0EA960EBD
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 21:11:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F0EA960EBD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XT575wnQnEceBH1CS6IUfcXMFqfHiKIICdK30D0p+Bg=; b=m2yXZ0hus1ITQD
	eLtmb46Vhd2ikEq+REkKivwpx6GXo3Nall0tbErTIFe3Q/kN8x7tvMs68EBXnlzVJecR2Jt9lJC0w
	/pw0wD9cEceO+LEfHSVhbubbMstueEuIE38Z8pwnMRm/BBpO6SQZvHAMgZAv3gl4WztkdywiLRZDl
	R1XYQO8QnVDu2niRSCiH9OpWkA1fb/knGHM7766eVM6x3QgBwXvp3LeYcVYJD0/E0WlleoZMSq65R
	w49PF37gfpJXg8Uo2EAOq2gbTqxzsNjEba0I90sHtsJhW+bTXX2yu9VynkriyK55otiSoxzh92diV
	b3fqpWmL2ONyuQIK0D9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJj7v-00DH4R-BR; Fri, 27 Aug 2021 21:11:03 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJj7p-00DH2f-Ax
 for linux-phy@lists.infradead.org; Fri, 27 Aug 2021 21:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=B04VA3ebYV41oXsvZWYgfVt4MtdWqlQMYtCEpPXnEN0=; b=my5E3FKOHcAhTmIywwAYQ6HiO
 CPM9UbbBRO8QztETw9Hb7bkmOxDj7r7c1YSl3c2uXOkrT/0KX/EM4uw2LBSkIjGStsTDs8XSOL7bv
 p1Cz07n+barJ8d7NOPFWl/mv6LDnBN3k1htqRVRT+Em6XypZLWuJ+FOJJycGtLaP1L/E9tTOuZp48
 oK2UaaenBGl1dF8Ae0Tw2YdaRBLpewEGkIBL1x9klgUAAHonr+CUCO5C1UIzdxBas0dH6yq9Zmv2S
 R0rb0BN1LIIJ+Psp5M+GdJmN+Yvdcgd+jhhGN3lD/IlzhB0aF+m3xLCA7SM8v8+eC/6s6YttvIncK
 C7oPleX3g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47764)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1mJj7k-0001dB-6j; Fri, 27 Aug 2021 22:10:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1mJj7j-00027g-L3; Fri, 27 Aug 2021 22:10:51 +0100
Date: Fri, 27 Aug 2021 22:10:51 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Cc: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: marvell: phy-mvebu-a3700-comphy: Remove
 unsupported modes
Message-ID: <20210827211051.GW22278@shell.armlinux.org.uk>
References: <20210827092753.2359-1-pali@kernel.org>
 <20210827092753.2359-3-pali@kernel.org>
 <20210827132713.61ef86f0@thinkpad>
 <20210827182502.vdapjcqimq4ulkg2@pali>
 <20210827183355.GV22278@shell.armlinux.org.uk>
 <20210827190234.72eakdvbgojscpkm@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210827190234.72eakdvbgojscpkm@pali>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210827_141057_810280_E7B92C3C 
X-CRM114-Status: GOOD (  10.51  )
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

On Fri, Aug 27, 2021 at 09:02:34PM +0200, Pali Roh=E1r wrote:
> I think that whatever is used (firmware code, kernel code, ...), DT
> should always contains full HW description with all nodes, and not only
> some "subset". DT should be independent of current driver / firmware
> implementation.

A "full" description of the hardware settings for the comphy on Armada
8040 would be very big if we included every single setting. There are
about a thousand settings - and that is likely an under-estimate. I
know, I've a shell script that decodes around a thousand settings from
the registers for a _single_ lane, and that's incomplete.

With many of the settings not very well documented in the manual, we
would struggle to describe it sufficiently well to get it past the DT
maintainers.

So, "full hardware description" is impractical. Sorry.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
