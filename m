Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C4C0E70708
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 10:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7aFdiGStjTfyz5L2VPmRAi+kDeQTBc0EbebJcfjPhc=; b=hy76xjW4ku8cjv
	azf82OBwIka046u80ZqmnvTaR4W14Wtj9PMw/3/EziEuR1fK67Dk0Ulta2bi5ImZROag73PfdE7wi
	BUA5Bz5MXm7yMvSQCEoY85ccRMlZu3NjB7pXWoVySTqpgSAM+nZgybF18cC2wpWhPVJ6fENXjuFbH
	4KDDKF90S7P70ZIAuvYWYt9IRe2nmBiW92wdEnPo5KMkAWqlBpZpUNWBU0DWXzvqDJfBuYixHLhMx
	fPF6xKyhezNw2rRUiY9WmImpMO4DPqBk3md/2cgZEzJrqRKPXmROdviSeiOuy9NkGlnokmIEeTddr
	yaeQqrAv61v1DOo4CIRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGor-005hQk-2g;
	Thu, 21 Sep 2023 10:22:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGop-005hMh-1B
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 10:22:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38L7JlNG024466;
	Thu, 21 Sep 2023 10:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=vt4HQkzBRhpNc52cASEe6rG3/9p26Oq4MI20JoPy4ZY=;
 b=VT2IVVchE1GjETE74gE6BfN2/yADIml54BESXfxo37lnhR8AqYVsUVV3C6DZ1uDGmeCa
 zDlh1xqIHJS7ifZb/M41LtieIQSo32b+D0nSfMjRFlbkgDqLMYwVFNk2tZ+odwnvcCY4
 EqQ7yIpbIEUyHf1yqFazV4zy67fyIJPIHeR+w/o2PQazoWUVf+PVyHz4rVjDqt2Q/GJ4
 FQjS11dP2UDl1tXpBtvt1iCUakMyCXKMHFOaZ9wM8uNswKCUBL0VKQCLY6q/ujN+we7F
 gfF9MpoRFq0BypdZqXs07DUVkcWO40At1Qal5HLwTCWUeTNWk89MM8hrU1BuS9nb3BYH Hg== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8hb8gc7e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Sep 2023 10:21:42 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 38LALbEW023129;
	Thu, 21 Sep 2023 10:21:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 3t55ekq7p2-1;
	Thu, 21 Sep 2023 10:21:38 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 38LALcC0023136;
	Thu, 21 Sep 2023 10:21:38 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 38LALcXH023134;
	Thu, 21 Sep 2023 10:21:38 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 232881E4E; Thu, 21 Sep 2023 15:51:37 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, abel.vesa@linaro.org,
        quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, kernel@quicinc.com,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v3 4/5] dt-bindings: usb: dwc3: Add SDX75 compatible
Date: Thu, 21 Sep 2023 15:51:31 +0530
Message-Id: <1695291692-18850-5-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1695291692-18850-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1695291692-18850-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Jsn0IRLAw3xXxL0OXU5mhpsPXJnaEdZG
X-Proofpoint-GUID: Jsn0IRLAw3xXxL0OXU5mhpsPXJnaEdZG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-21_07,2023-09-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 bulkscore=0 lowpriorityscore=0 mlxlogscore=558 impostorscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309210090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032159_406959_65BFFAA1 
X-CRM114-Status: GOOD (  12.23  )
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

Document the SDX75 dwc3 compatible.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 018117b..d78b721 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -34,6 +34,7 @@ properties:
           - qcom,sdm845-dwc3
           - qcom,sdx55-dwc3
           - qcom,sdx65-dwc3
+          - qcom,sdx75-dwc3
           - qcom,sm4250-dwc3
           - qcom,sm6115-dwc3
           - qcom,sm6125-dwc3
@@ -181,6 +182,7 @@ allOf:
               - qcom,sdm845-dwc3
               - qcom,sdx55-dwc3
               - qcom,sdx65-dwc3
+              - qcom,sdx75-dwc3
               - qcom,sm6350-dwc3
     then:
       properties:
@@ -364,6 +366,7 @@ allOf:
               - qcom,sdm845-dwc3
               - qcom,sdx55-dwc3
               - qcom,sdx65-dwc3
+              - qcom,sdx75-dwc3
               - qcom,sm4250-dwc3
               - qcom,sm6125-dwc3
               - qcom,sm6350-dwc3
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
