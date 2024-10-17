Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED8DD374AD
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hzR9C/p28lxlGMr7OFr9Rl1NrRAcJGGIElHNibxpaE=; b=LUfktq5l8BdUMj
	I3Zpok9DIbpIMq8FhkRev9KWwYaDum8H1o4EC0p1YELogeoH6rHKnnrhtTaRaVJBRBIPDyw7l9QUz
	ALLM1J29bL+KFgNb9kffJfbmBMeOuoAQArsv8d02UucQQXV4dauXtnWKrmFHGjI2FkPA/WXvJNX3M
	VLOEQAQrztHWYTEBcn5EJmQAdLDtkgWcN7ndmUvYrX0cEct3YrPsXxK7SNCPVyb+KqYIFc6Zle+md
	BG+GEFQ1JYT1S0nlukvocLtKPb5HQkthGNHTkAFKskq+XgHIdo//fA2bgn2uwA+Rl1U36498NkReA
	e/E5pbJmvlu7Ub3m3Tlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SUr-0000000FI8g-1507;
	Thu, 17 Oct 2024 15:33:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STO-0000000FHpj-3JIp
	for linux-phy@bombadil.infradead.org;
	Thu, 17 Oct 2024 15:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6j5zxT9lXuVA/KLhe2xrcAbiL60J2xDKJz4XxMMfbDc=; b=OluGiK977QIkdOeFWEEBGqGnGn
	p4q0nZOA7wEYv0/Cj1uQjQkjmBYl10EKN0ctidA/Rm5BXTKOWlVQtN8P4omJX/ZYZdPpFHZUAMkyQ
	KigAXnLk8Su7eWQKEEdMLpFFdiUrhWI+0hpXCVm/fqfsiMEUopMfHGLjfBSOrudPpBsz99ta8fd5V
	i8rVTZ9JaMRcHtnfQSMMgIwB03kft7DJ4tSp9shhU+TTaTTcxNZO19mMb/7a+kk2S9T8gHIXM5ZeI
	5RnJtYgGZzzijg6+W4NbS547t02+jIQeukmMMiMTgMKD5dePIlf0Kvnexz33VOjEuVXxnTr4dUIUb
	TZLNu2QA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STL-000000078gD-2UzG
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 15:31:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 276E35C61B0;
	Thu, 17 Oct 2024 15:31:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23243C4CED1;
	Thu, 17 Oct 2024 15:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179087;
	bh=HG/xpz5PLEPPBftcA0Be0lkUCpIu/vuSmntl93ETESs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IH/xHH/lVKQns1r64DUdX3QBTgD2vGwog7Mg6USSboJDDblfIi29CV6noQtW6Fco/
	 vcqfNLX4KRM3tih2PoIh/phQnBKKSs9XMpBtQ3KKfJigkOWSFTWiXj7/CYu/efv+U7
	 OpXtDoic6c2Fry/pQAbGu4WKDU+KvIGkLSzGS5cVBiuEGatQ08c7hOkSGIc7VYrDIW
	 WYnFnnlBSCSyUCNM1HySbO/C0pMVZjM2eCF67b3ODdAya/sSiOWLSD+59eldcsAV0F
	 9wRqDQLqFYMHr9GTjQQ49iB0QZ1a/7if6cd+lsGIMioIjsNU1CM8L87ZZ4Nv7b/HfR
	 rXITdZP0VP5ZQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jan Kiszka <jan.kiszka@siemens.com>, linux-phy@lists.infradead.org, 
 Minda Chen <minda.chen@starfivetech.com>
Cc: Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241015070444.20972-1-minda.chen@starfivetech.com>
References: <20241015070444.20972-1-minda.chen@starfivetech.com>
Subject: Re: [PATCH v3 0/4] Fix configuration for on-chip USB 2.0 support
Message-Id: <172917908477.278159.9345933030080410252.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:01:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_163132_149472_FA3EAB9B 
X-CRM114-Status: UNSURE (   8.49  )
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


On Tue, 15 Oct 2024 15:04:43 +0800, Minda Chen wrote:
> While mainline has support for the USB controller of the JH7110 since 6.5,
> this never really worked in USB 2.0 only case.
> The reason for that was a missing syscon setting that prevented the
> connection between USB 2.0 PHY and the controller. This series finally
> fixes the issue.
> 
> Changes in v2:
>  - fix copy&paste mistake in error patch found by kernel test robot and Dan Carpenter
> 
> [...]

Applied, thanks!

[1/1] phy: starfive: jh7110-usb: Fix link configuration to controller
      commit: e10c52e7e064038d9bd67b20bf4ce92077d7d84e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
