Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79F51C02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 17:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLm4VSBe/NUUC83blxoZB04y46KPQ347cs6ulF8LsOo=; b=i91Mv7G97xlbpJ
	2hGMZdYcc5qEKWOD/NahemTpyN4MBaThXSMVxNQLiJko2JSqXR5hfaSHeXnyz2Qb8E6mNK3rSPbzC
	kpybR5Qohy6B5vKYIIS8SHBeAd4ohQlNuI122uer503ri81D6VTWTCJndguF21cYL6GiSbSSbKNQE
	bdZH8nN7ZPQ7lix1V1So2mG9uqpQKXcYhjok6NNoLyJIedIqOSIhLhWE18ur8EhdUOUfjjHhEFBLP
	5qMAZAhNwcTDYikaXXAkZ6JeM8uG0PeBMfc6K70PvI8mrczrNx7EiHEV8JDQAWCexKGy8x1fL0VZ3
	uWKvbqEIgQhAdypJB+hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thXhB-00000000kYH-0ffd;
	Mon, 10 Feb 2025 17:35:45 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thXSm-00000000hK5-3Xjd;
	Mon, 10 Feb 2025 17:20:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 75005A41C25;
	Mon, 10 Feb 2025 17:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5060EC4CED1;
	Mon, 10 Feb 2025 17:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739208051;
	bh=AqAuO64KrFmIEpmbIChBp1sariAYqOYuraT4EbNk9HM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=iBmnjxe0jaqoN9l3oxXx6Nfl2tOwdVaBn7nL2unL9ImA0UQW4IQDVvt0KdQX3SsVm
	 jSf6/pQz0jvoj7MvMlcDmobv63lXKpMcnlMCRysGHb2x1+4cNojVMfSUue7d0kf8ZR
	 5K6KdAaJs8UVumN/xToAOrARvz6ICg0E1g8IkO3VZZWAx9RiN2IZrErcBJipYTmgQG
	 /7oLusu/0xdSxkc8fb4PkfOI51bqSFZCcs0pdynYZHoHme+fXQ4f16fer1je46X2Hm
	 O6SIL0qo6+rYHM0VW6brAI2jVAWISa41wtfsmmqsGISpfWn+6N/HQ61QcDdiAXqCd+
	 DvuqllMtvdYXQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, mcoquelin.stm32@gmail.com, 
 alexandre.torgue@foss.st.com, Christian Bruel <christian.bruel@foss.st.com>
Cc: arnd@arndb.de, fabrice.gasnier@foss.st.com, 
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250210103515.2598377-1-christian.bruel@foss.st.com>
References: <20250210103515.2598377-1-christian.bruel@foss.st.com>
Subject: Re: [PATCH v2 RESEND] phy: stm32: Fix constant-value overflow
 assertion
Message-Id: <173920804896.103688.2205901158085066356.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 22:50:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_092052_959051_829889D2 
X-CRM114-Status: UNSURE (   7.84  )
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


On Mon, 10 Feb 2025 11:35:15 +0100, Christian Bruel wrote:
> Rework the workaround as the lookup tables always fits into the bitfield,
> and the default values are defined by the hardware and cannot be 0:
> 
> Guard against false positive with a WARN_ON check to make the compiler
> happy: The offset range is pre-checked against the sorted imp_lookup_table
> values and overflow should not happen and would be caught by a warning and
> return in error.
> 
> [...]

Applied, thanks!

[1/1] phy: stm32: Fix constant-value overflow assertion
      commit: fd75f371f3a1b04a33d2e750363d6ad76abf734e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
