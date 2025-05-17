Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F44CC2D0CD
	for <linux-phy@archiver.kernel.org>; Sat, 17 May 2025 16:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p04Re5/pvQX30yNJFS7feufMt12R7Te5zX3+m1ZWV8c=; b=S8ARMs8EvoMjtI
	9OWfymySBPjWxz7ofRKcM0vkfabe7lSo6/ks/fzSyNy7PBRxn8p+LvIm3vry9YjvorgNgX3zTgkto
	hz8JllkJRz4x27pbyvr5b1fNt4gv/2NjU5O/EeFECQo8/DPcoaORn7Nepvx5RsZwu/gFMueEpQ9ab
	7zBSOrC5v5dVF5SNRwa9ra+3I9OHUGuvdvwFPFUN03mYKWeMHsjBoUAel5gWp6JqZOt6iIa9NYePT
	Qd4mUnzElmvYFmHGvuCo7dMqlzSVkHioGHvL3jthm+87C+LGTzFTprAo7+aTcXZpapP5h8ZSVMadD
	xRbFWCDPBBZs86+bNlqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGKFM-00000005xJw-3RS8;
	Sat, 17 May 2025 16:18:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGKFK-00000005xJU-2cfB
	for linux-phy@lists.infradead.org;
	Sat, 17 May 2025 16:18:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7EE5E44B91;
	Sat, 17 May 2025 16:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8784C4CEE3;
	Sat, 17 May 2025 16:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747498725;
	bh=K1RoiTgisVoT/fLKuPR6mwXFiQEX4N9wuo5q4Ubd5AA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D4mZ5tNnguHQMdUTkFafIlgUb5PVsqmjG4YAY9GG9VpoixCcZ4mEuryqfuL9DHc/C
	 ZvCXtSztChCCcgl0AZCIzsrh4uZFI9FDtOdeves6JM3hr/eaOQjkR+wugjPBPhzFrO
	 dDzEWXfRlDwfqk7dDwyXH/wdU6phDQgOYUli9NU9S7wi4x03qC7s95E8UVLccUMYYf
	 aoDdcaXTQkNb5YtIPS1ysjTfBrEBQ7mneFFiQDrc1tQ+eapM1zRw36MkkD+50RRYs9
	 a24isH9DZElmsZB+blAiSjqdEdA73KCu53ozpGF1GFhEhReI0gBLfDJMEvevjJikZ7
	 BItpYbIt6sf7A==
Date: Sat, 17 May 2025 17:18:43 +0100
From: Vinod Koul <vkoul@kernel.org>
To: markus.stockhausen@gmx.de
Cc: chris.packham@alliedtelesis.co.nz, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, daniel@makrotopia.org
Subject: Re: [PATCH v6 0/2] phy: Realtek Otto SerDes: add new driver
Message-ID: <aCi24yjrEatKxiZW@vaman>
References: <20250417124741.2405981-1-markus.stockhausen@gmx.de>
 <06ad01dbc688$ee2a40c0$ca7ec240$@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06ad01dbc688$ee2a40c0$ca7ec240$@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250517_091846_683643_5845221C 
X-CRM114-Status: GOOD (  12.47  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16-05-25, 19:35, markus.stockhausen@gmx.de wrote:
> Hi,
> =

> -----Urspr=FCngliche Nachricht-----
> > Von: Markus Stockhausen <markus.stockhausen@gmx.de> =

> > Gesendet: Donnerstag, 17. April 2025 14:48
> > An: markus.stockhausen@gmx.de; vkoul@kernel.org; kishon@kernel.org; =

> > robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org; =

> > linux-phy@lists.infradead.org; devicetree@vger.kernel.org; =

> > chris.packham@alliedtelesis.co.nz; daniel@makrotopia.org
> > Betreff: [PATCH v6 0/2] phy: Realtek Otto SerDes: add new driver
> > =

> > This patch series adds support for the SerDes in the Realtek Otto
> platform.
> > These are 8-52 port switch SoCs of the RTL83xx and RTL93xx series with =

> > MIPS cores. The ports are based on 1-8 port PHYs (e.g. RTL8218D) that =

> > are connected via multiple SerDes.
> =

> Just a short reminder to get feedback on this series.

I see only cover letter and no patches following this. I think some
issue with posting and patches are disjoint

Can you please post the series as one series i.e., make sure patch 1 has
in reply set to cover and patch 2 to patch1
Typically, git send-email on <patches> would take care of that... Or use
b4 tooling

BR
-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
