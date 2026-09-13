Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529AFC88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJVT2/A4le9TDiJgWgLMNpqrDmhta6BGuh3wbI1H9bQ=; b=cbKtdE/XO0QmaS
	kN7dK3YxlZh/q+sjlPCJ9V1kzhlwL9NQUh+Tz3eI+noniuCWwfIMkWRqFukk6/G9ppZdoeLhjMOPY
	FACXHFsTSudO4M+fvSPCSLVlm4ZHWh6EKeiYeqiJaKMzQo+znk8VU3VpWvKrMZE407ELntQD6HesJ
	k/2haGDP2b/P1OlUGwvjoGnX7uFA8UPU9WgJ86dMpQ4l+7kKRlN4jKybDmjjbpGpNfI7XNO6PJ7vJ
	1zuoNXoDjg0n0CYQOMrB126UPzVkwVDGXGyl7xKmT0ZeyzE+GEg/63kaG7wggne4TDDwIM30XRlnD
	KRepjS5OV7eEvy1laf4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hta-00000001bnJ-03Iu;
	Sun, 13 Sep 2026 10:57:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5htY-00000001bm7-47GB
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:57:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6D48A60DEF;
	Sun, 13 Sep 2026 10:57:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E269D1F00893;
	Sun, 13 Sep 2026 10:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789297032;
	bh=B6375BuwSr0qxa/G7SGJaedwDML6AsX0Rg8JMlgWsS0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=gzvG2/6eKCfvrElOpzInuW5ph+jAAYwomkhFkF26qUCF/qdppGBLz3euECyRVXerl
	 oriUX5+3005jbf308kwmzHoLXVN6RFHu2c7cZZBSu0PQv1bodc3kdWK4LD9r1u6Dhd
	 fIlC7KOIJ01j/vmhoHaKArH4WER1RTJChIriYUn9w4QXTKyUFruXzGyVG0s3aqM2Yp
	 HE29l1epJa2DdUxoKfr2cWVx8H0x81arwzgoobDJS4XnOuktnuQ4O/urHHhQtD2Adw
	 UCLX1ljXBZssP9BmGgVUkOL6pDxOA0+kjJxP61MtiMR248hhnmjO2z89fShCGVONzL
	 RVRhJjnM2PmIw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
In-Reply-To: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
References: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/5] USB4 mode programming for QMMPHY on
 X1E
Message-Id: <178929702551.215437.16496561815731000218.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:27:05 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Tue, 08 Sep 2026 09:54:04 +0200, Konrad Dybcio wrote:
> The USB43DP QMP PHY, as the name suggests, supports USB4 in addition to
> DP/USB. This series provides the necessary plumbing to switch to that
> mode of operation on hamoa/purwa.
> 
> This is achieved by exposing a third `struct phy *` for the USB4 sub-
> PHY, which will be toggled by the USB4 router driver, living within the
> Thunderbolt framework, which will be posted separately.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E description for USB4
      commit: 1b8595f4cc9f4029d11ea1957a4c9b4bce3f6872
[2/5] phy: core: Define TBT phy_mode
      commit: bc70554e6294d71fde45895223881a4ac3769630
[3/5] phy: qualcomm: qmp-combo: Add preliminary USB4 support
      commit: bb8955305318217526e6f9e93ee150888d91d4ea
[4/5] phy: qualcomm: qmp-combo: Add USB4/TBT3 configuration data for Hamoa
      commit: 0e1288af882068dbaf6e64808ba23c95a80dc916

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
