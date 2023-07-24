Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B71AAC001DF
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 10:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3EMksuREQdgSMkPdx/JvBWP9SfW9fBeE0u8O4ucbfg=; b=HCuQo28MQ+lEMu
	Dwq+6Fo3Z9z0t2PhUBs2ZR8QRjNs5ZGWLEt3WOV/0QveFzJzFJed7si0Ad+oHF6mrLVmd8JmIPE5L
	U/kzF9NNX3eAVOcJCxQHz3mydIW4GEHxFEaeLDCQUKDOJNwGtYwLTZLqTglt+enxmLwE+8zP6EAfA
	25khGPFCbGbaIMnC7zsu9868vHORVMZU1Id2IsBRO6Db9S5eJIEVE+atN7Omr75t5lBOHK1UsNpTL
	tFRkeHrwV1qUB9WxLa5FOZDw6JXZdy062maa+yrSbU3u6xBBTdcD3g/jFXvtYmGH78rHBMqV5n8f/
	74zsm8rdmV10BEMMFxGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEW-003uq6-1V;
	Mon, 24 Jul 2023 10:56:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtET-003uo9-1n
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 10:56:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0816361092;
	Mon, 24 Jul 2023 10:56:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51E88C433CC;
	Mon, 24 Jul 2023 10:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690196164;
	bh=fmxnvoejdFZOpBQwVOto+Rn/EHV8CKg6qU0x1MUF2xM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EZnVcVivr/FPKlzIEyof3xHDAFfW1CbOTVmMEFbTeCL+apzC/e8ez2TqyHjNRfyEE
	 j5rqL9caI/ujW654SwJu62g+oF1e9h6tvr6zcQhWaxYXWwi6nqB/7x/6VcP1WE00+U
	 jUWq2tGHhTCSFNc5GOUEOSqnw0d/QGjOKuCA0QF1s8Y1xolvNUUGs5gMj9O7B+CLJ2
	 bxNHpXmvrOJ7uEgTazU+7PtSbder2jP96zDxcdG0dwOUAwz/3frHxEmBO4znSMpyQY
	 xjzTI7n2Hx2+S7q22BVSsTaGfWJHyDvRUAxnQD/SE799dalaqhBR+JfF7iGU1Z1u2N
	 G+OGRbtdi8N4Q==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Roger Quadros <rogerq@kernel.org>, 
 Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Minda Chen <minda.chen@starfivetech.com>, 
 Jack Zhu <jack.zhu@starfivetech.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230718070803.16660-1-changhuang.liang@starfivetech.com>
References: <20230718070803.16660-1-changhuang.liang@starfivetech.com>
Subject: Re: [PATCH v7 0/2] Add JH7110 MIPI DPHY RX support
Message-Id: <169019616097.466601.2000211184274688881.b4-ty@kernel.org>
Date: Mon, 24 Jul 2023 16:26:00 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_035605_635513_D7013A0D 
X-CRM114-Status: UNSURE (   8.25  )
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


On Tue, 18 Jul 2023 00:08:01 -0700, Changhuang Liang wrote:
> This patchset adds mipi dphy rx driver for the StarFive JH7110 SoC.
> It is used to transfer CSI camera data. The series has been tested on
> the VisionFive 2 board.
> 
> This patchset should be applied after the patchset [1]:
> [1] https://lore.kernel.org/all/20230629075115.11934-1-minda.chen@starfivetech.com/
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add starfive,jh7110-dphy-rx
      commit: ae07a9a865a4eb30223c21eae70ddb189da6ee9a
[2/2] phy: starfive: Add mipi dphy rx support
      commit: f8aa660841bca12aed51c967ed9bdaf1d97996ed

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
