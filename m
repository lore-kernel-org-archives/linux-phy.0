Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E66FCA0FF9
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 14:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acm6Ca04GwcpL9rMgGNBoR+da3LQrGN4g74ZtJczIVE=; b=rYlV+ya4QLBg6W
	CjXOdE2pnlF9qEW22selgBYb+MrXCKeaQqFc+CyuR+Fod4u9YDwCz8q7+FrNhE0r4kNHEftgajtGE
	NLFqWPLZjg2mYrcejJm6Q46s8y0Z29WmwqJJ47NR+WZRXnQsrT++2mct93l+Zz3Nlm9JNfZSetaNe
	2S2BxBFgs+W5c5FL/Pr4UvG0tvUdnD3sIr5kK9A2gV5AWiwVmTdqbJG/S4AJoQg+nFmlTGLewNTgg
	uTbCuOH7Qo8I7oK2ELO52F5gtrIe3svoOBU0HXHJAQuz+cyyg1J4u4xi/dLGkDNWi2VD5rd+1hDRF
	NzFGlpUVclS2Ft8Kx/Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us0Fr-000000063pc-3gRQ;
	Fri, 29 Aug 2025 14:39:03 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urw7N-00000005HNP-3rAy
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 10:14:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BgaAq1+/o4MTXOQsFUlUTRygIrRvSode8mSDebK5gko=; b=Zyd5Qe807Dgs8c2P3kL039si41
	A+aNSAolxPdeTozlvZ4562RFwuiTx+shEWU+6R5zv3KxtpymZH+91FW6uL86f9t4Y2vnTZBp+loTz
	MSUsU70CK4WPhxBmM9mcJJLKA7z3ufRtcmd2tR8HHwgu8pP/210bBT0N0BsYLbmXm0pXGvnp7/fxP
	O3N5DQfUZE4oakoVQ5ttsx1Bo88YooDetSZUBUYmpkcOYthuBILBwp213gsBnHVQj5vR5xunaJIdF
	1t/HVulYacA3GR2PH0LRwrT5qjVItcTFVR7LuaSbkcaI15xCZgQPWOl0Cv/WE6jy2fU42OEgBx/rz
	m6BdNEWA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56092)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1urw7I-000000002dQ-1Kog;
	Fri, 29 Aug 2025 11:13:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1urw7E-000000003ym-3ucY;
	Fri, 29 Aug 2025 11:13:53 +0100
Date: Fri, 29 Aug 2025 11:13:52 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: markus.stockhausen@gmx.de
Cc: linux-phy@lists.infradead.org, jan@3e8.eu,
	'Chris Packham' <chris.packham@alliedtelesis.co.nz>
Subject: Re: c22/c45 descision in phy_restart_aneg()
Message-ID: <aLF9YJh3eQtrzzqN@shell.armlinux.org.uk>
References: <029301dc18b8$19059e80$4b10db80$@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <029301dc18b8$19059e80$4b10db80$@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_031401_961200_D1C55E91 
X-CRM114-Status: UNSURE (   6.10  )
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

On Fri, Aug 29, 2025 at 09:39:46AM +0200, markus.stockhausen@gmx.de wrote:
> Hi Russel,

1. It's "Russell" please.
2. linux-phy@lists.infradead.org is not the correct list to be
discussing phylib issues.
3. You haven't Cc'd the other phylib maintainers.

Please resend to the correct audience. Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
