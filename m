Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEE63CA101F
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 16:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MCVtUzGoZuwzjfpd7iXZeSfcFS+W03yV3bzEqvh5GU=; b=z0R/b+OL70fVUG
	PxkVmLPD9slaoG7I2ZYf5JhqwYcglf6LyfFYbV4uJhISeuO+3V8F5WbVdP8kCbhmYsyooRQXZTB3L
	hPzi9uDB4juZIakbTHsz/mRXBcHHzsuINrysq/P1m44IYcPGvh1vga2GIMJFo4sLJv7la0wc0Ejt5
	jASAmNt5D+01YGOE0moZNKmnQdRmPOVEXFKUbpCzRhnSVZ3KE1xl2waBouy6ty9gu0uxAX20RVpue
	GlZ21tk9HKLHr35DBMYUKCAODQ3oMncXkoPYNVRQzFew10qevdO6toKlDpRY3tLnkDuVohAv8azyP
	zbpPa5h8apFMXI0/leCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwNyo-0000000Fb2n-35XZ;
	Wed, 10 Sep 2025 16:47:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwNym-0000000Fb1m-3NoL
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 16:47:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 19347601B2;
	Wed, 10 Sep 2025 16:47:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 424B5C4CEEB;
	Wed, 10 Sep 2025 16:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757522851;
	bh=/rJmYucUdGKmDKQq0bsceywau+72JwU/Oc4FczQ5d/U=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=LgNFlrZccc+8I2WJA4iEs2itRnOo2wIcwKCG5s9QE0CZRKGIYbzwdrQV4YBpE0kkM
	 wwAmQE8VELXd9809tTbkJf86FCcoqFKjayHqDaAHZ9HodCkbaEhZJ6GXlDSM/wwEQj
	 JYcyfRqkifbhD+SndVzqMBDFebaORgpTsqqLOXWDYjsU0LcEAAcRyhuj4WEfVBwrll
	 Pg5ls3p+pBAHDhp9WFhYVtL6UDD7I/7bQR89dPjnhWMunXazzWToDmGd1uBbcRdHPX
	 HtFT58HBmcHjN14fD7+6JEWxwRwEuqljdYLwKrgtPGRoBLiC6+mwp4XT6Z0qZ3P+gc
	 IIq+rLaogui9Q==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, u.kleine-koenig@baylibre.com, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devarsht@ti.com, u-kumar1@ti.com, s-jain1@ti.com, 
 Harikrishna Shenoy <h-shenoy@ti.com>
In-Reply-To: <20250807052002.717807-1-h-shenoy@ti.com>
References: <20250807052002.717807-1-h-shenoy@ti.com>
Subject: Re: [PATCH v3] drivers: phy: cadence: cdns-dphy: Enable lower
 resolutions in dphy
Message-Id: <175752284884.484319.2656342366010993504.b4-ty@kernel.org>
Date: Wed, 10 Sep 2025 22:17:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Thu, 07 Aug 2025 10:50:02 +0530, Harikrishna Shenoy wrote:
> Enable support for data lane rates between 80-160 Mbps cdns dphy
> as mentioned in TRM [0] by setting the pll_opdiv field to 16.
> This change enables lower resolutions like 640x480 at 60Hz.
> 
> [0]: https://www.ti.com/lit/zip/spruil1
> (Table 12-552. DPHY_TX_PLL_CTRL Register Field Descriptions)
> 
> [...]

Applied, thanks!

[1/1] drivers: phy: cadence: cdns-dphy: Enable lower resolutions in dphy
      commit: 43bd2c44515f8ee5c019ce6e6583f5640387a41b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
