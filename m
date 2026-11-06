Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D274D606D825
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 08:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bmKOAH0M;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WbFvdF2O;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=M1WWoQTz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CHj1igv2hpEUJl++iTzq5gqJNz/cR5AbXZIQrbSPA8A=; b=bmKOAH0MS2VQJxg778OUMcv4p2
	Mb14PevkySLFwM+r46F5uN0MrxW+33Kq4xUG0NmWhLh+Fbcik+jpFqrCNkhGXecsNvfXJBPfLA+CU
	Zat1Fc8kjgvpuB7jhhRXugu8+7P2i7exWZCnHTbSMasINB5T7Yp4jc2pDxDDsANknTTRCjZMQh+wK
	LJZGB6WEm1bZWsNulAHheRewtbip0DnFvQlaeUN6R7rFPynE3uqiT7/D80EkGRWkVR0JraQFrtUIx
	mXGf3F6GLjsC4Yz5ZY4qCpia9RLTAiQ9eTlGlVNZzSHLwKLamDqvumrBzp6WPH/JXL+bmTTB05GtP
	BVNUQifw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFIS-0000000BYPI-2EAb;
	Fri, 06 Nov 2026 08:27:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPFIP-0000000BYLY-2Gt2
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 08:27:39 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A67R9dB2333810
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 08:27:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+iPJJtX6fNc
	ECKsITdpcGnaCSiS9lo75HMfwgu0RABE=; b=WbFvdF2OrV4s4IBYVZvxRp2CRPp
	44UUtyT1kI2qNNKRp4gqzMR2ovG46Ooj4zjs7jQjt346JhZRt9pYZ8P0S3VPymNG
	sCZIy/zhhL86N3kvTK3fxKlMKuc6Mmew0WzY7hOvzJq1YkmqQ8Dl8EPYYnTTnnq7
	lPQ0i3+TM14tb6oJvG34DS8ettscvIvbKvXMP1qS5eFRQMaZLHHBRwTAuZgB6hJg
	hEqRM0BMD4iaR0n49e9K5S9EPdKTVeJxCCJ+Cs/+UGd7apwG2AQh54MfsOqLVgSk
	I/IzqaeK1iv81Mq6Ppc5ZA8oId9rv/NBa52D5gL3FSrzLctAMExgzfiSWWA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p99xq1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 08:27:36 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3ae1d132d52so424411a91.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 00:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793953656; x=1794558456; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+iPJJtX6fNcECKsITdpcGnaCSiS9lo75HMfwgu0RABE=;
        b=M1WWoQTzmO3HbUMr9L6GfathMejEVSRy4XjtlhC7B7s6ur/74JfNLTnwP0+RGkQisU
         WYo7cQHY93UXtBu3aXOfyIOy5adpZDrQ1n0zO74vXoNb5YuvOkAMY4EAqn4Pg34irY8K
         t5pQKT3mNl/3Yy/L+/nNuuTXS7aNwOr4rLaOJ5JXMsMs0z140fGvAZKtWa3u1TjYk5/C
         vrvlkuFstE/8bmXDrda5Y6fqeaNE84ln0sfsGKibODcjJQdPh4mEA8q8juQ5LrOlWfkV
         CpdPe8LCtTocaJXBThGyaKFesX1VZOJr7+RsfamfDInyBI1h4qj5YSwYs93m2cs5eySm
         iurQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793953656; x=1794558456;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+iPJJtX6fNcECKsITdpcGnaCSiS9lo75HMfwgu0RABE=;
        b=JnP0fEAQcdlw9hOGVOACwUwsiVidAxNQjlKC2Vg1hBnNoRZCrfpIB2DzsgQs4v1kiJ
         McRQYsV2PszEdsusog73DXK8y3/d2MCx88BAdKRaYsfbZiqJjmadWW5tS4008/K9VaQk
         SnvNncfg07C0wPIcsTbA6Dy0ldaAXRNxkOxcUwmrr7WQ5N78FxrpeP4r3FyTsZOA8TaN
         78EtP+zD7/G2NLF4oQE8rWl6Gnx/uV5Xfga7jghWHdn8idPbH5UjqOTfaGYTDygsolQA
         Nrdw3hjWBGN/XKyDMB4gm8WVwWRYUKvGxknYgIkVMPN/QGjxAALjW1QXr7K8II24QCSU
         3OXA==
