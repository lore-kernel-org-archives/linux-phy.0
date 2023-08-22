Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC70EE4996
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 10:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSDPpyUr1lK5dGrDFtIxY2zpngMw2Bj1uEyMKsY7Dd8=; b=LyZGRCorx06cTG
	V0zpYGAGASj+kNMTNQ5MMow/RUvNkgLGvS6QvPuFyltF+xwPfhCN/SD0rR1qpVHsm2MTw0bZ0YfkA
	SZ/zuB5vgDbrO1k0b2WcV5Wlz9LASdqJA46cN7o6+SYkq0ifb0EqWYU71Nq5N12Qmhc2OmaXuqGie
	NATVMLd7WxD01CQxTRB4dP/7WvAek7kAPLBNABT7t92ztujJ7mdJvfn8GEHxcbdEMwlsmKUhI2OTk
	yvhBATl92DhxY7/tEt3EhBAENN+MNJkjgmCqOdXbwHxFqyTf4LdAio5exQxaM6h77ojQV/RBUNtLW
	1bO0yKKxBZ8Iyj4cPn/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYOeX-00FgOg-1z;
	Tue, 22 Aug 2023 10:30:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYOeM-00FgDb-3C;
	Tue, 22 Aug 2023 10:30:16 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37M8LoDN025535;
	Tue, 22 Aug 2023 10:29:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=kcr5f/KvfwvoPCTjj4ljCr6eW5iAFaKNz41SVn+rshs=;
 b=ofbJN+lUgq9LyP3hPMZ5iQV8Ma9f+c6YU9Sy6Cb+S+kn5C3rIqN2Hj0kSasF9g/FtLoD
 pvvQ8hqi+5tj1LLEjBl2HKlAawvEQqC/3LwwDq7ljLdzbvNNufOxE/zXuEQvzOO1qfc9
 jWavTMVgQqx/6HJ/jhVkOetkVwCgadefOkU5VbclmxacRpXiYdr1x2tj5LCL5tn3qbsN
 lOyIC56E9K94pzR2cGLU6+krE/ZaHGCkP7T26oB9994gS0kGoY0tAcFKqC9GNYp3D9wI
 wPTSbQ3WJw0emz2A8zVg+gYmLn5eEWce/MlAMwwWRxWi8f8lpHJ/yD5Sy1/KAO+OIl4l lw== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3smdhwhbx5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Aug 2023 10:29:59 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37MATvkq031621
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Aug 2023 10:29:57 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 22 Aug 2023 03:29:51 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-phy@lists.infradead.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v9 1/4] phy: qcom: m31: Fix indentation issues
Date: Tue, 22 Aug 2023 15:59:12 +0530
Message-ID: <6d1638daf9b0616816fdecb529df86a394db7942.1692699472.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1692699472.git.quic_varada@quicinc.com>
References: <cover.1692699472.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: oYMT0wWcPFajavX6fQ1wlTa_ptxVeCKS
X-Proofpoint-GUID: oYMT0wWcPFajavX6fQ1wlTa_ptxVeCKS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-22_10,2023-08-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=981 mlxscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308220079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_033015_145451_3B4F5BFE 
X-CRM114-Status: GOOD (  18.71  )
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

* Fix indentation
* Drop simple success messages

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v9:
	Fix line break alignment
	Remove register success print
	v8 version of the driver has been picked up for merge.
	(https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
v8:
	Change commit subject and message per review comments
	Don't include of_platform.h
	Change struct init coding style
	GENMASK -> BIT for one define
v6:
	Kconfig:Add COMPILE_TEST and remove USB_GADGET from 'depends'
		Change 'selects' USB_PHY -> GENERIC_PHY
	Driver:	Use correct headers
		const int -> unsigned int for 'nregs' in private data
		Use generic names for clk, phy in m31 phy structure
		Init register details directly instead of using macro
		Use dev_err_probe in the error paths of driver probe
v5:
	Kconfig and Makefile:- place snippet according to sorted order
	Use generic phy instead of usb-phy
	Use ARRAY_SIZE for reg init instead of blank last entry
	Fix copyright year

v4:
	Remove unused enum
	Error handling for devm_clk_get
v1:
	Combine driver, makefile and kconfig into 1 patch
	Remove 'qscratch' region and its usage. The controller driver takes care
	of those settings
	Use compatible/data to handle ipq5332 init
	Drop the default case
	Get resources by index instead of name as there is only one resource
	Add clock
	Fix review comments in the driver
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index ed08072..ea79c18 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -242,7 +242,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 	qphy->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(qphy->clk))
 		return dev_err_probe(dev, PTR_ERR(qphy->clk),
-						"failed to get clk\n");
+				     "failed to get clk\n");
 
 	data = of_device_get_match_data(dev);
 	qphy->regs		= data->regs;
@@ -252,18 +252,16 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 	qphy->phy = devm_phy_create(dev, NULL, &m31usb_phy_gen_ops);
 	if (IS_ERR(qphy->phy))
 		return dev_err_probe(dev, PTR_ERR(qphy->phy),
-						"failed to create phy\n");
+				     "failed to create phy\n");
 
 	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
 	if (IS_ERR(qphy->vreg))
 		return dev_err_probe(dev, PTR_ERR(qphy->phy),
-						"failed to get vreg\n");
+				     "failed to get vreg\n");
 
 	phy_set_drvdata(qphy->phy, qphy);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (!IS_ERR(phy_provider))
-		dev_info(dev, "Registered M31 USB phy\n");
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
