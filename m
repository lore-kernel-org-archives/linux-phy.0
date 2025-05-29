Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE61AC54FB3
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 03:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZ3ePLZq8PVYFanMk4MtDRcSzdn8lXq7jymc+E2ZqgU=; b=GgcIjTqoBQyAGk
	1Rr0lY1XNegzBdz3gww3pbEEu/BW+saStE5WIe67cOwCcPPGZgcXwGkoDF51V8cA7vAD6E5EvIlh1
	IDD49JOsfnuMOvH5PuSXnrmLlRGgbkU2xHoL8rr9aZFDEgFgh/0572YcZW2QBdRsaDpJqFts34kk3
	XTp9bP/cd0O4lzGsr6XqaRDCIJPfaUuyt+Du4kkfpSu8fKcDzexMJ1FVJo/QdkCWoWcqRDxRoxyuv
	iJHREjP6HKGyyO9fU5sjBDCABzjq1Fu99K2INRAF1ghJnjUcsBeSgybnJWWO3JVwqFCMc6DtNodnE
	JFViwQJPY06ioFb3DiAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULk-0000000ErP5-2jKC;
	Thu, 29 May 2025 03:54:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKULf-0000000ErML-1W9N
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 03:54:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54SHTlv0022432;
	Thu, 29 May 2025 03:54:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XySX9SNrCWx
	K8lNo6ML9EAJtagQJkKEPqFYL1BJxTWg=; b=cEEFcsIPtC/9QobD4Nc47b3Zx7k
	/C287gpjwRum5MDxiGrMKN6eTclfvOuV4vZ10NZebYWdfz57PppJvgV7UOeBwHv7
	V42DaG/c0/+ZLu7L8Ocaq1vDHa0lhEOZZqlIL/FPv5WeuR+6L59CmY+u7NZp9kvD
	9jgJ03iqMKDhGCK32LchiCjI4TAHPBSS+qkXp2hJPqU6KTsz0GSla4MnTDq1J/+R
	nZTejeT9TbZ64/bMwDPh+WOc7HaWS+W+hA/ZT6JEle+sh5vlrTPWUDPl4/o9kZMI
	72YxSm5q+BPi1fz8eEdLPNyQmbQ0Z9TjO2x/T6V/2XAzNm4qToTkk/VssCQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46x6xc9aa1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:23 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 54T3sKph030088;
	Thu, 29 May 2025 03:54:20 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 46u76mdnms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 54T3sK3L030075;
	Thu, 29 May 2025 03:54:20 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 54T3sJEl030071
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 May 2025 03:54:20 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 70F60315F; Thu, 29 May 2025 11:54:18 +0800 (CST)
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
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v1 4/4] arm64: dts: qcom: sa8775p: add link_down reset for pcie
Date: Thu, 29 May 2025 11:54:16 +0800
Message-Id: <20250529035416.4159963-5-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI5MDAzMyBTYWx0ZWRfX/DlRSjHJvOD8
 5+2U48b8xNRlVMABTo86fpuyIoqR9FS/I0A7NBmf9jq7GfFxezDm99Ub+JdPOhM0VnfPH6Z3Deu
 juOnciil2xpeLAg5Tp1zgMCJCn5XFvIfL+C+/XF+fP2OZMv2Ak9KC9RN3Bs0h/QNFUjriYTDpWM
 q/oblN6sBLt5sXZFCtLA2tLjW6vMLp6CiXpPhhRQPQbTDXdzdqdcFL6Uc7oTWKvcDaA3g4/Tw9s
 +8uNmSxKbdNn5mutFQ1UPgrgjnVTOQcxRyyCM+MTx+fkpU4DcWs3i4Plvz6uVYaqhOuUJNHAJ2Q
 tNt4nP/ApqXItR/TMMifvluJQspAHu/Sg5H1oGrOoYlj93zwnFkUsvNbkbJvtTVR1IBP1HvgBpn
 gTfTce2klPRZ8KGAlyVohcV4MfcfmOO2v17qE7wQTrMs/SG9e2003VL57dCB6XRlxn9D+7H/
X-Proofpoint-GUID: Z6zgpv9yHtpmZln3URObZZ4kVQlwnlLl
X-Proofpoint-ORIG-GUID: Z6zgpv9yHtpmZln3URObZZ4kVQlwnlLl
X-Authority-Analysis: v=2.4 cv=bupMBFai c=1 sm=1 tr=0 ts=6837da6f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UMluCPnEzjiUAf4N7sYA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-29_01,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505290033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_205431_406603_FD9ABA0A 
X-CRM114-Status: UNSURE (   9.09  )
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

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