X-Forwarded-Encrypted: i=1; AL+hErGxRU6/XHvUvFDquEurvjBjyZvf341vNqv0UDfWu6+lbpPR9Sv+ubM1cBlThX27lUfS8cegpSJc/pw=@lists.infradead.org
X-Gm-Message-State: APuU4Z/AWJUNmTC5U3aVTF8vttN3ov9MkCyCmBy/kKg7L/5SZH/swY0i
	Lx7xr+lZQ8kg3usOYwZL5zuVaMHS6UEkPsviDgAurZupNl0Z4PlqGjIA6n1rwLf30MjxoAXYKUI
	e4yMeXtsSoeLuidfEG3X4cXEY3NWPxPTPRmctCC8QZyNws92ubs1jpQ5ZnKMhBxRCLGVK
X-Gm-Gg: AYBFou1cXwj8r+XjezTa0HXvJ6bGYoy5OWx/vWOOnHXmRj+OpNlnUfox3//kodlr9CC
	BcfjjjFdNp4c1W1bkyDuXvCkw7CwrufZabb/Zq83oobYlQc1A9T0cnByxFZQm6lQG9F0o+DrZSp
	YmIYcEhT2MwqJ1SUMUhZLVs7S4ZoOqUfUzwTKqE8JN01BUerJoOkM3jUpo6xfh8JPlWVZ74iVUp
	hc4GywaEv8TRT9j8vGmKs5tf9Xt+4j91TV3corOiFcdStDR51r3ogBsYUuRpkFOR0y1geNPxGeX
	pDqTrX5t/UIhcpa4/ZQPZYYtOENCHY7WtnMcTLjMQ97C7EEWcM++vSW6jHERWLMxap8jFbgiBjJ
	MZMIbbG503ngJWqcLZ18j4P7IxUc2t1FvZgxsGaPiPKyCtgccbNoBvpRujFy8kqyCOIUDA5+ubq
	bSXg==
X-Received: by 2002:a17:90a:e703:b0:3a2:b16d:928b with SMTP id 98e67ed59e1d1-3b0db6d7122mr1639735a91.46.1793953656255;
        Fri, 06 Nov 2026 00:27:36 -0800 (PST)
X-Received: by 2002:a17:90a:e703:b0:3a2:b16d:928b with SMTP id 98e67ed59e1d1-3b0db6d7122mr1639726a91.46.1793953655847;
        Fri, 06 Nov 2026 00:27:35 -0800 (PST)
Received: from hu-taparana-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b0d7c42a72sm2433951a91.3.2026.11.06.00.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 00:27:35 -0800 (PST)
From: Tapas Rana <tapas.rana@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Esteban Urrutia <esteuwu@proton.me>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Faisal Hassan <faisal.hassan@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        prashanth.k@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, Tapas Rana <tapas.rana@oss.qualcomm.com>
Subject: [PATCH 2/3] phy: qcom: qmp-combo: Select LFPS detect only when SS link is confirmed present
Date: Fri,  6 Nov 2026 13:57:15 +0530
Message-ID: <20261106082716.128968-3-tapas.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: LiUNCPuSkGi2TReOdW_O09jco3Eydx_s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDAzMyBTYWx0ZWRfX4TJ9Ms7kF6GS
 L5HyqzZMse0f01mjOqBA1AGJ71MxMi58YBa/EIVpx30B2i1z1t0/ThOtFwdwOFVkzs26LzglFyA
 m1HU2RY4T+2BhD6kPOv7Tel1K5eNLgTw5601v8HoX2Zp+fYAhpJ2EMZKbW6ZGgoLfAlZH/JrpBp
 BE5DIEr2CqEFClFUlppb13pnI+hsJ6OrsWH3jo80P73RafV27as5Q0G3tPIqhRVHxXJ38ACdedP
 BZkSsffIoij5BsYumoJcZuh2QTNbq7coMECGTX7pQ/EaKtFvTRchogCHWWJ1z2Fx/ObKummOn2Z
 T0wcBeP1LPmM34rxHkMKEdCNUIGNgPFgDJbBVLd6RsNQ2Kn21OxEHAvknZSRqTXLEuPvu/BYUj2
 mBYwn5gKX+TVeiG48RH63ST/7epPCz6r8mL4pbdfVQTi3mplzada/QuNw/KEapEt/G08rSofyE2
 OXM1EPoaFzJqNPkqgdQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDAzMyBTYWx0ZWRfX8fqhqIxuY0i1
 e34D962pFIurNvIm9JL+H29YXb3c8GJ5aLqxBgaK+hghlYde41BO6SP1RgnjC6GNp63p02eBbSk
 mPeX3KIKpCmw4vbelNHnZOFclybFpgU=
