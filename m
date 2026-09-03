Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F70C624D6
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHKWUqsa6YCUQrG/4res96HnNsD/F8XcWefJxfBY5Nk=; b=KOsyt6kSLuSB4m
	FBUb1xZNgNSz2JyyPIpIziDCKpEsCTNMIarFx6i3iWLyj4lDuVdW3Kjvh4uSoF5bS+I2HwoZEK4uw
	2eiuDdTdUvs0oPkVFbQimLMMXUdB+oqEYMqqaBa70Spm25zXVi4niw4ZQfWRoQi3hnlsyzsn7itAi
	Pt4DpxAkvf6Oz1ky2y5ojIbEo4W/zfEvYpF0eud8Jo4gQW73zUoAzGuzettSoC+Zsr5dEn5xDHTpE
	IJL2+dRJrsE5/y6JcW92458rIrpqKWRgp5MkOJDoYJ+jI3kOIzK1glcnyhZq2XAZpp/c4qbRy/JPd
	GRTk430PeAJAVYnWKTQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28HO-0000000HUwv-3fWF;
	Thu, 03 Sep 2026 14:19:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28HM-0000000HUwC-2TJ7
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:19:02 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 683DAhos707763
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 14:18:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iPDaGFLS/lLjdSaKwQhej7CnULXLtZrtQ6LDHRChrzc=; b=dFJG2Q2Ea3Q/O0uV
	4VWysPTuNx6UJAoYLkIrMP3BS49zSf5l5cI1wY2ndMVHTnbk9ywEHAz7o2hf/qqt
	FuQdzmyLMtDOzDMOn02gK03T8P6SsGIksIfhcm3TESWYfvYL9v4/VL5eOaHSVxe5
	dMemujhyR7aapXljovopp9N/TqCGvxSK+K5E5Qy1VAe0VgzIvptiTBWx8B6AkRqn
	LI+hDf4kM/dUBCMZta9Bn/DYk4cf8Uk9oe/IZ3oqgH2hR+lE+cjt7SHBVH6L1B2I
	8QA95ditJbvJZCQxbosyR2Nm6bFFHUv/ZYaBb9tlFld9qdrlySQjg/2vfByijvlo
	Z+zg7w==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gf4ekhnsr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 14:18:59 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-97ccaa613bcso18699241.3
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 07:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788445138; x=1789049938; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iPDaGFLS/lLjdSaKwQhej7CnULXLtZrtQ6LDHRChrzc=;
        b=QupM5rCvGmUVrNjHO2Nm4kOBY6TivhEFxnlXA3pMuCqtHRJQqHsgMTRqZLid4keU3M
         dKqY6eJVl2flUrNqBZrG33mvEs/qY+Er990/e8DRyzoSH/nNFZtnOJgPs8hM0HIJD/ug
         kN5j2LJ34hM2U/3XzikCzpnYxxAwg1StZYNLjHI6r6NGRk5HRPmeswn+0etZ+xI3VHWV
         Ef1bmL61PtjD78Ez7Kb0CJFqTiX1wZHnRdKQsvqDN6gtX86t7ZjhABfZR4N/BHw8f1AU
         iUD0p2ewDJtJagQ/GdtfmyL785Is4WpnLt4JRrJgQxhBvPrYSO41qM2IqcX2Bd5kQrhR
         kzVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788445138; x=1789049938;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iPDaGFLS/lLjdSaKwQhej7CnULXLtZrtQ6LDHRChrzc=;
        b=Dc5U4rR+VxSlho01QT/OQJg/x+dm8rViF0Ls5MQ/eGyub5jZXDrQqfu/thQ83VLrGP
         Y6h0CaqWnwvGBl3Wntutz+Pmgzll41tbni2vkUqXMr5fkTTSzHg4UajKjPv3siuqV7e5
         m02jvlt37WcNm1Hg6AP8vL2TpkMsA99q65uXW1TyI6FOaWONtgcnx5Ivap2o12ZbOIOm
         qJK4n0VaGOm0L8YYuVCTXefFvxfneauvMRdrVsQVN1ifAnExEhS1hVlburLdkCLOzdHU
         Lud3gpxhbndZp1iOcuCjlRPYKg/X3wJ56Vupdg7sh7u880eVbsIBjQD2PNquJ2GtqUXZ
         RhpA==
