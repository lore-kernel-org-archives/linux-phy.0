Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C6E3C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dFU0bRmLNVmro2j5oYpI2whkIWdZn6a8tH+r2iscIg=; b=VOYiTUFVGU3vG8
	xJmZyMRR0Q3kAY5+LneGa1dg1dNVqkY098J+6o17P9Kt349VdTs9hmy3rBqFinfyRWQ8vhWSUg2je
	zySE5rNIBVOZVTxeGXuJZZejFABdSresvexGOSk7xB42P6LqnScFXN/N43RaTpFYujPbajayIFBCK
	EprIRagL4W78rp3GWz/TePRUSWBFt3yKed7DctKJqp28sCh7QX7J7R0sUSrwGmDurILwvmNvnb7ol
	yRhc9yTX51lRlr5M6C372whgmgrwRvvvIafsKhMAV6OoTbaYh+YzwysznoyUduQx/BQe8VCHS3KWG
	rRMLs9v8BnMAN6TGdYag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOP-00000009Dbu-3Q8m;
	Tue, 08 Sep 2026 14:01:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wON-00000009DbL-1xuF
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:44 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688CkmQR3363871
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0H4ga+O28Y2C4Z6KR4aEEY2DdISay7CfVr4Z+WZcc+Y=; b=GJzmJyVUlpGL4jEx
	79gHXVFYV+K4kTu3PeXSfyP+qiToBAncj1eS8Wm6zldcuYKdH92L4iev1nue+LUZ
	dMKImHkoNcOZlqZ6uNye97J7T6DyabsAjh+aQSJreEqaoHZPn4OYMWy0NoSbm9yh
	zD99DFfcu6HGFTmKvBXtf+uEBs7kiF561PhmDbmf2+VlP6ET8Nr5toKzGu9ssQ2B
	jWXjSYJ+ADvFvkhCjARb9ilC65DMnIkApcGpBZeo0IpWJ8hvY1vOFMQxYJDOpNQK
	Mg+X08KeoDfegIXbDjnFkFLw11eqc18lK7/FaoSME26QwpM7ypkpAR0eUa/O33TJ
	3xb7xQ==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjcv7hw68-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:42 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-4566537e644so7141183fac.0
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876101; x=1789480901; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0H4ga+O28Y2C4Z6KR4aEEY2DdISay7CfVr4Z+WZcc+Y=;
        b=bvNZY+gN4i4uuqJIZld1tIRjZM1sGfoWGesLd0HeGHOGKYLAc+biYAhneGezQwLx0X
         L46rTtthTHp/UHcXUH17yNRwrwh4Z08632W19/jFQJ91MLGafsGRqkobrGT+1YhqlFpn
         pI11Fg+J50CeCY8tjaWHtQdFBzDx8YKTttQPa8p0hcjCfhuTJnuzvCucddFkJI7MnjSf
         Iy1i/JEIbfJvvdZHNtxqrPtpyd0R39T3tiNACGslApx/ku76FCHsOYHWBS02ZL/6qxFB
         BCdPvebSRKyiF9U4pElMG9y2asxfehFGZ6iA6RgJ4KJxe1RqqiuJbNDaMVl6nAx4Itpo
         RpTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876101; x=1789480901;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0H4ga+O28Y2C4Z6KR4aEEY2DdISay7CfVr4Z+WZcc+Y=;
        b=GzLuwyoxuSemWICRmCsUttLHOPVexHyzixOJtkLF5HDthkM21yL5USO1e7/BeMQyQp
         5vGDINpLSIeaUkp2eJKam2FwF3p1z5iGD9OF82k0DJhQWlCJh3T3Ht8BxcM2CoNKCA86
         SoXGCY27XuoW33MwPrc52/70HcvYo5cETEjMzmkJQDz62zuK7+b+ByMldKOVxfjUr9KO
         xeEexVrdfctPqWr4W5ttrA8P6rPVWHPZ7ehV7wtdS8sduhAIgo4xYanfdJMHyS7SmrkD
         LPcdbe59ZB3aB9WXkDV1M615tBFufM5DSCl6LvP6Ck8WewYGqszL4ZYpnq6bfw0pflo/
         EKaw==
