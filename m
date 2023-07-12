Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91D83EB64DD
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jul 2023 05:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2INAuacv2pWIJwE8KdI0t8GbRhwqPB9e4fj8iVU29o=; b=489o1l8Pmivf1n
	hchRGaPfFCnQPROBs5Wq5Qox6um/52RmIK2GUc7HwVfJWwQqYsklSahzJtcC1PiZXh8Iij1jEUfx8
	K2JeyoaPFQYzoh9hX+nb8+KajFSsZtRy/OLPb9YQmB3QWXvU8M/hDKmhrYjSN6tcDBLaZcwC2/i3P
	SpWXl6eXZEcP8zBrCwTdr/DzOpIlAWWl7OpSo9VrfOXNS2o8DQEMot+ZJ3ppYoxi6xCbZCQDCGwxU
	dHWuXnIeCU2IygVb6q0qRwAdWb7ls1iYQU5Aw384x7X120shy1c7B/D2umkkkaCOY2OGWwpbWUe7s
	+Wii/Xg7RqMM8/2LPpdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJS0x-00GYX1-0j;
	Wed, 12 Jul 2023 05:03:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJS0u-00GYVy-0J;
	Wed, 12 Jul 2023 05:03:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 410DC616D8;
	Wed, 12 Jul 2023 05:03:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66FB3C433C7;
	Wed, 12 Jul 2023 05:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689138220;
	bh=uqV6Um97XmlcNN/yUzLMTOP1cF0T1bI1RVjvshk7iMc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pxXw+soQaj2mQLxD2H6AFhyoPP0ATXGQAaalhfSyqvVBO9X9xtBfrPEXOiN4XovV5
	 s0uswwLXghNDN7gi9CPvR/FMyQwZW/HxV6GjNWDybULzlxDrXremK0A7tWRstHqR9G
	 9LT7Z+xQoS02MGs8VR8SshD20SmQyA8RgD9Vhpcqrd4CKGnxiS8bLXO41FiOus8GtR
	 htKka98iZNQF4KelRCuI9j21/lCBqxcIYbisMgPUPxdSOXqCFbZg5a9M+7Nd2Pqi5j
	 S40xZ/umSLlH+o3TLUmrnknK+81n9Xqcf0QjnOjP72idlXQpUMFE0sAqn3aun5adz2
	 DMu3rV58oT/uQ==
From: Vinod Koul <vkoul@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michal Simek <michal.simek@amd.com>, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Sean Anderson <sean.anderson@seco.com>
Cc: linux-arm-kernel@lists.infradead.org
In-Reply-To: <20230711194542.898230-1-sean.anderson@seco.com>
References: <20230711194542.898230-1-sean.anderson@seco.com>
Subject: Re: [PATCH] phy: zynqmp: Allow variation in refclk rate
Message-Id: <168913821797.212309.17019092167663097914.b4-ty@kernel.org>
Date: Wed, 12 Jul 2023 10:33:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_220344_196775_1F794210 
X-CRM114-Status: UNSURE (   6.38  )
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


On Tue, 11 Jul 2023 15:45:39 -0400, Sean Anderson wrote:
> Due to limited available frequency ratios, the reference clock rate may
> not be exactly the same as the required rate. Allow a small (100 ppm)
> deviation.
> 
> 

Applied, thanks!

[1/1] phy: zynqmp: Allow variation in refclk rate
      commit: ea64a79fa6aebf6900f6cba0d6dd9c141010fda8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
