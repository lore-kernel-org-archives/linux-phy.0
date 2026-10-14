Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6072BCC6B1A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 10:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2RMO3mNeplyg48rMiBJvu/4/G/JGw6D7rSLiazg6Z8=; b=JThMnytNZsTVg/
	FNx8UvpQtniTPsJ3GpApOwNCHGUX9uf/ikQ/CrokkVwSJzumVhMdul6NESBCztqYJeeVOddDrXpko
	1reInqdAlo+yYaTkjy38hv+58QlTtRRD26p3wpawmHiBEsXHL5+tV5Hzp2UHsrHUF/wEB88kIaeEx
	djUc8zdxG8Cg820tpxQXT58cWvuUhj7mSzUeDai0aKxlpIJ9GLLXz3oLgVMV66SXlcQSBocQv3MMV
	OwV8SQU/KmEEcKZI2nFTHTHIn7DlcNUeM7xkaaScBt8SUaVkvbTPhB+0IpXAzhUyU8MAZlCOa1cTd
	6c+tDVOC/tETLz1OfFUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvo7-0000000F9aM-045x;
	Wed, 14 Oct 2026 10:01:59 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvo4-0000000F9XT-03iG
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 10:01:57 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69E6MXrW3103932
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 10:01:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KYAhXRWm3xzZ6SvXn/ll2PlfSnw2KKlCGr+A3e5vs6Q=; b=FJq3j6qlONCdGMPC
	GxPx+vBTE26jjoEiWTDkcHMKPG9XrwRYJT2B4Ipg+Gz0f5BCmvRTSjbR2wkuZyCY
	R6Eb8n1ZJlc79xQvBlA1k906K0ZeevTEoya6piwIHKs+uSNn0IY40j86PUYngLCt
	rYQH7CkyYyLBIysAbWznzydsHxSvg0N3RcdikpM8smu8yx+/KRR2nYTyTVZEEaNF
	y8frk1Ub/ae2mIuyEVzn1l17fzadqJmxKAw2TxOgUO5jT+Ad0k2i4EGcvJnaVJtb
	rQPydkDt5rO8EC5JLidaNCXAKuNmNe7rXu++ORqSPffFnPLDxBMq+Lh41JysBJhS
	3a7jjg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9wgt2crc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 10:01:53 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91256a7b7b3so2512776d6.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 03:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791972113; x=1792576913; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KYAhXRWm3xzZ6SvXn/ll2PlfSnw2KKlCGr+A3e5vs6Q=;
        b=Q7ZgwNMSCjXWF9FNoBFaRTV/Ewp7TNhnIl4xiv8AJKHOgGeJdxqFvSPANwLRLQpKjN
         TYGter9vYB+35sBOzIQJbqZ4mVBKQA+PK8+gtdctGJCF4a/jBavcxzuiI80jYcxc0xm3
         WJaoQV8DdjSLM+T8uj0yjXOCdGrfqxoTnqQlbSDpyv4tjzTLwZcv10AKjNvRA0FOldd5
         iyuDSN9qIGtEzze88NDODxbdMSnJstQXfW27jKAMYGiwBfT5KsY/M8ky58h5fb+K1u62
         GkFk9dQwcrglHP1meYnQ7GAZl4rTNC6nAiTekGKnjq9EPXlbqKDk4867Lf/6wxKpaNII
         E73Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791972113; x=1792576913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KYAhXRWm3xzZ6SvXn/ll2PlfSnw2KKlCGr+A3e5vs6Q=;
        b=eRZXEsAcXbV04PZUg6ddaYFc+vy1/gDxH8G3/OSMzFgT7YKGqtbCacvrJ/LTcQnPVR
         602Ct70y705jhUrxoUpFZSFhmlTtGahvabHS8RYmEhVnPIB2mKtwyC068erhYo4sk5hf
         0+73wU3f+0xgpzeeGTG9JrFh9mdvQ09N4dL827Qv8hgqBn5fQaBLhWfpM2HfMARW5Xbv
         unpiKNB7Nf9eiATn/JQ49wlSryg9qMWjdHchSDDfY3XLRmhDwZlWaM4P5oZC02eCXzHO
         lqybcY7xoNR7k+0+bAx7HQRC3PjWXU7DTgKWNP2ujLqqX3jNc++cYVxrqQxGpa1q7aBe
         CNMw==
