Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98B72CD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2CZOjV55z/ooyGxU9geeSO+R/IUSb2Qn5hM5oi1Cz0=; b=DhCKgr0XQ9vvCX
	f/QJ1qQ8E9IdOM4TsOpiL67fkYZ+6OF76z4nBmvJKMv+ij/A62TTNMRdw34h+5gCGxDTCLaMhvcG7
	Jmwy2nfqmzLz9j6ZPnjF6KVTf/kbs3GXWh6PoZI2Xo0pPoAo5f232vlvLhOFYMW3MYp7Qc2mTQJ3n
	lUTAei9v+bqYIb66WyCJJE8IX/8hbYgp9/kqQXavet9SNKG4ijbkvT/PnCtBoONk944Mrs5pPoThq
	wCLvt3qmqKE54eOdZJvib2vzXZ+eNAOZG3qg0d/S18qUe4pZWUsskEp7x1Yep/U5Upy1MMpLLBRwy
	mrpBkp1wgKsgREggHNsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGv9-00000007VY9-1QPF;
	Wed, 10 Jun 2026 11:16:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGv6-00000007VVn-20r2
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:16:30 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65A8wthr735619
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 11:16:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O9QM0vnhY8+WfpiXtoZ6RW1A9C9R+5BvzpcQBGpBa80=; b=EPVMcEjc2dqGBfgT
	8u0LWDRnnkrkrwPcj5EqHu8EgDLXzW/y8kMuTXjw5ux1X6zyO2M//mW6IOiUdgEQ
	QhGegDi3pNgfEBL6sZEXiWaudwat22htMWeCMZlsJ/OwGNIsV5ZV7frfLiFSB8tv
	OnhKJLc6EWMSTi+T9GHcs/No88rousghQmQeEScTuC6ovY45P6y5tn1jYqR4DvCE
	0IFzsr1UNqckORY/3xV7MgrgpiJf0UCxKmy0TgY4yCW40x16SsMxSVit7SYkHuzC
	VMsSEHszroIxUngkTE4V2kTiEmpd516tYE6FWNh19zFOp8Dk1L2fpJa4XtwT5U4/
	I9n19w==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq4w1rhs5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 11:16:27 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c8596e4272aso7361364a12.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781090187; x=1781694987; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O9QM0vnhY8+WfpiXtoZ6RW1A9C9R+5BvzpcQBGpBa80=;
        b=Re7WZ7DAtZjCKJ+iq0rbKwnXEx9NwxwPrsaPFaL6CVSi1Ic7uIfPSuMe3mGxkFWLAe
         nzRLJGMUuuT1ZUD0kALaFWrvZS+58c8s1B8o5YP7cb2BlA/LTPP8nOqWVMn+jRD+Y+D3
         7CKqWIxAyuegCQhlLXDJeuEu+XrzS6pfwGBJIXnskgmI/ztpUi2DPlOn8n94N51pVTbn
         WABjbvTTAmSeRf3y5fixrDSyr8Rbzz/NPyvDbHoUAqL4GK8hEG3cJ5uSwStQceRSNq0o
         ZQmCPSg3Fi2f2la3b0X5eEaX+egtZSnER3S809OjIWPahub0OvRcGObYKD0jDWkqvz81
         3/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781090187; x=1781694987;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O9QM0vnhY8+WfpiXtoZ6RW1A9C9R+5BvzpcQBGpBa80=;
        b=XBGuAvKuARqurrgd0nQLbl6KELVzq+a1kEVJzHM4rhsYa38986O0xPYFUyXKhNCnLf
         Wg/lF4nXsLgDVXMKUKgtupm2PGwHNecVQ12xrTifvWng1oY5/5QfBLthTFF3bRkblCXz
         q2WqRKAy9bYZsZqsSvMzlvrmVjqKLTalEKJvm11qC+psZqE8IIJ22MOZ4xyPQjxO8LCL
         H9c7d87lwUxd3rIL8SJ9ZLmVVKOHKIaDqod+g02F3pK3+Z9HQl03o43Q3t+cPHm8Hicx
         W9bF3Ehdbcbuey6AV3BO0lks+U8PB5aQUrBKnJNzpNr1FDHgdYCCXaJgpqK5gN6uPW2T
         zImw==
X-Forwarded-Encrypted: i=1; AFNElJ9zA4v8NYE4o8NF13cv3wUyYVPIhDKJ2rx9WnaZePNIhGsekkObLkl7n2FAedVpcWWvN2xulaZwrew=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/MPdnWDpr0DFMJGfw3ItRZUgOWbUsizIpVCyQyhIZ8dExmBhX
	b8SZ7nLWbCpaLwJbVCkxT/0MRxcF/A1fNoQv0Ho3luf8xxibWUkS2kFuFfoxrRGWpM/1+zEoshS
	uoU7j1yJTWJUVwKKOYPViay54qF07ahezEMJXKw7K7qcv0YgIKwaYvhz11sRfHk44GZgz
