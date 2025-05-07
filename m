Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B972C3ABC6
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 04:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6xV8i9vf0mE50kfhKRG07kZUSCb4rwGPc/Q6V/WLyOM=; b=f1kmGUmGh5q49+
	WN5GOnENigspT7JUvIDIvlodu8Vre0aQ7AVp9gqVUcGskHpvJ8DvwSnQRhUTcj6TZzRXYcXx+boqS
	paBKqkG/YZyh+QMNgcIfUpeBus87ILaP/nxeNKKotHP34rcWfUtX1aNKUKeI6Wv62uKfzu0zPQMeG
	mPePrw8lOmm0t7hSKNeWer7aP5no9WxPzcWZkxuodF9hLfG6/cNlaxcllN8aux7bnjZckINONObo/
	71NTY7zMQvYXR0F44OOUjwFmFp/57blwVKE8ZW7S30ymnyTT57LmZlU5T/Eper5P1WFvlzgpLokJm
	ynux251ziS1/A9mDXHhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCWCn-0000000EAQH-3JW5;
	Wed, 07 May 2025 04:16:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCVGX-0000000E3OI-42IP
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 03:16:15 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5471H848021660;
	Wed, 7 May 2025 03:16:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=zYokss55O/GLnxeuzWbIBOYOR9Rnc5WYu8j
	+xMV1+xY=; b=mpA2tUk1cHhaNbX9f3jboLRKCYUmTYRx35Nv4exrUaloUvxB+MP
	0hHV8shgii6Xl5eOKSEfF4KZsZFtVlnZ0Nti16yFMEefuglKvsTMdstf/DupuwS4
	cUatwFYTQSn9UQ+sUabOpkAkLW92y4S5d7FD+mkugTwJGI7ZoNTgHf2XUkEF8t+S
	6MqzSlGGvtsNBvTVi2yayj9tZ5209BzINaQNK4SA/umfEyFjDppFFIdJReMEpBk4
	/LIzB9/dO2QZAzL79AoSyga0+WGugjJZvyfTd6mzximWfYHphrmlRAml9c/dtaQS
	Wj13MtM/H34uiLUehwFDnmjAsupJQf1cX9g==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46fdwtu1ee-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:05 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5473DacF010261;
	Wed, 7 May 2025 03:16:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 46dc7m60td-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:03 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5473G3Pi012810;
	Wed, 7 May 2025 03:16:03 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5473G2eL012800
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 May 2025 03:16:03 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 82F052F34; Wed,  7 May 2025 11:16:01 +0800 (CST)
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
Subject: [PATCH v4 0/5] pci: qcom: Add QCS615 PCIe support
Date: Wed,  7 May 2025 11:15:54 +0800
Message-Id: <20250507031559.4085159-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=VPPdn8PX c=1 sm=1 tr=0 ts=681ad076 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=FMqLFO0IG5DNS-mwCd0A:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: pPUoP7yaSUtiK8mPO8xKwoVYiaBCdh58
X-Proofpoint-ORIG-GUID: pPUoP7yaSUtiK8mPO8xKwoVYiaBCdh58
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA3MDAyOCBTYWx0ZWRfX7Wss9tuBTx67
 Ai9x9uwy+aHLK3dDCbv2tktNM3nb/ZaboBz9VqQrYyluv4eFqazJKzeLMtVfIuFZROko0ezr5vs
 e3Y+tvPq1irsdCiJkk1uwrTMv0SnwoGuFD1NAp8IMjfGehKCXRcyOYYuebPQgsGjkYVeskIy1PR
 6VJKlIih+liveFnNPevmlCNADLQf+NA7loIwHc1vVKAb3ITzFQOPpeTouQHDGUGnAMSRFeFpAYY
 y7yEHsJDZLhtXyToPhSmvlUxVOYUulIjekk02SEV+A3Sc0KoEhRIWShyjR3CfBLqoB6OuPayXel
 C+AJepF73TSOrBBVvOVlJyg304RVqA1TreOVrH/9MygbQiA9LtVzM3S9qCOjTYQC2e+RE/sMcrT
 IBd2UqTzE+8LqZypjoxXuTfA11B+a//oOlCsRNc5LLMi9y7FAc92mFPTuQRzvwBqC3dynmqG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-07_01,2025-05-06_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0 mlxscore=0
 bulkscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxlogscore=427 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505070028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_201614_004373_03AF406A 
X-CRM114-Status: GOOD (  13.39  )
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

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Have following changes:
	- Add a new Document the QCS615 PCIe Controller
	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.

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

Krishna chaitanya chundru (3):
  dt-bindings: PCI: qcom: Document the QCS615 PCIe Controller
  arm64: dts: qcom: qcs615: enable pcie
  arm64: dts: qcom: qcs615-ride: Enable PCIe interface

Ziyue Zhang (2):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings
    for QCS615
  PCI: qcom: Add support for QCS615 SoC

 .../bindings/pci/qcom,qcs615-pcie.yaml        | 165 ++++++++++++++++++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +-
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  42 +++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi          | 146 ++++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 5 files changed, 355 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,qcs615-pcie.yaml


base-commit: 8fd51b270d58f8b05aa58841ec38c8a6b4ab09ca
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
