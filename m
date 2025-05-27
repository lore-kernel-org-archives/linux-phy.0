Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB955C5B549
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 07:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a8XeE7vNbIKWJeXrUw1t8ajTI5DS1iOpN8F/qobOOfQ=; b=nWSUkILet24SvO
	9+nhD4o9B24lmc0Xu6UVJfNOltmOoIUeeOEgHoPtQOh588V776XC+stt5cUEaGocSWokSc2jRWQ2l
	0FSN299Bsm8LAuA4JHxDuDNdNoiXBH1yZuAYIKo/3c19CgEoH2QrxAZKw8VQvEJmLFVYoqH3lG25G
	dW7HdLxLmcDIK7EF+kttBHPHKSjdxcbQbTYWUqNGqhY6JAzapsH9I4R8VIYeO0joqHTr0KGUVYXRC
	er46m+RxKpAKwF1+H/HIDcbzIvnh+OAf00aRlbhhEuv6roYUDN+vlYZZmzL+fW9Q7lPMQzARxZ3Fq
	B033vnMWGGDo+R1Lskkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJokL-0000000A9kn-1qp4;
	Tue, 27 May 2025 07:29:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJocQ-0000000A934-3O6H
	for linux-phy@bombadil.infradead.org;
	Tue, 27 May 2025 07:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=vXLWBrAPHYOKMWfPcah4/KdLo/tLyhzeM4qgkaB9mcc=; b=HnC+FziWRpXwVFsGmuPBmsewwM
	Un1GSp1ZXXdqBAGeplZ5Vgnr5P1sJf81wp31p5avVO+lrGwS2ewhELRF/SmbcIcnC/xriIAMdIvtg
	3hvprs+Davjp0G4qhSNjyn4gCF189bnCb7ThJWykLIOLfmarcHZ89yW4w3C4WMfkmOwusvMEL6tAf
	EJC9PMy6WrfS9dL6cOS/3zl1Gxm1FPEYuf6WDvdRnvbrkJeT8sc7Lu1RG8ETIJ3c4TXQcXxsB/qHJ
	cRUQBiSKV988351nLE+Y6yis/9droy7RP8s31VKFFHd98cz7Tj32ypfkIjJkYhw5LTiE6R5CXE9li
	QNm/yOyg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJocK-000000021Ja-3hQQ
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 07:21:01 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54QMC8Gh027572;
	Tue, 27 May 2025 07:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=vXLWBrAPHYOKMWfPcah4/KdLo/tLyhzeM4q
	gkaB9mcc=; b=BdxKKiDkVCge7N7uMfFzqUwFH2grKdhUWjY5gQwFUiDqgnnSKb3
	d8slv0LdE89CLhmBVkWMVeYio+OysKCozNanR/cMlR9J3kkeGkY4Gfgl1hHflrq2
	qllk96kpUhyCIRCaFre8KSTFAa9aWeIf2s3TvX6rbMtE7wMxWnd6HoWcOg4AJZAF
	uI23R1POS1J3OLe2iQxMbVk4nYG3eL2D0in3ck6sP0FnxFv/NaZGstBsdqtXYKGo
	ilFzedaLuCvTHSNbYJGJNL+dmAfPSQ+rCwleau1LYBARgc3Moqln5qbRYcKTtAod
	x8+DKhgdN9h7zwK4+h43JMVaA2OTvSREAgQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g8wyur-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:44 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54R7HXcY028192;
	Tue, 27 May 2025 07:20:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 46u76kypsq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:41 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54R7KfRJ031372;
	Tue, 27 May 2025 07:20:41 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 54R7KeXC031363
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 May 2025 07:20:41 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 6970534FD; Tue, 27 May 2025 15:20:39 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: lpieralisi@kernel.org, kwilczynski@kernel.org,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
        krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v5 0/4] pci: qcom: Add QCS615 PCIe support
