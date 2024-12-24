Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFF00E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 15:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8Py4F8VLkDsKcl73CVsyPq8fS0wpl7GeebFHwgXdLI=; b=4XT3J1jfxx0Suj
	ADeNCWmxY4mYx68MQP0tKMuAIwOGPCz60PLzGKquWhDQvlOEij38CZtV3C7BP370NrFTYeUOIqNoJ
	aVdL+PxK2qcXd2Dlz6Vjejqm+tB8m+aW5UDRXn4F1MemR+EyntVMuVwBBKdJ2W4qU2whr7c+OYYDb
	NPlzpS+cjCHYOHbUXJ3rysVBOrcRnXHOPvywfH4Nq0IY6wknFC2znkkpByRfNHhxNs1orVu2LMjcn
	R1G0t2PkBC0q8guh8nTVnlzvmYacQp3LDYSc741fb3BpfVZBwjr7eD9pYrwqJJzaVSUL7JbKlaBIF
	45qCWA/sPZIgyH0B6Msw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mv-0000000CD5I-2pkn;
	Tue, 24 Dec 2024 15:25:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mt-0000000CD4m-3J0L
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 15:25:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 861B85C5EEE;
	Tue, 24 Dec 2024 15:24:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE004C4CED4;
	Tue, 24 Dec 2024 15:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735053935;
	bh=1DxrSRX28T16OYIeVajbXDjYb7/6hcd940kOIRXJq/w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MtH05eooLVpp+k/E7XLMIYFYsGSGwQWCi502g6hkHdcd5qzfS09OAksGdzOED/kL/
	 XYaK4L3bOUWIe3bEMNFy1pSMEucpPlC98vgGfk/Sjan/KsL1oXVaTsRITpN7nFy2S7
	 I4cUO5TilVqaOIKIYcjySQvu7WxWHRxB7rtdKXVtVPbdmQ9MAEu+RYnSFqrE89B3Yb
	 o3X2D/7JmcYoWrCieqXsX9hhkhvPGteHFDTXRisvET/QxXEfkiE2kJUSEItk4LDAwt
	 sXfSjyzQMhvnn6EXlW7Fd8fL0I2jlVBCccZk4qCl9WwVv03ET/r5osAxmrG0Tv6mwo
	 URwrH3SaE7WPg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241204-topic-misc-sm8350-pcie-bindings-fix-v1-1-e8eaff1699d7@linaro.org>
References: <20241204-topic-misc-sm8350-pcie-bindings-fix-v1-1-e8eaff1699d7@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp-pcie: document the SM8350
 two lanes PCIe PHY
Message-Id: <173505393233.950293.12984091478385927361.b4-ty@kernel.org>
Date: Tue, 24 Dec 2024 20:55:32 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_072535_877315_DAE6EE65 
X-CRM114-Status: UNSURE (   5.13  )
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


On Wed, 04 Dec 2024 11:34:50 +0100, Neil Armstrong wrote:
> Document the two lanes PCIe PHY found on SM8350 SoCs along the
> already documented single lane PCIe PHY.
> 
> This fixes:
> /soc@0/phy@1c0e000: failed to match any schema with compatible: ['qcom,sm8350-qmp-gen3x2-pcie-phy']
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom,qmp-pcie: document the SM8350 two lanes PCIe PHY
      commit: d7e14bb48847a6278a77718ce83633912956651e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
