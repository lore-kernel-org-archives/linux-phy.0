Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 265C1C61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 05:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q8QY31Gxk8K04rtuoNRNQhq/aDuw7Td09MS4dUmwSpA=; b=3rD6xgZtVUwior
	UXNjejdzxfqWrkwlZfBtO37Oyx2ehH+hRVnvcDnGnpSXIyfgLZaJA3CnH+SH4am9QvQ7ERcPkOcfq
	21AmQH0gqS01kaeMRZIUbWBhPiIX6lnhmPhfakYvJzNm34ewssK0GXvgXn9bCdFt+PxXXu/gRHOKQ
	VwMyJ/DdnTClFxGejlGNhQU76+WvC3ERJ8tu8Miunl4wIfJipqTCE/mZG8kwVO7LgdVJ2JgJ2mGSV
	LWYVzxN7xN/7wQEAYdG0qcTHQm0xR5mZ6DNzl54bgvY4mXJJkXPg8DdWR+ZBJL9dOAcK43CQ+N6Te
	rLbU9Wd/fhtYwSE+tMXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ3Fd-00BNbO-2v; Mon, 06 Mar 2023 05:19:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ3FZ-00BNaF-3R
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 05:19:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3264XMUX007353;
	Mon, 6 Mar 2023 05:18:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=T2YRtykldqSv9nxcM/r272FE9sEvHFw89ybca6/KIpQ=;
 b=SXB9+JUHxRXZV3QIotX/dtFfv0v7z5E+pNZShX8liDvyrZWPbsvkrpj1N+bsO8cW5Yqr
 I3ToJczFivOjJ2rzpBnUWmYFQisL7vuNYDs4IM7IcfhD3H4hwPtMV4jzi98SY/60waGE
 PpBRokfGULYJhQCZkcS3R4aUTbsKjmGjrnG75i01g0Q+q5T9Yyb/n/sqMz2eFx9NCZl1
 yapzu1YVKM3fPTclniztyTUss4zfgeLv1vT3v3I/YD7MyfYAT3/XKWkNg7EHHMcKqoK2
 kw0iMGXEiTl4iH1k2LWfb7BHNmUN4zYjLh4tB8Z4HXs9HZEcOf809I0tu6E6a62D3wvR dQ== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3p420c3b5e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Mar 2023 05:18:52 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3265Il2w011020;
	Mon, 6 Mar 2023 05:18:47 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3p4fgk72et-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 06 Mar 2023 05:18:47 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3265IlZl011012;
	Mon, 6 Mar 2023 05:18:47 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3265Ik5L011011;
	Mon, 06 Mar 2023 05:18:47 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 172EC4F98; Mon,  6 Mar 2023 10:48:46 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, manivannan.sadhasivam@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH 0/2] Add support for PCIe PHY in SDX65
Date: Mon,  6 Mar 2023 10:48:31 +0530
Message-Id: <1678079913-27945-1-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: pRjMpeR0P27gfHGdAkp4lVCwsHw5nJ53
X-Proofpoint-GUID: pRjMpeR0P27gfHGdAkp4lVCwsHw5nJ53
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-05_12,2023-03-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 spamscore=0 mlxscore=0 impostorscore=0
 malwarescore=0 adultscore=0 clxscore=1015 suspectscore=0 mlxlogscore=798
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303060042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230305_211905_296795_03AEF515 
X-CRM114-Status: GOOD (  12.81  )
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

This series adds support for PCIe PHY found in Qualcomm SDX65 platform.
The PHY version is v5.20 which has different register offsets compared with
previous v5.0x and v4.0x versions. So separate defines are introducted to 
handle the differences.

Thanks,
Rohit.

Rohit Agarwal (2):
  dt-bindings: phy: qcom,qmp: Add SDX65 QMP PHY binding
  phy: qcom-qmp: Add support for SDX65 QMP PCIe PHY

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 163 +++++++++++++++++++++
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
