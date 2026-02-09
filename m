Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A803EF070B
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 04:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6awkh2EZvf/0xYso/4Q7sN7NKrOanfNr8h8DM9SwPBg=; b=4KrLw3JRfjfMdp
	FBHjFFd7y9OJE+2YRhj1oCxqHcgj0IQA/WLCTtVkZZcCG8jxgCFHiX2EuOgSjUPfXx6Sn22sz+zPc
	gYSVCxTEyJwIV0Or/b0NrCPlN3s9bo44QKAjQSI+U5E0x5XdxSrtIn2aSrru4kbbCuHhnxJuUuTm0
	B9i2IW09IG8WWfL+KXlnXcINzlpnSI3p+kol/Z9ipTZdBY3OVXfMc9vEL6eWLa/Y+c8hzd/Rq25yq
	7+UgLHJzJ3JZEqvdPTY3HQeNPXXxHWKF8J7iPQ2+bWqh9IRKJAnhHtfey4oJct/oW5+Tag8IX9ls7
	u0ZDMKi4LTXvlCwmPWEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpJDW-0000000EpCi-1ONM;
	Mon, 09 Feb 2026 04:49:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpJDT-0000000EpBf-2YJd
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 04:49:44 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61940Qsl1656396
	for <linux-phy@lists.infradead.org>; Mon, 9 Feb 2026 04:49:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SfFLRsIQtsMx9V+vCVdU9SijBH4NcE7bdWfh33JmtzA=; b=ppKxpgHD9zKcL7p+
	wlHmIHxD3HxJigUMsYNCxseG7Ar09qDmluSy7SGy5VxvTzkWaazHX2xUJDQnE0d2
	6MoloMtTAXtooNEnj9gEDzrQXVIqXzibf5xE6gM/Es9M7NPuGy8MCBz67fRgEW2s
	1LyeifSWPr+nvnjMKY0yNO1PbpOxWkD0KE6mzirxj4u9O1AO3rO/Royzm0VG3ndU
	qKg7XNxrGJzTVDHM7/FTshB9Wdki/XBYiF/ZUftxAb2bWf5OTn01xxTcbcZuUCeQ
	zjcITZV2I7pd7ldxcVwVoQhnMIcwMMFTPoj3Nzad7vWRJ9aZnly5T0xi4oAVP1EC
	ZL+7qg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7862r38v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 04:49:43 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-124a38e8980so3225839c88.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Feb 2026 20:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770612582; x=1771217382; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SfFLRsIQtsMx9V+vCVdU9SijBH4NcE7bdWfh33JmtzA=;
        b=V+JYDKscF90fZ441p4wuprJIpNugqCR19D9TKwCObiOcQor6W1s/a39IEw1QkmHo6u
         Pch2GqtEwkZMvKtwvJbxWAZ8VZzvDQEbIWwE8EQWQy5YH4Hi3AEMtYChYeGyGd9Hm6NV
         6pMTFjkt6IQGi7bHT1dV2TdBv5LvXPc9X38FD+mWFyC+B0cMlVrSrWLQXnuKY9ac6gOV
         snJAVkn52uB809gFTlK3yqy2ciFCkbYf+NAwdcPA6ax209RACh+iK3YfLvPxm8fkXBXt
         X2t0hS4ouvv9adoKdFO6+Puppp/zwi0aPC0DMJo2A49n9I3TC+kWCdg5U2qugdLePVAB
         o+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770612582; x=1771217382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SfFLRsIQtsMx9V+vCVdU9SijBH4NcE7bdWfh33JmtzA=;
        b=axGg77Mq1OiyoeSl9JASi3dD9XoBIQ18p07PofJQutE7hKm3b6YN17WtU8RxRAZ3wm
         mfn8eExJHmmfGPxxYMH6egpSO0R8rj7J0mlt6URVIGVmnyu0U9E0iVDIeC1P247K4H8R
         5W/3K8Dq3+skgxjlAor4oB08wznvi6e6bEkKZfpGyIa91eQhkFFMXYKZ0n4fK5tTjuxm
         0MYXFUgTkr804WUkWkHceZxbqsFauHu2Vt9QzZkZuTGgJGgkcwFuTc8LIkJkUsvYDNf/
         XQ1pznUrbpZtn8lsbspRRpwMr1vcD3aCfnL1iWRVKPQHbbUIFSNDNSewkwTfuU0Yqpw7
         FrqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZzjFDMHYpGcqylsh/7RCwiaeOvYZiyn+VyVPPZRxOhI9+PpcCDdnNMeTSj33RG+ycPDkYyqCrEKU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUIeJwK4elpDyztkG19dRj90dBDPwTmUk6OhCenjdd8QNK/4dg
	mXRF5vZxsSt7wlTFeAj3l+sMnufAwO+Xy4epbNclbJHA6bMMWTWfechr5RJOoX89y0k9J9QzvoZ
	3TyQaKDp2O8+x70Y4YF6/+Vs6x5WHNoFJYp0OtNd/OdQc7urcKb6gXkHKyeXsZXzZKuqd
