Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C13FA3742
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjWnzSaBZ/yIwbyWRKlaaQYF2A04Q8WOxcNkLoExNPY=; b=IDJZnqIiTQO13E
	fwG3ZPJ65J3jOTZMFJtOWZFFKEuFWze0eUsry9JaVqK7WaFhWlYIiIkYUGRp3F7dqS4mFrhDEoz+b
	X4m4N2viDeaeN7SPJNPPNxpf3t6qv9DSw0TgLBPhPv5JD5OcYzpreiLwFC83M549QX5+c+K9nR5lO
	Vh9yL0KsL61tEAb6Dc4GnfVVCwPMnu2/CJIve2QTMFv6sVENfFXF4JHy2kYFr2OQe4JEP/HAJhs+i
	tDgOmwAX7YAFIo6QS9ZWhIbaT3EFNCZItxjsbDQwQAxU+Wjhx0pViLAMXBMty8d16fzv7nGOnYzme
	Qa2GNtCUE9tzIguoPr9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMU-000cEn-CY; Mon, 24 Oct 2022 10:07:14 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMN-000c7K-Bo
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EAB62B810C0;
	Mon, 24 Oct 2022 10:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42B16C433B5;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=Blc66Ko1azHrb/nEVIdVCCRSopdMuUlafRjUOxGWY+I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LbR7LDlSZk4rHgr+yNoQRlUV7hPaFX1hrAXCVoGz8fzsx2pt17hAar/UlV9UJ80Zi
	 zRZeun+PffO3YmJaFNzuSq1nyAl6opCGKW7MvyFXqLR4PEHzrYNK7RSQhoteYWzQqL
	 Gtha2VWTuKmWiYfUwdFjcCPk1dmXt99tBM7Vy9lAkqvHg9fWIVSKIrzQ+oTNsWTZta
	 GABXjIvld32EoaoE7vx2j7pL6/5mWlqR6EKFzO+/CUfnIcG7lu+3v2q7oQYiVb73v0
	 QFkGCM78jfK+e/DNoj307aTKkt1aOLU5rwr97GAxvnE39ADY+JI1C1q1IHLl3vhgk5
	 YUPqpVvFQAXNw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM2-0005M6-Ob; Mon, 24 Oct 2022 12:06:46 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 01/13] phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
Date: Mon, 24 Oct 2022 12:06:20 +0200
Message-Id: <20221024100632.20549-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024100632.20549-1-johan+linaro@kernel.org>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030707_563048_A0A76DB6 
X-CRM114-Status: GOOD (  12.32  )
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

The PCS_USB register block lives at an offset of 0x1000 from the PCS
region on SC8280XP so add the missing offset to avoid corrupting
unrelated registers on runtime suspend.

Note that the current binding is broken as it does not describe the
PCS_USB region and the PCS register size does not cover PCS_USB and the
regions in between. As Linux currently maps full pages, simply adding
the offset to driver works until the binding has been fixed.

Fixes: c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index d0c433197080..82af28f4a91b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1682,6 +1682,7 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x1000,
 };
 
 static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
