Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D272DC04AB4
	for <linux-phy@archiver.kernel.org>; Wed, 20 Sep 2023 17:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs1Q9icZJ75jF2QMutSMHaj0wtn0aJMQYEIcD5bSt4E=; b=A8Ar8GKI7iVw9M
	906NVFnUEytXwAGzLopJGr4ltxA3Tv/ytsU/TYC70JQi/qTse8RJsqD4ltnzN11dxBute698IsuNK
	5a3XpuvlcRw/ELZq8u3Q5Y0lkRD0cNRItqXpUA1d59J7KSwmc6IdI0xtyXPUiauniWQeddIyIT2Nv
	u4G0odSxUSPVwlgREaeY8KD/6LWJHgVrdEOvYqY9/MS7NMK3p4lMySn9wzsVizDiWyWbdYkj7ZwOY
	Cq0NG0MspJZYB1OLwmSXShAKLOTQ/fRTlkQwg5lwoRx0hW2RoeM32pReJZ27F5D7dYFTcp8IPVhYn
	hggp/JR6L72ic6D5uh5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qj0ib-003hnL-1W;
	Wed, 20 Sep 2023 17:10:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qj0iX-003hl8-1k;
	Wed, 20 Sep 2023 17:10:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CF4C661D7E;
	Wed, 20 Sep 2023 17:10:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DD70C433A9;
	Wed, 20 Sep 2023 17:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229824;
	bh=5jerPGNbcK9KNA1y+/GRylQgU81KiqAMsxmSHXO1ZY4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=klXnREVt9CDId2+UUdmcI9nssWMto2cM99O71tm4zWG0sOb2+9uVcbS0vUo8O3TP4
	 T3nm7cXtVhE3PAPERM3jL0AyROJCENs3Ea0xyAPP9UHcaiI8IAkoNYy3Lsu41BsBBQ
	 Hgv+yjIrDDoU2FViqNML5U62jwLtb0dsNyAXD7m72hkC9Gj3452v2J1giMEqDC6qg9
	 aRp1AiKU6f0w19osS6OvuSH0Hfdh5XNyIbppExbhZk90FOh3MqlgpQEZ9hB8IJvTF6
	 q4LB90wxZApxt4CxCLQvtKkJOpB1tZ9L5KDnNC6WHrxS8zCcJs5vO+bMO/tdyW/EcI
	 EENd7JJ1Ozq0w==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	arnd@arndb.de,
	geert+renesas@glider.be,
	nfraprado@collabora.com,
	rafal@milecki.pl,
	peng.fan@nxp.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v12 0/4] Enable IPQ5332 USB2
Date: Wed, 20 Sep 2023 10:14:10 -0700
Message-ID: <169523004948.2665018.13241458828978249111.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <cover.1693468292.git.quic_varada@quicinc.com>
References: <cover.1693468292.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_101025_640703_F429CB16 
X-CRM114-Status: GOOD (  10.73  )
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


On Thu, 31 Aug 2023 14:47:42 +0530, Varadarajan Narayanan wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling USB2 on IPQ5332
> 
> v12:
> 	DTS:	usb2_0_dwc -> usb_dwc
> v11:
> 	Driver: Rebased to accommodate https://lore.kernel.org/linux-arm-msm/20230824091345.1072650-1-yangyingliang@huawei.com/
> 	DTS:	Sort nodes in alphanumeric order
> v10:
> 	Driver: Restore register success print per Dmitry's comment
> 	DTS:	usb@8a00000 -> usb@8af8800
> 		regulator_s0500 -> regulator-s0500
> v9:
> 	Driver: Since the driver code has been picked up for merge,
> 		(https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
> 		adding the coding style fixes alone in this patch.
> 
> [...]

Applied, thanks!

[4/4] arm64: defconfig: Enable M31 USB phy driver
      commit: b46d856cb9b3bd2fef54cc8caec8595a232a23b6

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
