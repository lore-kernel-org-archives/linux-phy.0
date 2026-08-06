Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C09C56205
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WneWNHhB1izlIXUtQKFzzwm6XcN0NbBiGS/Mn251cvE=; b=c0cMhaYQAUyYma
	RYjGr8cCtJZnhqI1xUh4ZvDjmVXF5fg2l1du+5C4ISFJPH0QV+r/E+mwcmL+xv4djJfaY7utUGk6C
	06S0fmZMePwspqlrVK95V9ZmTwLDwjS9/KAR+CfZVBbpeG1YM+8F/xF/PTN6P3ZtFD4B9e1e5uSvA
	NVKo3wpNN7yYd6vP5+n2u2yu7cf2TuA/2kGfnhEehWioHDb1E+ExxaMk0H8fHHgtUjls5rS0mHWH5
	IFns2asDbbCTKOpiYuK6b/oBDFReRnTHHRZEoSS+meuSsEdqBSjBzLL9BP79gRXkouXh78QkLR03t
	jrTA+H6FtgPR0kbQGGIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vN-00000006CnZ-3mjU;
	Thu, 06 Aug 2026 16:26:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vM-00000006CnL-2KSz
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:26:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 03F9E60AB4;
	Thu,  6 Aug 2026 16:26:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A67A61F000E9;
	Thu,  6 Aug 2026 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033587;
	bh=At9UjLcc9nCG2gn02sYU/L9U1ALtFx3AWFq753mcnNA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hE5gJtCu45t3BF3VUaVKUq1jRqHvH9hJBX+bGcDa5e9X/c+6EgFCkulirNeWLCv1/
	 //YQ5zSX8I37I1ZWsDKjFlB2G0O6Z4m69r4CT8j5pkva98uKLglBy2m/emXWD6bXeA
	 OKDgPUWJWJ0j3cjvM64CA5ZtF+X2+UMgyFJk27EZ/31F9fNckZAFufqSWqXSY+gNIa
	 8Us8E7sZDv9yMqVPyoQNsiPKgGtJ7r74bgDRsoYOMt8wMf6TmtUsVT2MmgfnApFdfg
	 wxXkE29dtx8kKkyCBCmKopRtFFHT3czLbmYeCRmIfnQr2E0rPMdzXG3u3ZYDtfqhE5
	 g9/mpKFVjh4zA==
From: Vinod Koul <vkoul@kernel.org>
To: Vincent Shih <vincent.sunplus@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Felix Gu <ustc.gu@gmail.com>
Cc: linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260803-sunplus-usb3-v1-1-5a562524c869@gmail.com>
References: <20260803-sunplus-usb3-v1-1-5a562524c869@gmail.com>
Subject: Re: [PATCH] phy: sunplus: fix error handling in sp_uphy_init()
Message-Id: <178603358526.674490.11629336730066140241.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:56:25 +0530
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


On Mon, 03 Aug 2026 23:15:17 +0800, Felix Gu wrote:
> Fix the error paths of sp_uphy_init() to undo exactly what each stage
> did: return directly if clk_prepare_enable() fails, release only the clock
> if reset_control_deassert() fails, and jump to err_reset if
> update_disc_vol() fails so the clock and reset are not leaked.
> 
> 

Applied, thanks!

[1/1] phy: sunplus: fix error handling in sp_uphy_init()
      commit: 8b2683bc4cc18c581b7cd24f227cbe61abca7f4d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
