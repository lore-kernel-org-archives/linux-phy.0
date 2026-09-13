Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 789AEC88E5A
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3t1xYKraIqQ7bCs9sNud61na4edvg9WAZ32O/l4Dg+g=; b=n1CMfj+HOUP/Yo
	kMDLYrUUspHIKnTUjws3VY2JZvu0XlFwU90vi7lGizbBa3Ms9DkJfLIPxOdkfv49slm2JxILbM10m
	upI0vLsNu+V2buRNpTGuLvT2vtgx5xoQwNb3NE/2oCAC7GHN+nLU45l4Qp4UTeq25B/wOGaL1fLDl
	u7QVMK6zJlPzDkxlHELH1YIDSTMT6MJ1W03Z7a2xb3sdz/fUgZ6ZFEoQfaN8A5J6F+AwuZS67eZyy
	9LADQm3DZU2sCsIYVouGRekQq+xZiqCoS/BBXg6P249VANdaJ7GwCVWI9ibcyEHW/JNfeqR7RhOod
	XQ5B2437E0SKps9rxOsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5htB-00000001bb5-0dS6;
	Sun, 13 Sep 2026 10:56:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5ht8-00000001ba8-3GBD
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:56:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 301F344857;
	Sun, 13 Sep 2026 10:56:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CE231F00899;
	Sun, 13 Sep 2026 10:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789297006;
	bh=MbCQ6U6GuK/b/cm8UVieb8vDK6L7jfo8D2f5/kdeNxE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=enurv+pWoGByAYbjyNdx6lX3RraD9eJG44p3s414wjaeda6HqKuoTgK6e4mapalBu
	 69rjNYvXZBacVH3U9A4HZlDzgvBxcrhysFbgLbmfPoOERmPS0x6ZNval+hi3vQnkq3
	 +DdE8XWLxcUZ9vS0tDv7L9RntlSUFER5qDTcpyE0gegkeJuw/LSV/9PZpVqnJHjaSh
	 w0CzE3w/L6XOn8nxYSMInMgg8WbjM6OuIpWiWQyzJF9zhJDDRnDobJWJGsvegXO/AF
	 hMJyiPxvRG4qef0hw+QRpl4Ex5+8FQl9dnvLGm5pO5cC2njv6J643St5RFrpbufHkZ
	 t2GJXydrB73rQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Aswath Govindraju <a-govindraju@ti.com>, 
 Swapnil Jakhade <sjakhade@cadence.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260306-fix_sierra_get_parent-v2-1-cafe89ee5382@bootlin.com>
References: <20260306-fix_sierra_get_parent-v2-1-cafe89ee5382@bootlin.com>
Subject: Re: [PATCH v2] phy: cadence: Sierra: Do not modify register when
 getting parent clock
Message-Id: <178929700263.215437.1287296789549951145.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:26:42 +0530
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


On Fri, 06 Mar 2026 11:23:58 +0100, Gregory CLEMENT wrote:
> The get_parent() callback for the PLL_CMNLC1 clock was incorrectly
> writing to the register while determining the parent clock index. This
> unintended register access forces the PHY back into training mode. If
> the PHY is already configured, this unexpected change prevents it from
> exiting training mode.
> 
> Remove the register write operation to ensure the PHY remains stable
> during the get_parent() callback.
> 
> [...]

Applied, thanks!

[1/1] phy: cadence: Sierra: Do not modify register when getting parent clock
      commit: 02613aa974ccc84a5448573d253275baace95124

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
