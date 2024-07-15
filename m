Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19CB0C41513
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jul 2024 12:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbLLanAE6dx7XOFs6QLuOgqQNsmzS+bcIqthi21BBfE=; b=euYGBkyEsPaLbh
	sHvrrWA0GHXGOFNN6Msm3shQCOb1vZJ4o26djFwqt7MJjJV5VWmvlsOxHisK9bW3QBm9rkSKUp5VA
	DlV7MnKiXssjZikHDJHXrcHh7rFcEGvVWi25GlPkVTbI9MPndKhn2Bmw4FgpcqTnE9kV+SGS1O8GO
	UYZv76WHBmAt9Ims+DJBc0umfVMxDvAUkpr0Q76ojT6ukC0fZnXcfbmmKpz6/aQ4GkLztTzhfsBes
	baWb3L7A6EobaxN8eHdznMJt+5pGn4OkvTiQD3qbs1NN3PLM7QdxGr8LDGrXSu1+gF7HzypicI0Hu
	OnOHpGCHE8IrUf57n7zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKj2-000000070lr-3LQu;
	Mon, 15 Jul 2024 12:22:40 +0000
Received: from ns.iliad.fr ([212.27.33.1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTKil-000000070d9-3axb
	for linux-phy@lists.infradead.org;
	Mon, 15 Jul 2024 12:22:25 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 25DE720CA4;
	Mon, 15 Jul 2024 14:22:14 +0200 (CEST)
Received: from [127.0.1.1] (freebox.vlq16.iliad.fr [213.36.7.13])
	by ns.iliad.fr (Postfix) with ESMTP id 0C34920BDC;
	Mon, 15 Jul 2024 14:22:14 +0200 (CEST)
From: Marc Gonzalez <mgonzalez@freebox.fr>
Date: Mon, 15 Jul 2024 14:21:16 +0200
Subject: [PATCH v6 3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
MIME-Version: 1.0
Message-Id: <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr>
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
In-Reply-To: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, Marc Gonzalez <mgonzalez@freebox.fr>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_052224_110766_123FF45D 
X-CRM114-Status: UNSURE (   9.03  )
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

Current driver already supports the msm8998 HDMI TX.
We just need to add the compatible string.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 24abcb7254cc4..0bfee41c2e71a 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -549,6 +549,7 @@ static void msm_hdmi_dev_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id msm_hdmi_dt_match[] = {
+	{ .compatible = "qcom,hdmi-tx-8998", .data = &hdmi_tx_8974_config },
 	{ .compatible = "qcom,hdmi-tx-8996", .data = &hdmi_tx_8974_config },
 	{ .compatible = "qcom,hdmi-tx-8994", .data = &hdmi_tx_8974_config },
 	{ .compatible = "qcom,hdmi-tx-8084", .data = &hdmi_tx_8974_config },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
