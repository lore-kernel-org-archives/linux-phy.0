Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B16CCA1010
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 14:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m/JgclkEzpr8bqD0gyGLuvl50DbR3GgmDnzUOxSs7zk=; b=0eQR1ZlrIabIdU
	vwfr7TldVYfXO/4p+C0Nf8czVzlwav2SmlDg5R63Vcaet/wQwYDamNRksXRbfTWICp9q4AH11Ds9W
	i3fLH/3861R4tgGLAkMlpGaxvcIj5Jwy3wSymiksG93UhNLIIo5xs8a0sVhphw6AcrdFKxcVimw6w
	b6dhL+oRYmEs7gA6OU2yOv6I/vz8V/pNiiMk7qnkOQ6yXtmWVqj9wh0/XVf4RaJmh/3cz5cdW34a2
	WMW//TX/nNNxT1o3fgmOpFOSuY4N0AF6jwkOMuIO4w9VDjWKNInAXNG0I/3EAPb3nQih1vV3bYJiY
	hlafF430QAvrevl9rE+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXWz-00000002MpT-3LKz;
	Fri, 05 Sep 2025 14:35:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuTRD-00000000yLl-0c6z
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 10:13:00 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5854pPdM018533
	for <linux-phy@lists.infradead.org>; Fri, 5 Sep 2025 10:12:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:date:from:message-id:subject:to; s=qcppdkim1; bh=BPWrSW4OlmxV
	S+oW/yAP6q3qPb7cDC+1hkUG3VlnF/Q=; b=R21J42/gc/bHLcWdV5WnkB+GVY7l
	vJwvcJ4Fv7TZLVnAAhMXXwH663DqLur4oPbnXx1yhCab1Se1VipHwsleNXCvPyCv
	LTv746TWqABs8alMCvk0D2Y389k9TeG76TSKOwEtPc9io2sSffzpbbN4PTvrZSqn
	s1jrR8f73uSIsSqWl74IiRDl5UkiNH3FSmZ5Unx1s90i5YCtxzub/xBxx5uzbMr3
	QXCdbvS7KFunm5NtlB9jqikpDCh8rfS4MN/JdFzzPt+9xjeOUDnOldRq9R2TrPqh
	ffiRj1AHvsm4ffX9o67tWJ6CE06/2XG/AK9LNFDdKItra8Kox/VB1eubNA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48yebutmst-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Sep 2025 10:12:55 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-774209f46dcso461351b3a.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Sep 2025 03:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757067174; x=1757671974;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BPWrSW4OlmxVS+oW/yAP6q3qPb7cDC+1hkUG3VlnF/Q=;
        b=SBH5ArNOa/vnCWtwhQTOQDJwxp1CkibSELCHlpSqmj5oLciCNdXeJObP07+f9rZJUm
         p8IMQZ2T78S6ULmFSxCKHzpoQ2Z+Dro2RG5klasTZhTWlHcvTBgcLAV1aysXwWphIu+I
         JGCQvfoI2b/Nq7TRUiXa9Vvt4Jkr3gf4fLaZ0N2b9ZCBDYBuYJ2TthfSmYMiVv6FQJT3
         c4X51erOIQF66d9HVLd/ybaO6xx9iWTqxdz/dYbETe2njI5v9HpoORXfwPo64/ah/EiJ
         6dZ9c0I5Cg0XThSoFGm7OpEhK/b8t0JB/pmcI0mDLPMx+kyHyeJbFnZYO4ot6lqeXclL
         zCRg==
X-Forwarded-Encrypted: i=1; AJvYcCVjdC08th2vEXnc3D2qgY+KgOTFynFOw3sX/oKJAPPoUStJf33x1gCewSCUc5vjBoUP4QfCMOZ8+Zo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHYEqPiJ/Fq45Vs2NQi4UoPDkaotH37PYAcUE4Y8vohEyg9Z6T
	wfZN9Ia9iKhZMC9MJcPQFIJv9QgMYhKqx+bl+7eISNuG0gv1258+eILC/gRqXpWjYQjI5qzixYo
	JLoEYCpsXsISQ6siXeBpv05SdHq48EMOt/PJpCk5KxvchqmknvU+YTtKIUlwoBSzQUWWq
X-Gm-Gg: ASbGncvWcuNWOy8KFRMULZIWB2vGND7Gxy1VuERmzSeddWUvARynItI4o2JgdZqAiIf
	q4V3bur004RDAUlL2KnfwwnYVUdMAiTqbvdo8i7yOwZxaJK4/EqwNCAgqtMoSs1NsX6EMCg8I/n
	jUgcJEMZ0ZsIhDG6uyGFqgNsJBnXr6BjtFIW10jgdUliXK91E61R8T6tvoS5WrhHUSN7Gmai8Mh
	hSFqs8h/oYp6n8Czi8iMa4hIL5f+p3a/LTfI3WXLlfdzAQIVxFxLqzVeSzflKF3B+T4FAQ1c2ho
	LOnBNncZrme9KHZ+CNDs2ZOYNWHh6FyWxvWGaNl3ZFhrUvRMunYh++S1EtUObdGZzYfUuW2t