X-Forwarded-Encrypted: i=1; AKwUvBwYs4f+RXM5jZLFzd33tAqLux+Xvjq/AXxbLopl0/E4jqIUvXR95nMyzc5OV0ByzDVnOkhHuxjIij8=@lists.infradead.org
X-Gm-Message-State: AFuF++nPqdyXIqANi75jJKpNXCO6j6C3ApQMVMUMQqMbTzhYvIydAOPS
	on5fEfoR5icc88XYSxaQ3rDqnpnf3JyjNRRD5etoUKcHcxaFWsvszYyGeOc/EEluEucPHcuxma1
	K7KiGecrfRu3h1vNPxDROro+zz7ZgimwEcc9zv/Xcpd+RESRMU7DnW7bnuAcw6cdg6o97
X-Gm-Gg: AYBFou0XRUEp7CE6TXBk8CtUnzn81klLGPn3dNXsaqQn+yKF0dCnu5G18oxGununpiS
	KMmHW1SlEg5BMHcOIFTNOi6nte/MVpm7hoSbLhYSaRNnQ60BKCCExEwIhGCSOkiuYHnvlQj2rtd
	I1YpC9li09P9GkEo3Ze67Fp24AxAx1WO72cwdsA6ulTNbgSkMM0PXm8iCPf9uDLKX/FrBFuQxK4
	RNeW+Qe220FCiHIMNSjOe/24s8cusqcuakjvhH7LS90aWA0G1LhLt3vHvtyWgx44Qddywcw5oFV
	CAv/s7zpLW9+rq6p2FYOL36d0oeTuSjcffk2p7qTI6yn80Tu1w3cCK9FjkEEbOV9cwptZctomvj
	hMe4bJsPrVa7R83PhW7BAjQ==
X-Received: by 2002:a05:6102:6884:b0:786:8d84:5aca with SMTP id ada2fe7eead31-78a1f339246mr2199033137.2.1788445138331;
        Thu, 03 Sep 2026 07:18:58 -0700 (PDT)
X-Received: by 2002:a05:6102:6884:b0:786:8d84:5aca with SMTP id ada2fe7eead31-78a1f339246mr2199014137.2.1788445137740;
        Thu, 03 Sep 2026 07:18:57 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a67f895e14sm2261636a12.3.2026.09.03.07.18.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2026 07:18:56 -0700 (PDT)
Message-ID: <97149d63-4b74-4bd1-a9c5-798088316df9@oss.qualcomm.com>
Date: Thu, 3 Sep 2026 16:18:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <b05e860e-ace5-4399-bbd9-493f7bbfe74d@oss.qualcomm.com>
 <cnyhnyoce6v4d5roijrceuzd3ujvvw7ozklulaxkibptvjancm@cqbqu2aa7bz6>
 <852caded-eacf-4ac1-8fe5-83dd9285ef11@oss.qualcomm.com>
 <nrdf44ixzjqdyxdjnf54ucotpbncehjxjqygqnrknc66pyqfau@vm3emv662bub>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <nrdf44ixzjqdyxdjnf54ucotpbncehjxjqygqnrknc66pyqfau@vm3emv662bub>
