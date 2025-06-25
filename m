Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED7F0C7EE39
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 09:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiRkHZBK6IfW7kSANfPbG3DKR0M+dkX+7PGek/0d+Rs=; b=3F+Dl7daaXC6kb
	rxjsjFkqK7GAF3wxAnvMnJPdsMmtJsrSXs0jQN9WaNp/OVJrscDw4jG0/G/viRG9EGbD6RnDo5/l/
	v96bJCmRZhdPOw/suvQkJrgXup/uEnmMotMA6joEM3tW1MLtXpaBCHAIHdYDC7lYwybfmv4+qTOig
	SRH07c1fe0VaduOVM2U6I1ZhTG208rdyA/HY3b0hJeBtRuut8h13C8XSHXGHJbU6IYxQ5J4LUYCYc
	Kwsui7TaBrWBQR+JT3D4sMo4+Gx0JsW3LGJwgisuca5B+v/29npBqs86iV+Krt9SXGPTiAQ+UThnR
	7t03Qj+YfRODbnbB+pPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMqL-00000008DwO-2vWh;
	Wed, 25 Jun 2025 09:55:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUM0M-000000083Zu-0vmV
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Jun 2025 09:01:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=EF6AjC4MUUFM1cgFCRP63nmXpijP6PySoR7J70JajKg=; b=kiJvJ9rYHKAILirTydArUqlMxC
	uYKGCHoRv3DLay+nQfSuXqkngjWvCjrhJkQ/VF9tdDvvLTc/mX/EViDSpRiLOHcyPIpBTBNyAIRYU
	YWzaeF7JxevWje5gUio04rh2y9/9PGkvwDLTKWfm3Jnjpr7OVQdpk3ecDOEB/598KfaVtbuJBx/jJ
	ND3gmaGimNdQELv6Xs4c22yhUt+bX/JWEPnKfMJ7CCMMcutm0Dva9FqyLxy1bBT36mBtfy69xv5kt
	Ytoc+aYDTePoiOriTwllahikTbNeW08fPeH3qSQRbBXfgJjFCSOj2Kp3O+fWY++HAmEZD/zqfJbPM
	Dc9GeJlg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUM0J-00000005iHy-1OFU
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:01:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P1q5KG002448;
	Wed, 25 Jun 2025 09:01:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=EF6AjC4MUUF
	M1cgFCRP63nmXpijP6PySoR7J70JajKg=; b=TDmYPDKAnoBX3MHJDmhRzgUN/aL
	wjMZ2OjxuSdJYiHrMxYQr8z9ZvavzuoqnOkaJ4WwoRFnpmLgdwBe0jFIQHAkk0QC
	ElV4ySsr62BssW9P2pf47hQG+mta+9JS3bqEL9RNyJlnavO3o4eLzDPSNF3maqw7
	qSImKvSGcwSU+y5s1WUstSGK6Psd4gBC2xerh+Q0AS4ZM3npTr1wt+9DQl2NSGfc
	oc7VQxOo9YDHd68l9bOSrYPH/o5oTKbbAm+b90JtWIJPvPjG2CoF6HYAE1b0NlRy
	ke/lkOQJQRlir3YbnBuyvxTxgYN7ac72BqOo9X0aSIejPW4EnJFkhjJ08PQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7td921d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:01:02 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P910or032353;
	Wed, 25 Jun 2025 09:01:00 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 47dntmargj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:01:00 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P90xxr032337;
	Wed, 25 Jun 2025 09:00:59 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 55P90x6U032334
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 09:00:59 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 25A143864; Wed, 25 Jun 2025 17:00:58 +0800 (CST)
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
Subject: [PATCH v3 4/4] arm64: dts: qcom: sa8775p: add link_down reset for pcie
Date: Wed, 25 Jun 2025 17:00:48 +0800
Message-Id: <20250625090048.624399-5-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685bbace cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=UMluCPnEzjiUAf4N7sYA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA2NyBTYWx0ZWRfXxF7PsBNX5ZT0
 KfSBZ4/fb59o7KkYMBVxxLF2DtloynEMvoJ5HkzhR+uwoQ4yBPkwtPwV2R4Z6cMNANLrQVdRQ9X
 jrnipQcOM1Nnduk6h6cqmcwpMV9lXa7QlvDviiZEE0wnnDG9JHXq5PCasVkDTw6LUKknqmNjSLX
 OtiiFixV4FvbgMikyrbeFHuEV4aEFmvJ0jasr9Dr5m+4QPu9oKJBvvKi1VIY0joYSERrnxJD1ep
 CtXNKCqqPnqLyRlm4ag7FbjggrkI6Zog8UGajGkkf5ncLeWR0QVZCNpQL2NtrvveW9tmDdLqQRR
 7kND6fnztAIq/9gchEbwo1t2D8+IS7pMj20B3hMX0LQ1Z7MRfEXo2PITcqef7wimiUj+kZ8wxPn
 McAgGu8FOiulhnWH0FsKrtOnp/0cgKi+FpI3BgPBKDkmaVsu5pwPmfKNuL4zq8b/gXMhnsJm
X-Proofpoint-GUID: dyx6eiLlFOj_jh9uXRcZ1JWQDNoy6omj
X-Proofpoint-ORIG-GUID: dyx6eiLlFOj_jh9uXRcZ1JWQDNoy6omj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_100115_938316_23D8C43A 
X-CRM114-Status: UNSURE (   9.91  )
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
index 731bd80fc806..d0a6303cb133 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -7635,8 +7635,11 @@ pcie0: pcie@1c00000 {
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
@@ -7803,8 +7806,11 @@ pcie1: pcie@1c10000 {
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
