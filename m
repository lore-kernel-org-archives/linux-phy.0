Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 882F7C001DB
	for <linux-phy@archiver.kernel.org>; Sun, 13 Aug 2023 16:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oSMZuasSw4rHgZdf7PI43s2gnN7h5uIf21Kxf1eSBQI=; b=bmu99oR15QyqMS
	leYaRiOgMWoDQqfDacF7rmc4vwznyPTfjA+FnpFx2Ojf23nnyaoAtN5NUodQgexsXmd17QTOtZ664
	SK0uC+SNqjTzDlFlV9wPvvqVdiuHbxnPfMq6pwKmBIUBzLPx8ZneNKPXvetTMEZz2Q9Luo/+aiCPj
	Fq2yhT1ZIb3sn5ff1UQhzz1A0hkR5OhHsbBYhMzcaa5atjp83LujGv1soX5wkM5FJ+F3Kwlf4pHXH
	xrj5L8Fypgi/hSBb/wd9lP4kIKGpj1A3xV1pEccVMazUB4ld7NMQq7Q57VyBmOfFSpvWqTnkNP4/q
	byGbBuFg1f4T/byd2msA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDVr-00FOFm-0t;
	Sun, 13 Aug 2023 16:00:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDVo-00FOFC-2o
	for linux-phy@lists.infradead.org;
	Sun, 13 Aug 2023 16:00:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2FA7C634E2;
	Sun, 13 Aug 2023 16:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA8E9C433C7;
	Sun, 13 Aug 2023 16:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691942415;
	bh=h+5k1w+KNk/kG/fpGoMylD2FA7uf++mzWjJ1y1nRKc4=;
	h=From:To:Cc:Subject:Date:From;
	b=btPJSAuqeOxpbCoxhCBRph9ek5BfjtaQ+YWjFl0/sD4Mi08Pjyqj0vz3ie0dCA4in
	 NTLum3D9Q1dFYUIEj2zzDBdDRZrI3kydZ9WmtB5dpsIWuhbQosu+xIrlnp9xq65w3M
	 X3cDjC0cs9aMYhRIyOvOEpDCM/qCDucprNNvREEgzfEok6ra8bozMFHvNPXtLhJZ51
	 Ykzn6b5rDFRaZz8Rl4XHC+bEkGyhzzM6VHs3FiKnTJdgXSvIZNllbbduoItdXeWylU
	 cgDgiTMmy97O7UeB/RJyzwFN2+IauRr/+UU9noL37vrq87MC6fuN5h0eMzf05QNDiH
	 CiMhBe56w5W2A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Adrien Thierry <athierry@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 01/47] phy: qcom-snps-femto-v2: keep cfg_ahb_clk enabled during runtime suspend
Date: Sun, 13 Aug 2023 11:58:56 -0400
Message-Id: <20230813160006.1073695-1-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.45
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_090017_110326_EE5897F2 
X-CRM114-Status: GOOD (  15.12  )
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

From: Adrien Thierry <athierry@redhat.com>

[ Upstream commit 45d89a344eb46db9dce851c28e14f5e3c635c251 ]

In the dwc3 core, both system and runtime suspend end up calling
dwc3_suspend_common(). From there, what happens for the PHYs depends on
the USB mode and whether the controller is entering system or runtime
suspend.

HOST mode:
  (1) system suspend on a non-wakeup-capable controller

  The [1] if branch is taken. dwc3_core_exit() is called, which ends up
  calling phy_power_off() and phy_exit(). Those two functions decrease the
  PM runtime count at some point, so they will trigger the PHY runtime
  sleep (assuming the count is right).

  (2) runtime suspend / system suspend on a wakeup-capable controller

  The [1] branch is not taken. dwc3_suspend_common() calls
  phy_pm_runtime_put_sync(). Assuming the ref count is right, the PHY
  runtime suspend op is called.

DEVICE mode:
  dwc3_core_exit() is called on both runtime and system sleep
  unless the controller is already runtime suspended.

OTG mode:
  (1) system suspend : dwc3_core_exit() is called

  (2) runtime suspend : do nothing

In host mode, the code seems to make a distinction between 1) runtime
sleep / system sleep for wakeup-capable controller, and 2) system sleep
for non-wakeup-capable controller, where phy_power_off() and phy_exit()
are only called for the latter. This suggests the PHY is not supposed to
be in a fully powered-off state for runtime sleep and system sleep for
wakeup-capable controller.

Moreover, downstream, cfg_ahb_clk only gets disabled for system suspend.
The clocks are disabled by phy->set_suspend() [2] which is only called
in the system sleep path through dwc3_core_exit() [3].

With that in mind, don't disable the clocks during the femto PHY runtime
suspend callback. The clocks will only be disabled during system suspend
for non-wakeup-capable controllers, through dwc3_core_exit().

[1] https://elixir.bootlin.com/linux/v6.4/source/drivers/usb/dwc3/core.c#L1988
[2] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/phy/phy-msm-snps-hs.c#L524
[3] https://git.codelinaro.org/clo/la/kernel/msm-5.4/-/blob/LV.AU.1.2.1.r2-05300-gen3meta.0/drivers/usb/dwc3/core.c#L1915

Signed-off-by: Adrien Thierry <athierry@redhat.com>
Link: https://lore.kernel.org/r/20230629144542.14906-2-athierry@redhat.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index a590635962140..1d45029b19cd5 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -165,22 +165,13 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 					   0, USB2_AUTO_RESUME);
 	}
 
-	clk_disable_unprepare(hsphy->cfg_ahb_clk);
 	return 0;
 }
 
 static int qcom_snps_hsphy_resume(struct qcom_snps_hsphy *hsphy)
 {
-	int ret;
-
 	dev_dbg(&hsphy->phy->dev, "Resume QCOM SNPS PHY, mode\n");
 
-	ret = clk_prepare_enable(hsphy->cfg_ahb_clk);
-	if (ret) {
-		dev_err(&hsphy->phy->dev, "failed to enable cfg ahb clock\n");
-		return ret;
-	}
-
 	return 0;
 }
 
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
