Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1068AE77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 08:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhMqFw8MXSy5dvgjzzK63Q9W/ZhPpTPKl7kuDsY+ruA=; b=uWq+T1hq3TeW7f
	+OqGhsV7ArWkM1DSmdehlxgUEeLpAOFpPAGHW8GXEJyw16T17RNJr+jYggIUFII2uP9RLLtH7nah5
	RttX95sGp0e0xAHHkIAZ6ZJ+psuDD1Qr7zcYutroqLz9egSwLjEW9tYot7hhmIC+MTmiqad5okEyM
	aOrypZFRyC/TwM4raTVu2GyFKAekQC1RqKkSw0BsUD6Zmc8NvO6emrJ2y1zJgmiY2gv/dsbULlMCA
	Dt5q772AgPOyOH9VvNBBDtOZw55CCis7AfdSJQguqhcxAkBvj5RtmEC2uemkaksJ1HXjcIJ2FviZl
	6Dsl1ZVGBZubHJRv+4Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Ys-0000000BWaG-2nFJ;
	Tue, 24 Dec 2024 08:46:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Yq-0000000BWZf-3Tib
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 08:46:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BO4RjCm000966
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=n7Z58j+xEKX
	XWkqjkJYYjOVgfCNeO+sM2+/LbnVc+Ag=; b=Y5BRSDQC3wDVCZxJSt3Z1u67wyw
	jKadBy8SGRiS82CnnUOAXL8D1iKv8pjNB2HY/fryxebSJuiYH+VNFavBFH8nkHZG
	drE10mxhA/OtWNJYj/ypNiLsslDh1icE+7sQHCbutnbGAnwx6k/pQTnYk2ee1kpX
	AV0w1ir638jTRG0W30cEY2jnJTQ2/6/nIaQP8M96d3kvXsAtjFet51mSQopjxXCJ
	KlT7lZTy1Z0/KDdB8tnkFLUM1HGnWr9nu5vAZlepbi+/wZxMNozL2bzEhJSkZ/ju
	1jgnm4PK7T8nGNgPtDILNJ+ue4yzfk1Qz5TFFKSRcytVcmovNbetLaQV7eg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qnxxh4qq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:39 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-21640607349so69235235ad.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 00:46:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735029999; x=1735634799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n7Z58j+xEKXXWkqjkJYYjOVgfCNeO+sM2+/LbnVc+Ag=;
        b=kMTdcsH+QzFAA36juDVLDMN00W21Qn9LCvBT9vW+YJvdqzQHE5dlU1Cszcm4fjwYej
         n+5FR5Ky1hLS8Y0cuGoifjNlsw3AHmHiD4yJ0l4aiFVw6khKOX/pgWUaX+Wis0Rfeyar
         tT8AENncLVk/kGVxb5GoJgH+N0aBRaKB2PUXdf9SQv9bI+KWRJEOOuXHLPsnEXiJMEqH
         dDQ3b0t2O3iPgB9us2HU/3Tqnm966VJ5R5a5K7AG1HI11iztLhrKx/Eg7zTxKRoYp/uG
         EPVvdCufpg9GQV6N2Ns33xLDlpj0loWt4Iuwwh5VJPKtv8kZfV2t2+lakvpeDPcwX0Wz
         SxyA==
X-Forwarded-Encrypted: i=1; AJvYcCV+lw16YjQ6rdRYf1I/DwkZ8kZJQI+8aEH/jyrH8mhYaPPBGXGnXMIImCpp6qmmi6s3scl6CkFnyaQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEnnd5q5WMjyP5IR0+zvnJqMhknsVmzTDs30k1j95YERxtCP5m
	gLyh/n7IVjKE9tz8RpwIvRX+LOdiApFX19TSC7ppuSgVAiHisDB9PLcU6lI8iDkS98sWDm8BQeg
	AEUoioaE2kVkMS6M+hJgSfzhXbhMFx2F2JMA68YdiRBt+PfowqAlbikhp/hDS6Zl6
X-Gm-Gg: ASbGncvqjq5oMRGv+FkWopU+hZtkZeO9nk4z2ooC81Xtukn7rJcQ/OhTOetVE5FSo/u
	zL9ON78c6pZd7xXox2ZMM7jwMT1Y+tZbof4tAPnnU+KlVhdDkw+hZgDPzwuL6WSl6toZOsqXqAM
	lvFzqlaDAnU2d1UKH1UeVyKOGouApyBaEko7J5URAd/R7ok/WwteQUBUq1j2uCJM2pECE+O+t7J
	rNynrenZ7YSqBs5KOns6ZHCNWBxKXTywLo6WzuM/noW0VgR+eiHmAYQS5+nrjNwQMEJuXsYFtrM
	GueLOEpSm///reTuSu8=
X-Received: by 2002:a17:902:c406:b0:219:cdf1:a0b8 with SMTP id d9443c01a7336-219e6ebb28dmr230534075ad.30.1735029998718;
        Tue, 24 Dec 2024 00:46:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+AYe3lv+lxwHtcSMXIlO0zzvIFAqhtir5DVDaVD4dsPaQwqh+CNLDmptIavydio+z/Bn/XA==
X-Received: by 2002:a17:902:c406:b0:219:cdf1:a0b8 with SMTP id d9443c01a7336-219e6ebb28dmr230533865ad.30.1735029998348;
        Tue, 24 Dec 2024 00:46:38 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f692fsm85471195ad.216.2024.12.24.00.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:46:37 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: usb: qcom,dwc3: Add QCS615 to USB DWC3 bindings
Date: Tue, 24 Dec 2024 14:16:19 +0530
Message-Id: <20241224084621.4139021-2-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: xEffVJANBFu5_TGyaerjRPUaaxUplZzX
X-Proofpoint-ORIG-GUID: xEffVJANBFu5_TGyaerjRPUaaxUplZzX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=689 clxscore=1015
 lowpriorityscore=0 suspectscore=0 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412240073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_004640_992050_08BAD831 
X-CRM114-Status: GOOD (  11.90  )
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

Update dt-bindings to add primary controller of QCS615 to USB
DWC3 controller list.

Although this controller has a QUSB2 Phy, it belongs to a
generation of SoCs like SDM670/SDM845/SM6350 where DP/DM is
used for wakeup instead of qusb2_phy interrupt.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 98bb82c795d4..8fd02e8aaaa5 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,msm8998-dwc3
           - qcom,qcm2290-dwc3
           - qcom,qcs404-dwc3
+          - qcom,qcs615-dwc3
           - qcom,qcs8300-dwc3
           - qcom,qdu1000-dwc3
           - qcom,sa8775p-dwc3
@@ -341,6 +342,7 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-dwc3
+              - qcom,qcs615-dwc3
               - qcom,sar2130p-dwc3
               - qcom,sc8180x-dwc3
               - qcom,sc8180x-dwc3-mp
@@ -471,6 +473,7 @@ allOf:
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
               - qcom,msm8994-dwc3
+              - qcom,qcs615-dwc3
               - qcom,qcs8300-dwc3
               - qcom,qdu1000-dwc3
               - qcom,sa8775p-dwc3
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
