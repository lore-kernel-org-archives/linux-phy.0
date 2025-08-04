Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16C03C87FCF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Aug 2025 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0NQjACumbCufC1tLCzjjt7AuA0CbykDdo8MDKsC6EM=; b=ltL0jX68NwhLfm
	c9EcuHwXgfxMR6/FKk6VJ2z8wcdAVsASOlmyMA+xgfD5EpxyOT9W+EHdjxrI2DN/O2vnZyL5+rk1W
	jatQXAVvVfLpC90OXNDJVBhlLgK6hI7XqD2ASz5dLIGJzNYhyNtwmrd2jcqyXOI/OdMvAIQhKhcRu
	I/KZ1ZIAsylM1HO6rRzEuWq4t1XO4Q3yat8I8iUnKRau7zLdEERyhROvTBeNe/vLyGTbCOC0c0pVl
	sWziSfcXE+9QIfCy444dtqJBpAFokAFledQPOo/roEMeHBCRscMaGuWp/3zOhnr4Ci3oq7Xj26yK8
	aSbHMbMrp7FLDfTzrOdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uixUG-0000000Aswn-3UWu;
	Mon, 04 Aug 2025 15:52:32 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwyE-0000000Alr9-2Qoz
	for linux-phy@lists.infradead.org;
	Mon, 04 Aug 2025 15:19:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=f1Hted8ZhuGeXw5n90ht1JZ+BCQLIBgv7Q3px4nrAlg=; b=N0xbsqUbLIkjvuSnioPeSVBR2M
	TtsiAw5YoYlgqQMaRmaiztDoH2p8iY+84gr3Maui9Xf6hW409sL0+iRxlzOCmjmC++BCg9cPpDC75
	1QJEIz2+blGAwpzbdpBwaNx+rIHGaKbztLGPZ6Svff4WlMrwTfH8mCy3YNjA1+YspKZ0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uiwy7-003isH-FR; Mon, 04 Aug 2025 17:19:19 +0200
Date: Mon, 4 Aug 2025 17:19:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Michael Walle <mwalle@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, nm@ti.com, vigneshr@ti.com
Subject: Re: [PATCH] phy: ti: gmii-sel: Force RGMII TX delay
Message-ID: <3bc6476e-7539-40aa-b499-253273357a1d@lunn.ch>
References: <20250804140652.539589-1-mwalle@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250804140652.539589-1-mwalle@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_081926_620051_13C5627C 
X-CRM114-Status: GOOD (  11.02  )
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

On Mon, Aug 04, 2025 at 04:06:52PM +0200, Michael Walle wrote:
> Some SoCs are just validated with the TX delay enabled. With commit
> ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed
> RGMII TX delay"), the network driver will patch the delay setting on the
> fly assuming that the TX delay is fixed. In reality, the TX delay is
> configurable and just skipped in the documentation. There are
> bootloaders, which will disable the TX delay and this will lead to a
> transmit path which doesn't add any delays at all. Fix that by always
> forcing the TX delay to be enabled.

Please could you add a paragraph:

    This is safe to do, and will not break any existing boards
    supported in mainline because...

We have to be careful of regressions, and such a paragraph makes it
clear you have thought it through, and what your assumptions are. If
something does break, listing your assumptions will help finding what
went wrong.

   Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
