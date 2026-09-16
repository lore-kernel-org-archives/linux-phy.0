Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D7F9C88E7F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 10:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U0WOlEGBZS6KcFmmSCJb2FFCUKEfLzJI8veSz+zz62c=; b=3UkSjlziZ/cX5T
	XuqsTQrJ0m9u3VBZIlpN+4YRIXFDhFfOMaMaZ5xcb+s90o+3EdltXMN5y3ie9tU+ULGIIjleBYmBe
	Is3LGSS0rHArXicAlQMG3NHhbdLBL8bdoMBWJABbnRJhpDa8BsgbpZsZdyLWClQR9RWZbnDvK3z86
	+V4aceY4pb6Pm0zJET4WaH+yAOom3ULq6VcwDy4/60uEYrBbt3QKUdvVglWo6eYwPKF/tAi5MIBVi
	ED9P18Oc9wTjCj9ajKOqV//Lay8QTi6A1En9+UlZ72kNb6NIk2LqKRdnZhvJmAtnmFBtwHkE4kE8t
	uDNVRg2biFrIPQAR+9rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mkw-00000008xTb-1Z8j;
	Wed, 16 Sep 2026 10:20:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mkt-00000008xSj-1WGV
	for linux-phy@bombadil.infradead.org;
	Wed, 16 Sep 2026 10:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=eMpABhKDjwwEfFrmqVP3vSLbQ4e1XhSi8KwXNnEyKag=; b=S14n15eNPlW3U1VnLjedPIbWEn
	vmFrX2OwK35UHoWiI8NhUbSQB2tY6QiUhbJxjp8ULTZdiCvYymAkoBx20uMT/LCu3+3UodsgdMIpe
	+J4Ai/UujwASscvykg544ULg/5ujISChvh7xvM7pLcuiRDFgwGarPZ8uXORNeMSGWj3o5cgKGO+yI
	eSJnmlfFb3Amzcz9rftQG/5MFbHHOT4wTB2unQdiS1pM7arMIADuPSAydoN4UGCVwsaFc1XEYvUFv
	BLuMj/T8/VY4S7wTspJvLy65zpR0KW3Og7D73/OsNYLtqg+rWcbO3sECWmitfJIDqt6kFDjBLdBO9
	nYWUk6gw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6mkp-00000007jb2-3JyM
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 10:20:42 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G92j4R2478061;
	Wed, 16 Sep 2026 10:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=eMpABhKDjwwEfFrmqVP3vSLbQ4e1XhSi8Kw
	XNnEyKag=; b=BBsJHMIUqfoJ1YKmN9iS4XmwgLsHaA/M5xTXCJUeIPFvVu6RoKw
	5ZIHxlp7FMlz2RBGIl2W1/fD0pjPwhR4q9NsBjP/1XvbeIcjtCv20fRfIlXkWMz4
	p5aOC4lKkGXLD+MQGGJE41BIx7iMf3cpnyQyCqLjCeyFDNX0jSJDQIxYJL5ji9r+
	FpI9CZB76Lrpk2ptsBg8gnAvyqu33jIaR8edLRyxQc+rZ8MgWaSjsFzolUw+x9mK
	wocPKYthdrOGJXdC4LtEXZVrTpLI256/6AFhL9MzhXIaYb/vlXd/KoyEv1sHHhC/
	T5G5pLMGQmFvjcZRE5+QGdEWoyg2iP3Ce1w==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqjcksu1b-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:31 +0000 (GMT)
Received: from pps.filterd (aptaippmta02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.11/8.18.1.11) with ESMTP id 68GAKT1E1158172;
	Wed, 16 Sep 2026 10:20:29 GMT
Received: from cse-cd02-lnx.qualcomm.com (smtphost-taiwan.qualcomm.com [10.249.136.33])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 68GAKSwf1158147
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:28 +0000 (GMT)
Received: by cse-cd02-lnx.qualcomm.com (Postfix, from userid 4438065)
	id 540FF48DAD; Wed, 16 Sep 2026 18:20:27 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v2 0/4] Add qref and refgen regulator support for QCS8300 and SA8775p PCIe PHYs
