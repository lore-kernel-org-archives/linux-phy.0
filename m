Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75901C44507
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ov64SuQMmcFunUQN6IlB8PjyEHJrGrQrfBqR5leYehk=; b=erQFKKrtcx/TQE
	7RB4XhXF6WM907h3bmGt72WKPo1wshQNEuqgG3m+zqfxV4ta/bnkke9DNx/SfAYQv6JTauCeP94ry
	gyCxn4hnQSvLPBISJ7ohCmdnUn4hvmyzdmCfKeVmBY3Ag6vPhBjSlDRvbqE/OSj373vZIWkG8D+ae
	1ieVAzU0KCQKzQb3SMTqqfgXFqcCUzonccoUkckkelNA+0ctLtVWJK6SqFfHpruTJ5dhWA2nFXtQH
	NPqIf0gQQynZ9Cc2n80o610aJc6cll8pr8VKMfsa0xz/z+7J50oe7gTQ6gMA5h9QrYYz57CabiMBr
	3OaTp4eBaafj3Q93Gq4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDL-00000006iQ5-0wxl;
	Sat, 11 Jul 2026 17:10:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDJ-00000006iOO-0lWu
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:10:06 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66BEOWan3916512
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6oYYmVHCEVxwHI677IftGmw1eu5lSQkq+tVMrat0xLs=; b=A/aFvggTPSyZZ+sY
	oKtxRYS+2+QAdwfkjNMHkuLwy7CQY++nvZIutK7Tc876rdu7M4pV8vseCgEudYPo
	B3iXGMUCfeWzbzXDiRyovVKYJIyv/winF17BVK3i8Bw0kDteSNz7em7fMZv5WDCd
	TMeJDG4NK1D09vB6Yax612Nm5rlPQNkfEs6bUSyPGjOY/ygnYLnCckKL1cPEZUHa
	8Kg2+DVW5Byw4aI34pL+2i/N1Zs+q8ent0HClJGGt0qNSB7wFBif0brQOCvxMv6M
	IvkuJG0uZejAY6YydYn8V1GkxiTuazk1tQrN+p8wB7BswwENZ2FP0m6msW55uLPp
	8zzGkw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbee9h94r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:04 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38dc8d877eeso1080284a91.1
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 10:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783789803; x=1784394603; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6oYYmVHCEVxwHI677IftGmw1eu5lSQkq+tVMrat0xLs=;
        b=E0rsYvNXZLzvMDY29ynuXpDPPniszo5yJFRP0dCs1EmDNbGOJsAPby5YkWz+evZsLk
         JLmUDRI9FIpiJ01YZu9Q66j4O4rU8fW1wZlh7zZhILZEAK7r3LQKDNbCw0MilNH5qJs9
         5jjnbxliMTSPHV2ekdDDMBrgnP/vgHG7eK96aK++uNeEcPH3SK10m9HKmiUwiCjNBUHC
         dmiLVSnFCG6DKiN+G1GoLo1Pclyr9klwhOUmVyQ9wd29xXKiU55OErNaztHTZ/d1uCl+
         f4FDDg51EI4CN/bYUctWpeeHffYXYpgMPIBPhuoBjX3PrEa7DmVesGxdIYSHCI6S66uR
         79kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783789803; x=1784394603;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6oYYmVHCEVxwHI677IftGmw1eu5lSQkq+tVMrat0xLs=;
        b=h98jqFzp9CxPp/9ovOXtRVW4T93bxaMce8GGcQSDutHDljSAWrH8YcHWK5ZAtCsBQi
         OiGFovTIID7V3xDORgnx3C5XeJmkhxuuYa2A2rl+GaidNV4qaa9YejMWBJvaendvAal2
         d+BGFKOiibRuGhAWpvM/D34DAC6pywtmcYDfCL7Spm6wS5j5ALQuNH0WImsK9CHg0gHC
         w0TUf8MZSSViXU9EogeZco2bAJ8RNmIQ3+IOmhF/KYtfgwvVM98Y064bb/K0JoEtD3YK
         jWWuhI416P2gU6kfqd3wJmmfo37WbqI9NwwWOjeEXDWByJEBOWeZNGHkhNoS7wqt2qAw
         2RPA==
X-Forwarded-Encrypted: i=1; AHgh+RrNHHp7bp8MYzZcG9staX4/ljE3txRnwojGPDuk0flVbqPyjHXLEStYy1dT9quFz6Dh/n6tf6FcMVU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIoZ0mN94iAmD9Emf/bmwxla0vAfiqmCgDWBy3M6qORSVhwO2P
	oljTYtAMS3HEBAcYoboOcwwT2J3UfXk4ZE8aSaimu+gINYQ1/+gV149dihQ87GByH/NJQgYV7Yb
	8N5BrD2oAK09aVOyQlxwn/2DCQcj1Fwm9RMG2vnIJwSlC7+eq6FYIwTK2e1icZOD2z2cy
