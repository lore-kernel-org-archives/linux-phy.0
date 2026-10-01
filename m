Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76DA9CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viYh03/0aHL9rDiDfJLfaw8vAJNGq+APXwTE3sDdPcQ=; b=K4NpUiNDqHw+ij
	+ThM59mRI81S2xoYgORnrffK15VDPhj64DN2cEg6Gt5RZgdhY5RhQ5gz031FB6WHOghYfeRwSUXMM
	AKHrvmX5SBSXKO8jA+5cvZbzggoR85zD0EfCR0z3YL+QqxjMnf7Tep4mqMe1ozhuYwwjeyX6aWqS2
	kCvZPnnxDRF5HpHF56F8kczfZ0TKNLKEd1vNFXrMqspb5eSm6ya/aRTN6ejMOb/WZboa/G9SoSdiP
	0FGcWIwjzI4Q7O67Z2o2Rv9a8m+DZWWaFWzgu3uTSSAApU0v+GK7YHxgyFVEZH+W3T7vbW6o4zs8x
	T7CT65Le9CoB61l2FqJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCQ-00000008O1x-01pt;
	Thu, 01 Oct 2026 09:35:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCN-00000008O0o-2rq6
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:32 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xNRr1062181
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y8f8yCU90l7t/piDdPkjz04trstPE1azjFlo4hVkkoI=; b=Lok2HsC0+jaf/27K
	LKZRoiL0a6fNuOfpGoTVtIdqrHcyVtTt2CsgM/sM3jLA7XGStp+g1GWjYalbxWwu
	y4UpQQttTZv9nUSQuZCzPINCrYLDbYXdHAfDxcuL0TGK0S8siiPxbFBJnLiubkVk
	jgDvOYw8Kubf9ssr81yBaU3FEKhAEunPOTcsoqariKJqgC5iHpl4IxN9h9vWDjTN
	uRQfrVXb88LlMustQgZMUd6qKMhJSUDB257se33dEQVYnc3f1YwhQxFg+o7GMro1
	Xrf+ID8p9ebUktbxBx3DBR2kBSv53KHydQ8PMU5TQR9zCdJANbPSb4UPX3jtWrA6
	cK1NoA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h17mvu2my-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:31 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc7ce00b8c6so2058337a12.2
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847330; x=1791452130; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y8f8yCU90l7t/piDdPkjz04trstPE1azjFlo4hVkkoI=;
        b=Qjg8i/9R73fS5O6vov6/AtXl6FOFLp1StUxuRadVv9esrgM1EBf3ha+jCpkCCIYV73
         1jIb5MrTsytgXFGOcYNQZL7lFcaaksI8CC9IJPCpGs1ZZpBy+FceKTLJF+0defc6drwc
         J7QkF8QjI8m95298H6XQxeMWGWVyPTLWWBQn1hGqyY5VUykMwUZM63Vm/JjSyBKEB1ZB
         SWyLpoudpC1XCfNz37v772hKoDwsq9/wUpqjGLCn1BQGJPjvL9kYS/fdPE0vItYePvUK
         /b1mzeJ7Q3kQk0Qg6Fg547WF8mFhDapTqSo5o5muT71+txKTESB9p8YxdWnNRmnByLAf
         uweg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847330; x=1791452130;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y8f8yCU90l7t/piDdPkjz04trstPE1azjFlo4hVkkoI=;
        b=kDIYGOXt8Y2Ey/QOEFyvcPV3E3Zm41D2lZMwdXLQeT5Wr8KzhvwmClkTZhSwKQWsR1
         kL9DT2LVBGaGaco8h7jrsQlWuPQNl25D0wfTV3VWYfsoeCFTa3yZtPN4hR/jSLz8fQTo
         Nw0b+1l0mypeY4yQAPGjtgGnSpLmN9jeXDdGr/37L/hb0gWxAJIsvP/1QyGmJoa25FeH
         umq8h13BNRfz6KFPI+866JgCjZPe8kuARNamOJvJbdx6EmE38MIGs2gwkH+E1fT1HUGX
         JyRuxIsxzET1Q2ULJrigma3nFJvdLe3blNXNLjOexE4vXlf6P2lHY4LbAPKj+fy3tN1o
         VPJw==
X-Forwarded-Encrypted: i=1; AKwUvBzgfnDCwmBVqZ/C+l4DeJX+FY4Kxx5FpdT0y4t7epLdlTq63V9U/Dq+LwbU76Twj99wLdGssYqsdUI=@lists.infradead.org
X-Gm-Message-State: AFq9FYJxWd0wmL2SdJ+c970EQ8sIzP/Yr9cQIfXnpQaEXpeMpZUGUbxs
	zn0H/UMQtqYbPbk2LC/IB9bJFdXUKQ2Jo6X0OGbwne97eh/vsUi1wqvj2fyg4xxOnMY/r9B70h+
	SqGQv6P+aIxb4H4ADCjYQTQmroaszu7wj4GqLwja1LIZodTsWzVpliu2rs9zADW0+hG7FJTXFmh
	3v
