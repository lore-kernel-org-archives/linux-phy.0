Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF16CA5FED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 04:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLBdmBA2iSAP+ON+xZZriWRDWb6tZYL4B18Y8X8jE6Q=; b=XtXz2qSgTRsHG8
	/fVhvuQTiDPXFB+wLmXt5XLRSq/qXlemVKy476SFYiLD5iuYDKhZAApvpXuOqRWbxmhMO+WsvChYr
	C4VOpdsCkLtlEierHYm5yondMW1jxdTH5XpWO7enNX4IXBVfUpPn7UwG1C6S7c9ePqrDKJnVgCDid
	HvJqhtMmdhrf99PGdj/aRB05GyWDtZc6aEi2NprDo0P0kJYx3Kc8+ruEBnq/Pt6vPl8Z+nCQPGXGr
	uiIXtvaQE0yT1MZfQly8e8mHBB4JSrKpZIkmB0pdsFeQXBHb0koZZYPf4SykOGeOWVKb1TP3NfnWJ
	wAReKYiMPWx6o1AS1vDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Yz-00000005UJL-1l0M;
	Fri, 09 Oct 2026 04:50:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Yv-00000005UIS-3Yts
	for linux-phy@bombadil.infradead.org;
	Fri, 09 Oct 2026 04:50:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=; b=E+TgBYHcznI3SljbRd7bUBWMPU
	KKSEkFQbxckBiPrdLDeNg0nl0ckIjgiOiveuIyQSLdecA9pTnv2n/FlQ8a1Ca7pN2NYfFOt0YMjy2
	YA+uyBlNGo7LGKU0wZ9AWNpaP2ITa8+0zQZmr6cEQE4e2wAEaABqHHxumrAMwzrDYhF0GobCwwnuk
	quuRJdF4zax6lf8ZzncXmHIJN5pSYH6DNgBVM1cdquO5plutR4cE42xhJsLt0iPDw39NKX3CYpXSV
	dVLvJH548PoojtXzaJzPMFSKv9iU7/sQty7vrcRsIutZH5zL9HRPfNeRN4eDrQvuPHYvwzztuRjL4
	yx/5qQXg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xF2Yr-0000000AtD8-0Vmd
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 04:50:28 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6993HhDd250723
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 04:50:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=; b=H8b5JH3kdUFu3rX3
	J1/WlCwX3W7DcbIX7TRwNpgbs61zSdd+Ee6/pxzXeJ/BJt26+rYQy17RzETjGJOi
	adp258z45EwZ/Fe4vTZ8Ve6jTKAGvZ62a4LGgurdeqP61kGchELtZ40GoNAnx77P
	XFiAk5yekJlOCyIdxQVFYdPo/JFrjAStkpVRcIH6qxMqw/i4F7LlnojPkgpo5Mo1
	EriKd2AFdmb/WaCvl7XPTJAXAFcGDe4xMU1Z1fDcz7bZ4MiV8fO+UcjnzXCChe+Y
	aXVee2jt7OXQtvmvmZtx0whMw75jK8gPZo25h3agEWZiUYBTbGE8Kvet33veqgnZ
	JkxzaQ==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6fmqt1tp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:50:18 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-154e9d2d94fso1145600c88.0
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 21:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791521417; x=1792126217; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=;
        b=bTXrImw/HyEZii4xXTGgoU4+ufmyUHLQl3MeVVYfGSTQa6BON5DXyL0NWSn4YJ1lB+
         IUsjyq/P9cALLTNN5+cqTgiV6SgP0zNKfx7c4qoEYQxuzmmSUKjTF3beQLwWmZleWX4B
         x8eqrRpVTEBwMTCHDv9QBUZjKXY1pn6tu0wjYIpARVxqZocVmghCkWO/jlkazEWoZ4KL
         QUQS92zOTDWS4OBHOaSlurQRGR5kTlA9ncLXWDKYXpk2RI8LbI835YL3i56exQ1N+GwS
         NVga7MX8P/j8RtO1KhxwYOO4YENG5K/fiknwVPjdF8CVSvRcZppZF/HFBcOxwdjAacQV
         N6mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791521417; x=1792126217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jrWr4WEEoDxY2QpPfvYR+d27cAyfCi80wCzqnJN1qlI=;
        b=quEIHAmuwWRnGC+zikl2Q/E01xzifsVUbdBciU9HJa+Y8H68jwymBuzSLdRBkf+x+n
         zGMtXmc+5pF8Mewe5Y6B1lzgC/VVQh9+Atx2TEcwGpwEe+RICiYbGyg9ZAIiAZrziIGP
         Af/Zidf2sM3F2WBHvoixIUN0NsmnWnPayHNVMGWDWKyVvbQFs+H0VFgazBM8b1PckxTG
         wjq+DIkRVcamXFSAiYrF0R1h5jGTyXQZt4Dc+0uuVJT56o1+oNY3hqDdgIPgPzKMRvKG
         Mlu3dq5bCg81NI9x1eAhx0fP1ZQa5sKj2Cyh0zUQd76hz/SbUavXLKZy9c+qxtDhOe8j
         Y1uA==
