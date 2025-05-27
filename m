Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD5BC54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 21:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuoUTDpapCPZztcMg/SKUEmD+W+p7MjntxKfzkJrEmk=; b=wuExMjbLXhPCyZ
	psNZsT0bwiOQqmlil+wqH5Xb8CVI6dkXbVLzTVfXW8JaR3fGiQaFwAHY2FaG9NMzBeiTur2mgFhKJ
	Zs0VuZS71WqaA6D4KyBXYf6wvOL+8aGCGFMxtSkd/5Y+Nf++sNKYgsGh39qK20KVBgnu7So+tqwvV
	uAEovN97vxQ53gDOy5Z8L69RwIvzn5z1L/HA5dYob6T4gwe/9UZ/W55HXZYm7Py77NUQ8yuHx2A3L
	c/Uxbb1PTRjykDsawg8ILRJ48pY0qI5kutehwc35RsfDr8nBucPol5O8FKd9cCUOww0NYYyX4KzM4
	vjzX0xmbQOf9TcJ1gDyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1aE-0000000BZxA-3aiY;
	Tue, 27 May 2025 21:11:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Tn-0000000BYrr-2nZ0
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 21:05:00 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RIg6ZI001576
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8gIhfclnLH073VsLY1ttHA/tXRnGUkM9HdwYW3xYCyA=; b=FEmTkq5ApBPdiyy7
	fYfR93tebQ/gtSyFOXu9QDIhyhgfbwvc6f4hTt2Wm6kIecV/JYbRXGycx+Eh6suM
	MHaef/GAhoUyd3z7Fy0l09g4yLPwaZeGfU3zp+JLI/vyh+pu27QRoN0ckzPPByNO
	mWw2yZieD6yxPQLqZ72AHmDkq8Si6nEfvWhZnsZSGu4IKJlx80icxvPhkdKJjMmf
	C+P0znTmdcovkywfsnT2Mplic/KYKztLXEcdV2PtITKXgAiZ6t90wZwfftUH1X3I
	1IF0WFfn1k0J+B2ZMR1tBNc+drLGFYDwYLKETg+XwARFFsZnGWMoJ6Dns8LjlR1W
	ttVgmA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46wavksyeg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 21:04:59 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7429fc0bfc8so187085b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 27 May 2025 14:04:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379898; x=1748984698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8gIhfclnLH073VsLY1ttHA/tXRnGUkM9HdwYW3xYCyA=;
        b=BQ1HflLlIzG2YAxi/5HxcD3ZpkD81pMd4Dd2JuJSPHHC2ReudGs/EP7wLMKef1Em2y
         /iFhQfFQVeb1iNNZ0fmMPn8DzR07W/WKiiOH088m1bUdeDm02jUGeqTHAiIOIbqLKbQp
         OSghlLcblSDTpU7uwTDzitShz6SUJjZCpwibderA4H0N6Iu2qF3GVNId8a/azFdtjlet
         NoIY4Kn7JtdhKp0Vp8HFELFsX2aFnF6xa5xh/1HUmjcf1gcKsC2EoWCWxPDefA79iRzs
         tSxaLEfmgFan1xF6QXKsCAXSzxfL+cSO3cviqKCV32JsqrbNghOYOctrx/z4pvE14viA
         H3FA==
X-Forwarded-Encrypted: i=1; AJvYcCU/eKOO9Uv6adXJVHLGjzNu3Mnh2F0ubZQAtRMqP254kVr4UilP6yMcVH1B1jhtUdbAmoPUMvdYPQM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxsh+w+G66wCbbGY5/D4tI/IAtAlltfSz75rOJBYcnuAIJM5QWO
	ciJTZZEDj5y0XT8tYo44K+LUeyxtKChgUJbD9SxpxMKJ9gkto0axkSu1ykhFMqA0Uqq82agBcMa
	ey7NkzqQuCt35cEatkY4PI4vhye5bv31Js9wZ6x3oNv5QnkW2gurNAXSwck9njgxASx0P
