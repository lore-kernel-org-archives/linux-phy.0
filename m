Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EB3ED37499
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yes+XOxzz0XzVEm+RvwLcM9iAXj5ECofl2yGFt/yWTM=; b=sabqrsim7LIhEb
	7VWuqltrfLtAgsUPaJ12vwERsIgQdXbIgvbngKXU/vz1Qx+/nC1w8qBSz8fUc5K8ClMi/S1TnBaMc
	mAQAp8AB3j2Owm/rpeaH97vGEabbY5tdP2ypvN/UsovHBjjVU3w8crpbWP2AQ/OLcGJhPjg9Qjn6O
	x7AjPiAZW220Dy61jwL3dANSiRLNKVmHrY80MCALz34WjJhwiyDJPlkKa5y0RgYz0jm5XPgaoOakI
	0+bB0iHKDpz/lxzyteYvtjWof+0anKD7boxLj/hR9I7UGqTuNbE2y8tWOf8YluETi/Zry59cmO4hG
	Tiy18yglvKSDbXHrmc6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Sjs-0000000FM5g-3IAm;
	Thu, 17 Oct 2024 15:48:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXt-0000000FIz0-0GGp;
	Thu, 17 Oct 2024 15:36:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C2F75C60F4;
	Thu, 17 Oct 2024 15:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 923E8C4CEC3;
	Thu, 17 Oct 2024 15:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179372;
	bh=fo+CHF9qHwWN/uBVKplYMXMd5ty02jFEE2Ox30uGgf4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KEgM85/zWOLKZ5N/8GHERiMJ5bO4Dj3IoNVywTfnEa4ZQ3HVCduEfskJZpsUNJpzy
	 zx5dNSNwizZOtU7TNJotLf6rrjYuhftYzjySzP2oL+3RnCZvat2HtDd0zkPDn0jot4
	 I12FQT+drgIh5tD1NBpb+HEWYpXwAO4ziZRpJmJjxwBe5ngVkSHJD2HirY7nigJZ3a
	 YayW+dR1dkKY5gvw/GeAhzu8E5O0o/mD8Ra9xQsO/7J2nUfV8roariIrsgT3jJMxnS
	 i0E6BQsvoY+0JXyPIWAD+zyuqzstxhvDJ4OdCn8Zlphkx1ZPX+C0KJWyCzC2IpoJf+
	 EL9TTGdi8RsnA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241007162732.2450168-1-heiko@sntech.de>
References: <20241007162732.2450168-1-heiko@sntech.de>
Subject: Re: [PATCH] dt-bindings: phy: rk3228-hdmi-phy: convert to yaml
Message-Id: <172917936923.288841.7317586355645803007.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:09 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083614_241933_3F7DF8E5 
X-CRM114-Status: UNSURE (   4.80  )
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


On Mon, 07 Oct 2024 18:27:32 +0200, Heiko Stuebner wrote:
> Convert the binding to yaml and rename it according to its first
> compatible instead of the unspecific rockchip-inno-hdmi naming.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rk3228-hdmi-phy: convert to yaml
      commit: de30906910f8c2a91b236ff77d7dd5edfb14bb55

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
