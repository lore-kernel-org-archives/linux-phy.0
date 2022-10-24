Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24109C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PK4zg4DRyEwtjZXE/OPHgPn23des3DkRrZVu//OvpTE=; b=ZVfqDAqIg+WYkR
	NRIPHXNiqkBfU6z/b4WqlAsWC0ujTLiEzux+j7bOeLKh69wyOMJIM70yIJxgjnLpwTMZvxc1fvucj
	1+4s6SdXiBp1VgwbDBzSmboiPU7HaVysH1/xy2Fw4sGQPE4kh9k34gDHRtAE33uyypNfaRhjO6Ubh
	U2zTwbM3o5OPUQ6XZWqbSO4wXXbICUfy4JJwELNlAJf4WKkTdUBYK1LL8F417U7zZZxBvvMxIWkyk
	xr2auQTtMOJNaMTWiBlc9EiaWcEdUEiiQVMFpz5MG28zmXA34UGE5dA5ol/sJ8l0hQzuf3qc2llsC
	CrIY/KAO57dtgNhg8Tfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMQ-000cAr-84; Mon, 24 Oct 2022 10:07:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMM-000c6G-14
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9BE37611CB;
	Mon, 24 Oct 2022 10:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 617D1C4314E;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=G5+tIT4Tgtl0OJ/ICDrVdGpu7q26bG2QKVMgBhfWtvE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U6nZdQJjjaXnR4yXoW2TRRKm5wK4CAC18GyBVOuW2JMxYaIWmbijmjGvKWk7FVoWK
	 n55Vurm3rBhQXEXY+7F61qK8/b3lfhhUQDjj/Hgrc5+jZCYKZk34ydrbLRb5DzNgh4
	 58xLwloBBxywELUwW1hYJfoKpWNM0GpbR1Wbnoa+UQ83WUrCTiN4429ofrcrbH5bxg
	 6eZprvjpJORdL8Y/w4+63NTkA7T7PrZzugJ05upBt9HLplA7CeiNLKE7fvIkVDtmZX
	 duEdPA+2R7LmbEqIu6/Iywty2h0gI4XmN/FTz/8zPHc6r71CUmczfSUT0AReP9JsAr
	 JCdnRNQk+Fvfg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM3-0005MC-0Q; Mon, 24 Oct 2022 12:06:47 +0200
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
Subject: [PATCH 04/13] phy: qcom-qmp-usb: move pm ops
Date: Mon, 24 Oct 2022 12:06:23 +0200
Message-Id: <20221024100632.20549-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024100632.20549-1-johan+linaro@kernel.org>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030706_133037_9DCF55F5 
X-CRM114-Status: GOOD (  13.11  )
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

Move the PM ops structure next to the implementation to keep the driver
callbacks grouped.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 4591128743c7..f28883e0d21e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2280,6 +2280,11 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static const struct dev_pm_ops qmp_usb_pm_ops = {
+	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
+			   qmp_usb_runtime_resume, NULL)
+};
+
 static int qmp_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -2501,11 +2506,6 @@ int qmp_usb_create(struct device *dev, struct device_node *np, int id,
 	return 0;
 }
 
-static const struct dev_pm_ops qmp_usb_pm_ops = {
-	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
-			   qmp_usb_runtime_resume, NULL)
-};
-
 static int qmp_usb_probe(struct platform_device *pdev)
 {
 	struct qcom_qmp *qmp;
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