X-Forwarded-Encrypted: i=1; AKwUvBzm4IVs9079A2AbnUhwMXbOgdxLp5NXa+2ikh/rmvo9NGNlpYzhWnJ5wZQtvQbTTC+du+dSFj1GQ1Q=@lists.infradead.org
X-Gm-Message-State: AFq9FYLdr+Sa9yPiplu3LgyxI3yOa9qwZvUUUvNxHq5QN6X/CYWye5VC
	1HED8GgCALkwS8XYrLQXqgCrzZyc+/81IkMwr7egrQHuUWm5VrLK+zSFPFml0t17iwA6IOxlMdV
	dqRypeDIUg66ISKTeNzTulAJAkuvFUZGBm5uRJql6Rh0ImH5Pmmbnt1XZa/ytivMWYnTyq0qsHC
	W+
X-Gm-Gg: AYBFou1kL2EpBsc4gruK9oECJddf06kPt0469swtXXVyL+3A88B1xhrximO79jjpIHK
	S7s7ikMoe/KYVtUSOBHIRKKCuq3ARL2lgNdCbmvcV/SMXBNjJ+jPxesLgIDhJdc4ucYNW3b4oOK
	VD1GPTL1NJkYo0esXRC0Hhz0TiNmQFzFVKQpwxtwCpgL1d4vxfGmJnAKJIZGuC92JP+NzKW05yQ
	LJPXvPGafL9a47v7IkHvTmGn3mTH5fMv3nCwhx9p4w8NTfGpIxh+je6jND3rV5vPbv8SKJjp7v1
	NyHmyvDZqqhDHQhB5cKE3IhPJAPSFdsgHlS/v7ymD0JmPLW9RtfFovlZu80x7Cim0636HMJVI2Y
	sfdKIKob3SShIMhs0wd20nZe/UiXf
X-Received: by 2002:a05:620a:710d:b0:93e:5daa:67a4 with SMTP id af79cd13be357-93ebd225a6cmr2461670585a.29.1791972112723;
        Wed, 14 Oct 2026 03:01:52 -0700 (PDT)
X-Received: by 2002:a05:620a:710d:b0:93e:5daa:67a4 with SMTP id af79cd13be357-93ebd225a6cmr2461664585a.29.1791972112146;
        Wed, 14 Oct 2026 03:01:52 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de0bc85b1sm10382169f8f.54.2026.10.14.03.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 03:01:50 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 14 Oct 2026 12:01:35 +0200
Subject: [PATCH v16 2/2] phy: qcom: add the SGMII SerDes PHY driver for
 SCMI systems
