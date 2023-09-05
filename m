Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D2B4C83F2C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 10:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=31FW0j1xth7i6GU9h+yVUVJQuC+65ePwglG8bFw0N2I=; b=0ahWouNvLk1YTc
	qa8wOE9Ulq32LNfzrl++LxkwnEgRGw7nYGkS7h94KakVia1DGUiaS4OjX331NmiiZg/knQ2Nx5X5i
	o4llZiUTUq1l9yzQnMymnQH6xyfq2FBkTg0adgV7UV45pFUc5af01VN/dlt8T1DOgT56Ajblu4MYt
	4i7ou0oFV2dhS/MhVLpy7H/iiYadGXd3EWM8zOZnlhJikyAm9XbMT72fCVPKnvUYCKcrdNsHeVxvO
	KlTt6+9CXFzx8ySXLeQxiQpuBl3Q9c3rLTlosyKwguV9jyZ6zS4alZqa8NMahrfA206a3neEodIta
	A4T+Gg6SIJU+0VjAdTIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdTKj-005mzS-2A;
	Tue, 05 Sep 2023 10:30:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdTKg-005mui-29
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 10:30:56 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3859EVfI010513;
	Tue, 5 Sep 2023 10:30:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=TpfFJN53W+ViGIa50jhbAyPdNZv9znLM1xPZ+sjUNCk=;
 b=HwC2ysD+Vno8TF7HoUYRN3i1ZjeQ1/tMmUKLDzY3RoV3eb53PENZVouMflLRUEALOe3A
 Pi5Prm0e6VQ6MZZOQtuzWw7r9vo/IyDiUvTRm+/xipP0QQqYcv1GtcYEi+fvPD/b4Ypm
 7rZr6Rm5NHoQDrvV8kyYgRGsm+kUrydekK+2nYv103nGGltInN2zfrjXIIJ9iZVQ8fEQ
 PDlId4Sp0X/wGqYDb8pdhTlWcACIRpqo0cfIO8bdc5TsNb3zai/cmo1ze48WOj/Cf0mB
 wPkGV8rnFm7poKTMkdwp6XsPitN7dtybVcvjpw5i6iVzP6lnRs7WwPqysh+2odj4L0Nd xg== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sww32rm8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Sep 2023 10:30:44 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 385AUeEm018085;
	Tue, 5 Sep 2023 10:30:40 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3sux4km16c-1;
	Tue, 05 Sep 2023 10:30:40 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 385AUePT018073;
	Tue, 5 Sep 2023 10:30:40 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 385AUdSZ018069;
	Tue, 05 Sep 2023 10:30:40 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 2B7451D0C; Tue,  5 Sep 2023 16:00:39 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, abel.vesa@linaro.org,
        quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, kernel@quicinc.com,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 0/5] Add USB Support on Qualcomm's SDX75 Platform
Date: Tue,  5 Sep 2023 16:00:33 +0530
Message-Id: <1693909838-6682-1-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: zDlUmFKepkqD6TWCL_xcXNI5qJXA0fz7
X-Proofpoint-GUID: zDlUmFKepkqD6TWCL_xcXNI5qJXA0fz7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_08,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 suspectscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 mlxlogscore=556 mlxscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2309050093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_033054_874305_015E3D09 
X-CRM114-Status: GOOD (  13.10  )
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

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |  40 +++++-
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          |   7 +-
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 158 +++++++++++++++++++++
 4 files changed, 205 insertions(+), 4 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
