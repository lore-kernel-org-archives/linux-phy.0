Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 971EBC982FE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 00:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBNjeAfdorVNFQ/ndMyRMFh9cVie0ENqGrsAQdM7SsU=; b=fitvs3UtD1vaKT
	eOyhfbnjMTB3utZBOYIdIDM/QGZt4iGR2XSKjunIxXkPR5G1hyBuxZozX/+jbO4OcN+O4usaqNzd2
	Qn2q828IiXRHiWWsMCHgqYGdjqTkoUkPgXYLDWebD1F1QbATsEl8eR4qyeyp16deUZ1goOBwtMh2G
	E135VKrRG6YO5N3gDK34bHp8TLpJcG5XatUeSn+DoVw1cOgXNamGfZPwW0bdkvjQIVwN4s9W6Y2/C
	pPUQYHP/mnTBQyvERBAIj/nN8mee93PSlhkgn9zjYCbh51pZqCYYOU04mx2jvONk653kGycaG1Wy3
	UGsXbjK4qbVA+mQwEJKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATk-00000006lal-1JY8;
	Wed, 23 Sep 2026 00:04:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9ATi-00000006laB-37hp
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 00:04:51 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68MI6tex2033221
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OVq5tVWSaGDb3I6gDYM8bMcigKKIv7rHibjvQmrEVEk=; b=DWia/S/wDUnMgfJp
	jkxpO2pNrbFw405gXM4e1m0MLyvJuPgiM8PZ15iL1z1UZbA4uc15WJp92mNxqREy
	S8LtrnKDyTCDFVh068rJ+SVxZxH4syVRC4SfeBHZUeMxNlAHsMFOCAcblQPd7RLw
	JO2Y58QkuFRxYrzocjgf6w7ICrHerNLdecck2ak+5PXZ390ol5Yg7uxzQ18d107+
	IkWhg5UNTx7Xmz6bLbMTvbDa6MgOsqjMCc20oY5T59zcHp7yW4rQNrAnduBwNtHQ
	yAeBClOHgcc1jnWKY4m6REz596TtdT4E+dzvrja8bgaLgFuess3VwXOPUGjSci9d
	1IPhyg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gux8c1km1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 00:04:50 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1437272611eso528756c88.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 17:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790121890; x=1790726690; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OVq5tVWSaGDb3I6gDYM8bMcigKKIv7rHibjvQmrEVEk=;
        b=Rf3tSzgut9EB4qcGrErTLe1shB31WTrAHOf69uq2u1DGnM3FSFE+2N0hRxfFjBBfXv
         Vo26wecVdMyaC5mjDocwHqkXzWIjsFnXmvsrSkLosMEMe20W0xRmp6LuvaMdrqPmjDlB
         V8IBKWjhtaWTrw4eokvePcBs4jXIs5IDl3Y8UAN2HEj85umT1lJhrym4oF9hp38FWuaO
         BpL4yhuGNme4X7i5ex/XJC6a/r4NW8H7DRfd9gpXVSXxvYH+YixOJHw63RI7VLSl0s+J
         zsKsF5jaI+plXJZ5464yQcmr+rHqMMsOt1JT9r14Zk+xfV5gI+6vb2CVr0zzkq2rw4qR
         Cygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790121890; x=1790726690;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OVq5tVWSaGDb3I6gDYM8bMcigKKIv7rHibjvQmrEVEk=;
        b=Bq43VbhVVxu+scl61Yf2b+F45ST9VuxDlaGx+701RkgSNiD7JFanOL6jVQ89gNu363
         TQu2MTnD17m8X1VMPhijYFFXJyy7fOJpdSaWmSjBUpJOzUXN63E8ioYzPomCD9dCTMOr
         qCZ+2rsiyPQ3MI3iBktkTEnu7YIKSUnM6rQVFvKv4NeXO5TIjTEpWuL7Iar5zfO/IcVA
         iF18GRR3E1Wk5gdzPCznY3HN7aR5mCIJEtgwh7zJhs2rGz9Gb5gwRe7Tx8qz8o6oth8d
         Jegq3mJJiNXrteKlPALt4pMeFkuySQSQC1EnYdt7CPZhJrjuNcvHrtTV7LeYIdN/z9r9
         y/PA==
X-Forwarded-Encrypted: i=1; AKwUvBwgAqoEnnkdLZrvUy9/c2g9hsgX65r6qTbFcYRvwVSLkqxDSYuyPUpU0sYYQ9MIikXt3/tmzfZADVw=@lists.infradead.org
X-Gm-Message-State: AFuF++nrwMMMHP8S4SfCokO3gLMeUjPDmAooX1+W7tAvT7c+X2fkvM5x
	n2/eVsajpzV+IGCF7rYLSzwQVC7kl/Xhfs8swt8A5YDW16M7z7Q8CXFQ8paY+bv+8qWDnjH6bBO
	ZxDFLPdk3NdqxYpxFY6jcQ65OfiGlGLHkvjB7TnrfqyZ2LKNQDL0ejPbPLSJ7lQChdm5r