X-Gm-Gg: AZuq6aJU7A3Rs7JSYHrs+3igZo8sGnIpIvIJtWgaUhwl7Z3rEe7048ZwVqHc1pScsAS
	2gtr13HUkYWr91i7A0uCAqf+Ry0djknlIHwCq3bzjPOEPo6R94ps0Hn8fJNl/56n0fKMQJM74Zn
	F8kQW4cfmPGvoi8aX1NgWEgMkS8Mzih2B/RUkCoLYZ0mxQhlKkLp1ygSkbeP93EXXwqtrb8IK1P
	yvOtHlShiRVPK0IrGAsx1qNkVue1F1Y0q3x5LSmTlIoWuQ8jpDTlDqkmmS/HWjz4q/Ru7hQICi5
	niBkLw6UtQVK2GH+RRExc2QK8C4+jD3pvQ6vZr2LtrdGteYtcQf75ucyRhRPDZRcF/wvpRb0pfy
	FkJMvtaEEmOezL0NwLRrzZbpXk22Y/HpnvFbCdHXWAwKvYMoXZXxkueNC
X-Received: by 2002:a05:7300:c618:b0:2ba:74fc:edcc with SMTP id 5a478bee46e88-2ba74fcf1ebmr606315eec.43.1770612582395;
        Sun, 08 Feb 2026 20:49:42 -0800 (PST)
X-Received: by 2002:a05:7300:c618:b0:2ba:74fc:edcc with SMTP id 5a478bee46e88-2ba74fcf1ebmr606304eec.43.1770612581838;
        Sun, 08 Feb 2026 20:49:41 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8647bd6casm5609940eec.7.2026.02.08.20.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 20:49:41 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 08 Feb 2026 20:49:39 -0800
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
MIME-Version: 1.0
Message-Id: <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
In-Reply-To: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770612579; l=1835;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=zBcv7lxEtgPMCXIkulXgwPcKqgMN8Bqjh/iShUkQdwI=;
 b=2TIostV9F8L8nS7KiswSSQ5DavEOGSq5o7AxzysT/+sDvhp7x1lMXkwdg6JlRpxDa2oPQBC+Q
 E4ChprQ/RtoB5sEv96N9js07uA3Pa02hEmH+3O1FcxBDIdXAnXvM9yp
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDAzNyBTYWx0ZWRfXy/lZE82ps0kD
 SjtKtKK9MmxVOA7CwzNz4m/tVqZskOcs0yAU1tDaOUBczeJxnFnlnmDvHJZ2fxIgN5x3RmNYYM1
 Zy/BOu+ynLNYb0bsvZot60rZdPXahjf8E43XY7w1G2kjClZdUejgWgVB2O3Q/CtEhc9wETB4YtD
 1yAFBh4QGUTwLmv7em53cti7wbeRiG8LI1AS2CmIDHw71KtSZesRNZTijsNSIvrTJvVisPfmSi+
 OWTP+ynsVtyLPHslmCtZq/KLp2PyX+xlkUEqkZ9EYUfFPxz+dZg4NlAjZ84b5ZnjnMzbGjCPJQS
 LoxsSXMmMqyu59cBiTMEqY363kCKaaIBv9rOCE5M6g7YkvhsCZxpZMgzQMLRjwp4+EjtJZ+bGUJ
 4p0kU2JUhd2IU3g61Ayj3LLDVd/WuFqGeEEu/pWAXNSFVp4QaLlIHe3lA1LojcSS0LcLBrt3aHy
 Ogy8JA3p/07sN7qxo/w==
X-Authority-Analysis: v=2.4 cv=bZhmkePB c=1 sm=1 tr=0 ts=69896767 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=frynOpE9Hcw_QGd8cjwA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-ORIG-GUID: un6pQ9GaIIUsoSAm1TnmQ9X0yWRmzj5a
X-Proofpoint-GUID: un6pQ9GaIIUsoSAm1TnmQ9X0yWRmzj5a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260208_204943_680510_FFD072B8 
X-CRM114-Status: GOOD (  10.64  )
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

The PCIe QMP PHYs on Glymur require stable reference voltage provided by
refgen. The refgen itself requires two separate power supplies:
vdda-refgen0p9 and vdda-refgen1p2.

Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
conditional schema to restrict these properties to only Glymur PCIe QMP
PHYs.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 82316aa5e15f2bde9c32c112876dd820f9450e94..5f60b472264d54b714538c869a095e620b0eba2d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -90,6 +90,10 @@ properties:
 
   vdda-qref-supply: true
 
+  vdda-refgen0p9-supply: true
+
+  vdda-refgen1p2-supply: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -259,6 +263,22 @@ allOf:
         "#clock-cells":
           const: 0
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen4x2-pcie-phy
+              - qcom,glymur-qmp-gen5x4-pcie-phy
+    then:
+      properties:
+        vdda-refgen0p9-supply: true
+        vdda-refgen1p2-supply: true
+    else:
+      properties:
+        vdda-refgen0p9-supply: false
+        vdda-refgen1p2-supply: false
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
