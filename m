Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC73FE77173
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOrp7qM3+WyZsoSm2KTLEACrE8KKWl8ED7nlx6B7tW0=; b=V/MZWRGAFr5F6h
	e/4Azp+//5Y60zI1D0IjBXVMZUCiePXNUN/hnJZe/rjWjXCR8+7A275l0+rF0gcO7WVpFarPYq/30
	Ie5UxbwcpROptFMeFzKWp/6vaGgqvIIFVPxJXXtkrNjohSLkGjYCWuGOp+qE0CY4H2Uh2qsy/tMG/
	h5eJ+9Dh+Lkcu+f8qJ6gXVCPIYcNi2gyYd7BsuelOzf8afEDimc/JK0wXlXB4wjs+s86rtQew9x5f
	yhsUt29+Vrm4lWSehcOfo2A/uuGmbqgGoELMGDxS4SOxRSfBEUxBt1x99YGNy7jeEk1neqSzBP9fH
	pTetkD6LOvDkjc4RNCMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKeS-00000005bWo-1rah;
	Sun, 08 Dec 2024 17:01:00 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKcZ-00000005b8u-0DPA;
	Sun, 08 Dec 2024 16:59:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 962E7A40C61;
	Sun,  8 Dec 2024 16:57:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 487EEC4CED2;
	Sun,  8 Dec 2024 16:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677142;
	bh=toOsgRuEWOhHn9FOC604OTu6l2exJPo4BC7XHhbdWEo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=DcwdN23m6ERs8sHSF54Cs3zdlAnAHoIvQLu9QM8FseNB7dXYYwrbcaT9dZ7gYMclV
	 Fx0gIMS3GCzAa+JVPD5g8xblWLuo32yKC8mxwKdWe8a3626FpSut7T62RpkWK/shYu
	 y7fnZluusiAQGkplCvDLy1dScye9kG3dTMP3lCMiZ3BKxOKbRARHGXl0XlQIO93Iag
	 IM4lJkOqJNh/6sUfWld5GWk/Vh+DHqdAnCqGhCobNVMGAVpraMNeLvh51OJrR4giTC
	 DyMUxLT3yPwnrWVSKd5MNfDGaDyEiLRUZqAMM7VFJyamA6No0oAzFl2dQJpa36n8hH
	 ezHls67pDIMKA==
From: Vinod Koul <vkoul@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Yang Li <yang.lee@linux.alibaba.com>, 
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241111103712.3520611-1-arnd@kernel.org>
References: <20241111103712.3520611-1-arnd@kernel.org>
Subject: Re: [PATCH] phy: stm32: work around constant-value overflow
 assertion
Message-Id: <173367713788.1031947.8609520201420590738.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:28:57 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_085903_154155_EB0838F7 
X-CRM114-Status: UNSURE (   8.56  )
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


On Mon, 11 Nov 2024 11:37:02 +0100, Arnd Bergmann wrote:
> FIELD_PREP() checks that a constant fits into the available bitfield,
> but if one of the two lookup tables in stm32_impedance_tune() does
> not find a matching entry, the index is out of range, which gcc
> correctly complains about:
> 
> In file included from <command-line>:
> In function 'stm32_impedance_tune',
>     inlined from 'stm32_combophy_pll_init' at drivers/phy/st/phy-stm32-combophy.c:247:9:
> include/linux/compiler_types.h:517:38: error: call to '__compiletime_assert_447' declared with attribute error: FIELD_PREP: value too large for the field
>   517 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>       |                                      ^
> include/linux/bitfield.h:68:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
>    68 |   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
>   115 |   __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
>       |   ^~~~~~~~~~~~~~~~
> drivers/phy/st/phy-stm32-combophy.c:162:8: note: in expansion of macro 'FIELD_PREP'
>   162 |        FIELD_PREP(STM32MP25_PCIEPRG_IMPCTRL_VSWING, vswing_of));
>       |        ^~~~~~~~~~
> 
> [...]

Applied, thanks!

[1/1] phy: stm32: work around constant-value overflow assertion
      commit: 2de679ecd724b823c2cb58caab8508c7eec8aefc

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
