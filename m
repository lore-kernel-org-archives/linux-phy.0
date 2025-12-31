Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1045EE6428
	for <linux-phy@archiver.kernel.org>; Wed, 31 Dec 2025 10:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0keuXUuSBe/IwuKPcA5nBpoOERJGfg3qrOPHcI6AgMM=; b=SaAVUyWPFw4wcx
	4ElH2f4FB+OVqN6745l/Mrdbo3oDQPLQzJlVl78AadWynb3CSFHs79bFz7VGKWocNUK+M8xcQoQYS
	W+g3RwZ6xEbEUdchMYHTVZj/tZiDjI+7oxCiXGufXEe7s1YtKbrN+Nnn41IHFIHQSmrquTPC7VMdr
	qIHMtUt67KNWDE/xan1WlC3e359wkY6sfNkk3PnTLJJv4uwSApDjiZ5THnA0rNPY//gd6XfRbGsBn
	nZDPTFpRSZ1EkKYtVH6BP2UNnA6bwiXan3moY+OotT1qcKE+2rIdo8FO9kH0h2ffxdy/lquwlMdmP
	XjhoW+wCqb0/4cU8zw4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatK5-00000005si7-1xwO;
	Wed, 31 Dec 2025 10:20:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatK2-00000005shk-1cfa
	for linux-phy@lists.infradead.org;
	Wed, 31 Dec 2025 10:20:55 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV78Y922733360
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:20:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=xx9aZG8wIa1
	01V/TwxOXidAinRDzq5VmWS/ZoJSBsZg=; b=FnPRuUIT/sj0BxH8oV68peQye6Q
	qQ4NzHhlo4/E3pzlChIrGn7LZiYvAMDNHholCmLDyEsMtroP+6TvrsKoZaIf4NV6
	rHf8sLhWGLikqoARANR2873ZQ+OmdhplGXU/I7rJqm+igzg83Rntd6I6DH04X+vG
	x1dLwtfs3JQrNsOk7l0E1yAAY82sAtcle2xzgZt/Y1tUuU/7S3QJq7Tw2slHoY+a
	xtJjzHqZFnYbELrTgIE9NnthgtEPmiApgBLW7btJeTm27Jq7M11+4sdLjY136bg5
	G221Uo0WKDQVAeHFG9NgCSBdT96EJ2gPqkmlTPgzNZdq63XC0RZqiF+3rrg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcy6agb08-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 10:20:53 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f26fc6476so174892615ad.1
        for <linux-phy@lists.infradead.org>; Wed, 31 Dec 2025 02:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176452; x=1767781252; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xx9aZG8wIa101V/TwxOXidAinRDzq5VmWS/ZoJSBsZg=;
        b=DQCekX85FcMDeRa5UpDrOMD43rWnjq7EnvBtNYbocsEKteOu89nZ+JCMDk6lMZbpyf
         6maBBEbyJKC+f4WzVoNwt+1R7qDgLUSR2kyRhqlMMtO4wnydn6+nFiTa7UFQdGy70lQs
         KmtcGUKGA3xIWh7HMIzPBS5iDdZM797vz6tF73OZ63zvK3ysROEtgKNDxfjJepmLSE8X
         SfK5t5qyCyerAh1hCyDFZj7/CoM6jtGYCRH19QEkB3RhYU3fDBRELvV+CJq7/rKOaWB3
         TUD7b/0dkGLCI4hW2isAOmMSIdR3vI9wnsAFVBSGjckbK2RGBM/mP4tnR2rxs8Jmu4Sj
         /6eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176452; x=1767781252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xx9aZG8wIa101V/TwxOXidAinRDzq5VmWS/ZoJSBsZg=;
        b=V8yl1ADbk4SmmwqR3d65Ghg6vv30Q4CAkY9A61QAPa0Utla4/BIi+j5GNuB2KRg+/+
         1YZEG72mLkauqoMAajNE1RYaSn2Vuo5CzHb/wrbySDmYPUArqWZvfp+SyqCy5kt2MhDg
         Zrgbb9oJvFrQy7tBHOLnXSAhx3HMtybR+PM2XoYT8HnvoBQHi9W0c+yLLbVDhzcI8tQf
         iJgWbdEIdH/0+9X9pQxtLitrfnk7KDnhROQ1dS4bvBYtObTt7OVVcLeiTFCHixsKX4HC
         TD9jKyLlmrKAv34ekI8TLGe+Apa+yW5CCHA5VpIelTkwzmkHghRA691GblvFS9dUPsKD
         U8Eg==
X-Forwarded-Encrypted: i=1; AJvYcCVDxWhPv3bPIKy9m2zpWUCvaFIABzmWZSDbj2YJkop8xsaT8YS2+MvbTRMVHKlDmOT+m4Pc6ttPmDo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8Ggtrk7IWxmdt8nkprkprhYoAxC/77f7uHWDrhqEWHuAOgmkv
	DSO+XZinbAJ0jTLTY2O0Rv99C3zseUvjgylJGNbWkDPxuaheXFx/8dsGrztxi0ZE3dzrJbZ6txz
	pOHJ9WC69nvmgruRu1ZMNIaLMX1889NLe3N7PJUAsUSROIm8eefu9ykSvsgmmm94o1LNl
