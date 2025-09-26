Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F038CAC5B8
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFPOgkLHSKe3QruWrNujnNDORwzLzt4BiMPGLaIAi38=; b=NbCkfZWXtkzSWU
	9U8siFWGyq93QAs6SPkzD9soYCkNUyRgKojZuKOSxhiaG2kITe2jAenqKlFcsqKV5+oGTZC6ElNJ9
	o/3ktbjGii8xtbfF9wl51EqDnO7ZYfcBrz+ZgynwxyiIVzE7dELbRFT5yvLaK+loS+xMwJvewI5/A
	Mkgqao1qYvD5OJrSPhqntsOiwaeAdawgp9nNtc5ORc4yEacXdCWOFiv9kZdCuv7oaZ2Nf+uO+4qsW
	+HGR3INjqN3km02bsK95Y0yiu9YXrYkJf6nrYZ1r77Gmqnl0bm7sPifZRSk5GUmDt2aJFPJMsUo8K
	MCj1PrdeNnjekPYS5bwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22rC-0000000GlQO-1MT3;
	Fri, 26 Sep 2025 07:27:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22rA-0000000GlMd-0IDj
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:27:05 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q77c1r026601
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:27:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IxgE0hKaY239kxGeqZ+8x/JCG89cRYkF0bkaQ2dVCzM=; b=RPr50GtYbu331Fr7
	6uqZL8bF1SLiEM8h0rMRK7Udfa0FjSNLHTAH536sn9KLs5OZwRYgoA0+MYVxfnIb
	+DtCXyrAdMytGHio40wjlWUA8g7rOC2uLsbGJt8mUilxcve6RT9HIuv8VdTfDLeF
	fekZsobX+NLsC9IJcHUXF1uLM862eOqTFNCkq3JNeY3jIx3F+hNNo/VSxGXyhoHI
	6qxyyi/3fl2UpMVBoOGpUALAZRzpmq6teE84eJf9tu/yUQsggNgUqncj9GzMOUiI
	zkxys/hj4LXHOmzzIU7u9jvRbvo8vtKss+g9ejNzRuuNKMTDj8yWksKirSWmTmrU
	CaunvQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u1vrn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:27:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3309eab0740so498973a91.0
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:27:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871622; x=1759476422;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IxgE0hKaY239kxGeqZ+8x/JCG89cRYkF0bkaQ2dVCzM=;
        b=TGeArxYM7O9T+yUAKryVBlJqhYvqQPIgeIenyd4GiNF9WOLiZMx7cS4gHEFa6iOC7F
         zXV5yMdT4sAkL5zQr2+/xuXsSg7Lj5jXWcsxDMZo6sSl7Ydvq4QQIhFXyaZmoYZXOK1G
         UNlxmiOBZgxax2KWkYitTQZbWEmydd8GShNk8jEoCBLVQJaEZVkmnEWzceqngKCc8HnW
         KqvkZJyu2o2Sod9GKe9r6UhdywUJX+4eU5HVpfl0+r8ja4inOXlzByJDgvQX8eDOYUP/
         1BN+zVtNlQBWsl4NSD8YQjBi+m1ni0vapNeufHPnjLGsy7kDWG/SmDJEVvTVhz0JBNe/
         +t4A==
X-Forwarded-Encrypted: i=1; AJvYcCVab+QbztOXFBzdwx8EHQIo3TRQGpRVLhCa+PzoLggmZOgC9zaOk3o4PKqw3ZnOutLgTmVf3QQ6IBk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+eVqks12Y1YJlVQDqRhnsiNNHot5OIvSxUouyK1pjNbiEi1cz
	z8TgYLjh+h/VlJTftOZGcgUze9YpTj8SrlqgrM4q9EZ2RwfG/9LgKyqs/lP+/vHm/Zo/nqnDICn
	KIgb1xuCHlflfOIcawW2CcFFxxoRzfw0XWrVizm01k4/ct/6v3Rbx6PIY1iR2w5OiB3Q0
X-Gm-Gg: ASbGncv/HFtaG3dWY3x82+5OteNb6IkU7H1vgPToT9OEM0js7i2S1N9tn53I9znC4fF
	nSPUkKM80esZKd0UBXQ63V7qoTawiP3PXmHoJQg9UCmriDX6qB2RH6FqdLkuW91PA2YadXgjXO4
	nGeziffkhflLOacAbIDAdbJ2UhNDw0bm984m8uhIiQnblWDnHtY3XkZR9Oi7bOTqP0rMLM56Mit
	LcVfZjVo2pmQSoG4Fixlc8J8rtG9vap1KvP78XGJJ4+yaHth2vJi/ewP/Sf/lIjwe2Z72i3RNHj
	+WNTwu+28eSy0bNsKaWVt7/CRyPYSfkeKjdI8GdlCihXtoWVm3cGsWvIfIchza1+fsjqcPeMVjS
	VrgAQLk6YXeEDQ0tTAjMWdCHkNvv3oMvjSztp7ODhlzFcPBTue4AdpVET
