Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2768BC04A94
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IRIA8gLywLY9uiOLu/bHZEJ0A27/mgRW85B4pX+4ew=; b=rqScKem0bsAUpT
	2CIvoFP8j2P9jXcoNTZQvr/5vcq9PqZAJ7RJyjaGsoXrIR8BVRjD4//y/ndap6VQfWdI+tMZ6s6nq
	7DUuLuBp5VDbPCo8viuV3VGcznc6d1pu7WymIcPaulJ0XONZCwzIHsdOtMCJ/reBnRT+XQYKjgmGR
	KaJp+Hc0bBOsr+1Mh+2kGwRrgPWC9iNMsV6vbRGzRXz1NqkofUZ1i7tPOTMdOCuXs4cIeHn6H6Udb
	/1MYXpErpzdXuVug1Bt90N6zIdwHDy+kqAtHXF6SBYHULmqqpRKkdYaHO9zb7eJWCNQSTzpjULgSU
	gZJXy9RYDslqwLO4kMQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxho-00FBCZ-2V;
	Wed, 05 Jul 2023 08:17:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxhm-00FBAo-0X
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:17:43 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3657VjKB026170;
	Wed, 5 Jul 2023 08:17:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=xAS1rOleB+39eWEsi7K7fj18+3H+/IUDPhMSc6fNERY=;
 b=n3wyVhbaM3zBrMiRYC3zk4z0h5Hp+pPyhoBpG/CRTFePyQucmU7Jwj1vZWCVcWMZZT9I
 8AJ+8m90Ftr3hnAdNS9t7C7vI12HonPoag8v4iOMiZyz78nuuqBxkIXm2TrGTTRGtUkc
 0Jh1JOJUyKSJB8UWcJyN7n8WrRJrj3GE7gduVohiP/4gtfKcgslzqhg1wm2nJJKscOJV
 el+Qm7L6+SgTPsO4ubS0Pg+euKGmK0m1sdMP8rjzAIvyPhX2ztgNOxZi6fj+/X/coNGX
 5pR5gQ6AWRfQQvCR6+vVnirnvzJyx2tFGqcY7JZjay75Tg9afFV17wRcNsaWtDISZYnz /A== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rn2cp88un-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jul 2023 08:17:35 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3658ERof019100;
	Wed, 5 Jul 2023 08:17:31 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3rjd7krn8r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 05 Jul 2023 08:17:31 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3658HV6d021807;
	Wed, 5 Jul 2023 08:17:31 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3658HUJE021806;
	Wed, 05 Jul 2023 08:17:31 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id 6A2AA244; Wed,  5 Jul 2023 13:47:30 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: [PATCH v1 3/6] PCI: qcom: Add support for sa8775p SoC
Date: Wed,  5 Jul 2023 13:47:08 +0530
Message-Id: <1688545032-17748-4-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 6jdodsnTIKU-ecVZ-dq4hYrGjFvZLkG0
X-Proofpoint-ORIG-GUID: 6jdodsnTIKU-ecVZ-dq4hYrGjFvZLkG0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-04_16,2023-07-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 bulkscore=0 mlxlogscore=999
 lowpriorityscore=0 suspectscore=0 impostorscore=0 mlxscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307050075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_011742_210237_8AAB9D70 
X-CRM114-Status: GOOD (  13.78  )
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

Add support for sa8775p SoC reusing the 1.9.0 config.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 7a87a47eb7ed..59cc028d3a3e 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1624,6 +1624,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
+	{ .compatible = "qcom,pcie-sa8775p", .data = &cfg_1_9_0},
 	{ }
 };
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
