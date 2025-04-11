Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D02DC36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mT/Sbqd81Qxfc6Nc8YmBpjCS8SrW1CDE3xBB/dMPww=; b=Gn+TT8ue/6qf1I
	0DRRm2BqEWVR2v+zvV+grF+7RAwPyRP3MhfxTGC63ktjwakQOktZwKJYQvQqvv2/eHGHTBiJJVEmj
	13Fr5jWZTT2A/ntcC2d/nDsSkz4Nd+S+JRTtZId/CYvz3yNDLOWK17/w5yUdEuOcC0UYqmzLwdlFt
	T0YtjkdqeXO+1rFmtOpOq6Q3YFuscfDTJGiHXjLl8K8QWL7m/O0vsOxaMRu0WIzSxEGQAUX9R/gTI
	IusmuHwrtmaYyARI9heYT1U++xyLpHGvkzTImF1k/Px93F3jmNO6qPQgqnnJV2lu3VQ8ISflXueLQ
	EhQ+6Xg0S3g2emjM6IHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DF8-0000000DgvA-3gK9;
	Fri, 11 Apr 2025 12:12:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDI-0000000DgUi-2cM8;
	Fri, 11 Apr 2025 12:10:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 225645C691E;
	Fri, 11 Apr 2025 12:08:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44787C4CEE7;
	Fri, 11 Apr 2025 12:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373428;
	bh=ma8HZgD9JZlh64w2TGnecb0nKKh08kqyZOYZMMtYpZc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ae+o/cyx/enaKuzdD4bQBh/9s+5M5131Dr+2RiZwwfY5LAiT3IEoCPvAOXERoleSi
	 sRq8Y2YFvVkDjW34zP9dk++8HSs4Rw+ZXUCXkvYr9/PMc2XX6gJNGDx4vW0Q0TBTlq
	 7YSIJK7i2sY7X3tv5aZUeHzJSRSxOnoGIaMBfoQZrCEaMcyYdEv0r+xpOqSvQg2yTg
	 tDJUYRJIFVbAySqmhQouOka/cTTn5x4ufHEdAw5xQ+B4L0rQ06qEcr/uMJS7nUc620
	 a4q1SZgvu/oVfyFaMygtVr2g6dR1MzQ8IWDtv6V7LB2eNRMEKB3lbrRfQ2Hi9f5enF
	 6l7yMKHi8ZQxw==
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko.stuebner@cherry.de>, 
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <e64265a4-9543-4728-a49f-ea910fccef7c@stanley.mountain>
References: <e64265a4-9543-4728-a49f-ea910fccef7c@stanley.mountain>
Subject: Re: [PATCH next] phy: rockchip-samsung-dcphy: Add missing
 assignment
Message-Id: <174437342490.673813.7534992392289400859.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051028_709585_5329CF7E 
X-CRM114-Status: UNSURE (   4.01  )
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


On Fri, 21 Mar 2025 17:36:14 +0300, Dan Carpenter wrote:
> The "ret = " was accidentally dropped so the error handling doesn't work.
> 
> 

Applied, thanks!

[1/1] phy: rockchip-samsung-dcphy: Add missing assignment
      commit: 9cf118aafd6682793c40dde31b5f24d271da3996

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
