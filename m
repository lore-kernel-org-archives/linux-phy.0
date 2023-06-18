Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42D4DEB64D7
	for <linux-phy@archiver.kernel.org>; Sun, 18 Jun 2023 08:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9TxRYoajxHPiSofcIafi38GTl03CxWRoWUO9BbON9o=; b=MsD1nCHGmVPqro
	5x+vJ1mZClXop98vsSDcmb6L9a3wAwfHNOrmDRLu3DyCGMG//zYvLeAz7vX2Fnjwk4n8axSpYhfps
	6qgAsb0mlnatTk8FrRDDevntsDb4Y17f9L5r7UTFK5ztTx9JnFvzbwVPhJ0d8lwIluR9IhI0aylWE
	PmuqrH9T6oC4W558QAjEawFQVp8AmdeeK7KIqhl7Qv0rncZgHFmbVU/DsrywJFm8b4fKU9oEyih7/
	JTHWbzBo3QWKe7sMDzmM95aRHIU00fCdJ0L3sh0ZhW0Sf5IoZUd0Ce+6OtjjSgBRpXLL1WZRXZ604
	wXNu26nRf3WtCnkpsjZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAnXx-005RRW-2Q;
	Sun, 18 Jun 2023 08:14:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAnXu-005RQD-3A;
	Sun, 18 Jun 2023 08:14:04 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qAnXn-00028P-K9; Sun, 18 Jun 2023 10:13:55 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Damien Le Moal <dlemoal@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v4 5/5] arm64: dts: rockchip: rk3588: add SATA support
Date: Sun, 18 Jun 2023 10:13:54 +0200
Message-ID: <4844617.31r3eYUQgx@diego>
In-Reply-To: <fa42c1ad-c411-2121-92f7-fc1e1f0f8172@kernel.org>
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-6-sebastian.reichel@collabora.com>
 <fa42c1ad-c411-2121-92f7-fc1e1f0f8172@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230618_011403_024221_D5060905 
X-CRM114-Status: GOOD (  12.04  )
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

Hi Damien,

Am Sonntag, 18. Juni 2023, 05:10:58 CEST schrieb Damien Le Moal:
> On 6/13/23 02:13, Sebastian Reichel wrote:
> > Add all three SATA IP blocks to the RK3588 DT.
> > 
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> This patch does not apply to libata for-6.5 branch. What is it based on ?

I guess probably either mainline or my dts-branch [0] .

Most of the time we have series doing driver changes + devicetree changes
where subsystem maintainers pick the driver + binding patches 
(1-3 in this case) and after that I pick the devicetree changes (4-5 here).


Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v6.5-armsoc/dts64



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