MIME-Version: 1.0
Message-Id: <20261014-sa8255p-eth-phy-v16-2-6310fac52e85@oss.qualcomm.com>
References: <20261014-sa8255p-eth-phy-v16-0-6310fac52e85@oss.qualcomm.com>
In-Reply-To: <20261014-sa8255p-eth-phy-v16-0-6310fac52e85@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5465;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=ON+QgnIKwGv2LBQprhlnNPZIE/Pvu4pYiUPxZ8R4eWM=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqz1MHAVazZYoE2TiG6gs1bRbgZBj6JGjuOEeQC
 gCh7o4LJw6JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCas9TBwAKCRAFnS7L/zaE
 w0rDEACoUeiI/sJkNp/JFUpE23fY4xnozNxVk07bI7l1ltFX879BSE/i2T77cjqvAey5B3IdM7o
 3+AAe0vSaQfvtl5PuUGp8Cg58+Q7/nRnyniNQ9dDKUpBXYPaceGGqC4wsWifgfIVpFo3CJfMuG+
 /rSQ3wRs2QAiN6bVzWsi0yZYQ49rh0pm5QTotSxBxsZvPgFblO5F4sYYgEO/biJaN+6HUeUfbtT
 xBo7cWH8ZyoOmQWPFxbg/qeVux5Jzt7Sv/9e/TL7QqmMxjAdX1AIQ9mH2fmUFC25AKwZJtt7bGi
 t86KbmJkr3M7WlXB5XRWoBpJ9Nl2nm4pgkdhFAjyyLMiHuhbuuvqYUSp5i/a1cLrojAJ2NTAXH6
 LZyy2W9i4hyslZbwwzZFbBNuoWjqx2cy3QBWe39Xf64kvuZ3zz6u7Vf1A5+OaNWmChAtdDsZtHO
 s+5IhvEntlWi0CZ79CGSeUC3OkAHpaLCoCAQGUtKxt22Mk2n6FkClNmVwY6AxuxUjwIAoAEp9zW
 PLJS82Yc1euQbl7JXMZglOMZLiX2rhHGuMz7jB1H7jkAQsSTlIMNOYROj0I+AE+V9Gh82VgXXcf
 a9tIOmUuX0WuPmxqzqknrBm2E2n9O3gNustyYxU1nxSJOYaMfOIkoW4QmJYiwt2r8zRikKD9RNd
 lD/dsDZ+xrR+KkA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDAzOSBTYWx0ZWRfX7JaErCHVPnQx
 CJvAsv18Jx0XWfz7lpz1AoqXZ68AhrY2tglv/GAqhEa7hrffmCl1qiYHKcqHIHAnXrqWiLXk81G
 hJocwYzXUQuEnHnib4rUJsxLJfJiMt26MtwtmtWet1Guyg5i5bk2g7z2t9PWxTdL1xLQZrqto1D
 4fairi0VqT7MMR2SVrE1WKiHtW+CuYZ4lfhceZBVbRCcl4kFf0MkoN3YhpnYyvxPPd2qJZg40t5
 sEsFqYIN0OiSnhpnLqmB1mZtF6kMFGNfhGa9vlVZBttdaoQLmc6/1/Doxul/RR9y3yr5cYR3J/G
 Vdu+kKY5Kpu9IniQUFFgNPMm5L6iRXBKKBwhKx3ppfbD61RLeDrSOTrFBPPCUWrAIu3wUobMhpc
 c8MvXVylThXLPfHmcjVEMInPRVR8S2uGj59M1JQElPfHykHVjPElVdzYLufxTT11Hq4bXCp2+S+
 HgwWY4OoOzr+dwt71oQ==
X-Authority-Analysis: v=2.4 cv=Jp1kP84C c=1 sm=1 tr=0 ts=6acf5311 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=hTw9fJJfFBl441PWpkgA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: mbLw2IRqHCJN7-CV20dvYxoogV6zd_jD
X-Proofpoint-ORIG-GUID: mbLw2IRqHCJN7-CV20dvYxoogV6zd_jD
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDAzOSBTYWx0ZWRfXx2bf2rnPlFlB
 JObziwxgVXbdQIMPU4SQQM6ipsmj13MQdUT/Rh8ll6ilO9sPrGKrl/FXb0DcaovdKDYZAjhzyVO
 R9c9RIXDZy1VOv95ROOoHqRbPVYNU8Y=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610140039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_030156_214998_316C4C87 
X-CRM114-Status: GOOD (  21.41  )
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

