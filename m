Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD08C3065C
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYI6ZEWCRkuxbgxIq2+RK0uRUCYXLeuRk3I+9tJo+QE=; b=T+tyuiOxGMFNGj
	8k09rj3f+0/euCeITeHyRgUj0GZWgqugPBGzMwGWlscDFu8XoYMgY+RZ9oc6pznrE9DeBC5a+RMwn
	pueJSCmyZSycqZSN2WOmk3rJE8dQ86qR8kGKE51O4Ryqy0OoGUEYRADcRyD28TGffB1eDuscTgTdb
	Ef3HPeYLV11AWCcbYPU76BQFEbSv/3PRIGBrpJrN6Sp/LPRhhMwAONHlyYssO3/9Ev+E4c9aguCwV
	JvTX+RZN3IDdSbRENJvTvKPROoPWjSkprG3lJhP0ISDAHmV3p6icaGHVXmeiJ53rp/797Tboh6mq9
	WKsQSPCrlZoTij3Wc8lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdg6-00000006sHr-0XBX;
	Tue, 02 Jul 2024 13:36:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdfp-00000006sBn-09cD
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 13:36:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7CC20619E6;
	Tue,  2 Jul 2024 13:35:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBC7AC116B1;
	Tue,  2 Jul 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927356;
	bh=48PkDyDUvZMMR6IBtDoMchEdpn2pXQqKeNjxhWItlj0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JAhqTkdWuky9Hus31OP2zR0HpcxU8nasg5c8iAitECspRvUQSUH+W3OxbyW8VBOWw
	 EhLe1CXEPDIwHp5QhxyfH/XRILmKmdKh7akA9qEteQ/QMLq6onyjN73bMwflHGG9eu
	 XAmKPhyLFK0MAP70t+iwytSu6JmFT88ODo4ox3SmMWzgIZqkf/49yeTM7SOHxpa2JY
	 QDgb0BozC+S79VuKCBm3EZ6SYukiLNMVsffNTEUiwCCncvVz+alNezljLq38Yt8iqn
	 W4TMD/PAt9MT6r9NmJrjmnLRGwlWEhycP99Zvh7OsgsnQp5KzWT3j5znGeo71JntsC
	 s+46OvUHxyX/g==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, rogerq@kernel.org, sjakhade@cadence.com, 
 sergio.paracuellos@gmail.com, robh@kernel.org, Ma Ke <make24@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240702032042.3993031-1-make24@iscas.ac.cn>
References: <20240702032042.3993031-1-make24@iscas.ac.cn>
Subject: Re: [PATCH] phy: cadence-torrent: Check return value on register
 read
Message-Id: <171992735350.699169.6447434833645425767.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:05:53 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063557_155863_63677F12 
X-CRM114-Status: UNSURE (   4.48  )
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


On Tue, 02 Jul 2024 11:20:42 +0800, Ma Ke wrote:
> cdns_torrent_dp_set_power_state() does not consider that ret might be
> overwritten. Add return value check of regmap_read_poll_timeout() after
> register read in cdns_torrent_dp_set_power_state().
> 
> 

Applied, thanks!

[1/1] phy: cadence-torrent: Check return value on register read
      commit: 967969cf594ed3c1678a9918d6e9bb2d1591cbe9

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
