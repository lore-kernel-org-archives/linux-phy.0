Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2322CD3445
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeZwLKWRMKzeZBU14ZCFC8y0NYNbiUuRWM4YcaUbBto=; b=hqz1STT7DBmij/
	f4vMmj8f2Z/8ZCKdWvbK4GEEJn4k+qUIAYhBSnIG2LtWAftHgNTbqEjrLYko4DAw43Djd3K0Fd0U4
	D7plXhwG19xooeevH/Tf6/oU93nCIuHszWn+vc76Ot3D2vlXYHXd8dj95lR91rk8QRY4fXfdSIW7R
	FziTRXFVLk0nExL9UWHK1CK/Y+GXxtfQtAIWK1sC3ceM5ZYNriRZT/LVQyjf5SQjtv0mQpVVV2HkG
	ssFDLHjLkklMWBd5Dvdh7a7IYE3cBDLBHFCyFowfWoys5yajfyNLmnIIALz/aI4TDU/qGWEKVwCf7
	/MbvJPPHc47T2PY5CThA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfI-00000007kvq-2jhp;
	Fri, 08 May 2026 23:31:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfF-00000007kuX-3DLC
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:26 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648G479p1093543
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AwbXEeAHC8SP0aDjVXo+FanDybsG+kiz/tQjL0K3yW8=; b=o/oAhwzSJz8mtM2H
	S7G/xvMLv0JmW2No6S38mS/MPv+da5MONsh8OGxDswcODGCQTmCZ+MPHIORyd7t9
	/3/hs97kxdtcdAtrY15u6D51pwTemoVFSJkyfqYk2hUns69WsVN89BuxmyA79RJN
	iRS5zEEvf4RwkOQxzXM7zGzO0d26BUi1NHZIjg4/FAEaSvodO/I2rMyJlxhdP0og
	21HjUPcTsD1i6mMepzOapoE3BY7oPKSBqH5GuVJ26Kx6lABFHAShWdWLkE6vY/Qq
	tODv2/XUSJ0JyHrGl/T2xr9f0YeB2aXinRCMPeEbZZINqVZtYkvITTPsYDiS+c9y
	ODFWsQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1k1d1aux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:25 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-132a9b34697so240303c88.1
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283084; x=1778887884; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AwbXEeAHC8SP0aDjVXo+FanDybsG+kiz/tQjL0K3yW8=;
        b=dShK/o1O8CqhF7ljrmVZn59h4WCiElryjRK/QSROoXbttrMKIEIF6vAB4iqj7Rg/iF
         ARqqeeW/QfyIg6db57xcNcArUR2HzPvR/IfvaPnMmVbhL2snSlR16Q3zY2S1TGbq8vHZ
         64K0usj4tBIiLKhMEthrexpPaI0pnutRFIivkE85/N3eEAxJvVO88pTG5xiG1Zjpoq8u
         lSM7Chf3SfiDc/vyn0hlBVgeusaLYSkNqdhNlVUwfhQ43y4o2hb2RFZhSSw5Ru4TZLRe
         agTx5Gs6REpAxjoP3nsyJH1jIVIdQa4BAXX93wYoxSb/zd528cJwMf4ynKGRZgX5YMeM
         r0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283084; x=1778887884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AwbXEeAHC8SP0aDjVXo+FanDybsG+kiz/tQjL0K3yW8=;
        b=rXGI/qAufI4VYgBNlyLaiCYn8xMCoBbHx6nODKN+bdPXOQAy29rmtt4Kj0D0nVOZyc
         qP2k2VpwepvbZFn4Vb2udyd7VALOjw7aj3JPt7l+ifQ0Nuo2DhbZPCysvOjcMO+ze33L
         cAY07XLNeIPzldwcue+o0QcVksz0RcLco6YZ7x6b3FxAv5dlAAmUrlYwXiIpV5bYqqkA
         xzHKU6+LnTBOVC6JJ2SQ9yGCAxnkPiRbF8MLkdTtobSM9PYeSjJe6MIy0LIoAylH7QuT
         CJY7t/Q2pD7okyaIYErNVwAaN+NWvT/JWkoLQRpVyxM6bnaISriPPjJPzz5Auxc4BgEi
         xMPA==
X-Forwarded-Encrypted: i=1; AFNElJ+LPecHsNYROoApnoztIbAYyuqf3eLc8rKjhp1QCFfIcousC+wN6plgLvD5shC6Fcm+W9t8g5lTGYc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKQ1LZ4X/EuPJkBFXS7pFHWjFscg33+3xoGhQtMFkhJ3VeTsCK
	5Rr/kp+I0ZSkQQfy4up9cmbeSCR4/kPkpUZXuTspqHnJXrEjKNsUr+R8L9jE1+2RBmyXfy7acai
	ufol7bzM4H8wwBT3g/xASu6pFF4NelQB3YQjorAmDiU0HWKlQhvi6EVSmN3bCOmivrha2
