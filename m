Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EDF9C3ABC0
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBpM+IfahXedndrK3wDG4g9WOffXIvPXxthFNp1wmKk=; b=okW2JoTbej30Iu
	xQ6P2MAmfYz2LnaFEiIWYljWEns5wElF1yRpF085aMJzH+gbx3B8+VRXs6hKdN2gwhYL5BIYzbhgf
	bWgWbvZe886tALGSr8PEr30lUoP8sx3peVdeSodXXiyJJUvNvKe8pbOn/ltxcHossgSUcux//2T7S
	jK8ZjrXC57HaHDp/FmGuRjHagigQML/prjAFsevOn+Sm3KRt4KM66EodS7EI8QYsnHIgIosBdFGMu
	/Lvg36AGCLvjc9UvF9TTj4WxRe/ULDoCnugohBriFQKJSrNXnxnMRdEafSGOOd/NO4UO2mT4K/3Vt
	6Yae53E8w6ucK6t0zocw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCWCn-0000000EAPT-13jY;
	Wed, 07 May 2025 04:16:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVB6-0000000E2j3-3cqo
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 03:10:38 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471GvaP021991;
	Wed, 7 May 2025 03:10:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NehKGHnpjn1
	Q6VEQzNURH9HW3M+bD/GZ+/LCmQdSxY8=; b=EPMN3Lz/8wHMen7BACuTUUfB8X2
	ggpeLU5i4fhttgJUUt+RUOFDy/IhBQqDcyDlR/bw8m5twWYFiVVLYLVOLuMjRV1l
	S4DU8GZ76Fr2h8SnRSBlxnzIocDV1E0ifo+P9rEPJn6P5WFsYJMXflZ+sAS5jpT4
	l6D2qixezguakTWKri6KdsPnBBOwSoJlyUQ+8dNoBv8YaKv5SuYtbwZL2m+0C5CN
	kHENHP/h/JLt/0l5bwRJOK8UCj97G/tw8YrMGwVDP9yI7ZaZIAS3VRRLcz5sVdfr
	TziLWujeAIGnl5LoP6VfoPu/7pX1n7/JQNSLXqgOq58+9w5mHQrepo8kU0w==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5uuv9w4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:10:27 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5473AOhK006128;
	Wed, 7 May 2025 03:10:24 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46dc7m5ysj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:10:24 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5473AOXP006122;
	Wed, 7 May 2025 03:10:24 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5473AN1g005947
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:10:24 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 72E452F3D; Wed,  7 May 2025 11:10:22 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v5 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for sa8775p
Date: Wed,  7 May 2025 11:10:14 +0800
Message-Id: <20250507031019.4080541-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=L9cdQ/T8 c=1 sm=1 tr=0 ts=681acf23 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=tAWiX01tdBucjzfsbJgA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: VqHZ2eVrxvxyoPqdSm3A8yLEwzOQgqY4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAyNyBTYWx0ZWRfX7KeMtdaP0OJD
 ryAwGYeA5T/VvbsIgppzbgheZrT20myfJ8idtoSFNOhRuyGTuGUDYDVVKJCCnKbYD7hzFhp02w0
 0DaDOZa59PI/aVyJ24TLN9Xjwp9I3MgNQR/mV0XJkrvr9G/6lDG5t+sAgqVNI6wuUEUnwqOVRzC
 eMQRa7RdHI+A7iRh+v3V+uRYo8tSZN33P/Bamp2sCJ/U16cFmteoFuIn/Xw4L+Gz4ZSx9CIplrC
 Yc+iOaBMtHZmEcc/SfmVJCQAq+zabNisMOsQW0P5tsLrSSoy2U1lmIaaFnRnCt62ZIhWYKQXEq9
 0yxai5jKSmswk6zSZrm5HtJ19iP+dGGsfENhi3NUGcUUVMuCLy44Z3ythzgeb6ihAm3OiQAJ0pf
 Ty3NFeNvDwvUYBmLSsLP3L+uoFnT9EWU3Gv+SqBZfa3+3tMJ8OmiJb8Dga/NB91AIOnAcfYo
X-Proofpoint-ORIG-GUID: VqHZ2eVrxvxyoPqdSm3A8yLEwzOQgqY4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_01,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=999 spamscore=0 suspectscore=0 impostorscore=0
 mlxscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_201037_021710_D908485E 
X-CRM114-Status: GOOD (  10.67  )
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

qcs8300 pcie1 phy use the same clocks as sa8775p, in the review comments
of qcs8300 patches, gcc aux clock should be removed and replace it with
phy_aux clock.So move "qcom,sa8775p-qmp-gen4x4-pcie-phy" compatible from
7 clocks' list to 6 clocks' list to solve the dtb check error.

qcs8300 pcie phy only use 6 clocks, so move qcs8300 gen4x2 pcie phy
compatible from 7 clocks' list to 6 clocks' list.

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 2c6c9296e4c0..a11a7e78636d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -176,6 +176,8 @@ allOf:
           contains:
             enum:
               - qcom,qcs615-qmp-gen3x1-pcie-phy
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -196,9 +198,7 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
-              - qcom,sa8775p-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
