Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E19DC44501
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 19:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+2vd15cJJGUZyI1lDuxpnOvaAfJ6KKbinV/Otd5DQY=; b=4vxOWacPcaVQ0V
	ty0hAbv9/rIKNU1cTCM6ZAE6uoUzO8vzvMCeCUmkXse6mkJyhtL8Squd58dTHGyVIWVrq6xpWPobv
	u+PbbzroJcw9rpJckYPxd6yfCI8tleoeU9pBCvMgEnwVcXGL2NxbmqMoHgrdaQ3UnRC8qgOAtB0aH
	EbP3HIJ4Fn/VAGQZqbq3fGayl3VxoBI5zI68B0AuHi+xMPTqAx2RS6LGAvqSyC6lUxzNtqSF+xix4
	N9ol0WNp9zH++xmSZqqK2a2wY0lIZrxA8CaOY/jRJrkiGFvhm+4nco+wOT/oIZ3bSO1KoMiGvKulU
	nChLPV3tsKCiIcwcS4SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1widi7-00000006pH4-17WF;
	Sat, 11 Jul 2026 19:50:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1widi5-00000006pGb-3rBF;
	Sat, 11 Jul 2026 19:50:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E4FCE61372;
	Sat, 11 Jul 2026 19:50:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3985C1F00A3E;
	Sat, 11 Jul 2026 19:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783799400;
	bh=4KW0mDYxxvCs+MdA9V1BDmlww/e9OaKOFuPRGtfySv8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=CV9cizgUZHxiVfZXVePzS/iz1smxoeAzfg53JhpVEBDDs2dK+lKh4yPOFlQuvPZqT
	 0CMXJRjGOWp0LELoIf27NMEyB3rQL16ZTiK6wmedmZwiDiUW2sQd5L603zYP6zYS5S
	 +MFApwjk6Eo/G/nVi2hpt6/qjlzecRO7UCWU7ZeWNPneg1+MVCJZexWE/EFGGlePOF
	 dj1Hy3hFGSwb+r/S38zRYqlR9XQ52LBwmRbr0YX22TLYVwg/AEX5izEp3g+rdvwRIL
	 vTQnCZRxYFA5KhbHFySxlDjDhsA0spuS+VGh0pAapzjSDUUaXKxxqHLKMIafgHjjVF
	 p5xy1mvG0I5aw==
From: Bjorn Andersson <andersson@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	"Joerg Roedel (AMD)" <joro@8bytes.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Esteban Urrutia <esteuwu@proton.me>
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH 0/8] SM8450 QoL changes
Date: Sat, 11 Jul 2026 14:49:40 -0500
Message-ID: <178379938594.163099.2250376340461760537.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
MIME-Version: 1.0
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


On Mon, 22 Jun 2026 20:54:21 -0400, Esteban Urrutia wrote:
> I've been mainlining an SM8475 based device for quite some time now and
> I feel now's the proper time to start submitting patches.
> I'm starting with the smallest part which are mostly modifications
> regarding the current support for the SM8450 SoC.
> 
> Regards,
> Esteban
> 
> [...]

Applied, thanks!

[4/8] arm64: dts: qcom: sm8450: Add missing PCM_OUT port
      commit: 9c510bde799765bf1d28004b0e6555e05565f464

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
