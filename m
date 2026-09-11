Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 007FFC88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynkwGyMwmeMATYneuqilzqp2xoIKnyNM5wTsUQjVIgc=; b=MB9Hs3qHQvGd07
	CuQZCa2cA0hAPh7S6OfEQaWW36p23yb3vOh3Dd3c/fYUjXwfY/OioOCy0Av0DYD7/rMQ1XIi7Sku+
	IqGmoQTQwg2pEEER/X6A1sWykzEKAmP9w9REqFo9tqp+qrcWS9HSJTFMw7X+iXWyDBjs8jfbuxnU7
	85ok92bYj8Ar3DkesZrTnN8uLemotbr1ECqjjkqb0pZKPc7qWdGL+JIuIlPoBFDEObMNbT2e0hz3y
	DvnwR2l6EdV0IthxDoC3V3qWH1l4InRMEz1/5h0o82eMBzVmKPvP9NohwGnAPCmpxKd/CUtS7WJRf
	SdnDk4XnLhJUgjxEzGTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53JT-0000000H4uq-2sze;
	Fri, 11 Sep 2026 15:37:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53JR-0000000H4uS-1iEW
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:37:14 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEm1Ex269336
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+MBlKbsG25BxrzRCEnnBfFH5TzYzNSnlE4rjXRK1RBA=; b=kzixV0AhX+mqDzjS
	foSMA0MkL4iSWAe5cx4SOS9hje/AEsOEPwuJvVonLmBT8IZipOtRVrVvOsvU+FqF
	GJe1vKaUA+WnBUuYvs/h+7ziKu1qWK8CHu3LsZXVZ08jTQeZE6dH0MYdkVahS0Ky
	VQS8xllGhZPteDtR2xcKqpOufjYUdGYjWGmLWrzEWzWTQA4wdd4O7Gkp1Pzm2p+s
	IArgoIH8fQRx3B+NnNh3C7/jelYXAwWGMCgL5Nq3A0DX35uf1IW7XM2OfuzLnS38
	nekA//XJA+cW5UvH2HUEJM1abSSwqvM4Udr06h2S30Hf8INWvoxV4WdDhTejeZ5t
	KpswzA==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbd52hr8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:12 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-467c2c754f8so602151fac.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141032; x=1789745832; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+MBlKbsG25BxrzRCEnnBfFH5TzYzNSnlE4rjXRK1RBA=;
        b=KEtPOLyjYCnWcEq0oHASoo9A/+jU6g16MZnv5ZAs9jw+Aq2Im9x5b7T2CJIBO2G5EH
         wwRPjuXDyKU/b7HxoDGetCAQjrHoAifKYB4eDlMdQkHaUJhXzAOt2/fdJi9foY9sJbXW
         8zHWiiPva2k/Bx+PMQFrHeIFypkDKdEcpnFww9mpvM2pbHFAmbwroDTZlHnMjhxjyINY
         0jD14NgZgCYEDaQHsHzAVX1AKsN3h+rceFHPuA5V0JfdQD6ji4xd6WHQUYreIVip2+Wy
         a0fxPJJaqpcbWS3FCc9PYWadH7b38Osf41qzo6d6OcxScO3XwHn0X4tUbnFXd2V0pc3M
         Iacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141032; x=1789745832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+MBlKbsG25BxrzRCEnnBfFH5TzYzNSnlE4rjXRK1RBA=;
        b=B1RaDCRcNgHzUvUhq+pXw7WT5jjI1q+fprwLE4tMK+25ggijS3vJ2ptxkqOfYGYqd8
         yHwbMD6+GL1BfFKJexj7vft3q8MGA7W656vhup3yOWM1larQLojDn9Nh4hEQOGpuy2xb
         j944+N/Y1K2ilyK0rw5Kf7+gT9nu39HscmPXAV9bI0+p4BnJfmlgO6YMkrP92dOONBYp
         LkqOduNtuf7M8ZkgdlJ8h3eXmt/ceNGvH1bDp0iLgFDYmtMOcALqLE+20ikIn1hsu7+x
         TZ7qGNRtCKyeMwg2qzkrLvaFQUXBS00LQM9jlC3XbNPKgmDqCUeG3Nql856Kyb50jr+e
         l16w==
X-Forwarded-Encrypted: i=1; AKwUvBzdIE1Wm7EVdghrS/2gziq7Zc40OCGbJjyJykhrbIsCP3cQafiNIoIIZ8vWtYBJ0DrSx+y3wAAH/YU=@lists.infradead.org
X-Gm-Message-State: AFuF++nVunoK6KvyZxcM5UzZUxNE55reeg6Nl7VolKMjg3mssG9hzGRo
	FYJBnBrDyi26vbMP2nG3aHmiz+yN6BdeJUNgE78ytYlDOLtN6ciFZQDou7tpPmVKqDWB0Tw3ZWx
	mkYVdLCNuyX4I3lBu0up1zKshIBIfcQfs1pG/a+XTF27sv9mGKCzzOA9GMQiXUZ77Buml
