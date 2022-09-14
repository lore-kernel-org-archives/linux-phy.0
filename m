Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 626F2ECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 05:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YbyabAQlNH6UY93CJIXHIUVame/U6VaswEetL+EOXW8=; b=0GI6R3A5S8eIrB
	tRhtCBdAKYj2klb+bnOQjLvOLstpQrDFxLt7lskcf2GAas4bbyHoGXlpV56aBi7NyP7y3t1FFwq6c
	DfYt6RYj7BtweKt4I+SvCr48AqnYqSCvWl/E24S9cW+eS4Y+T/olGUq3pdepfUbtYphKPosyTpnfk
	AM0hJq2PWkVFMrDTO3NNY9rBj4CI8Kjzn2aXRyJc55fgwgz4pcbRhiglsRsvclSAnS8iO4MmvHShL
	V+05JWsnaCBsBUdblnNgIM89W1plpDktlUb1npq+GBiY/+/tSgtukrc5haaz9zoGfZbs96FbKmgyh
	eHDi+RwV2SxIuGaPCPgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYKlU-007Os1-1l; Wed, 14 Sep 2022 05:16:48 +0000
Received: from mail.hust.edu.cn ([202.114.0.240] helo=hust.edu.cn)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYKky-007NXL-7a
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 05:16:18 +0000
Received: from localhost.localdomain ([172.16.0.254])
	(user=dzm91@hust.edu.cn mech=LOGIN bits=0)
	by mx1.hust.edu.cn  with ESMTP id 28E5F6H3001291-28E5F6H6001291
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 14 Sep 2022 13:15:10 +0800
From: Dongliang Mu <dzm91@hust.edu.cn>
To: Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Vivek Gautam <vivek.gautam@codeaurora.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc: Dongliang Mu <mudongliangabcd@gmail.com>,
        Viresh Kumar <viresh.kumar@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qualcomm:  call clk_disable_unprepare in the error handling
Date: Wed, 14 Sep 2022 13:13:33 +0800
Message-Id: <20220914051334.69282-1-dzm91@hust.edu.cn>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-FEAS-AUTH-USER: dzm91@hust.edu.cn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_221616_652394_096B5382 
X-CRM114-Status: UNSURE (   9.77  )
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

From: Dongliang Mu <mudongliangabcd@gmail.com>

Smatch reports the following error:

drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
warn: 'uphy->cal_clk' from clk_prepare_enable() not released on lines:
58.
drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
warn: 'uphy->cal_sleep_clk' from clk_prepare_enable() not released on
lines: 58.
drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
warn: 'uphy->phy_clk' from clk_prepare_enable() not released on lines:
58.

Fix this by calling proper clk_disable_unprepare calls.

Fixes: 0b56e9a7e835 ("phy: Group vendor specific phy drivers")
Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-usb-hsic.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
index 716a77748ed8..20f6dd37c7c1 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
@@ -54,8 +54,10 @@ static int qcom_usb_hsic_phy_power_on(struct phy *phy)
 
 	/* Configure pins for HSIC functionality */
 	pins_default = pinctrl_lookup_state(uphy->pctl, PINCTRL_STATE_DEFAULT);
-	if (IS_ERR(pins_default))
-		return PTR_ERR(pins_default);
+	if (IS_ERR(pins_default)) {
+		ret = PTR_ERR(pins_default);
+		goto err_ulpi;
+	}
 
 	ret = pinctrl_select_state(uphy->pctl, pins_default);
 	if (ret)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