X-Received: by 2002:a05:6a00:b84:b0:772:1a18:b8d0 with SMTP id d2e1a72fcca58-7723e3d1d5bmr21965274b3a.30.1757067174258;
        Fri, 05 Sep 2025 03:12:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8uip5UcAX565qPWYQVvmWp5U2Fhaj75hFuYOARXkIDt89oWgdIYRjf28xKlHYEZosYe2y6w==
X-Received: by 2002:a05:6a00:b84:b0:772:1a18:b8d0 with SMTP id d2e1a72fcca58-7723e3d1d5bmr21965243b3a.30.1757067173742;
        Fri, 05 Sep 2025 03:12:53 -0700 (PDT)
Received: from hu-faisalh-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a269f27sm21897417b3a.12.2025.09.05.03.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 03:12:53 -0700 (PDT)
From: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Chenyuan Yang <chenyuan0y@gmail.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
Subject: [PATCH] phy: qcom-qmp-usb: Set regulator load before enabling
Date: Fri,  5 Sep 2025 15:42:43 +0530
Message-Id: <20250905101243.14815-1-faisal.hassan@oss.qualcomm.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-GUID: _noFdQ1SPlCRy3oMC7aoW6RW15Y6b124
X-Authority-Analysis: v=2.4 cv=X+ZSKHTe c=1 sm=1 tr=0 ts=68bab7a7 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=PsZWotwSXc4B6IEee8oA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA0MDE2MyBTYWx0ZWRfX9PWz62irxdbw
 dWt1YcRfGVh7Eas7xiEue52GEwOCIObg7jBi5eUrO7PdmwEu7F8KjjS1TIx/QhEQ1F8BtGGolHI
 nNsHqHoFhFTBkArHhjKUXbK69QK/MZRXMd13oruHI3IIuLOxBXtqZvHXU+wsuKCOYEOQ7lReDbr
 OHIgj1HgIScNDeii4Juv1ewxP/MWKexs7GCxAWXaCwoh6Xd14cSxwqZJPCUzRGhAXKWBTzlr2W0
 rEwuihr0yt9gHPvkluXq/VIpGarfqcDpqUUE0gZpzFKpY5mQjQiyGfpeoV24k+rtOqydMp3ua/N
 a5aR6QpxWIgTbWNlT7p554fK54caUPXygupgssMrRRbpKRVm32TZbDnX2ZeZUOGjCGhBzM55NPr
 UIV5ucGd
X-Proofpoint-ORIG-GUID: _noFdQ1SPlCRy3oMC7aoW6RW15Y6b124
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1011 impostorscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509040163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_031259_302590_953D472F 
X-CRM114-Status: GOOD (  17.51  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Set the regulator load before enabling the regulators to ensure stable
operation and proper power management on platforms where regulators are
shared between the QMP USB PHY and other IP blocks.

Introduce a regulator data structure with explicit enable load values and
use the regulator framework's `init_load_uA` field along with
`devm_regulator_bulk_get_const()` to ensure that `regulator_set_load()` is
applied automatically before the first enable, providing consistent power
management behavior across platforms.

Signed-off-by: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 27 ++++++-------------------
 1 file changed, 6 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index ed646a7e705b..8bc2dc975870 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1266,7 +1266,7 @@ struct qmp_phy_cfg {
 	int pcs_usb_tbl_num;
 
 	/* regulators to be requested */
-	const char * const *vreg_list;
+	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -1344,8 +1344,9 @@ static const char * const usb3phy_reset_l[] = {
 };
 
 /* list of regulators */
-static const char * const qmp_phy_vreg_l[] = {
-	"vdda-phy", "vdda-pll",
+static const struct regulator_bulk_data qmp_phy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 21800, },
+	{ .supply = "vdda-pll", .init_load_uA = 36000, },
 };
 
 static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
@@ -1986,23 +1987,6 @@ static const struct dev_pm_ops qmp_usb_pm_ops = {
 			   qmp_usb_runtime_resume, NULL)
 };
 
-static int qmp_usb_vreg_init(struct qmp_usb *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	struct device *dev = qmp->dev;
-	int num = cfg->num_vregs;
-	int i;
-
-	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
-	if (!qmp->vregs)
-		return -ENOMEM;
-
-	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i];
-
-	return devm_regulator_bulk_get(dev, num, qmp->vregs);
-}
-
 static int qmp_usb_reset_init(struct qmp_usb *qmp,
 			      const char *const *reset_list,
 			      int num_resets)
@@ -2251,7 +2235,8 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	if (!qmp->cfg)
 		return -EINVAL;
 
-	ret = qmp_usb_vreg_init(qmp);
+	ret = devm_regulator_bulk_get_const(dev, qmp->cfg->num_vregs,
+					qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)
 		return ret;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
