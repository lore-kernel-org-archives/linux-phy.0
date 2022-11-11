Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C68DC38A02
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+JneKb3tLxOtcbwrxZjFTOrEPbgvQL1Sdzplc7zxOg=; b=SEqA26vytOPw5M
	aWCDAPVk+CmTVyvsfaT8EB7uRDQjFUAfufQTshkTthjSZ4Wmh9DeVkYokzxykWoJ5HTts5nJCaFfk
	Qve8joXUZE/hkc58zpO/hvT78ayF62Esvp/+80jju5t02Fo2QOtjJrzQQoKkaxU9LgDa4WoP/3Xun
	HvdVu8couflxEX0NSNT49XM8E4bt2Os6wuUv+/WeLtxVrdIATjuASjTY2yUFlf81/oemBceyI10K2
	/MeboxihCK4Nxgda8idUb46/hQ78uUJqSZVe0gT6LwnWABDXamC7Z1rPEkwJgutq359z7Hc/CzJIP
	DZEWBfXxLBJHIIl6L2ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPek-00EIVm-Lf; Fri, 11 Nov 2022 08:44:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPeh-00EIT3-Uh
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:44:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0A13961EED;
	Fri, 11 Nov 2022 08:44:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9163C43470;
	Fri, 11 Nov 2022 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668156293;
	bh=w13zs6FKj0SdIEJZ1oD2GuvAHcCJq00Kw69kuCxONBU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=idK/EQQBCwNV4wB58B/l10bmWyvHS9yGNUlpzFrwtEpBJGEPdvCL/84dB7jSl1kDM
	 OihJsY+hpaUwzKI4nRXJ5owiDvoC5FTeQb3RfJ6TIn3tXZpZ1uGoUeYC4nCgBVEghN
	 o3GTpM3ClR7li8cwqUhQdA8V9F+4QCOy7ibFaSMPfHloso3z+JnPL/O56SnSxWNBwv
	 +kpuhQEMK/rBdMqyd8kPXG4kTgaoR/cZHkGP1+GPBhz3HUIQHPW03auv6bsP8YopVK
	 q+Kr9NSeof7uABfUum+jmrd5q96rQFhJH4KxUg3xVV9xm1GV/RCBe7/3BsLrD4tkjK
	 C10775VzrrHWg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPeD-0002Mk-Ox; Fri, 11 Nov 2022 09:44:25 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH 3/6] phy: qcom-qmp-combo: fix sc8180x reset
Date: Fri, 11 Nov 2022 09:42:52 +0100
Message-Id: <20221111084255.8963-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111084255.8963-1-johan+linaro@kernel.org>
References: <20221111084255.8963-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_004456_042882_FC18E956 
X-CRM114-Status: GOOD (  11.47  )
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

The SC8180X has two resets but the DP configuration erroneously
described only one.

In case the DP part of the PHY is initialised before the USB part (e.g.
depending on probe order), then only the first reset would be asserted.

Fixes: 1633802cd4ac ("phy: qcom: qmp: Add SC8180x USB/DP combo")
Cc: stable@vger.kernel.org	# 5.15
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index cc53e2f99121..40c25a0ead23 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1177,8 +1177,8 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
 
 	.clk_list		= qmp_v3_phy_clk_l,
 	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= sc7180_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
