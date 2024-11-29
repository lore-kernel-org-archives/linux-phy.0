Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E31FD6EBE5
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 07:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0enRfVPeeOaevt5xq3eMs9I48fHDC+nuDe2c1aii5g0=; b=TLGCgVuqLJIuDN
	xijefNDXv0LK+puA+7fLvXv7Tr4n304+s3YYNoFOMbWjq2eeeSfjg7IwS/bxcZldC0MM/Lkkgd1Ox
	CQ3CnX/s6UbjMhLfQ8Gf0nE2ReKp0c5KyxrY0AVKdMchtfEgs4yTG0JgYF00JktKBLWLcKSekuowg
	7bBw548T/Gyrry8HXAXQKucVBtW6sQs20gsVMr8NhFpXGj5g5uLOYl4zn74SOoyY4xjlK29TCGKs6
	wbx5Q8aUVt+GLwzm52pRVK8CWY6M89hic7c2rjafuQ31eK8q96C5JV0wc4//ZorQ8MV89Da0D0Dda
	vFfYCgj3TfDrhi8m7W+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvul-0000000H7Tf-19QT;
	Fri, 29 Nov 2024 07:59:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGvuj-0000000H7Sl-1FN8
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 07:59:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASLZ99Q011311;
	Fri, 29 Nov 2024 07:59:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c2W5Jc9ESQZPhwrskfSZmD27wZzekj5ji0rlq1whTWk=; b=cV8Fl2j8DMOopiNE
	UW7BXAQ25HNQqcOyuJMxhWbsueCOQA1DSwYJxTls/gTjEDQ5X1K+GmFfCiQEB0FB
	rsVlcVwMgwGLTd+YJRrRIs40USOUcXr9BmUJCj8/5xtGTkyqPjnVYzYy170fVrrw
	HZPvb/XwDKYOQPkLEIugkdpE6rVQLi4FOsnP9xWdizWRIlErL2SBEVdgyRJ18Onk
	Hz0NxpEGj06e3/ID7U+dhkGQnxmfrGTyInI+U6SJMPMHYACe/+TcBv1GIQJgvANh
	0PafrbG8+UOao9rniOPnm3irQqSmZIipKlYfKfTAYBOJAL7Pahz4ZwBGgwKqjU8s
	X5PNyA==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4366xw4vny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:59:39 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AT7xc4q002890
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Nov 2024 07:59:38 GMT
Received: from szioemm-lnxbld002.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 28 Nov 2024 23:59:31 -0800
From: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Date: Fri, 29 Nov 2024 15:57:48 +0800
Subject: [PATCH 8/8] drm/msm/dp: Support external GPIO HPD with 3rd pinctrl
 chip
MIME-Version: 1.0
Message-ID: <20241129-add-displayport-support-for-qcs615-platform-v1-8-09a4338d93ef@quicinc.com>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
To: Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar
	<quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard
	<mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul
	<vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, <quic_lliu6@quicinc.com>,
        <quic_fangez@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-gpio@vger.kernel.org>, Xiangxu Yin <quic_xiangxuy@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732867105; l=4469;
 i=quic_xiangxuy@quicinc.com; s=20241125; h=from:subject:message-id;
 bh=TNj5EiTOMzDJ0PKM4MIWEv3ufyXXV6h9punYRpWZDKc=;
 b=GyogZ628z9aZFe6b5wiADpPghpaIkxyLi/0Kuotl2chQMlWFKmVE/aM4lLc3LE7wf4wgiLMzs
 rqlHSHvRfzSDJpXyO6xaLLA2qfSCX6d7te4ywU7ad1sP8ogKOFVa8sD
X-Developer-Key: i=quic_xiangxuy@quicinc.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: O8LqOFgAl-AgO4VTrSQFKu8WR8dshWwy
X-Proofpoint-ORIG-GUID: O8LqOFgAl-AgO4VTrSQFKu8WR8dshWwy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411290064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_235945_351211_B2CE3C42 
X-CRM114-Status: GOOD (  19.21  )
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

Add support for handling HPD (Hot Plug Detect) signals via external
GPIOs connected through pinctrl chips (e.g., Semtech SX1509Q). This
involves reinitializing the relevant GPIO and binding an interrupt
handler to process hot plug events. Since external GPIOs only support
edge interrupts (rising or falling) rather than state interrupts, the
GPIO state must be read during the first DP bridge HPD enablement. This
ensures the current connection state is determined and a hot plug event
is reported accordingly.

Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 83 +++++++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index eb6fb76c68e505fafbec563440e9784f51e1894b..22c288ca61b9b444a7b8d4a574c614bfef9d88be 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -13,6 +13,8 @@
 #include <linux/delay.h>
 #include <drm/display/drm_dp_aux_bus.h>
 #include <drm/drm_edid.h>