X-Gm-Gg: Acq92OE2NPZD1dw2bKa/qHL0diU3mO3AlCtc11gsYVRmbN4Icqt8Kvwg9RX7Y9LBn+e
	rHcVPjYKbPSr2KBNv757ki65exR8yGPIHCF3LFsrLgXYW4Cc0T7YZFtGpPW3jAfzPl/Ik1mbJCb
	dlq4VZg7bXTRCY05aopL6IPvY9x8+T7NP7lt7B0459fKByt4SL1tq+KlenLy7h6lgBc+7bu+9mm
	Mu3qbismd++Ino02KFEA0lPbhhOv+ImzhifppmIhfLNb9tN+H6yqCKmP/Jkoy5Y4Js668r0zgBB
	zHNb0c2iDojkyGrcZqTHig31znqz7luRblsQOIMGgKBoyu/qBYH60ep7eK3h5AodAowZUTSvBaZ
	32fieLGiQ+3aK8x+dS4Q4m8K4s7RtNKdOrZhYXQz9/D813IZuX0xoptPWhe0=
X-Received: by 2002:a05:7300:5727:b0:2f4:3a9c:818c with SMTP id 5a478bee46e88-2f54d678d74mr7510178eec.29.1778283084550;
        Fri, 08 May 2026 16:31:24 -0700 (PDT)
X-Received: by 2002:a05:7300:5727:b0:2f4:3a9c:818c with SMTP id 5a478bee46e88-2f54d678d74mr7510160eec.29.1778283084052;
        Fri, 08 May 2026 16:31:24 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:23 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:16 +0000
Subject: [PATCH 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Hawi compatibles
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-1-237b894353fc@oss.qualcomm.com>
References: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
In-Reply-To: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=1781;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=no90MUHQf0OU+v05z3Y3AE5EXvbZVkBlvgnlrpROr2E=;
 b=tO6uWy+X+tZzhjn+/j0qZ/Y/Ny+1CtFS2gjhlSZhTzgMcZg31tcl3JpFsasFR81cTL5VCrKVp
 mXJy+hZ1voEC6eqhAPaohuGByvlM9hLylmm+H323MnAGZ8R/7v1tbhs
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfX9UZmlUA/PUMv
 sYFAwkAiUD96uIzgV/2iWWsqoPSUXMFoW9KBIDp77XuCqFgq0tLOmTHFQgtwWdCFhDjpAkB5GI7
 yjEshPZKvRtYvLJWaFbjFodXeIvvUqLGRpnidqGKl/PZH0MfOlcU8aiOaDs2KuBncFnxtlp9MSS
 c0GXUTsvPJYmHQQ/5BAY4QecGGffQ97aq7hrob+AbzHq3vwPmfDs62SoCSx+hvbr8ty6nx/0UbM
 TR2IFKt2Udcx8mva6c94JZ03+K2ZevH6j+ENzxzICUzGbTPSkQG1vWwUhG0d2u/0937iU1Sk32V
 24muENPA9R6XkuLZXnTETPbaHn+E5j6b1IYzMJL4xYzjgDHjVdwAI6Ieedaai3MZyV54snRRR29
 7LT1OViZDSw741SDTHBYotay/qOXNgRrOuu+m4cd+3HRZlMESwW/BgNYPtc8FT5dQ6/IutCnCxi
 sxIsV+i1m1+H5hfF02Q==
X-Authority-Analysis: v=2.4 cv=GLU41ONK c=1 sm=1 tr=0 ts=69fe724d cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=ZPVUbJor9CvCRQEu2k8A:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-ORIG-GUID: XFXCpe_ydVsQk_fSTdmNW233pbalpR3Z
X-Proofpoint-GUID: XFXCpe_ydVsQk_fSTdmNW233pbalpR3Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 malwarescore=0 phishscore=0
 clxscore=1011 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163125_841876_658519AB 
X-CRM114-Status: UNSURE (   9.36  )
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

Document the compatibles for the Gen3 x2 and Gen4 x1 QMP PCIe PHYs found
on the Hawi platform.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec..9e9e34a63bef 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,8 @@ properties:
     enum:
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
+      - qcom,hawi-qmp-gen3x2-pcie-phy
+      - qcom,hawi-qmp-gen4x1-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -183,6 +185,8 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,hawi-qmp-gen3x2-pcie-phy
+              - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -208,6 +212,8 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,hawi-qmp-gen3x2-pcie-phy
+              - qcom,hawi-qmp-gen4x1-pcie-phy
               - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
