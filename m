Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B17C4C41513
	for <linux-phy@archiver.kernel.org>; Thu, 27 Jun 2024 11:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efQszP4wRR1e50Re62P0QzF9Fc/M5ePaZkda5wZ5/Pg=; b=jhQU6O9nd+htCw
	qPD2DOkm1MkJgigbdNO91FyPV+NZL5+Kv0hQmZFV0WNDCteNDaEUAXZ6Tc2pdgnt8cBkdhpX2v4Hu
	Ob6S4z372L3gczfMDSawPZo40408LOjVYVyk0k7EPn0lPsZQOrtTrKFAThC+nXjDadxJVlYVIxh3d
	gv1FJOHFCyTNNmXwQvEFQF5JK7YV2rvOEHjishj0wTOav/88ybnbiI1nXcLkzBbiHpIfxgJBpGMpu
	VACNN8av0H5tZ7yuJJPJwBvor/2E/xXeLBh1sVB+oQeiod7MhxlzUb2HbuVSpLbb2qehUrl9drEBy
	Seywtf999VFiynzUaxTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMn9J-0000000A87Z-0inD;
	Thu, 27 Jun 2024 11:18:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMn8a-0000000A7uj-0YVi
	for linux-phy@lists.infradead.org;
	Thu, 27 Jun 2024 11:18:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7FB3ACE2E04;
	Thu, 27 Jun 2024 11:17:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 204E5C2BBFC;
	Thu, 27 Jun 2024 11:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719487077;
	bh=lYXCKK3L8/DSkekHvSq+N+Z2VYSpxXcAEISKHGObnxE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=tmpW9XsQG/WwI+RcUrAMLEvl/Gih+sV+nymxc4UnjuU116Pgi8wCKIeG4SH1W9HUI
	 dNj9asjQqMODOc0cEjFhcvs/F6rGg+En9yLuES52GXot1qw4QvlCLl11JMib6gJYcd
	 WQhJMpK81xdBiKAmpfGeFyX7Z7wZ19IXHADiVQ3Sj1WB5PiIRQccC8DnqKfhJf+Zit
	 8KSO+9JCZOyKsvTLlZzEzW0vsnXB4mmNB2ajjeHcSmfOYMpLlv78tPFo37lM77bUyk
	 dTrd6sXOSuiErLWAehEebVLr2ZmzTA5lFhHX0/h5KJ4TOypIY+Ovl3HigBkb6kL8pW
	 s2twWSv9FvthQ==
From: Mark Brown <broonie@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Biju Das <biju.das.jz@bp.renesas.com>
Cc: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Biju Das <biju.das.au@gmail.com>, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
In-Reply-To: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
References: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
Subject: Re: (subset) [PATCH v4 0/6] Add USB VBUS regulator for RZ/G2L
Message-Id: <171948707484.56488.11243036600032850483.b4-ty@kernel.org>
Date: Thu, 27 Jun 2024 12:17:54 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14-dev-d4707
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_041800_401182_0E6C1990 
X-CRM114-Status: GOOD (  11.84  )
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

On Sun, 16 Jun 2024 11:53:52 +0100, Biju Das wrote:
> As per RZ/G2L HW manual, VBUS enable can be controlled by the VBOUT bit of
> the VBUS Control Register(VBENCTL) register in the USBPHY Control. But
> this IP is in the Reset block.
> 
> Reset driver exposes this register as regmap and instantiate the USB VBUS
> regulator device. Consumers(phy device) can use regulator APIs to control
> VBUS as controlling is done in the atomic context.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[3/6] regulator: core: Add helper for allow HW access to enable/disable regulator
      commit: 1cb7d29157603561af4c38535e936850ceb99f0f
[4/6] regulator: Add Renesas RZ/G2L USB VBUS regulator driver
      commit: 84fbd6198766336f627ba08f073fd9970729074e

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
