Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68059CCF9E0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYnCc9s5zOg7Gl9H3BzM6MdMXbFWgBmefNL3FGIy++k=; b=TzGrUiUcBSt8Gq
	14fPFLjA4yR6BbeAVdS12zToCSBkaL8K+i0sdsowSxxTa6VuakeWnLcPPr6QieqM37ZKM6o26jUUm
	xzKLsJzHDVXg+tUizc3TolR4dB77aoCPrDYEs31Fw+x19XsHxkULP59VS16WzgmfEePshOI0dqwlo
	62xdm6OuPQnmGxVsKRThhb1UNcVo8zuvOFyTU4oH30+Qo+eJgU8IzKJ9QKsZePzVU+3W5YpAy5NS4
	L4lqYq7k14rWS4zdvFb/Erj6bi7wm3Iw7x51dGrMQxAxhMarsIzuPOjxxyQeW+g30ZJ91BIUYH8qZ
	Q93hehShR08QbKyMX4LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRv-0000000Al9z-0PZV;
	Sat, 25 Oct 2025 00:48:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRr-0000000Al7g-3pNz
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:48:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0l7su005042
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FpyZ/jEjKaSYlOYj3phtrHzSdLTemRurqojrELo3sr0=; b=AkQv0Szv4Ej/OXo/
	AZPNHECa5l27fFbHMTS0AJgXWLFeUG0neqXN5Yy2WPy9yD0RzMdt8M+CN7SE9vwb
	RxQIf6A1RZsmT7jvnkbx2j+MdAodPa9VJ9Z/zppXJN0CGBocTL0smF71uUEHAFMp
	CxdJATyDdZ1MHsw2gkzHV5etUTMZZ/b/rKH2ZhDbxQdwTVLyATRL46V6jPJoa9tH
	e44acU+qmwjeHqM7u0Tr4E9aLdQE8fXsG2puvJy41bjVfug42t1kOe45RqidrKCy
	nFkkuq6/6tJaCUNAXAzyW4WeyNEJTjDGEQj62ZHUnEizWD+TTYQOzUDx3qXlhGLm
	dVjU0w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0kwn015f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:47:59 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33bcb7796d4so2599181a91.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:47:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353278; x=1761958078;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FpyZ/jEjKaSYlOYj3phtrHzSdLTemRurqojrELo3sr0=;
        b=wM97k+qfvbacnccoHBK0kVXWIQqm99UZwKW9sd2rJ3yAPy7DiveNafpJixPqA6ETZS
         WPUofAQCgckZacKYuHJxWLC4tlWVsWBkecg2jH7Jblubq1c8Mv9bcbEZGNDZrlUwzL/5
         kYmsPVbJRbsu6Kynsr1VL4Fjyt0PYaCm6z1kmwtcERARypCGnpdzxB7Zkagqqeto/bpm
         +/eUsMCX4FCyCSpZ5DJ5IyIu6m1nFrTaPPjw1nNU21Pyg0z9iboMnhmieN5r5y2JjBC4
         /GTd2ceCusobo7Vmrztu58Oo84ExqsUOomjXccSBU32rfV3N1Q5EE7vQ0xPTFoAIvLqI
         eDWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPuUsiHGILfFO/NjhbJooBDmgKGU8rhs12RZPlS1A04ltfLkD5W9JDQskxOgTxl7ysYTl3Vk7usig=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2FAqyttnkBbNM32XYerrjuBm39Q6AEaFiq20G9JFsVmEnGeN/
	xlFUMQshLbkExsRvjvZ3rtW+TNXQQ9G3jyCHKdiHO81HgRHUC+oUo7uUo2x2vv5u2CexiimdCtS
	JY0rAKEiaTD72VwCG+tH5dTbAb22gT5oYxA/jGU1yoijFPbyKKpzyrvme8Q8g4HsEna0fPXusQB
	O0
X-Gm-Gg: ASbGncvuXjFWJk0T8kY6E0JR4P6Z3EiGsL4fu7sENjVgZWrGzFN6/GCnpWrkw1LBRHP
	5sPZ4QkFqJ03LxdqkHtJ9I8KrvM5VmGTornI3UE3MOErabdwiuc1SEprBRusNLzKbRqmyx6dwR+
	Y4Q4ehCKFMu60klCqrHBYMf9rfhyC946N6SBkMu3y13EA3p+AmNO5wBYIGcuq5GsaPS22fjjHYw
	c6aqvd0/YZHJoBfaaG/YygGldCI0U32vioDHus4+9P2XxgPcps8hPVu08qsz1lYAMDDuzl8SO0A
	/aW9nK8RmhFiPh5H4U4C0G3KWJiCb5fKOCnH/UXB+GmiR8GUFhq03ZHYSoOyyxjf2PYzhYaxl60
	WIkvyNaNwIHy9Rzyj+kN4/1IUUhlNVqbKrJzm2T1TQJbdYtkhmSM=
X-Received: by 2002:a17:90b:2788:b0:33b:c995:5d92 with SMTP id 98e67ed59e1d1-33fafc44ab6mr9447529a91.32.1761353277721;
        Fri, 24 Oct 2025 17:47:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYH/5TsIqZuEFZIG1UZ4ueu672sDXLlIYwgUMrBT51DhoBhrAhbJdQmAPUmoGjktbLGq4fuQ==
X-Received: by 2002:a17:90b:2788:b0:33b:c995:5d92 with SMTP id 98e67ed59e1d1-33fafc44ab6mr9447502a91.32.1761353277293;
        Fri, 24 Oct 2025 17:47:57 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:47:56 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:41 -0700
Subject: [PATCH v6 3/8] dt-bindings: phy: qcom-m31-eusb2: Add Glymur
 compatible
MIME-Version: 1.0
Message-Id: <20251024-glymur_usb-v6-3-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=MJ1tWcZl c=1 sm=1 tr=0 ts=68fc1e3f cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=mc96eN7qxqRGlWWVoSgA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 3kLXsfZTaD6nHF8_Y2PonhpYGr2VfnQ-
X-Proofpoint-ORIG-GUID: 3kLXsfZTaD6nHF8_Y2PonhpYGr2VfnQ-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI1MDAwMSBTYWx0ZWRfX1ZgGDHfrAkyz
 MoSyKIbZaFbW3SSPLNz09+4oiqXlUDCnIId4fcYjSU60XtYYsIv6Gj70yp4wVcIchYzXTVXJ8YE
 4xnOIhW+jmdcAP4uqdac0wl1+NwbbVvoN5SYH6PS84woQGX52Eqfy5lw4qtKQOLHHN2xv7C5ZV5
 d1H5blGS/64sy+RinANiYvQRBcD07O1lMuOy26Zc01Nb6eV09wvVs42YtGYR5kyuEmbj3mhSAsN
 SxuZaqoY7s9gdajvTLBmzB/2pVbUzbbMz8fHkzKaYoxdV9vDHnM75S5rkU3vzm3wO1GGJ6jsKXX
 ftDuNPuwvjA42yoooRWWBYfPCUX0JMnUr2rTN8eFBnN8V8R5onfva7Fy1OK3lW7ODw9hnZ6FV1v
 sa+s8wcozXTS9eAox8gtmsCbmUc44g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510250001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_174800_070693_A0244D2E 
X-CRM114-Status: GOOD (  10.98  )
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

Add the Glymur compatible to the M31 eUSB2 PHY, and use the SM8750 as
the fallback.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..409803874c97 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,9 +15,12 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - qcom,sm8750-m31-eusb2-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,glymur-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
+      - const: qcom,sm8750-m31-eusb2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
