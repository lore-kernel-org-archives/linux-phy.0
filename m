Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A64C4453C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 16:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRp1yxpHHiTVnIY4K4Fpr6OC+OsjVJXSfUdAbnRClws=; b=recmaqYkzwWnRa
	D5ruJn4rAHWsfDOdUws26+PwenoeqYAKfcxKhm8yHqI+oGPR5saZQ9upghGQs3933AZFppqzba7e7
	oONiwgCWrOIFpYf7BCzjBNMSbwgzjT5FddMK+R8MdeWuzHXIvrAoUNBuVykrUvq5VSV4F9+fmrNRq
	9RiHhD/ySshGaYEq+mCv47U53DU9Njuqajeod+CR67lne5pysoEDJFj9GyTwGmqasr79JGhKEU/b6
	De1pZyGzoo52DePWf4jPQ9uM6+66TYD9aWcbsdhpvE9JRSjOFW289v1CibiSp1w5Rp3b2xL3quurZ
	25QG+0/SFKK1acjnGevg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZxs-0000000CMpr-27XR;
	Wed, 22 Jul 2026 16:38:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZxr-0000000CMpN-1qmr
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 16:38:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DD8AA601E0;
	Wed, 22 Jul 2026 16:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF2B21F00A3A;
	Wed, 22 Jul 2026 16:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784738314;
	bh=8bZsdyf3RJFwjJ1geQjuOy4xo6q2BaGy0n+TBXIZcmk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=nnWnltqY0BUeak2nZPn5syYVAs+FnN5kh/2s/Gxstnva7F/oTFfn7V9L2h9j3MqvK
	 7UmlxyYEt84GTBYQu1GVLcoI3ZCFDPySmKR8/RfpJ2sZMQZ8B2cOk/VJplMERbvMuY
	 DyZeRCqWhd7Po0qIVrfLvQg1rnhQG8LfZF7PBM8RVlyaGs/QA2mxdPtjvmFBEmPgE9
	 IWQgJKU5GWa4Mv3KKF2aDzA7Zg1XbNYBoTBo1gpxwx2tSfbMX/4HrqGLD6U0kP8Tlp
	 Mabzyx7W1YoUL6bvlezQVPD+VC++EEl2Hu4UFgXUjZYvD0cc1ZELT8sVxIl5i8vREZ
	 NoqVAdiI7Baog==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
References: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/2] Add support for the QMP PCIe PHYs in Qualcomm
 IPQ9650
Message-Id: <178473831135.304548.1416914034370187826.b4-ty@kernel.org>
Date: Wed, 22 Jul 2026 22:08:31 +0530
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


On Fri, 10 Jul 2026 23:16:39 +0530, Kathiravan Thirumoorthy wrote:
> Qualcomm's IPQ9650 SoC has 3 Gen3 dual lane and 2 Gen3 single lane
> controllers with the QMP PHYs. Unlike the PHYs in the other IPQ SoC,
> refgen supply is needed to bringup the PHYs. Both single and dual lane
> shares the same HW init sequence. So reuse the tables.
> 
> Document the compatible along with refgen supply and add the phy driver
> support for it.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: document IPQ9650 QMP PCIe PHYs
      commit: 7218d17e7613d5949cfc6215101493418fa501c0
[2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
      commit: ee6aa0f01d4e8eddf1c7fda49d65c7ef12444e78

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
