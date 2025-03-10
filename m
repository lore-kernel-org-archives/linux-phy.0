Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 176DEC282DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 06:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRFV9TIdywb2VnfpecWL07pYju9JRP5sbFWzmecFoO8=; b=PadTlnt4LQQMKj
	Pv9aDt8HkUQ5a8okg9cBRk7UyWjRiE8cVuPvWc2ke7NeM41Pby6wQvFbSwxaKKKAyyPZj8SmIhcQP
	p9hGkVcgpm2bpaziP1739/nPaO6Pwqd7fLWFinBbcKpXrV0YOuvfxzkAKQApqrs5I9iKm+hEFjPav
	CA7FKTN9KP8z/3H56hvHfuq9/hyiERHpf2u7fH8uaJe60D0by1kUydLF9/5MBQaJJFgftZuawfMN4
	HNVsLYb4lzZ4mS8gSFf8wFuobwTIT/txAP8947bAFQUUjO4ztbHH+2QDVCpwvY4djYCFqO0e822Jq
	7RkmlUn0RbdyKOAScBmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trX3z-00000001gur-3OD0;
	Mon, 10 Mar 2025 06:56:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trX3x-00000001gtn-1tlA
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 06:56:34 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 529LXgPo009677;
	Mon, 10 Mar 2025 06:56:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3X1VIWxdIte
	u5gRvLdr/kDJ0nbjFfP4kSOKvLcoKQBg=; b=KgUnrJwRGFgFu291Zygc38Seslz
	5WuAqLqic5jhRqCKIWhuTiuTzMwfTBDSPbNaCZhtM0/w0NfOp3ROkOiYoWw6UJFn
	IH+iLHq3dMO0Xx7bEis11TXtDJ2qz1tzCq+uR0ae+gydnQ+C7qH3JdC7CNcaquYs
	0VcE64TvMiasnn0nhK/xaFvZV3lzb6CVqpQAMovUob7zpS9To/CZdTtYfiT8OWe/
	Dcj5Jw0Ejt9snZJpwRnP9dZDhVdfYV7L/7GTaezN1pgJdK3lvNKaAcggAHZelrNP
	osz1ELu16A6GW6xUSt1C+rlB2gkns7zWJxxQklAFcHU5p70G+hcXbGMh0BQ==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458eypbs1t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:56:22 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 52A6uI8S019081;
	Mon, 10 Mar 2025 06:56:18 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 45900hqkm2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:56:18 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 52A6uIIc019075;
	Mon, 10 Mar 2025 06:56:18 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 52A6uIeY019069
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 06:56:18 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id F079F27CC; Mon, 10 Mar 2025 14:56:16 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
        manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@linaro.org, neil.armstrong@linaro.org,
        abel.vesa@linaro.org
Cc: quic_ziyuzhan@quicinc.com, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: [PATCH v3 4/4] PCI: qcom: Add support for QCS615 SoC
Date: Mon, 10 Mar 2025 14:56:13 +0800
Message-Id: <20250310065613.151598-5-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
References: <20250310065613.151598-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=A9yWP7WG c=1 sm=1 tr=0 ts=67ce8d16 cx=c_pps a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=2xCtamTgItnm92E9LnwA:9 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: xNDmhTnKeoK_PGcGl93RBU8iNdp09mY3
X-Proofpoint-GUID: xNDmhTnKeoK_PGcGl93RBU8iNdp09mY3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_02,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 mlxlogscore=999
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_235633_495798_E887856E 
X-CRM114-Status: GOOD (  11.88  )
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

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add the compatible and the driver data for QCS615 PCIe controller.
There is only one controller instance found on this platform, which
is capable of up to 8.0GT/s.
The version of the controller is 1.38.0 which is compatible with 1.9.0
config.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index e4d3366ead1f..f69c6773708d 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1862,6 +1862,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
+	{ .compatible = "qcom,qcs615-pcie", .data = &cfg_1_9_0 },
 	{ }
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