X-Proofpoint-ORIG-GUID: bPA-FI3hT99lNoBck0iBd0winSfQNCWQ
X-Proofpoint-GUID: bPA-FI3hT99lNoBck0iBd0winSfQNCWQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDEyNCBTYWx0ZWRfX4Fqan/cv/Y4n
 Etf94qivYZKJhSuK8/ThatPtAT+Trpljlfjm2J3bNPLtc1728Lu4Hs4bzg9hbRxm5mrb50FBMO7
 v4DnrRdmr5Tp+3rGcF04inSmq5uQhH4/5uBWkexUhVTJvdIYVmQem/gt6QOvEVLvvfyo6LyanoR
 QClAQa28bpNfU/oh4yUUlFSomxBy5k7Pb/Y6RJTyMpWaYB43OYk2deF6MSXOKyQb8Dtkq/9omWn
 fqzbQm0nSMi5XafgIbsG7YBRDBMaoj+vnkpMgCNYOffAojnEwe3uI8PYvIjll0B0th/o9Fn3ohJ
 iyyXzSi1I7eelZUijFYMQne1KVaDWu/DS707/PUTtCsVjNk9c1glRAzra9tKemszmYe3M386Wms
 E2xo7LN9xTrE1c6hy4FS8fOeUTSe1nChayrHtju1g8bnmZ+ArAGaxvxBKpBFG2bPTF91hjkP8LZ
 vhWhpfgyqMLI7+lKisQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDEyNCBTYWx0ZWRfX1RRsyX9LqC6r
 EvD0RHXUKNK/OptcXVuUdNb+ByiU8AT3QAyZRo0cZg2Z0/hBZ682HKvg5BP7QUp0G7R7WtQSWdY
 phSM2xuEpdtIDWxzZ96pTozwPiciOGc=
X-Authority-Analysis: v=2.4 cv=PKc/P/qC c=1 sm=1 tr=0 ts=6a9981d3 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=sT_kjUCmaLeEptA-OHkA:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_04,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609030124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_071900_754380_C56399CD 
X-CRM114-Status: GOOD (  26.47  )
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

On 6/10/26 3:20 PM, Dmitry Baryshkov wrote:
> On Wed, Jun 10, 2026 at 03:13:01PM +0200, Konrad Dybcio wrote:
>> On 6/10/26 3:03 PM, Dmitry Baryshkov wrote:
>>> On Wed, Jun 10, 2026 at 02:49:31PM +0200, Konrad Dybcio wrote:
>>>> On 6/10/26 2:04 PM, Konrad Dybcio wrote:
>>>>> The MSM8996 QUSB2PHY was not being guaranteed a power source.
>>>>> The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
>>>>> wasn't. This series tackles that, freeing us of some dt checker
>>>>> errors about vdd-supply not found on MSM8996 boards.

[...]

>> reg   96   pro
>> 0x80 0xF8  0xD0 [!] QUSB2PHY_PORT_TUNE1
>> 0x84 0xB3  0xB3
>> 0x88 0x83  0x83
>> 0x8C 0xC0  0xC0
>> 0x90 none  0x02 [!] QUSB2PHY_PORT_TUNE5
>> 0x08 0x30  0x30
>> 0x0C 0x79  0x79
>> 0x10 0x21  0x21
>> 0x9C 0x14  0x14
>> 0x1C 0x9F  0x9F
>> 0x18 0x00  0x00
>>
>> apparently this is indeed SoC-specific (via docs) but also apparently
>> may not be very important (although should be fixed regardless as
>> some designs may rely on this)
> 
> Would you send a patch, please?

So the tuning differences may be taken care of through a separate table,
or by adding support for overriding parameters for the QUSB2PHYv1 (8996
-class) devices. Currently the overrides only really work as intended
for V2/V3 (SDM845-class) PHYs as the register layout changed majorly.

I think the real right solution here is to fix the overrides.
dt-bindings clearly created by an LLM :)


I implemented some of it, but I currently don't have the time
for finishing it up - feel free to take it further. It would also
help adjust the specific OnePlus init sequence that was originally
used for every SM6115 device (patch 2)

I also discovered that the interrupt mask is wrong for V1 PHYs.
At this point maybe it'd be easier to split off the v1 support to
a separate driver? Anyway, up to you.

I'll resend this series as-is as it fixes actual issues.

Konrad

