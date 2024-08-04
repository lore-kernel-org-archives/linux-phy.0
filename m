Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F1FC3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSbGhFtvhoORdV+TpCrqknFLSMQmMZyV6TCvHVM6g3k=; b=M/hdeL0+DO7v7e
	yzqh/vWuD2ethu6jXSdNMWswGDw1Z6Wxvbecm80BbSNST47homuBcLF8VMabHcytptmVxvqFjKcSX
	3cYD4vXShannBitDDBBA4qDjAlSptwxflfOMfo2XBl7voc0HVaZgfbzAO/KpaOgfJyNiWdByxM4B/
	+SeXRUFeRxPdAMj9YVk0mj+1XYyYKDAdJsTM/FvAwLJ/0Ea8dp0Wf23eAorDqcCyX4Wenbysmh8Ef
	qZ9nwxCR9fBsAhGR629jWRsoXcRxV306rkI3n5ZNKDeWw0ZbtL0Uk79x8I7xJCfHHEEU0/YJigmib
	h3HiEQd0A4SdGFcYmWXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safPN-0000000DitT-31gX;
	Sun, 04 Aug 2024 17:52:41 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOq-0000000DilE-3D5Y;
	Sun, 04 Aug 2024 17:52:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F1B58CE0986;
	Sun,  4 Aug 2024 17:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54F78C4AF0B;
	Sun,  4 Aug 2024 17:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722793925;
	bh=UawR6ZVFed6cGGNRU+ZG50gyOHGgoERASO4wuWG0GzI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PEgWZuOn+vgpcjys17BhMPrP0c31pyrSx11JLKjut9zeVMIk8OlHNLfaq4AiNl3b3
	 0QL7OrpkWwQXF+i3FkmqJrYP9k3x21mvYZ0mBq6vpJrlCrrP6ECc8TDUPX9rLjpMP0
	 7pqnMY/UOc3wxeoa9sOJ+oKcB2KKTdGspfmjZGYeSf2jJI9yxeWpOCIoLRpPgVfr1P
	 vucpUCixC2Lvk+nP/p+ktXCdSqCcyRRglwzZOjKGDaAr7yQAxp9t9I4s1ucX+xOOJy
	 TSIdEGR9XPY+dVXTqRd4aFbouyBR0TfKMO4+At50VnLJob1cZKIcSMlhSxQ/2ILQls
	 AsHmD39Je0Y9Q==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 kernel@pengutronix.de, festevam@gmail.com, alexander.stein@ew.tq-group.com, 
 Xu Yang <xu.yang_2@nxp.com>
Cc: jun.li@nxp.com, linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240801124642.1152838-1-xu.yang_2@nxp.com>
References: <20240801124642.1152838-1-xu.yang_2@nxp.com>
Subject: Re: [PATCH v3] phy: fsl-imx8mq-usb: fix tuning parameter name
Message-Id: <172279392198.406224.16617087876410546053.b4-ty@kernel.org>
Date: Sun, 04 Aug 2024 23:22:01 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_105209_008593_7EC12FED 
X-CRM114-Status: UNSURE (   4.37  )
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


On Thu, 01 Aug 2024 20:46:42 +0800, Xu Yang wrote:
> According to fsl,imx8mq-usb-phy.yaml, this tuning parameter should be
> fsl,phy-pcs-tx-deemph-3p5db-attenuation-db.
> 
> 

Applied, thanks!

[1/1] phy: fsl-imx8mq-usb: fix tuning parameter name
      commit: ce52c2532299c7ccfd34a52db8d071e890a78c59

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
