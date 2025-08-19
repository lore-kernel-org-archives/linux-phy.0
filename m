Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC05ECA0EF5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 07:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vlfqv+UuB/Dc9J4BgktS28Rq1QwigFpZBIrv0JvMr2Q=; b=xKUnnPIyAAxYkg
	Ct1T5R8CudmhdJ8s071IGrJnhCZqNr6dIrnmDSbZBy26FKaynxSAi4eFn+D09bCPhjxSxzRlKrNog
	5r2GPd2y+VcekS2049K2b0rBkEyq9zi9XEAXHnj5LkBhV9mYgRPd9YF3qIMkMmSZaAWh1JtH4HCZj
	My8Ubu3XLjuOrKJZroSYO5rcJwHfIs0+qFcq5Yklax/e5t5Be0ZanyxVRJ6oQflU4dbAo8ZE3MCEg
	HWTIL/9jMEFVy9w8DssnhLJW18CHvG2SLNR6NTjNCEO/+ge7OvVSaao+3YwMNtdH2yLhAZO4N51LQ
	H9zeVNEqVKJTrrrkggaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGy0-00000009hmE-2bgr;
	Tue, 19 Aug 2025 07:41:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGai-00000009dvL-1TxF
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 07:17:10 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J2XO6m025437;
	Tue, 19 Aug 2025 07:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=//1D9BhlkxD
	UMN81wQ6h1zTzvFR0McEnfmR7capf9gc=; b=SmRyhrOvszwe47aF9PWdIeM817U
	RV8N+lpbKiWQItHBsB3DkJYhuxa9MC2VA92JwVhcO2oN0lCrlJKFpMY7hw3PW6bB
	ZoQ4egD/zLXK4EyA7BNV2EWOZDnHWF1laRIs2xrQjC/a3822beMUwthbjvVklfMc
	8AYRhiv36hm1g/fkWSBwcAZYw3lRgU4D8jYemxhFDPqMhuyOTdiATzFk3AZIkv67
	CePIai1UMbpAVasKBWiWXvB6Jl5E3Lh4gqK9PaTmx965shYBS7pTgQvHPA04GpNx
	33Hnfja/G7Tmc2aHUxZgmLYJYFQEpZg6nCmviWz5lwGtohYB1DU9QUZ3EXQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m71cja5x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 07:17:00 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 57J7GvVq023673;
	Tue, 19 Aug 2025 07:16:57 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 48jk2m3aeq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 07:16:57 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57J7GvxR023663;
	Tue, 19 Aug 2025 07:16:57 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 57J7Gu9N023660
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Aug 2025 07:16:57 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id 32A4F522; Tue, 19 Aug 2025 15:16:55 +0800 (CST)
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
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v5 3/3] arm64: dts: qcom: lemans: Add PCIe lane equalization preset properties
Date: Tue, 19 Aug 2025 15:16:48 +0800
Message-ID: <20250819071649.1531437-4-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819071649.1531437-1-ziyue.zhang@oss.qualcomm.com>
References: <20250819071649.1531437-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 1XUpdL3SLKl8GS8WupVk43IarHkXwmFV
X-Proofpoint-GUID: 1XUpdL3SLKl8GS8WupVk43IarHkXwmFV
X-Authority-Analysis: v=2.4 cv=IvQecK/g c=1 sm=1 tr=0 ts=68a424ec cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=XhQEiPrLEPsAcZFVs94A:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDE0NyBTYWx0ZWRfXwZ7aui0N68zB
 M/WTTO1Lh1dk9FuGsk8h9YMoOv3WrUDJOkITulpmuTvouw1llIzSDjeQ5b7kt3wYfmXzbZuGaFl
 s+ak6hPAhR/M4o4Uj8xYypV/K4YClJNoKM8PSYCfZpq2MXXgIUOfEV5jqMpVwTYsKlO1an+Kh4q
 GcZZJGgkLLXjQEnBLhdVPbMkv+Vin/G/Ud9fdRH2J1LAEly+NkYpDsBxEvsckPbQIeaesPVEkz+
 JHdixMCwHAmB0kfGAM9dFWKxLSfwOTzAgIi6gs5o9UGBUxMZEW6kYshDUAv4HF2Z5QJX932ARvX
 HNmVrCq02rVNSl629e4hGV628yt9sErrWHASzlhYjrxNbw+ff3wssroCUNmtFo2zxFaS7K54iT4
 1aLool1l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508180147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_001708_418980_3E771208 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
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

Add PCIe lane equalization preset properties with all values set to 5 for
8.0 GT/s and 16.0 GT/s data rates to enhance link stability.

Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 64f5378c6a47..c7a09c3605a7 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -7657,6 +7657,10 @@ pcie0: pcie@1c00000 {
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
 
+		eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+		eq-presets-16gts = /bits/ 8 <0x55 0x55>;
+
+
 		status = "disabled";
 
 		pcieport0: pcie@0 {
@@ -7827,6 +7831,9 @@ pcie1: pcie@1c10000 {
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
 
+		eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;
+		eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55>;
+
 		status = "disabled";
 
 		pcie@0 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
