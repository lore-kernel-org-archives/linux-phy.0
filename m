Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD3DC88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LuVTvMDrG+Zb6QYMCU/y59J4g2FOYrSaQz72lQ2HjY=; b=kgNYbrPtUy/+4O
	qzmiKNXesaTNFfokTGh3q1MHJNuJAdyX+Rnp1J+mCsw+D2uGoEQx5Eqy4aeExycX1bdwK8L2uwahe
	Gbe1ylbOiWoSjDlq7AHflOMYRHR6zWKahtKKmrbTfoz5hoJCTit9grfliEYeAkB2E5ihBVtGD2dkL
	9axtjetPRGK65juHbd4Yto6fI++8JHRTMK7s+GYkcikYaWl+VRv3XHynxf9J/hrTftCqPzIQFla3b
	9ezBJGyL0TKJG7sCDnuzdqhpX6WPk7cnPDuxOEgaSGqCo6ZWkGPNjtVrSRY4JCCoz001y+9bw4xdb
	/yL6IfStUagSRHeVXa7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5htG-00000001bdy-1YOS;
	Sun, 13 Sep 2026 10:56:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5htF-00000001bdJ-3Ia5
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:56:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 375A660E00;
	Sun, 13 Sep 2026 10:56:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5B101F00893;
	Sun, 13 Sep 2026 10:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789297012;
	bh=2XT2LnixGn91Xc3D4NtPTJkbbuH+9TERLl4v5tZDuRs=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=DoQKW3rAxl3ptgln3nNYHwqpIlQtrFhu+gLrbOo4mMnzktLwakAYrMT52bjhKD5wj
	 L2HJMuQUr6MSc2ppPPCCvINyInmKUs8VWviMV2A1kgwN0WFO1c7Hy5Tk8pJ1mLMaZr
	 9XsDNBTQOO6GWpZtbTD+L7A4A9WVpIGDmA/7Z+aPp2kaA0+0PW4oxC8hjOa3rUcFGp
	 YBb4RJbmL8WM46xr3Y4qF3EulBlqRJXvVSSKbEJddZ0ZsvwWNhsJAxsMLg3NXiGTHy
	 jfFr3aptjLIPufN/Qhlxouwj3DDxHhHXBmuXTrlzPt7DGToKHaobGo6sCf+pDbKLCM
	 7fL5rRW3HSWlw==
From: Vinod Koul <vkoul@kernel.org>
To: Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Pengpeng Hou <pengpeng@iscas.ac.cn>
In-Reply-To: <20260615070123.51155-1-pengpeng@iscas.ac.cn>
References: <20260615070123.51155-1-pengpeng@iscas.ac.cn>
Subject: Re: [PATCH] phy: broadcom: brcm-usb: unwind late probe failures
Message-Id: <178929701019.215437.9872353420312468460.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:26:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Mon, 15 Jun 2026 15:01:23 +0800, Pengpeng Hou wrote:
> brcm_usb_phy_probe() registers a PM notifier and may create a sysfs group
> before registering the OF PHY provider. If provider registration fails,
> probe returns the error with those resources still active.
> 
> Track which optional resources were installed and remove them on the late
> provider-registration failure path. Use the same state in remove() so
> cleanup matches probe progress.
> 
> [...]

Applied, thanks!

[1/1] phy: broadcom: brcm-usb: unwind late probe failures
      commit: 402266bacb70263d4ba2a1f0a615210c9c4cbdd8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
