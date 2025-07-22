Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B376AC83F34
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c48VRm/S9frs5OBy+QaC4sz+bqiz2rvQQyDZwlNhzRQ=; b=CToLQ1fhsFDNHt
	n2lJlhXqrLfBsuKzWLvo7O7On2C81qzCb/7bUlTWJM6d0JLhRSMwdYQKlqU6KYAY6/KqBKpPqPz/9
	c6ILfs6kWt57xHLyfh1fO559UnZfjyP0APZJY2UIYtC+hni0cyTXSyyV8jd5HBEwd2R+l3UJk/Tdy
	8EK66cbrNyEG3dNiMHGYebHieCgpZcb+RjH8P9vgCVwD6CmugowZZQ648sZ3D/WUUDCEM3v3+Cn9n
	9FnuvW8UJ752PausieP3/COfhQQbdJ6emVzGdyowU2v3Jfx+dzIFrFezChfs6Lam0vSFoLThFdM9V
	6zZ3ULbxM2MIQbbvFnEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Lj-00000001ch2-0X3q;
	Tue, 22 Jul 2025 07:23:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7La-00000001cXA-3kRp
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:23:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M4SqRH001048
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SRoknLhESGJkp/W59IYd/1yIvuO8rKzibCESNkSnMiA=; b=cBt+M+UIJuLQzsUe
	WWeUa0SdQ6edqvThTF2bTw/Wu+iMg3JtCyK29PyhTe/DP7aeq/IIpbOwmleTHBBL
	c4bAwVXhZ23icfbCpFeqVmDRRHZ5oTUuE+Q8Z3WRi3BhZFjI+9t/mHao5p7Utp2t
	CR06uTWPKapPTfLAbLKTsIOLxWbGmZX1foQAgVYgRA7aGimYPnXiI7qXYomGPhut
	BYbLL3C5f4rlfK4a76Z5L71bn/yuldDJ+e3YQFZ9tK7Isv1L/ekoujcZxk26Nx6a
	6pOVw008CXEatIHEknT25levLSKz7JzqeKKPOECWxD9r5IulLAKR3ykKPmz+OMoF
	Cf6wbg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48044dgch1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:33 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3130b8246c8so1569608a91.3
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:23:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753169013; x=1753773813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SRoknLhESGJkp/W59IYd/1yIvuO8rKzibCESNkSnMiA=;
        b=ns0SaImSkWtOBIfRHVDFvC9SFlDTYgGEQ6pXmJ91yeXAx7gL+daQSbZhJ0UEN+xp9c
         Bzz/bAgsaYQYqIYlP7OEfsXI9PdHS0RmcgfnTRqwpOYTZez0OnHvdaj4sTWRx5IKblE0
         FEzEOcVokF5Xt0pQYvRUBTc/KatsDrLCXWnKFCY5lzLrR/EF4pHLav8pJLwkVmWbYowr
         scZljiVS8TeL1E2HZ++FrE1rlUnJ32yt9oaA6Q/qJP3+6VflN2GiKMhTSl8eWBUyxmQD
         hk5xyi7yn6u2Rk3f41LwiAMFQ3FlfpbAwieG6SmtaI6iCj58Tf/UXrPvqnvcDeBLLNxA
         z3iw==
X-Forwarded-Encrypted: i=1; AJvYcCUVoJImz7y42v7hRZKl09PRiyPFluBBPk5O+T8Ds4/KcOY2fdfZ+KXEyiIkri4AhvCQANXIlMD4bzU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTFLUtvfFmuWDV2Dv137QjR/6PNrF1S7EaAQlDyCz/yMrCqOaI
	MPupb/IQdFovKZrGhR+Gi8i9f4Sr1btIJqww0i4Ecyd+/va8xgUAPvxcc6Ur2Mb4aNbBf9YjX4H
	dhZrp/41WsGDA21XKTyhvfr+4LEy6qhDtNS6ZwwYM15RViJM1TX/HDDs1SPlE6YfjXSot
