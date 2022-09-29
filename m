Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB7ABC07E9D
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 06:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eDwI01RrLbeDaCL/dhPS89E5b1X2CI4kdb3NcDjzAE=; b=ZoInvKevf/U031
	YEySEOd8/E1FIAoRsRW4NsR5lIG1h5kiXeBkJ0U00ePGLe80b4I2oua6ErMXVJsL5cTzwTtyxlm7H
	GzK7zOVCK2BZQyq2MDB01mEBkjrwEZ14j87wlQ/Ce6Y/DcDF9ENbFq3FNDimWGLk3WCdMSsu8KeRa
	zcZTF2K7IEIClwg0J2HV0G/ERftegmIGoPw3WcTLLxNVxgpaTSnsvg5tIvq/fJC0hawUAZ3k0JhOs
	K30qSjGr7GerdYuXgjlBb0p6l++ubFGvzCokvciFBwKTJoUa5U4n5H6yYw9HnAbBec/xwQJkgOhfz
	d3lCV87+YmmDWlh+rAlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odmnh-001LIR-AX; Thu, 29 Sep 2022 06:13:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odmnO-001LE5-Kn; Thu, 29 Sep 2022 06:13:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2950762030;
	Thu, 29 Sep 2022 06:13:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01035C433B5;
	Thu, 29 Sep 2022 06:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664431997;
	bh=mptkJW/0D7J67zG5IWOS5/3OR8nh/364Sw8qadvLw8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DuMZGNsY9JNwxVqBTv2Qkn8muzAHYMKKbbxpK1IVApLWICoOXYzqZNm4IvozgdTug
	 pWqaMbMVCqB956gdbXAqYJ5xuDwFc9/nDzXBfzriQi+Qt2bRXyHdbzAkwHdo3Ps76m
	 aIY4CJ/t9wx5LQkmL3iWD0R25kp9eh1xAsAH1OFceaoGsuQWAKfXRE1BJ7p/7y5K9F
	 SlxF/SAqPWofOss6e/plGhOb5klg1oSQMqXTYvSpGHHcskKX02J0SjV6SC5XGJjhbY
	 VsQ2dWU94e7LKwUcuYU7xRyKhmTNzzp8s22T5BFwfnmFp5pwY2kwnQgLbW6151osFL
	 93YmbAbu6Z4hw==
Date: Thu, 29 Sep 2022 11:43:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>,
	Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] phy: rockchip-snps-pcie3: only look for
 rockchip,pipe-grf on rk3588
Message-ID: <YzU3eLRCMmogyypi@matsya>
References: <20220927051752.53089-1-aurelien@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927051752.53089-1-aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_231318_733538_E5F94621 
X-CRM114-Status: GOOD (  10.14  )
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

On 27-09-22, 07:17, Aurelien Jarno wrote:
> The rockchip,pipe-grf property is only used on rk3588, but not on
> rk3568. Therefore this property is not present on rk3568 devices,
> leading to the following message:
> 
>   rockchip-snps-pcie3-phy fe8c0000.phy: failed to find rockchip,pipe_grf regmap
> 
> Fix that by only looking for this property on rk3588.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
