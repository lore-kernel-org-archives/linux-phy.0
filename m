Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFBEC677C4
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jun 2025 14:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5dAbHdSpuxYGg2ddVtftejneyCybnGz2Ic/xsffkg4=; b=iyGGgvjq8uw91L
	CuFirXC8ufDOC06pwdy8uqTXgyZ86p7LxMvQSP8fjhAut+L5EIQtB88oJ2D0kXVej+Adj5ftKvhVz
	lwN696QMlZ2BlL8Y+YZSfOs5Ywc8Dpn9OdPg5H2TngYmwtB5xXnFG6/J1/91vsk/hYIx/5YUiQAgB
	xUO+I9dYUvuME5eG6ElztSS5/wcRmXbsnQ4+83+c3/oUbXRJjTvKqbbaRRLYxuO7CmTFh6KM+2Kgp
	modVgK2DhZZTjuvrRTAvtxKKZtfPqMKoMZQqJiyXrP7iOczyxLc1BStLS//9hyqgE3A9ocMLb54YG
	Rq1Q7qBJpRCpmPbkdqHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMmn-0000000AChT-10iT;
	Wed, 11 Jun 2025 14:50:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPIJe-00000009Z83-1EUy
	for linux-phy@bombadil.infradead.org;
	Wed, 11 Jun 2025 10:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=PyTMukYKDHU2sykGqMCmcg2+gvtVPkpU7oukT+Wla2U=; b=WN0DQvpOSyX8FP66ZxzgW3s4iX
	kSH3dVeExQJJQgeIw5flUqd6o7Ob+M1FWMqduEkdTO2gPi/FiwMN6JlG4FtQXBk7NxIXxN260V4Q9
	n7zTJlnlD2YtblpZcOyCUx2t9RZzBtkdogAdVfi14C7qZMcKeNmMlI+/cAeAVeKYfQyliBV9shEmj
	4vdjZS60sYxCnBWWtcFksjzVgoJ8GiCsTQw0FsM1if/9It6okxvraDTN+rJsD19IT34uu/KmXvKUk
	MCVOV3RMbMnjCn2VcoYw5g5w0xlaO1Ho5JjLh1k/1eIqboM9tcf6ns2QCaXymnI6dYo3CtjMHhTFR
	uAhBv3nw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPIJb-00000002FiZ-1uLv
	for linux-phy@lists.infradead.org;
	Wed, 11 Jun 2025 10:04:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DDAE027374;
	Wed, 11 Jun 2025 10:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PyTMukYKDHU
	2sykGqMCmcg2+gvtVPkpU7oukT+Wla2U=; b=d+954Id+Gd1/wRII975Y52UDOLc
	qUJ2DtIw0hH3SjH4Hx8NwxRjsJbqm5hUfRO7UEsEKjlPd/dtK3jHOFTYS3fgFtCM
	DrFbWcP86jlObalWHOmwsN1vU380gn6QvyzRJKGd2svUTAmlxMnSYqeHe+x7XusM
	WcqB/xvdoR63B6HQAPWodZbo9/YtSpcH31N2Tx0BTiuQ2E/Ba8prGc+3qO32to/Z
	xw0O+6xoNk6ePEgmLcly/uDWbP9rNXcYrfxW6Zn7Jd7ONpgkd6OMdDgAmJ65JKp1
	mh5RsGCwkbeD5vhCiIl4RQhG+hF0AA1DHV30LUXi3m59KXabiZPPbuOsXug==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476jrhbga2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:04:01 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55BA3x6E003268;
	Wed, 11 Jun 2025 10:03:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 474egm8eb3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:03:59 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55BA3wnK003263;
	Wed, 11 Jun 2025 10:03:58 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 55BA3v7Z003259
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:03:58 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id A6CB13699; Wed, 11 Jun 2025 18:03:56 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, neil.armstrong@linaro.org,
        abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Add PCIe lane equalization preset properties
Date: Wed, 11 Jun 2025 18:03:19 +0800
Message-Id: <20250611100319.464803-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=EovSrTcA c=1 sm=1 tr=0 ts=68495492 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=XhQEiPrLEPsAcZFVs94A:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: q6XU97VsqnWmWczYSP2sak5ceS1q-dvj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDA4NiBTYWx0ZWRfX8ir4l6S4ysi6
 4gzOE0nRn15A+Ycq3UjyIHWcILsz0lU3h+NYvkH/n3Ax+RwD7q83niKswjmDXou2AX/o0Lj9dbH
 k/CgcwYlNqqpEsxQdIv0yvEXlgdpZmmrgbWKxqpZXACLBfbxiTs9a3kEU8BIJ7jM5SoqIqSB5vD
 /7V5D1ICaWDwU9HE2z2RoIo7ypc8/LHbkiU2/R6pHSsjsukpY8apWjMjL9XS7uasH0tHPDkJfu+
 hsiLc5DyDvPPwJwMirkzUyy18VEwoZ+DbOcWGO8XPeeFPMTcpfW5W5CMVT3l/ljuoV4M0sv2/Ug
 XFiO8ckhvRZxQdRJcqHn+hv835l08MC22TuuGleW/O/Y+1osz8yFX/aSRnmyFw28shUopoZNHyF
 lAe3y8Pmai+PGtSzgPoZSgfsKjQZ5YVwGLeMR6ACSq0iSLOtcIVWDWY6t9lJEKO4jUi6z1R7
X-Proofpoint-GUID: q6XU97VsqnWmWczYSP2sak5ceS1q-dvj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 priorityscore=1501 mlxlogscore=888
 mlxscore=0 clxscore=1011 malwarescore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506110086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_110415_859340_924B5BCD 
X-CRM114-Status: UNSURE (   8.22  )
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
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 45f536633f64..16caf1da0708 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -7159,6 +7159,9 @@ pcie0: pcie@1c00000 {
 		phys = <&pcie0_phy>;
 		phy-names = "pciephy";
 
+		eq-presets-8gts = /bits/ 16 <0x5555 0x5555>;
+		eq-presets-16gts = /bits/ 8 <0x55 0x55>;
+
 		status = "disabled";
 
 		pcieport0: pcie@0 {
@@ -7317,6 +7320,9 @@ pcie1: pcie@1c10000 {
 		phys = <&pcie1_phy>;
 		phy-names = "pciephy";
 
+		eq-presets-8gts = /bits/ 16 <0x5555 0x5555 0x5555 0x5555>;
+		eq-presets-16gts = /bits/ 8 <0x55 0x55 0x55 0x55>;
+
 		status = "disabled";
 
 		pcie@0 {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
