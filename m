Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47D8DD374AE
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5cCzAGaOveoZhZtJHrWVRGdgKuys8+7fJg0oojN9bo=; b=CyLMLE4TZ4DRLn
	bM29lG2P+V/PONBQgpkD25t258Wv1E+/RDHB6DEE7WzWiiXqb3plzKzCBnC7O/DbbGQXO/OJ8W+Yt
	hgDA+xl9TN/kvJ4ALaA4J2VM+09IVr4AhKtGrJyIKvVhYtn54xsO3u98ndrKN3n8ptWaF+ruoEIaM
	xdraDTbjiaoWi/DcQPsfYi4oQuhZ/Prd8fHC6IMI5MHKt7VPv8ClGE0UdIj0A3zgJk60t4qXORPOg
	F9Jv+e/Do3gIN31HF6l6hOy4Qs6RceEX/EEpVctfR3hSkAv6qlUwWS0+VVbBFEC1kUzERPXU3ojs5
	sVSDe1UwFOssWvzO/qVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SZN-0000000FJSe-3i5k;
	Thu, 17 Oct 2024 15:37:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXE-0000000FIjU-48LB;
	Thu, 17 Oct 2024 15:35:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 02EB95C617B;
	Thu, 17 Oct 2024 15:35:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E9C3C4CEC3;
	Thu, 17 Oct 2024 15:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179332;
	bh=poBaeIXGhWrOXxHqNDXA9/SiaWES5p961HT2/STyJzQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=brNnxV2APJL6CDVOruAOYWetiD0wY1K6o7Im04dQsDiBlwDAzik83b0miXsZ1sYKY
	 tppdn3RcGe28cwVl4GbYpWHuFyqZ15U0wYLSCz/D3npInK4hsuuU+vNj/PlaZMYgeC
	 6relWYfvShMr/MdoOM+AvUNtzoXrE3IC3GrcYgVqISUMd7Au7PbbYdww+/Uig2K76S
	 xNPM99SjWsSlAs5Vsk8vKwL/wo3iBesF1KaAAGrVc1pjyz0fymaxnGw6Xd+8/FLT13
	 g0w0kcpL59Q9z1CA6jyIWKZ0o6xn83ZwcHyQzEfkfrFPfoyZuTRWmbgrnR58c2Wpi6
	 ZfwQoNJsfcr1g==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, heiko@sntech.de, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com, 
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, 
 Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <20241017025230.28752-1-frawang.cn@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576
 vo1-grf syscon
Message-Id: <172917932783.288841.4239096557035814697.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083533_099611_D1073318 
X-CRM114-Status: UNSURE (   4.77  )
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


On Thu, 17 Oct 2024 10:52:28 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add rockchip,rk3576-vo1-grf syscon compatible, the vo1-grf is
> configured in usbdp phy driver.
> 
> 

Applied, thanks!

[2/3] dt-bindings: phy: rockchip-usbdp: add rk3576
      commit: b3e804ab9aad465ba7285aa5daf83656d5efc59f
[3/3] phy: rockchip: usbdp: add rk3576 device match data
      commit: a76de028c619dd18f89786805bcc7bb4d379ea9f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