Implement support for the firmware-managed SGMII/SerDes PHY present on
Qualcomm platforms. Do this as a separate driver from the HLOS-managed
variant as they don't share almost any code.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig                   |  11 +++
 drivers/phy/qualcomm/Makefile                  |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c | 113 +++++++++++++++++++++++++
 3 files changed, 125 insertions(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 204b81ca658569b713bca34e296ae5fbc867bafa..0f19912fe1abe3c20a9ece60267697f17a5b1501 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -258,3 +258,14 @@ config PHY_QCOM_SGMII_ETH
 	help
 	  Enable this to support the internal SerDes/SGMII PHY on various
 	  Qualcomm chipsets.
+
+config PHY_QCOM_SGMII_ETH_SCMI
+	tristate "Qualcomm DWMAC SGMII SerDes/PHY driver (firmware managed)"
+	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on PM_GENERIC_DOMAINS
+	depends on PM_OPP
+	select GENERIC_PHY
+	help
+	  Enable this to support the internal SerDes/SGMII PHY on Qualcomm
+	  chipsets where the SerDes hardware (clocks and registers) is owned
+	  by the firmware.
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index 4b5e6640a6faa05715b96cc8e9512208340fb595..41f192c9f4182977573dc8755b34575b13212fd7 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -31,3 +31,4 @@ obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
 obj-$(CONFIG_PHY_QCOM_SGMII_ETH)	+= phy-qcom-sgmii-eth.o
+obj-$(CONFIG_PHY_QCOM_SGMII_ETH_SCMI)	+= phy-qcom-sgmii-eth-scmi.o
diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
new file mode 100644
index 0000000000000000000000000000000000000000..81bed5702bc17d2b05513122b22dc7a5cb75fa63
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ *
+ * Firmware-managed variant of the Qualcomm DWMAC SGMII SerDes/PHY driver.
+ */
+
+#include <linux/device-id/of.h>
+#include <linux/ethtool.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/pm_opp.h>
+#include <linux/pm_runtime.h>
+
+static int qcom_dwmac_sgmii_phy_scmi_validate(struct phy *phy, enum phy_mode mode,
+					      int submode,
+					      union phy_configure_opts *opts)
+{
+	if (mode != PHY_MODE_ETHERNET)
+		return -EINVAL;
+
+	switch (submode) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+	case PHY_INTERFACE_MODE_2500BASEX:
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_set_mode(struct phy *phy, enum phy_mode mode,
+					      int submode)
+{
+	struct device *dev = phy->dev.parent;
+	unsigned int level;
+	int ret;
+
+	ret = qcom_dwmac_sgmii_phy_scmi_validate(phy, mode, submode, NULL);
+	if (ret)
+		return ret;
+
+	level = (submode == PHY_INTERFACE_MODE_2500BASEX) ? SPEED_2500 : SPEED_1000;
+
+	return dev_pm_opp_set_level(dev, level);
+}
+
+static const struct phy_ops qcom_dwmac_sgmii_phy_scmi_ops = {
+	.set_mode	= qcom_dwmac_sgmii_phy_scmi_set_mode,
+	.validate	= qcom_dwmac_sgmii_phy_scmi_validate,
+	.owner		= THIS_MODULE,
+};
+
+static void qcom_dwmac_sgmii_phy_scmi_drop_level(void *data)
+{
+	struct device *dev = data;
+
+	dev_pm_opp_set_opp(dev, NULL);
+}
+
+static int qcom_dwmac_sgmii_phy_scmi_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct phy_provider *provider;
+	struct phy *phy;
+	int ret;
+
+	ret = dev_pm_opp_get_opp_count(dev);
+	if (ret <= 0)
+		return dev_err_probe(dev, ret ?: -ENODEV,
+				     "no performance levels available\n");
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(dev, qcom_dwmac_sgmii_phy_scmi_drop_level, dev);
+	if (ret)
+		return ret;
+
+	phy = devm_phy_create(dev, NULL, &qcom_dwmac_sgmii_phy_scmi_ops);
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "failed to create the phy\n");
+
+	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(provider))
+		return dev_err_probe(dev, PTR_ERR(provider),
+				     "failed to register the PHY provider\n");
+
+	return 0;
+}
+
+static const struct of_device_id qcom_dwmac_sgmii_phy_scmi_of_match[] = {
+	{ .compatible = "qcom,sa8255p-dwmac-sgmii-phy" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, qcom_dwmac_sgmii_phy_scmi_of_match);
+
+static struct platform_driver qcom_dwmac_sgmii_phy_scmi_driver = {
+	.probe	= qcom_dwmac_sgmii_phy_scmi_probe,
+	.driver = {
+		.name = "qcom-dwmac-sgmii-phy-scmi",
+		.of_match_table = qcom_dwmac_sgmii_phy_scmi_of_match,
+	},
+};
+module_platform_driver(qcom_dwmac_sgmii_phy_scmi_driver);
+
+MODULE_DESCRIPTION("Qualcomm DWMAC SGMII PHY driver (firmware managed)");
+MODULE_AUTHOR("Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>");
+MODULE_LICENSE("GPL");

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
