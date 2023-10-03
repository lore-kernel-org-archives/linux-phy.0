Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16AB5E75455
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 13:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpKR3mRhzA8rr2M/S1VJfdURYMwYhK8rvc37DU8OAo4=; b=Mvo+Ll920lR7/b
	jp99raOrBnlNTft2Ef5Xrg/9VPXCc5Nc/uAEEE18JOm7J7O7FzOxyilDcsoiEv7nrczGqUjX9qjA4
	rqKFdApcIKso6V8ErDWHt8xcqMu+p1jjcvbfUM3I0/7DbOcd3mrnEUODd8SCnfkhEJ22nzwCGjwdj
	15TyLVPyE0vWetihrb2HJi42tDfLOxQ5eCbp9Q1RRFVf+riqUluwI7sOejpEJzorodGzpVC01qx/+
	IRLMGKuSVKyHPdEKcAUN2kChGCm+L5s+8psiPsa9JwyobEN8y1Lpwlx2oN6miHIWX3ep1b75hRyil
	eSokQLsfJQIPRgDDPT3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnfGI-00EhMr-2c;
	Tue, 03 Oct 2023 13:16:30 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnfGF-00EhLr-1O
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 13:16:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EWfCXC5jXN6LSu7StfVJcsUroz0qkWSBAs6yZAX+Jhw=; b=bBB/wH8mCQY0Bcxmh37zBAHXaq
	cjDhqk2k/nESyy2/0vMeS6LWS5ScVOAGg8VkV1SVmghzogDRNdhMKkiaWNauMmvHBxLAQu5dpZAUW
	JBpW44Xdxfl4BJNwRu0fvyLAe+fn+/8xrZFER3FF3jLwVLo3YWExi2zbyf6z23hKu7JCCRvt9YUK5
	udtrww+1uLLxsP5LDTJ/YiYVB9PMjhuIt+RS2nYhVUNEy/zDyPJDSMVvxPtKEpmHpiomri4mPz4Bw
	UFq1cjsoaWe1yM2UTE72aNxYUmwp1AvqDPAZHHuhh+GVjbFVJeBioxlS+N0DcRF5hhk6gOcPUTGIO
	Q+yivvtw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34098)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1qnfGC-0001lk-0j;
	Tue, 03 Oct 2023 14:16:24 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1qnfGD-0007vG-4G; Tue, 03 Oct 2023 14:16:25 +0100
Date: Tue, 3 Oct 2023 14:16:25 +0100
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
Subject: Re: [RFC PATCH v2 net-next 12/15] net: phylink: add the 25G link
 modes to phylink_c73_priority_resolution[]
Message-ID: <ZRwUKf1bRa4JeKXC@shell.armlinux.org.uk>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-13-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-13-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_061627_470994_38A56843 
X-CRM114-Status: UNSURE (   7.33  )
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

On Sat, Sep 23, 2023 at 04:49:01PM +0300, Vladimir Oltean wrote:
> Allow phylink_resolve_c73() to resolve backplane (KR) or SFP28 (CR)
> link speeds of 25Gbps.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Shouldn't this also be part of patch 5?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
