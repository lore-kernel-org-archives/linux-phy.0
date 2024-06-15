Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E82A3C27C7B
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 18:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D3vmsm6Ga7V5KfAyW/AwatTQU4wa5VfrsONKKflfB54=; b=hZooWEF9yCt1YA
	7lfmBMBV9M9h6rUn+h3JutMBezRhcXQ4JpGQ559MqziXcRlnD+mlK2YS/nd59MAWzs0J58863KJr8
	3CCWekG1Qc4yyb2Bk4tgnC2ZPVi1Bk3PGUNyS/h1AUEt1dyaOILebUo812wdOW0WEGFLYrg0YKxMp
	6dn7v1VxNE3ZNcFokkl4NuyHs0IyZCzjrZNgQqMF7vmUcqgSRkZPjywmeKy2fy0ty7EAJNfNopQPq
	/ArVFEPDZUzdBWEfMJSQWcbt7omWFVgbNEeR3Ivls2gayBXmm9pS8M1mxEri0JAhrgpLgv+Rsi0ok
	LRUXa8eHdnbe/HZjjkYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYW1-00000005xCS-288a;
	Sat, 15 Jun 2024 18:52:41 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIYVy-00000005x9W-3Sbe
	for linux-phy@lists.infradead.org;
	Sat, 15 Jun 2024 18:52:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 69542CE0959;
	Sat, 15 Jun 2024 18:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B8F0C4AF62;
	Sat, 15 Jun 2024 18:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718477549;
	bh=Ah8NsRUCcVGsrSOWkwB5ILKjgnr51ZMV2LB5dcDSdOc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=D5f/HCDhAPOkm50+MAqD0tuRJ6uuUM6DfL6k8fv5wCRfsMH1Twde0PxCTyWGR8X6I
	 yyo9gt8cEdDcRHnvjNjl5TXiQ9Z87as6mUCGUWw2GR6HTMZ1GmMAmRpql2RFAZSOkI
	 nCZM9mUvhEZ8M7+hTT60E5loymg7WCW3vm1hTQWNrZAdDRyh/+0uEDglzHfHWuJGIp
	 fxSsancCBHuYePADYlIN4DllSxlFdVJdIeKP2Hwokppzj+CPGPl373sAsz3vBI89+H
	 xQwBrUkbLSnB4QugBzQPKvLdQo4DXxuB1QKxGpCYKLZOsR9wRL/a8hX/gVilYMYIjn
	 DV78BklsBp9Bg==
From: Vinod Koul <vkoul@kernel.org>
To: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 Shengyang Chen <shengyang.chen@starfivetech.com>
Cc: kishon@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 p.zabel@pengutronix.de, minda.chen@starfivetech.com, 
 changhuang.liang@starfivetech.com, rogerq@kernel.org, 
 geert+renesas@glider.be, keith.zhao@starfivetech.com, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240418035020.47876-1-shengyang.chen@starfivetech.com>
References: <20240418035020.47876-1-shengyang.chen@starfivetech.com>
Subject: Re: [PATCH v5 0/2] Add JH7110 MIPI DPHY TX support
Message-Id: <171847754477.716119.1989436906241299329.b4-ty@kernel.org>
Date: Sun, 16 Jun 2024 00:22:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_115239_128905_436A28BA 
X-CRM114-Status: UNSURE (   5.72  )
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


On Thu, 18 Apr 2024 11:50:18 +0800, Shengyang Chen wrote:
> This patchset adds mipi dphy tx support for the StarFive JH7110 SoC.
> It is used to transfer DSI data. The series has been tested on
> the VisionFive 2 board.
> 
> 
> change since v4:
> - Rebased on tag v6.9-rc4.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add starfive,jh7110-dphy-tx
      commit: e4a8e87250fc2c1ed2aec5d1e8521dc7d799ea77
[2/2] phy: starfive: Add mipi dphy tx support
      commit: d3ab7955330843699cdcc413edd7993923e6c016

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
