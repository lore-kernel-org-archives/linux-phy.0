Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48517C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 20:31:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07797610A8
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 20:31:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 07797610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLcRmZSZhqRKBd4S24mt8P2ANMs2L37EMWGTEeZJDFg=; b=m6bgl7AlzTVC0E
	i41ug5Q2TPnqOnl7RHuPRxbK+xJDeARQw1d2OW7Hlxwta+3iw9l6V/D48hpXotnozb1s3pNSAJ9Jt
	FdhQL6qT2n1MEQTvDZ9r9L47wgU3eqp3D11d82DGPI+2XRN9lw6bxxdYe9LduBxOmTrJk7ukEcXQn
	t41e88FqqTIsoQf+351ajvM2AyncfvCxAe+NIF1mH/dxPc+UL7amD09xukV2yDOwXxX3ovIOdUNQs
	Mhi1ABnMthwzm6Siyrc4Cjofc05s7SLfMbK/OopcDEN3WFNrSAas8Dwvi34/+m5phPZErrmBJF5n7
	AA2jgQWSiONsJZ0bxd2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSPwp-0032eY-I4; Mon, 20 Sep 2021 20:31:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSPwm-0032eC-U9
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 20:31:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B7039610A0;
 Mon, 20 Sep 2021 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632169888;
 bh=10ZL7PgHe9lbjtgAcJZmau9cDawPBD9XsDzRb/RyzN8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=V+/6CwVtDaudm8b/th6Nq7PIALw6HsqHtIajFBJVNKHbPDxgfLzRcp3lL7NXBH7FG
 ZfIVcH8WEeQ+8fFj+T4ItZDL0Aerbwktyhe3LayI3SNOA9pAT9jdfVWQb4PPrtyXjU
 C135f2loKqstaEwB28AiE5xL5Tq2QDidS5WrEBq1u2fOY/ThaG6v9SRPRRouc5T11b
 rZLl5WpATkbnCLH6FlapL7Jb4r73M8dT5svcT0zlqqsKVsr93Gfbs7vn30IAqBxcWx
 DBSUbDivrQRVnjJU9UJ4+H7BSgDWC5mFy3iVvOf9Kv6HqpIldaLoEyICZp+JJRWXYL
 3kGBUVAaT4eLQ==
Date: Mon, 20 Sep 2021 13:31:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: <davem@davemloft.net>, <robh+dt@kernel.org>, <andrew@lunn.ch>,
 <linux@armlinux.org.uk>, <f.fainelli@gmail.com>,
 <alexandre.belloni@bootlin.com>, <vladimir.oltean@nxp.com>,
 <UNGLinuxDriver@microchip.com>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <linux-pm@vger.kernel.org>
Subject: Re: [RFC PATCH net-next 12/12] net: lan966x: add ethtool
 configuration and statistics
Message-ID: <20210920133126.642449aa@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210920095218.1108151-13-horatiu.vultur@microchip.com>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-13-horatiu.vultur@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_133129_041119_6DB84D80 
X-CRM114-Status: UNSURE (   4.99  )
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

On Mon, 20 Sep 2021 11:52:18 +0200 Horatiu Vultur wrote:
> +static void lan966x_get_eth_mac_stats(struct net_device *dev,
> +				      struct ethtool_eth_mac_stats *mac_stats)

Great to see this API used, please also consider adding RMON stats
since the seem to be present.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
