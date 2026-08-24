Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF14C5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 06:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjUE6PWIYRFDPnrmSgnyHlxxgQaI74fjw6hsuhtUcUw=; b=MSvKp+KnJpSEH7
	VVQQzinYMOlW8lIwMhNT2h/o3Bm8g8Ih6l7dhF0wvN8OafQf6sMnDF0AP+OSwUASpQRgaXuSknSyP
	CaeFJEx12OVu+FwMaCCnI2zLvZDbiVmeFBUf1FExnLtRbHEZLy5yg/OuaRk+HzsB/OuOuEClmJ9hY
	pmzPk/1oRcUI/Vmoguv2IRY/OcHu/FfcFnuKowv/OBkeR5pD/NVYFNB6RExDoFLQUbqyjEnrNB67Q
	7QpWy/gY4HfqcaH+UwPMOUy2LTJ4mJ47+nepHg0gQm0pMFlFO6IezKIoF1EpFYD5//iLCI1rOJTVQ
	+gnu+qdB5qp9ln+ug7/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOJr-0000000G0Q3-0Wky;
	Mon, 24 Aug 2026 06:38:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOJo-0000000G0PW-4AOr
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 06:38:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O6ScLi1982475
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:38:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KLrEnjPX6y2jGWNfb0TIDQT0hmTh0JAPk37HWUvUvX8=; b=JUVm5xVbM+23rmXs
	/Jra9God0d8OxWilAVpjT4L9DA6LmBLAFZ8yHo5AoK2IAt0n1Xt8Qhzkl6YuhPsL
	lsl9RkL6RQgkIx1A5eDvIL9AFO4Ivn/BM542M4fTiCK3FdmoGZc1XshqDTBN4Ip+
	cuAZjoh565Cxu0vF9ABcPcFWEhOr5b6lvp9vLNguxarhgQoBLxw+ABKa32As98jj
	fXfxtsdDJTZE2lsarmA3tjIbdexjMT8tJXv5nerjSlRFDkLN99cGFykaQZF7p2Cg
	+eZaUruAuQrztPDBfPD1Hg00mK968de/OjmpEuPnvkKMNaLTDOVa8t/4TQ4NOGcz
	Cw1/mQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8gqn8198-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:38:03 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-38ecc48b3c2so5355063a91.1
        for <linux-phy@lists.infradead.org>; Sun, 23 Aug 2026 23:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787553483; x=1788158283; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KLrEnjPX6y2jGWNfb0TIDQT0hmTh0JAPk37HWUvUvX8=;
        b=FiRhVf3btr/maTcDszNlyDNgC2ocqY1NdoPWfLOa+bkSt5X/h5kAIGHUJ3sZ2512ac
         2wGZWBe14BTNiEd+8gzjFEIWR5WEHYQhjGgZFmYEgiB53Qigy400yxLe1qbGShwBuKv8
         feO66hnJ8JENNKIr4yR3zmac7MNpME45QlsKvybZMhS8y8pi2k2jCp40CClvwq3DqW1g
         JoBAw9AK4tE1mGSAQtx3Ex3qRh+kAeR9R5Ka2Hzo7EnoNMqjyKybNAYMsLbphAEgkTlo
         iEqONyU2w92Rzz6aie621Jw7cR4da2VBoq8ggaK7SUGPbBnz+O9WVEUpMGs0Qd/Ty6za
         zr3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787553483; x=1788158283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KLrEnjPX6y2jGWNfb0TIDQT0hmTh0JAPk37HWUvUvX8=;
        b=nM+t7CCouodcFG+MQmm7yF9Ee4Hbsrf7TKLZBm9nZfLCvFXY0itVuGttt9mcEZ3qsI
         is2CDYU+Z7WwcUkomgZWzoSbRJGf9utcdn//weAKsKmrw6sBAe+SWzpG5bRD7wGo9U0f
         QfaQFvGzTh+sSqtgq19/e8sxHqdFDRbhWTAIS73QALbtSXozKhoqG1Ydf+m66ATWHhsh
         DpcznzWoQjZHtzOXF/QdwrMJy24Bip+1HxKOZmTzX98ZD+IyuMQEmNjMFDDiQ1ogi4pp
         5aHw2JI4Bxx+G7aHDL0PMMZ958R6MyJwybEq8rF7aulSsl2LYe03rafnQKfEfRLQYTte
         NqSg==
X-Forwarded-Encrypted: i=1; AHgh+RoPHKowzB1idNip3RWfBa/mmwReF446sgbNc8UCSlLzSUEqKVgiaw5Jzxi7Db18TDVvjBPbIvtXRgk=@lists.infradead.org
X-Gm-Message-State: AFuF++m7ITaMzcZvfpelfx/5Ok3ErhwovONgw/KmJQPrKSrOWVOtntf+
	G0vUCV0yeerSRCnb76aom2cXwetAwVTBizFQMoIRX6XlVla+TVkl2WNnhBF06mgPVsAkUh+CWWZ
	CrZmjErgyuLGpZavh2SwjM7EwvUsbeLl4Z8dfVXq8GqGZ1VKK34EWCAIyjXwu7Itov299
