Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3753E7717F
	for <linux-phy@archiver.kernel.org>; Mon, 16 Dec 2024 08:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/aL+h6Ur1Og1ntARJx5FQZsS/UHGmVYCkZPaXx/lNE=; b=oUanyc2q8HS66T
	H3vMKc4bAWtqiXby0idzcAl9/sxjRNd1RNiUpHNMhk3vajSUdncIOEL9A1sVH3hxiSOFiw5BBLAgw
	beXD3leSTMj/7WwmGSpl2tQsY//BUfLzV8HuY0FaJroKbwWX9cgrajMINsC85duuQAZURVxQZUgBS
	LK9XhvIffFvKv7+8KdA+tZBZcFJR439PzX+jU4mc9291IgqhlGX4i6e9E7xHNAPSkeaJ30ZA4IX2o
	ZdjHwM55/q+hW1zKKJdObNjo+dT5vI/GvRiNjvh9y1JOce0eyOqLsmyQdO02vxyZVHcDuAHAYn5ro
	qAwEGJ4B6cnFD1x2OTzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN685-00000009LS4-2N5M;
	Mon, 16 Dec 2024 08:07:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN683-00000009LQv-1AWL;
	Mon, 16 Dec 2024 08:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ykA8HuFeO2n9T33KOENfQTgct9xH6AMqa65lfTAavAs=; b=OfUN9qq8QBMIKqzkSTNA6oo+1w
	nyIpksqusAh8oyE7v1ko9vZ54cD4+HGcKA8JGaESkRP8ra9XuRRQW+H1sFc+Hp3EH7vJJnPrrF8L0
	1KO872C3v0n5Tcb7NFZSLH72RlzlU9ncumD+pKzRPIH16b2eK0JnOg1Qq+MVrTYfOjIpxr5NRiF6M
	ERCqI6ro/T9y/+RltH5UURIuw++KlPvzuHv8PxK/xt1FaoRC61Ljc8M197JbMhwwG2z54rp5eTeWC
	aW/npIjztmeG0Ppmo+Evw9djr8vzmIJWhxNE4S/cv9K9dThR2myxXBuepZirty5G+9k4r1xqJripN
	N1PE6M/Q==;
Received: from i5e86190a.versanet.de ([94.134.25.10] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tN67y-0002wV-1N; Mon, 16 Dec 2024 09:06:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: kishon@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org,
 Andy Yan <andyshrk@163.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kever.yang@rock-chips.com, sebastian.reichel@collabora.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] phy: rockchip: phy-rockchip-typec: Fix Copyright description
Date: Mon, 16 Dec 2024 09:06:53 +0100
Message-ID: <1813498.VLH7GnMWUR@diego>
In-Reply-To: <20241215092441.3447155-1-andyshrk@163.com>
References: <20241215092441.3447155-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_000659_319730_E709D806 
X-CRM114-Status: UNSURE (   9.26  )
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

Am Sonntag, 15. Dezember 2024, 10:24:40 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The company name has update to Rockchip Electronics Co., Ltd.
> since 2021.
> And change Co.Ltd to Co., Ltd. to fix mail server warning:
> DBL_SPAM(6.50)[co.ltd:url];
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
