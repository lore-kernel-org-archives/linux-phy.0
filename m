Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03508C47E49
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXpgeMoWmiOxwIEZPwRubKdyYha9M+lYka4AsFrdxEQ=; b=Qw6B8xtI3lKhy0
	nBhP/VIsXrXiaYZb08O2Mu6PB9QT7EKcHkhxliKLuE8WRwIWpgS8vM4lrJJL2en5q5M1Z1oP6aBci
	z5B0B54e0b8ehFkJXPm3R3CT6G4/ndtBI/pxTZbh0AcqpEgpYtcj4kfpIFQLughcSmAYK/4tsbO37
	NT7+2TDzVLrbU9SPJ34A23Me6WRWiIMKfyw6cLnYSx94F65FTBbB2enkLdOhGLJdXmwfpLIuJveTS
	Ypv5gyTIFvXRNLfYb2U/X9U9Kk3CFdnEHjxi1J83jB2djr1rYjyZ+6NQpgvRjRshIBPs5BcbMQWaU
	KARV6zm5C5lfOLGuKjjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWJh-001fIj-1o;
	Wed, 24 Jan 2024 06:00:53 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSWJe-001fHu-25
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 06:00:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8AA10CE2A08;
	Wed, 24 Jan 2024 06:00:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F988C433C7;
	Wed, 24 Jan 2024 06:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706076047;
	bh=sGPsHgIicvARarqZWoXKFE09WA+6IAdaZJzFgorlCaU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QRWbiON3CPD+UjQymdOhQSseuYx33qGb2+ocPP5HbLo5fD3SyV3abVf8Trmnt1VsR
	 pQcMiyaUcUZK77QahhC8IIvFLfXUY9VpPUcuQwJzVxl+TLTyn8ECkbss5dG+b18TpZ
	 JyZg5ThL9Y78WYxLrusFuVrHE2dhFCU6gVOZxNunZoAcadfBg79Dm3xz2w+B6NV/U8
	 C0RhkUK6Xon3tm5GQ9QJxzEe5b2XcDgLTze3/S3aQmiaLldbLLNom2Z6fW6OXlteYR
	 ihJXkJaOhij0PBNT7FjUVp9iS01ahz9YRykqQIOnt/Guy0TiDP3jz8ghsjvfKsNX2p
	 w9YtZxU1fXxoQ==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
Subject: Re: [PATCH v2 0/3] phy: qcom: qmp-pcie: Add support for G3/G4 PCIe
 PHY for X1E80100
Message-Id: <170607604322.409477.15738588939361741186.b4-ty@kernel.org>
Date: Wed, 24 Jan 2024 11:30:43 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_220050_853078_CD2C1A89 
X-CRM114-Status: UNSURE (   6.60  )
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


On Sat, 23 Dec 2023 13:55:20 +0200, Abel Vesa wrote:
> This patchset adds the G4 tables and G4/G3 compatibles for X1E80100
> platforms. Also adds the pciphy_v6_regs_layout to be used by the G4x2
> phy and switches all the old QMP v6 PHYs to use the new regs layout.
> 
> 

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHYs
      commit: e94b29f2bd73db149ce7fee9a41a7b6ca17f7918
[2/3] phy: qcom: qmp-pcie: Add QMP v6 registers layout
      commit: 70e0af37e81e8a19e207ccf14953109d793087cb
[3/3] phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE
      commit: 606060ce8fd09891d97358e35fb2d2c00c787449

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
