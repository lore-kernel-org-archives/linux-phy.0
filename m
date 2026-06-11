Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DF19CD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWT14PTypPD3mTQ4O4qvVo5UDGIQu1WK3mW4VWJbRPQ=; b=tWXgkhw+RSdIH+
	dsRy0z17hRG8mT8A4vM3tccJi26buyPfn6E4fXG5ncLcY8F7O+WFNvsJapU+nZaX0w+GnnIwgHlhM
	gqy5fpO2pTCGqQULs5PBFn5QaxnIrRfzQrstEv6Ap1HCPeg0yXFxqEFCuRcTin8aqrgPzJA/1ttqB
	BVL+DE1Fo5O7mIkSLLx3JJY5UVhkFqH25yY2T6911iiHmXSkRwoDVLpUFEvLEb9W0vVDogmq4a1Fy
	9fYwFVRkdQIIAgkSjJcI82Ly+7z6yjHACx4NW+H6c1GT5h7HsqCT1GCiUCnaD5c254Vz8fkLwxAxM
	nY4QZTiqQXjERhqsvbvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRl-00000009gvn-3zcw;
	Thu, 11 Jun 2026 15:35:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRj-00000009guj-3HMp
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:35:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1657B600AA;
	Thu, 11 Jun 2026 15:35:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CD5C1F00899;
	Thu, 11 Jun 2026 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192154;
	bh=+X//aE8JlBO0vat6y9vMNAc6uzi9BwS+bAP1p8utoyo=;
	h=From:To:In-Reply-To:References:Subject:Date;
	b=Fwf6uYG3qASA+gQsgnceviGjCHaBB6ty9IKbidIN2HCgBY7v6DYdXHakg6FU1jpQB
	 MhU62iAaVENuX5EviS6OaeXokvpZRMG5KqV2MHMX+zXJEbM75y+Hk/Rl8znIg8KbNP
	 VEq6iJO49uOZLZqTgDqvhLlVroguz4wYlc5WgPHokBk+vHGzQm3obyAYYyiRf9AusU
	 XJ9BaCNidbGZ0Apy3Ol+6HBpWo4ZqDMbSRdwZCZ67AzH2mqPs87z6AzUIUu251Xz4v
	 X/FyImdkTxH0iENh5t2Eq2RJvlB0HIWWB0jX4pvrbP7yc0VJs7eGCtgoTwdi6CMj/j
	 VV8ThKFufMEig==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260505102913.188406-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260505102913.188406-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] phy: Move MODULE_DEVICE_TABLE next to the table itself
Message-Id: <178119215320.568088.3981475882754864802.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:53 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 05 May 2026 12:29:14 +0200, Krzysztof Kozlowski wrote:
> By convention MODULE_DEVICE_TABLE() immediately follows the ID table it
> exports, because this is easier to read and verify.  It also makes more
> sense since #ifdef for ACPI or OF could hide both of them.
> 
> Most of the privers already have this correctly placed, so adjust
> the missing ones.  No functional impact.
> 
> [...]

Applied, thanks!

[1/1] phy: Move MODULE_DEVICE_TABLE next to the table itself
      commit: 1e8065dfac34d1217f961e079959b71c69123417

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