X-Authority-Analysis: v=2.4 cv=WMzqzXsR c=1 sm=1 tr=0 ts=6aed8f78 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=0xIZqrDvkaguXChZBM0A:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: LiUNCPuSkGi2TReOdW_O09jco3Eydx_s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_02,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 bulkscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_002737_589777_E3509174 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

qmp_combo_enable_autonomous_mode() selects the autonomous-mode wake
interrupt mask by comparing qmp->phy_mode against
PHY_MODE_USB_HOST_SS/PHY_MODE_USB_DEVICE_SS. However, this driver's
set_mode() only ever stores PHY_MODE_USB_HOST or PHY_MODE_USB_DEVICE,
since dwc3 core and dwc3-qcom never pass the _SS variants. As a
result, the comparison is always false and the PHY always falls back
to the ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL mask instead of also
enabling ALFPS_DTCT_EN, regardless of whether a SuperSpeed device is
attached.

Store the qcom_usb_ss_state submode (added in the previous patch)
alongside phy_mode in qmp_combo_usb_set_mode(), and switch
qmp_combo_enable_autonomous_mode() on it instead of on phy_mode, so
LFPS detection is selected only when a SuperSpeed link is confirmed
present.

Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 27 ++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index aa9dc9716574..813a0955c591 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -27,6 +27,7 @@
 #include <drm/bridge/aux-bridge.h>
 
 #include <dt-bindings/phy/phy-qcom-qmp.h>
+#include <linux/phy/phy-qcom-qmp-usb-ss.h>
 
 #include "phy-qcom-qmp-common.h"
 
@@ -2630,6 +2631,7 @@ struct qmp_combo {
 
 	struct phy *usb_phy;
 	enum phy_mode phy_mode;
+	enum qcom_usb_ss_state  ss_state;
 	unsigned int usb_init_count;
 
 	struct phy *dp_phy;
@@ -4518,6 +4520,16 @@ static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submo
 
 	qmp->phy_mode = mode;
 
+	switch (submode) {
+	case QCOM_USB_SS_PRESENT:
+	case QCOM_USB_SS_ABSENT:
+		qmp->ss_state = submode;
+		break;
+	default:
+		qmp->ss_state = QCOM_USB_SS_UNKNOWN;
+		break;
+	}
+
 	return 0;
 }
 
@@ -4672,11 +4684,20 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	void __iomem *pcs_aon = qmp->pcs_aon;
 	u32 intr_mask;
 
-	if (qmp->phy_mode == PHY_MODE_USB_HOST_SS ||
-	    qmp->phy_mode == PHY_MODE_USB_DEVICE_SS)
+	/*
+	 * Use LFPS detection only when a SuperSpeed device is known to be
+	 * present. For absent or unknown state, use receiver detection.
+	 */
+	switch (qmp->ss_state) {
+	case QCOM_USB_SS_PRESENT:
 		intr_mask = ARCVR_DTCT_EN | ALFPS_DTCT_EN;
-	else
+		break;
+	case QCOM_USB_SS_ABSENT:
+	case QCOM_USB_SS_UNKNOWN:
+	default:
 		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
+		break;
+	}
 
 	/* Clear any pending interrupts status */
 	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR], IRQ_CLEAR);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
