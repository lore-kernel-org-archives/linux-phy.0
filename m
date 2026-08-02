Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E59EDC55171
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 03:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqd8ENbeXGFni24ogjCe8uqQEI54MB9OYBGta2qiFyo=; b=wP89iZxTxB7hxL
	KVnnvw4JppTI6FIp0n8fGEC+tyyo/IHbIy7yvy5SnwfmeIJsisJmPmWB4PD9jykdAFmCgr1OHloIj
	4HPY0SVDneBubkAEjRRqStuhOaf1gjunKSNIb0tN7g3FAo8JbPBWfqHrGdC4dBPwGMRkkwvtPwFrr
	3nCpyC90WqlryUQnXDggBH5TPY0rUCN8qGhjSpdVXDq86zvn4kfsvqGPOPaUiyKbJZudkkHBnLiaX
	VwX/QZ+dHmaXP7OEo8GfWQjQ0hf/laeoN1MbvRDoQp2wsZOiJE9+eQTl9B36bPgBJ7f4fhUjHtiuc
	jtam4fNDKMOUZHIqqgOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMcO-0000000FIfk-0AQR;
	Sun, 02 Aug 2026 03:12:04 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMc9-0000000FIeW-2HLq
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 03:12:03 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c160cba3944so137018266b.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 20:11:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785640307; cv=none;
        d=google.com; s=arc-20260327;
        b=cU4Y5YrjiED0uVp8yM1NzwU/Pkev5LoFUp5FHa88/NbAXlWO2pkH+pBQuG/zo3WyZL
         6A581wStmuooBGwwTM5Vl9EiJTDGzVGPIM1mlDT1QgCMJe5ABtEAAj4EP/Xhcd/NF3De
         jpWepAepMWGfX4A5K3O13HRYROmUuVNVSUaUmBadnvVJ35nJbqlbg44prb2z5kM8G3hV
         YxiPJDd/jU2mP2TdBmtNyOUwhLw7tyd76dphqKjCSVEJy5wd+oXgx41VYVSInnmgsc7G
         hVfcyNJzjv20Kcepi1u5bULU65//h2xWnFOTlHQpzTvnk31Rm7NBXgYd/G5NAB9I7hTH
         Pcww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c7i9JdeVJzDWpjjDEXDdnp2erjUKykrkBMYRh4KI/Og=;
        fh=HC+bC1IK6aY48cqhmv57bDQ1ksObVMn2QNJhnV1klHU=;
        b=oT9Co/u+YcOi9IiDTzvA6Z4SBoPs+VNPwrvpUfFLehetXXXYiPSdkkmzL8a/Uxc2jP
         9NlxrdBruRBhXQcboiLng47870HpHwoJziT/HXRw2Kv6sT5vi27O4AxGJvlZdkNDUXG6
         /tTwGQP6jJWkMEQyfzpVLw5cTi4MAJ3+KXKKWlRFNWpwr1EvQnGSupv3vRzw8kT5wI4G
         1BuS4Vt9rLPjJCDSRx6uYVxbyzggnEc8yzYA5z8WlwE76vk3+9kYbnqHOaj4wX0d6F4X
         ydwkD8OMa8Ua+cg0Ev1R2Yx779B69G4JUM+M96wKwbF1ouOcPjr6ojTswV0yv8+kJCAf
         y47Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785640307; x=1786245107; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c7i9JdeVJzDWpjjDEXDdnp2erjUKykrkBMYRh4KI/Og=;
        b=Bvzh4E0eua7Sm815cfpXF0e9LabI8LYQNEeSi2I+Lwd4rG9BCTD827IKdM1TZkGmRV
         jqkdq8DGpOligfrHL0uSdF3LaFIu4Wi7xZiiy5lpi8qzTigLiBkFSzPtyNf+Tm27mZgc
         zbvkXn9/qoe+a4wB42USdW9EIciZ3FQw0Ucp1m0AiU/WJEVam8F5XBeBahB0EpPW+0a6
         D7IwMVQJJSfsW3hGzt+tq/rgWng7MQdOjCmgBKf6vSEbQksZxh67zZus146J58pQhArc
         TKg2WNmtlKcNDfykqjKTShe+WPFEc+1vnfTDV7Bj2S1DokxkFDnKURPKQ+cbpomk8GlY
         +xSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785640307; x=1786245107;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=c7i9JdeVJzDWpjjDEXDdnp2erjUKykrkBMYRh4KI/Og=;
        b=WwuacSuYgBXfME9HHCCMd7ijvlvbJhx55m+kxMhFXS5nPr48syzllkJg3kjlt45NZg
         jV0jEHFrhNuq4c5tzxa3JxHHssie3usEy+x5ifdCCJzYIsnS5oXxhjqmJXao0wOp6b/d
         cQ24kb74bpqupw0ZQ1pkgur4EnHLgzPvb0sw0Tk0E7ZZzi74Qyq+gTXRaOBJaDUNmzHm
         AKH6zkgG2OnhQwNnq0lt05LMhEbDlIjalmx+eKWRIbERoSFLpVbBJxYz0xINXAjzxLsW
         aeupTyUnbgm0k3FbAsrYcNetQFihplTROEdvkbxuuNWdu0nx01NtZEuYHCfLYa6kDOlg
         32DQ==
