Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FD76E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxc/iKgljxa08aE5Rs7YHUgFOCWf2YUIGr2Hn39Zies=; b=i4SYyFW6Zg7VC3
	BVDRX/Do5/XM7bMNTqcxW11ZNdI4mg1v2ZwI4WbI8XvBsjXluaHE2gGSziNuePsf5Z+K+e8Km8PWL
	Fj2369FI51Bas1SWNzJ+3VKPAGYUH2vOrKGYEEn9AvZA/Q7wnT1V3rc0kJ2QNpNQVSE7N70uG+1EY
	TEmMI3LC2dMUCC5XhW1twx/oFMz2D2c34z/RSLGTR45HSwPhJEBwufgsWeWVo7s/ukDbIWx9quYgb
	MsotYrB2ciSYj6MezZvX1mKVQVIUDWFAJYzs7OCHFuFgS6dmHnV6/65FENogkURb4kuscP54NqqAt
	5UK9jQe4EdCAfMueeubw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gu-0000000FpkF-3OuC;
	Tue, 23 Dec 2025 17:34:08 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gs-0000000FpjO-483X
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:34:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6B7716013F;
	Tue, 23 Dec 2025 17:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 829BFC113D0;
	Tue, 23 Dec 2025 17:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511246;
	bh=klibO99i4aB/Xo+DGoJGR3MAFXB2GespfAli0mACiiY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=fWjsUYjBYwBHX0lth5HUJME9v3vKSMhgJqk6s0xHSjrNPOjTMpgpP+Er25++AbAQf
	 oQ0FtZ1I3ZIz+G1B8+eyptX4zTF05vQj7D7/CFed+kw9cB3+UQhGoXt5HHTHpPMMEs
	 e5h3QSXH83wcSz9/hcwXe5DX7iwWDNI90dFvUzZFGzZzqB/q950heyjJC460swEXQI
	 aNi1VUV4uUegBdS3IQcMRqM8jYB+XfDvSZPVNxoyOS2UCPVq4btU6ciBjKd2CTA11i
	 x5H1OMLNpKBrVBKLrbBJmFSJIU15Zq3TyZbMCokyUzs4vQAOdno+fnZkCa/KeM9ER+
	 GzVQ7bJOswwzg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, Andrew Davis <afd@ti.com>
In-Reply-To: <20251127134834.2030-1-johan@kernel.org>
References: <20251127134834.2030-1-johan@kernel.org>
Subject: Re: [PATCH] phy: ti: gmii-sel: fix regmap leak on probe failure
Message-Id: <176651124417.749296.3744607103286976233.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:04:04 +0530
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


On Thu, 27 Nov 2025 14:48:34 +0100, Johan Hovold wrote:
> The mmio regmap that may be allocated during probe is never freed.
> 
> Switch to using the device managed allocator so that the regmap is
> released on probe failures (e.g. probe deferral) and on driver unbind.
> 
> 

Applied, thanks!

[1/1] phy: ti: gmii-sel: fix regmap leak on probe failure
      commit: 4914d67da947031d6f645c81c74f7879e0844d5d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
