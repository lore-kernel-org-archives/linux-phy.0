Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76207C0015E
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 08:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PD58sKVtu+B9gvJQ87d88d33i5oDf484kFQj6HYERs=; b=XDeL+OPXo4FOaQ
	b+Qtg4iXSJQ21otfE8OIWZMxL2pSzFsrp3V1TJo4xjVqC1TDYS1jcQLDSsUrlLudvQLgFYh9DOWTV
	GEl9zpmmm+7vaRUDzkKnGbMexIIATgZz68MMOXpvLUYyvkqzFRQAsaCEajokHkBG9nVCIjMpMI0WU
	v9U35gL4/l5OmOQvwMvqlnXo0GXo8xUduNOvWWODO+v5p8s6bBmEO9BFrhsWFsrmu6ZDS2Gn4hTBN
	eEQoLj+j7vtiDuTQYHxwLR+DfMJ1ynQnJFDre0YycSQUcFWe97SihS29tPnqT6p2/L0qVCbm34KMj
	ExlTJ7nxyjaMTIDW5lDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2Su-006JtD-0a;
	Wed, 19 Jul 2023 08:23:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2Sq-006JrT-35;
	Wed, 19 Jul 2023 08:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=R4cZUw8z7rxxyMTR+zpRQBBQrWjOnDtSx8bESrw4mPM=; b=WxZrf/cAOev9qgRZpYd4Xi4llM
	Ch/BzdRyFE7xzlqGoqwzG3N3BTXylcwxHdHagT+3V56GfpT5K8DuwGgpCGWRkvXzhCW5BpBjNRPqR
	JpSaN0jaIciUEJlPzzpM75KVgexYeaoc9HWoSk161kswvfqaf3mDjvHxdfODoIdE6lo9wHMhT6sMt
	J98m+3gnG6LuGktxHdCj9SM0T84XhQPdT28N3/y1/0SyPzLgHzC3w9Z+6kYjf07ZysKB+pbNDj71w
	ckCYLSvnzygz07XHEeg0pRj1j8JuPpasJco57FGGhXYIevqxRhC4rvi7mIukIsE9RXJMp8OY5T59f
	FXdIfZRA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLe0g-00BDCb-2V;
	Tue, 18 Jul 2023 06:16:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2D7A56144A;
	Tue, 18 Jul 2023 06:15:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A470C433C8;
	Tue, 18 Jul 2023 06:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689660944;
	bh=cUbtQFwtfNqfULDCUbv0nOM8BYXs2LTWrJLdZvxDQA8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KJMbAtyc6I4UHt7JFBVCvT14hZFxEuSn4EUlSOeJYjfmbE5T15HppBRoUbJax/Vtm
	 869HTzQvKifHDgR2O6mXMZPwr9FNPI53GvIY3GS2y1ZXAk84W5q/JxvSiYhQPN6N/4
	 2pdCEkamrgQOIO6ksvmJ1MVA4wNMZ+QvYssZwsUmSTEZCR6yiSJq7yut8GDT5tNhUZ
	 hZsMUuT+RqvRZX4kJfQYgJn9iFHaasyZU3hPQPOsoVupT7pDyG2vOzZ7Vv9UMqPMBq
	 /POpr7jpl0bocB0WIjrTURwiWpsuZMWyF/GB8IzpM7p8HpMfIDZSJ6on4t0eynysl6
	 RRyyt8RJGyA1A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, 
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, 
 John Clark <inindev@gmail.com>, Qu Wenruo <wqu@suse.com>, 
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 kernel@collabora.com
In-Reply-To: <20230717173512.65169-1-sebastian.reichel@collabora.com>
References: <20230717173512.65169-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCH v2 0/2] RK3588 PCIe3 support
Message-Id: <168966093703.340315.14184672794247667224.b4-ty@kernel.org>
Date: Tue, 18 Jul 2023 11:45:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_071635_172317_CB1B0F36 
X-CRM114-Status: GOOD (  10.62  )
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


On Mon, 17 Jul 2023 19:35:10 +0200, Sebastian Reichel wrote:
> This adds PCIe v3 support for RK3588. The series depends on the PCIe
> v2 series [0], since the the same binding is used. It has been tested
> on Rockchip EVB1 and Radxa Rock 5B.
> 
> Note, that the PCIe3 PHY driver is currently missing bifurcation
> support for RK3588. Thus after this series only PCIe3x4 is usable
> (in aggregated x4 mode) without adding support for the PHY's
> "rockchip,pcie30-phymode" DT property, which allows configuring
> how the lanes are distributed. Aggregated 3x4 mode seems to be the
> most common configuration. Both EVB1 and Rock 5B use it, so I
> cannot test anything else anyways.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: rockchip: add RK3588 PCIe v3 phy
      commit: f66782cff479807ad7e98f0cf6a0c0babfe0159b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
