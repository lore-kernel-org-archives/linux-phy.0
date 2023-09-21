Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C5FE7070B
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 10:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iEA/O6BuWJFbTBgNO45MkLn8aK/s2TXYmjT+CzJdJgA=; b=3wcq7X5h5zc9Te
	nUW9wtlKe/A0bGgfjzBT/abF22OEoDiWmUc1vsKqERrO0CG6AMn1ccdRRHr6DYcyRQyiUD76GmMYa
	+GS7B1QsnDUEIqze6DmdNk+NrRAlToqv6UfUiDjc9K3MT428Xst68P/v+8n0iEbjmg0DQEDMkZenY
	81YmDnUu6ztpPMXfB552B3y0BXZNfLr6Avmm28ZKjPP9Qzgj5CcTZaHE//ZApDM/oAbJouZKDzYQn
	IBfe2E3gWGY9WOfYBIKDI34lHdrm53nC2JpSa5gm1PVHBs2PIJt/Hp4/DtIvBz92/QRkGaxmm8aDG
	/C2oZLQAw5UERxJJdXMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGom-005hPQ-1D;
	Thu, 21 Sep 2023 10:21:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGoh-005hMe-0x
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 10:21:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38L9lsFx016537;
	Thu, 21 Sep 2023 10:21:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=jvjyqmXjGaLDAO0qCQr4SvmyGJx0LScVYR7S+2vUExo=;
 b=l/I3CFVTgAKh/PXPQ8CZJ+aIq7mAxpzCjz+uyNZdnI5seHtCPpsDtZaSYY7rFcNBZ81m
 7XUz31Evjyab/cVPV7rhIoL1p4sZTPxmLy09pxrbxiPvTjjrcBirIEiuYFesHNJoiIvo
 zvvZFUzxf6oU9mPaE6mqsuVEfYeRD4Vf4XLydheZyGdysnPCWoMMSULOwbjyB5EtDJ7l
 dKrKqOZ2QqKAj31B6BzGsBbO3uu63z5jyFrSTZZjFU2WYCjwxbzNyYokPoKzY8I6hVNf
 xKCmp2CCohb41xRNqc075D2F6n3huF1NT9AIBqF1hKarkdhdaOBnRHdZc5Pvvp9tcEsa Uw== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8e0agrr9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:21:41 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38LALbDm023115;
	Thu, 21 Sep 2023 10:21:37 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3t55ekq7nm-1;
	Thu, 21 Sep 2023 10:21:37 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38LALbhj023104;
	Thu, 21 Sep 2023 10:21:37 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 38LALa3R023100;
	Thu, 21 Sep 2023 10:21:37 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id D6D301E1A; Thu, 21 Sep 2023 15:51:35 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, abel.vesa@linaro.org,
        quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, kernel@quicinc.com,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v3 0/5] Add USB Support on Qualcomm's SDX75 Platform
Date: Thu, 21 Sep 2023 15:51:27 +0530
Message-Id: <1695291692-18850-1-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 4o-s8FiR1q4jZRh_UdHDlXhpeb5Akvgw
X-Proofpoint-GUID: 4o-s8FiR1q4jZRh_UdHDlXhpeb5Akvgw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-21_07,2023-09-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 mlxlogscore=562 bulkscore=0 priorityscore=1501 malwarescore=0
 suspectscore=0 mlxscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309210090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032151_348775_5D4BCADD 
X-CRM114-Status: GOOD (  13.91  )
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
 - Removed the unnecessary change introduced in v2 of patch 2/5
 - Added Fixes tag in patch 3/5
 - Rebased patch 5/5 on Dmitry's cleanup patches.
   https://lore.kernel.org/all/20230911203842.778411-1-dmitry.baryshkov@linaro.org/
   https://lore.kernel.org/linux-phy/20230824211952.1397699-1-dmitry.baryshkov@linaro.org/

Changes in v2:
 - Dropped the new dt schema introduced in v1 for sdx75 usb3 phy
   and reusing the bindings.
 - Rephrased the commit message of patch 3/5
 - Removed stray lines from the patch 5/5

This series adds support of USB3 PHY support for Qualcomm's SDX75 Platform.

Thanks,
Rohit.

Rohit Agarwal (5):
  dt-bindings: phy: qcom,snps-eusb2-phy: Add compatible for SDX75
  dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
  dt-bindings: usb: qcom,dwc3: Fix SDX65 clocks
  dt-bindings: usb: dwc3: Add SDX75 compatible
  phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |   7 +-
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 165 +++++++++++++++++++++
 4 files changed, 177 insertions(+), 1 deletion(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
