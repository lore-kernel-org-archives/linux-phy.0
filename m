Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5A89FEFB5D
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8R10P73kllpYfkFFyjIT70kjpGZEfhH2ZnKgvjsF6M=; b=AApMhuy2jfVlzt
	P6/R9q5r0l3pPc1/11m8vp1bjBUf1KeFVNPN8leNIcaY/6pXWO7jBG82yneTUeFFzqjQElw3WUbR3
	tiWjuVP+jZj2fM26HF4wbgjRyIT+vZnW47hbre/p+fpMor5abSRQCgeiAbeIFgye0zAYK8VXnev/M
	oO7aHbEPFbtD9iVe99GrjR27W70H03oWYG3Nq7+7ZeObfNMwnEf59sROuLk6DazrTFu+N9t3rh5yw
	HQGTSk1vrtZMKYtQzLmOzzmijKnk5SvcRaaQqR7cs8yY+SuAmYpeziQ2Xdt4Esa3omwV16SlOSrPQ
	5BT3NcV9ySOTRxtxD7Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziM-00000008bnH-2y1T;
	Fri, 27 Feb 2026 15:25:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvziJ-00000008bmZ-1vAw
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:25:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E405C43A93;
	Fri, 27 Feb 2026 15:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EF1CC116C6;
	Fri, 27 Feb 2026 15:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772205909;
	bh=BlUBR+7Iq61pr00QdR/eJLLbt5EsA7Rl860/yaA7cIA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jF8eynmHbUv+uBGFZ4FEXGpKZsy7qXCAksPJsx7etrmc1yqqVdROA5uY8aBuCnuPB
	 mPWm2FFr9ZLB7OQGpIvMuTE3L40hO/K9SZ5x/ayMdQmmhKLRkmohXvQoBPGe60ZX4q
	 8cE7iTwiflanCKdIsmvUzvnvQtl1uZK59khYu37oS81xu02T8aZIhzCOHnHRRz+o9J
	 bVLdUyAwXrL6lupvmV6orwYpKK42w0Rf0KxJqp13VSJXOUR9TbtVrOU8HkuOtTcgT2
	 Wl2CbUa18PQIpBhKLsp3O0rl/qQPMT4CHfIUqLgqsi+CCmGDX35yyhDBp3K3gyZMp4
	 1ZiAcYNuNenbg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 =?utf-8?q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, linux-kernel@vger.kernel.org, 
 Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <20260226153315.3530378-1-vladimir.oltean@nxp.com>
References: <20260226153315.3530378-1-vladimir.oltean@nxp.com>
Subject: Re: [PATCH phy-fixes] phy: make PHY_COMMON_PROPS Kconfig symbol
 conditionally user-selectable
Message-Id: <177220590775.320398.10026111548101706092.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:55:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072511_542556_FFCDA37F 
X-CRM114-Status: UNSURE (   5.75  )
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


On Thu, 26 Feb 2026 17:33:15 +0200, Vladimir Oltean wrote:
> Geert reports that enabling CONFIG_KUNIT_ALL_TESTS shouldn't enable
> features that aren't enabled without it. That isn't what "*all* tests"
> means, but as the prompt puts it, "All KUnit tests with satisfied
> dependencies".
> 
> The impact is that enabling CONFIG_KUNIT_ALL_TESTS brings features which
> cannot be disabled as built-in into the kernel.
> 
> [...]

Applied, thanks!

[1/1] phy: make PHY_COMMON_PROPS Kconfig symbol conditionally user-selectable
      commit: 48fafffcf29bb968c9dee6bf507c1e57d0ccb6b5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
