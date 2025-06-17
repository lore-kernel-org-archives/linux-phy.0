Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA54BC7115C
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 02:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jr2mg0BxBfKoSZHHh8FNXtHjhchGwu9b44uV42puEi4=; b=dSSQVlNzQj4nAX
	Qx2F4zAo9ksDQg6tC2WGp+n5WHZX49BXYQ/Q7lI7/4kf8+9ZThiv26nQrBl275M4gqGgNt2EmLA+k
	VgnQKDYpUHiTxezYyIIbkue85vm6ddAjUlru95hVsaZBqsgR9Hl7kwEpszgqiGUbrDsm75Rw+WF4Q
	/l5bTDta1DZMBaHunWu+TGqZfJL+8h6XpnsTtXiwe+RtQMJZR7b3CCZgFp9APtHimLETEYnsLp4Kh
	7GWjfp5duqVLtJzkjKfk0st0wmBiDkJVfnCqwsbGDIqzRcsClux2HS430d5p/Z0pAID5zZ1IfSIZS
	dEkkN0Rl8OtB9rQ0uURA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRLuW-000000060o5-1rZd;
	Tue, 17 Jun 2025 02:18:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRLsN-000000060Sf-4AwB
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 02:16:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55GKCPif024672;
	Tue, 17 Jun 2025 02:16:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RZDbmWCB7vB
	1sSjKbroaoJW/AdWelJ+QzFQ3matJB+8=; b=lYGavRez9c0TlYCUd7NgXc1VLYy
	6HHuMwguTA3dC2i7ph0begdNuEMMzh7PbRZu4KYXEJOTSdGlgDAXFaFN7kdOoZso
	4643BZL95jShAUBG0hJsGNn4IIRdbECDO8vAj+/FgdarW5re5VP8tm7fcx0x+iCe
	0XG4fj5VUgDdRZ3DFQ6YAMzplNuIcXp4PquQfMukKiHXoJod9zeq4d2ZhyLa6Ijr
	xe5+xx+jo3yxKuDlVMNpT0Srl4UURXiCnWh6Mmo0CC4MnfjNtRaVxy6LamINbbS4
	Iw9gI4jCF6wkbJPLDeUgISvMnnauQxB79BAO6SbZmHO2q86JzbVeFN72j4A==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792c9xfwr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:31 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55H2GTIS014424;
	Tue, 17 Jun 2025 02:16:29 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 479jt4gb0f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:29 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55H2GSxY014406;
	Tue, 17 Jun 2025 02:16:28 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 55H2GSgK014398
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 17 Jun 2025 02:16:28 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id D86B2365F; Tue, 17 Jun 2025 10:16:26 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
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
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v2 4/4] arm64: dts: qcom: sa8775p: add link_down reset for pcie
Date: Tue, 17 Jun 2025 10:16:17 +0800
Message-Id: <20250617021617.2793902-5-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
References: <20250617021617.2793902-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 55xi-o5Q5aD3wGlIU2KhuoyFd0gCW1HS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDAxOSBTYWx0ZWRfX6iV6m1gPECdG
 tWaEfsT5BeTDowgTlMYUpZUGMk/onRB8RcD9jiICzv4+BFn5QFo0qusALwSxVU/h8NxtRih+Sz+
 JH2mnczdQ/07oxdXKvlcNFuQ5BEb/G/lx+gpIIWPB+QHYcU4zGD1nG+jBXCGdtShvKHbiagP6J7
 VTbjQCGpxala2mYYpjL/17P1fZwQCuNvJi5Npd48ZQhFl5McKPNsMvbZ9adEh5kxirLMPYx01/2
 X+S2BaYB4fminOae+21/2CZCU9J8r6a8uuzY0wQiP9NMUeUNf1VrSS9luDld5ge5Xv49vjTP1ms
 1mWTtnM3SD//975bcOOYESUqd54tup7LMZGgem8FTljt3ViZCC1cF6t0PJ4l0xD6c7+3sm8aNYy
 plbLi6OQ1rCe0wGCEK8i76EATTBe8ZLHRhkqsjr4YYGBZhqDPVfWvQwI7G7TsfEccCLrhbqM
X-Proofpoint-ORIG-GUID: 55xi-o5Q5aD3wGlIU2KhuoyFd0gCW1HS
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=6850cfff cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=UMluCPnEzjiUAf4N7sYA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_01,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506170019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_191640_046862_18FD6B83 
X-CRM114-Status: UNSURE (   9.58  )
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

SA8775p supports 'link_down' reset on hardware, so add it for both pcie0
and pcie1, which can provide a better user experience.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index d7248014368b..c8ce3d42c894 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -7152,8 +7152,11 @@ pcie0: pcie@1c00000 {
 		iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
 			    <0x100 &pcie_smmu 0x0001 0x1>;
 
-		resets = <&gcc GCC_PCIE_0_BCR>;
-		reset-names = "pci";
+		resets = <&gcc GCC_PCIE_0_BCR>,
+			 <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
+		reset-names = "pci",
+			      "link_down";
+
 		power-domains = <&gcc PCIE_0_GDSC>;
 
 		phys = <&pcie0_phy>;
@@ -7312,8 +7315,11 @@ pcie1: pcie@1c10000 {
 		iommu-map = <0x0 &pcie_smmu 0x0080 0x1>,
 			    <0x100 &pcie_smmu 0x0081 0x1>;
 
-		resets = <&gcc GCC_PCIE_1_BCR>;
-		reset-names = "pci";
+		resets = <&gcc GCC_PCIE_1_BCR>,
+			 <&gcc GCC_PCIE_1_LINK_DOWN_BCR>;
+		reset-names = "pci",
+			      "link_down";
+
 		power-domains = <&gcc PCIE_1_GDSC>;
 
 		phys = <&pcie1_phy>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