X-Forwarded-Encrypted: i=1; AKwUvBxjAtRi3QJrkLKT0OjQ68dL3J4SVlmUpNZT3hYaq6Esu5CUBg2r0cjLHbMB2fBHol5+BBus0J1mjCs=@lists.infradead.org
X-Gm-Message-State: AFuF++nD6o+F9POlBBsSQYqvOB3dB+aq0y487YFlMzTWlmiMftLGIM+H
	7M+I0/Lec1tfIlutlgN2xfZ5diBz5PvQuXcVF+7Wsnq1/7Hg6nTMRlIb8Yk5Ka00zWvVW/jZUU+
	VU08Abs43Hft9kFUFvW3AwJEXF9vaTFB0ZAngpLwRkKkJhej1tSkwjhztl4UAc5ilNedo
X-Gm-Gg: AYBFou1pQmv3hMrJhgh8rA/wvrgEObf3C6QpaAU3Qi8IVxQM7rNZtYhDmlo45pPaEpm
	kPoZbGRgq/K53WrPlfb367VUCykzSP0wxrQRxKpaG0B3SxxBXi8Bdj1W7yzGrFsBU5cxPx4KeRZ
	d+yYnYaCqYze2kGiRdFqET++GYzbtxZq73xNwk50eJ4fr3MY+EIZe8uCg4n5LpEBJnPHhAjCsh2
	emH4nci5KALY9ZF6inx4F27507fOwEjptAHVsVTPdsjytAEiH/S5fXueOc/5+N1RqAGCvNa/80D
	nElvwWJ3n1GbX+L+lTHtaU5ycinxG8V95K8q/kIU42HgYrxgpFwnERh5dgsZ1CO2L/jrpONV6w5
	STK//3XNaeSKAmEdPqBg0iMhFM6dXW532MIH874YbO3qXFwD8j0S8xp3k+mz2jusCRJ3UVAXSPs
	ld7p3Ckvcq6M0KWs7aSEGqSrVtwhFbYw==
X-Received: by 2002:a05:701b:4314:b0:166:862b:9bcc with SMTP id a92af1059eb24-16a5f01dfb5mr1176298c88.18.1791521417329;
        Thu, 08 Oct 2026 21:50:17 -0700 (PDT)
X-Received: by 2002:a05:701b:4314:b0:166:862b:9bcc with SMTP id a92af1059eb24-16a5f01dfb5mr1176261c88.18.1791521416787;
        Thu, 08 Oct 2026 21:50:16 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a442956asm4151609c88.16.2026.10.08.21.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 21:50:16 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 10:19:56 +0530
Subject: [PATCH v6 2/6] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 IPQ9650 compatible
MIME-Version: 1.0
Message-Id: <20261009-phy-v6-2-50408e45bcc1@oss.qualcomm.com>
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfXyuH7tx0dewUn
 y4ue9LvjVD13WR1vdDqSsTEV3CoT6Cm5aVSObAKPTg2SJnmz7mi8wJMQ2JK9uJtVlPZ4j1kXRx3
 GUSFlhV4D/A/oV01VhJ+/vpC5J/INug=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfXwHyhTMBNiI+b
 XWdU7DenBzIEBeiyIgTPEeQcObFLPbX+rhEcehjodb4/p2Ekn2CJWHU/M/J6iy2HkoveRRJUOr9
 nWX37WnKA+trtOPYJo6m/QK+MToBnZldD+lJzB/d3hweCEqe1OQWVo9jd0Fbn+OjkQfNxVkm3KD
 0x328VZrwajTzDKi7PV1wz/qx/mKisVvd2iWE3532xvAkftxa3I5MsBat5r3hwMa32j7nhaEK/l
 JGLKZoQNBAUFY0AXlko6y4rB9BirJ5qLB4x0ZYS7Y5MGZ3LhiG9pJwc87+LYlj8Fb8HAvYsX/gj
 1Uoj2c4NZR7ljWZSk8NGWj1tied8JR4n8aVqEITAbxK+qRhaT8Zn0yo4knCJQgFhLqafqX3vPtK
 OA2vtmTyJLWguZJmS25Ehe7xCxnQDkIt/eL8LVNqas+Ygd6OSYY6Q4nlfhPvXmVwtorDM7WiLu7
 /83UrfAmDWFfSpCdk0Q==
X-Proofpoint-GUID: pYTVEZkbuBFbQF7zPbZTvgcU8XFz44r5
X-Proofpoint-ORIG-GUID: pYTVEZkbuBFbQF7zPbZTvgcU8XFz44r5
X-Authority-Analysis: v=2.4 cv=IqCL47/g c=1 sm=1 tr=0 ts=6ac8728a cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=JwZr8aepJa0OdLIFGX0A:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_02,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610020000
 definitions=main-2610090019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_055026_564118_4D121EB3 
X-CRM114-Status: GOOD (  12.11  )
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

Add qcom,ipq9650-usb-hs-phy to the list of supported compatibles.
Unlike the existing SoCs, IPQ9650 does not share a generic
"qcom,usb-snps-hs-*nm-phy" fallback, since it requires its own
tuning/override sequence, so list it as a standalone entry.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 661759b25064..db00f5a99d80 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -15,6 +15,8 @@ description: |
 properties:
   compatible:
     oneOf:
+      - enum:
+          - qcom,ipq9650-usb-hs-phy
       - items:
           - enum:
               - qcom,sa8775p-usb-hs-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
