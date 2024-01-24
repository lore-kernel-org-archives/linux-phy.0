Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 559A2C46CD2
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 05:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4KdMtXDQkUX1SL95vtB2nKszXfT4nstXG3mULmY7JQ=; b=pAhWIzMr375vvV
	8Gw2C8jGJVcwA2UM4ART0NCGHkl4zcY/i1KnR7cex4tLfw4TlMZOgDo2/mG/vDEnnbo4dDdZ4IzXC
	AGdqQPLi7v9bo9msBesvlyqRc1QGAFcIZUEgkLzBKQnGKYJ+p+FYS/LQsYiIY62HbQ1Sw6cd8w7u6
	SR9yQbJUOCPkqfkFJKXQnYZjd+nt03atu045FiZFEtZ4gFx7Exjzaw2PfedOow7n9JCubJlYvwSx6
	bs5QItEsB9U7n06rgMff+YV6PJCSgumrnbHizqZ6KXJX+dxleNhTiqCBZ8M3C6Ft0ozhLQmHzfu3h
	yyngAehjraR7P87Gedxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWIT-001fBZ-2x;
	Wed, 24 Jan 2024 05:59:37 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWIP-001f9o-36
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 05:59:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E8C64CE2A08;
	Wed, 24 Jan 2024 05:59:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9C55C433F1;
	Wed, 24 Jan 2024 05:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706075965;
	bh=631HMa6xNAhYwJIfudu1AsAFw9VRD5Ibtmd4lCPDg/o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LIR0S5Hv9vFD7nHnqcmfi6qyNbhB422UTzd9hBM9MKIMpe6tGippqQLeIhOtaAcsc
	 HUrO5GXzKwb3Ve+oUA1ReL9KxN5JqXrlbRPBIKE68aoaSICbI3xKH6ucHB/td/O2Dt
	 iKaJZWOjz022A52TTjDaFwvTd1pFeG6PPks67QJ8udSPy/ATR9kWz8Uy+ZpDEn8Yuc
	 5zEsYGPMFq0OZnWyF8pl78aYrAZr+ffw+NwTLkwLCior520wZVt8lDyDwzDRtkEn2t
	 nTZnoySm4ZQNuqtJb4gqWYyA5jo1aQizjEJU7QgpgfrchhyDP+0zEnwvKXf1YjElw4
	 gCnE/BqUx3Wvg==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Mantas Pucka <mantas@8devices.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <1706026160-17520-1-git-send-email-mantas@8devices.com>
References: <1706026160-17520-1-git-send-email-mantas@8devices.com>
Subject: Re: [PATCH 0/2] phy: qcom-qmp-usb: fix ipq8074/ipq6018 USB issues
Message-Id: <170607596328.395031.4364747820297354621.b4-ty@kernel.org>
Date: Wed, 24 Jan 2024 11:29:23 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_215934_346140_08B94C0A 
X-CRM114-Status: UNSURE (   5.07  )
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


On Tue, 23 Jan 2024 18:09:18 +0200, Mantas Pucka wrote:
> Two issues were found in ipq8074/ipq6018 USB support. Sending as series,
> because fixes touch the same code.
> 
> Mantas Pucka (2):
>   phy: qcom-qmp-usb: fix register offsets for ipq8074/ipq6018
>   phy: qcom-qmp-usb: fix serdes init sequence for IPQ6018
> 
> [...]

Applied, thanks!

[1/2] phy: qcom-qmp-usb: fix register offsets for ipq8074/ipq6018
      commit: f74c35b630d40d414ca6b53f7b1b468dd4abf478
[2/2] phy: qcom-qmp-usb: fix serdes init sequence for IPQ6018
      commit: 62a5df451ab911421da96655fcc4d1e269ff6e2f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
