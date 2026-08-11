Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6ECAC5B56A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 17:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Afnj79DhswReD/VY0K9q1BYMfIjjDKEChLaiPmrLgso=; b=hMWZTfm6KTVmha
	SuaLgBbcvOy2TSXytHF7A4umeU0MX/Am+FdzFkPhYGilvmaAle2MgWt1kZS52tl61SQZ7SddkI7rh
	Qs4N3kkdgOYEtMd06RNcJA2hAf9HDJ5hTNEfnN9mToPqeM2GSqUws8x+l4fi8UctD9cGjV/idHQio
	k04ZC/Gz7rdZyJrdBdigXo6g80SXYTqMhHP2fAhjd5utqORA0dFltwLfLHEbPE58b+mUlALPmn9tF
	HBSBvSE3Sn00kgekCLJhOrOFBBoeSE8SU7C/rN+xud3Ig/bV5IEjz74i6t2UH4IK6ab3l3d7LIZ0P
	VzPWtGOsC65lwiy7uM5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpsv-0000000EaMK-1FSr;
	Tue, 11 Aug 2026 17:03:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpsu-0000000EaMA-399F
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 17:03:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8304F43BE0;
	Tue, 11 Aug 2026 17:03:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78D9C1F000E9;
	Tue, 11 Aug 2026 17:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786467808;
	bh=B5B+nywXoLAyizGyLTqjlYdjdl/5C/N0v2eS0w9gbkM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=MA9BVoM7SANZVIabB5nmLtRzOkrpEtAwM2fnSUMlbMaRU1Fsdn8w7bkDGIGsQ78Wh
	 77lbwX4VXJJe4KnqIHr0jWR6P5sFxGlxVgFJkrcw9+KELcJFdZrYztQxsCKgNojE+u
	 vVvFJeoq/BpMDpon10cWfqsU7Wx6H27AdnGDx1Vr220dmixLOSLDLYczRYw41dThix
	 jzcNGlI0D+BuG65S31Y2kaPXdE9j/KkhkQcePgOfBPP+n86quBKCaUYkNlGWO362nd
	 EszzaL+EZV0+VQbL9Cn9x6kN+togdJpXu2l6yAmOMAhtPzYUSXhR1sBokQZSSKUuPA
	 wlajl5y4GLjmA==
From: Vinod Koul <vkoul@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Prabhakar <prabhakar.csengg+renesas@gmail.com>, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260702125855.3157253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260702125855.3157253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Ignore missing VBUS
 regulator
Message-Id: <178646780408.1081354.3801368626858811843.b4-ty@kernel.org>
Date: Tue, 11 Aug 2026 22:33:24 +0530
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


On Thu, 02 Jul 2026 13:58:55 +0100, Prabhakar wrote:
> Commit b6d7dd157763 ("phy: renesas: rcar-gen3-usb2: Add regulator for
> OTG VBUS control") introduced support for controlling OTG VBUS through
> the regulator framework.
> 
> As part of this change, the driver started requesting an exclusive "vbus"
> regulator for OTG-capable PHYs with no_adp_ctrl set. The lookup failure
> was propagated unconditionally, causing probe to fail on platforms where
> no VBUS regulator is described.
> 
> [...]

Applied, thanks!

[1/1] phy: renesas: rcar-gen3-usb2: Ignore missing VBUS regulator
      commit: 9ea8d49c6cc6e217f5f5818369f659dc25bf89bf

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
