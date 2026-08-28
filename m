Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C0FC61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RimzKVzijUw4fovvsF1MTjO5SQl84D32a+QfcLCY3g=; b=Z2k/FVzH4o0dyk
	tqAZ2u+jVZQqGCzxLUWtoAFEWX7vz37gXFXygnhadDws6JCXaNy/QTHSH+oz9qyoITk5BhOzz+nOX
	MhZjY4FV7Ne7s329HmnstWHce8Gp1vBme2LNpNGiiesFM1KDNuq8T9F9dTevh4Ibz16DbP1xHWET6
	PxV0uX6AFKshzfUOqwnZwCpt4E5h88amKk1RTL2P7U0JLceob+hPOW+C7aZO4YjnUXxO0N9HNRQWN
	HZnc4MYAiVT+FYHq48Z+OTMMqixisbwjXadtkHcXZs22RT+68UVSpDYJvolh4JnhBRJpZkeEgp9Ur
	5j87di3XE2BlzsCnV1LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDJ-00000005wVa-2tSZ;
	Fri, 28 Aug 2026 14:05:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxDH-00000005wUe-2VK3
	for linux-phy@bombadil.infradead.org;
	Fri, 28 Aug 2026 14:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Q5nvjyWQigaJq/X70FSOqlsHb5yUcVYouF+wJkhwBr8=; b=DFOUYHq16/eg6oKbOYc6nINj59
	lbu9VNJ7D9QNmTe4371XH9LFXCVgmqa1HWOoT5wQn5GgXg4UxsJ0C1TCgPD8jxx7NNCcbO/Ma3Izd
	qM6ZjlYfKXOmapmjbH9m/5QPGsuVCNdxrA1n5k2qVQZMpucHw8r0QmNNsS9T3NPdAFihjUmhfbIC8
	l3e2JVZ2hfLIAUbtsX1kTsjSt3bICthNW6j3hqd58H7riaAH4/D0XOSichEf+WyBXvQjcofGsYd31
	hrFzKpcCZlKLxdIUZ2vMjvu+PsEIDHXfNa4oWmb6KDiNmBLGJv+jhsqmZMG3hVatI+RR319NjO/cG
	rChdcAMg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wzxDE-00000008Isu-1Rf4
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:05:46 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SDkmCP2538606
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q5nvjyWQigaJq/X70FSOqlsHb5yUcVYouF+wJkhwBr8=; b=IJJm6zRlwgC3LIRR
	Qsl+RRGaixMMNMB8vt37n/3o15KRcAgacEop/PAOXaDLSHDWAq4zWiXA6rOHoU1/
	wRY8jyL6tjQ7aUhNwr1u3Z1LD4RehDK4BM7xhyj/8Ux12o2ZJwUyZx6d12qERO4b
	+wXJABugKmTdcE1tTJR9vCETOIFK6B010OhDeFfX0nEDyq9qS4y7/UZoI6RPFHSc
	rhhiwWW2zALuM6gdSG0usU+GOt3KzemyFNigbTM/JIWl+Whakt9AgaYOZjRQXrcu
	8gTxDmHCSLXfwPuTnzClNvxc8P76aHs0qixAr3eSvL8yx47wbeuO/Ii6OmVyZkeZ
	wxBx1w==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3mua14v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 14:05:41 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-73858d44c8aso208401137.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 07:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787925941; x=1788530741; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q5nvjyWQigaJq/X70FSOqlsHb5yUcVYouF+wJkhwBr8=;
        b=Hlc53CAiPdSq9FyCFUXOl1fU4uUQUJaNcLO+0d2QSQvjaj+EQUVm3z+0THJ7syMJ9o
         RIYBdGbnR8nt2kKjs86g7VDcPdnySHT6lTBO/rIouiZYHWMgVivKyfchb2pIJcmR1ajO
         2ZRLzTzL/aeGfr8VcZJjQjUdhxukX8T7yDP7ObHftjfVuFFSlDLlbKK/Og5hBF5Dk3Ko
         cbopl988of2njGEccIPjLJBGwsECGY9W6z3GF0KJfeqf565/2yX8Tit12QOjnamUEfs+
         rGOQU6wqVRzsd34UHRP5kx28CoDG2+ER065GzCeWTnWQZMva0AoU5l53sj6/SRnJlmKi
         2VLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787925941; x=1788530741;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q5nvjyWQigaJq/X70FSOqlsHb5yUcVYouF+wJkhwBr8=;
        b=amsCF68kaH/uERCDL5c2JzSmL4i4dJ7FflxINsgLVIWuk9hQtUMZLkl1eCYqm7PBhC
         iRsAvWFRJjThv/D3vwelEBF5yOrpetpXuDdW89zcDDYMuMJ02oS/+rpXrWhbS2sR1J2l
         KoHzFqKuPil6ZGyP+iEnwbhMZTreW0Pxp8UY77iP7/9q5VPcJLkZV+IenzHayJ5byZ4P
         QNuE6J0WH2eUiOEwSXWmFG3UKpsjRN02VV8yQldySZ3BznoymQC2jnneiBqT3SbG9zuc
         VMH8avhr9atQiv5H0oo2CiYzXm6YVo6O6PgPafh9Zv06mbkGp+MbQAGPCZi2ldBoNAQG
         Z+8w==
