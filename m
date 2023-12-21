Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BCFEC46CD8
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1XVEqf/FIpGEIyw9MTV4MMnkdDY213++f7dMkaN2nc=; b=xRSMgDW/dITtJM
	tLdsszz/nXz/tFMwvS1ReiIbjJ4p5qeHT2jx2yl40TW8IHEB5CSgHtk5Au15vI7+1TtUkXrnOLz4E
	SyGsxj7KzwdWBZFv+PLUr/1DuKT5DHWA1M2635MkfalN8OENLxjwjQ4uuoKNskO2ITB9NUDksqncG
	88QQboy/Hkz8fBE6NhoV94nRL8OBnNux1MOW31u2ylSehks90VRoMaOMXKQ6WB+ZdZeT4VSJT5CK2
	CpJVwIEW6CM7bh0AgmtH8Tr6blTNGKDQFnNY7Ur3hY4vVJHxqeeLygH/0+hvcr83LDKRUx7qjOky6
	R/DR/Dvx/cGBc9pAls8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMen-003bmK-0I;
	Thu, 21 Dec 2023 17:16:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMej-003biv-1T
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:16:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 82AE86186A;
	Thu, 21 Dec 2023 17:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FB78C433CA;
	Thu, 21 Dec 2023 17:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178979;
	bh=GPRM0+qr4tPE5bf4ipC9dmGTvUdkJMlb+ss4sMnL/bE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nkhgHstugS99qn/TPmBqYJlBhZiUq7tS1p/MzxG80atoqPUsHWY4bSmkbb/7tEgZ9
	 TtdnBUdclg+et7tVHkYPL4ifLRabWmIhypXg8vH7L7ryH88kvBnt6FVXko0yLgM//o
	 tkz7ygSMPQchQEABlhZMs5tJEg8CEKmY8Pn4VT7rWFcPDfhXR5GFRDAXKsTieHYyf/
	 bnBWZeIH3+W9BtPq6zo+cYXq08cho8QWrNZSOu0wuBQfCrUoyoNWnnul3UR7aLU24x
	 vWr6mKbq8kH21IBT2Lsqe5GHvyNVtBzsVnXLt2LOpVjQF7+NK0WZZ313/OgplOag35
	 p/dG8bBobzS8w==
From: Vinod Koul <vkoul@kernel.org>
To: linux-kernel@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org
In-Reply-To: <20231204234917.23509-1-rdunlap@infradead.org>
References: <20231204234917.23509-1-rdunlap@infradead.org>
Subject: Re: [PATCH] phy: renesas: phy-rcar-gen2: use select for
 GENERIC_PHY
Message-Id: <170317897770.712473.10129741722453482459.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:46:17 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091621_596378_DE22F20A 
X-CRM114-Status: UNSURE (   4.58  )
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


On Mon, 04 Dec 2023 15:49:17 -0800, Randy Dunlap wrote:
> Change the last "depends on GENERIC_PHY" to use select, like the
> other 170+ Kconfig users do. This can help prevent circular
> dependency issues.
> 
> 

Applied, thanks!

[1/1] phy: renesas: phy-rcar-gen2: use select for GENERIC_PHY
      commit: 54c899f0d647e5724b02486243da40134dc91c45

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
