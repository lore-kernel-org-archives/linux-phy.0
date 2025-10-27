Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 239CCCCF9E0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 06:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8Ri1TY0Iz26W9YxEKrF3BqzMjm/Ohl1ZKCKoM9YuOv8=; b=07qqzNXVTesPP6
	dqLkZOQo+XFUltjReU2zfAI/GMpHl5sG4ebVtZvfFQDSP79CZqQk7/szrZQSl63WP0griYRUU+KDE
	di9M9UkUCC+Q3S9cHlP9m4bpdRQItsaWU6wg7iq2jtvNqGgY0rxKSHJqtyKlRDOidaLz3zDw1YlgF
	mgvcKvJ9cK33UFUaUwEaX3xkD0/ubR755mpyV/+VI44dWPANJmEDxV5NuOPBC0Jza3ZXjC9/L8E62
	FfeAmCCAtNGOHYpH5BERX78w/CGE5Y9vXrSoFg42UNKB2TikBEBEI8bRmTRYVTMPLdrTlja4AjmVN
	oTxXcRqwk58BMNVr+KNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGfF-0000000DBsG-2uwB;
	Mon, 27 Oct 2025 06:25:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDGfD-0000000DBrr-46lP
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 06:25:09 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R3Gr741502912
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 06:25:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=teLtNRm505PX8MdgaxTQ1fxSCIYlKPWmx/D
	tUXEpo74=; b=ZuNcoIrwuEC64OO/+W72lW39Zktlb6lwaLtSurDy+OsFs9jK3aL
	Yt9i8WV6K8/unlpcgUdktKbNSfgX0o9HcaOr50IEg2Ft0Wrf4QXqjZQCn6VSyCt6
	mS5wpuxjMqN3My548/NrnRPRkSIlj0uLLBYNWoulHm+/JBfJhtV4LCbjtjkpVCdh
	0BusGdsxLJHQQhdm2dzPbPgTwXq3EBL7xsETiCQq74PqQuqzHfEEw0s0l3svamSD
	VslLlO4mU+AmiPHgr6cMF+gfczjlqHhQl7gxAY16f7vdBdpGFYf4Vtcny6vEeHQ5
	Epm0dgYGvW1ilURMAVM+tKdN3kRyZ2x9d0Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a20pnrcy4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 06:25:06 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-28bd8b3fa67so36062625ad.2
        for <linux-phy@lists.infradead.org>; Sun, 26 Oct 2025 23:25:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761546305; x=1762151105;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=teLtNRm505PX8MdgaxTQ1fxSCIYlKPWmx/DtUXEpo74=;
        b=rqofxNKN2T0PR4H/VLRo8hO6j9KQw6kCQydEiPiclxdTvKw3nALpjJPo1d1BPCO1EG
         BrSog8RyDJ9bfO0NMM9QvxXieMeBPhNS13dGN/5F51QDzM5OHkU+e31Cde3xwWdZjUGE
         0Is3p0c2NoRLHprRMWvmKt8uBvbFxlCRyKPO0dkkvXgcqsivgCZ58H48LmiiXCFg4rFN
         onvWJdjzq+p0xaS8pPjSZMO5dyj3CmsUJm/RmKYOFMvn9Ybnrh18yseGnRRtsEBP3EXD
         Gz4hmHEiBBR4r93gr8O0/GKHmcUDnZKrn+OF7MD1KpfJ7ojLdc7tVYbpbakfSBQwMdWq
         RWsw==
X-Forwarded-Encrypted: i=1; AJvYcCWcBOKo7VEIQU8lJ2+RVo3AvvnyGG+ag8iWVtxN5tHK5WmSTju0AvWmjqOB+clsIibhqjYUU+RdcjI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIsOv8KW462CrvDAikw8mzlOUqBlfGKTZmceperE6UcimIAMKi
	9hvJZrGB21xpUqmyqF9A4th4cehZqilCJjIYAXWdiVxRbtWBlEUa/fRHPy18jMFleiKbkj8rK5K
	nyJ1Ga+7Aiv2XYOubfx0W2grkZrujq4CCx9tMwB2ukmCvLlgxJ3G5j3cOikzEB5OGq5it
X-Gm-Gg: ASbGncvDLH/rREvm3Tz/NN0IGFEA1mF83yZ9NIfzaecexXrk/LYHeLL9+G2+uxs2RNI
	y4u1l/AliBCvNxnifjJ+zOizgJ6hUN54M7Tq7e1e1/JolvQ7dla5Lrg9LPSE36Nbs27LIuDODHX
	4bqcCdwY0AtO/p1m7rNbtI2/JmSs9FsOUU0epj6qZI+u/i44nxVDGNlbK2Tk0gnfqDlxDydIsGZ
	BqXg/kSe8N3WrnmYEYBjXXgl1rLyqv6EjAgYI7g4Uy4ADH/6zJcXUDy8wbpP23WQiGistsZg9KG
	fFbd5/IWX7tkxk9KWRSYM21R+ikCOQ9VqYluHCsUWsksfw8NPXdtDvZuquXx5+qOog7PbJwEmp1
	1GyubNH749n60vEuf40uyR8raAx4=
