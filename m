Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A23D374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCFnoBwn4nUXDmqhp6BKIEd7iC8gBs7Huz6wv9Uy12w=; b=aSCaSFaCiu6bBG
	K3Lhlt3GYfkD86dvBn+mhPphRo/tmC9wm5Xu/Wa835a9VuulZPkqW3a/xaeX2R7UUIhvkY90ZHQW+
	JetCALHBjaBD8QOwzA9nEB/36MAfONaaj2aUB5tSVdY7bXlPAe/PEkKWX+VbGQtC5Wy7kBJSN63oc
	x9PhSNjxntwLxiehpAwH2X7NMG0RHyhjEt4KDEA/TVy7eC5GoS1/rXk3ufjKO2Iz6Wju5Ek7T86CB
	XlNdFIStGWV4r+M0TVfPFV61xdeuSBZjhmfQXu9QLIhivbb66siAS5krwIg2fHaLWdv/ZlpWvNEfH
	WJqZaAWODqdRMQeOGCIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Smj-0000000FMY5-2jPN;
	Thu, 17 Oct 2024 15:51:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SY3-0000000FJ2o-2H2r;
	Thu, 17 Oct 2024 15:36:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 95F5A5C614C;
	Thu, 17 Oct 2024 15:36:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7364FC4CEC7;
	Thu, 17 Oct 2024 15:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179382;
	bh=VioDkU/PjFIM+BMA8JwIsGi2Honfh6sI28MlT1U/VzQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=a3yYh84EIJkVc4LkfQrgFttPMy4LcrMZeL+aThKAki8gAlyv0vCxpmxQffQVkcU6F
	 jFbUdnXJiqlRpUGYYumM6y9Ms34OxMfEXur0mifblC76BctDjlCsBMXh/m5koyIxPX
	 9A3GXxEFnFfdSnBB2l214Rqq7Vt6CNs7UscpdnXF0/0aLXCXAaumdXsoKae3KgZGJa
	 8/3Q3qjKT98Nr8G95ZqyjFzAJb484wNycwp6q0RNb23e73ykxQf+Fl8I8BGxcz2xNz
	 Xy628wguvkQPPcf6xhEm5/s8ITlDX+uruGTq6hLc7ObAnnxIJUAZ1jRuUNdXyyIqe/
	 ijtZ2mkuok5Zw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: kishon@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, cristian.ciocaltea@collabora.com, 
 Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20240920093629.7410-1-andyshrk@163.com>
References: <20240920093629.7410-1-andyshrk@163.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Don't request
 RST_PHY/RST_ROPLL/RST_LCPLL
Message-Id: <172917938011.288841.10984149232863813080.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083623_653983_C1165CB8 
X-CRM114-Status: UNSURE (   5.48  )
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


On Fri, 20 Sep 2024 17:36:28 +0800, Andy Yan wrote:
> RST_PHY/RST_ROPLL/RST_LCPLL are used for debug only on rk3588,
> and they are not exported on rk3576, no need to request it in
> driver.
> 
> 

Applied, thanks!

[1/1] phy: phy-rockchip-samsung-hdptx: Don't request RST_PHY/RST_ROPLL/RST_LCPLL
      commit: f2dbca169790ea1e436ffdd9ef37d7c3a4401c46

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
