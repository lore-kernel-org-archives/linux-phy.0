Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDEAC27C7A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 09:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRceh5ITv+8KvYz3y0mB5KaHX1vIyw4ECbau4sh4bPo=; b=LnEHPEPu/c17lN
	ODzzlMv7szyu3i3g6e351Xj6ZlaNoSmcTycv1WjpGdh2kULRAR0xrd6JZzdkdjB6BOVXVp9lKl263
	eKtu94inmBSrJjptJlXQeFt7phER0xKZqFB5jQYZYhUoTWYB6ShVbEr7y0jF2FZl+2US4Yp9Zq7mk
	VtLmxdjTzCw+y9FJ/Sbq8Y/usDE3HQaxCjN6nVIWcuYlMLJ9acZfmtbXqWgK8VivNY01guvv2CWry
	2w3V2NVMl3XxVWDy5BiCUgiiN3bFbAE21AIqf3CTiiQBIAKgH6ThmJhMoayNIDL0NsZzNvjGJ71T2
	vqBJJQVrjRp7DriRbGww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZjj-005zFr-1a;
	Thu, 17 Aug 2023 09:56:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZjL-005z8h-0f;
	Thu, 17 Aug 2023 09:56:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A0F5061BB6;
	Thu, 17 Aug 2023 09:55:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F8A4C433C7;
	Thu, 17 Aug 2023 09:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692266150;
	bh=7NJk7yTDIx5JNZ2H+CdB0YARuKRjgxzvXZaRbwPq+sg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bvR2ktSch5R/TcVaReBlqs8rY77w8p4BL7bR53Ja2uszsJ0rgxHZPjAAdwV5rqfOd
	 1PpZJB+5JIJkSju+Znn+Ohlc5X/LtqNGZgGmfcFJPKollH5ZiSisMJ0WEiafIgNl0/
	 FFRn8+YIqEssGQz5O9afumvY7ZuD2bs73R23KbDUT82mokaxXwogRnZ7Q8l/1GPmUA
	 fyGeHoKcMum5XUP/z0JwkD2CpjXB0FQSJ1klZjrbwN4YHqoMnAele2k/xXzPrXUl6Z
	 y+GE7vzX6/kNGdaiZmStdkcz1cD8TGaZ6pmXqoK65T5QVFjiVW/1o18FH9nMTV9bL0
	 /nim1mIPIm/Yg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, 
 NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20230816080256.611380-1-alexander.stein@ew.tq-group.com>
References: <20230816080256.611380-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH v2 1/1] phy: fsl-imx8mq-usb: add dev_err_probe if
 getting vbus failed
Message-Id: <169226614668.81413.12891911756153095231.b4-ty@kernel.org>
Date: Thu, 17 Aug 2023 15:25:46 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_025607_950214_915A899B 
X-CRM114-Status: UNSURE (   6.79  )
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


On Wed, 16 Aug 2023 10:02:56 +0200, Alexander Stein wrote:
> This adds an error message if getting vbus failed for some reason,
> -EPROBE_DEFER is handled appropriately as well and adds a nice
> information to debugfs.
> 
> 

Applied, thanks!

[1/1] phy: fsl-imx8mq-usb: add dev_err_probe if getting vbus failed
      commit: a11ecceaf41d2dd542228007940652fea7532276

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