X-Gm-Gg: ASbGncvbll1dmTHWyF2j4wg5vPoCa9qLOxtrn8WUFNjnh13MjGtRE9vksZ371O5KMYh
	IMytlRpZdQPdAe+sXZ2OmBDLDIY/w1kCrH/ZQzbdNzQz5/KifB6Xr+w5Q6n+7LGC8z+It5N2A+z
	Lj32DOOzlRHLYpCmDjvgMqOSVEi3SIvj8RlOKOzZXJ93hkbURMRvjiagOShvPmMHzfud1wB4kAN
	XgC3QRkaLtaO1R+wZ1ftguEkGBTdUH6KWjwld19aG3idT6iTfKfQW0JbmSJ3h64IOa3RiD6fx0X
	BGFY084lidvFOsGz1qzRlI6G+vvtBBa3HxDHylEDCCWqZ9+v8JNfm6Y85nZx79TPVgiW8YuC7kU
	9EiH4DRfcOTDpDpS93tyDF1k1gpWJoiyrPq5XDI4p5fq/1PtAgmw6FVNm
X-Received: by 2002:a17:90b:518d:b0:312:ec:411a with SMTP id 98e67ed59e1d1-31c9e76ae7amr13793081a91.3.1753169012525;
        Tue, 22 Jul 2025 00:23:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFko6zdDLS9yGWBWKIKCenAy/9fb0yFHvW+++dTlsCyxV/jrbgXYH4ktmzFN6HzFm/3zlSHSw==
X-Received: by 2002:a17:90b:518d:b0:312:ec:411a with SMTP id 98e67ed59e1d1-31c9e76ae7amr13793061a91.3.1753169012023;
        Tue, 22 Jul 2025 00:23:32 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:23:31 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:11 +0800
Subject: [PATCH v2 10/13] phy: qcom: qmp-usbc: Track PHYs for standalone
 DP/USB3.0 handling
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-10-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168938; l=4083;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=x52wj5u+rb6dbB9m5Z9EVaM2Qq3LqnWRHa5RdOZnzXM=;
 b=htKC4pfBN+sR8v9mfOnbuVOX4GlHHUEvwakJuhy6tTezZjlR8N3uaHroW6IAc7yy0WQJgl5V7
 Q7hKjifp+bVBs2A+gPwSVkicyslpzb5ZWiQa7F77q4VpAWJJKTjDhlO
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=BJ6zrEQG c=1 sm=1 tr=0 ts=687f3c75 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=vLThFRzmIc36aVVRt4AA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: Zbwtn0a1kwI1it-HpoWsUOIJEGDVwUPQ
X-Proofpoint-ORIG-GUID: Zbwtn0a1kwI1it-HpoWsUOIJEGDVwUPQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfX3bil19mVJZ8r
 R1mMJXwVqIvIuC2VjTYYEhOnNxqpA5YayTLAYOyYTic9B48gSWiVnwwDF/+NrIwUxOOqmWIEjxN
 zHMyDVkGuTESuMSo7X0OcfYmKCSgRk7uETh84n4glHredxUN0D0MGYD89101/64fxeyL+/frDYt
 +hUoyrHL0jNJSZqy/AK4l/9nOblZWhldR+HsGr62eLKg6LKDSrxpfS8oWZRspTUg/S5CHhw3qf7
 RdemW8AkpcLvVbHLWyQJm7no0UrCoNgw0uGQQi6o+3XBENRQELH7Q7CLKyvrIWoeE3Ln+ls2WcT
 PeNjTLSbuLBH+1by+5BZM3vloUTfPqlMda6kjrnG+4sGPV9+JTvIzKnEaBZ6cu/tipr9wAYLA2L
 YmkqbMsOUVfMF66cv8ivdCw/bXW/1sd4QUMRwam44afoQATgDeFslSrdvLHhY5c3w2Rj0p+5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=999 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 mlxscore=0 malwarescore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002335_054365_0F1F1E27 
X-CRM114-Status: GOOD (  21.42  )
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

