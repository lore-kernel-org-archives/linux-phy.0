Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9837ACC6B0F
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 10:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LV7t9UsGbMpvIfr9t1J7YFc/G8EHsmEABC1ebmXBSg=; b=rKFcCh/Q882z9i
	U4Uat7LSSNoHOzxCSu27d+JY0+9I0SJr66p+GU1Mw7eBz6oZLivkTCn8EyHmHLq+lJMxZ9a40bgeh
	wHW5jDl2Mh6ysVlS1Mo5wngoJeJVdf/5eqBfHYoyQDzwebdq12o+IQG+y88VwWoYvn7FvLCXEdbMb
	knkyhNtOCfObND/LcaPWaqpL4q88Ny0AvtqhFYqwNrMFnBYiF8uIB3OyHKbwY1I2vrwhSMxBy85LF
	h9sIPkJ7m1zsBxPvORVX966zlJSjUuxrv28dXpxxwjl8ued7C7ppHzu4J7/iQDJ7aLCkPtLRx/B46
	ezf2YCdBubN7ypw55M/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZZS-0000000CXZ3-13SQ;
	Tue, 13 Oct 2026 10:17:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGZZR-0000000CXYW-20iS
	for linux-phy@bombadil.infradead.org;
	Tue, 13 Oct 2026 10:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=y0VtVTcJUFOCOxMQYqvfCfN50bwMzVe/VZPBcATXvjo=; b=KeYbsk8NDdtvr5K/XCNZblVp2D
	SbDdexfcAbAqxaOU0aqXVngW+bsiN8pwK2MkhEeVPuMB52BpHJO2LPZXnArJwqpgw3xnCB2RYwE/x
	IqnpE63KMkO6EexFFyOHSxPLjAGHb2IJpyeCMq6ow28tt9WpAInF9ER2JDft4gyDkG3O/TEQfUaM8
	JMdDl6YogajNwF287Bk/VZ+DdXpHrpXDdaZKNkmj1ZDyBnwcCxyRn1hnhVNGf16VbtbFRRFPYXUYB
	ZaNeRawqMytFYW4HjQLwyUEGOi/L3FBTewbVfVbghMcJc/zDoqBjQWGPoE2l5dOjq2vwkm3G6FtaJ
	HJ5wM7vg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGZZM-0000000FPID-284m
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 10:17:20 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D9oCIW174876
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:17:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y0VtVTcJUFOCOxMQYqvfCfN50bwMzVe/VZPBcATXvjo=; b=QdNU+glvOPWrDDKx
	+HBbn2L6k8rhNlLZ0fDLzBJm/fa7i442UXidbGoa4KU1NY0pge15mGAJREC/XpYD
	KcdeNPtVYdqtsNjx4ff5OenbITDLqSj9EJSy4EaQl9S3XO/iiKhXv/hT6CBr0SqI
	8FLM5asPh6dDewCE8Kv8SNDUrWTxWHy/AXljjyhl61rWklemn8SzfDFk0Q2q1JxR
	LiZbWr4COXaWu77dJl8oswCT1eRQJn7Mdfcum/iVspd19SbspP73G7Y2Ig06HYg6
	/ARVNozs5eLefKzV7yWC4wzZoxb6lW2Fp/GxfaVWpbLSuN6mX3L0YmDNm+W2by7P
	JM1Nyw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9daqseua-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 10:17:12 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cd5c91bbc36so2574356a12.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 03:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791886632; x=1792491432; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y0VtVTcJUFOCOxMQYqvfCfN50bwMzVe/VZPBcATXvjo=;
        b=CoPRr6nPcNGPt+eDKGM/SAG5X36/7WgfxCwv7lDymCKDIRYNLxk/HXff51wMlhgdQa
         PByUdpbwLhMVi22ArAXNNwPX36JsQbE27TsH0lk5kYv4qsmt3/NXAFPC9+9vtwt49blv
         N2mKlFswU5hbZNnDSuxPy9Mx29rDLIrq4/U2XvsZgeSy73ErkkdsQxEcSFkLc4fuXR5z
         nEeDymMJyHhnSDnknUR5rbtHyRNi58bvLDK9Mp4NLaCmph3alP9O/fanOIE/6I0xYm1g
         DQw4li78maIAq8UuGYt12ZfQN14+SH7fZyC2bDo/gEAdLXKSvgysAWJD4NA+aWd8GH4R
         THsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791886632; x=1792491432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=y0VtVTcJUFOCOxMQYqvfCfN50bwMzVe/VZPBcATXvjo=;
        b=QNF6Ha++blolUWkvwGd78+biW9q1hsdjrMWYIwQ/ANx8V88+mKzCYqipyMSz3qRgRu
         mBGtcq9/V47eVJ3vHuFG1gMCZMVPgtRqx+XbRLS6ZsuU0PCEeCpRGtSYF7ixnFB0FP5k
         LeqqXW+jPkA4/0HwA+GQmpxbjdGQWAOBxia8B62BvRWKrWfAiVrx2T2soQCHV3EmSVFo
         BwJ71m5imzih3gYBE5SXZbqhOD9rb55D5LMeflZxnXbjDib6Ssn3Cfpr+SVctPGWBgL0
         4BL38TvXyu/0mmcbinFnvOYOGN8L6j9/d1Wx+J7/tIxeECO7qmhyI7Ty3jVCZO75KwqY
         FP6g==
