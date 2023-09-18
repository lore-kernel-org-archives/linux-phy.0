Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 904A8CD13D8
	for <linux-phy@archiver.kernel.org>; Mon, 18 Sep 2023 20:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+aY0/MfIZHX5UZ9vQxAFZAl6iYKAUzmIzlUPo7k6i0=; b=QKvGcaK9aD2g29
	JavSINLBM3XslIfMIhKeLFJ49DDmAw5Wr7uFI1FGxUfBXVW93PEM54R0cPwWI/TZf1N4Qi+8g701e
	ZoqcOrwLHepfXPGac7BT7l4/5GVRGalgVnbLBEGO1aTbykPh6JyNFLZfCa8qkc3uT1DLXmaG0oLwz
	1z+siLClb4mwnXoJGgD/fTDeDp6hduVsH140ckBRYP9gBLRidZKA/39YcNbnWbE+hn0KpABpfy84O
	VA0GRcBhIo7G93rhOv76u8bjzctrRahOFOu6YjVlES+VUhz4nStxFOVkS9PLDO/e+hrmm/uK+Jes4
	VLKfyyAkMiImDG3T/IlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiLCs-00GK3h-0y;
	Mon, 18 Sep 2023 20:50:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiLCn-00GK0e-2F
	for linux-phy@lists.infradead.org;
	Mon, 18 Sep 2023 20:50:55 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38IKSUK2019490;
	Mon, 18 Sep 2023 20:50:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=/0w/Pw6MVxUYguEpGa13mcoGmQZJerEttp10SyJr+RI=;
 b=BUB0SifRpdZR/X5bOQniKCRTnoZ6GcGPkeqRxehmmRUEMkPNAKKsRAC2KqXE+Bp771wl
 cKBfS5LZrftsHKy7UxlA8kIM/Yd5ytjR8x0BECOibbWI8XC5HN9lrU+F/rJwNsdaHLeY
 xg2JglPOgg7coYabqL7fb08PECz2i1XYyXsbfdJcqLVKQY0VIwasDP8TECByiE3g06yP
 cnCcJ7Ypsn+dP3Hwga1hdITbE4J/NnQhHg24wj02syVeJZ/wJ+fMjzPnxw418vKgFVy6
 u+fe7clUPnXeBvdWke5nkrY1Ev4luG+rhNfDCAfOkyYSRQvpignieXa5H773/LN3//+a 8w== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t53ybc0n6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Sep 2023 20:50:44 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38IKofCj001958;
	Mon, 18 Sep 2023 20:50:41 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3t55ekpd96-1;
	Mon, 18 Sep 2023 20:50:41 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38IKofE9001952;
	Mon, 18 Sep 2023 20:50:41 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 38IKoeR7001949;
	Mon, 18 Sep 2023 20:50:41 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 1CA165000AB; Tue, 19 Sep 2023 02:20:40 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
Date: Tue, 19 Sep 2023 02:20:36 +0530
Message-Id: <20230918205037.25658-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
References: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: YZp--x0Gb1Tk_u-Jo-GvM6RjnNtOw8Oo
X-Proofpoint-ORIG-GUID: YZp--x0Gb1Tk_u-Jo-GvM6RjnNtOw8Oo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-18_09,2023-09-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 suspectscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 mlxlogscore=955
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309180180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_135053_852122_00FF647C 
X-CRM114-Status: GOOD (  12.08  )
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

Document the QMP UFS PHY compatible for SC7280.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index d981d77e82e4..f3a3296c811c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,sa8775p-qmp-ufs-phy
+      - qcom,sc7280-qmp-ufs-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sdm845-qmp-ufs-phy
@@ -85,6 +86,7 @@ allOf:
           contains:
             enum:
               - qcom,sa8775p-qmp-ufs-phy
+              - qcom,sc7280-qmp-ufs-phy
               - qcom,sm8450-qmp-ufs-phy
     then:
       properties:
--
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
