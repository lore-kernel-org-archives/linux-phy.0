Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7D84CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHCxhDjwzhxichdWOT/S8NIBSVSv2/ga86bdJgfc6sI=; b=1WeGvGZD2L4LMK
	7Shqf8HdUnB64JgrsE0QeUGy6tSu+FAUH/WoJ5cupbp9VIkebbgoLLWWRxOsVHKj8BpO2+Wg1LhBj
	TUF50C5jdhaH9f4hrKT6zgvjuyld0Bfk2Yom/weii4qku/r5zib/sAvf4BEHawKuf6m2dc8MBMIVM
	XnyxKxoEe7TivXbX1pXC7rAHVwr7sZpsM+teQN1meENJkTRk3ifuDvO6JGiDzXPK9fuwqbcjTzdvs
	7R7Qywfn8sK61McH4YCmuDc1PmPsnKmTAuYn1yF662y+QqikmZ3cGWLuWpMBUa7GLbJ/k/eEOJCGO
	9MMjzelhstHP2rJ52r0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z16-00000004js1-2SlV;
	Wed, 24 Sep 2025 23:35:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z13-00000004jnz-1yQI
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:35:19 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCoZH4016452
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PWqICJbVMy0RpODDALIty+rOGzCBRBu0xbDRo92ujfQ=; b=phhJzxywA9wrOq6t
	Cyty256UpxzAYkUiVTu9ZbneuG3pkOZBj+WsJ24fsAo5XF1pvHzwRqPRNi/nlJOU
	2xOzZaUSGo46reGxoTJ3VT2mp+76HBDPrMrdQjJbzUZJ8pA9HIDlKxAPiGbVrdMG
	9xXRxdPOPbe8QE8jJCZtGceKkgrI19Pnol1BlQyb6/Z7lq4zN0V58BFbFod81WOQ
	zjMx9d6VBrAEE6TXIa7LYQJBULY6DdsDPUtXoHvoit9/Qzk7YN6k0skexPLc1Y7W
	1Rtx1XarO7FBQUeGscxGHDazh4Hgn9S/kji3+y6d5mo+zw+OkgkUBD1amkYlialb
	rQTqPw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyhv58-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:17 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b56ae0c8226so209678a12.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756909; x=1759361709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PWqICJbVMy0RpODDALIty+rOGzCBRBu0xbDRo92ujfQ=;
        b=cnztdMxAZijYDtC1VRR62aUqfcOGQdHcVncP144Z481djFQ2UE7qfqeHRRf2Dh280R
         nB2sk0qhoIrwn2WysBN8NKCPOm/8Ko5wEeqrqRMfCjSysJ4WnPpf+eXfdxNBU4ilX9s4
         fMS6NuQwj00oC8mQKSi0lSlkUAs1eEh2DgLUHFFDIaxT3x2ZfH6C579dN8ybb5Vtwc/g
         0piSaIPztLpT+OyTNkjODYxxHLJebp3XXZ8fjaJNagmzUtMQYckhb/UHoTgusJ889+/d
         vO1EfKhPaFAHwwLdhd/Pv3SMoi9tuQQdA0fSQLuziBED+tkRVdbdD7AlYUudGSHsqTfB
         c5yQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSNmlcL24u5Hi0iwS7smPqkZd3tuPzUkKBww0Tgu/tn2xapXOFb+zXgrHAbX8Dy3uFgTekpnuYO5w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/CbSmbvgzrwse0Thv8HwUGV8Zt4DI3/ofvz3kHf4jyFDXO/Lb
	5lm5xxLjmP+uPdhHtS5koNyYVE176yMtfG7ADlQgodhJMEeoHatLaOczI+LvGLLqXvJ3LpJcOuF
	z0y12zgxvZSgSkXG9lPPK+6E/rNdsyGpbJQ6Z5OqxKabpwkTY4wIGgbGLx0chKDyNG4vT
X-Gm-Gg: ASbGncuB0NZNEkBDw0oZDdh8fmENX18Rp4sli9nSybrOVWqkyRLqhq7NE6QtreUkGp0
	yCjVdN25UpLcMedP/Iqhgby7/X+xge8MWHwjkdUdOJfJTT4Do7/mROMS0px7+tF5k0UneWTyRxu
	WSk7Mph2XUZajzTmv3lE71rcqt9Fhk4MFqsvjwvChafNXmtu0E2MqElIpbIvtLLpes/Bmi1M8MJ
	h2PAKVN/+Tr5CtlnTobO4t5jctIyhKZHH0guK4M1vH8sUaZNaC9Zs+uMNy4ryOwNRHahgJXZLOX
	UuAkZsJj00yoQeVr4RP2IividFZvYErknKlHorGbkaV1bXTVbPKEGUUvBZeY13l05ptxA1E1cBo
	k47zeyF9w2uSNxW4=
X-Received: by 2002:a05:6a20:1588:b0:2d5:e559:d24b with SMTP id adf61e73a8af0-2e7cdda1022mr1646285637.32.1758756908654;
        Wed, 24 Sep 2025 16:35:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHiJ/zMalK4Rfhi+KRWDxvhLRY72fdHDoPyo5I/09BwNd98hpdC08x8DXI7JsGifufRFFlfPg==
