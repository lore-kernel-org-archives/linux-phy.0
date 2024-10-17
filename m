Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB0ED374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yliJG152K8OawDiFOnGinW09SKg+urqiVhY01FUSOTM=; b=e79TVVJYMSQpoQ
	b/Ti5gQaKs1X8oBCr14HJ/fVvcpQ0cHkVup8dhiZ5+g9L+QjAQV+Sx4fo05CtoTCGmdZXbknqIvYV
	wrgBBbkeCTe0voYDsjjDAq4un79O4k2D+HbVfK1EAEk28V+4FAegJsB49Xj84Pmj6fpewkXMRPJJR
	mUu2RSlLuThoH2fjyQOMOW+euzXJu2BhaFBKaHnKYTh7cqm78sXRZY4H9Zx7zHi4+JwIOUtE9AQTB
	g2rJ4PpN0TZSsojfKR2gK6EZ8gCgremc/D1zhI8x86BupSRikNdMtxM4k5xD1M0nxI5ZcYDN2ovDb
	omPVNLOS0JeS8VxWhOKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STE-0000000FHmb-3WWu;
	Thu, 17 Oct 2024 15:31:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STC-0000000FHlX-2tpr
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:31:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7F8AC5C61B8;
	Thu, 17 Oct 2024 15:31:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DC5EC4CECD;
	Thu, 17 Oct 2024 15:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179081;
	bh=yOgy16ew7fdVvk3EOFbXWHFgvL3i+snYRifRdjtz4ag=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lX17GTGcYSeFwPRm5INwovwUslt4v7chxycBPHrGFNuoj6saEBRwSlLKQSIaB123m
	 oDIFrtTOWt1/pbbgMhZeTK5uw2LYPk8Itay8qkf5ZHihn8FsF7MBXLK86fA8RzDYly
	 bAy/kpfP9V5jUi8ZlWg+W1+JlGtBtPQeFsCKJBD0DZuR7k7HZZWDvbi/EYuug/QOz0
	 PP+ZRvjnZ774iVFxKcpB7RhCLNEwI2xdDrVnkO8q8I60lEv8MeLDl4QZN+UYraFhRJ
	 7VooCaLYqlrWr2AOYadKP2Q3m7PrVCl7+k281uD0aio0xOJgGAaFaT/XuZods4kebt
	 rwWe2d3AUt3mQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Johan Hovold <johan+linaro@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240911115253.10920-1-johan+linaro@kernel.org>
References: <20240911115253.10920-1-johan+linaro@kernel.org>
Subject: Re: [PATCH 0/4] phy: qcom: qmp-usb: fix NULL-deref on runtime
 suspend
Message-Id: <172917907975.278159.209159976898815690.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:01:19 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083122_812239_373D9E97 
X-CRM114-Status: UNSURE (   5.24  )
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


On Wed, 11 Sep 2024 13:52:49 +0200, Johan Hovold wrote:
> When working on suspend support for Qualcomm platforms like x1e80100, I
> ran into a NULL-pointer dereference in one of the QMP drivers. Turns out
> this issue has since been reproduced in two more drivers.
> 
> Johan
> 
> 
> [...]

Applied, thanks!

[1/4] phy: qcom: qmp-usb: fix NULL-deref on runtime suspend
      commit: bd9e4d4a3b127686efc60096271b0a44c3100061
[2/4] phy: qcom: qmp-usb-legacy: fix NULL-deref on runtime suspend
      commit: 29240130ab77c80bea1464317ae2a5fd29c16a0c
[3/4] phy: qcom: qmp-usbc: fix NULL-deref on runtime suspend
      commit: 34c21f94fa1e147a19b54b6adf0c93a623b70dd8
[4/4] phy: qcom: qmp-usb: move driver data initialisation earlier
      commit: 1dd196f9004848d0318e8831f962cc76255431d8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