X-Received: by 2002:a17:902:ec85:b0:272:f27d:33bd with SMTP id d9443c01a7336-27ed44d5f06mr43818185ad.0.1758871621607;
        Fri, 26 Sep 2025 00:27:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELcGDRUyHhDjRuK+sfwMHvaCkFijxaFU/1OQEc5tsi7wGyfqnm7Rd7vXgkx97Obwa2yIJ71Q==
X-Received: by 2002:a17:902:ec85:b0:272:f27d:33bd with SMTP id d9443c01a7336-27ed44d5f06mr43817965ad.0.1758871621114;
        Fri, 26 Sep 2025 00:27:01 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:27:00 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:43 +0800
Subject: [PATCH v7 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
MIME-Version: 1.0
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-7-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871563; l=2424;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=2OW0hX9TF4LQlObLysgxoFrzLXkqUgu/cavYoT3SHP8=;
 b=o+EwyMZL/K98MOCjTKEANPF15zjybJyWzaygL2LdekPrK23Nbpo2cRjW2t65GTczfpyFcNO1A
 Kq6j6hcnQLdCpTI5xm9JEDlxg1/Xuwp+qm75/ijFHpz6J4XrHFoaCPB
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: bw2FMX_dSCrB9cXw4h_-qT9w3QaJB_DO
X-Proofpoint-GUID: bw2FMX_dSCrB9cXw4h_-qT9w3QaJB_DO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX6Ez7cB1EtbZS
 tRalSPmTFrq2ZKkCdC5ciiWCLASMXhf75TLJ6kA4Ia/GrUwuLbWGpiM/1UdR06Ub82NjzNp1O7F
 e27caRZN81S2XWvVs9XfiIu0e7AenkrCuKhwDm/IzErxfC/LeWl/gCrdRlbHeE7J0Qdu7Gtekw/
 Zb7mwJoswdfioL0fbkhkEiSUOhtEpmifdCjMgNdm4fy6LWc0y3rjXMAiH3R9UpkE/BK8tE5pwsr
 PeKD6Z/J2gCGZ5brDxSwXy2KsaqEiFHf28LAO1C1WsMlGYDowDG1fcwDSBqEXiVxzvzbsH+BsU1
 wfTwIKSjJ7atDZOYduxUz1sdlr+1z1uf6I9kX5aEeHOS2+NiyIhZgqH0KFC0IveSssAZ9XYNm4v
 s/dQya8jLlH6sdO5g4LVscAHfehSow==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d64047 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JIg05Gv9We-wtn8mShgA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_002704_229828_B24476BE 
X-CRM114-Status: GOOD (  14.98  )
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

The current implementation programs USB-specific registers in
qmp_usbc_com_init(), which is shared by both USB and DP modes. This
causes unnecessary configuration when the PHY is used for DP.

Move USB-only register setup from com_init to qmp_usbc_usb_power_on,
so it runs only for USB mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 7139f4dab82fd7b0d1362dddefba178465e76fa4..a971bdc3e767727e69ea07b14d9a036347d365f4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -30,6 +30,8 @@
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
@@ -531,8 +533,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *pcs = qmp->pcs;
-	u32 val = 0;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -557,16 +557,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
-#define SW_PORTSELECT_VAL			BIT(0)
-#define SW_PORTSELECT_MUX			BIT(1)
-	/* Use software based port select and switch on typec orientation */
-	val = SW_PORTSELECT_MUX;
-	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
-		val |= SW_PORTSELECT_VAL;
-	writel(val, qmp->pcs_misc);
-
 	return 0;
 
 err_assert_reset:
@@ -599,6 +589,14 @@ static int qmp_usbc_usb_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
+	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
+
+	/* Use software based port select and switch on typec orientation */
+	val = SW_PORTSELECT_MUX;
+	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+		val |= SW_PORTSELECT_VAL;
+	writel(val, qmp->pcs_misc);
+
 	qmp_configure(qmp->dev, qmp->serdes, cfg->serdes_tbl,
 		      cfg->serdes_tbl_num);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
