Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51367C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 06:34:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12D4761350
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 06:34:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 12D4761350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vL/EB/24P1lj5xCA3nqCOOv+ZborIY1X9ndsb/iaAy0=; b=dYFTRen+kQN9Gl
	49ck7sdAImlpryY0p825ETUnadRAV8PukoIxH2q+HGwZ0PNcHlgDtzgtvGiFZooq3dKrz57f5ULC8
	VDtzU4e58djWT1WbH9cSnSS6pFuc4qC/NkEMcFlGG8UbP1bW3LrlGK6hbjaP+Z03iE8rk62EXHjIn
	I/g2+NppBCl+g5tMQ4uE+76n8r8cS/SH1XTV2cj2NXRQGrwqAaQZgfUs9KDCq6R+RQ21irX6j/cST
	yGPTmezPa+Ml2pTHhDapLbt4WDoMRrNLH1VvwnK32AGp2LghxgRm+W/QDOTj5aAeQfZllOpGbadeJ
	KetxD89GDtsJCHouMhKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXe1u-009ATB-LO; Tue, 05 Oct 2021 06:34:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXe1s-009ASa-59
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 06:34:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E5F761251;
 Tue,  5 Oct 2021 06:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633415659;
 bh=5EZHQoATB2gNDZncKK24ZE2sDKzzHL55yzP5fNl41/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IJIJMC8MbB2izN15QS7IJh45OY7JByOpZ7aQNS4RdBauw2CrlP6uYu/t5X/XK/LPO
 z4bZtW65HsHJ4nIr3GoYXSf6A1dAseX2ATn16KCWCWmMqlUI4P0TS3/+tohDc/2tpa
 qmCnwNxOBdVKFiLnd20JdRwrsRqj01DXTyuHKdP/6ZG9bUwwBZu3BjLNLf/WVzwOGY
 Kjq43LCQhkpCKKoQlHVD+kLjNo3E1yVjp3voWwzh4n9RxHKGVp2NnQMBBOfnlSCoDY
 F93boRDZRIoUUosNDTzftwentpAcUS9lPsBYOSHjhuuBFmVAL0pg+JxV0kHumX4CeY
 H2iIG7iJXDirA==
Date: Tue, 5 Oct 2021 12:04:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/10] dt-bindings: phy: qcom,qmp: '#clock-cells' is not
 required for parent node
Message-ID: <YVvx58Xhz1buDtaX@matsya>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-2-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210929034253.24570-2-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_233420_237652_BA9A2E13 
X-CRM114-Status: UNSURE (   4.25  )
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

On 29-09-21, 11:42, Shawn Guo wrote:
> '#clock-cells' is not required for parent qmp-phy node but the child
> phy/lane node.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
