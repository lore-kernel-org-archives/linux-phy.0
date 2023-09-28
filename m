Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38416E732D0
	for <linux-phy@archiver.kernel.org>; Thu, 28 Sep 2023 13:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdaXzcjgldx5smtCKUVsM1JzXOwtTYlSZsVpPyTmCmo=; b=AsVBDPbIkR7URA
	PZU5+bHxw8F/q6RS5by4oE3EKvyPHnR/8/uHLwB4x2Be5q7+o4otMQz6M+o4HTq4i5zI9UzvTfn51
	jdVpriMp5X7fYr9PkohdxTNjlfakZuATSabVeAOLDD8ukkXBdHFvlt8kbfEMpTNEk65IQlTdFfO6p
	37xoSb2X1GGq9lq1jbuG3fAI+c/oy8X/cPNAObiWNJ6RT1a91o2dUMDpRfROn9AjTKCCy81w4/aOP
	P/fFCjQQ34nl7qDNLEyFmiC4s3f8Tsf8/LeikDQSIQu3Ro9lAkDqq6VMRs1evMiAIK8lOtxWD0zfd
	N8gviVRaNBClXGIX59jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlrDt-004Qn9-2z;
	Thu, 28 Sep 2023 13:38:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlrDp-004Qj2-0w
	for linux-phy@lists.infradead.org;
	Thu, 28 Sep 2023 13:38:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4C9F61C5A;
	Thu, 28 Sep 2023 13:38:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8C1FC433C8;
	Thu, 28 Sep 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695908308;
	bh=g8ZXaIN93ZfxE2Ei93hCloVx+lzo8p+xJHZE3EoTyxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EeY+yq0WZRpbvxIHDdodVZpavSilaGC0SGuJCGzimdgcDrwyAnwfIjvG4EmzVMy9p
	 z1EMiBqgmcKaiWq/o0am3uM67cTFY2oALRIcaP5s3SKfjEtFzoxfTZBnprkCQkeIW0
	 9XtS45BVAUaqF+GEI5YlLptRXEVSBHmvxSgZ0qEbAkaraft+IrUoYFvSqqycC5Zpiq
	 WkLg+aGILOrpJclpz5YkV1NxrcOqD0ilEOd4QMQWal4Qnt4XvuGM4V5U4+7Nj7zpsT
	 hR0Kctvufbs3vRS1oanzoQWtQYAp3k5YTFhbBRQcwgjNu9SmmLJK3CxHz8vfeTzewt
	 X4kJ3LY5lDi5w==
Date: Thu, 28 Sep 2023 15:38:13 +0200
From: Simon Horman <horms@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
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
Subject: Re: [RFC PATCH v2 net-next 07/15] net: phylink: centralize
 phy_interface_mode_is_8023z() && phylink_autoneg_inband() checks
Message-ID: <20230928133813.GN24230@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-8-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-8-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_063829_376551_F7614167 
X-CRM114-Status: UNSURE (   6.48  )
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

On Sat, Sep 23, 2023 at 04:48:56PM +0300, Vladimir Oltean wrote:
> In a future change, we will extend the PHY interface modes for which
> phylink allows the PCS to handle autoneg. Group the existing occurences

nit: occurrences

...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
