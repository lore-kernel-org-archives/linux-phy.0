Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 608E8CDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ii5bjIIKAedTActsWgF04VZuWfjstx8o4R1zryuIa40=; b=Wxb9MoBMwDpbM4
	Eg2z0zkVd2SOEVA6JcJ98n2qIY8dnSFDAHFrstFof1uBGrwB5AWjeFdfFJBEeM12sQ/rS0rc6X/Aw
	A0/Wf4+Gq0ekULAH67yg6W19faEWmxH0Dcl74Sk+a5WL5x4+PO/9eGryAMZbZxkIZDWtTDnbSIKfV
	fmnPKcuGIr32Qt0a6q5WkJyAFhNJDH0vZBRNDyqtwEmo5VVR4lr9KEJ6Y0HAJg4reWczJAqZ2l0bG
	oOjWwLrPvIN0LyloOC1FdGhCnw3ULS27qGs5a0YFCfCHz8EhFnswMOtl//BnOzWgAcPTpM++6Tbtc
	4og6u7FGrOK1rJusH0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0on-00000006JVB-0B0K;
	Tue, 23 Jun 2026 13:05:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc0ok-00000006JUP-2GqU
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 13:05:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NBXcJq3752890
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QBENkoZaYaXxPSASHmcaxsCEyi7v4L7vT5FlX6cyDyA=; b=TGMrIKdO+2KowRQy
	KqzlHrW52zH0RMz31yQPuY014eaaWZzZT7cOJhpp97cR6N++GJrR9kJfIQBPFUiD
	00BM/OogyRsjiQeRy6q3kGx6ZVeFjxMeg+R6hBNrB8GIpwqioIkCRkGAA8dTfRXQ
	O5+apzOTbwkiiJAv9vk7djC9dD/OyJcbMlRr4elNUIJW2GUpUjcKOGLF9FyhTW3T
	6nn0zbrhu/D+JviQpK/UJTo4T1OR5/2KJyYTHy4i9bqO/sZt5rEjkld8SFW8VgdO
	scDHXNYrpPkHnKOCUY8iX8DmiNR9ldrZyRjbVU9geyBD86aOk5npHxvTA0eE8QEl
	khxChg==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyp29h86q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 13:05:30 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7efdbe57d56so104011867b3.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 06:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782219929; x=1782824729; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QBENkoZaYaXxPSASHmcaxsCEyi7v4L7vT5FlX6cyDyA=;
        b=g82EJ1+mCYR9vM7wLslm4YK/FIoGurRbvYcFJJUhO8XxsQdEHs2SJ533HfhRcUior7
         afthdB334gegbXiKwMys45s46HPJB/YjlyKX7zsZqL2b6V6K4bk7086C5yfbkRvd7BnU
         iu+R4pPFD1ZLkZmYpOZqGOyUrAwJlu8Jai6NFGFg1q42QWJA16a7v0cvcMTrX1tijgjB
         PEkM2pDto1h3qGS1eMouRaO64/vCw2+yYj4H1d1ptESEU4DRgy1UqaTNroPk3QXxzXHd
         EAzgiPs4N6UksASRZYs6PrpqSBI2+MFnNO1o9s36EKM3WiAXQKLjdBxnkBGZuqIBWKID
         AXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782219929; x=1782824729;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QBENkoZaYaXxPSASHmcaxsCEyi7v4L7vT5FlX6cyDyA=;
        b=tEZskjrN7EDU/MEPLO89PN0pmpkNAFLvo+NDHrzk1jhSmvkgdxyQ6S8SdvvCo+L/TU
         uFPL3qi8RYt/vsHJFOwpNI5b8flMKKjF8jvglJ+SJPVthEDOdYdlHw0HbI1TxipzUB/N
         8+f4Binh6nQ+NMQJNnJ+leYfdDPAcvGIYBdnRFlkO+0XH3VkDveAu7TDZKtFNGOI0KNd
         8k7ULzmYa9MP2GVkP4XjMlL8G9x/s1PocnwDcGMkjrfQcnRYbIrIT0TGUZn1cq9KEGHm
         R6phZmAkq3QMhsQ8pU7uHrQ9vF1/9yUuK1QhmvRgty/tNK7XglTdbm+cA2zKa1TVr36v
         q7Ag==
X-Forwarded-Encrypted: i=1; AHgh+RrWUi3aBVCibMHdgvmEXkA2VqVQDK7YJxnKc6NXO3vbaxW87jLhUStvLvasmlYNnYRNL1x8v3TPaUU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHpXO83zDNMC/IxGh/taLqTfoaU8SQZCdmjfRpQj6eOfQ3AIYE
	Zc9yYeduPPQZHmzuDrNR+lDTLwlXlRMOgD0WcUxvCrmNjGK979LRLFIHWp09SupCg4E9YJFXvZk
	yQ0QeMK+E+MGDRpATKvV9LriqsItWOeztcBz9reX6JEsQMMEtZJvXRRSWeU2fJUdpmk/e