Date: Wed, 16 Sep 2026 18:20:19 +0800
Message-ID: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-Reinject: loops=2 maxloops=12
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfXxCNJKwMQgqSl
 T9qm4oWH2/nrc5QZ9hWzRDAlI227yXbn7M+2XfIGZi7slZJbkBIYq7JpP6rzGg2HG/bmW3IrvvM
 u99GANPveH1Zmucm7I/0pUQorFCYuEk=
X-Authority-Analysis: v=2.4 cv=PsIG/AM3 c=1 sm=1 tr=0 ts=6aaa6d6f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=VdqzKS8jKosA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=MXBiqbVMOIXyEl0c16YA:9
X-Proofpoint-ORIG-GUID: 5BpUjaL6pX3F1ukrNCPpitCl-PAGtZKQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfXxWdRB/BXTmHr
 Q+yFfaxl63ZsosnLoChY+F9PP3pmf7h2k2xBsbEBqJrMj+M3SGq+3MLFarVvuOjg0fe2ftnmveB
 +6M7EWnkI+SQQpSRCxb0Kkx7ssQgYoemVKUzBNyqc4wLTI99YXL7LUG8ilirOCrEceEhDudeldM
 8S0pS66EZTpgGsacV8R3YVCNLr+rVXshIh89b0GryXk+hkCQlROj2saGM0qiQFAIsVxezElchRG
 QP0/HRow5tU8Sh+/v9iEGCzJXhBGy7Qr/BGFGq2SbUBnBmKCvAJHbdIv84sa6A85YTpq5GpUlPT
 LyhKxySUUYKiAzsDmQZ251rksZu8g03JeDy8DyRfX9V2JUaeficmOoe54JXi3NlCiB9JXghKQY6
 6khK+6BGnR9eMBw+FZg3frCE42UvoHmeh5Rig4bxL9Vcj7q/GBnoaQ2FS3vSMKJhtLfciSo44OV
 zmJI6qOaTjm9pqSr3Ag==
X-Proofpoint-GUID: 5BpUjaL6pX3F1ukrNCPpitCl-PAGtZKQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609160135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_112040_189326_3C33E9CD 
X-CRM114-Status: GOOD (  10.66  )
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

This series adds qref and refgen regulator support for the PCIe QMP PHYs
on QCS8300 and SA8775p platforms.

The PCIe PHYs on these SoCs require dedicated qref and refgen voltage
supplies for stable operation. Without enabling these supplies, PCIe may
be unstable and the system can occasionally crash under certain scenarios.

The refgen supply in particular works around a hardware issue where both
QREF and the PCIe PHY are expected to depend on refgen2, but QREF actually
depends on refgen3. This series therefore votes for refgen3 manually via
the refgen supply.

Changes in v2:
- Expand commit message to explain why these supplies were missing and
  what issue was observed (Mani)
- Remove redundant vdda-refgen-supply overrides from qcs9100-ride.dts
  and qcs9100-ride-r3.dts; the supplies are already defined in
  lemans-ride-common.dtsi which both files include
Link to v1: https://lore.kernel.org/all/20260810112735.1326807-1-ziyue.zhang@oss.qualcomm.com/

Ziyue Zhang (4):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add vdda-refgen and
    refgen supply properties
  phy: qcom: qmp-pcie: Add qref and refgen regulator vote for QCS8300
    and SA8775p PHY
  arm64: dts: qcom: qcs8300: Add qref and refgen supply for PCIe PHYs
  arm64: dts: qcom: sa8775p: Add qref and refgen supply for PCIe PHYs

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 27 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/lemans-evk.dts       |  4 +++
 .../boot/dts/qcom/lemans-ride-common.dtsi     |  4 +++
 arch/arm64/boot/dts/qcom/monaco-evk.dts       |  4 +++
 .../arm64/boot/dts/qcom/monaco-monza-som.dtsi |  4 +++
 arch/arm64/boot/dts/qcom/monaco.dtsi          |  4 +++
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  4 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 16 ++++++-----
 8 files changed, 61 insertions(+), 6 deletions(-)

-- 
2.43.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
