Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F494CA1007
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 00:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ME05RlaPWKn4BMQiHljm780j4hinHAtBBdBZwnHSf+A=; b=iTg0AvtcGyFD88
	lVktr1aUrcbTs1GXJsTodv5Fccy8lQsVXLTCc9ONTar2pjR5P0ZEqPqDhkYsFkUIVvD0QOqf5mloQ
	AnG0EMzJQ006eKViMKP9lQe+JBK6QoFQY9IRMiBtSfthQV3sEFfhSoL3ZgOIpZvXaD4pKkGRaV/Xu
	Z3UY8cFkHlOKU9btQxPRXZeKDQYioD9M/uVD4wndZCcbCJcPYhYh3l8/WxWFiDRsVdJhXvf9Z48g0
	L1DpdhgCQ1lVyh/KWEmwzVPPtp3vth6ETpGxFTZnJuf23pwHPtLKKB9y2YM5/TTYK3/2qFhWuDHxP
	2JI78ZWL1bxtvNBdSkqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utFFr-0000000EXvC-0MyK;
	Tue, 02 Sep 2025 00:52:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut7wm-0000000DODc-003O
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 17:04:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5C2E643932;
	Mon,  1 Sep 2025 17:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF61DC4CEF1;
	Mon,  1 Sep 2025 17:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746239;
	bh=7vw7aKVwQgQZE75ooS+4W12By7oKTKW2QfDfvc/Gkqw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Sshll6/zmnjzbzUim4kpGfSgkHwtQlOkFj8OZQZy0LyTJz9ILhAqeKvJJkrnb+jCk
	 QgHSGHnzlTHrf8jaIUfBVty2hCMqm3mRdWOCD8zw10tjjYTclV0H6htcWuHfQCGB5q
	 utea7N54QDxbVXZbRs9sxOjXJ0AXgQzF8WIXW4vBLIH4f57CAzaEaOFDi/1saFtkB6
	 IxwkHWkVYf65d/Jsg2+hamOdQDFFU1VNCIgxZCA876FSLa6lG1gyz7TNFlupYyCPUI
	 8TgjRWPXo0IqNZHqYLc17zc6ekF3SQHI3HUnknS7BHR7dlGt6iArJdrFB/2waOgqMU
	 celef1YCYsCGA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Walle <mwalle@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Andrew Lunn <andrew@lunn.ch>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, nm@ti.com, 
 vigneshr@ti.com
In-Reply-To: <20250819065622.1019537-1-mwalle@kernel.org>
References: <20250819065622.1019537-1-mwalle@kernel.org>
Subject: Re: [PATCH v3] phy: ti: gmii-sel: Always write the RGMII ID
 setting
Message-Id: <175674623530.175374.344829536743551293.b4-ty@kernel.org>
Date: Mon, 01 Sep 2025 22:33:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_100400_069211_C971DC1B 
X-CRM114-Status: UNSURE (   8.39  )
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


On Tue, 19 Aug 2025 08:56:22 +0200, Michael Walle wrote:
> Some SoCs are just validated with the TX delay enabled. With commit
> ca13b249f291 ("net: ethernet: ti: am65-cpsw: fixup PHY mode for fixed
> RGMII TX delay"), the network driver will patch the delay setting on the
> fly assuming that the TX delay setting is fixed. In reality, the TX
> delay is configurable and just skipped in the documentation. There are
> bootloaders, which will disable the TX delay and this will lead to a
> transmit path which doesn't add any delays at all.
> Fix that by always writing the RGMII_ID setting and report an error for
> unsupported RGMII delay modes.
> 
> [...]

Applied, thanks!

[1/1] phy: ti: gmii-sel: Always write the RGMII ID setting
      commit: a22d3b0d49d411e64ed07e30c2095035ecb30ed2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
