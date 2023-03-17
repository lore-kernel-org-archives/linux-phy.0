Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CCFC74A5B
	for <linux-phy@archiver.kernel.org>; Fri, 17 Mar 2023 06:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ctQHZKFhoyI/GtYkac1n/G+FtoQNC3rlRCIZkoRCqpA=; b=INiOHxL5zf7h11
	rXGh3KYbyAO0idcxDYYYZr7gs+AlF0NE9xOQ9Cj7Bfmv+J5ex8lt/22/aC1DfqodMY1iavgZOJ4HZ
	jCf8OKeRulFrrtaeG9DwTatfU9stG5GUC8Tnd5ROzGT3cNZ7EFbrbmXtfhEcPaZ02ZT0/dDpCZUE+
	UmoDuzJbaPhU0Uyy+FdJOXAoJqmS+y/CPU2t4tkursIBKFyJ8ewKRocWC5YvKTzsKCvNK7lAk0j8n
	M6M8SOUEko4g73WVa/qLQ4ep/2ROKPtzSNpE/tHR8gW1YNQWZsOgnUsiYODUX7SDL/ozhXD0GVwc2
	dnWije+7vSwYTcQOm/Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd3k8-001DVw-0u;
	Fri, 17 Mar 2023 06:39:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd3k5-001DRJ-3A
	for linux-phy@lists.infradead.org;
	Fri, 17 Mar 2023 06:39:11 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32H6JwQt004498;
	Fri, 17 Mar 2023 06:38:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=pDWQnqNyjpbCezBdx2gkQLrqL0n1VlRnEw54BojTBow=;
 b=Z6DKxwmD9c/ZIJ/O/xvns+kbUOlgt4xm6Km4lJ5YW01W8lLBcP8QGhoM4Y7Cta9/fLGE
 jQ+tQyiRROEiX9gkraogii2M8s41jNP5NlA+W5M9pWvNFOlS6/ZLEDaIYdxKeqmqTVmd
 kSpHfY1uf5EQ+qt0/fGs7k3Yu0Oa/u2BZl+gjFII2V1S26JEFNqyeZ1/KYBbcRmDS/Fc
 M2sCMmoQkRA9DvXuACLoyjD1gL0RtrmtNVJRTnvMxfdCUECwXkKxXLwMm1G2dENl5WtH
 GdIc2Cl4zm8TOe+Y/iBYChBKKYkNlR3IfMuUHAn/xnNJ1RoWiux9jas07+KLe9aht3gL YA== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pbpxjvbf9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Mar 2023 06:38:41 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 32H6ca0o000618;
	Fri, 17 Mar 2023 06:38:36 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3p8jqmd71c-1;
	Fri, 17 Mar 2023 06:38:36 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 32H6cau5000611;
	Fri, 17 Mar 2023 06:38:36 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 32H6cZma000608;
	Fri, 17 Mar 2023 06:38:36 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 5B7184E4A; Fri, 17 Mar 2023 12:08:35 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, manivannan.sadhasivam@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v3 0/2] Add support for PCIe PHY in SDX65
Date: Fri, 17 Mar 2023 12:08:32 +0530
Message-Id: <1679035114-19879-1-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: BiUNjYERgVPprdTpwc6GEiNd2q67JLfh
X-Proofpoint-ORIG-GUID: BiUNjYERgVPprdTpwc6GEiNd2q67JLfh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-17_03,2023-03-16_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0
 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303150002 definitions=main-2303170044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_233910_049071_42FF0388 
X-CRM114-Status: GOOD (  13.58  )
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

Hi,

Changes in v3:
 - Addressed minor comments from Krzysztof of removing redundant binding
   usage in commit message.

Changes in v2:
 - Addressing Dmitry's comments and adjusting according to new bindings.
 - Rebased on top of 6.3-rc1.

This series adds support for PCIe PHY found in Qualcomm SDX65 platform.
The PHY version is v5.20 which has different register offsets compared with
previous v5.0x and v4.0x versions. So separate defines are introducted to
handle the differences.

Thanks,
Rohit.


Rohit Agarwal (2):
  dt-bindings: phy: qcom,qmp: Add SDX65 QMP PHY
  phy: qcom-qmp: Add support for SDX65 QMP PCIe PHY

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 165 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |   1 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v5_20.h |  24 +++
 5 files changed, 194 insertions(+)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
