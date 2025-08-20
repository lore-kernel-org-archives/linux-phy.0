Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE341CA0EF8
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwWa64/KoK/0bITPUyL6J+MkF8juMHKK1PpRXqmU0Qw=; b=EFaGvF1RUsXQbc
	SLhEIxsA1mjdhCnqrY0cVksI2/eZlDopJ5w4yDww6s3nYQkRsXiRlV/YrDAAaTpk8SvbDU0eIiib4
	lsRBWg3pzqE8o8Y9YBFp/bwkY9oaHXbRqW9OfxFBgRA3kM9jxgqe98u6KfzHxKz51W2eNPWwgkyMu
	TVZ2EPIvQ8uLzjlxXbq/ODrbT5N/SBoVqQu0wMpI6iIFr7CFnCODJdaEVql6hgjoslgrWM4xAsd5q
	XQWxJ3ycwzpUpD1NefFUS9kT4nxJtMvIZrDsfHMM6v3uUGcSiv/bq0b+17lMBKn/Zuriq1DiG1aZW
	6VqGotST41gXy0Axf3wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopn9-0000000Ev75-1AuR;
	Wed, 20 Aug 2025 20:52:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uomDT-0000000ETMb-1ohO
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 17:03:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B5726601E5;
	Wed, 20 Aug 2025 17:03:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FA18C113CF;
	Wed, 20 Aug 2025 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755709394;
	bh=8h5swraijlkugF4NxQe+E8fB0bxjOHS1fwKTn+gkooY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nO2FsqLmDAAbCYg9zp0td9LFAODit7CNnYis/Xj5s0d4JdrlAZRqyDSkulhaIhAC5
	 wO8M5G7uG8nObAjX30ESnFHxvBdLyik+O+EOuL4FOjtwC9qW5ZBbZ376hoIytyr92S
	 sLEVJsCse4zbrdAKwW2/bOry1REwG3h5EMN2PXL6j8NEO9kfaXP52PirZmFQbCLGon
	 w5/OwqVAFpF3ApHeDlIz9xChP0IQ4hTFfqNguySHvgpkGIpjpmJuBEo5hFUMrO1rcE
	 iqahtLl4BAFg9kccYauO4n9FLQYfT7txuVx0fNY+YvawUR3tS+HvkBXs7d4PtbzHhf
	 iX1bUf0N9ItEA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Prabhakar <prabhakar.csengg@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250808215209.3692744-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v2 0/5] Add USB2 PHY support for RZ/T2H and RZ/N2H SoCs
Message-Id: <175570938875.66459.17504688667907589630.b4-ty@kernel.org>
Date: Wed, 20 Aug 2025 22:33:08 +0530
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


On Fri, 08 Aug 2025 22:52:04 +0100, Prabhakar wrote:
> This patch series adds support for the USB2 PHY on the Renesas RZ/T2H
> and RZ/N2H SoCs. The USB2 PHY driver has been updated to handle
> differences in clocking, reset handling, and register configurations
> specific to these SoCs.
> 
> v1->v2:
> - Added Acked-by from Conor for the DT bindings.
> - Renamed drvdata to phy_data.
> - Updated commit message to clarify the change.
> - Dropped local phy_data variable in probe, using channel->phy_data
>   directly.
> - Included the necessary header files.
> - Simplified device/host detection in rcar_gen3_check_id() as suggested
>   by Geert.
> - Added Reviewed-by from Neil.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: renesas,usb2-phy: Add RZ/T2H and RZ/N2H support
      commit: ab9c8aeb2d208381a7c948ea2f753cbe8a451502
[2/5] phy: renesas: rcar-gen3-usb2: store drvdata pointer in channel
      commit: f75806d26318c08ddb79652cce89086e4da17257
[3/5] phy: renesas: rcar-gen3-usb2: Allow SoC-specific OBINT bits via phy_data
      commit: 4b7aa47e4c2c921b9511389bf42a4e30d64373e6
[4/5] phy: renesas: rcar-gen3-usb2: Add support for RZ/T2H SoC
      commit: b725741f1c21e8507a58ae86c5a80ca383f96852
[5/5] phy: renesas: rcar-gen3-usb2: Move debug print after register value is updated
      commit: 5f54134428b48261151c725c64b40be54e373345

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
