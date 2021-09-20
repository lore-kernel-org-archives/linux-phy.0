Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 599FDC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 11:59:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B39860F9B
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 11:59:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1B39860F9B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISdcuE01V41eRAkXz9OfYpKMDeKtiaUWLDx7UnclHwo=; b=tZn3fBqHny4D1x
	cR2JNcAr//gdUyVK15MGaaKRxBpQnG3Y05WrO5eTQ6Q5apkRbG/4RXyL3iPddnfDS6wvWLGdSsjOi
	j9Pnfp4KL/pK4lkeY/amjO3ChBZDgu6RzMNSE2riRuJZ/Tpwr5XVm1ooj5Z76iKooGCOEwOPUQYLr
	WQwYuQYeNrIg9dB3+A6t1p/7iyDHb3CLUYmXG9d1/2vliJJgpfwL0EKpzap8CqmJIsq8GJchPF7NT
	liLDdEMAqm1pkI8czGMIUpdakqn2/z1bqeq3qtv+Za2ZpWme/f/Ly/QfYM9LgyIoe283eM2fnhwfJ
	WqmGElmEL45hwlmhgxQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSHxM-001TvX-JY; Mon, 20 Sep 2021 11:59:32 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSHxK-001TvD-45
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 11:59:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=zs4vYiK3dw7mCMQq4P9I5K0e42UokZRzOZPIxpkd4PE=; b=HC9nBmOOIx1RnI74xPi6+bjtI8
 8obzDlvqzI0G8DcilBY8Z7/Bb3RaSb01BgRsJdFA1VIjwdiyIQWyqIMNikNyfp+JuNqWi83B0h+hL
 lTtl1BQPVNPHGkAUDuF/7EP4vUEmSJcziKOrzlBBwZAZ116RQLQQnNpyzslYbletrUHw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1mSHxA-007UZU-GM; Mon, 20 Sep 2021 13:59:20 +0200
Date: Mon, 20 Sep 2021 13:59:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
 linux@armlinux.org.uk, f.fainelli@gmail.com,
 alexandre.belloni@bootlin.com, vladimir.oltean@nxp.com,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 02/12] net: phy: mchp: Add support for
 LAN8804 PHY
Message-ID: <YUh3mP9pcG4Elam7@lunn.ch>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-3-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_045930_205332_A353F569 
X-CRM114-Status: UNSURE (   7.28  )
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

On Mon, Sep 20, 2021 at 11:52:08AM +0200, Horatiu Vultur wrote:
> The LAN8804 SKY has same features as that of LAN8804 SKY except that it
> doesn't support 1588, SyncE or Q-USGMII.
> 
> This PHY is found inside the LAN966X switches.

Please add the new PHY to the micrel_tbl[].

       Andrew
 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