X-Forwarded-Encrypted: i=1; AKwUvBxR/VlqX38k3h+9Q+51fT/fzg/63zyS7M3nGt0DKYAuxTa6ouHVCRCn8UZqdRNtJEn4D9rQ6WaiWNs=@lists.infradead.org
X-Gm-Message-State: AFuF++nrTD6QTth0r1uBx8mbwu/6ZpLvXzJQl8m25BskIyxGKMri+ANE
	50wu9/ANb6bcmwskwYGEFqJP1Co6Yk5LRTbT4senyQFNpJeJHyTouoAfP04khcozcQ0hW16/p5K
	6tbR4rC7sY8jwb2uvWf1/7U5I61Svjwin6aUMUknLqZ8EXfypn1Y2VyB0F8su1pv2lzaZ
X-Gm-Gg: AYBFou3DLZaREzImodr76wJ+uyYiTSy7lF2aERb05svRRdRlNMkuSuvtQRbYHRcM9sZ
	Q4pFwYwyIpFtIezeyRhWNSX8UDmGSWTZuERCg86qK1Ewbviz6VIM3eCoNbZPcsChN+pw6GgzG/F
	dYnhkYTPWfIABIRavMxByJFw7Y/Wwn6rVugN1m50C4gDgOFUrQbaG52jrec1sF2JaerVDSQP0mp
	qBecrOd7718dHGUXU7Nlnz98RsYNzd0/7R39r1f0o8I9oj/Zk7o5kjftvZ4lJJoKfE1QCzvqTgk
	mqe6g9baT2Szyw2Dhxxhs83AkZlX0eNo/VuNSVA8pUS58voy/7rsp5D5L+ki063nQZKWIVKwYY0
	EEoLWMe+J6/hY7SD6WqRqwqOuc24=
X-Received: by 2002:a05:6820:1888:b0:6b7:46fc:1cb with SMTP id 006d021491bc7-6b746fc0236mr13541419eaf.42.1788876100961;
        Tue, 08 Sep 2026 07:01:40 -0700 (PDT)
X-Received: by 2002:a05:6820:1888:b0:6b7:46fc:1cb with SMTP id 006d021491bc7-6b746fc0236mr13541350eaf.42.1788876100350;
        Tue, 08 Sep 2026 07:01:40 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:39 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:30:59 +0530
Subject: [PATCH v4 6/9] phy: qualcomm: qmp-combo: Extract common DP PHY
 init sequence
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-6-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
In-Reply-To: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=5351;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=/0W1HtyMzJZnHCI/4jyU/mPASbtzcORTNRg7Vqo80KY=;
 b=zI0zk9ihaXQ/NdfHEw/7YXRj3HXtc9jB7bjKbQ0PfjLjV8iQrUNtObadGAiTNVjZ3zNCbX49W
 ASK0mw1Ad67BPsH+iDUDSq4/KHc1X48cqx2FC2WCkqTD6aAUN9sInP8
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=CMEamxrD c=1 sm=1 tr=0 ts=6aa01546 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=WQ39YxX6NF7xrdOXP0YA:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX63i/rZQxqxnQ
 w73SY75HM0V8r3WWuhGTFHe6IaHh6r5rfSAAaMaf9yMN0V0OZaNwjJCyv16CyLCp/2tCcPunDKf
 5jwKiH3I925NWyE6HOO/iBE1r+nGRDI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX2Llbvs+UscgJ
 PPxxGZlPfFRM5xh2pv4v6QIr56k6hjrInpLWAUWgczxYPhqCUDuYKSidEb1r1NseEzU+k2ay1d2
 8U/LwvXWLC0Aky9Vpc6nWRd0WZtVgExBW2Pi6+OTmhNMaLK65Y4xx9sbZL1O1yMVGyHnN/3hXj5
 M1i5UZoYsZtcwPbXn3ef/Wcg69qYERuXTKWFIdWfGDTtDjdU5br6h5oLeiWRhPM1/2SQzjE4unX
 SfWLxOb3FQN8belZMDVu/S1ZHYhlFg3YGyfzBaEVZjCdRsezZeyFkKmWCygzDBFgpwBbd91g4XQ
 3jAtNoGV6PrcYRGsUkVbcKZbuZBzP1MQFSrjpdNh17tki/vcjA+brD4/GZXQfzTaRVsKhPIehec
 jev9oYGturGXgOptw6vAPMiLgB6aODnS09mXvuBKFgzHTGX5hwCepkBU+YMwHB6pEa9D+umR5ur
 2/pfATuuGZK0TRfUz3Q==
