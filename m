Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27DDAE75450
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 11:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNJdM/koAfaJNC6/8LZ9QNmJ/w2br+lw3v7W2ub3+PQ=; b=nssoVM6UFbTFyb
	5lR3jVK7KizirGOgQwP0c20ab6YV07JT5UXdnr50hU6qiQHFWnpCJvvpr3E7Tle4C1H7W8Dyh/gQV
	BHTmK+UCPvOohtuKdI061HMcoYR02IJDM4OtBAclPR1iR0Yt+dXmZujvktwl42TVzKLCB5pqPQAee
	D8qHSayDKWyin2ZDBYSg+1NNmoyRgG2O0eIH90mU49KfRefD6IAnnUHe8FeJVYVnhvl5fyg2wMclr
	SgPpAg05pk6+gLyWJ/mEnpXTm+8bajbRgkS1ARGj+B25uRbPzww7X8mFEtoTEJHK6+WqnEQAn8LMZ
	GPT3i6tuMSMAS/j0OaSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qndbs-00EXU0-2T;
	Tue, 03 Oct 2023 11:30:40 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qndbo-00EXRX-1u
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 11:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jlPBiz6YnL2NYFBK55phesGvUBLZ+89HEJmTlxgK9f4=; b=VAIIFLUYpOGwDmV8aCKHeW8gGb
	U3RBTS5wCBKmB1pgF72Ssf0NFipGX8Vd03XCPOBqW4TfbNJYOTP51zEZ1fIxjo9/fFVVaOAaZs4/q
	U3TxpGUxmja8TKZAMkquJaCpJQs+tORA2p/Jo2mYSsnd4JQTQ0dWySaIPEMz/9sK0J8pEZF95bYDH
	4XO9KrSYdSjpbY8Nz0euAzkvfN6HrtW4xNFD8qw2IaCWEkpHmA6qswz/sS3C569x1U/+Mg5dnnX/H
	CuIVGVABIceYkABY+s03vq2DPO/pozyqb2brhu6SPzUA08j/wcojJHiSKcSiB9Ln7BYDvxbhos0SY
	zP1munTA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41312)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1qndbk-0001cN-20;
	Tue, 03 Oct 2023 12:30:32 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1qndbj-0007qP-3i; Tue, 03 Oct 2023 12:30:31 +0100
Date: Tue, 3 Oct 2023 12:30:31 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH v2 net-next 09/15] net: ethtool: introduce
 ethtool_link_mode_str()
Message-ID: <ZRv7V3RBnydtvRzO@shell.armlinux.org.uk>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-10-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-10-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_043036_626463_8BC8F9E2 
X-CRM114-Status: UNSURE (   8.18  )
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

On Sat, Sep 23, 2023 at 04:48:58PM +0300, Vladimir Oltean wrote:
> Allow driver code to print stuff like the resolved link mode to the
> kernel log, by giving it access to the link_mode_names[] ethtool
> internal array which already holds this info.

Looks good to me.

> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Thanks!

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
