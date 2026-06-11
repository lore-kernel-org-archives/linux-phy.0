Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F79CD98CE
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 15:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXr+4bcPhkWL/PogEAHv+dGXQAevpXE+fVmvh5JCsOU=; b=W5iUpics9PRjy0
	m4vNvUzuNvjhBke9DTmu5DqHhE88JsTXdyp2Xx0ExvBB3ymhZOstST3sWT+0nwGM38EL5uDgLzZW/
	rORfj0xeCZ3rIN+GFfRlCgsoFT/S3lhf85YsxtIkeR0XXjMIs51zu6UfOe1gsuh5IcpiTGcA6+fUh
	emRxA9j+Fy8hr/hMEnp2HJFWELpC20dE+TIZ42IV4KbbY6joRXq/MqeOMhGZqvr72gUYSKiZzVsLE
	XCDWh6pGcvkQdxOZhNcABsxKT1vRF22v50E1m6vOWOG7538TkXhMIgBxLHIkUFMXcSz7rtEL/RkLY
	veWT+51DicSEcJADRXgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRi-00000009guK-3UwD;
	Thu, 11 Jun 2026 15:35:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhRh-00000009gu3-1Kuo
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 15:35:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 18B5D44310;
	Thu, 11 Jun 2026 15:35:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79E701F00893;
	Thu, 11 Jun 2026 15:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781192153;
	bh=yHHu3KmrI9zJ+e6R4+US0jxvIkq583Z8aVM5y5adfUU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Z8tiSgNIDM/EWWsqzCXO6CUWe/YVGFxQI/lJHr22emjHju6nvrJDfixrn7lCuYlIZ
	 weAWYEvzyXcB5CmYparzKJCBsz6cBKFVgepl3UcydJec1z60DhCwp/Bv3wmKnnijXU
	 BQHQSm7QIzbNr07jYlkto6o8zdOPtmWLMUdKL/klgAuIKJAiBHvW3lun+LUr33hfTv
	 G159nBqXm5wLiUPfLJTQDb29e2xDAFniBaa6lshHlGLFG08pOB1yvxua6T/PM/Zzle
	 CA4jEThbR7zisHOgnDIrbmBWWkkSsHZoskoxwmC5dnPal7DeRsUtIP7tITnwr9grwK
	 4eVei0Cg84Ccg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Dimitri Fedrau <dimitri.fedrau@liebherr.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 lee.lockhey@gmail.com, Marc Kleine-Budde <mkl@pengutronix.de>
In-Reply-To: <20260602-tja1145-support-v6-0-0e0ffc8ee63d@liebherr.com>
References: <20260602-tja1145-support-v6-0-0e0ffc8ee63d@liebherr.com>
Subject: Re: [PATCH v6 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Message-Id: <178119214911.568088.18225085446293272381.b4-ty@kernel.org>
Date: Thu, 11 Jun 2026 21:05:49 +0530
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


On Tue, 02 Jun 2026 10:25:36 +0200, Dimitri Fedrau wrote:
> Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
> PHY up/down by switching to normal/standby mode using SPI commands.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: add support for NXPs TJA1145 CAN transceiver
      commit: baacd0af457c2505137c4774e71efe044c11b26d
[2/2] phy: add basic support for NXPs TJA1145 CAN transceiver
      commit: e5a9c1c917b59a4aff066b9f317501834c6d5af2

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