Date: Tue, 27 May 2025 15:20:32 +0800
Message-Id: <20250527072036.3599076-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=683567cc cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=Vf7fM4WGy8ubjBm1pJIA:9 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: mbQNpZT7pHYL6pgp6u0sCGvDrPGO6Oy1
X-Proofpoint-GUID: mbQNpZT7pHYL6pgp6u0sCGvDrPGO6Oy1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA1OCBTYWx0ZWRfX7c2mdtG64O8t
 ItVoKgHe6GhJE0GjG0qQwZcPUzU81REzrrPEy1XM11IyburPiXK7pTDgkv6+CmVBri+SOHmtb5p
 pBE+edxy3vFystk+0IoxD6ZyIlbWfpVrWR4TcyyGDYJqFQP0X++R2dm3B1PV5K8jwIFMKpFoF6H
 UDE3+goBaZXuslhMvGeUoHRNob7NWW5NXyrduRszRegs0gs3qTemVymz+4FmARu6s7rteXMl0Xj
 BMHhkA3Dua1FzREXH5JmK304i6qhWWfGbzqtYIZiI907Ux4Jxefvr2fG9kOTCvduua4lfiD3zIv
 LkG+wBEffw7CVF3l228xPJc8EbqutcUfLjBmI9SwPa5QAJJZYt6R3o854zkHnWOCZiRghwJ9BqX
 p+dtZhPcW3bSPPRD7EOAz0p91r826o3iEEmiGfRhuD4maZ3vMI3ItceTXO13r4y/4DOftxor
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_03,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=633
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_082058_229015_B4915567 
X-CRM114-Status: GOOD (  14.17  )
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

This series adds document, phy, configs support for PCIe in QCS615.

This series depend on the dt-bindings change
https://lore.kernel.org/all/20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com/

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Have following changes:
	- Add a new Document the QCS615 PCIe Controller
	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.

Changes in v5:
- Drop qcs615-pcie.yaml and use sm8150, as qcs615 is the downgraded
  version of sm8150, which can share the same yaml.
- Drop compatible enrty in driver and use sm8150's enrty (Krzysztof)
- Fix the DT format problem (Konrad)
- Link to v4: https://lore.kernel.org/all/20250507031559.4085159-1-quic_ziyuzhan@quicinc.com/

Changes in v4:
- Fixed compile error found by kernel test robot(Krzysztof)
- Update DT format (Konrad & Krzysztof)
- Remove QCS8550 compatible use QCS615 compatible only (Konrad)
- Update phy dt bindings to fix the dtb check errors.
- Link to v3: https://lore.kernel.org/all/20250310065613.151598-1-quic_ziyuzhan@quicinc.com/

Changes in v3:
- Update qcs615 dt-bindings to fit the qcom-soc.yaml (Krzysztof & Dmitry)
- Removed the driver patch and using fallback method (Mani)
- Update DT format, keep it same with the x1e801000.dtsi (Konrad)
- Update DT commit message (Bojor)
- Link to v2: https://lore.kernel.org/all/20241122023314.1616353-1-quic_ziyuzhan@quicinc.com/

Changes in v2:
- Update commit message for qcs615 phy
- Update qcs615 phy, using lowercase hex
- Removed redundant function
- split the soc dtsi and the platform dts into two changes
- Link to v1: https://lore.kernel.org/all/20241118082619.177201-1-quic_ziyuzhan@quicinc.com/

Krishna chaitanya chundru (2):
  arm64: dts: qcom: qcs615: enable pcie
  arm64: dts: qcom: qcs615-ride: Enable PCIe interface

Ziyue Zhang (2):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
    for QCS615
  dt-bindings: PCI: qcom,pcie-sm8150: document qcs615

 .../bindings/pci/qcom,pcie-sm8150.yaml        |   7 +-
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +-
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  42 +++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi          | 146 ++++++++++++++++++
 4 files changed, 195 insertions(+), 2 deletions(-)


base-commit: ac12494a238dba00fe8d1459fcf565f9877960f1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
