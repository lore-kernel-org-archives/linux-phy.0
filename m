Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9BC6C47E49
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 05:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Khouqv4WE/zvRoq0v44dfb3a7eTWi7iaZY3Q1KMTGgY=; b=kZKsqRskQo1rJ2
	F5IE1nE9OQoaVA6DgHq7wkaeoDF7/URzG2b4UAZ67JryxXqGJyztJ6wi2cXFq7J5btls1DanoZQdc
	UQdtuWdpZfBLZcxnCgnjaRGsYi6TNmj3mKC1nMa5BdYRIxPHPfWlBE8/bMZg2NwMnK9H6YE2h1J37
	wf5WEoYiOpAM7Fvi6ZXOfqa6dJmJEWqgXlzs67cloPEoa3K/nW1Xb6/S0tWyF/gNQTUZh+rGG2WML
	v8TRHQv3ru8ebYVeVEjETrwp991tVKiZjkYZqdfEHLNvy7YXKHVxF8GO811+k0yTlbgffMBFjOpSe
	T4HRfRPlqChONVpTKqiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWIP-001fAa-1a;
	Wed, 24 Jan 2024 05:59:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWIN-001f9l-1F
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 05:59:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 386DF61F8C;
	Wed, 24 Jan 2024 05:59:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48444C43390;
	Wed, 24 Jan 2024 05:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706075968;
	bh=yFrBozIaKa9pAQDFKe2ZCraZhpn/YfI3TF+Anbs/H2A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=aBUpOPbTiMioWl4no25kDR0vJDt6WM95RpRIz0jij8zo0D0bOjgL44TwDz1g2Tolq
	 Ezq+YrmjsWZgk4lEcSCPulj3Xl/cgADt6qzsg7+P08okWa+1DTQYJYC31vgDc7U8PW
	 SZWvVXHSx5zlKEpGG1677A0SUBbyOf2rR6q+DX2GME3NL/VTSID0IjVptsNKO6myDG
	 nm/pG4uOZzzmh8zIhQcubzZeIZlB2XpUr8JBldofKG2WU5G5X5+AAzd9cjV4fZBUuk
	 vVM0YoQHWSaxKQZ5DbtPhX03/De7G9f5ySIE34PpwtIyteTmdxadIRNKNd4H7eiet3
	 nk8b2VBwwQB1g==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: error27@gmail.com, linux-phy@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, kernel test robot <lkp@intel.com>
In-Reply-To: <20240105093703.3359949-1-yoshihiro.shimoda.uh@renesas.com>
References: <20240105093703.3359949-1-yoshihiro.shimoda.uh@renesas.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Fix returning wrong
 error code
Message-Id: <170607596591.395031.2360574561399395550.b4-ty@kernel.org>
Date: Wed, 24 Jan 2024 11:29:25 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_215931_466303_6F714398 
X-CRM114-Status: UNSURE (   4.24  )
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


On Fri, 05 Jan 2024 18:37:03 +0900, Yoshihiro Shimoda wrote:
> Even if device_create_file() returns error code,
> rcar_gen3_phy_usb2_probe() will return zero because the "ret" is
> variable shadowing.
> 
> 

Applied, thanks!

[1/1] phy: renesas: rcar-gen3-usb2: Fix returning wrong error code
      commit: 249abaf3bf0dd07f5ddebbb2fe2e8f4d675f074e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
