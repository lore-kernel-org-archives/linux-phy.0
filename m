Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64C84CCA464
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 20:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fisxsds0TEg3uIeiAsCbptjCJvPdQw6tupNdOWfxNHo=; b=Xsz47rAwty39rN
	ukfLPkX5LCDN2S196LSe4kOGGcWmSPDZEFLi8VlEKIq2wwVfn+Bk1gDl0W0F+l9ziL14vruV11WvP
	tS6FR/kI+zo1ytp6/8BhoAtQx7+ALMdYlI6/ksuRUdOzDs4MMzY6/nyCmNePZcqRfq+kCkaZjUOfi
	fZfG0Qzk5+tcNCeRVe+IcWFYFMcQC2qSo+pBC0MLfcFXW03HAYF3y+J+3he39YFtEAgKgiCZiWFyF
	e5owKlnV289PlmB8TCU7Npzin5U8ufAv9LK6dipDe+/w8j+0tbfxQB8IlBeCLahsDO3NIPhgDZIGw
	JLPazLs6cXJ9bJeNvrRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHS6B-00000001LZ4-3owI;
	Thu, 15 Oct 2026 20:30:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHS69-00000001LYI-3HKB;
	Thu, 15 Oct 2026 20:30:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2E16A40A56;
	Thu, 15 Oct 2026 20:30:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB0211F000C4;
	Thu, 15 Oct 2026 20:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792096245;
	bh=URfziB+RyIP02hVDIQqdBJwppVeDD9L3S3oe92U9tBM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=aM3qhn2Jv+MxF6pn7Q4eodY6rAS2Po1i2tj5SPhIJm0gS9XpOBBbFW6QEMTtijmdt
	 7v24a2QT3fUgwCkOYOrSFov1KInJHvfA8VAi9x5ir2tLUqaSRWmF4ya4vDRQCcRxZ4
	 pouQM2nkBItybpN3NZrV9m6KxDPzb3/bxllCOjwF9IoO5FaYOnRKMq72iCWQZ3C9Lg
	 sfEG3SV3R7JT/0+vPLEmabT0isItZ4eO4Ohf/pdqONpirZlLm6X3pa3l/Ml/yGhxjM
	 WBRBp7bL7fg1yJ8KGA90V9PHvqq0bxF1sVh+LZTb8kgvLoMJGaNCWcM4TCWTC2Zdon
	 iZjik/DiI4/vA==
Date: Thu, 15 Oct 2026 15:30:43 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Luo Liu <Luo.Liu@cixtech.com>
Cc: vkoul@kernel.org, linux-arm-kernel@lists.infradead.org,
	EastLake.Yang@cixtech.com, cix-kernel-upstream@cixtech.com,
	mani@kernel.org, linux-kernel@vger.kernel.org, conor+dt@kernel.org,
	gary.yang@cixtech.com, krzk+dt@kernel.org, p.zabel@pengutronix.de,
	Wuyi.Shen@cixtech.com, devicetree@vger.kernel.org,
	neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
	fugang.duan@cixtech.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: Add CIX Sky1 DP PHY
Message-ID: <179209624254.3079823.9194269374126037719.robh@kernel.org>
References: <20261013095900.758464-1-Luo.Liu@cixtech.com>
 <20261013095900.758464-2-Luo.Liu@cixtech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261013095900.758464-2-Luo.Liu@cixtech.com>
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


On Tue, 13 Oct 2026 17:58:58 +0800, Luo Liu wrote:
> Document the dedicated DisplayPort PHY on CIX Sky1, including the
> optional cix,edp board property to select the eDP swing table.
> Add a MAINTAINERS entry for the binding and driver.
> 
> Signed-off-by: Luo Liu <Luo.Liu@cixtech.com>
> ---
>  .../bindings/phy/cix,sky1-dp-phy.yaml         | 56 +++++++++++++++++++
>  MAINTAINERS                                   |  8 +++
>  2 files changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cix,sky1-dp-phy.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
