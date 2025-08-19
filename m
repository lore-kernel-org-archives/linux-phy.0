Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C370CA0EED
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 07:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bZvOsjRas73bWG7KOqx0Sq49ZDhZWDTm5oqdWUpGsb4=; b=cSe+6yWgnJ5dg2
	ZHtaxQ8Tt17FYR5bXF8nLx7Nnibct+WR74BnSVzf8hR6ViGf6kEwe1wgR9ve4pRfJeIpCa0ZoP+nR
	F5iXsIy4kccT9WBMeZUPlbOJH4gChTYvS6emtImfSux8DngVWZ2lTqT7AYmaSnGaq+sCxqHahD2mV
	+x1dC/EfFXusrdFRxGomMyDAXj18HXuxn2JTpN5MvfnQxN9NuKduA6zI6pp/3/pwy84xkDvEK7ryh
	0HVsHBwA31C3Ovq1gmOWyhI2GrZS4kiZj76KFuJjNe4zIni2agnIqf7tZy7U6mgVR0MmwZFbY+Cig
	bMsF7ljUPm8g2zoFOG6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGxz-00000009hld-3V3C;
	Tue, 19 Aug 2025 07:41:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGah-00000009dvK-2a7I
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 07:17:09 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57ILgfNk026592;
	Tue, 19 Aug 2025 07:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=H5QDIlgZhVEw3Dtlp9D9mUIdHrXDnQNN+e7
	HzAzOPIo=; b=fDw5LhfhG/eyF1H0OpzmdupSL3omUxs1xVgCx8PxH0nlyvqHXjF
	ei+IuiMTnuG06kTmUHMrmZ3li+bORg9bsgXqclOZf/vebMMPlNX8PisXPhvMjlW0
	3K71HIbcrYYxKwcbULItbMQINutvZ4YXKFiyZ62iZQxUx/Iss9NLn28AcUKDHXIV
	aoZJtH0XTXdL4NBeWlL0RCQ03ZoeOyKRXH233cHjekAES3XHkUNJQZ1etpy4C8i5
	1DH+OYdXqorMCb0oYVhX7MA/BIrMCbLryZVSImGEnju5YFHSW6BAiKiCPNHcDOfO
	AsYy+63UifvD7PgRUwyFzoBdxuwMs469UrA==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48mca5h91w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 07:17:00 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 57J7GvTO031751;
	Tue, 19 Aug 2025 07:16:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 48jk2m3ekr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 07:16:57 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57J7GvBK031742;
	Tue, 19 Aug 2025 07:16:57 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 57J7Guix031722
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 07:16:57 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id 1F01A51C; Tue, 19 Aug 2025 15:16:55 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v5 0/3] Add Equalization Settings for 8.0 GT/s and 32.0 GT/s and Add PCIe Lane Equalization Preset Properties for 8.0 GT/s and 16.0 GT/s
Date: Tue, 19 Aug 2025 15:16:45 +0800
Message-ID: <20250819071649.1531437-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=FdU3xI+6 c=1 sm=1 tr=0 ts=68a424ec cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=86bffDG3X0gLe1KFPuUA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: WxFVZs_Fwo5aKPzD9KG2jo39w06X4rUM
X-Proofpoint-GUID: WxFVZs_Fwo5aKPzD9KG2jo39w06X4rUM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDIwMiBTYWx0ZWRfXywtO31nzvZLw
 quQPjX1jSty5pk8m79kfew6M6JJsOQYML4yiWBVyIdLeqndZBgLmy88udXzMboeWE6Kt6Tw8nKd
 RNa9ulvnQxkf9P/h4mgxXI9vjokUjVuKOBmkmws9MTVNAdXAsZitRXzYokqGjFJt1280LbeyCsL
 jOQTRWSQpHm5VRetcSAprpWpySsaglMGhC8UcUnL/oJZZZ4lio47gD/4T+Je5WJXYlabvBhSZyA
 xXsQWGEEyzvJBr3mIigLU58+lMBW7RPNiva8WgYhMLuUDQoDmued7DkrE3ezxSj1x+v7gjOqFxR
 zAc+sr5HGB6UforULat9Ysj0diA8RQ3QF0hmwbTmGsrSJrUwV+4S4pKQ7atLtbNluJUD/3qVaux
 QWetWxzd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_001707_658528_DF0B2E40 
X-CRM114-Status: GOOD (  12.36  )
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

This series adds add equalization settings for 8.0 GT/s and 32.0 GT/s,
and add PCIe lane equalization preset properties for 8.0 GT/s and
16.0 GT/s for sa8775p ride platform, which fix AER errors.

While equalization settings for 16 GT/s have already been set, this
update adds the required equalization settings for PCIe operating at
8.0 GT/s and 32.0 GT/s, including the configuration of shadow registers,
ensuring optimal performance and stability.

The DT change for sa8775p add PCIe lane equalization preset properties
for 8 GT/s and 16 GT/s data rates used in lane equalization procedure.

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>

Changes in v5:
- Add support for 32.0 GT/s
- Add warning print for speed higher than 32.0 GT/s (Mani)
- Link to v4: https://lore.kernel.org/all/20250714082110.3890821-1-ziyue.zhang@oss.qualcomm.com/

Changes in v4:
- Bail out early if the link speed > 16 GT/s and use pci->max_link_speed directly (Mani)
- Fix the build warning. (Bjorn)
- Link to v3: https://lore.kernel.org/all/8ccd3731-8dbc-4972-a79a-ba78e90ec4a8@quicinc.com/

Changes in v3:
- Delte TODO tag and warn print in pcie-qcom-common.c. (Bjorn)
- Refined the commit message for better readability. (Bjorn)
- Link to v2: https://lore.kernel.org/all/20250611100319.464803-1-quic_ziyuzhan@quicinc.com/

Changes in v2:
- Update code in pcie-qcom-common.c make it easier to read. (Neil)
- Fix the compile error.
- Link to v1: https://lore.kernel.org/all/20250604091946.1890602-1-quic_ziyuzhan@quicinc.com

Ziyue Zhang (3):
  PCI: qcom: Add equalization settings for 8.0 GT/s and 32.0 GT/s
  PCI: qcom: fix macro typo for CURSOR
  arm64: dts: qcom: lemans: Add PCIe lane equalization preset properties

 arch/arm64/boot/dts/qcom/lemans.dtsi          |  7 +++
 drivers/pci/controller/dwc/pcie-designware.h  |  5 +-
 drivers/pci/controller/dwc/pcie-qcom-common.c | 58 +++++++++++--------
 drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  6 +-
 6 files changed, 50 insertions(+), 34 deletions(-)


base-commit: 3ac864c2d9bb8608ee236e89bf561811613abfce
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
