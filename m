Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 593FEC27C7A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 09:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVseLlS7SjxdbkgNpVM0HWJSHaZmNUG0s5Dx3qMJBgI=; b=AGlWuzJ4DiqvQr
	Q9V2neIBgz/liUfiGTt/ZFV4wzJ24BQhUgvcI3j39UWdsJ8kj8XZnfTRmGdsAVHsoDpU5k+2eMlcr
	JBVQiOOF9fY2jXRoV1RO2a16YsFSA37URd3wogn98/3ByhlI0QeHrjzDUr9Vo8VLJ9CsnFdZ7cUDS
	Bx1ozAKJAOirLcrxtzxlJx6s79vjNtkkT/8EXhfhvCV3/KHZzx2O95y81T7TRNDhNQ3FECo99PJzf
	nVQcIIb93jtanW4gpd6BFcBtCN27qzKFSQcvuKQX2FIlQyBopsjhJyLk0LX0pvS7yR1zU/+ARISGR
	Pa28UCy75Fw8rwxr/EuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZiz-005z1x-06;
	Thu, 17 Aug 2023 09:55:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZiv-005z0Z-2B;
	Thu, 17 Aug 2023 09:55:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E8C9F61594;
	Thu, 17 Aug 2023 09:55:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8969BC433C7;
	Thu, 17 Aug 2023 09:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692266124;
	bh=iAvp7mQOG/UU3PCCGlf8n0zlYCYbi6K/tgHvyLqHbl4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KhOqAvnc50k2SSGNrUgLVHRi2+uCSaPwNF70EgF8jytpiVPI02hxQy3yelOtVyP2g
	 riu8fHkpveYugTMfqJwCvJV09QTIfoa2pHSc4ikxTtlfXS9BscMdT8E9FCVaHI1wF6
	 S9b8rzzaZAkrJrGKGujVnT0tmzTqBRDqA2PDWiBNOa+kPtes/WKJlFDM5aAMfQMzjw
	 bRlwYNlmgL4wM5+g4gQrMOrfhrNxWBf5LFgdMUM9vB2kk47fqbPXqTX73i/usO7fgo
	 hbo1DQGCp+B0Pz40t8lToOxrpU2SOiIO8FjkH4EdHAG0AtVwQG6TFwi1z8dd+xEDjj
	 4if+ObLufOdaw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>, 
 NXP Linux Team <linux-imx@nxp.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20230801084807.87160-1-alexander.stein@ew.tq-group.com>
References: <20230801084807.87160-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH 1/1] phy: fsl-imx8mq-usb: add dev_err_probe if getting
 vbus failed
Message-Id: <169226612108.81413.8366049738443349239.b4-ty@kernel.org>
Date: Thu, 17 Aug 2023 15:25:21 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_025525_760381_DFD5BFD3 
X-CRM114-Status: UNSURE (   6.98  )
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


On Tue, 01 Aug 2023 10:48:07 +0200, Alexander Stein wrote:
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
