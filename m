Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01645C87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OK1Kqo1n1pkCw3yTgCad1VWOlhBydZVvWiXGTuTx56U=; b=0fjR/XhS1wPbwE
	+4asUYcjoc1LybrueLaGRuO9YHociVJWTNdi5MZDvtX6pkWEHxxWTBr7+UwmyD8Xz21NOfEu17ZmB
	Kiyjb+iu5oMW2ZjbevaLGMg7xrRRDzWZJ0N3eKJgrGhEUN4rXP+/XeHPMog/Rt82vCAvoKFQnV7fn
	T083akrfw8ReCTW0DTx7Zlm815cwPfu1NINiO1h0vJhRC03TRSaaKxQVHm1M4g7DzNRIuGZngizmw
	Ml5bsiDcVdXB5wsnqwCmGzzG3aEIho1KyNKYyH8SimtB3LeyWwxRn0aX88iGdSHDzW0QS9bFmjZCM
	n9xXB1V3CCnBXgZVQwnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufRbt-0000000Aq55-30vZ;
	Fri, 25 Jul 2025 23:13:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufRUV-0000000ApMl-2zYg;
	Fri, 25 Jul 2025 23:06:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EDB85601DC;
	Fri, 25 Jul 2025 23:06:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6392AC4CEE7;
	Fri, 25 Jul 2025 23:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753484773;
	bh=8vnCCU3LPQGo53C05dFuO3MKjV+pOSMNfVK636KtS6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=djIISh6YSRnwbypyxmMrAcPIUUF5v68Wdiwz93/UgTP6WNGlSue6F0OcCzQrZG/Zu
	 sxV/iPajbiXLYwfkki0R/DK9I/KVRQXo0WqgVHJjKoLhQxf3hQZxLs715FLHVQBuPm
	 crPoWpACcui6Im2dZ5mc+qrKo1XDtXvUhg9ExD8DgK+RVldhB2w6d4xkZlr3GTEvPz
	 zmeE5b71gF1tNqmZWVZY9GykFDPmPtcjhvZFveml/6vCq7nGZE7EYsShbqNBoEULL4
	 LzAZkEB6gHsWfNWNJRBItw2Oj7UXsWz/+xvKkNl0N387AaMtBHlfN/qcz1nncI8DnS
	 yKgoA+adJ0F+g==
Date: Fri, 25 Jul 2025 18:06:12 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-usb@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>,
	Yao Zi <ziyao@disroot.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 06/11] dt-bindings: usb: dwc3: Add compatible for RK3528
Message-ID: <175348477194.2001313.779930445119740224.robh@kernel.org>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
 <20250723122323.2344916-7-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250723122323.2344916-7-jonas@kwiboo.se>
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


On Wed, 23 Jul 2025 12:23:04 +0000, Jonas Karlman wrote:
> The USB dwc3 core on Rockchip RK3528 is the same as the one already
> described by the generic snps,dwc3 schema.
> 
> Add the compatible for the Rockchip RK3528 variant.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