X-Gm-Gg: AfdE7ck2iqG5B0kUMh5dwAbHc+jxk+uHnj9D3ggMTgzbTB6reBS6F6zBfc6WMB9IpHz
	P9m6wl5hO4dvlewRThFDqc695ep/N1muGymIFDScnzAnXz2/K/L3tu1vq1Sp70ztRVjexzndckX
	Jy2u3j4pprslPMobjs9qg5zOwX7KuVZCQ1cU1kB7zPGp63g18r6OGStNcRkfdigIkO6nV+6MEpt
	6Rov1z0C0Fadk7tthAN+Ooja8EUKmBJW++TRkUJyqYeBe6Df3s8S/Hr1SmJB7kGgqY5Oekt+PjP
	9fCT/z2eruFXe5B5S0tdqGHUzQ3i2ExEzj9mDrfcbGRCYWYu/aJW/53i13BuIRrMbKbXbYMoXNG
	ewQo+dd+AjFJX3MWtnBGkeDr7tHUQUgcn09pBLGSRHQ1sFuXvGp98sAPG9w==
X-Received: by 2002:a05:690c:3706:b0:7ff:f11:24c8 with SMTP id 00721157ae682-806dbc38f2emr22464107b3.6.1782219928952;
        Tue, 23 Jun 2026 06:05:28 -0700 (PDT)
X-Received: by 2002:a05:690c:3706:b0:7ff:f11:24c8 with SMTP id 00721157ae682-806dbc38f2emr22463487b3.6.1782219928411;
        Tue, 23 Jun 2026 06:05:28 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8025ffc700bsm44091127b3.36.2026.06.23.06.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 06:05:27 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 23 Jun 2026 06:05:17 -0700
Subject: [PATCH v2 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Add
 vdda-refgen supply for Glymur
MIME-Version: 1.0
Message-Id: <20260623-phy_refgen-v2-1-4d15983bf91d@oss.qualcomm.com>
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
In-Reply-To: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782219925; l=1582;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=93/aBfJdMnMxQ1hbCH7NcblkNMni6c+McXTe75xVLsE=;
 b=gKQGrmpz/BsL9ZJoibvqsJOvbxakAkEmoj0/Qy8a/gal7/BjPkvx1Y402RQQVlpkpoxR0FMhq
 MMGkRMKXr2mCLOZh/Q/rAZpBV6HW98StfY/eICJv84PR6j40cPfKEMP
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=LdAMLDfi c=1 sm=1 tr=0 ts=6a3a849a cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=vs92Cf7bL59LNXS1VVEA:9 a=QEXdDO2ut3YA:10
 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-GUID: tImBD539Pfjxnk8qTtacluV4-sG80eOL
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfXzEh1Katv9j6m
 Bqlh7v/6TUBG8FSLdQsYbBf8CcejiHwC+DoALVle90EC/xXJd9v/DQ6W0sz/V3qygNzadfNcaMI
 Xaw6W+eOPMbFtHgCiEGYomM2e8ehIq8=
X-Proofpoint-ORIG-GUID: tImBD539Pfjxnk8qTtacluV4-sG80eOL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDEwNyBTYWx0ZWRfX5ljlsrabWSiT
 zRMwHVlHCl56sVoASrI+ZEuptYqWdW5qe4AB21wni/DBEJoTx9gA4qQsP7yOLNc65QcIcXD1kPV
 46aC2Ou3d0d3Sc2j6kaJzOWEwC7TkW2O6QewtlqknuR+v1odRZ0wDfv+iZ/c/9HUA+aC/f0JKsB
 YdSNBCaTFqj5jahlHv16OOdhL3VkTcoTqCb1b5iLgjWOU0t+N5ogibMDzRRUnTrdoa7Z7YHer7E
 4yy7b/ZsomhQD9Ty3uGTeg1TOSJr7Nd5TesmSTU7mqYmPw+MUGOPDrWkJknjPCTYEy+429mrFnu
 JFyNqUEYJxhJjGH7Agk9/TGla7Wxtje4UMvwd4ObZKoAO25iX1Qsn84oOq4e6bCVRlcHC0Ida0L
 xD9jE7Fhn5+KEfT5EEe8HiBIcUgjp6dEmwrSKqKI/9LiRaBfI3303kexJvCcNqonYNILyitsw9B
 74jOuScJGZ+JMKAJGjQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606230107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_060530_586292_31968F5F 
X-CRM114-Status: GOOD (  10.24  )
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

The PCIe QMP PHYs require a stable reference voltage provided by REFGEN,
which in turn requires two separate LDOs to operate.

Add vdda-refgen0p9-supply and vdda-refgen1p2-supply properties. Mark them
as required for the Glymur PCIe QMP PHYs for now; other platforms having
the same requirement and can be added later.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 108cf9dc86ea..375f5fb2111f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -91,6 +91,10 @@ properties:
 
   vdda-qref-supply: true
 
+  vdda-refgen0p9-supply: true
+
+  vdda-refgen1p2-supply: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -261,6 +265,18 @@ allOf:
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
+      required:
+        - vdda-refgen0p9-supply
+        - vdda-refgen1p2-supply
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
