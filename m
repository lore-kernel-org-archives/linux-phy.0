Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3904EC3065D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hw3s9K1nFywnvjOSvw4KVpdYsm8wifV84sc1JtYG8Bk=; b=BqUlShMqcMgwSK
	EwgFKlX1bLvCPE2/g8HVOrz/MZF0dkNwzaiAOJz3LMGUJety1J0gfSiIV+om2rWsRmwZG0IxqGpMz
	mi9FWyDvQ1u0G3bpYtZOlPkMYkmqdHcdqHkTRcch3AuFR4RiXyTm9x1SR87Ualb48qJAqEIoUoaJp
	HY3NkeAIWidSH4Ok1uzlSvfnBWcGh8JAwc6tnMfU3AwXTVyeRHNwfEpEN9vOPYzUoDG2vD5JlTYVx
	f34mwu5ER2VBoXECkLEPIl0+l7q4qRYR6SbenMVwBWvZ/s6n3ds37vrlOEkYAn386m4bckXN3Wpj2
	2NzHpCaAC0AnFroFvdoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgG-00000006sO0-2XzM;
	Tue, 02 Jul 2024 13:36:24 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdfy-00000006sE6-1J5D
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 13:36:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 440A7CE1DD6;
	Tue,  2 Jul 2024 13:36:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B85B5C2BD10;
	Tue,  2 Jul 2024 13:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927361;
	bh=IF+Kvrk7vBoksuSkESPNjQBIFMwOljqOLFQSXyYEjAM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZbcLIZiK8kcjZy+gUzDYRLul28q6XZ6AG1Zg9LdFargZohRmwXC6gkYXbWXQzg65B
	 uW59qtFbXehBPW8twKsB3dSin7deF3DrOmmAbl5IozNnuS5ISPudMzoGOX1nQL9hAQ
	 +hkNFYyb43YtKAS9aJABjs5Mwa/VBo1KUp+BZ+vgfumn+6WdZ4nUagLwffepF82Ic3
	 sJwRtUo8vp9aEGz6UVa68lx+xlyZdE91yWG3Sv9/rDp5t/fJiXt5WuV+2KmwiuA/hT
	 9n3RNkBp8YG1vOimGgC5YiNChdrSbRr+ugIlahOid6ubwhV1wR2JF90GM9hc8vTsRm
	 OlFRkgR7XlenA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Keith Zhao <keith.zhao@starfivetech.com>, 
 Shengyang Chen <shengyang.chen@starfivetech.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240627020059.163535-1-changhuang.liang@starfivetech.com>
References: <20240627020059.163535-1-changhuang.liang@starfivetech.com>
Subject: Re: [PATCH] phy: starfive: Correct the dphy configure process
Message-Id: <171992735936.699169.7926536201956741462.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:05:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063606_576607_7E22D3D1 
X-CRM114-Status: UNSURE (   4.65  )
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


On Wed, 26 Jun 2024 19:00:59 -0700, Changhuang Liang wrote:
> We actually want to calculate the alignment values first, then
> use the alignment value to look up the data from reg_configs[].
> 
> Fixes: d3ab79553308 ("phy: starfive: Add mipi dphy tx support")
> 
> 

Applied, thanks!

[1/1] phy: starfive: Correct the dphy configure process
      commit: 8d2a3539517dbf13e970b3aabdf94b04a65d276c

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
