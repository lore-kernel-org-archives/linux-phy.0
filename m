Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8BD3E7107E
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6Ofr2zSl8YkBGdreMIwDllqAuht9+3Y9zn5vcMoWnI=; b=hYOl00JpKoJ47B
	tZvcyYDks86Rt2XCJOfCkWT49XovOjSqHZ8J2TEG/6WVjJ1CT1u9L5tMxdiDZO3fgtOMnwyVqoFEo
	+qt/mhESqmDLzmKF1UYQiVMNKtxtoFPIMCfDH2u/0H2rb9oZQSX8VqfUaEdhz33P9X/603VjoPuZh
	jwaSqtJyVPe+obQl8kuz8KLcM2dquKyOFA91bskuq3kA/G/+cyPsWsA91GqLx+6aH/ha1ZMv9/9It
	Y9ffDLUavlOMMC/cPn/Hz3yKA8o8JVPXpenmlUrVu4CgDCSpYMn7wVZx/NsicyVRzuK1wFySE+F7O
	zkx6Q8bWUVpDNSWssgSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdK-006GLT-1t;
	Thu, 21 Sep 2023 14:26:22 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdH-006GK3-1X
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id A74CCCE1D09;
	Thu, 21 Sep 2023 14:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F40CC4E74F;
	Thu, 21 Sep 2023 14:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306375;
	bh=MVUJbE0fiLxSzP6G+WHAQJQsvtuBZYyYfD5F8xMDgaQ=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=bGVow/4LPX1RNdNaCks9s/COYMTYE5hoJGiPvdk4muIAhXtFacvhwf0W40TpmHgPw
	 jzUDU5EKuGpO4SMr/JdTMWsUeXPlxXBAjWfYKu5p3wBQ4hFKKo9FOfFIAI1v9rrc2n
	 /8olYG2ZO5LeOpT6LD59FUIX5JKp0XENppqwKdMupxY0K1+1Jg0qiGfMfwYr6MXWry
	 xQfZUPU87ONZiNJ2AAlHOvxO2rum4SVs37sr9b2ZD3WedfoVfaKG40FAkVUavYE8vc
	 efl1I4kuBaX1akU8ev4ExtTufY/BBJ5PMfWESDS06EP1JLhpqv8DcODkWbm2VwkGmc
	 3SDjeKp8pfP3w==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Stanley Chang <stanley_chang@realtek.com>, 
 Jinjie Ruan <ruanjinjie@huawei.com>
In-Reply-To: <20230901075231.1368947-1-ruanjinjie@huawei.com>
References: <20230901075231.1368947-1-ruanjinjie@huawei.com>
Subject: Re: [PATCH -next v2] phy: realtek: usb: Drop unnecessary error
 check for debugfs_create_dir()
Message-Id: <169530637404.106093.6146011602392780719.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:14 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072619_682690_6490F2AA 
X-CRM114-Status: UNSURE (   9.10  )
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


On Fri, 01 Sep 2023 15:52:31 +0800, Jinjie Ruan wrote:
> Both debugfs_create_dir() and debugfs_create_file() return ERR_PTR
> and never return NULL.
> 
> As Greg suggested, this patch removes the error checking for
> debugfs_create_dir in phy-rtk-usb2.c and phy-rtk-usb3.c. This is because
> the DebugFS kernel API is developed in a way that the caller can safely
> ignore the errors that occur during the creation of DebugFS nodes. The
> debugfs APIs have a IS_ERR() judge in start_creating() which can handle it
> gracefully. So these checks are unnecessary.
> 
> [...]

Applied, thanks!

[1/1] phy: realtek: usb: Drop unnecessary error check for debugfs_create_dir()
      commit: 6ee8a9a772b5abd9a9791123ca7aee2dbf126d5f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
