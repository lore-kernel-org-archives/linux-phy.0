Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72BFAC3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 16:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMzNyHfPZgK+3+j2+sPzLiwqp62XgtXk9bsLszX6D8U=; b=xj/LGFO6fUf9FU
	zg4prKmuZTdMJ/3mLGpp+v4NU62Vmc/xW1l1psByHnyWcv0CfC8PJBPIfPKlS6+YJ2jiLDZCcm9VG
	fQAL7QDJulu1l9HYqS6fu9d6UQsUWZxMJZrpdO2Wa86oA81p5s38wPfv++bjIks14d0JJZ+zTk7Ih
	3hNeeXH+m9rbakGrCPwwodJV44LzA8ZjXBSa5TYrEMCHas2YHS5hEAzJUrzkiSE8PWq21mg4JK5Di
	b9uHe2Vq6wIuftl5glAIIYrjV+sKAbWTHVxM+4SJzu4/s63Wo2p5sk4xdkkNag69CiT7ukH2J7wFd
	KDiJuKQt6GyWAKU4bmjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0UQ-0000000GUao-0hVT;
	Mon, 05 Aug 2024 16:23:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0Tt-0000000GUU7-00w9;
	Mon, 05 Aug 2024 16:22:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3E197CE0B43;
	Mon,  5 Aug 2024 16:22:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32207C32782;
	Mon,  5 Aug 2024 16:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722874962;
	bh=kJb9Nzn4L3q5iErkH+R1wHzptQi551rfi29AY5g9hFo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bgS5W+JgYgSLChirLf/lB4w6vLA0M8TDiLMUksd6MFNPvpOyWySiVXrJgwAwx+F64
	 FAra/5OWjPyClmRAYo0rx0w/DVMadMYWisUTqxO0Igv0aN4nV1CDOolB2IgoNHK6YL
	 znnpNa3gEd8R5kZrXza/YiVAmK7rHA6Ui+V7f+DGzZBYV39BhVg9MzbpPpRB4JEc4Z
	 VcGqwP/wxqpb4qoMF4SjMTcelSH/qMHwVEZYKO6AkEFtS13ohjM2+gqtUPSpYCxHy7
	 Y6kRopIz1SANjwFQm8APUx7VzGIF9lolOcllgwmAyIyhZt+wARaAo7bMC3/QFrJWQN
	 mmMWIuzB1K0iQ==
From: Vinod Koul <vkoul@kernel.org>
To: laurent.pinchart@ideasonboard.com, kishon@kernel.org, 
 michal.simek@amd.com, Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, git@amd.com
In-Reply-To: <1722837547-2578381-1-git-send-email-radhey.shyam.pandey@amd.com>
References: <1722837547-2578381-1-git-send-email-radhey.shyam.pandey@amd.com>
Subject: Re: [PATCH v2] phy: xilinx: phy-zynqmp: Fix SGMII linkup failure
 on resume
Message-Id: <172287495984.454961.1953933716423263529.b4-ty@kernel.org>
Date: Mon, 05 Aug 2024 21:52:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092245_447638_D747D32D 
X-CRM114-Status: UNSURE (   8.44  )
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


On Mon, 05 Aug 2024 11:29:07 +0530, Radhey Shyam Pandey wrote:
> On a few Kria KR260 Robotics Starter Kit the PS-GEM SGMII linkup is not
> happening after the resume. This is because serdes registers are reset
> when FPD is off (in suspend state) and needs to be reprogrammed in the
> resume path with the same default initialization as done in the first
> stage bootloader psu_init routine.
> 
> To address the failure introduce a set of serdes registers to be saved in
> the suspend path and then restore it on resume.
> 
> [...]

Applied, thanks!

[1/1] phy: xilinx: phy-zynqmp: Fix SGMII linkup failure on resume
      commit: 5af9b304bc6010723c02f74de0bfd24ff19b1a10

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