X-Gm-Gg: AYBFou2fz8tVsQfTwbn3dG0bh5o90xvAecLwzV9quSEVBkflemnrsQpfWpOWAvM5EId
	Tk5w+sPDkXTRjijcq0gRj/ZKpTErFrteKG3Kj7LZrshtR28MyCWmRL5YOv1jV+FaDYDuwfJjhbg
	eV/OPA1DhhXp2oOtJ+uqqo9ZrR0vdRv6qgWSiI6xdvPC9kF2PEDbjSXUkOSKCAUVLW1i/hc/hXO
	y33Yml241jVA35DC3TIc4XP7JCeN8YrND8Fz2WQnGKf28cPaFzIa3SBn6vlWJCWORqWpBWdr/v6
	FgXvKalhp8ASRx+5N1Ayc6m4zdVEYNFbbSMfU2rK24KBh1rp5zXOnnMCHUA1fFqLtUPf49j1o69
	Gr4Iy9nqhHhbcWBnANS+DftEFeXQ=
X-Received: by 2002:a05:6870:326a:b0:45e:f698:e310 with SMTP id 586e51a60fabf-47de79362bbmr3717058fac.11.1789141031981;
        Fri, 11 Sep 2026 08:37:11 -0700 (PDT)
X-Received: by 2002:a05:6870:326a:b0:45e:f698:e310 with SMTP id 586e51a60fabf-47de79362bbmr3717007fac.11.1789141031526;
        Fri, 11 Sep 2026 08:37:11 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:37:11 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:32 +0530
Subject: [PATCH 01/17] dt-bindings: phy: qcom,edp-phy: Document Nord eDP
 PHY
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-1-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=830;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=LG7yAm5EJ/K5hHiVQ9TOdhV/Qy+L/cR5svbIcTlXH+k=;
 b=HLVsBQTXbJClkf2ZEB8enXlHxfJqVSe1ahjDE+AFNK+5sflhib0OqP/ovtlGUgwOhusywMf00
 /9a3NVJqljGDjeLWuBGki1k0cXRknONchqtEa9u0DabP5wsZJWSi+4G
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: BBMGPFG9SgpKGxoce1WV4V_Tc7pbwgKV
X-Proofpoint-ORIG-GUID: BBMGPFG9SgpKGxoce1WV4V_Tc7pbwgKV
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfXz+GFxg46bM1I
 hsz4SfXbOyc+lRifha+9saAwE98CHng0GKWQexC55Ynr6FZsZMBhV5AznPUJD/SlXe9he/Lcivg
 ce4ilJRSTk9Q1VJtA0tfvhrM30WAzh8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX8uxJCORQsqB6
 One1i70SU7NVB8lSfbAB140MnH7bVdx/vdoSYRYLa/7GM4UZbC567AGlKBUs5j8M4RUfaPNAcZU
 T9yyXIblKjLNbj4I83TvLk7DfVUV3zHKoyH1x3ODA1MMgD7PviO+3IeRWv9w/+tz6DwKC7nyzrD
 Y6MqjNc3qzIUF06Z98JMF/6QKC3uSImZgl9wsd9GfKuQVpuy7Z+ggx+BXWZi5xgaJeWdwYeVJCN
 X6pXp4XnBkLbiLWYfdm9pWojwuBSLiPsmodPYFeYNMEfJE+daN9S89EuZ4UdGQ/JtvlWLNZNMHO
 fZSAqbcVOmMTDrxssGYUZhiSdX8ZjQbMgozLly+NqZud5WzTyBzngFSOmDvYToBjYlzxWcW27+U
 FWoHmmEAsklFhMfXYm9tmVZfjPESdWWfqSgeo7pU4ZGbe4mFvHRVsniZKgoWa2dRUgUSycY48dz
 a0B+ibZC4S+KjqJabmg==
X-Authority-Analysis: v=2.4 cv=db0VTnXe c=1 sm=1 tr=0 ts=6aa42028 cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=lCWEfuFUYIIHy-HYLagA:9 a=QEXdDO2ut3YA:10
 a=1zu1i0D7hVQfj8NKfPKu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083713_464028_EA598F72 
X-CRM114-Status: GOOD (  10.74  )
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

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Add the compatible for the eDP PHY found on the Qualcomm Nord SoC.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 0bf8bf4f66ac..91d7a5c8e19a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -19,6 +19,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-dp-phy
+          - qcom,nord-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