Introduce a local list to track registered PHY instances, enabling
identification of standalone DP and USB3.0 PHYs that share the same TCSR
region.

This allows the driver to detect and manage mutually exclusive PHYs at
runtime, preventing configuration conflicts when both PHYs are present
on the same platform but operate independently.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 51 ++++++++++++++++++++++++++++++--
 1 file changed, 48 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 6291298904de9717283e59f1ca2a845b46146d52..e97a206a10554b2d157d1fadd66d66386eec6c40 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -514,8 +514,13 @@ struct qmp_usbc {
 	u32 dp_phy_mode_reg;
 
 	struct typec_switch_dev *sw;
+
+	struct list_head list;
 };
 
+static LIST_HEAD(phy_list);
+static DEFINE_MUTEX(phy_list_mutex);
+
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
 {
 	u32 reg;
@@ -1107,6 +1112,25 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qmp_check_mutex_phy(struct qmp_usbc *qmp)
+{
+	struct qmp_usbc *mutex_qmp = NULL;
+
+	mutex_lock(&phy_list_mutex);
+	list_for_each_entry(mutex_qmp, &phy_list, list) {
+		if (qmp->type != mutex_qmp->type &&
+		    mutex_qmp->dp_phy_mode_reg == qmp->dp_phy_mode_reg &&
+		    mutex_qmp->init_count > 0) {
+			dev_info(qmp->dev, "Mutex phy busy!\n");
+			mutex_unlock(&phy_list_mutex);
+			return -EBUSY;
+		}
+	}
+	mutex_unlock(&phy_list_mutex);
+
+	return 0;
+}
+
 static int qmp_usbc_usb_enable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
@@ -1114,6 +1138,10 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_check_mutex_phy(qmp);
+	if (ret)
+		goto out_unlock;
+
 	ret = qmp_usbc_generic_init(phy);
 	if (ret)
 		goto out_unlock;
@@ -1166,6 +1194,10 @@ static int qmp_usbc_dp_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
+	ret = qmp_check_mutex_phy(qmp);
+	if (ret)
+		goto dp_init_unlock;
+
 	ret = qmp_usbc_generic_init(phy);
 	if (ret) {
 		dev_err(qmp->dev, "type(%d) com_init fail\n", qmp->type);
@@ -1772,15 +1804,16 @@ static int qmp_usbc_parse_usb_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+static int qmp_usbc_parse_usb_tcsr(struct qmp_usbc *qmp)
 {
 	struct of_phandle_args tcsr_args;
 	struct device *dev = qmp->dev;
 	int ret;
 
-	/*  for backwards compatibility ignore if there is no property */
+	/*  for backwards compatibility ignore if there is 1 or no property */
 	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
 					       &tcsr_args);
+
 	if (ret == -ENOENT)
 		return 0;
 	else if (ret < 0)
@@ -1793,6 +1826,13 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
 
 	qmp->vls_clamp_reg = tcsr_args.args[0];
 
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 1,
+					       &tcsr_args);
+	if (ret == -ENOENT)
+		return 0;
+
+	qmp->dp_phy_mode_reg = tcsr_args.args[0];
+
 	return 0;
 }
 
@@ -2051,6 +2091,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	mutex_init(&qmp->phy_mutex);
+	INIT_LIST_HEAD(&qmp->list);
 
 	qmp->type = data_cfg->type;
 	qmp->cfg = data_cfg->cfg;
@@ -2064,7 +2105,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 		if (!qmp->layout)
 			return -ENOMEM;
 
-		ret = qmp_usbc_parse_vls_clamp(qmp);
+		ret = qmp_usbc_parse_usb_tcsr(qmp);
 		if (ret)
 			return ret;
 
@@ -2139,6 +2180,10 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 		}
 	}
 
+	mutex_lock(&phy_list_mutex);
+	list_add_tail(&qmp->list, &phy_list);
+	mutex_unlock(&phy_list_mutex);
+
 	phy_set_drvdata(qmp->phy, qmp);
 
 	of_node_put(np);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
