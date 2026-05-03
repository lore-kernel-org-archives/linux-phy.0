Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB3C7CD3424
	for <linux-phy@archiver.kernel.org>; Sun,  3 May 2026 17:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHpkxGehSgJy0GGFWBgrcCvHSe6Cd18pECUMvR1qOyk=; b=0CGJi8IaB19MI7
	6vxIM3ztq9ffOyk57tkw8YKjf6M+TY5Odrvlt2NRVBLw1b0flgL3f7Of4oFqhu6DlU9BsUqS379kr
	3IOl7h3CkEti+FMCXdf4nHdE2ipHDjxbR70unGoQI/E+NakGcTx8x5swTN7HIxYSRHF7pVIaMDZKD
	98eLYNNuAJQp2q9Ya5kq4Fs7QRNyocLVXUiIGruLC33a/suJyJF4fEfmfoqM/CcWY3HillBMTr77D
	cZRGwF9sUwuT7Z/Ta263as7DtfMMcz4vftZOd+Lbr8yXotaCLq7aR4rijlPjPiutDRqcaBWTAjHFn
	/lN9NzTdsm5IgXFm8kuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaQr-0000000BNgz-2ZJ5;
	Sun, 03 May 2026 17:16:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaQr-0000000BNgO-0z3e
	for linux-phy@lists.infradead.org;
	Sun, 03 May 2026 17:16:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AA82060008;
	Sun,  3 May 2026 17:16:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 704C7C2BCF4;
	Sun,  3 May 2026 17:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777828600;
	bh=mjHavlq5Av5EHGcoJ96sYh1yLWpKFPLJJdlt2cys7IM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZE/0ghVUy/hyK0ad6ZBCr1T296xGEeCwzl8w5wl2tkh3DYk/Gxu3Sg6DXD54mBYEQ
	 nbBb67tqxjMN5eh0DClk3IYXU4gMtddxpi794J7K3wgghJYRAB2bwHUeOZ4MFzf5lk
	 CpBvxS2hv6AcjWQtL3C/1jsxtlux9YhpurseRA40GqAKF0gmy63iTNIkA4PMwK1VMV
	 ZPlKIY8uWHZ2RGIf8ZNXpnu8ZAIv2RyEn2wEyNr/jy3vcrhKdvlifL1iGeYSxtAUaz
	 k0mhLbckrI2JWIlJmPFClhGdBUeHHre6nUxEnN/rcAwZJGISJCclNQVFRTILYCbXJ5
	 YBxhQRT6+KJ5g==
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Pavel Machek <pavel@nabladev.com>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260325112039.464992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260325112039.464992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS
 detection logic
Message-Id: <177782859600.133776.6484709083557122280.b4-ty@kernel.org>
Date: Sun, 03 May 2026 22:46:36 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 25 Mar 2026 11:20:39 +0000, Prabhakar wrote:
> Read USB2_ADPCTRL once in rcar_gen3_check_id() instead of issuing
> multiple MMIO reads, and derive both IDDIG and VBUSVALID from the same
> value.
> 
> Drop the redundant !! operator, as assigning a masked u32 value to a
> bool already performs the required normalization. Simplify the logic by
> comparing the ID and VBUS status directly, which is equivalent to the
> previous conditional but easier to follow.
> 
> [...]

Applied, thanks!

[1/1] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS detection logic
      commit: f67ab4706ab72af29c331b21f431c463b00d447a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