X-Proofpoint-ORIG-GUID: 7ZrewWIZPjME7Xa6WIEoqFdyBy4e8dlh
X-Proofpoint-GUID: 7ZrewWIZPjME7Xa6WIEoqFdyBy4e8dlh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070143_638214_A751975E 
X-CRM114-Status: GOOD (  15.91  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Extract the common DP PHY initialization sequence shared between
qmp_v456_configure_dp_phy() and qmp_v8_configure_dp_phy() into a new
qmp_combo_configure_dp_phy_common() function.

The common sequence covers:
- Validation that dp_aux_cfg2 is configured for the platform
- Writing dp_phy_cfg1 and dp_aux_cfg2 hardware-specific register values
- Calling configure_dp_mode() for TypeC lane orientation
- Programming AUX_CFG1, TX lane control registers
- Invoking configure_dp_clocks() callback
- PHY_CFG reset/enable sequence
- Polling COM_C_READY_STATUS and COM_CMN_STATUS for PLL lock

Refactor qmp_v456_configure_dp_phy() to call the common function,
removing the duplicated initialization code. Update
qmp_v8_configure_dp_phy() to call qmp_combo_configure_dp_phy_common()
directly instead of going through qmp_v456_configure_dp_phy().

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 99 ++++++++++++++++++-------------
 1 file changed, 59 insertions(+), 40 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 0ec382aebe2b..79006469f3d4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3459,6 +3459,7 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v8_configure_dp_phy,
+
 	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V8,
 	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V8,
 	.dp_mode_ignore_reverse	= true,
@@ -3766,6 +3767,62 @@ static void qmp_v4_dp_aux_init(struct qmp_combo *qmp)
 	       qmp->dp_dp_phy + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
 }
 
+static int qmp_combo_configure_dp_phy_common(struct qmp_combo *qmp)
+{
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	u32 status;
+	int ret;
+
+	if (!cfg->dp_aux_cfg2) {
+		dev_err(qmp->dev, "DP AUX CFG2 value not configured\n");
+		return -EINVAL;
+	}
+
+	writel(cfg->dp_phy_cfg1, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
+
+	qmp_combo_configure_dp_mode(qmp);
+
+	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
+	writel(cfg->dp_aux_cfg2, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
+
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
+
+	ret = qmp->cfg->configure_dp_clocks(qmp);
+	if (ret)
+		return ret;
+
+	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+
+	writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
+
+	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
 static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -3866,48 +3923,10 @@ static int qmp_v456_configure_dp_phy(struct qmp_combo *qmp)
 	u32 status;
 	int ret;
 
-	writel(0x0f, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG_1);
-
-	qmp_combo_configure_dp_mode(qmp);
-
-	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
-	writel(0xa4, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
-
-	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
-	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
-
-	ret = qmp->cfg->configure_dp_clocks(qmp);
+	ret = qmp_combo_configure_dp_phy_common(qmp);
 	if (ret)
 		return ret;
 
-	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-
-	writel(0x20, qmp->dp_serdes + cfg->regs[QPHY_COM_RESETSM_CNTRL]);
-
-	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
-			status,
-			((status & BIT(0)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
-	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
-			status,
-			((status & BIT(1)) > 0),
-			500,
-			10000))
-		return -ETIMEDOUT;
-
 	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 
 	if (readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
@@ -3999,7 +4018,7 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
 	u32 status;
 	int ret;
 
-	ret = qmp_v456_configure_dp_phy(qmp);
+	ret = qmp_combo_configure_dp_phy_common(qmp);
 	if (ret < 0)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