X-Gm-Gg: Acq92OFEdlUrSy0flc1Fvn6mCs1zr26Ob9lcHk3Ayze+Vx4NvZufoIJNaxlKxhac9Yu
	FZDVGhncjclwsDKsAVXnv0YN4eukiO3OmzSTGOQXsoZmPMVjnpwBe9GyaAg6jlyAsu9sF2iAAFW
	1wT/MYbkHftM2QNYQ881NlnQ7n4OqMUfk01icRET9kdOJJBISvL0KvtGbuBJxx2IC4B2lltbEZ+
	zx5qjl68m0jQGusIvc3gYft8sL5ZwZ6m3qCfx6NYZwUpk+U7VepSP5juA9ljfSD1gPD3viUXilm
	o4pNNWABIgL2kWp8RIcCiJhzVMjhL8eG/bM8UPNlHJNvBxPrADE84s5mkb2MYnkFtwjmPNk6F0g
	F74Yv13w+6KsTQdfGd0iN9dYGoiqnp9cdWP6rWa2wAH7Nyxcq+gnJdd3+fLFFh4LSSvAf+aEoEx
	ywtdwduHmsfadrYIvuPCGof9ttyyiR8WAB2jgIb2azCiKiZyMKgtTdfs4N6XrdcQ==
X-Received: by 2002:a05:6a20:db0c:b0:3a8:9dd:75d5 with SMTP id adf61e73a8af0-3b4ccf82cc8mr27997147637.24.1781090187426;
        Wed, 10 Jun 2026 04:16:27 -0700 (PDT)
X-Received: by 2002:a05:6a20:db0c:b0:3a8:9dd:75d5 with SMTP id adf61e73a8af0-3b4ccf82cc8mr27997111637.24.1781090186922;
        Wed, 10 Jun 2026 04:16:26 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df03498csm23896099a12.1.2026.06.10.04.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:16:26 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 16:46:08 +0530
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20260610-pcie-phy-v3-1-334011b378d6@oss.qualcomm.com>
References: <20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com>
In-Reply-To: <20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: 1TA_4tdlugOPWurKFRrOOWVFNOWP6sEn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEwNyBTYWx0ZWRfX17IBUyO8iXAy
 XQCGREuuh2R7OLehvn0z0277JhwJBJy1Y/VXPWdYK8k2K0fRJtc/s+SRoVwkvTW0l6uByYSJBA8
 533zu0MfWXTrZj6LyTJ7CQdnwZt5jz2UxP0f+XwttXpXfM/NM0eJwuPKeX060RRPfFbLJg+Tpwb
 4pfDoWe/jffir1bzRpI3a+y/jsNCapNP7UtL2yZD4fBg55V1rcM8vQ5aOnt9o3/Vi9aFz21FsxH
 0RlVELByWxmkSdNEIB2ygCNxv71EsjaPVdMyy3xNrV4lbVActKK/B8hx+/prcWAtoMobJUiNZeU
 +4za++pJiDeDJoJ/aOzJRgU3Oe3AfSI6WnXN0kkD9z2JFlIuGyhgs2X2Z7wzVA1vTbhm/rAvcQk
 TNuGCqAzC935i9N0W1iYiNAu9o3DmmRcSnfMsbq9XXNy0NvDElmSBprhcLuZjqiJZAX8LPiY8yZ
 ZKuqLsFEc/jBc9DjcAg==
X-Proofpoint-GUID: 1TA_4tdlugOPWurKFRrOOWVFNOWP6sEn
X-Authority-Analysis: v=2.4 cv=ZfEt8MVA c=1 sm=1 tr=0 ts=6a29478c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=EF49ANZLUTmcXe5zpi4A:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 spamscore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041628_529933_27070F0D 
X-CRM114-Status: GOOD (  11.12  )
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

Document the PCIe phys on the ipq5210 platform. The 2 lane phy uses the
ipq9574 as fallback. The single lane phy is documented separately.

The ipq5210 has one dual lane and one single lane PCIe phy.

The dual lane phy is similar to the dual lane phy present in ipq9574. Hence
qcom,ipq5210-qmp-gen3x2-pcie-phy is documented with ipq9574's dual lane phy
as fallback compatible.

The single lane phy (qcom,ipq5210-qmp-gen3x1-pcie-phy) is documented as
specific compatible.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index f60804687412..fc155ad5fa6d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,ipq5210-qmp-gen3x1-pcie-phy
           - qcom,ipq6018-qmp-pcie-phy
           - qcom,ipq8074-qmp-gen3-pcie-phy
           - qcom,ipq8074-qmp-pcie-phy
@@ -28,6 +29,7 @@ properties:
           - const: qcom,ipq9574-qmp-gen3x1-pcie-phy
       - items:
           - enum:
+              - qcom,ipq5210-qmp-gen3x2-pcie-phy
               - qcom,ipq5424-qmp-gen3x2-pcie-phy
           - const: qcom,ipq9574-qmp-gen3x2-pcie-phy
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
