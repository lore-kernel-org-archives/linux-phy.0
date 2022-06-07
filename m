Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B3D9C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 14:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyo1OftkUfxSmGyMH6QsxIu3jRaEa77YG1qQCaek5pc=; b=FGYwwCVVBulqls
	ySrDtelCqq/sTI8Ysea5fRPRDiZSqdkyy2kCXoea2Zz3ngv8+diADrBj0QhpozEryMxYOjE26SF1J
	roPbBSNMP4Uk5hl6zp7hpQ9LAoopC9MDHTVPSb2824Yw+UfP+WWjMuohum8JqQuW92ZBihIbgZsyX
	Vj5hv1YvEyaJVkh/WOxZLJ22lb2nNm9VPyURK514wafhc3NxZ6aUJy4tnO3z58JailmRgpw/z86jE
	IJc//lm7bkLJ3BXvbX4Wl1XJksLgrWUq3p/Per1zW9bOHY20YFFmsIWKT5MsmRnA22Z5pqDWfI8gE
	we2e71lIwmMnlO7eIhAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyZwg-007yKq-CU; Tue, 07 Jun 2022 14:12:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyZvt-007xxL-Cq; Tue, 07 Jun 2022 14:11:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E794A61579;
	Tue,  7 Jun 2022 14:11:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31A53C385A5;
	Tue,  7 Jun 2022 14:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654611104;
	bh=letTzTlIdmYyCQr3t4i/4sQ++BrVupVi397GE8M9uvI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZmrXJqh5VhK6LBrkWuZLcZPb6LB/aKqB7VgbxKHQ5EKdRZGn1B/UtUl37J/VZlncM
	 XaKVqUs9/CrLhurHZmfQE4ZHromAzF5QHFhfcePHGAZt6gJN4oXn1Jgu9OhytNBGsZ
	 Dpp8c39jiY4Y6vji5iZNzY0BkjvDT9oCjsHIgHSItTWWl1ZaFW8x1MWtKzh54+Jsmx
	 MgLY2ScRWCz28NxqLMnfdu2v0uWPvoMrX/y8LVhRzTo8e9BmO+8kP0GacNDIRYfLCx
	 +YjXzNg0JjEvKZfsqCZP5oIjyElXDN9wiUZpKQTLYg3m4X5qyHVoxoSHYehWp506BX
	 a+HtETwbE/zkg==
From: Mark Brown <broonie@kernel.org>
To: linux-doc@vger.kernel.org, corbet@lwn.net, mchehab@kernel.org
Cc: linux@roeck-us.net, linux-cachefs@redhat.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dave.hansen@linux.intel.com, linux-samsung-soc@vger.kernel.org, geert@linux-m68k.org, ulf.hansson@linaro.org, hpa@zytor.com, alsa-devel@alsa-project.org, linux-m68k@lists.linux-m68k.org, krzysztof.kozlowski+dt@linaro.org, bcm-kernel-feedback-list@broadcom.com, kvm@vger.kernel.org, mingo@redhat.com, mchehab+huawei@kernel.org, jdelvare@suse.com, robh+dt@kernel.org, linux-gpio@vger.kernel.org, rafael@kernel.org, linux-mmc@vger.kernel.org, federico.vaga@vaga.pv.it, bp@alien8.de, linux-phy@lists.infradead.org, mmayer@broadcom.com, keyrings@vger.kernel.org, x86@kernel.org, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, alim.akhtar@samsung.com, Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org, linux-hwmon@vger.kernel.org, jarkko@kernel.org, tglx@linutronix.de, linus.walleij@linaro.org
In-Reply-To: <cover.1654529011.git.mchehab@kernel.org>
References: <cover.1654529011.git.mchehab@kernel.org>
Subject: Re: (subset) [PATCH 00/23] Update Documentation/ cross-references
Message-Id: <165461109692.1597191.11390741473240531333.b4-ty@kernel.org>
Date: Tue, 07 Jun 2022 15:11:36 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_071145_525244_152F0F85 
X-CRM114-Status: GOOD (  13.35  )
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

On Mon, 6 Jun 2022 16:25:22 +0100, Mauro Carvalho Chehab wrote:
> There were a number of DT binding conversions and other docs change that
> were not updated. Address them, in order to keep the cross-references on
> a sane state.
> 
> Patch series is against v5.19-rc1 (and applies cleanly on the top of
> today's -next).
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[22/23] ASoC: wm8731: update wlf,wm8731.yaml reference
        commit: 69c8027c5ff43d68449fda4510a8cce70e8578b0

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
