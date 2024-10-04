Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E3CDCFA749
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 06:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FaXTmZli1R5WLjVLoabzh6gc5zx0EQnAx975qE9GXCY=; b=lgns4jYcK0M5evOjmqZHvK/G1R
	NAzw/yb7bZIpDPLZFH8dbInfwsM7DKta+AqOoQ8ef/i50tZmlw3wjtxd7ftGp/yRos6IhLXCZgZ+d
	uKeKrfFbpZ7Bcvctaw9Mo3KTRt3MNQJjQlPC5fuSzjPNHbUG6hrWjnyb4QGhY7+GFlONp+ryrDXWg
	+0/32f+OpZiOMa1pYy4WRxjqxdUU99Ock5nD3kGV2T/frLovkdIKmy35IOz7R/pfU9K/KOLUu415y
	9EypYsU1jHrfovXQuEyQB2pBb/XD0QY1W5yJs8Nur2+hF6A2HwzcOf9wRkZR86SQ40Wg1vwkr85bq
	hecWtjyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swc6K-0000000BAA2-04XX;
	Fri, 04 Oct 2024 06:47:44 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swc53-0000000BA2b-0RMH;
	Fri, 04 Oct 2024 06:46:27 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728024380;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sSHMcRc/7oJcjlVYuOOAXPpQW88U0Cjkb5Oc0Zij2G0=;
	b=DiKthRHUZMmjw2bDMF2Obg/a47KqCGb17kjC5LcHKDr+8PDDrZKiSwKhvXzH1GGmeARFTl
	1BbdW6LTiyr9HsZJ9/XwsVvd68HCHyIi/9sdAovCpo6w1R/NUc2btpV4hC6vQo6RYY7PUh
	PHTWqN9aLcVWYqvP3rjMtEtc9mJGXB5L8vxdziiBRAwDcjyS5FwvaIOGTrNAZaYylkXicI
	ZWpqtg0nBpU+c6BUKE8RZyrK0B6jMqqO3qJd2uq9row26EEiq+agpp0EJKFOpSLLOeMkqw
	fP0vFCdbWM0IV68H9aw8Hw2j+N0gwBIzKkU5xTUkktwhTjYN/iTKA2tl8p7WsA==
Date: Fri, 04 Oct 2024 08:46:19 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Improve error handling in Rockchip Inno USB 2.0
 PHY driver
In-Reply-To: <cover.1725524802.git.dsimic@manjaro.org>
References: <cover.1725524802.git.dsimic@manjaro.org>
Message-ID: <71569a2773d88d13ca1cf4aa41b56496@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_234625_639327_317DBC9F 
X-CRM114-Status: GOOD (  15.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hello,

On 2024-09-05 10:28, Dragan Simic wrote:
> This is a small series that improves error handling in the probe path
> of the Rockchip Innosilicon USB 2.0 PHY driver, by returning the actual
> error code in one place and by using dev_err_probe() properly in 
> multiple
> places.  It also performs a bunch of small, rather trivial code 
> cleanups,
> to make the code neater and a bit easier to read.

Just a brief reminder about this patch series...  Please let me know
if something more is needed for these patches to be merged.

> Changes in v3:
>   - Collected Reviewed-by tags from Heiko for patches 1/3 and 2/3
>   - Brought back one empty line as a separator of dissimilar operations
>     in patch 1/3, as suggested by Heiko [2]
>   - Dropped one backward conversion of dev_err_probe() to dev_err() in
>     patch 3/3, as suggested by Heiko, [3] and adjusted the summary and
>     description of patch 3/3 accordingly
> 
> Changes in v2:
>   - Expanded into a small series, after a suggestion from Heiko [1] to
>     use dev_err_probe(), because it all happens in the probe path
> 
> Link to v2:
> https://lore.kernel.org/linux-phy/cover.1724225528.git.dsimic@manjaro.org/T/#u
> Link to v1:
> https://lore.kernel.org/linux-phy/5fa7796d71e2f46344e972bc98a54539f55b6109.1723551599.git.dsimic@manjaro.org/T/#u
> 
> [1] https://lore.kernel.org/linux-phy/4927264.xgNZFEDtJV@diego/
> [2] https://lore.kernel.org/linux-phy/5307900.6fTUFtlzNn@diego/
> [3] https://lore.kernel.org/linux-phy/6073817.31tnzDBltd@diego/
> 
> Dragan Simic (3):
>   phy: phy-rockchip-inno-usb2: Perform trivial code cleanups
>   phy: phy-rockchip-inno-usb2: Handle failed extcon allocation better
>   phy: phy-rockchip-inno-usb2: Use dev_err_probe() in the probe path
> 
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 56 +++++++------------
>  1 file changed, 21 insertions(+), 35 deletions(-)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