commit 792eeeb5d43428cedc72c5778f664a33c4cf2b30
Author: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date:   Thu Sep 3 16:10:36 2026 +0200

    [WIP] qusb2phy v1 overrides/tuning/fixups
    
    Assisted-by: LLM

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 39e796cd5dc6..13a5c08fdb8e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -169,6 +169,22 @@ properties:
     maximum: 3
     default: 0
 
+  qcom,man-sqrx-dis-value:
+    description:
+      It is a 1 bit value that enables manual squelch receiver disable.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 1
+    default: 0
+
+  qcom,squelch-eop-delay-value:
+    description:
+      It is a 2 bit value that specifies the squelch end-of-packet delay.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 3
+    default: 0
+
 required:
   - compatible
   - reg
@@ -182,10 +198,17 @@ required:
 allOf:
   - if:
       not:
-        properties:
-          compatible:
-            contains:
-              const: qcom,qusb2-v2-phy
+        anyOf:
+          - properties:
+              compatible:
+                contains:
+                  const: qcom,qusb2-v2-phy
+          - properties:
+              compatible:
+                contains:
+                  enum:
+                    - qcom,msm8996-qusb2-phy
     then:
       properties:
         qcom,imp-res-offset-value: false
@@ -196,6 +219,19 @@ allOf:
         qcom,preemphasis-width: false
         qcom,hsdisc-trim-value: false
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,msm8996-qusb2-phy
+    then:
+      properties:
+        qcom,man-sqrx-dis-value: false
+        qcom,squelch-eop-delay-value: false
+
   # On MSM8996, VDD is supplied via the MX power domain
   - if:
       properties:
diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index c34d847b123c..a9435b6e1637 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -51,7 +51,22 @@
 
 #define PHY_CLK_SCHEME_SEL		BIT(0)
 
+/* V1 (MSM8996) register fields */
+
+/* QUSB2PHY_PORT_TUNE2 register bits */
+#define UTM_HSTX_TRIM_V1		GENMASK(7, 4)
+
+/* QUSB2PHY_PORT_TUNE4 register bits */
+#define SQUELCH_EOP_DLY_V1		GENMASK(7, 6)
+#define MAN_SQRX_DIS_V1			BIT(4)
+#define PREEMPH_WIDTH_HALF_BIT_V1	BIT(3)
+#define PREEMPHASIS_EN_MASK_V1		GENMASK(2, 0)
+
+/* V2/V3 (SDM845) register fields */
 /* QUSB2PHY_INTR_CTRL register bits */
+
+// v1: 4-chg 3-dmse_high 2-dmse 1-dpse_high 0-dpse
+// v3: 4- dmse_high 3-dpse_high 2-chg_det 1-dmse_intr 0-dpse_intr
 #define DMSE_INTR_HIGH_SEL			BIT(4)
 #define DPSE_INTR_HIGH_SEL			BIT(3)
 #define CHG_DET_INTR_EN				BIT(2)
@@ -443,14 +458,17 @@ struct override_param {
 	u8 value;
 };
 
