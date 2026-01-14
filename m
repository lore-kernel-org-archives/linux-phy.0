Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDC88D37E39
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikjXW0n5zJuO7HTJO074LEfHGl01knA/rYdAo3QDGGU=; b=j3VXxanuHUD8VV
	pDeR1vfzodGcKg0M7aFmWbZ/mqZpaURx5ylHSgwMT9n4HxDEaNh5SENLdqR6CorQnDF2YW3sNi4SX
	6aW5rMHIT5ZoOy4x3ClpMPAnjbqwuiRNiC/anWnHbhDi008ymIjVuBC4q/DMI71lfcT7XqRLsrEkA
	JwBqa1E5koOG9Dd+cWdAVL16nP4Rt4THOf54ovgTTy7WZVoyUR3fjuiZByWjy/gpSfSJxUWmdRWb7
	s7KYM5i9Sdc4ex2ekwOubPVrlAJAQ/fXDnR/hLJ7SBBcdND8LhZafoYLnSU1fMmbwx9Sl2A/ZquM3
	TgTOffkpz7UUxpbARQ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RZ-00000009RNw-2KCo;
	Wed, 14 Jan 2026 14:01:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RW-00000009RMl-2Pzp;
	Wed, 14 Jan 2026 14:01:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D56B43624;
	Wed, 14 Jan 2026 14:01:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D78FC4CEF7;
	Wed, 14 Jan 2026 14:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399310;
	bh=JhUn9TqR1P15NoVS+X8zJgLMi4jcAWVe91/hg+g8+XQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ujjep2OnS5oFpyvmoHdhTj2gamsTcVSU4u2dMzbdeUj9Ames4AbCRjiZ4scWPntoO
	 Mr62FQH2GPiYqNOj+b3PT2JKHlzOajo7w/EHzRhcbQKb0QW0sWPzveOlisNjhliRu5
	 NWXSv7F1APi52affZvTC4Wl9DKUWiSuSun7USJu7tNwhw6P4nKHuShoVePZlgFl/Qs
	 5/vuIHzt1xrDvuN0r9ngeUiDmL8W7rLbsHLG6vctEdtcomKytQOPrShFx0sBtAn7/O
	 EkOnt4lY4E80bInnl5tZZwvWdV/lgDv5+IRxDyqLQz5nLckFYMo7DaVVI3NuRCeTA8
	 nysyN2h98geGQ==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, sjakhade@cadence.com, rogerq@kernel.org, 
 thomas.richard@bootlin.com, Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: andrew@lunn.ch, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, srk@ti.com
In-Reply-To: <20260112054636.108027-1-s-vadapalli@ti.com>
References: <20260112054636.108027-1-s-vadapalli@ti.com>
Subject: Re: [PATCH v3 0/2] Cadence: Torrent: Enable PCIe + XAUI multilink
 configuration
Message-Id: <176839930614.937923.15521389501056523456.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:46 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_060150_648939_82F802CE 
X-CRM114-Status: GOOD (  10.61  )
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


On Mon, 12 Jan 2026 11:16:29 +0530, Siddharth Vadapalli wrote:
> This patch series adds the dt-binding for PHY_TYPE_XAUI and adds the
> driver support for enabling PCIe + XAUI multilink configuration.
> 
> Patch series is based on linux-next tagged next-20260109.
> 
> v2 of this patch series is at:
> https://lore.kernel.org/r/20260104114422.2868321-1-s-vadapalli@ti.com/
> Changes since v2:
> - Collected Acked-by tag from Rob Herring (Arm) <robh@kernel.org>
>   https://lore.kernel.org/r/176772419699.2512006.6478554353373580831.robh@kernel.org/
> - The commit message in the second patch has been updated to explain the
>   changes made to the LINKx_MASK/SHIFT and REFCLKx_MASK/SHIFT macros to
>   address feedback from Andrew Lunn <andrew@lunn.ch> at:
>   https://lore.kernel.org/r/7fd42221-d602-4ce4-9f7f-6754ed91e7aa@lunn.ch/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add PHY_TYPE_XAUI definition
      commit: a632a2a0db8b4d24076a03889efa25c6058d0746
[2/2] phy: cadence-torrent: Add PCIe + XAUI multilink configuration for 100MHz refclk
      commit: 02cf3710c55d55d956f080e6610b841e2b6ddca0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
