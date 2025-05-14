Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C31C3ABCC
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfR1q2xyqCKxxCoTqRAmclP8WUhtKS+1e9iuKfifn4A=; b=jGUgjX4mLFqDOX
	I6wjXXPrchBVlUzLtHI/3GW7Xl44iPn8t5t8z7L4AZEyxkAPMJc/1Pi9NWCYT+VYlspS0WpzyV8Nc
	hW7yfivCx/sqo1/3fV7/CLKwNYnHMUQM7oVqfHruIIcwDoji1zmslkjPD51ntGIWNOy67jLZa/fwV
	3GR6SjI46mRjMCu1lpE7t+0672I+DNfWOIyFc4RRmUW0CbQ5U04QU6hkajC/Jubd6hn9lN8EZXS7q
	877pNntB/Ov7KTcgEBtgBlxQAmUhmv2vR50Q66Nd4PUnopaYRE3Uiw4O4qDBNV8jUJXLqb4yCRmAU
	Omh2CdAdVqm24UOKU1WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYn-0000000FInU-2hYN;
	Wed, 14 May 2025 13:54:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQw-0000000Euao-3gf3;
	Wed, 14 May 2025 11:37:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9DAB744678;
	Wed, 14 May 2025 11:37:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 767A9C4CEF0;
	Wed, 14 May 2025 11:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222678;
	bh=5OwOl0Bj2Q2twGH0ZMeTDbcw2QPkZjXjJHWmhXAwipc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=r0bNqbqlC5JKePKXJVnTj53Jae5ZjZmPeBrZacpIxwF0CYDc8vf0SpIBavb9mdh/u
	 35gySRlT0LCrghInfjVP+VQeD0dk54kkYaa37CWtAU9KZETXpNelWjbS4eiHwC7/Lv
	 GfR7TePORiH8Npk+FpmKuwWP+kXvwvWH3CZresGMquBfYdI71XImcigraaIfQROS8g
	 nzbT6g+zDosTSwr4LfXYBMARRt69PmRRyUlVgN0k62diJ92aNpvaJfReXYsfB1KRmr
	 ny8LDEp8TOogjo+hLa9UjgCHtb84Ix7e3wkXsVNkpMiUuBVJs0Ztpv+l2OxDM8Hq5A
	 f0RB++qjCNDug==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250503201512.991277-1-heiko@sntech.de>
References: <20250503201512.991277-1-heiko@sntech.de>
Subject: Re: (subset) [PATCH 0/3] usb-phy support for the old rk3036 soc
Message-Id: <174722267614.85510.13471013929246898806.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:56 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043758_938869_C9E5CE9C 
X-CRM114-Status: UNSURE (   6.54  )
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


On Sat, 03 May 2025 22:15:09 +0200, Heiko Stuebner wrote:
> While trying to resurrect the rk3036 board in my boardfarm, I also
> implemented the up to now missing usb2phy support.
> 
> The implementation is quite similar to the rk3128, except the not-
> supported charger-detection, so its addition was quite simple.
> 
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: rockchip,inno-usb2phy: add rk3036 compatible
      commit: d78b565371314e48242cb9383d0f9d331119ab2e
[2/3] phy: rockchip: inno-usb2: add phy definition for rk3036
      commit: 3ca48b955bb34a3b07dd915318d73a23740de282

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
