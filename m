Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E683C369AB
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 22:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXHpR5+FbrKTJzI0n6pHGwNXyCFFCkBdTYXavjJDXjQ=; b=shXs78RS8201Y4
	Q6v7WInexxipJyWI9k+172NXjExne/XvyoYTdgqyPfBtmEekOBUI6cqMsSlAJIdD83Yk218cD9weD
	iVHp51x/jw1rTWC5bZ+uNqUJ/Y5Sl7/eOHjqalU061ncdZkUMZvtLZnD2QCjWuP8HoHqWGKwPPq9U
	QN2oGXCbSl8ushtAmwcsGtJgePUkBjMhJSl7DiVocjWZpZSRYe8kXQUmNv4ZM4muM/7lW7Cvojyty
	NWnjdT4L1vnJQ6ecBn4a71S/lYUURL1kxWbzNLidBCrJCHq5U7csSOd06OyTOPK0AMNvsVO/qjMWz
	M9EShtPT1jwgEePRyhFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4oVh-00000007IKX-3V7b;
	Tue, 15 Apr 2025 22:12:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4oT3-00000007Hop-1jpo
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 22:09:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B89686115F;
	Tue, 15 Apr 2025 22:09:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E7CDC4CEE7;
	Tue, 15 Apr 2025 22:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744754960;
	bh=fT9KURxC+hnVBNlWWLo90bn9GjX86Jg2rXvY5sft3M0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tv580yO+H2hOAOPlBB3efQAxuBRfoVkSJRz0fPP82iu2H+MDc9T4BGaCi39QUw/Px
	 ElmDuFOHLsg+yWOZwPXvmONCyWqblstsRgCLYtTsfQluf9LoHTNm0lHBIle/sQ8Th4
	 2bAZVzNpBt2AKZP4yOliVmXMGBpgbPDlUzEHuCKg8gev8050v7hQrhXbBB2HJ9lAtx
	 29p2vPQWDJYE300DzbpjnxOsjeWUInfNoLOcDYoMoRUDrFZbEsBqUFUNHug1xLGBBO
	 pxKOpEzQv1aB2+Sq88wrAcXBWnDWfKjivDitp9pWOc3pgs7aVc/lwbz5hoqKZWhfbK
	 u30xF55sakPXQ==
Date: Tue, 15 Apr 2025 17:09:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	devicetree@vger.kernel.org,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: renesas,usb2-phy: Add clock
 constraint for RZ/G2L family
Message-ID: <174475495805.919973.18097238405448838308.robh@kernel.org>
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250414145729.343133-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250414145729.343133-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
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


On Mon, 14 Apr 2025 15:57:26 +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> The RZ/G2L family requires two clocks for USB2 PHY, which are already
> defined in the DTSI files. Add a constraint in the DT binding document
> to ensure validation with `dtbs_check`.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
