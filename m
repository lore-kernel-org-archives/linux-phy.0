Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E3F8C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:47:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DF1661BFB
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:47:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3DF1661BFB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kx79kiETZinpfOwuw2ry9u0IHUnPaErMPqMoo1FxPZg=; b=X3lBqnHP1ZWSo0
	/T8vaglSKKEb3jDJQgvdzpGkHnxFR4lpaeZ9HEcwEg5DwB0kuBfOJRvX4K67PSMJw+WyAO3hLCj8R
	oJ+xtbMmakDepwe22HqqFBgHHpinmRJxLERnlinhHweyOajZ7BdgmxJ1m38BHwmL7xYNaTIsv4BYH
	NgQS2z5j7pvzQo56BC4ePmCQeK5I4d32Ki9UpSsS4mdy5E8aCkNZCmdoSQTBu7FaThMLDmYCMuwQb
	CzcDAaVvD1G5IlEjHYWTO84hmBKF82Jsg97ZT1suguP4i1JMUbAQw876xzv/IDJamX4o7jGtYmcXz
	lGz/C56/ecqtV06cqIyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvzU-001Gdb-1R; Tue, 16 Nov 2021 10:47:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvy2-001GKf-Be
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:45:35 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EBA3260D07;
 Tue, 16 Nov 2021 10:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059533;
 bh=zSl8UclagdTHVWfyQeAcJb1WGxRat4K0SnmKCoDNROo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WOWVQxOaF/RWjoA4YIopsJxN1v67DB230LLyLVR/xoHdZfDHL6R4bwevONqrADV44
 x6gsa2cvPnnSwSrG2AkwA3cngMowXnJDsea+AzLtgNLZDgIByrsCkfZzjzxaYH/ZYp
 o9VQQ6qlWAkNZTVHAsSfj0froEj7b2ck/Uqi5ZqwPZ+1HKJc7jgn5/qimKuJo24kEV
 nBIgjLuCIab/rXECnyOExgQSq5y6lINi+USAjx6srek/Z43vmIfzzeNUDQLS7aOIyS
 U1AVXBJlDqaMEiiwjQACofSWwVRI6pLFE2mcJXwoyccs3rA3E4FX9drpEHTaXknZQ+
 EnOWowg+RLFnA==
Date: Tue, 16 Nov 2021 16:15:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, robh+dt@kernel.org, andrew@lunn.ch,
 alexandre.belloni@bootlin.com, kuba@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH resend v4 0/3] phy: Add driver for lan966x Serdes driver
Message-ID: <YZOLyQPsgoOYJZch@matsya>
References: <20211116100818.1615762-1-horatiu.vultur@microchip.com>
 <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211116102151.k3evnn4f2rwsi5nk@soft-dev3-1.localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_024534_453258_BDEEF83D 
X-CRM114-Status: UNSURE (   8.22  )
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

On 16-11-21, 11:21, Horatiu Vultur wrote:
> The 11/16/2021 11:08, Horatiu Vultur wrote:
> 
> Hi Kison, Vinod,
> 
> Can you let me know if you have more comments to this patch series?
> Otherwise can you ack on it? Because I would like to have the patches
> merged via netdev if that is OK for you.

Any reason for merge thru netdev, there is no dependency and now with
merge window closed, I can pick this up..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
