Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2595CDB479
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 00:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDJ9K6dWrZwm0D1j107NcKqnaaxOoYgyHgq6lGzOGrw=; b=tsXXyrcd5bv8v8
	pDys2i7sUjqsq5U8D2W/CC71J1g2OqwEg+Bu5Ma0k4JBNvstKebA/6/Vp7jOo4wgx8WebwgR2P8uy
	sVhGV2I+cO8Fa5wzau+C+m1CIJPuHhrzPFFiIaToda3h29vDlznugOiuUr2U/y9RRBbNi7f1EGQLB
	ePX2OUReUf0Hfi/8pgKq+Gy6OJ11JczS0zomcJnXEJGGPbmYRszB4Ps4JK7sbb9xGeC/i1aYta2vh
	wgPURhTNtXb4vN62nB0NM2GuUVf5pjqxGMMy5lMfWbqpah3yc6eKYkXBc7hN14OAO2VqUfnoqj98u
	BxAQkoI3+0xt/q/EiSkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpQo-00000005VRS-2cl2;
	Tue, 23 Jun 2026 00:56:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpQm-00000005VNY-3CzP;
	Tue, 23 Jun 2026 00:56:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D5413445DE;
	Tue, 23 Jun 2026 00:55:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C0CC4AF09;
	Tue, 23 Jun 2026 00:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782176159;
	bh=gUSwG/xV3FIgkJs1NjGNIB6Y+opYzgspoHKWeQ+czsk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=uSS0ko1/gDoeJaEiIF/ivgn64b2ahhL0V/Zg1D5KDDQuPl+kCHZ1FtmPvSbM2OiJb
	 hiFdUGYqXok6G9sf73a5WlQvhDCKzwphpZBfrjyoQUN28x0uAN7SpgAwm0I+Sr9ySH
	 Q0uQ1y2KA3Q9mEDaPC8zbQ3wXRpg5fU66eIyBhks8gvkxK61t/MEFHhaeZ9MHVmC0v
	 3bK/TVqA9f0Uu2X+E84zH7FgFTuDOU0x59eYSl+yOEHZPNOqey4mpPvW/RIYsjQseL
	 1NVSjFqNTOHZ3ILwglJR015cmXA0XrfEo9vgUzhkQeRH0mVfnXzQq680q15WtpccUL
	 bOasNmLifc+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D183CDB478;
	Tue, 23 Jun 2026 00:55:59 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Mon, 22 Jun 2026 20:54:26 -0400
Subject: [PATCH 5/8] iommu/arm-smmu-qcom: Add SM8450 MDSS compatible
MIME-Version: 1.0
Message-Id: <20260622-sm8450-qol-v1-5-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
In-Reply-To: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782176157; l=895;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=AsOTyr4eFYIIVtsdqo7k4uY9IgyCMaUV3tbOEY06cYo=;
 b=PHvBNW27yZaz/KOj3tAZYrJiQtKcCsyCSLbQxTkyFDC8T/nMmhjDznM0ec0T3y2T5krYPRHgI
 e0Kl/LbAiyDD2MDCZX+2xSpXFqbEwz0xg6g1FrsL8aJKtPxqQKJ1zFn
X-Developer-Key: i=esteuwu@proton.me; a=ed25519;
 pk=wToFt4mOAWkzbqb15Ye1hrhevI13vK9BcMUFiQ/me1M=
X-Endpoint-Received: by B4 Relay for esteuwu@proton.me/20260622 with
 auth_id=835
X-Original-From: Esteban Urrutia <esteuwu@proton.me>
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
Reply-To: esteuwu@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Esteban Urrutia <esteuwu@proton.me>

Add the compatible for the MDSS client on the Snapdragon 8 Gen 1 so it
can be properly configured by the IOMMU driver.

Otherwise, there is an unhandled context fault.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index e2c914fccd6f..795e8ec7e8fa 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -425,6 +425,7 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,sm6375-mdss" },
 	{ .compatible = "qcom,sm8150-mdss" },
 	{ .compatible = "qcom,sm8250-mdss" },
+	{ .compatible = "qcom,sm8450-mdss" },
 	{ .compatible = "qcom,x1e80100-mdss" },
 	{ }
 };

-- 
2.54.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