-/*struct override_params - structure holding qusb2 v2 phy overriding params
+/**
+ * struct override_params - structure holding QUSB2 PHY override parameters
  * @imp_res_offset: rescode offset to be updated in IMP_CTRL1 register
- * @hstx_trim: HSTX_TRIM to be updated in TUNE1 register
- * @preemphasis: Amplitude Pre-Emphasis to be updated in TUNE1 register
- * @preemphasis_width: half/full-width Pre-Emphasis updated via TUNE1
- * @bias_ctrl: bias ctrl to be updated in BIAS_CONTROL_2 register
- * @charge_ctrl: charge ctrl to be updated in CHG_CTRL2 register
- * @hsdisc_trim: disconnect threshold to be updated in TUNE2 register
+ * @hstx_trim: High-Speed TX trim
+ * @preemphasis: Amplitude Pre-Emphasis
+ * @preemphasis_width: Pre-Emphasis width (half/full)
+ * @bias_ctrl: bias control value
+ * @charge_ctrl: charge control value
+ * @hsdisc_trim: High-Speed disconnect threshold
+ * @man_sqrx_dis: manual squelch receiver disable
+ * @squelch_eop_delay: squelch end-of-packet delay
  */
 struct override_params {
 	struct override_param imp_res_offset;
@@ -460,6 +478,9 @@ struct override_params {
 	struct override_param bias_ctrl;
 	struct override_param charge_ctrl;
 	struct override_param hsdisc_trim;
+
+	struct override_param man_sqrx_dis;
+	struct override_param squelch_eop_delay;
 };
 
 /**
@@ -558,11 +579,48 @@ void qcom_qusb2_phy_configure(void __iomem *base,
 	}
 }
 
-/*
- * Update board specific PHY tuning override values if specified from
- * device tree.
- */
-static void qusb2_phy_override_phy_params(struct qusb2_phy *qphy)
+static void qusb2_v1_phy_override_phy_params(struct qusb2_phy *qphy)
+{
+	const struct qusb2_phy_cfg *cfg = qphy->cfg;
+	struct override_params *or = &qphy->overrides;
+
+	if (or->hstx_trim.override) {
+		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
+				 FIELD_PREP(UTM_HSTX_TRIM_V1, or->hstx_trim.value),
+				 UTM_HSTX_TRIM_V1);
+	}
+
+	if (or->squelch_eop_delay.override) {
+		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE4],
+				 FIELD_PREP(SQUELCH_EOP_DLY_V1, or->squelch_eop_delay.value),
+				 SQUELCH_EOP_DLY_V1);
+	}
+
+	if (or->man_sqrx_dis.override) {
+		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE4],
+				 FIELD_PREP(MAN_SQRX_DIS_V1, or->man_sqrx_dis.value),
+				 MAN_SQRX_DIS_V1);
+	}
+
+	if (or->preemphasis.override) {
+		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE4],
+				 FIELD_PREP(PREEMPHASIS_EN_MASK_V1, or->preemphasis.value),
+				 PREEMPHASIS_EN_MASK_V1);
+	}
+
+	if (or->preemphasis_width.override) {
+		if (or->preemphasis_width.value == QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT)
+			qusb2_setbits(qphy->base,
+				      cfg->regs[QUSB2PHY_PORT_TUNE4],
+				      PREEMPH_WIDTH_HALF_BIT_V1);
+		else
+			qusb2_clrbits(qphy->base,
+				      cfg->regs[QUSB2PHY_PORT_TUNE4],
+				      PREEMPH_WIDTH_HALF_BIT_V1);
+	}
+}
+
+static void qusb2_v3_phy_override_phy_params(struct qusb2_phy *qphy)
 {
 	const struct qusb2_phy_cfg *cfg = qphy->cfg;
 	struct override_params *or = &qphy->overrides;
@@ -840,7 +898,10 @@ static int qusb2_phy_init(struct phy *phy)
 				 cfg->tbl_num);
 
 	/* Override board specific PHY tuning values */
-	qusb2_phy_override_phy_params(qphy);
+	if (true /* TODO: */)
+		qusb2_v3_phy_override_phy_params(qphy);
+	else
+		qusb2_v1_phy_override_phy_params(qphy);
 
 	/* Set efuse value for tuning the PHY */
 	qusb2_phy_set_tune2_param(qphy);
@@ -1136,6 +1197,18 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 		or->hsdisc_trim.override = true;
 	}
 
+	if (!of_property_read_u32(dev->of_node, "qcom,man-sqrx-dis-value",
+				  &value)) {
+		or->man_sqrx_dis.value = (u8)value;
+		or->man_sqrx_dis.override = true;
+	}
+
+	if (!of_property_read_u32(dev->of_node,
+				  "qcom,squelch-eop-delay-value", &value)) {
+		or->squelch_eop_delay.value = (u8)value;
+		or->squelch_eop_delay.override = true;
+	}
+
 	dev_set_drvdata(dev, qphy);
 
 	/*


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
