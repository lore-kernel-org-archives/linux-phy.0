Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2FE5C7EE33
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 18:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DinbisD96VfUOcBJQYBRqH0tYyPpoAplVdG976O0bkY=; b=3E8WhyaNzFlEeI
	+w8x0/ow6ihQI8fR9ZHKAARe93Ay0yDREQyCm7IDZnxQFZTkBHQwjH5A0XuXkSH+Nq17mwj2RYvvw
	hwuff17rSz4Swz4KAc1GkEF1te9depGQUcN/MEczePj3Bh12wMrvezfKlLrjE5wRvg44Vwl0YEvx0
	0pZUd6qgJb9BILC6DAqF9c6szqCp1PBw3r8r/nHcciC9tg8r91X7VLxxHgqRW/6h1PVrfexDQKjfV
	WqoowGdE7glXmyeFt/e06fdB71oLEnBG8HnJWi5QcEe8Wp9IX4zVVn8xGgltnsICezJwa9nlrdFre
	RIltA3OTV0TtI+5MenLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q445T-00EshG-1E;
	Tue, 30 May 2023 18:28:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q445Q-00EsgI-1R
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 18:28:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C3595616FB;
	Tue, 30 May 2023 18:28:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07BBCC4339E;
	Tue, 30 May 2023 18:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685471327;
	bh=EKx6VTVPtif3VopxDUTsogjb7XDS6ckoH87zFUChkRk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gNq/ZsXDpV3i7lAAIj9wedxoaIHRiPa8GeMA8KY+BCc+AtgakCixsCrcHU8v2kD2S
	 qjnXa48y6IVO/aLnDPRCGY3kpkEcBd0FFnj/Q3kjZNZ0xk88kLveBEI0YD/Kp1h0pv
	 wqPhDhAOt3KWFaOqSJcfgF8JBgPb8c5uMWp6U3Xrt7eRhVp9yhDenqNBPb0QvBwIpb
	 gyzSzCAYGhIEHZu9lj61HTMaAyZxD1CClcEgLnZnW8fT6ECmvgfC7/PZYbL1KVFZ4v
	 uJkNEAot6nXMpDrNfwQgTKt/eHJTPJdb3HZtlkh3yVLR3bETuF72j3SQtRz5ujEj/a
	 wwctPjUFDTKeA==
From: Mark Brown <broonie@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Dipen Patel <dipenp@nvidia.com>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Dilip Kota <eswara.kota@linux.intel.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pwm@vger.kernel.org, linux-rtc@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-spi@vger.kernel.org, 
 timestamp@lists.linux.dev, linux-watchdog@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tony Lindgren <tony@atomide.com>, 
 Oleksij Rempel <linux@rempel-privat.de>
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 0/7] dt-bindings: restrict node name suffixes
Message-Id: <168547131548.1034788.34188090441869561.b4-ty@kernel.org>
Date: Tue, 30 May 2023 19:28:35 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-bfdf5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_112848_530975_4AFF56A9 
X-CRM114-Status: GOOD (  13.91  )
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

On Tue, 30 May 2023 16:48:44 +0200, Krzysztof Kozlowski wrote:
> Tree-wide cleanup of DTS node name suffixes "-N", e.g. "pwm-5", so we allow
> only decimal numbers.  In few cases narrow the pattern to also disallow
> multiple suffixes, e.g. "pwm-5-5".
> 
> No dependencies, can be applied by individual subsystems.
> 
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[5/7] spi: dt-bindings: restrict node name suffixes
      commit: c4fb6880edc15866a530c7b8f2698ae65f80cfab

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
