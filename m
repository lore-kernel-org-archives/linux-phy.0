Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 207DCD374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sK/+qVQbp2sgViZsKmQjDhNKZPqNr0z9O+hjMaae/08=; b=OvuFwgt3Xip8da
	4R3yeuREwyeKD1Dj9kP6HjMYRvrTd0ywX8pKXIHrCQ2hN17f3PvTgP5PP006ZpFmIyY7Ub98An3De
	ZZYPjKx1/Abj8Xi097c6RCkstuQ7XvYp2E/XnSmKE7LUN8+1N17NQOoLJdw8MguK/FM6NkoUdEbwg
	jtV2L0hG1jtnxsmKPSLrAsrHz1sCjeo1PiXBbZD8+jsV/pGGBeya9ZeTi3V0cq2AkvjlGVTr5WNFG
	/vNnlWNrRYhCWz43y1p60n5Q5lKCUVAfN0kqADw9OQYZDFjca77KtwXrtM3CnVKtj4vvoH7Hhw+EJ
	a/mGfJ7VP2/rlA5Cg8yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SZk-0000000FJcV-32Ie;
	Thu, 17 Oct 2024 15:38:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXS-0000000FInc-2GFV;
	Thu, 17 Oct 2024 15:35:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8B79F5C53C8;
	Thu, 17 Oct 2024 15:35:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A864C4CEC3;
	Thu, 17 Oct 2024 15:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179345;
	bh=B+abq4J2qxeK8JBY/cAF42RFyKzjO6n4dj5krRyRfkg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=I43IDB33AoTqRiUwxSTauBr0Juo9Zh2yfZW8Kf89blTuRYUucR78nXaU3DxnZKPmY
	 CDgeo9Pdu/S4lLAKof2KECZ/43tboTN9x15xcR0OGYGbRs0hmt/gSIxKsiQ21m2xRf
	 K2hoQktDHD5i+RJ+VvLNVZaubXFuQmErUo3mKMdekiJKUH8ktiM+sAbn5sUB+ZNI2e
	 iugqRknpdqV6JEsRg5I+wcDLieV4jG9ObKU4eAIeTwn6tpYdC48XPYqIEhNeMfoUPm
	 z2qT2mBP3YW/qzkaFFRlNqHKRW+at4v1nuHsK7oPxbcKYQrcO2ayZ2EnJUsmhzkqFe
	 LoeQYTWTz3LyQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, heiko@sntech.de, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
 tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <20241016073713.14133-1-frawang.cn@gmail.com>
References: <20241016073713.14133-1-frawang.cn@gmail.com>
Subject: Re: (subset) [PATCH v6 1/4] phy: rockchip: inno-usb2: convert
 clock management to bulk
Message-Id: <172917934187.288841.9418215937562601531.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083546_903779_D6757618 
X-CRM114-Status: UNSURE (   6.29  )
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


On Wed, 16 Oct 2024 15:37:10 +0800, Frank Wang wrote:
> Since some Rockchip SoCs (e.g RK3576) have more than one clock,
> this converts the clock management from single to bulk method to
> make the driver more flexible.
> 
> 

Applied, thanks!

[1/4] phy: rockchip: inno-usb2: convert clock management to bulk
      commit: 86e2ed4e9a9680013ec9ab7c0428c9b8c5108efe
[3/4] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
      commit: 0217f4aef0b07a57086baeed9c0ac05160435a45
[4/4] phy: rockchip: inno-usb2: Add usb2 phys support for rk3576
      commit: 3d7de6e870ece5a32153382df9df6fb87613335e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