X-Gm-Gg: AYBFou2ycNYFiDk7n/yMe0bGD7i3nzs2fa7rteoQ5WlXgvo8EfOXwLZL34j9lyo7w+x
	x8hbY9uKJdooUXgNtJeBpL/S2NoI3SE/lQYW6MgkXWwnpwLdsxClxBvjnxxxX1Ah1Hpf1XlaezD
	JNmH96ts+NXRWBA0F2x49zVbB3XAeUOMTyC+7ZW3k21kk9TcQzQh6nGoYPy+7huoqkq65sUubAF
	kfJIO0JcQOoVoZMDMOo8jxp1150LWVa6YJxPN0/b2Vr/tUCIaPWwIg1OcRSruAcHA+vxgO1IJuz
	3D4OLsHxDnDB2O6UJlW/L0AmWxc9Rrgekk/pT7Yv2XRR6kej9bjq987XkNS2Ss1EjUrfJmrf7f6
	5N1IJQx8m4ANPFozZulIjASe/Z1U=
X-Received: by 2002:a17:90b:4fc1:b0:39e:6795:f7da with SMTP id 98e67ed59e1d1-3a4d1500fefmr3281702a91.19.1790847330343;
        Thu, 01 Oct 2026 02:35:30 -0700 (PDT)
X-Received: by 2002:a17:90b:4fc1:b0:39e:6795:f7da with SMTP id 98e67ed59e1d1-3a4d1500fefmr3281683a91.19.1790847329831;
        Thu, 01 Oct 2026 02:35:29 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:29 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:24 +0530
Subject: [PATCH v5 07/11] phy: qualcomm: qmp-combo: Extract common DP PHY
 init sequence
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-7-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=5420;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=yr3dlsAXZBEwcWHv5UMdXOjFXKLB3Ml2ht//o7FmLJk=;
 b=NPdiyX02LIBvfwYBD7zEzQCA2oeI1sRGXERc/BW9ZZKS9uMJZ84n0xBGxzDzPrCFgbHUidxZf
 5kAkYpPHwj2C6cZ9tktAJdA/C4LNrxa8+NbJPCglY/x4Jg5Yj4VGtyw
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-ORIG-GUID: hZm7iO8Gzfv6U0htA4g1GO-G7h24ayBC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfXzDsrlDncvV2P
 cAnHhSTzB00wQ5JI2g9Oob9u9ea9EjZiI5GOdkHPK+tpoBtBhzNmR+ztDHwworCpY6I6CVVA9kB
 2istQfyMYlGnJy6us4Iq7twuBtzWT0YrvrL1k61We6LNqDehkREg3YvLDdKfIx+3ISrvT6gvf5z
 G4u0ENhOBKyZnECMFDc/MeOf2gW2DYThfo+0J7qHmNw1Cmx3UodU/HmhU5ZTVQHZyHaGTY4OQPY
 uDWaIEbXsjnvgRlUbvvkjlcLr+5nK5SpVCGZkNbzZvBGc3Kvw1aO32HFRrOJpt0yEJdEvV6Z7Uk
 csHQvy+/3iOttDbhsnzmw03DTa/riHz2QLoC0V4OAz+c+O4iUKlzKzFCqZtkUqarKKUbi4PqWCj
 ecGCrZTLTrOlE5IEqGwfLgZREEmKlJCaSW0BfK0gZ7RE+nhFrNvBO5GQkdt9OF4fI6sjgWW1R0k
 V7yjcvAm2VRQaOsancA==
X-Proofpoint-GUID: hZm7iO8Gzfv6U0htA4g1GO-G7h24ayBC
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX0WlTRvwLRPwa
 Zq4VNEUgXe3H6oSrFh80R6ZAnWUpuw3Jd0NMn7cAr7xd21FqwIICHla1v+Ioz9E4bnPkvJnkV9f
 3fEMMRm65HDnZxAiaIA35qwwgEuzvDQ=
X-Authority-Analysis: v=2.4 cv=KuvYSmWN c=1 sm=1 tr=0 ts=6abe2963 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=WQ39YxX6NF7xrdOXP0YA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023531_745687_6D2EFCBE 
X-CRM114-Status: GOOD (  15.60  )
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
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 99 ++++++++++++++++++-------------
 1 file changed, 59 insertions(+), 40 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5446b8333a1e..fc35da80e57f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3489,6 +3489,7 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v8_configure_dp_phy,
+
 	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V8,
 	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V8,
 	.dp_mode_ignore_reverse	= true,
@@ -3795,6 +3796,62 @@ static void qmp_v4_dp_aux_init(struct qmp_combo *qmp)
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
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_C_READY_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000);
+	if (ret)
+		return ret;
+
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000);
+	if (ret)
+		return ret;
+
+	ret = readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000);
+	return ret;
+}
+
 static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -3895,48 +3952,10 @@ static int qmp_v456_configure_dp_phy(struct qmp_combo *qmp)
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
@@ -4028,7 +4047,7 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
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