X-Received: by 2002:a05:6a20:1588:b0:2d5:e559:d24b with SMTP id adf61e73a8af0-2e7cdda1022mr1646245637.32.1758756908189;
        Wed, 24 Sep 2025 16:35:08 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:07 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:54 -0700
Subject: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Kaanapali QMP PHY
MIME-Version: 1.0
Message-Id: <20250924-knp-usb-v1-1-48bf9fbcc546@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=3174;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=KM21eRPw1BjO3tWglGr4aBncFUF2vQ3eFtUu9OugNJA=;
 b=zFJE8FT4iTnf2yqujsSkjV8dmDKm55xtIEX4wmJa8Y4mo4yvYckHXkpnIkbGaFnepoNyTcSZB
 PXaiYpG0fohCy3P3qBf6UPHN4u46CRHhqcgVPyUghKrv90jmiWpQKXi
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d48035 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2IkYd7TCTIqYiAcLhPQA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: uJIBZ6prN-FjPC2-pmdQg3BkNJ8b_589
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX2evbfgr+5irI
 C/Rq5KAAxYEctJPgMkzjZI6SenWKuaRL9QSdRkeNye0ay+laUjp/Y9EYD6wquWTlMX0sbY6TnYI
 je/3X8npAfBjufdflP+zeGcqI/2LVGn34jK3PEzC986Y4TWQItadPOikSG8Z78odKDJKJ2NkG19
 sg61cFdeO1ZGFS8c9chrazbOV3hcX9Lrb1sEdXK+Ysx3QIuiTtt8OOPXbrf3/MJHnOoeOXn5Lxc
 OtStKZRPSMOpXwYaFa3qHt+sEmJahYRcJqMsKorVJaYfQ0yP0rIgiH4StJf4qTdTqKKXk7le+vM
 A6UgeUJKiCB1zrBAQtYx55TW4VDbMYNa+Qh6a0EjhTjDoMh4j5B/gny4GtkkhacyQTwHytxtUzQ
 QvLGgpEd
X-Proofpoint-ORIG-GUID: uJIBZ6prN-FjPC2-pmdQg3BkNJ8b_589
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163517_705689_0C9DDCEB 
X-CRM114-Status: GOOD (  11.52  )
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

From: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>

Document QMP combo PHY for Kaanapali. Use fallback to indicate the
compatibility of the QMP PHY on the Kaanapali with that on the SM8750.

Signed-off-by: Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 54 ++++++++++++----------
 1 file changed, 30 insertions(+), 24 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..8fa919ea3318 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -15,22 +15,27 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sar2130p-qmp-usb3-dp-phy
-      - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7280-qmp-usb3-dp-phy
-      - qcom,sc8180x-qmp-usb3-dp-phy
-      - qcom,sc8280xp-qmp-usb43dp-phy
-      - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sm6350-qmp-usb3-dp-phy
-      - qcom,sm8150-qmp-usb3-dp-phy
-      - qcom,sm8250-qmp-usb3-dp-phy
-      - qcom,sm8350-qmp-usb3-dp-phy
-      - qcom,sm8450-qmp-usb3-dp-phy
-      - qcom,sm8550-qmp-usb3-dp-phy
-      - qcom,sm8650-qmp-usb3-dp-phy
-      - qcom,sm8750-qmp-usb3-dp-phy
-      - qcom,x1e80100-qmp-usb3-dp-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-qmp-usb3-dp-phy
+          - const: qcom,sm8750-qmp-usb3-dp-phy
+      - enum:
+          - qcom,sar2130p-qmp-usb3-dp-phy
+          - qcom,sc7180-qmp-usb3-dp-phy
+          - qcom,sc7280-qmp-usb3-dp-phy
+          - qcom,sc8180x-qmp-usb3-dp-phy
+          - qcom,sc8280xp-qmp-usb43dp-phy
+          - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm6350-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
+          - qcom,sm8250-qmp-usb3-dp-phy
+          - qcom,sm8350-qmp-usb3-dp-phy
+          - qcom,sm8450-qmp-usb3-dp-phy
+          - qcom,sm8550-qmp-usb3-dp-phy
+          - qcom,sm8650-qmp-usb3-dp-phy
+          - qcom,sm8750-qmp-usb3-dp-phy
+          - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -127,14 +132,15 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sar2130p-qmp-usb3-dp-phy
-            - qcom,sc8280xp-qmp-usb43dp-phy
-            - qcom,sm6350-qmp-usb3-dp-phy
-            - qcom,sm8550-qmp-usb3-dp-phy
-            - qcom,sm8650-qmp-usb3-dp-phy
-            - qcom,sm8750-qmp-usb3-dp-phy
-            - qcom,x1e80100-qmp-usb3-dp-phy
+          contains:
+            enum:
+              - qcom,sar2130p-qmp-usb3-dp-phy
+              - qcom,sc8280xp-qmp-usb43dp-phy
+              - qcom,sm6350-qmp-usb3-dp-phy
+              - qcom,sm8550-qmp-usb3-dp-phy
+              - qcom,sm8650-qmp-usb3-dp-phy
+              - qcom,sm8750-qmp-usb3-dp-phy
+              - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:
         - power-domains

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
