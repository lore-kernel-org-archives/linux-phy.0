Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3402DCCD1AB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 06:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBYUwWbBBXpfYmE9m7Xq0QLRGX1KY3d2dICIu1xVunI=; b=tACi5l+dp1qowk
	PIR4OirQyF9v4UeJzjsGFjFbthevRsKSBAFwXzmQpXfo9R2gNR21aNSzRNdjPhSVtk06FNcCZg5FL
	ve8w1Gw69N3AXYBPCkymFJG+kw9J+Zou1WGApW5zi1NVj8wInG3vf9hs/w0KmCYQVV4mA+Fw/n+Xd
	YOjLfsWdT+WVGdRoujO/3McRxi0feaqhxuXSq5VAiJ77gjf7JqEoQF0J5bdDZfrF7SG6TWRPdBP+j
	ZZnZwl6/Yac9QuhPyfudSGxcYlCoJVahBmREr+NyNOQzaf19HeY0L0xTY1CWdiP3PkieaXJu6Lu1S
	x4QlbVE3juQs+uNPhQ7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSgA-00000001itS-3w97;
	Wed, 22 Oct 2025 06:50:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSg6-00000001irj-40rk
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 06:50:36 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M3N9uY030075
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GfF19aO8xny9L39JuzD8Gu3or8NnMTbYbN7iD67kX3Q=; b=MMgqM8N92f10wjjQ
	3hWg5vMx/IFvH7roUEaeSLuVfeAkuliOuRgyNytcolmYTgqk5T72Bgp/T/M94S2l
	5Ne/uJKCur3t1nDuzHpzsaDlf3JJSQ2ZWJQSejrPpe7L4lPyEsF2sF/+vrSxU2w8
	zodJbSJ5RvLCQ3rscebtK9D+igwahWDhuK1ccx/KEnsibVXxtQdyT7ly6KJ4E9wy
	78oREBay6JoavJi4tH6GaIPwNGwmTMUGUfSbHankmXC8zbSwy1YBmH3uzyTiAuMh
	+2whizrPlDJd97JOrq5cT1Dr4iKXUdLI45YuBtWaWZA/Q4Dc7FFg4tf8/eLlNeRt
	7j385g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge3j5f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:33 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33d8970ae47so3757628a91.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 23:50:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115832; x=1761720632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GfF19aO8xny9L39JuzD8Gu3or8NnMTbYbN7iD67kX3Q=;
        b=Nerd3JymE6qY9WoKFlyEudZizGNpW5IaFICJ7uQ+4vQQ4aK8YvNPLTORvs746iupTm
         HI301Wqp4NzdrYguwvlxNDjZ0v23ebdbHxSOH1jb4GLIz36CwNd5r3rATBe7QSIDzeDE
         bcUrVCPFyhg67GAiDtwaN0yZZm/xrqmVtdYlYS1lv0rmlaptx86Lm4WUSxHJDBPJvR6/
         0AhSNE+QS2POGhAzRA2uHWlWULTGJrvDS5hC2Ezm/hMJIgjAEgRbSFh2zWpAAshRPDeR
         q/RA5AEnPei1papEChalyj1ddxy0iTjp0Nh+OgJljHhNmieM8qYanJ2rTgSfAIsBlPYs
         jeSw==
X-Forwarded-Encrypted: i=1; AJvYcCXvZ0k9/EybJ6JRQlTnbbSTtS+YD1qoahVpwE6OrIk4StVN+II7VBvSlgQ+nKtkbQrO515WxUmQ5MY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwyIwzbpEMPNmsEuHC/Fyooi7g3yItSWLKOH+rBOPaZElucJ9z/
	+PJcxGfvySgtA7c6GoVF7dbQo+bvJ2SqlzRKB32e8clHJvV3XVCF0+/ndWkb3pupIXMNRVJxNkm
	jZJyIzxUphf0bQdQwSW8yJWe4Q2UYrpHfTXD0zk3N5VbzQ9NFBeg7U5NhNrwXhyEYQB8ZEP4GVM
	nFdu4=
