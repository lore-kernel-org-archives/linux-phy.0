Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0115DC7618D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 08:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piRr4srdLlNrrzywl/vubR5pUFVdRhZtVMyzd9/gP8U=; b=CeBtlPZzAIW8VT
	d/ZMoei9hSiPEDveTc7RU8PpHM8bVfOk0+4SHvdkmxwPbTHmBwMXICz0hVXft4B3UqJz3oNqEV3Pa
	KSZeOFlFaDzgNGTwUZmAiCBrRzDbA9HURKxcwPx0e0z583n2nvL7uPTlwFiumB1WskTl3hBYAJSEH
	6KLZ4gne0bCE4ZPwzxMHynxhTLYKyq22V9Wh1GrlK3xIOk70vsIV6RDhzUImEzuLo6zXXjG5wXPAM
	7W04qztS+usxoXIpCfKBX8Rir+/Ky/C8uIDBQ7xbiRd34gt4WHbzI0XSYwzu4Z44EBZaz2ePymYV4
	jBNFsuYrDzEvYpOoUuGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peBDG-008PeQ-29;
	Mon, 20 Mar 2023 08:49:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peBDD-008Pd2-29
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 08:49:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 403F0B80CAA;
	Mon, 20 Mar 2023 08:49:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 673FEC433EF;
	Mon, 20 Mar 2023 08:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679302188;
	bh=ZOGGGKiTpZNldxTGPSbHJBbYnJcBl4dpdhlNwkX07j8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XDa+CpyJEbo3Mzrqm+czSbFRB/XZAQZ3SnwNK+nAxgZPQu+o76h/sCEKNVGpKSeE0
	 BowtlOc4Mq3St5ngmQtdhtiKGm1QlhOLgjzpfwWwLxFp/yfyhOP3pOWBmdtlYvb59t
	 aP0a6NQDG1ZmPWVP5Pl+yXxV0i+AfMoIhpBdAW7T4Of6og/787y1hJU8u/YshqzfiB
	 W4G7ngETRqHZ0O79Erk6Wg2pnRTipmhaPhQu0oadTN65UZSR106skEISX+Ruvcj2FK
	 JN1kBwKiBLvmjzrVkd5rDA0glqBEsy5mt9Ogs1aZqCPWUMAJeC5ZZETjROX6DpHpRH
	 rLSkgYqVu4ndg==
Date: Mon, 20 Mar 2023 14:19:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v2 net-next 1/9] phy: phy-ocelot-serdes: add ability to
 be used in a non-syscon configuration
Message-ID: <ZBgeKM50e1vt+ho1@matsya>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230317185415.2000564-2-colin.foster@in-advantage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_014951_858510_BD754467 
X-CRM114-Status: GOOD (  10.22  )
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

On 17-03-23, 11:54, Colin Foster wrote:
> The phy-ocelot-serdes module has exclusively been used in a syscon setup,
> from an internal CPU. The addition of external control of ocelot switches
> via an existing MFD implementation means that syscon is no longer the only
> interface that phy-ocelot-serdes will see.
> 
> In the MFD configuration, an IORESOURCE_REG resource will exist for the
> device. Utilize this resource to be able to function in both syscon and
> non-syscon configurations.

Applied to phy/next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