X-Received: by 2002:a17:902:f70b:b0:267:af07:6528 with SMTP id d9443c01a7336-290caf83079mr448673405ad.35.1761546305427;
        Sun, 26 Oct 2025 23:25:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYsbnoxIoDwX1NoZs2UO3l7p3LATS1TmaBH5XzP3HuuA+Rw6QnyKU7CjxwqONWCAnQw26BZg==
X-Received: by 2002:a17:902:f70b:b0:267:af07:6528 with SMTP id d9443c01a7336-290caf83079mr448673185ad.35.1761546304946;
        Sun, 26 Oct 2025 23:25:04 -0700 (PDT)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d23218sm68346975ad.51.2025.10.26.23.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 23:25:04 -0700 (PDT)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH] phy: qualcomm: m31-eusb2: Add runtime pm ops
Date: Mon, 27 Oct 2025 11:54:58 +0530
Message-Id: <20251027062458.1411096-1-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-GUID: TkHbD2aBsHFJoRJUWP_WXN6lxrdXBUmz
X-Proofpoint-ORIG-GUID: TkHbD2aBsHFJoRJUWP_WXN6lxrdXBUmz
X-Authority-Analysis: v=2.4 cv=A+xh/qWG c=1 sm=1 tr=0 ts=68ff1042 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=-Y0lm5QSNLYpoQ5O1QAA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA1NiBTYWx0ZWRfXzyzJ8xjKQDwm
 4tkuZq3sL+izEpJTEEOuvY0/ZVKB4VEzR5U7tNgGhVcxaqqHZ3QCxCiRACKUHs+qRBfmhipIoJW
 RFBebMfp6TeYS1Flj9oIJuqSFenoLPyvmKa6ay8/MaxDVJjZbEzne80TiDn4wHKaYyM48Rofpmj
 JJ/8SgdEilYK+KWHKYoe5pyhHegYelfr49FyqMQT7AsJVKHnKRkZZWWNZ01xuRfvG88RutPGcQ2
 5uTyU9IJ+TikGrhZ5CbKVo+e802eWSDQCJkHX5ogt0DIqivO4CCtFjEpq8L3dU/ZUKdhb8YIfqq
 IlUCUr7U0MrKpmlYJMqU4OEYvSuFVcSppp0xfF7gRRQ3f9MkC1fP7NNdM4uKrbqj+XL8p8dPOoO
 569X8QJIcKAWIXunDEnSNZkN+3B0dQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510270056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_232508_140773_87B6FEA5 
X-CRM114-Status: GOOD (  15.69  )
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

Add runtime power management operation callbacks for M31 EUSB2 PHY.
Enable/disable the clocks based on the runtime suspend/resume calls.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 40 +++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 0a0d2d9fc846..1aeb5e3de07c 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -240,6 +240,34 @@ static const struct phy_ops m31eusb2_phy_gen_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static int m31eusb2_phy_runtime_suspend(struct device *dev)
+{
+	struct m31eusb2_phy *phy = dev_get_drvdata(dev);
+
+	dev_dbg(dev, "Suspending M31 eUSB2 Phy\n");
+	clk_disable_unprepare(phy->clk);
+
+	return 0;
+}
+
+static int m31eusb2_phy_runtime_resume(struct device *dev)
+{
+	struct m31eusb2_phy *phy = dev_get_drvdata(dev);
+	int ret = 0;
+
+	dev_dbg(dev, "Resuming M31 eUSB2 Phy\n");
+	ret = clk_prepare_enable(phy->clk);
+	if (ret)
+		dev_err(dev, "failed to enable ref clock, %d\n", ret);
+
+	return ret;
+}
+
+static const struct dev_pm_ops m31eusb2_phy_pm_ops = {
+	SET_RUNTIME_PM_OPS(m31eusb2_phy_runtime_suspend,
+			   m31eusb2_phy_runtime_resume, NULL)
+};
+
 static int m31eusb2_phy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
@@ -270,6 +298,17 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(phy->clk),
 				     "failed to get clk\n");
 
+	dev_set_drvdata(dev, phy);
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+
+	/*
+	 * Prevent runtime pm from being ON by default. Users can enable
+	 * it using power/control in sysfs.
+	 */
+	pm_runtime_forbid(dev);
+
+
 	phy->phy = devm_phy_create(dev, NULL, &m31eusb2_phy_gen_ops);
 	if (IS_ERR(phy->phy))
 		return dev_err_probe(dev, PTR_ERR(phy->phy),
@@ -313,6 +352,7 @@ static struct platform_driver m31eusb2_phy_driver = {
 	.probe = m31eusb2_phy_probe,
 	.driver = {
 		.name = "qcom-m31eusb2-phy",
+		.pm = &m31eusb2_phy_pm_ops,
 		.of_match_table = m31eusb2_phy_id_table,
 	},
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