X-Gm-Gg: AYBFou1DRyglzgVJ0wU5+wtTtWVc8k8VErSXyy1f3AzL3sbV8zHr2bexxyujBck6xah
	KxEBxyCS5QM2UbSo34/pMspik4N4tsNaXwMRzAo5S5Zu0MDBOK++XV5wnazDKY5baa55cY6vHFp
	dNMokhOsT9amhHrXM7/ly/c6NnPCG20xCADyjMkXSJTNj3cmJ9Nw2WPLhoocAW9T6K5CP3xhHYY
	+3C1wTDgYtkYnVjuRZONqM7lzBxQ/+4NAzhPwJXTdkdIr0FEJr4akgAZHxSuKkAfG8dWoaH1JeR
	VzmYpFeja2lX6jBQXJEg2Yj2CTiIIbuQ9FDCZ9aSSMcaeGCSzuteFLBh0QVEoyYxG51N6VoCT8X
	IBATl7TN/fCxqglaoBo3JYzFmIJZr
X-Received: by 2002:a05:701b:4185:10b0:143:298e:459f with SMTP id a92af1059eb24-144f916a927mr1167035c88.42.1790121889417;
        Tue, 22 Sep 2026 17:04:49 -0700 (PDT)
X-Received: by 2002:a05:701b:4185:10b0:143:298e:459f with SMTP id a92af1059eb24-144f916a927mr1166934c88.42.1790121887543;
        Tue, 22 Sep 2026 17:04:47 -0700 (PDT)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33e939fd955sm1688347eec.1.2026.09.22.17.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 17:04:47 -0700 (PDT)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 05:34:18 +0530
Subject: [PATCH 2/3] phy: qcom: sgmii-eth: prepare for additional PHY modes
MIME-Version: 1.0
Message-Id: <20260923-nord_ethernet_serdes-v1-2-f8ac1c487882@oss.qualcomm.com>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
In-Reply-To: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790121872; l=5141;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=pU4CKl40m2UEFuu7WP4zaSdVKJzbzXCSIogmQHSKiws=;
 b=e5w/ijuhu5rOqf/c++BwgYR9xCb2yyNNxSaZPVchajLFjhCQ8DQ5HPhC9HUijKp1AERqEKOwU
 kN3+ZKtTJqeD4ZLOP6MPw2a+XS3zUc3lTrYhgUpa8yEK3uY7g6SpKAs
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfXyGNWRZMoWPNc
 WqdHKSNBtczwbV/82AmMwAvl99YIcHxZBNRw7khNnG39O3+96cLz51HWieHuLvQNk2ja5J1/OMD
 tcCpFbqXEzD6QNf3116cNOBfJN4IlTgDmUcQzfn5G2gu75l2j3Ja5BK5xpHp427NAjlAGj+ca+W
 h9VuxqhNrNAxl/0q8+y5sEOU4MkbBhjlikikkpuciSqJxmBmpOonLQHlIGnRBg76OrdqB4Uu0e7
 mXqq5olH0EYtYU5vYO+FZP51SAGAh1WKQNopzreEuMBEZDjUcAyGFRLJG8vtjDuhs9QIaP5L+pc
 O6wxnKtHrGKY+8BRjAXRf7IONZLiVkAMdMoMpLB2nfbS1M5zmtnsc3VWa3fMvOYkbDZLC3YHASw
 ETjC+vy5AEOAsQQ+egPrSUhvmdn/jbPg+nChzRogcKmWu+wsJgt+WpiZrdVbgC1TvIOBeC95gYz
 mxeB6srigjgfzghsnug==
X-Authority-Analysis: v=2.4 cv=P9evFSAu c=1 sm=1 tr=0 ts=6ab317a2 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=jlbHTTSnYauNfDin9pkA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: O3jR7B7J5Kljr_SrQgYA1F8flTmvieLR
X-Proofpoint-GUID: O3jR7B7J5Kljr_SrQgYA1F8flTmvieLR
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAwMCBTYWx0ZWRfXxylEQ0EHxKkj
 ETCOB0gX94Pq+f9zXF0X5BE+maV8iT6ewEncRkhbS76p3a31zPWX3GB6SK0MJn4nx89XMRjPwIu
 yPJVoendbTwhWvNjAivwSiUzCEFGnGc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-22_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_170450_798548_A7C3D7D0 
