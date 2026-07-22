Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25CB6C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 12:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDoRAvspCI0eJp1ni7/BX09SHr0xYk3YWjnf//tgJ3U=; b=ndcsaBmDbEjT0m
	KlR6/TDrPESrMsvqG4cRDX68pfwJqGO9+DNvy8CXLkXxXIWXX61EozsBXIWJ+zVzm+X+Mt6ShVdK+
	8BzxMCoMhVF57z1X66tUTpUuip8WC5N92mfKqVV+23OfIE1OVNk4KQddlkqOOVYMa9m1M29zM9pgo
	K4TU7NkBFtuVtvw+8dHw2KIpXZRd8JUz9Ynj3cfrOwMGnXf0tsrK0SH5UPlUfKHKUnEjecqMNzScI
	o5oy2mvwz+Dm1Xb8tpUePDRlDDjeAKj6Uolt8PPMnZ0/TSNFbcHSE1FqNOeLsJCnhptnxJBjb+KVx
	pdlLC/ExnHYMB3vrOGhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVoe-0000000Bid2-3SsI;
	Wed, 22 Jul 2026 12:12:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVod-0000000Bicr-28CQ
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 12:12:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 10AEB439D1;
	Wed, 22 Jul 2026 12:12:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA4231F000E9;
	Wed, 22 Jul 2026 12:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784722366;
	bh=kxy9IkJA1uRwp+6ROEfBzXi6wfRZUbHqNU5AuQ4hJ98=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RK68lArvyyOxxsGvJ7aZvhKAqBR+bsGrzN889gFTw+eX1IeY2+oLLQ8fOIbEnZo/T
	 /zLkLcv2Qz2/QqMvTyZakFw7ixsEcBwHY4Tfu54UHZki+0kHBdP3d0UG8w3l0xTS/v
	 peEZYKQxXwBa9dk+D6xskuUTLx7UghhB/or+dNKnDqs041NuB4i5wMVwuRHjntXeGe
	 ii6n7WVRMMiqxphcr10h/M80uYYH+NCjm2pc7nqOqFdQLtt8FhMNeQxhMeXGlRYSm8
	 jBAOSK+lQKFJ5GT65Tz0A8B5ROo2Olrj+X6m3+rjA04TOClc5CoyLr/GmmGjmh8vEA
	 GjPoGfBPfervQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260721-pcie-phy-v5-0-8d403ef7e780@oss.qualcomm.com>
References: <20260721-pcie-phy-v5-0-8d403ef7e780@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/2] Enable the QMP PCIe PHY present in Qualcomm
 ipq5210 SoC
Message-Id: <178472236341.252229.15794109314464682618.b4-ty@kernel.org>
Date: Wed, 22 Jul 2026 17:42:43 +0530
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


On Tue, 21 Jul 2026 13:05:25 +0530, Varadarajan Narayanan wrote:
> Document the bindings and update the driver to support
> the PCIe phy present in Qualcomm ipq5210 SoC.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the ipq5210 QMP PCIe PHY
      commit: 9bc73298911064f405e6252ab30ce0ed978ab800
[2/2] phy: qcom-qmp-pcie: Add support for ipq5210 PCIe phys
      commit: 3c25d3d97428a88f451590aeca9e6da3c12e495d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
