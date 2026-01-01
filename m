Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1799AEE57C5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 11:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1ny1zsuZI5Fvw7J9mdP4aOho/P3mFd+VjgEKEDG7xw=; b=P+w4Cp5WB1rZZ2
	TTlSq9NtHl21Bvq7IF0aP9bS/Usxt/sX1pVrVV9hOpEeXclSr1fQGhyjdJfGE+hxWvG7rOyKWuzwu
	2TFYJNWLP1PVy65DIdRp2N9+oswNZCWwWCAT0vBTi1RkaupgbxvUtG7SV4Lc9+lJwWwm0nNTp49gg
	ar5F93utfKoYS6hQh32wLBtGsJ4WDaMNd3DqHhXUpUmPxc+Y2nxjX0J+7sb9Eapgs5bpJ992dFSsr
	H7GdMds7fTmVWpQX2JSdnFWOdq/oNU0WyRya47FCSUGdiuEkNDSBpVflIY6CgMa60Zd1+Zl9DzZLO
	eYTEN+02Aj+VCt0nRbQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGWz-00000006nrG-2EIf;
	Thu, 01 Jan 2026 11:07:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGWs-00000006nqt-3UEo
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 11:07:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A072742AF9;
	Thu,  1 Jan 2026 11:07:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 926EFC4CEF7;
	Thu,  1 Jan 2026 11:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265661;
	bh=EYcWz1jnZfK4e7EKWAUogtrN5osErH+nhOJp1YScoew=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=Y25HQiHOoFhvhEiNVU/sdWAjl/K+5pnhuCBvj8VujflppS1hafCVJMsse0VUXUzvF
	 fO+1uip4i6oNMWXkiLr+QckEn+yv8cnjd1QBzOPR7Z0QHhC226BDGC6X3X32+sK46W
	 4wyucXoj69mEQQEif52wtptSIfHH6pMBWXjH8u1p5Gos0A1dzGjYk5RiLlfmcldCYG
	 y3rN5I5+6XI6B8jTxgwtWfPNDjCYfmoS7OVZcspRawsursUFLP2AY6/Mpb+5xLQh2O
	 NqGLo/uSZwYUH0AkYi2xkNyDqlOH41tH2W7hcpGeci+AadOEGCWtU7gYx1o7QESkbY
	 qLYmwh/aCgdWw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 llvm@lists.linux.dev, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20251224115533.154162-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251224115533.154162-2-krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH] phy: broadcom: ns-usb3: Fix Wvoid-pointer-to-enum-cast
 warning (again)
Message-Id: <176726565821.201321.6387558248591118830.b4-ty@kernel.org>
Date: Thu, 01 Jan 2026 16:37:38 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_030742_907329_792B7549 
X-CRM114-Status: UNSURE (   5.57  )
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


On Wed, 24 Dec 2025 12:55:34 +0100, Krzysztof Kozlowski wrote:
> "family" is an enum, thus cast of pointer on 64-bit compile test with
> clang W=1 causes:
> 
>   phy-bcm-ns-usb3.c:206:17: error: cast to smaller integer type 'enum bcm_ns_family' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> 
> This was already fixed in commit bd6e74a2f0a0 ("phy: broadcom: ns-usb3:
> fix Wvoid-pointer-to-enum-cast warning") but then got bad in commit
> 21bf6fc47a1e ("phy: Use device_get_match_data()").
> 
> [...]

Applied, thanks!

[1/1] phy: broadcom: ns-usb3: Fix Wvoid-pointer-to-enum-cast warning (again)
      commit: fb21116099bbea1fc59efa9207e63c4be390ab72

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
