Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF72C83F25
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z30cdk4YumzWnQFrfoi5TJ77QgNz4SpX+JZiICTW8zc=; b=yFcm/lBiiczZA4
	k3GBl53XJGHhdmrXIV/oS6UbtUYyM9Ggg9jJ8MKFLJfd3hdkiRXxPJ+AQb+OTKy/lyJexaHSCQ7Bp
	tLy9PxcSByWSTvhhCLDDFmGLqnMiT6yEhFv6znurRILciDryXp+8vMk/rtS5utNpiQ9Xhl0rzHkMP
	EY3YXV0+BFPEeMhH3Oxp7pUtv/y/U9TBsNOp/4rCmeXLwaQ5NC3jnmv6Ji08udEiJ0glPeFwXOajn
	ecET+ncRJIwMMTFzxbP1CHEArXQZvezMLuV2snZ6f8qwRakbHD/PZkA7nZiXqAijEnImVHwbJkspt
	ubIKNiWwcfC3sUb8e3Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Le-00000001cZT-22Lf;
	Tue, 22 Jul 2025 07:23:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Kc-00000001c5u-1Ht2
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:22:35 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M4wS69015766
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z6ZwzV2fRLwP2rYYHbwT2Ikl/JBdsp6+MNb9lNC0zc4=; b=TVzq1frNL/SlSxtN
	WI+DdaVgz6Hgu1dXskmqVouqvahpmof/0OcnvL5kL65WYFsihlhnXTMxd5b7PDpS
	hRONCm69aDPDhuB34dNDT4mgIrOkPtc9h+UN+pqPnt14S1WUNzT5JaEmiR/55vK1
	Cfqa0LfPtFoxvqj3jZ2W1mIEMuUWsI+POp5dUBJqFhp+5tc0cE2Um8qxBCD+XoEI
	9J6i3JkXoR7bqPkdr3XnKIFt8S+n13rMwfomdNVnE7T/fkNftGYKJdkXMUCewhZA
	PdHJeUNUbaDwsulrdYQ4trXIV4URkJg3+94H30MxIXQMSmQvmLyw86MJJPT1p8ns
	3aPo/Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480451ga6x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:22:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2348a5beb24so1580825ad.3
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:22:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168952; x=1753773752;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z6ZwzV2fRLwP2rYYHbwT2Ikl/JBdsp6+MNb9lNC0zc4=;
        b=JuabOFQiY/f6Uw+gwfczgQoBfuiZ8ZuTS6yG3j11NuyByLBp5KQsJkkTbcKjqfzJGF
         68WfelqZauxo9DCUE4l8BH6R90OTlO80Ks9NXaww6XMNPLQzg8ZPYFnGocd+l8H5O3lP
         uwsMGAuyUgxxb/f++xGfy5z5dMz0uZHMvvJ9ZLZqQ7TedfvNDx83SuTMQEsS59birrYb
         fTdm7MIXs9p5KOiTiUZMLzhnmxz2OHyzPjUZLAMDhZ5/oJEVyPrqowieI6/BQ6/EkXku
         igPEdvqf7iNzbbVZXtpSRZzW0GNlb09vrY8XRklTPqlN+SiouZB67VGiJVOKoGWWTVpG
         /GfA==
X-Forwarded-Encrypted: i=1; AJvYcCWSKA8RNhlKGA119WCvnexpW1T5aSksUX45LIuApW8WKTRLmtc3ieOaEBaJhxuz0Xwa50z7d7DgIhQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzfdI4mfWrLNy3D/wJ9ugUpscDdhDR/EqakUdPIH0kqh3Qaz3I
	3YpmDj8bFj5160xqY95UliE25cQHCqmeRU2MTe3hipJDwiL71NLa0bIc82lf3BGe8Ic6nbKUtLg
	oZtPxRrPSuvVV79mRFvD0McSslop5iPExzQkbYSkE8FjB5PMny+75LlqnNzBtq7NDBjYT