X-Gm-Gg: AfdE7cl5lFQhnJu+RpcERZmEuYMNtdkNegzU+GRj3H/gW7cB4Bd2crgQeaDKhNBS6CH
	TJOuFW96zkOFETqdu2gvx5zwm90BVj2FY0n5cYN+l040m+x0H5bn8Xq5lhEBqF23bY+P9T//eeW
	lZS3x2AdbwhNFh8Orr3Bd1LVaAy+rAiUIjkMd/SKaqgtOu184KdbagDyibS6jO1ORORfLUMaS+C
	Ej25gRIq5cGuKtFIH3jL7WdXQ8/Yly1bP80NcpOhVb5y089f43523UGOc8kI1rSVPIy7razo6uB
	C8fAdBt086rXXFy9T9OyAXn7cr0VTEz1foQ5IO6YwvLWTfztvmNyENLsK+Ei6rkXpiFm0TSMZ7b
	UmsRCboG7XLZGe0WNAFdIODzfgAZrpr14NFrAbMD2iuJUtOy3L0MdLPHG3seuaTe5HCRJBNrJQS
	x+/LdF
X-Received: by 2002:a17:90b:3bd0:b0:37f:9cdf:f0ac with SMTP id 98e67ed59e1d1-38dc77f1987mr3410722a91.27.1783789803128;
        Sat, 11 Jul 2026 10:10:03 -0700 (PDT)
X-Received: by 2002:a17:90b:3bd0:b0:37f:9cdf:f0ac with SMTP id 98e67ed59e1d1-38dc77f1987mr3410701a91.27.1783789802710;
        Sat, 11 Jul 2026 10:10:02 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313b9ca880fsm12943635eec.23.2026.07.11.10.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 10:10:02 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 11 Jul 2026 22:39:50 +0530
Subject: [PATCH v5 1/4] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy
 for Shikra
MIME-Version: 1.0
Message-Id: <20260711-shikra-usbphy-v5-v5-1-229ba3602737@oss.qualcomm.com>
References: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
In-Reply-To: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783789793; l=953;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=n32F+WQzySrIX5iVbHz5HeXrQoNod4+w3vtYMUcs8Ls=;
 b=07VqDUcV/spGZceZHaIll7lGdggV4+6c7o9rA4r2mRUlCFjAV72hmp3YJR7KCOFTBBAQM81y6
 A+69tU4wMQiBdK/WMLQChZZ0ata3wDYUuWRYPpk2jjqm7/2595C6kVh
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfXzvUIB6mp+Tpw
 8jjG7/SvJRBYvq61lMvKsQ5eWMxqdhvXTXUN7w4UH6SJiu+xW7qapVooFnTw9T+YRBSyuhmfrWK
 bXwx6TjnMXGsaOXTtjQG/zppe8v5iSc=
X-Proofpoint-GUID: lOakNApYiInLZmsMtTVV8vEHEOSi6Ylz
X-Authority-Analysis: v=2.4 cv=a7UAM0SF c=1 sm=1 tr=0 ts=6a5278ec cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=ybcDLLt5cEg1GZjoCqQA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfX6i8d5ZGFZBqV
 mmQg2U7TEGou/8D1tz1fo8XG7gcBjWkBlb+akcawXImFOLe5XOXpUlfGLrExuqTlitD9dzJkSiY
 7kLJHXt9+uxfNZyqvxOsl8yfy5h1YUSSpsWWBREiPtjqyjPvAQOZUA9mDeXEVafAASyoI693kK8
 GgiMlrLnGWW/eUO0HeLY3Bq0hcjy7h1ukx5N1oI/LwamhcEhy1o02MNQa5B9k4xQ8RSVonzrzfX
 knA0YrvjdA4Yx6wbeY5DHxh+u2+L5X+jbhK3QXhYvZlvY6b1Anr63SoZ8VJJYl9Baqwv4wY5Peq
 MCPZF/rk4od8iDi5slHjvlsXJGVAGfyug5d49yZT6eq8PuNeRcWvpSXhbN7wNy8su3trkQZJz2+
 STP78f3TclXyPleaqqj1Uy2L48y7I5Iz80D2hub8G8lE5Dxr7DfrsXNW0HCq5AhEMoVTrXX+9Ue
 HYEV15AAiBFy+NNbCJQ==
X-Proofpoint-ORIG-GUID: lOakNApYiInLZmsMtTVV8vEHEOSi6Ylz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-11_04,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 clxscore=1015 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607110173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_101005_344520_A1201FB1 
X-CRM114-Status: UNSURE (   9.49  )
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

Update dt-bindings to add Shikra to QUSB2 Phy list. Shikra SoC
has two High Speed QUSB2 Phys.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 449c2a7e5fec..001fd0ccc985 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,qcm2290-qusb2-phy
               - qcom,qcs615-qusb2-phy
               - qcom,sdm660-qusb2-phy
+              - qcom,shikra-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
       - items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