X-Gm-Gg: ASbGncvKUPcGCSnkFxPM0TQgwc5UdVEiG37eB+Uvl5jNYw+v1eKzUKyEY7zBsXBbB7m
	m+/7tZ5qNp+Yoi7h/kXf1TBj/A8ShUo5+ltgZKj+CSJWmzbS8g/PX7ZB5bVEimUUA/HkqsNQOGZ
	iPBawHZQx7KcmO0Oue71y+t25qZOeQpD7gkmzUkkso5d3cz+bTuwzI5H0nobrOPODAkk+oJ1HJj
	mRXhoHpWOstW3FGvs32mvp7rmevEBIpKdhLIgQE9+EHcpah7IOwpxaf+Jbo9Q9Vj2N9UPctwcu3
	Cp5GBFw6HpcUQqGaIEqddkP/I/glKBif5KBh2COxWyxV3Zs+diS9gDunnmABo8YVRcM=
X-Received: by 2002:a05:6a00:3ccd:b0:736:4d05:2e35 with SMTP id d2e1a72fcca58-7462eae8737mr2671744b3a.3.1748379898176;
        Tue, 27 May 2025 14:04:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErVuSX8VnhDC5c80QonelHr5ry9GAhDcphlE+t5DRrIAcd4JLsqfnIcR34CNcLszXepePuHg==
X-Received: by 2002:a05:6a00:3ccd:b0:736:4d05:2e35 with SMTP id d2e1a72fcca58-7462eae8737mr2671698b3a.3.1748379897734;
        Tue, 27 May 2025 14:04:57 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:04:57 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:39 -0700
Subject: [PATCH v6 03/10] dt-bindings: usb: qcom,dwc3: Correct the SM8750
 compatible
MIME-Version: 1.0
Message-Id: <20250527-sm8750_usb_master-v6-3-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=1199;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=NhOsYBi6tADTMUAiHJ0Qk3HAGnZPId0WGmI4bIdXuV8=;
 b=lobSYcFGVwh8sfpUcLjkgbtPofAxzVDKJAfkDY2FUYjTHx3YXT1XBfydR+LmUIt7NbMLEs17M
 4Jec41PnZl5CSCqn6HniNcEqQYvBtscZOhyooMC3wXeStWPigeWIgmT
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-GUID: ThBKwUeGpDnSAq0d2PdDxoXKuuk9AZw4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfXz0J0hhu40Rib
 8NJHo+ynMqcqeqs6aByEVrAzytjCztSUwLgxDL0/0uExc0TNb9EDbOAsNi+b210qjjW+rizuEyF
 LcTAy+kzFdqGZ0FUSbGsJJiQEW1MnFaur9Thc9TKA+I8V4qQDTkxcivoqigqH1TXJxA2rk/LKuk
 YP/niho4t4csyrIMelFnThErZBRnke9nPUmG+bV9o3CVD5yV2vVOXzm6q5ZnupijNdOpRbfZkKq
 nY5teRpO+VYYp/+Ed8NKOttD1HyYyFK+idACdCk7M6/AG3tvZo9U7QfR+4LE73hv6toBXN8lpxo
 N1vb1Q1o8OAhKP4JA8vpFAdqFOYtMACAFcWqGn3GDTLcWbTeTgdICEDDN/xIDdcwQyJCMQDCWYt
 rRWy9Y78CNJV31bW5BCbzAkRL9JFHtSrbJOyZjwK5IlhtU+t4uRLl7Mtt1pOfG1u3BmMnm+z
X-Authority-Analysis: v=2.4 cv=fMk53Yae c=1 sm=1 tr=0 ts=683628fb cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qiVRAF7mJj4RLuWAUSQA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ThBKwUeGpDnSAq0d2PdDxoXKuuk9AZw4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=550 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140459_715515_DCAF54B5 
X-CRM114-Status: GOOD (  13.41  )
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

SM8750 does not require an XO clock in the dt as it is the
parent of the TCSR refclk_src, so move the compatible to a section
where the XO clock is not required.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index a792434c59db2e6ba2b9b3b8498ca43f0f8d1ec4..298b1472ccbc4cfeb04927da29ea40b9883d03eb 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -227,6 +227,7 @@ allOf:
               - qcom,sdx65-dwc3
               - qcom,sdx75-dwc3
               - qcom,sm6350-dwc3
+              - qcom,sm8750-dwc3
     then:
       properties:
         clocks:
@@ -366,7 +367,6 @@ allOf:
               - qcom,sm8450-dwc3
               - qcom,sm8550-dwc3
               - qcom,sm8650-dwc3
-              - qcom,sm8750-dwc3
     then:
       properties:
         clocks:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