X-Forwarded-Encrypted: i=1; AKwUvBwrBgXsQ+rbaq5eHl6GSewE0pDV8RrT3hqdh7hym5E5wikEYS+0c4UFxvQ0pl1Z7CzknBqkzZ1sPD8=@lists.infradead.org
X-Gm-Message-State: AFq9FYKwV9OEiSInin5zt/aDQmXVhmvA8qAWqBx6u8yGSjc5LvuA+pkl
	r96eWCiroilXfEfbw+o1eWHnmcDa0d4R4HbNzxJ2eY+CgFEYH2AJfWsfeTIp/x047UH5/nN3mf0
	ELa7cGRzmth3HDevWL/IhR1lIPXPOltKLYYWhlXANgpAaKiVAM9yCUhXit+d4vq4GNdvB
X-Gm-Gg: AYBFou0gIpYwUH7IqK52TgWnZyOXP7F0hQ/nrd8JG8NzEJGAp4YAKXL2p9IM+hgsiaK
	qa+gOqsVbHWiAXSx4CNHew000GuFkh3ltgevRsQt/yLFq3OyE5OLRTiVBFL627gSAlQACXZNa/N
	LkdZHoPkUlbjcVGPq2nZsXMXL7d9I7tXPcgUZmncVG9NZkAQng7jvscXsUwkdKdoLZyvdoBibH4
	SCARCIo96CPnnUSXsBKb8ZNupUZUmPiCW0wTlu6R1DaR5rUpcFLFIumu9FpAph2KsHKKrIbTdzG
	RFV2zG0D0jmKWwbyn7B/lDFYqW84fbjbO+S/BEDrcjlV+rx76+qIOkWERlRNGPKSvP/cPD7f4MI
	q/+r69EZHJ+ihvNrWTeUH6HjvURMDTzJsvJDymTTZ13/WgXo=
X-Received: by 2002:a05:6300:6bc8:10b0:3e1:9071:acb1 with SMTP id adf61e73a8af0-3e19071d79emr3697976637.89.1791886632305;
        Tue, 13 Oct 2026 03:17:12 -0700 (PDT)
X-Received: by 2002:a05:6300:6bc8:10b0:3e1:9071:acb1 with SMTP id adf61e73a8af0-3e19071d79emr3697953637.89.1791886631811;
        Tue, 13 Oct 2026 03:17:11 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cd5dadd0986sm4186777a12.18.2026.10.13.03.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 03:17:11 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Tue, 13 Oct 2026 03:16:45 -0700
Subject: [PATCH v3 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Add
 vdda-refgen supply for Glymur
MIME-Version: 1.0
Message-Id: <20261013-phy_refgen_1012-v3-1-f28305289499@oss.qualcomm.com>
References: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
In-Reply-To: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791886628; l=1740;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=HS/qHG1ys4GAFjcZw/lOrmC9aaejOkm0n6MjuWUf29o=;
 b=cE/+x1bGz78TWOTImO0Py5TvqJyvE5p3icxE1EKEELmdUHGE26npzg5tBX7iGwXP3/k+o+0ub
 Y2in/SCUkknAQ/TurPuaKYyNcHWmMWRvFtaPaSPcnf0QYxrp9RXQStE
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: iU_zTLgdd-bYhUAB3OuSljsbPyh5INiX
X-Authority-Analysis: v=2.4 cv=FZuiV5+6 c=1 sm=1 tr=0 ts=6ace0528 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=neprlRFrkYi1VxbfstQA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfX1tKV6iWM8PF3
 9EwcLbynOs+RVlh5H6dEwlrdOUy7cDq9CY0uP5AjK+/guARCwfZZoy2dORcT52ttif7dzFHKD2N
 aBQoXdY+CsU+e/0LeQA2EWQTP4R7eYw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDA0MCBTYWx0ZWRfX+JpsT2Rz6BMg
 +40Q2igHSc7T7616DIp1psWOZwebFtqCUVqSim16C4u1HKWTc9TteXBBaGtlWupvSxmzz/aSsFe
 obgOc5wcutQvBVWqJdjKYSKudbOO9IVM5W0vMK+QYnOoxb6WyurbbfBErM+owk/E2hM91G9J9yG
 7RFPqTh9Jak3bHirFgTDRYcavS3XpUuD/ZFuqeZHeWiwdCEA1NVzYzjcvXVAiNqX4pMqJ0Kz0QY
 p0Pn5oo8FdZMnvcc1oOb71JG/XG8YrwXt88ePN7KptSTfW9Xx2/6+1qWjI3gxR5iSHbKYGuWRgk
 f3bcJqupCFQZQyx6ouZn6MQvUJqvuoVz2KkrO/CWSXKBE68DviSjfjGqctqbBvfngEdl9K/9DBm
 GSGn8FJ8jg9v6+5c52YKVb47A3mqy8UOsQ8j7tfM8Wai2anXzgSw4nZXD/BR/5vDoh9pCLc7qOd
 +TDGmhE7tSQ/jCIuEiA==
X-Proofpoint-ORIG-GUID: iU_zTLgdd-bYhUAB3OuSljsbPyh5INiX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610130040
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_111716_979165_CCD69B5E 
X-CRM114-Status: GOOD (  13.09  )
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
which in turn requires two separate LDOs to operate. Without these
supplies, the PCIe PHY cannot work properly.

Add vdda-refgen0p9-supply and vdda-refgen1p2-supply properties. Mark them
as required for the Glymur PCIe QMP PHYs for now, even though it breaks
ABI; other platforms having the same requirement can be added later.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index c0a3e1f160ad..f827abaf22ef 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -104,6 +104,10 @@ properties:
 
   vdda-qref-supply: true
 
+  vdda-refgen0p9-supply: true
+
+  vdda-refgen1p2-supply: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -280,6 +284,18 @@ allOf:
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