X-Forwarded-Encrypted: i=1; AHgh+RpY15D8aQ5PQhFVWYBhhMoXlVM+/4ksn6RejdBMZLGdf75TS7eCBTJiH1EuZHQi5C6whYA/ltq/8j4=@lists.infradead.org
X-Gm-Message-State: AFuF++lxPh9LIT/0aoq6JBv4dp4iea9zca5uvEU3C8lekJMKZ2wHG2HH
	qQjNtHfnR0xAr3HP48bTEFe5li1VlL71Zp7wsYjhaNKni4ecfgaoEaC5Wwk6asU4rvwb8QICf07
	h9iWzXGWuP2zyPLiaAkxWoid0pEyszWMjR7wuagEmbQyDqPePJw2y0lzdPgG9oqWOO0wtdmhGKt
	UA
X-Gm-Gg: AR+sD1329Dx/7PEgJABM/db7mjYmMwyekxyT5ggQYvfIHdBRB5gpdcFSqbyqx3+LFDG
	zpx4SFwlQBrSVwfCG8XdF3G+BA++KczlT6SKIHt3iMtKrqNzmx+NpCVd53VBuH8weF6yijLqjyz
	fVVxuo5Owj1jGWD2eNDqOCsvXqTFfuI4dEp3Hl7ha6KUxR+acvz8cgD9doUpm7OHGcyCUoXB/uc
	UlBvAr/nHG4t78fPE8SUkTYDmul3I7YvLFj6V+Rb72jmuKXbUEdVmDd7KofvionxTUm4ldjk7hS
	OCojKQuhCVS7N75E8wd43fkfXT3hS5WbD5F2vzCDtThEXn5RAugGrwyHWngAo4nm+DVJi3oK9En
	lQtofTnSgisDEiED33zmxPo0=
X-Received: by 2002:a05:6102:f9b:b0:778:9e3c:5760 with SMTP id ada2fe7eead31-7859946b444mr2147806137.11.1787925940839;
        Fri, 28 Aug 2026 07:05:40 -0700 (PDT)
X-Received: by 2002:a05:6102:f9b:b0:778:9e3c:5760 with SMTP id ada2fe7eead31-7859946b444mr2147768137.11.1787925940211;
        Fri, 28 Aug 2026 07:05:40 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482fbb20122sm3908633f8f.20.2026.08.28.07.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 07:05:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 16:05:03 +0200
Subject: [PATCH RFC/DO NOT MERGE 05/12] dt-bindings: display/msm: hdmi: Add
 Eliza HDMI TX
MIME-Version: 1.0
Message-Id: <20260828-drm-msm-hdmi-eliza-v1-5-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7950;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=caxf4nP0LYhd5tTHzg34r3IHakvLdeyikIWGEpS/fMo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqkZWcR5kCraTeaFlb37qcnOqd4rhI8I3jzoXSI
 zJeI7SgTV6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCapGVnAAKCRDBN2bmhouD
 193pD/9Pw8KOp7bE0U7nphpfhHH+pJ5kmrc9xszbAWpknu41CZuqBNzvnIVmI/87O3l04yu+XM/
 nIZXHGSfzXXT3/VCAi/PMq707DZjAL/y39fRt2+ctP614cFbko3erU81p7ojZkGqEcZY6eH8puL
 yIwxHDEmOcdiJR103GYYowj+hBdedNMvx196rHVh9QJ1AMwIOk8llTZVKg4L0VFnBqDUJnutK9S
 Xgy0PldBUDOFC5SdLr6jv5R2vh8zYVbdL+VTvTGcKSKVetvgkW/K0Y25ThXx70xBMpik+W9Udsv
 EubDNTKHwL2qFLFo+Q6L2BwQskm089cA7Q0zTMdJDbZWsa2Yu1LJsbgEPAiOb+f3CMrkiljvidx
 JHfqVQtcfw9wSnxz7v/y5v/l0f67OIvX5a69xWT2Yjafyvjlf4f6FSgfuSxdqEuPmtyMWv9JKC1
 Zu/DbOZAA5Hcecqitowd1arraQY9pdxP0JY95lc9/05K9sqKXvII2XL06xIZ2dJYR3lGAsOltXt
 fDWwLDAgzHskVUCiU4G6IxqCmLSP4qSsg/dgfeOtvBBmR+k7WbFj2+iOoosSwNm9xJEb/u7H+w9
 liGE2Wfk14hL1+/7opR6DhrAsyFy6xiPYGoRh+aEKoFkcTiw7uTLasmvPbgHgjJv6JsXITndgjd
 8AB8HTHR70KHKaQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=ZbMt8MVA c=1 sm=1 tr=0 ts=6a9195b5 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=+bKQE0WJfmhK2875HamI0Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=U2XnKTW_qBCVAJQLEIUA:9 a=QEXdDO2ut3YA:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-ORIG-GUID: BVmROZ1upVhthxoW3ZXRPWMZQP9PouIR