X-Gm-Gg: AR+sD13BLtzsrtKCQPEaDyV/wlmEhF3pK1+B5fpcgyEILadzE5amCPvZMVdWPhhnxm7
	RLCle5uQn+Xk05XpS7k/S5TqvCVvxXOBw8zj/YcHc5dGkRk+p7lbQgKlMLCnIyNBWCP6Ng1Vvte
	3KdZJQYoyH95+co0eqfnsvFjxUoMleeCVqCfd0KI0atTOetu3tdm2l0F148j8+rvzeGo/ei3Hmi
	s5eju/GyBBNQNw3OBP+FLEV6+wr3+HwZGWiYjsEjrWPecuXH2tYlivaNbkw6VSqJpVQeUcEH3BR
	LpA9Q7weVO2dpGZwram2j2qxWAglYvylHzY+uE0oEKlbwSDcD7o3b5bm3tX5FeknC7VurfqfdCS
	BIvStoHAkL3hhD0EHhBUKOZ0ovDOco0H8YhNYRsrP16pycptCvlD5cNfQTLBHT27yaJND1/XoMP
	ldFNfz9HP3k9nuGQOpDia/pHMS75N1cg==
X-Received: by 2002:a17:90b:4c84:b0:38e:2517:5d1f with SMTP id 98e67ed59e1d1-395df2595d4mr25815339a91.9.1787553483029;
        Sun, 23 Aug 2026 23:38:03 -0700 (PDT)
X-Received: by 2002:a17:90b:4c84:b0:38e:2517:5d1f with SMTP id 98e67ed59e1d1-395df2595d4mr25815270a91.9.1787553482634;
        Sun, 23 Aug 2026 23:38:02 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-141861732f8sm21667830c88.10.2026.08.23.23.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2026 23:38:02 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 12:07:42 +0530
Subject: [PATCH 2/5] dt-bindings: phy: qcom,usb-snps-femto-v2: Add IPQ9650
 compatible
MIME-Version: 1.0
Message-Id: <20260824-phy-v1-2-257d68a3210b@oss.qualcomm.com>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
In-Reply-To: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX2RH26jAgxKSZ
 cN0gx+yGYbTU0W7ptfDK/3gFM03ljgju28a0ykVrxVWp6fs3Y8BpBXL0tT3FrmiluYoF+43L+fB
 X6BO8jFyHYeteX3fVwefNvUgmKDrVAA=
X-Proofpoint-GUID: B9V6Vh-C7XRMyM9syJs-rdwomsTYhpKX
X-Authority-Analysis: v=2.4 cv=fqXsol4f c=1 sm=1 tr=0 ts=6a8be6cb cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=XzRahJapldW6eB5g9eQA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX/Ab2Y0BRTnYU
 w4xy/7k/NlL8Q78vUfVsLrnD7HrZ5z+6YH3SkMZMN30T+k3Ynqxrj7za+Z3JQde9H3sDsKuzx31
 0WA5ZiD7Z+lErsn+DicmdAAPYdBzQbu+nu8VT1DsFvEWTVlctLhzQx7aiRwVGEH+8LuzaAuJFjk
 8JExHftfsBGClaun0v851lvBUpSkoCe/7aIQY1P8ErZIQEAlrrwgRKAdo9Ji3Fs/XINkgfY2C7o
 n/eS2kyt/L2qVtc2UezSM95fna9hrDjgkHclc6Q6iZfugH4GmGP8K90SZ2blfRF+ZQ7InrRobz5
 FGEzzT/guxbw163ACqOwnq4A6i2brZGa5ftPauKGvu154rcc01oupyQajzOCdmDJG9b0SzRRTuT
 VkqPCNiNZSF998q96wMZMX6wNeOCbedlt0vFmHC+xURuAY3G9J6XV4jccSQtjvvhS0CQLKXkLT9
 qtJgvTd9eWH3GRsMHdQ==
X-Proofpoint-ORIG-GUID: B9V6Vh-C7XRMyM9syJs-rdwomsTYhpKX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_233805_157957_292FA3A6 
X-CRM114-Status: GOOD (  10.22  )
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

Document the IPQ9650 USB high-speed PHY compatible. The PHY uses the SNPS
HS 6 nm PHY fallback, so allow it in the binding.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 661759b25064..405bfad2080e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -20,6 +20,10 @@ properties:
               - qcom,sa8775p-usb-hs-phy
               - qcom,sc8280xp-usb-hs-phy
           - const: qcom,usb-snps-hs-5nm-phy
+      - items:
+          - enum:
+              - qcom,ipq9650-usb-hs-phy
+          - const: qcom,usb-snps-hs-6nm-phy
       - items:
           - enum:
               - qcom,qcs8300-usb-hs-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
