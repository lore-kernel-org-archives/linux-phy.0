Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A2D0C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 06:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGI8zP4bJ0r2WPucY/zOs+FoYWKj7AZA6mVEfWs9tXE=; b=qxJ+2JWssqgUmh
	a18Rs/+eYuyQ+qGjy4apLiwgC51sw5Uc6vfwF8pCaGORAZ30NDudGy9W+p2zu88B80HDDIbP53wuo
	06BMwsup8pOOExanKXLbJlvYOJ6p+kJ8F00Rc3BDTdiDA3wtN5J2A7gLuEJ16aDMt7BUWrJpyt+8v
	d/Nl0Z6kHe+6Wr+HWbq4tQufbDj69W+0ebBldQJKWsPzb01bxo8f7rW5ldXFhKN8n7zwEVYO3p4RO
	9D7puIQjYQhMG5QMKg6lwcWIQl00y6jR1ul72vTK8kQ8bsXJULyZydzRS9Zl0GughhCRaKPCVO3La
	veP+RVpH95Eb9w7FLh3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfEg-00GywX-2o;
	Thu, 14 Dec 2023 06:30:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfEd-00Gyvi-3D
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 06:30:17 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BE1G3ii013046;
	Thu, 14 Dec 2023 06:30:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=WJr3Nkmd/Qw0LXUgVh1auTrBFZKq1cTU8dUnkpzDrVU=; b=c1
	U2Xg+1F58F630Hu3p/unEOoG0oYgCeceNOMpLBTPFcAQZMeP7pkUMLAyBAnyRgWo
	A4OPV3z9jvC7l20095pXFT72Jmz6ewQJ8Ph0Ogj/O8ZSclp+DF0EecrNBg23IQDD
	0T84zku3O4azNjLMRR1rQ7wbnKSyg+IjPcxo3iMu4bG6nmCzh4UBV3rPc8xkhDYS
	anRnvY85sAid4qPvJjeBQAcDdQSOsK+ON6AJuii3ZQpHGE9tXiaTypFVje8CrsUr
	PSFRusdy7bfqPjTSI5vGya6YwoRJzdakxbTUas4wgpG/80y3c+KuwFbL3hTYjN1I
	U2+ANv/dvO50VVaUJbCQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uyq9t0k9t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 06:30:09 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BE6U8pt006229
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 06:30:08 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 13 Dec 2023 22:30:00 -0800
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <quic_nsekar@quicinc.com>, <quic_srichara@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <quic_varada@quicinc.com>, <quic_devipriy@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_anusha@quicinc.com>
Subject: [PATCH 08/10] pci: qcom: Add support for IPQ5332
Date: Thu, 14 Dec 2023 11:58:45 +0530
Message-ID: <20231214062847.2215542-9-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GUaimBjfFoMiK3fyMTlOIKmwFZNFsqnm
X-Proofpoint-GUID: GUaimBjfFoMiK3fyMTlOIKmwFZNFsqnm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_02,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 mlxlogscore=958 suspectscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2311290000
 definitions=main-2312140039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_223016_160079_6C952D55 
X-CRM114-Status: GOOD (  11.46  )
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

The Qualcomm IPQ5332 PCIe controller instances are based on
SNPS core 5.90a with Gen3 Single-lane and Dual-lane support.
The Qualcomm IP rev is 1.27.0 and hence using the 1_27_0 ops.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
This patch depends on the below series which adds PCIe support in
Qualcomm IPQ9574
https://lore.kernel.org/all/20230519090219.15925-1-quic_devipriy@quicinc.com/

 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 109df587234e..3d54de1a71df 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1642,6 +1642,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
 	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
+	{ .compatible = "qcom,pcie-ipq5332", .data = &cfg_1_27_0 },
 	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