X-Proofpoint-GUID: BVmROZ1upVhthxoW3ZXRPWMZQP9PouIR
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfX712dD+NXb1Dc
 IyimVIVyPFdMJmXQ58MFR2orNvooJaHc0OUvuTmCGL6NOj/Z8ZJtelyUgctv4W4kWGRrlsnhdZs
 Uk6bTJCJnaoMav6DVG3NtcrTEmttvlM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEyMiBTYWx0ZWRfXxPP0eNglqZaN
 F/uGRtA5k40JSCvtEVkGqSWlw9B2YFQXAscJX0ImabFt4x5rWw/S2Oa+lStNx+70l90fpdHPdBp
 uusqvcV+7uNgcIDPeyfYgsYLDwUv0e7SN8GkCaA7QMy0c4sjF9PUsrNVZFZpyc75zH7JPmMHJco
 fxxxeS3QOLvqJSgm99HuUZ//ZStRYYc9o0TTkV+zcmhjuTcSRPxQ83Szqc1w4g6XPHTQm7tDgfi
 LIU8rUvcAax/4oXvv8CcUi93tIohFclIRuB7U8b/nVt49YBuHp1CHtvZXxdb4Kr1sROXw4t2jWX
 yPG25zPSb8gvA1Fls4+HLB+kwsl/uFOmn6SSUfw7Ht8qhtOuZn5nLm3ah6zp0vM8Y3vjPWt8PJX
 sO7Gyw08j3G+lMxJ3RI3A3iFJbA4AAxbZbArdBKi9MB8bv7umUaaU0spZElqD0HuHdfKH+NiDNA
 xfVcw8q+rlye3z4Y/zQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_04,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608280122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_150544_978839_29073FDC 
X-CRM114-Status: GOOD (  15.13  )
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

Qualcomm Eliza SoC comes with HDMI IP block, built on top of one
previously present in MSM8998.  There are just a few differences in
hardware, mostly about handling clock reparenting, but more notable the
old binding looked incomplete, thus devices could not be considered
compatible.  The QFPROM MMIO space is not really part of HDMI, thus do
not include it in the new device support.

Document also VDD IO supply, which is providing power to external 5V
elements, like HPD pull ups.  This is not a suuply for internal HDMI
elements, thus it is valid for older variants as well.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/hdmi.yaml      | 67 ++++++++++++++-
 .../bindings/display/msm/qcom,eliza-mdss.yaml      | 96 +++++++++++++++++++++-
 2 files changed, 158 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index 02d27ccad024..6adaa095b747 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,hdmi-tx-8994
       - qcom,hdmi-tx-8996
       - qcom,hdmi-tx-8998
+      - qcom,eliza-hdmi-tx
 
   clocks:
     minItems: 1
@@ -35,10 +36,7 @@ properties:
 
   reg-names:
     minItems: 1
-    items:
-      - const: core_physical
-      - const: qfprom_physical
-      - const: hdcp_physical
+    maxItems: 3
 
   interrupts:
     maxItems: 1
@@ -62,10 +60,21 @@ properties:
   core-vcc-supply:
     description: phandle to VCC supply regulator
 
+  vddio-supply:
+    description: IO (e.g. HPD) supply
+
   hpd-gpios:
     maxItems: 1
     description: hpd pin
 
+  operating-points-v2: true
+
+  opp-table:
+    type: object
+
+  power-domains:
+    maxItems: 1
+
   '#sound-dai-cells':
     const: 1
 
@@ -113,6 +122,12 @@ allOf:
             - const: core
             - const: master_iface
             - const: slave_iface
+        reg-names:
+          minItems: 1
+          items:
+            - const: core_physical
+            - const: qfprom_physical
+            - const: hdcp_physical
         core-vcc-supply: false
 
   - if:
@@ -136,6 +151,12 @@ allOf:
             - const: core
             - const: alt_iface
             - const: extp
+        reg-names:
+          minItems: 1
+          items:
+            - const: core_physical
+            - const: qfprom_physical
+            - const: hdcp_physical
         hdmi-mux-supply: false
 
   - if:
@@ -159,6 +180,44 @@ allOf:
             - const: bus
             - const: mnoc
             - const: iface_mmss
+        reg-names:
+          minItems: 1
+          items:
+            - const: core_physical
+            - const: qfprom_physical
+            - const: hdcp_physical
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcom,eliza-hdmi-tx
+    then:
+      properties:
+        clocks:
+          minItems: 6
+          maxItems: 6
+        clock-names:
+          items:
+            - const: iface
+            - const: core
+            - const: extp
+            - const: phy_iface
+            - const: pll
+            - const: pixel_src
+        reg:
+          minItems: 2
+          maxItems: 2
+        reg-names:
+          items:
+            - const: core_physical
+            - const: hdcp_physical
+        hdmi-mux-supply: false
+
+      required:
+        - core-vcc-supply
+        - core-vdda-supply
 
 additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,eliza-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,eliza-mdss.yaml
index bd4ba91a171f..6f50f7106c8f 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,eliza-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,eliza-mdss.yaml
@@ -63,13 +63,22 @@ patternProperties:
         contains:
           const: qcom,eliza-dsi-ctrl
 
+  "^hdmi@[0-9a-f]+$":
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        const: qcom,eliza-hdmi-tx
+
   "^phy@[0-9a-f]+$":
     type: object
     additionalProperties: true
     properties:
       compatible:
         contains:
-          const: qcom,eliza-dsi-phy-4nm
+          enum:
+            - qcom,eliza-dsi-phy-4nm
+            - qcom,eliza-hdmi-phy
 
 required:
   - compatible
@@ -79,6 +88,7 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
+    #include <dt-bindings/clock/qcom,eliza-tcsr.h>
     #include <dt-bindings/clock/qcom,rpmh.h>
     #include <dt-bindings/interconnect/qcom,icc.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -405,6 +415,90 @@ examples:
             vdds-supply = <&vreg_l2b>;
         };
 
+        hdmi@aea0000 {
+            compatible = "qcom,eliza-hdmi-tx";
+            reg = <0x0aea0000 0x1000>,
+                  <0x0aee0000 0x1000>;
+            reg-names = "core_physical",
+                        "hdcp_physical";
+
+            interrupts-extended = <&mdss 8>;
+
+            clocks = <&disp_cc_mdss_hdmi_ahbm_clk>,
+                     <&disp_cc_mdss_hdmi_app_clk>,
+                     <&disp_cc_mdss_hdmi_pclk_clk>,
+                     <&disp_cc_mdss_hdmi_intf_clk>,
+                     <&mdss_hdmi_phy>,
+                     <&disp_cc_mdss_hdmi_pclk_clk_src>;
+            clock-names = "iface",
+                          "core",
+                          "extp",
+                          "phy_iface",
+                          "pll",
+                          "pixel_src";
+
+            operating-points-v2 = <&mdss_hdmi_opp_table>;
+
+            phys = <&mdss_hdmi_phy>;
+            power-domains = <&rpmhpd RPMHPD_CX>;
+            #sound-dai-cells = <1>;
+
+            core-vcc-supply = <&vreg_l2b>;
+            core-vdda-supply = <&vreg_l4b>;
+            vddio-supply = <&hdmi_5p0_reg>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+
+                    mdss_hdmi_in: endpoint {
+                        remote-endpoint = <&dpu_intf4_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+
+                    mdss_hdmi_out: endpoint {
+                        remote-endpoint = <&hdmi_0_connector_in>;
+                    };
+                };
+            };
+
+            mdss_hdmi_opp_table: opp-table {
+                compatible = "operating-points-v2";
+
+                opp-150000000 {
+                    opp-hz = /bits/ 64 <150000000>;
+                    required-opps = <&rpmhpd_opp_low_svs_d1>;
+                };
+
+                opp-300000000 {
+                    opp-hz = /bits/ 64 <300000000>;
+                    required-opps = <&rpmhpd_opp_svs>;
+                };
+            };
+        };
+
+        mdss_hdmi_phy: phy@aea1000 {
+            compatible = "qcom,eliza-hdmi-phy";
+            reg = <0x0aea1000 0x1000>;
+
+            clocks = <&disp_cc_mdss_ahb_clk>,
+                     <&tcsr TCSR_HDMI_CLKREF_EN>,
+                     <&bi_tcxo_div2>;
+            clock-names = "iface",
+                          "ref",
+                          "xo";
+
+            #clock-cells = <0>;
+            #phy-cells = <0>;
+            power-domains = <&rpmhpd RPMHPD_CX>;
+        };
+
         displayport-controller@af54000 {
             compatible = "qcom,eliza-dp", "qcom,sm8650-dp";
             reg = <0x0af54000 0x200>,

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
