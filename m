Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF4F9C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 16:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HjqpvAv5J8RCuoOmr+w0q+FO2tlbba0yeJGd7ZcL/E8=; b=uozXPoAfxWXGEG
	WuueL3+U58UqKQer6sJk/OOYcwxiqcjnWYQLoeOlloZVGFZlObiNBhqjTxWjEyrL9OhNVCwm1TWkN
	k+igozsGSVFP2bi7B/ErCFQXL21VEgqIzMPDZ5If7QMZdHGFpExDY/CBX8UFphIQnMHjjnETeHe5W
	htc3be9y4h5Srmgu7HwspqEgkabgigbVsCFU9WBR01i+npPy0PdXI57iEBN1TpDPGDAamNJNSFYia
	n36m9e4MkEjB1qpAt4/EuXiQvKhdXQjyGEwjeVskQGjRR70sczMCJaIx9hopYaW6phWsMApM37+JD
	WOrAm+pn0m6pihfTW8Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0Wc-0000000GVST-2ZhO;
	Mon, 05 Aug 2024 16:25:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0W5-0000000GVFz-2Wuo;
	Mon, 05 Aug 2024 16:25:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D802560D33;
	Mon,  5 Aug 2024 16:25:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F781C32782;
	Mon,  5 Aug 2024 16:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722875100;
	bh=ryF7GrtzMkbfdVeDLNad9XUDS1FL6/Kl3NU/26TCmIU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bjgHK/3cAxULjmV/kKBzZvl4cepAEFKAJ5iWd1PiKl95RKJhxCP5JpQptYoXoxHxU
	 C48n+p8Px48y9B3xGcTMvAIdJ3nLrvt4y+IOYr/TtC6mcMb3djmwFQ3FhZn2GPbHRY
	 fwtfNevne1SuqU0pvy9Hf3oG0yGEpHPGn8AOZKzeYj620zvB/R4+eQE2IE/E8wVWJf
	 hKb7cAqUKRy83Vpus7xqcjC/68yv/+62SPkGCii2mKn1HKNdsdj6iw4j2OD/q7hxZJ
	 yPbgMW7H3K+Sn8g8yrUrXR/iOAYiNkJZ+WlCS2QzS2Ui16109vbpLfp4fz8St+ec5L
	 33/CpfwOOzXcg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, p.zabel@pengutronix.de, sjakhade@cadence.com, 
 rogerq@kernel.org, thomas.richard@bootlin.com, theo.lebrun@bootlin.com, 
 robh@kernel.org, Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, srk@ti.com
In-Reply-To: <20240716102442.1605280-1-s-vadapalli@ti.com>
References: <20240716102442.1605280-1-s-vadapalli@ti.com>
Subject: Re: [PATCH v3] phy: cadence-torrent: add support for three or more
 links using 2 protocols
Message-Id: <172287509695.465699.4333434090979215764.b4-ty@kernel.org>
Date: Mon, 05 Aug 2024 21:54:56 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092502_076476_BD42F15C 
X-CRM114-Status: UNSURE (   7.85  )
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


On Tue, 16 Jul 2024 15:54:42 +0530, Siddharth Vadapalli wrote:
> The Torrent SERDES can support at most two different protocols (PHY types).
> This only mandates that the device-tree sub-nodes used to represent the
> configuration should describe links with at-most two different protocols.
> 
> The existing implementation however imposes an artificial constraint that
> allows only two links (device-tree sub-nodes). As long as at-most two
> protocols are chosen, using more than two links to describe them in an
> alternating configuration is still a valid configuration of the Torrent
> SERDES.
> 
> [...]

Applied, thanks!

[1/1] phy: cadence-torrent: add support for three or more links using 2 protocols
      commit: 5b7b83a9839be643410c31d56f17c2d430245813

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
