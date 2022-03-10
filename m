Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5604C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 15:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/7h7AGKRbLiM0F/9f4lotR/V3ytb99DWHl6tAfMnXI=; b=hpxUjzZx9kUGze
	YzI7oS6ZGkibDXOFpz/FfGjT8tTXh1YY3WFhKVbrGH95zkUKuklZFWH89Q/muTcgsWvN8R+g1/ZJB
	CDvKUeBcN/yzbFV0dAy5luUiZc3pBMmeero8S17SukZMUc016H86mHBO5KTKfJuCfyWlKkUDpuNIG
	SeRT0zFsqkNpwOTsLqHe8RymuvDE8eKuW+pSL7WrygaiUza+zEPufeRENdXQc4rfyOVqXNnCMtfDT
	mTJu7SdkqW5UdExW0CbZ3IZ3V7DafEulQqIW+Fg1eijm/u7PkagZHUo0ct1X71d2WP5Pg5Or+2lO6
	qlRXThrDPOqHxwkgtqcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSKMl-00DHV7-1R; Thu, 10 Mar 2022 15:06:11 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSKMe-00DHSo-FI
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 15:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QfdtZq1vbEFd+SsfcmwQGyqdK7peHjCTLzwr0dWrhh0=; b=so1JYeLxXOytQVNOW3EA6eQDWU
 wv466XB22ahE1YIVTlm4s9q4jIFPWmVeoLIss9nLX86db8Fa0Wfc5DCkP04x5RaPcr+54IF3GfT/X
 6pH6V5I+Ea60fx38vwreCwaS1x2+QdwEYjoJBR01gkwOQQdfNK0wf8vVU/lzZSNdkN01uzcE1uIHx
 UUKo/h78QlmIWmi6/D5C62Juw5UgcHBONtBwp3fhbD1uVwCaynxqatszXHxL0Lr3uaxYd5jxAvxKQ
 QnSm7T+uD+NWPJnAeNY8XwvG03Qu64IYVZz5LLE3jVfM0NSdM7hK1TCMC5ENQCMlbCKeszF9/h68M
 kBN8NmTg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57770)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1nSKMR-0001OZ-Di; Thu, 10 Mar 2022 15:05:51 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1nSKMQ-0000ep-6g; Thu, 10 Mar 2022 15:05:50 +0000
Date: Thu, 10 Mar 2022 15:05:50 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: davem@davemloft.net, kuba@kernel.org, netdev@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 leoyang.li@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, shawnguo@kernel.org, hongxing.zhu@nxp.com
Subject: Re: [PATCH net-next v3 7/8] dpaa2-mac: configure the SerDes phy on a
 protocol change
Message-ID: <YioTznpNwldCnJpm@shell.armlinux.org.uk>
References: <20220310145200.3645763-1-ioana.ciornei@nxp.com>
 <20220310145200.3645763-8-ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220310145200.3645763-8-ioana.ciornei@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_070604_538393_67F47480 
X-CRM114-Status: GOOD (  18.04  )
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

On Thu, Mar 10, 2022 at 04:51:59PM +0200, Ioana Ciornei wrote:
> This patch integrates the dpaa2-eth driver with the generic PHY
> infrastructure in order to search, find and reconfigure the SerDes lanes
> in case of a protocol change.
> 
> On the .mac_config() callback, the phy_set_mode_ext() API is called so
> that the Lynx 28G SerDes PHY driver can change the lane's configuration.
> In the same phylink callback the MC firmware is called so that it
> reconfigures the MAC side to run using the new protocol.
> 
> The consumer drivers - dpaa2-eth and dpaa2-switch - are updated to call
> the dpaa2_mac_start/stop functions newly added which will
> power_on/power_off the associated SerDes lane.
> 
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>

Looks better, there's a minor thing that I missed, sorry:

> +	if (mac->features & DPAA2_MAC_FEATURE_PROTOCOL_CHANGE &&
> +	    !phy_interface_mode_is_rgmii(mac->if_mode) &&
> +	    is_of_node(dpmac_node)) {
> +		serdes_phy = of_phy_get(to_of_node(dpmac_node), NULL);
> +
> +		if (IS_ERR(serdes_phy)) {
> +			if (PTR_ERR(serdes_phy) == -ENODEV)
> +				serdes_phy = NULL;
> +			else
> +				return PTR_ERR(serdes_phy);
> +		} else {
> +			phy_init(serdes_phy);
> +		}

Would:
		if (PTR_ERR(serdes_phy) == -ENODEV)
			serdes_phy = NULL;
		else if (IS_ERR(serdes_phy))
			return PTR_ERR(serdes_phy);
		else
			phy_init(serdes_phy);

be neater? There is no need to check IS_ERR() before testing PTR_ERR().
One may also prefer the pointer-comparison approach:

		if (serdes_phy == ERR_PTR(-ENODEV))

to remove any question about PTR_ERR(p) on a !IS_ERR(p) value too, but
it really doesn't make any difference.

I suspect this is just a code formatting issue, I'd think the compiler
would generate reasonable code either way, so as I said above, it's
quite minor.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