X-Gm-Gg: AY/fxX6SiIQGgnUdqt28kcYa3jaEyzNCJUHI34NXvmhjEyfPDy3uBfHlKWqiyNFhwK0
	L84HsUOMrWCAYsiKKuVFn2RXMwEiA0Nuknxz6F2ywK3Wj9epcX6TGI9ba8hFXCDH5Kd8Dqyujos
	buhnQ/IQRInvXTKlFozvJwGYHnl5Ac/nxmk5bDbxCQ9AS6aF0OJVOgk5QRuaMdGSHXnOIB4DhhV
	Ykh1M4kXqsRL0ci6tGCntQJ1MLkIF90ZP7cwYFaFTV41v11QioD3fCw1fL6B70hqQkyaCTFysHJ
	xUl5FyGHKP6q9mn+33AF6hRLmUDbDFmYj+QDXzu/vydnzAISwIKylV5PjjDeodxZtG5t0K3plak
	qZjPJwZHMhzNYxI2sE25muh+ewrVcI/Vy6uhD+KhLNKQ/mJLt62tL
X-Received: by 2002:a05:6a20:e210:b0:352:d5b:c427 with SMTP id adf61e73a8af0-376a81dc79fmr31125202637.3.1767176452291;
        Wed, 31 Dec 2025 02:20:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6ef1qNkB4ZGwXjGOPHg2/nLF6kCSrBmPw7ORZ3kLabBKQWgsNm0Fbe+7WBYD7Up5GwaiDpQ==
X-Received: by 2002:a05:6a20:e210:b0:352:d5b:c427 with SMTP id adf61e73a8af0-376a81dc79fmr31125178637.3.1767176451804;
        Wed, 31 Dec 2025 02:20:51 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:20:49 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 2/4] scsi: ufs: qcom: dt-bindings: Document UFSHC compatible for x1e80100
Date: Wed, 31 Dec 2025 15:49:49 +0530
Message-Id: <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: TNIBmyRn7MPcKgUBD4P0aUghlK0meIYk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfX0JEfRDkQme+M
 FAR/dnHs9YZH8FePnN7V+UG5K9ygHDnz+nmlAKQ/zMDHndtT8ABtrHnm8GAe9b82ERSaNj/VYHz
 srpeHYuB9UAEWPuwEmPhUZEqCxGQ/OG22Dm8jq+1jHYglz6jtf5fu4UkeBgBUeIIGBxA9ej5akJ
 XdwOcZgvkesBp3RQbTuWcg3myAdleL8Hqel1U4/dZdDZpRWnH2dcUt9q0+7iQcOI5L4ypn3gim/
 AXuxvwHbPyiS9r1CCizVW0+zxYw70KO3vn9FApQHDxjwXCyfEg/kgr3se8ANdv5XCgjSJnLmstl
 nN2ygb9EjB5hoxeJaru2R3vk1gAHhYYHcjMLRQQsehQUk+vTzgZbr5SuIIr6XYgkgW/qzFkEV8A
 ZZZgxpIXGrcIOhMhZt/64MiopFj/CpCnNDqzMosRj0rxgcLmsd35gypXQ8waapw7b3ygJmChda0
 VgtIzQkwwKgGOcfmtnQ==
X-Proofpoint-GUID: TNIBmyRn7MPcKgUBD4P0aUghlK0meIYk
X-Authority-Analysis: v=2.4 cv=J9GnLQnS c=1 sm=1 tr=0 ts=6954f905 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=y5OUiIJSVdG28iL48i8A:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_022054_563879_BA0BFB84 
X-CRM114-Status: UNSURE (   9.64  )
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

Add the UFS Host Controller (UFSHC) compatible for Qualcomm x1e80100
SoC.  Use SM8550 as a fallback since x1e80100 shares compatibility
with SM8550 UFSHC, enabling reuse of existing support.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 38 +++++++++++--------
 1 file changed, 23 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
index d94ef4e6b85a..0f6ea7ca06c8 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
@@ -26,26 +26,34 @@ select:
           - qcom,sm8350-ufshc
           - qcom,sm8450-ufshc
           - qcom,sm8550-ufshc
+          - qcom,x1e80100-ufshc
   required:
     - compatible
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,msm8998-ufshc
-          - qcom,qcs8300-ufshc
-          - qcom,sa8775p-ufshc
-          - qcom,sc7180-ufshc
-          - qcom,sc7280-ufshc
-          - qcom,sc8180x-ufshc
-          - qcom,sc8280xp-ufshc
-          - qcom,sm8250-ufshc
-          - qcom,sm8350-ufshc
-          - qcom,sm8450-ufshc
-          - qcom,sm8550-ufshc
-      - const: qcom,ufshc
-      - const: jedec,ufs-2.0
+    oneOf:
+      - items:
+          - enum:
+              - qcom,x1e80100-ufshc
+          - const: qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
+      - items:
+          - enum:
+              - qcom,msm8998-ufshc
+              - qcom,qcs8300-ufshc
+              - qcom,sa8775p-ufshc
+              - qcom,sc7180-ufshc
+              - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
+              - qcom,sc8280xp-ufshc
+              - qcom,sm8250-ufshc
+              - qcom,sm8350-ufshc
+              - qcom,sm8450-ufshc
+              - qcom,sm8550-ufshc
+          - const: qcom,ufshc
+          - const: jedec,ufs-2.0
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
