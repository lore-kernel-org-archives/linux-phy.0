Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52F85E6F086
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvGzHwDA31rwW7k9vc8ckC2NfNCi/0tSsSRCUV+mUkQ=; b=dCradNw8SFeQEG
	7+rCStkwfU8rS+oLBRmPc0rXX+e+F1bqHutnZMuEMNbkOFa2DKQqpCxnZhmYZODI+tesBDZgh6+BQ
	RPipWhxu99UjjFKVCXx98OvpnkF6DEuKAOQiEGgrqlMqPVUD13rZtMLqjslodTC8x3ThCSVZkmm18
	gIL/3ejGA5YGv4teC7otxqILrAN45fAS4UD0vgIrDbCQqbE0PrEfYQhuiCHYuiDh5d3oGgGNlNGnJ
	a2tVpBbM2JGdQxSKP5C+u0XyHaUXjUKzA42CWRP4dvXjleDfDEeXrmwzmF7bFeIz/tglXZgjIrYTn
	Mu+bAA24QM4ytUJPE8jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gp-0000000FphQ-0I1O;
	Tue, 23 Dec 2025 17:34:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gm-0000000FpgJ-01Y6;
	Tue, 23 Dec 2025 17:34:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C5AE44093;
	Tue, 23 Dec 2025 17:33:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08883C19423;
	Tue, 23 Dec 2025 17:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511239;
	bh=Xhadf7WxNcbHexZkIdejQDCjOzzfeofXi1dqZAVER/U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RoXUVWJcWo5rR+PJhTILIkGMHhVBFPBj9jxUcbPpmJDrqsZnNb1Dv9Uravd+RSnom
	 HSpJPfeAbyx0c2R41TgA4HZDueCZiHayXBiAYKhmtsARsQl6XpZRsAjOCMEbRcAj+J
	 8RQ2Kap8hqnQvv1PHjuTih2H64AigYb5HbVsOwCw7fuPwtekQ65Pb89qd44gJfmHq5
	 vbgbnrAB2mivdHNJtA1oz8yAk1NP/x6y5AvaKDBg3qvlPyXqKrcyPEr7YPwMtuxhWh
	 LZFUmdvUL+uvCpLx8af+lzQzIf70FzjXZ7p3DmA5ufb1AQn8kGEtk/fTNYYWOPcL0p
	 9uPGD2xuHJiEQ==
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@st.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Fengguang Wu <fengguang.wu@intel.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <aTfHcMJK1wFVnvEe@stanley.mountain>
References: <aTfHcMJK1wFVnvEe@stanley.mountain>
Subject: Re: [PATCH] phy: stm32-usphyc: Fix off by one in probe()
Message-Id: <176651123567.749296.7003388912771665169.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_093400_071438_1A260AE6 
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


On Tue, 09 Dec 2025 09:53:36 +0300, Dan Carpenter wrote:
> The "index" variable is used as an index into the usbphyc->phys[] array
> which has usbphyc->nphys elements.  So if it is equal to usbphyc->nphys
> then it is one element out of bounds.  The "index" comes from the
> device tree so it's data that we trust and it's unlikely to be wrong,
> however it's obviously still worth fixing the bug.  Change the > to >=.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: stm32-usphyc: Fix off by one in probe()
      commit: cabd25b57216ddc132efbcc31f972baa03aad15a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