X-Forwarded-Encrypted: i=1; AHgh+RpYoudh8+Ekumg/53oWkVa5Pczbzl7aJsGfR/7Wr/orbX1w/57/iD4aodjsqt0OZvydAmm/J1aBZpE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqqMwt3Eeq+bZh0cEmoUqhFy7zXWSbjJBHvAsusOamn+64wjw3
	tLhCYpJkjUkTerIUx7LeF+U5AKYEX8DNO48Ml5m9E9de8RF4c2rfhXMcwKETqYk5EKoMtlYAubg
	xKG3CJdXzsx2db4DYpXRe7CsX9mDydRE=
X-Gm-Gg: AR+sD10BNG6Q1LWZzR7uXrvx7ao6WdbXb2m2OsFZKCyakKjGDOt43F6p3pnQQIEpkvu
	LZUolCmlplpDzF6JuChLVmJ6ypZvpP3B6ig+TAjalLNlR84aUaLNF7RkqCGP95Docgf21xt4dOw
	INikEh35VUglX0+g7KenQP27K3+jhh7yvCZ3nML1znOp5nXHlADOmlqLCmcyMVjmSHr/r2aluVp
	yqdC+c6s60D+SGlVXji6Q+gdtEPJ2KF3YJ1suy3/iMFrn9E11ON0/heo0Z8cPAKNOHVWii8VVVc
	1hJ4d5t24ashXL0WB+f1dyuOC9bwIYWzIQ7aFpxqIsUBEYue7qBSIQA2bAc=
X-Received: by 2002:a17:907:a0a:b0:c16:318:34e3 with SMTP id
 a640c23a62f3a-c1fe7ee16b4mr409057166b.16.1785640307171; Sat, 01 Aug 2026
 20:11:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-8-coiaprant@gmail.com>
 <cfddb747-11d0-476d-8402-e0886cca582e@lunn.ch>
In-Reply-To: <cfddb747-11d0-476d-8402-e0886cca582e@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 2 Aug 2026 11:11:40 +0800
X-Gm-Features: AUfX_mxry2V8YGgxr6fvsxNhCSaA_pBDCP69byM5eyulpGFZP2LcAYzvhwycRyM
Message-ID: <CALj3r0i1TCTgvm8FrJAJqmZgoJp61NCxc_xmVYaDFd-gh4H=7w@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] net: pcs: xpcs: add ANRESTART support for SGMII
 link recovery
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org, Jiawen Wu <jiawenwu@trustnetic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_201149_601363_AB0CE7A0 
X-CRM114-Status: GOOD (  13.65  )
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

Hi Andrew,

Thanks for the careful review.

> This probably needs more wide spread testing. I would be afraid that
> if you kick off an AN cycle, you loose the link until it completes?
> You would of noticed that on your hardware, but other hardware
> obviously behaves differently...

The trigger condition is: link is down AND an_complete is set. This means
auto-negotiation has already completed (or completed with failure), but
the link is still down. In this state, the hardware will not restart AN
on its own on RK3568, so the link stays dead forever. Kicking ANRESTART
here is the only way to recover.

For a working link (link up), state->an_complete may still be set, but
the function returns earlier at the "if (state->link)" check, so
ANRESTART is never triggered on an active link. This should not cause
unexpected link loss on any hardware.

Regarding testing:
- Jiawen Wu has tested this on Wangxun NICs and reported no regression
  (Tested-by tag included in the patch).
- On RK3568 (Photonicat board), this fixes the SGMII link recovery issue.

I agree that wider testing is beneficial, and I'm open to running more
tests on different platforms if needed. However, given the condition is
strictly limited to "link down + an_complete", the risk of disrupting an
already-working link is minimal.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