X-Gm-Gg: ASbGncsxn8Sl0G692Ut0Lp+N1AA8I0o6stIlAh3IjAtiLgCqd9ntqrJEa/CmYXn8cBb
	aeJ7uLvBz1k+EoipHr2jR0ej8Se1OOrEJGEnc3tJ0KW2jyk5NIPLZWU97LRTvGY29JkoE+Mi+OZ
	OEK9XF+XcQl3YyTNp2flvumhiX03vP09CIRxEbP4hfFPE0ZF5F3G9Fj9XsPpiLxV0o+teH8ZyG6
	oeH9wm4+5fR7lwrkdllFbBH1qbK3/9OYpT2qE8DhK1XE2GgfjBlzK+ioB/1n2+MFtceevmow7A+
	IqAvZlZ5goa358MmzUDDCkYGP3lQngMvZmENxoK3f2nd4Dvh8T+2jqbVSUcxA3eOr+LySvzVlrJ
	qTN/yYbBuikP9Eu5eKEZZxri/+ipvQjpkMPK4RvfLvtGNIrhStA==
X-Received: by 2002:a17:90b:2d8f:b0:339:f09b:d36f with SMTP id 98e67ed59e1d1-33bcf8f8ca4mr24582320a91.28.1761115832261;
        Tue, 21 Oct 2025 23:50:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyOzdwa6M6+VonTKVpn/1dRGshyVGeAEj3HtpwTzivtN28WxG1KsX0bk+9YqsiFARG7CtuNQ==
X-Received: by 2002:a17:90b:2d8f:b0:339:f09b:d36f with SMTP id 98e67ed59e1d1-33bcf8f8ca4mr24582286a91.28.1761115831768;
        Tue, 21 Oct 2025 23:50:31 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:31 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 23:50:27 -0700
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Kaanapali QMP PHY
MIME-Version: 1.0
Message-Id: <20251021-knp-usb-v2-1-a2809fffcfab@oss.qualcomm.com>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
In-Reply-To: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=3168;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=wyxSRIp6b2YrRKpZKlLcX2lrCBRNwJtuTyhh+0I06cw=;
 b=WfGOp1rFR/PQ0DC7AXBJXKQ5YWGLmn3QByRcDCNfXH+p43IEdWO+k1Zkx/lfO5PztnyG3o4bN
 dSW/2yFfwZTC6ouw9RtmFBhOxE1Faix6EtiB3S19NbYSpwSTKzdKx3g
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX/Vv77pq8Bin+
 7wUVsjQYYvoZ/fdogid8ZzZKYwpD2WAlX94WWrncnTxynDYnTkgDn9/BZKVNmbDVu+42tSld1W7
 OqcGOBTwaeeOqEyEw/fxVdRaRafVoJutWDveh+HUg7vk70iMQBNYg2k/toSNHCGz1bvcwEdSeMq
 H5SHmwhIduW86Fk937UARNGdtOJ2TmYbevPzj7fao+PP6ThbuCOJyCnj+7Scri1YVEeaFDPvkNS
 wJfZWJALzqPbck/TUO8C2JV9ZD/33HOxlu7vFPSmN5SxJ3uS7JoZBwBmJHuQZFQt1x77t5vNvd/
 /Zx9xdfNYJC0GGEAEoQiHNFFDoiVtx13nwuOb4MvJVcO9kGPBtM6uiAuFLQwkt4PSfzFjnS+qFt
 OVDPLAu0FaoldlFIne3FuKVQatYeoQ==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f87eb9 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=2IkYd7TCTIqYiAcLhPQA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: Jz4ETVVJpU65wKrcZFSbbji6AybSj7C8
X-Proofpoint-ORIG-GUID: Jz4ETVVJpU65wKrcZFSbbji6AybSj7C8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235035_133585_84BDB06E 
X-CRM114-Status: GOOD (  11.19  )
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document QMP combo PHY for Kaanapali. Use fallback to indicate the
compatibility of the QMP PHY on the Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
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