X-Gm-Gg: ASbGncv+NyO52huNntgMVZtKXkeV6cQNzAS6Jp4fouN8UzKkAHMDkEykBMdFyoIZRwr
	VdlG6vmzVs4S7HCNIAf/Cohh49SUYkyOaQeBr7mcDXyhoC7gmq7OjBvk77BdGlHBtcPVQW/g8In
	IMTkEnqRRR0zFYb/jwPflMAGY96rn+gHec2M1vnn4ggg+YuPJbtG5TyGpcF29lW7BNF9mz8Mvnf
	WxVsVDhsB2TkpA3nyFnBJ/q3QVpBxiwJH2BUftUnObMAhS1c27SGj/SHEF0uzqzTqj4coFk/1iT
	zB9XVYAudnHlo47mZKggM+/U7XoizHSVefBbBdJlCgxU0YF1gbnzV2VHSqeBw9pkpJPRujXfAEN
	eikuvzh2KyNdX/qGCLYAq5HvjvgbUy0jpfppUz+NkBQybMqPCAvWoOIpL
X-Received: by 2002:a17:903:1cd:b0:235:ed02:2866 with SMTP id d9443c01a7336-23e24edf70bmr137444755ad.4.1753168951879;
        Tue, 22 Jul 2025 00:22:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPbIpYG8v2ydgpk9/Rt6e8nvbsQWG0NcHT8nsJPhxyTxGZd676+Q8C/tNJcrl9ABEm52u2QA==
X-Received: by 2002:a17:903:1cd:b0:235:ed02:2866 with SMTP id d9443c01a7336-23e24edf70bmr137444575ad.4.1753168951408;
        Tue, 22 Jul 2025 00:22:31 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:31 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:02 +0800
Subject: [PATCH v2 01/13] dt-bindings: display/msm: Document DP on QCS615
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-1-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168937; l=986;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=flVURwsSNZtWM0+fUgJqZKMxwfIi346lSujUoU8vBq4=;
 b=lFF3TC9IzWFZbCphEU+PcIbJicZ2nH4+jooaIfp3H+fpT8Ugr8/Lcb6A7g1w4zevBtfnOQzlG
 sTyaMHC/WnDCxaIyrA03rD90NFGzdqeY660ykfSFBWrYsobnqaFRMrc
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=EIMG00ZC c=1 sm=1 tr=0 ts=687f3c39 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=CFpH1fyJroaNsTO7nwQA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: E-u-_by9F9vY-S84TOH7GmVPidi4wU1G
X-Proofpoint-GUID: E-u-_by9F9vY-S84TOH7GmVPidi4wU1G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXwrdzPJS9Dx6i
 5mwv28U6Ilg/khVKIAPhoOtAa/tbHdMpjzcAwSyp6JeIatqjxRSLNNR3vLr6k/N6NUTwE6KF/VZ
 8SMW4shKDgAXw/o+wU5WXTic1+FQicMq1NsMGZLMNOFMRLjajXdc8Lo7Dv/HEtYAjRFBFW4OcQ/
 q73WOx+9wtmcX2dG/AZEWk9uctoZR09+oATYgpA06Gfc4Yu3tdeZ2F8QN0glgDjwCUUDHywPSmR
 DBdgfw7EbkBzRq/QSlmUeT9HMCgdXAMTZs7SPkpPwmN/skNm6nURAqxV1w3WON+Lx8X75WvbOzq
 6xzYPMbobin9bBmAWA5DJa1dSl/Z08/pPGFocLN7HaU37q2k2dr4PQUBZa4adjefpkVCEMFxp7v
 uX/uccwBXHbdfr0odFNIDJBaktzh2f1aKQcDDauv48c1+C3SOLKrk3SMvuoLI5WABf3T3CBB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=976 phishscore=0 mlxscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002234_469855_DC671203 
X-CRM114-Status: GOOD (  12.33  )
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

The QCS615 platform is based on the SM6150 SoC. Since the DP hardware is
shared with SM6150, the compatible string qcom,sm6150-dp is used to
represent the DP controller on QCS615.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 9923b065323bbab99de5079b674a0317f3074373..996d0132e084d401db85014a1a4e445d00d62ed8 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,sc8280xp-dp
           - qcom,sc8280xp-edp
           - qcom,sdm845-dp
+          - qcom,sm6150-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
       - items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
