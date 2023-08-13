Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 581A8C04A94
	for <linux-phy@archiver.kernel.org>; Sun, 13 Aug 2023 16:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=imb5grGRHNsm05zuRV8zOEXR2YyW0I8LMYtc0c5WtsI=; b=n3yDAigCuDLQUZ
	1Fuv5mGhifrkjVr10w8CM0ZxpRWjgKNclKu/fL4eLkY3ZCEo96JnDXDMBiBEXt75ZelYz4oJdFmc/
	bx6ERbjAZF42rTfmkNosQT7Bj4n7RV/R3XNgyFMoV1D4OC1eywMlnhvLbVLi+NYlh/WMHnd0Vift1
	4eV35BanuqnhsaoGQ2XjL3wBGI0y6J1NTMefCGCorgRvd7mkWBHitm0IjXBXk+JOQMrBdfeuVfgFR
	sSvgwbmmDPjrk8bj0RiIIgNI5MLK8K8qYMbVqB6VHL+kE+s4aF3ylokywIuO9BxALG5pcm1r/5N1v
	uaFstLH9hE4RuTC7BKJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDf0-00FPgB-0I;
	Sun, 13 Aug 2023 16:09:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVDex-00FPf9-1Y
	for linux-phy@lists.infradead.org;
	Sun, 13 Aug 2023 16:09:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EC9DD63A5A;
	Sun, 13 Aug 2023 16:09:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58661C433C8;
	Sun, 13 Aug 2023 16:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691942982;
	bh=BcDOaovPxSnKATfyJYAWa6+oBcykzejHLHK73vkPAqM=;
	h=From:To:Cc:Subject:Date:From;
	b=dlIJgiyG7hxsWRfcSZsPm8kNhnGmg4TEPJPuwAVIjpQ/UWMC+9soRZpaqJZnWZix5
	 3EQA+JQN85NLlGjfE/YvxjL7Lmnz1z+wI5PNOkuBgHPJhUcn4MPxIRodFJm6C9+qhr
	 QeaZxvYPkxahKhfDXGryOrFBq//V7Th0EK/+cL1JEYl1XE+SX0ccihAsN0zfv2saTD
	 Tf+8oMhrN/xv43ZsH0mipCjazlA04pz6TcesOWQpE+rcLLOwS5Qifdpor6MUi01Vnk
	 T7jy7QqFMdCbX1yAlf4R4iXmbPijlZlXS81zVwQewunMHJitsM8n+e58S/wfpToI0n
	 HIxdi/kkQLA3w==
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
Subject: [PATCH AUTOSEL 5.10 01/25] phy: qcom-snps-femto-v2: keep cfg_ahb_clk enabled during runtime suspend
Date: Sun, 13 Aug 2023 12:09:12 -0400
Message-Id: <20230813160936.1082758-1-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_090943_606982_71C4E33B 
X-CRM114-Status: GOOD (  14.53  )
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
index 7e61202aa234e..a107f98c662d5 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -122,22 +122,13 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
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
