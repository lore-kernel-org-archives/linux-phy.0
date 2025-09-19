Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8409CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6ahZmyOr1YCSNk8v8dOpCY6VbfDsvdlBeCz8SKt0Bo=; b=vDquTAA1uezlw8
	gRe5+L7YepSHOGd2H6rRQcOmRDivLZ50Tvr37hQLiL0ZCEl2Jf67F5l8V8FRtNi5TAdhSShmcK9cI
	+UIjZWjPsc45f/38W1E2BhvS8yDonMtbNq0T0v4wtbZ4idu08jxb1LvcagJdXyDPVqAmMH7sJ9RW2
	Mieh9lytoDaSr8ctOxxHQ6AzW9KnBE3068v/2EkPCvIdVHdB2d+gu4pJyH7haeaXAxDY2afYAPR9Z
	lbSSNKyiZ/+ly/sdxhl1uTnWUn51uRDaQ9bQiNZsgz9p7VkVRRblQa6NfoRI++9pg4M8/UF0TJ58f
	QyPGkYJXR3hDDk22f9NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3o-000000038Lh-2eKK;
	Fri, 19 Sep 2025 14:26:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3m-000000038KV-1xoJ
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:26:03 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JCsUJR030577
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vZiouIkqwuEXWY6n8RmAMyZHUHfsJ1HpkFbjJVrd10Q=; b=frgj73cC8TTtvavt
	Wd3nBUlV0Gq9luP56eV27Meg9OMzrCWhXp3RTOSTbtL6LEuGvSqKaYDMCfah0fBi
	VhrW0kK2VCTYjUqqXfEMNONFSf6WR40CsEIipqZDFCF/MCjo/T1/8jOdLv1c0KjH
	CKBrSMUUaNffcdhqMdMATlNQzz7r9lAkzuD0ZLqpNvTrJEzJTjZrVGpMuQ+FT4n4
	j+wqZyy403Msy7Os+QjIOzcAw995kF28E5wZETCqqZ3JVNtU8IaLr5wix8kkbkRI
	fflsEFMOLK3AVpliAXkzrvoVi6XPOPXqOB0xUuOQZI3I/6NnifO/yNaOzRvqATMh
	Gu502g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49916x1j36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:26:02 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-26b3e727467so2156885ad.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:26:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291961; x=1758896761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vZiouIkqwuEXWY6n8RmAMyZHUHfsJ1HpkFbjJVrd10Q=;
        b=rJHRtvtoU3nsX2tTimAksS0ud9eFNB/WOAUbRb3nw8Iv4AnpK7tyRQvCDYnhyCzcJZ
         aTtW6e3+WNJKzegeUsJ5wOOefPt7cRO3G5RYmfmaNoog2KL9RTxlyadslV5nSsqFk/eH
         OXQkRMNVWcBMOruHh/KrLTZuuLMXGbPMkhspvbExah9/RTt68yFH2r4Q8ZFkvbGlnar/
         XjulBWcb+pO9PcWlAxGdUBqjnTVg/3NKp7bsNt5LbGlsnu7NkPHwdY0HttxxkdwvI0iZ
         wQ24jdVSwruMWOhSqDQcoFmKHJJ78a9/TzzxCZ1/DvXvpm042KfBf0s4YpGiHPm0VUdc
         V0QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUglWhjSO4rt7H0Btkdx3NZzAYZsZaZ7cQxFg1e4MqkOzQsdyFzqXXY+Bznm2nIX1+PA41wB+dRitc=@lists.infradead.org
X-Gm-Message-State: AOJu0YynsoLd+JIZo4NH6haPBDkV2Zt3GOFrjBwYV1GQMY1gfXFrkclk
	iYWfq3QWWiWzr+VXlFISc9WZimULtEJsPvBbj4S67yZSGbuXGhrYt8nWH64O0bK4dkryM+AVJpE
	hIqaVUVY6wDIW01AQiRKsiP7PSdkL88FXVM+N/aZQ6V5ds/TzVVZttd5r2Gl8rUqeAAYm
X-Gm-Gg: ASbGncuImE8OKifZwNmWreL7agREQPnlYIKsyAKBFl6SvIMKl0oCnCog/n3dvIDbZ/s
	Ys1jE9EguMxzmKdiiAL565qFiG2HSI4vJyswHMoBDk6UR+5EvrFBPYhpQh8J5NagwdH/5FKE5kE
	csirzlakc2lV4cbskoV5cbcP2pucf0gN0ALq6rhSv5+QULvesRM5ijLWyQR/2asPGMc7DxDhKfc
	i/z4smQRZaKEroxhPc3iK0sDEPPC9mlxJD/1VS+SiXOEnE/girlBPgfCIuwloCKCrJr/yL+SCOH
	TgkDjv2cAx0XeaOXtgRpM4Vp5/KwCqWnTcy4MscJ/hahnphHKvsfow2Zfu7hcyH7jOceZav7Tgp
	55cHdzSJGjEvhTw==
