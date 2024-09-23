Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70C19CF9C74
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 11:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TiPeUE0XSiddVybBcYaOs9p2ivmxUsNfx0mI0nrMS6Q=; b=yv+jjrntlFNQHR
	WAc3m4UUflHVG85guDILuTdfV7AZvzDaCMHRqKEh9x/UJeAPmBspeukuMcP30s4u9HzSugdhzW8R3
	wj8e2/qiFi229AeYL63AdWCnItoOGZZuH3VX4/vgvxxq8ktxQUgeoH1CPsX11kYOcHQIUWLU3EgYB
	YyRyEXLXoPtuh1OuloZjeCSO+XEDFCdlcmIKbB6CuIIAq9f76EpxcSimnY+LDErkMUDDu/iFf21CJ
	6N+HCfOOfASi3xWuWHBmhIT4p/MRsr3SnMj9Dm769TNS5PAbcZK1g04+LlJuVTlpBag4bOCme26Gy
	UefQhotbx61XcQBp1ASA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sshIY-0000000H4oi-0Xja;
	Mon, 23 Sep 2024 11:32:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sshIU-0000000H4li-0PDl
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 11:32:08 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48NAutSE016182;
	Mon, 23 Sep 2024 11:31:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=Ud4Es1Z2rkMHVuCMuUjhwRnFlSnzU/qskUwM99ScD3U=; b=Lx
	+wtTWUMslee7ga1xJVZxsz+J5get/wZ2xObuARBBMpTDIrpROKKp4pHh2C0KMsTb
	KQJqp9/ccq3YWY8Tnajy2hKqvyk+QnWjeHoyqIz7AyfskrJALFlAd0IGP/alVDq+
	jCC8PqHRmuL6evU8UpOTARp9z4J281AgZ1aKOdKZQicwGZ+UyNm2IsYrsr8PLKmO
	LRS7MUwELwrhDIlq71kwrVYTXO/cK9HK6CDUQe4qgJUrmA85Rof+QBVp3nLe+z/O
	eT3mGnjuCelXkNZ8srD6k8JagZ+mXy5SSVI8o+Jrfa9CRPw0HZgFMUTVeSzGFiDk
	v0U1HyjnJ01CqzyH82JQ==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sqakcavf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Sep 2024 11:31:57 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48NBVrZw028931;
	Mon, 23 Sep 2024 11:31:53 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 41sq7kstdh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 23 Sep 2024 11:31:53 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48NBVqgb028909;
	Mon, 23 Sep 2024 11:31:52 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-mukhopad-hyd.qualcomm.com [10.147.244.250])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 48NBVqF8028900;
	Mon, 23 Sep 2024 11:31:52 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 3978529)
	id 8BD1C5000AE; Mon, 23 Sep 2024 17:01:51 +0530 (+0530)
From: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org,
        quic_parellan@quicinc.com, quic_bjorande@quicinc.com
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: [PATCH v3 1/5] dt-bindings: phy: Add eDP PHY compatible for sa8775p
Date: Mon, 23 Sep 2024 17:01:46 +0530
Message-Id: <20240923113150.24711-2-quic_mukhopad@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: CtHbFgp2WDweijvzqJNBbFf3g7HChVCM
X-Proofpoint-GUID: CtHbFgp2WDweijvzqJNBbFf3g7HChVCM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 suspectscore=0 phishscore=0 adultscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409230085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_043206_171208_67430680 
X-CRM114-Status: UNSURE (   9.22  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add compatible string for the supported eDP PHY on sa8775p platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
---
v2: No change

v3: No change

---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 4e15d90d08b0..293fb6a9b1c3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -17,6 +17,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sa8775p-edp-phy
       - qcom,sc7280-edp-phy
       - qcom,sc8180x-edp-phy
       - qcom,sc8280xp-dp-phy
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
