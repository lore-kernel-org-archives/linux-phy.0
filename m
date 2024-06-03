Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43FEC25B75
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 14:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PctlYiBX0M97BdhKoMnD947G2ehWMTZn82VCWMiV0/U=; b=rGAhY9gPHiX4qn
	kFzQbFpctIsooHeFXdgoZautbUaQYUjolYXzpbcnw8N11JB2APoumlUEzeHq5G0QwBu9t10+cWnOO
	epzaBrUIhS6xel97I0lLlh8JrqgRTp24HS8P37cLw7aaEUbatoz4wzI2ahF/kVFiSeHzBOYfN+Tcr
	VthOQpfioz67CRZ9ATJTlpQhh6KyuN1xko8j3zBXocD/EwX/sqzdvtbQqO4d8fe4ZEqNyEfkUtpv8
	D51QFBIs4akf+Qwge26wqZ0SHJ3fS0HfAqbMe231ABRWzb6aJcJ7iDWVzBBb6cIPFvkvOzt6rxmUM
	GXQopHldN2s6yKunUd6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8e0-0000000H3se-1zKj;
	Mon, 03 Jun 2024 14:26:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8dy-0000000H3rA-1k3h
	for linux-phy@lists.infradead.org;
	Mon, 03 Jun 2024 14:26:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C136860EB3;
	Mon,  3 Jun 2024 14:26:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2890FC4AF0A;
	Mon,  3 Jun 2024 14:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717424797;
	bh=babrRrnBNR9UN7pLa5drZXRQIepsXaNY6xfQSs4kKK8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=rXqGi0qAxy1y+n6UgcaNh82wOdtaKvO5c4fDiHnlB9XPdIYeHo3i4GB5skrbQpFXu
	 BQr74Cu0UQtLTX9dsUlZRWXDBjI0OyBF6yC3/w1K/SoDyfwazA13hTXYntj1T/obq/
	 iwiKfA5EgKL+dNCSJD7DycG/+whveUCEgBUAwtK46PtUecky91cOWS1nMCh12PLfyT
	 zX0knlj45uaqUda0p9tEIYY96b3Wb8exNcmp20lSd5lGP5f43MjCSGtjkLgY/wZGu5
	 vzeH8CICMgaswm1cfdS8yge47R40Sbs6byt9H0AgjOYa9zW29OpaxpUwLBfhuzr71n
	 CF/cdn+PtM9Rg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Richard <thomas.richard@bootlin.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
 thomas.petazzoni@bootlin.com, u-kumar1@ti.com
In-Reply-To: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
References: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
Subject: Re: [PATCH 0/8] Add suspend and resume support for
 phy-cadence-torrent and phy-j721e-wiz
Message-Id: <171742479438.106728.15643482453047442146.b4-ty@kernel.org>
Date: Mon, 03 Jun 2024 19:56:34 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_072638_616081_65CFCE31 
X-CRM114-Status: GOOD (  11.26  )
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


On Tue, 16 Apr 2024 14:52:29 +0200, Thomas Richard wrote:
> The patches of this series were originally in the series "Add suspend to
> ram support for PCIe on J7200" [1].
> They were moved in a separate series as requested by the PHY maintainer.
> This series adds suspend and resume support for the phy-cadence-torrent and
> phy-j721e-wiz drivers.
> 
> Compared to the PCIe series v4 [1], these PHY patches were rebased on Linux
> v6.9-rc1.
> The only change is for the patch "phy: cadence-torrent: extract calls to
> clk_get from cdns_torrent_clk". Now the cadence-torrent driver supports
> dual reference clock, so the patch was updated consequently.
> 
> [...]

Applied, thanks!

[1/8] phy: ti: phy-j721e-wiz: use dev_err_probe() instead of dev_err()
      commit: 5aa4733b1b9324e224ebe59e3672887a57d51083
[2/8] phy: ti: phy-j721e-wiz: split wiz_clock_init() function
      commit: 3c4e13cf9ead79fac3b217e228c1c7d3db3e132f
[3/8] phy: ti: phy-j721e-wiz: add resume support
      commit: b5539abdd013fd3f77633413848c93f8ec84b51d
[4/8] phy: cadence-torrent: extract calls to clk_get from cdns_torrent_clk
      commit: c2286092424bf5f889f302669580fd6862967a49
[5/8] phy: cadence-torrent: register resets even if the phy is already configured
      commit: 8512b6873461c4d31f89c3260a2d5043b3f9dbb2
[6/8] phy: cadence-torrent: add already_configured to struct cdns_torrent_phy
      commit: d4f24d14f311b9a1af57c9726d5a3acbfa8282db
[7/8] phy: cadence-torrent: remove noop_ops phy operations
      commit: 81472a55edce473cfc22b340c1026c6d5219ccfe
[8/8] phy: cadence-torrent: add suspend and resume support
      commit: 0da27ed080b2c25680fb42105f3d85c0ebe38b0c

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
