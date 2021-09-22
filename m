Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E91FFC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 08:33:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B833A61267
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 08:33:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B833A61267
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdkC9A/7RahqA9mkgj/d0FLBs/tR0ghR8YSWPG7qtzw=; b=RcJQ080CebEHDf
	50OFlaxFsHWbMlt4Svg7tjTds7CRmysimN9Fpx5LMwZN/e6dviIB7r+Q5Fx3k2r1BnwIHaryMmZ4V
	4J2XGuMPkKwPEIEvquvfND8RpTubR5IRTrx9D/3Z1+FLS26faGaAIuz7h5n6Yvu6NjJ7H9OD5SD6x
	e4LFuTJSs8NaTod+OJW00NkAqH3GHMvyvIJiUAq82PguRAgZyBuh3GyHSOy+u/H4KwOkzTNwlxYgA
	t1TXPKBvQC+4+2utxKWJ7Po8eQemujLt9TMFH2zkdu3+9kma7PtI94wFgrGlOE5XfgY1oH/3P20ub
	VLysjd0y/7PUphUacrfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSxhR-007UC9-9A; Wed, 22 Sep 2021 08:33:53 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSxhO-007UBQ-ST
 for linux-phy@lists.infradead.org; Wed, 22 Sep 2021 08:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1632299630; x=1663835630;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dCzHyBdtZa9KsR+jnO9AvFwdTRmtYkVI8WwzcZB33hI=;
 b=u11J5bHW760B/LcWPzgkq83DrEfaU77bdXNJf8/fIwrkG7ed5eCHTJ7B
 dyWSGVdqlElJO+VRc7hWD4mEUcsaMXhh4x487ue2Ac0Q6HjqggxWlpUuH
 Nr2WYlr3aIIs8Qq/qIoCEqGUfgzSmGpy2xIz83qjEqpPxc7uax/X+kKd0
 w0vDWEXCNJDhbpnFfeg/6tPNgJgbQZDVyWWqQzLNTV4EgL+T2hjlm+dcl
 z6btV5Dc0s7bRyo+yYV6SI/9SSuVODz05v0Oq55/i2jn/4Rh4fGT26+z3
 Mk4cNM4lZgpn23sQ3iQXL3S6LjkV5unNEYHSMs/Szkj2q4ZOaWWMvCbPZ Q==;
IronPort-SDR: ft+4fxqI3sc/fV47Wd3qLDueuLFQeLTUDyEA77HOTuoV+1DyUHPSUcCvM1FL6SqzMau6G3Z3B+
 AefKYAfSuCBqd2TDmB46rhCX4IHxRIA2nSaiiKwgJm1Es859O8q8SBdP4xdv8Pob9MaKo2ljNI
 i0tICXQ2NYH6ogEBzZblqb7dwlUMUvRMyEp0MlOhx63EOptyl1NVVCQXy4V+r/4EmSwlBjUrcN
 1sZNxeSlI7tI6X0QqyRY5CLOjisyBeZMOaEzXTWQUuWygVRPW7RZfWRkb96q1RvfAmOZdEq3pK
 CiRfpAk4eUaxEw/MEhr+clW3
X-IronPort-AV: E=Sophos;i="5.85,313,1624345200"; d="scan'208";a="130179187"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Sep 2021 01:33:49 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 22 Sep 2021 01:33:49 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Wed, 22 Sep 2021 01:33:48 -0700
Date: Wed, 22 Sep 2021 10:35:17 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Andrew Lunn <andrew@lunn.ch>
CC: <davem@davemloft.net>, <kuba@kernel.org>, <robh+dt@kernel.org>,
 <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
Subject: Re: [RFC PATCH net-next 02/12] net: phy: mchp: Add support for
 LAN8804 PHY
Message-ID: <20210922083517.ms3pdccxevehdxsr@soft-dev3-1.localhost>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-3-horatiu.vultur@microchip.com>
 <YUh3mP9pcG4Elam7@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YUh3mP9pcG4Elam7@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_013351_030929_8E012CA5 
X-CRM114-Status: GOOD (  11.46  )
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

The 09/20/2021 13:59, Andrew Lunn wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Mon, Sep 20, 2021 at 11:52:08AM +0200, Horatiu Vultur wrote:
> > The LAN8804 SKY has same features as that of LAN8804 SKY except that it
> > doesn't support 1588, SyncE or Q-USGMII.
> >
> > This PHY is found inside the LAN966X switches.
> 
> Please add the new PHY to the micrel_tbl[].

Will do that. Thanks
> 
>        Andrew
> 

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