+#include <linux/gpio/consumer.h>
+#include <linux/of_gpio.h>
 
 #include "msm_drv.h"
 #include "msm_kms.h"
@@ -78,6 +80,10 @@ struct msm_dp_display_private {
 
 	unsigned int id;
 
+	bool ext_gpio;
+	int gpio_num;
+	struct work_struct  gpio_work;
+
 	/* state variables */
 	bool core_initialized;
 	bool phy_initialized;
@@ -1182,6 +1188,42 @@ static irqreturn_t msm_dp_display_irq_handler(int irq, void *dev_id)
 	return ret;
 }
 
+
+static void msm_dp_gpio_work_handler(struct work_struct *work)
+{
+	struct msm_dp_display_private *dp = container_of(work,
+			struct msm_dp_display_private, gpio_work);
+	struct gpio_desc *desc;
+	bool hpd;
+
+	if (dp->ext_gpio) {
+		desc = gpio_to_desc(dp->gpio_num);
+		if (!desc) {
+			pr_err("Failed to get gpio_desc for GPIO %d\n", dp->gpio_num);
+			return;
+		}
+
+		hpd = gpiod_get_value_cansleep(desc);
+		if (hpd)
+			msm_dp_add_event(dp, EV_HPD_PLUG_INT, 0, 0);
+		else
+			msm_dp_add_event(dp, EV_HPD_UNPLUG_INT, 0, 0);
+	}
+}
+
+static irqreturn_t msm_dp_gpio_isr(int unused, void *data)
+{
+	struct msm_dp_display_private *dp = data;
+
+	if (!dp) {
+		DRM_ERROR("NULL data\n");
+		return IRQ_NONE;
+	}
+
+	schedule_work(&dp->gpio_work);
+	return IRQ_HANDLED;
+}
+
 static int msm_dp_display_request_irq(struct msm_dp_display_private *dp)
 {
 	int rc = 0;
@@ -1193,6 +1235,21 @@ static int msm_dp_display_request_irq(struct msm_dp_display_private *dp)
 		return dp->irq;
 	}
 
+	if (dp->ext_gpio) {
+		int edge, gpio_irq;
+
+		gpio_irq = gpio_to_irq(dp->gpio_num);
+		edge = IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING;
+
+		rc = devm_request_threaded_irq(&pdev->dev, gpio_irq, NULL,
+		msm_dp_gpio_isr, edge, "dp_gpio_isr", dp);
+		if (rc < 0) {
+			DRM_ERROR("failed to request ext-gpio IRQ%u: %d\n",
+					gpio_irq, rc);
+			return rc;
+		}
+	}
+
 	rc = devm_request_irq(&pdev->dev, dp->irq, msm_dp_display_irq_handler,
 			      IRQF_TRIGGER_HIGH|IRQF_NO_AUTOEN,
 			      "dp_display_isr", dp);
@@ -1308,10 +1365,32 @@ static int msm_dp_display_probe(struct platform_device *pdev)
 		return -EPROBE_DEFER;
 	}
 
+	if (of_find_property(pdev->dev.of_node, "dp-hpd-gpio", NULL)) {
+		dp->ext_gpio = true;
+		dp->gpio_num = of_get_named_gpio(pdev->dev.of_node, "dp-hpd-gpio", 0);
+		if (dp->gpio_num < 0) {
+			dev_err(&pdev->dev, "Failed to get gpio:%d\n", dp->gpio_num);
+			return dp->gpio_num;
+		}
+
+		if (!gpio_is_valid(dp->gpio_num)) {
+			DRM_ERROR("gpio(%d) invalid\n", dp->gpio_num);
+			return -EINVAL;
+		}
+
+		rc = gpio_request(dp->gpio_num, "dp-hpd-gpio");
+		if (rc) {
+			dev_err(&pdev->dev, "Failed to request gpio:%d\n", dp->gpio_num);
+			return rc;
+		}
+		gpio_direction_input(dp->gpio_num);
+	}
+
 	/* setup event q */
 	mutex_init(&dp->event_mutex);
 	init_waitqueue_head(&dp->event_q);
 	spin_lock_init(&dp->event_lock);
+	INIT_WORK(&dp->gpio_work, msm_dp_gpio_work_handler);
 
 	/* Store DP audio handle inside DP display */
 	dp->msm_dp_display.msm_dp_audio = dp->audio;
@@ -1678,6 +1757,10 @@ void msm_dp_bridge_hpd_enable(struct drm_bridge *bridge)
 	msm_dp_catalog_hpd_config_intr(dp->catalog, DP_DP_HPD_INT_MASK, true);
 
 	msm_dp_display->internal_hpd = true;
+
+	if (dp->ext_gpio)
+		schedule_work(&dp->gpio_work);
+
 	mutex_unlock(&dp->event_mutex);
 }
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
