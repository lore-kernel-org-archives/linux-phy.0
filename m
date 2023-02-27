Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74C6CC64ED6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Feb 2023 09:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vngt4HkltCHb8RxH5l//QXxSM8kApno7Lm1vIIU6JSI=; b=a62YJeIN9tZ9LH
	pO7AfZoqVtRANQJRrq3eZqYn9iIQxKD1LmcIl3HeByrc/AxQ5fmLBwBLGF8QPMUrzmjr4jQY+WUbg
	fSk0tQH8EdqRmCdkZFUp1XrckcpyLKRNGyYm25qr76GsoTOy0YesXX0V+GbxA9KPwTZLCWICAudgv
	kvFFR1zBJtE3ecjG8vlMDvfZE6IX2+rdriYDzxDZYCSAeI2Z7yurNed8LGPlatsNhIOrFuWWB/OTV
	MPisyP0sCsOhWX39MZhF6a7ElKr3LkcxwI0L5x6Ep8p3Wlab/0A8fpISOBhF9RUmf6H7NePaadKvz
	ddAtbPYMaDEz2499QsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWZw2-0093gk-Fp; Mon, 27 Feb 2023 09:36:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWZvy-0093fA-2P
	for linux-phy@lists.infradead.org; Mon, 27 Feb 2023 09:36:40 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31R4sGgM007031;
	Mon, 27 Feb 2023 09:36:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=fFtKuRl7ltXe/gF9tHGWwksasGO5SrHc88zXuVbCr0M=;
 b=QG9RDgamUYYP+MGFS6MBi7K2COX9/ePqTIyTM4+FhV8ERz+An29WiltxbahRaGYanhoj
 Vh1VKBOzlyyeGQaIW/5OnqyqoIFHdWGPBdCfDpYjAqvK3hF/KFYKoN0n6q0o5kx0iuvc
 fX467DJtujjcjTTUKGxJzsP0KHhQWW4pFDoEiohg/tQ+DIaI16ZNkY6lQT7elECR/VzO
 y5pQdAYsH4ZGMTvi9vZFbty0Dv9StYEvmYgEPps2W6C+vd+gSk8jtZ75wT/X2NU1Cb4n
 QD9CQHdwyBMho4rpJ0971DFbEgpp0qWeZJSiOpD7ngIzZQWjruq5nN9ezvTuIEusphhK aQ== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3nyajavhgx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Feb 2023 09:36:29 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 31R9aOeS026273;
	Mon, 27 Feb 2023 09:36:24 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3nybdkafcc-1;
	Mon, 27 Feb 2023 09:36:24 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 31R9aO1R026268;
	Mon, 27 Feb 2023 09:36:24 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-krichai-hyd.qualcomm.com [10.213.110.37])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 31R9aOMS026267;
	Mon, 27 Feb 2023 09:36:24 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 4058933)
	id 65E4147AF; Mon, 27 Feb 2023 15:06:23 +0530 (+0530)
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
To: helgaas@kernel.org
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com,
        quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
        quic_ramkri@quicinc.com, manivannan.sadhasivam@linaro.org,
        swboyd@chromium.org, dmitry.baryshkov@linaro.org, svarbanov@mm-sol.com,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@somainline.org,
        lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
        bhelgaas@google.com, linux-phy@lists.infradead.org, vkoul@kernel.org,
        kishon@ti.com, mturquette@baylibre.com, linux-clk@vger.kernel.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
Subject: [PATCH V1] arm64:dts:qcom:sc7280: mark memory of PCIe as cache coherent
Date: Mon, 27 Feb 2023 15:06:15 +0530
Message-Id: <1677490575-29092-1-git-send-email-quic_krichai@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: hv5wk8APxsiR4odzxFP3I-ezSliRXOvh
X-Proofpoint-ORIG-GUID: hv5wk8APxsiR4odzxFP3I-ezSliRXOvh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-26_22,2023-02-24_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 bulkscore=0 clxscore=1011 phishscore=0 mlxscore=0 mlxlogscore=653
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302270074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_013638_136478_B53A2F18 
X-CRM114-Status: GOOD (  11.31  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Mark the PCIe node as dma-coherent as the devices on PCIe bus are
cache coherent.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index bdcb749..8f4ab6b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2131,6 +2131,8 @@
 			pinctrl-names = "default";
 			pinctrl-0 = <&pcie1_clkreq_n>;
 
+			dma-coherent;
+
 			iommus = <&apps_smmu 0x1c80 0x1>;
 
 			iommu-map = <0x0 &apps_smmu 0x1c80 0x1>,
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