X-CRM114-Status: GOOD (  18.83  )
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

Prepare the SGMII Ethernet PHY driver for PHY modes that require a
different SerDes programming sequence. Move the SGMII readiness checks
into a helper so additional modes can provide their own status checks,
and select the initial interface mode through per-compatible match data
rather than hardcoding SGMII during probe.

This does not change existing SA8775P behavior.

Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 70 ++++++++++++++++++++-----------
 1 file changed, 46 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 7137200c3f310a4d2642bb9bdbe3adb7589b2241..029dafacee7853648ef24afd0d9c4b83a549badf 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -41,6 +41,10 @@ struct qcom_dwmac_sgmii_phy_data {
 	phy_interface_t interface;
 };
 
+struct qcom_dwmac_sgmii_phy_match_data {
+	phy_interface_t default_interface;
+};
+
 static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
 {
 	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
@@ -227,47 +231,31 @@ qcom_dwmac_sgmii_phy_poll_status(struct regmap *regmap, unsigned int reg,
 					val & bit, 1500, 750000);
 }
 
-static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
+static int qcom_dwmac_sgmii_phy_poll_sgmii_ready(struct device *dev,
+						  struct regmap *regmap)
 {
-	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
-	struct device *dev = phy->dev.parent;
-
-	switch (data->interface) {
-	case PHY_INTERFACE_MODE_SGMII:
-	case PHY_INTERFACE_MODE_1000BASEX:
-		/* 1.25Gbps mode */
-		qcom_dwmac_sgmii_phy_init_1g(data->regmap);
-		break;
-	case PHY_INTERFACE_MODE_2500BASEX:
-		/* 3.125Gbps mode */
-		qcom_dwmac_sgmii_phy_init_2p5g(data->regmap);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
 					     QSERDES_QMP_PLL + QSERDES_V5_COM_C_READY_STATUS,
 					     QSERDES_COM_C_READY)) {
 		dev_err(dev, "QSERDES_COM_C_READY_STATUS timed-out");
 		return -ETIMEDOUT;
 	}
 
-	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
 					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
 					     QSERDES_PCS_READY)) {
 		dev_err(dev, "PCS_READY timed-out");
 		return -ETIMEDOUT;
 	}
 
-	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
 					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
 					     QSERDES_PCS_SGMIIPHY_READY)) {
 		dev_err(dev, "SGMIIPHY_READY timed-out");
 		return -ETIMEDOUT;
 	}
 
-	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
+	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
 					     QSERDES_QMP_PLL + QSERDES_V5_COM_CMN_STATUS,
 					     QSERDES_COM_C_PLL_LOCKED)) {
 		dev_err(dev, "PLL Lock Status timed-out");
@@ -277,6 +265,28 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 	return 0;
 }
 
+static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
+{
+	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
+	struct device *dev = phy->dev.parent;
+
+	switch (data->interface) {
+	case PHY_INTERFACE_MODE_SGMII:
+	case PHY_INTERFACE_MODE_1000BASEX:
+		/* 1.25Gbps mode */
+		qcom_dwmac_sgmii_phy_init_1g(data->regmap);
+		break;
+	case PHY_INTERFACE_MODE_2500BASEX:
+		/* 3.125Gbps mode */
+		qcom_dwmac_sgmii_phy_init_2p5g(data->regmap);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
+}
+
 static int qcom_dwmac_sgmii_phy_power_on(struct phy *phy)
 {
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
@@ -374,6 +384,7 @@ static const struct regmap_config qcom_dwmac_sgmii_phy_regmap_cfg = {
 
 static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 {
+	const struct qcom_dwmac_sgmii_phy_match_data *match_data;
 	struct qcom_dwmac_sgmii_phy_data *data;
 	struct device *dev = &pdev->dev;
 	struct phy_provider *provider;
@@ -385,7 +396,11 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
-	data->interface = PHY_INTERFACE_MODE_SGMII;
+	match_data = device_get_match_data(dev);
+	if (!match_data)
+		return -EINVAL;
+
+	data->interface = match_data->default_interface;
 
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
@@ -419,8 +434,15 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct qcom_dwmac_sgmii_phy_match_data sa8775p_match_data = {
+	.default_interface = PHY_INTERFACE_MODE_SGMII,
+};
+
 static const struct of_device_id qcom_dwmac_sgmii_phy_of_match[] = {
-	{ .compatible = "qcom,sa8775p-dwmac-sgmii-phy" },
+	{
+		.compatible = "qcom,sa8775p-dwmac-sgmii-phy",
+		.data = &sa8775p_match_data,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_dwmac_sgmii_phy_of_match);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