X-Received: by 2002:a17:903:1cc:b0:253:a668:b638 with SMTP id d9443c01a7336-269ba40ac13mr27964385ad.2.1758291961029;
        Fri, 19 Sep 2025 07:26:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGW/WGzLDodG98wkkzW1+1CcHHUv5fJVGPnsFeMb4qTDtiiEpVeyW35NkEbhYoWwReS8eZH+Q==
X-Received: by 2002:a17:903:1cc:b0:253:a668:b638 with SMTP id d9443c01a7336-269ba40ac13mr27964085ad.2.1758291960575;
        Fri, 19 Sep 2025 07:26:00 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:26:00 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:25 +0800
Subject: [PATCH v5 08/14] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
MIME-Version: 1.0
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-8-eae6681f4002@oss.qualcomm.com>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291894; l=2759;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=zQm7xoATNcQDtX7SbZxZLRT+sVir+FtQeIRb1OzNIbI=;
 b=EwyQaS9J5/X0EbdYFn5jwxIbQpOofUaOCkwUg+4xDM9/U/lcsRns9MK9JmlDfzU6LUq1gRmQp
 n87WsJ0jOHcAcGcwXxm927IBd8ngExNLZP6+/NEiEDHieVyW7NStZ8V
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE5MDA0OCBTYWx0ZWRfX9YJKk/GWbRSi
 GFmhLIun+WKRfM5/230GmVsi6fjbngCTQIcry8Rzr6ngY5rtneTjPrrrdDcPxoRFwsb8RnWI7UG
 7OfljlxR0di/zrGchGPojiAaZaThCjJo0Sk52hDEcPdLjBUmNrVzcY7s9iiemPxC/knpp2B0ysY
 0vbgI3bZ5n8I2/1qudLpLlY3oD0C3i8vuH3M4BDrwmZh34gl6VXx6loUEA1C5XOrfVm5WwdzQbZ
 vLy4LO0JEq82Ng6F/Uf6RBVevCUKfk1er+KqeoM2YUufzWsN9DusxIayqg9cT3xznmpWaxIA/t6
 /ioK/qgtwpVYoG0owvZ0z2st072W8iyBAdug2XRLjg03wawo+pM9iYz0kUGAPQNy4uJmBovZSQF
 UfrTS5+x
X-Proofpoint-GUID: rZxjmOlTPgddoUQvP22ElHwMPs6ew7oU
X-Authority-Analysis: v=2.4 cv=LcM86ifi c=1 sm=1 tr=0 ts=68cd67fa cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JdgWeW5AdtZ5oeTK9qIA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: rZxjmOlTPgddoUQvP22ElHwMPs6ew7oU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 spamscore=0 impostorscore=0
 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509190048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072602_519598_D56D0F78 
X-CRM114-Status: GOOD (  18.59  )
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

Extend TCSR parsing to read optional dp_phy_mode_reg and add
qmp_usbc_set_phy_mode() to switch between USB and DP modes when
supported.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index d570ce486aee8e8a3cf3f7bb312a00bc1cd03d82..cb0197538befa6e7a5408c8d2d45225aa9520e8b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -533,6 +533,12 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
+static void qmp_usbc_set_phy_mode(struct qmp_usbc *qmp, bool is_dp)
+{
+	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
+		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, is_dp);
+}
+
 static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
@@ -673,6 +679,8 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 	if (ret)
 		goto out_unlock;
 
+	qmp_usbc_set_phy_mode(qmp, false);
+
 	ret = qmp_usbc_usb_power_on(phy);
 	if (ret) {
 		qmp_usbc_com_exit(phy);
@@ -1117,6 +1125,7 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 		qmp_usbc_com_exit(qmp->usb_phy);
 
 		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_set_phy_mode(qmp, false);
 		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
@@ -1267,15 +1276,16 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
 {
 	struct of_phandle_args tcsr_args;
 	struct device *dev = qmp->dev;
-	int ret;
+	int ret, args_count;
 
-	/*  for backwards compatibility ignore if there is no property */
-	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
-					       &tcsr_args);
+	args_count = of_property_count_u32_elems(dev->of_node, "qcom,tcsr-reg");
+	args_count = args_count - 1;
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg",
+					       args_count, 0, &tcsr_args);
 	if (ret == -ENOENT)
 		return 0;
 	else if (ret < 0)
@@ -1288,6 +1298,9 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
 
 	qmp->vls_clamp_reg = tcsr_args.args[0];
 
+	if (args_count > 1)
+		qmp->dp_phy_mode_reg = tcsr_args.args[1];
+
 	return 0;
 }
 
@@ -1323,7 +1336,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_usbc_parse_vls_clamp(qmp);
+	ret = qmp_usbc_parse_tcsr(qmp);
 	if (ret)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
