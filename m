Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A930606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 20:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LSr2ndie;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=lWqblDYl;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kp2K1cdq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Q1vQoRBL3RyIM6HSOnyPsWpQNiIzkMGab171qwJKZU=; b=LSr2ndiezfBMVD
	hx+1wkpK+3HFXhGmHmM2nFIkLR+QURnYyhGCQCVLAjPb8kKMWaElICBCsrU6JA3axhOIcqlHZSEwF
	lKU8+5iqi6LZHDLKG+74acRHCxGv4eQrqX8BJE/J6pOem5ohZMBChP6p1Asq9wYES9zS672iL6fb+
	XH7Sco080I4FLa6lltrESIKKqF6pjYnZTxUCR2Ly7ReWZo19UoYU9VEnWSFaGba/NWyxylkOyf9T1
	N+4sORZj0Afij2lLuPh4s2i0MK/2izY+NjtRahkql/viz2k8I4lHdN9jszz2NG410if/T8+XKkeiQ
	bCSEAjpQCKpMUjhBTLXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJGvY-0000000AeYW-3ACD;
	Tue, 20 Oct 2026 20:59:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJGvW-0000000AeYC-1BDl
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 20:59:20 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KKuBoD3230011
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 20:59:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m1sqo/ZVn+VFxfXfLlBZ/RuAV0Yoz3eQ+nWIZ+yIl6c=; b=lWqblDYljlhYfnv3
	omWHIPH2Wl1zbWIomVLAWQRdiGf0v0grw9XZquYiqVRrjmYi9EvWlL+GO8J+ap6y
	NprW5AY+7yVRTVMC+5mhJXzTFeEPSgX9UEgz4aHE/Fbw5mzv8h8uJDo8QK8jJn6j
	yJTCeGpoIA4WYyp2OY39oJjrZY/V4qpOHSJMG4ivXO92XLW8ycFQy1MOhewNi6VM
	7tbn1PP8AvKT5gZVAwyH99DwCKePz7vFDsBB5+PB5Aq2egDBbegI/hew83JGxS3W
	30nH2T6XeQEBYrpWQzQfk74OM3ZieJXuaYE9GwmfIcLPQeXRrrePOsROLuSvWK0A
	qPksJA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdw5nvc3x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 20:59:16 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-359b81ad4e8so6368801eec.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 13:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792529956; x=1793134756; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m1sqo/ZVn+VFxfXfLlBZ/RuAV0Yoz3eQ+nWIZ+yIl6c=;
        b=kp2K1cdq3YmqjMrkb29dz3dmm09nELUx2aGRpPWHIvTDskV+348wk4dbEk9Tz3NxkY
         fXPzaOKJoWe8M6JTIdoOKSYQ282siUU614A29IZElMuq7FmD2lU1HPIPQuBm1q6LRVUW
         WlTig4w3McF5s8F5MtFO3AhpN8XOtFLs7VRJUqMwhxhPtdSSUFFMAGYz+82yRu6PulM8
         KW47ZcLUhUfLM0vi7fOk+oioFJ8kK7Yi1Sk2mqccLw6o9SfLOUIJ9BGNcqK7M/Dj7tFy
         0uyJiZKU1SJhEJrkngJGY+fMOAM7IuUe98og0FCLsVe7/ScgT09rSU1V9la399dBpKX1
         qHmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792529956; x=1793134756;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m1sqo/ZVn+VFxfXfLlBZ/RuAV0Yoz3eQ+nWIZ+yIl6c=;
        b=Wo9dwuDJXci6jykUylmG1q/5TAsk62+QZLTsf8E8jRnHk89TKqMIW3BUfTp2nHdmOZ
         plsiMErv755LBywqYeR9qUOBP4UDPu7lODw4cG6HtO/+RGRp5wbkT5OHmBUBWghDEJxr
         wkXQT9XppV31vIyE0UHQI2pSNQD7mKRykmK03ZGloZ5EMsUR0aWB3AKPQydRFRVglVHd
         RmEsltMsSYi0uDmO8esHHBwgrMevbxe/bHZYM8+mEU87qwaNbg/axOTr81mWyhEWPOFe
         Vtv2kNZllSErgwH1ibwgCcNh6wq4bgO6OAx+wdvIbaqo/bo27E/4S+r/h9NgWdYDnymh
         Gb3g==
X-Forwarded-Encrypted: i=1; AKwUvBxvIkDdQFppE6icttw7CWxqnBL4R7J9r7/uTspBPtmEMuLSoZcXBNJkjoB1Px2TU/c2+g7nwqD6QtQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYI8O3zb5bLIYOQz6b5GWhRwwijm+pM37R26AseL88Akr2z0Q/4e
	t+szIX1jqKUt1uZEU1LIL2JZ9pPZxyuzjwfaYN0UXgAvLXMn71FolhvGnK/V/rIBOBZIRTMSG7n
	7o60g5qlrVxXm53Di/yjWcQJtGptBmFJ66fTZ8mb8Fx/j7IOLX2bxwr1sK7aQn8zAxpob
X-Gm-Gg: AYBFou3mQn5dty4JMX9C/Hsfv/h/WqXwCeA+/qra0Tjr1GAY2yD9RbJS66HRvBg7tBn
	GU8wGFQNF0HXqgVe8AIPgixno73DaZvzYQ72a6Yn8/jxC5RkILlnSxOGhSx0rtMD/m4WTRaNh7p
	7A/cy5uBQZo++rR47WJ6HXTvVdE2Qjg4L1NJIzQ/9nFRHzV62Uzd3zAb2yV3zU918pkUK6RTLHe
	iIPeMsXk91/M0FkJroL9984ezmbzaeo7z7dFonwewZfJIouBw6JdRZKAJ5c1vx8lYSqYw06Gxkc
	/J+Jk69ZsoLZxMrZz2C4ZOjbOffvUjZ5D9STwQH822Xa47EitQxOlyvzrD0mNVGHkMYsebTcXk4
	wa/TBHuTq0+B8AYC837V6RPuy+EIYLFKnhY+xugop8WEjgoBftkjdZu8h
X-Received: by 2002:a05:7301:160c:b0:360:d4c5:7243 with SMTP id 5a478bee46e88-3674c63d927mr549901eec.11.1792529955651;
        Tue, 20 Oct 2026 13:59:15 -0700 (PDT)
X-Received: by 2002:a05:7301:160c:b0:360:d4c5:7243 with SMTP id 5a478bee46e88-3674c63d927mr549854eec.11.1792529955015;
        Tue, 20 Oct 2026 13:59:15 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-367405ed2absm1247328eec.5.2026.10.20.13.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 13:59:14 -0700 (PDT)
Message-ID: <51147489-a26b-480c-9d33-a09eb858fbb7@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 13:59:13 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: phy: qcom: Add qcom,sa8775p-csi2-phy
 schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org, gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-3-anusha.nandi@oss.qualcomm.com>
 <20261019-ninja-velociraptor-of-gallantry-2efa3c@quoll>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <20261019-ninja-velociraptor-of-gallantry-2efa3c@quoll>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA4MyBTYWx0ZWRfXzDM6Moq/Diwt
 rCZPL+jrkP3tmBApA2d2xDT1b2NFS9ANmoINMb7dzbAZ5+SAVvO3DTFv8s2fGPQO2pUCvmQNq4b
 6xpvlYDBHMmiq7yQaV+qVJE4zF+IUE8=
X-Proofpoint-GUID: ZSWlFNbsvu4pxMViTHCe8GySkptCW_Hw
X-Proofpoint-ORIG-GUID: ZSWlFNbsvu4pxMViTHCe8GySkptCW_Hw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA4MyBTYWx0ZWRfXw19Hmm6T4Vq3
 aY372oGDX8O/AAmahlsQF5k6jHxRb+qeFlHno1pPmIVe8UfMBQugSinEfxHyjCszj/83SxT/VEA
 Hx2oiLnwbUYB9/04zaVTuGlm9g0oV1pyp6nqMpZ9BR2ShRejt4TDXjotgqCj4nMhP7VQpudnxcy
 4eNY7IHjYhnJzCc8dNmGgvYWYzLQBoKcVFy5CJHJY0IXETGvI1nUnfe1wJI/Smge6p/1dZ0dTE3
 vSW3k+EFCu5yk6nz52G5BDRvQX9V3Xr0fWwHPUqpM2XZgoX/IQECLnLDEvY3hePkGaLi2+xMZHm
 k7ZFUueP3x6P5raSuqXXyl4XRMrgQzJVA2ULPa7O0+0XuZwERjMaI4nMItBCmXPloKO3JOgC7Gi
 0j5c1d1s3YVYGvlUqJG4qh0O2PbfJVwlOOg41FZ8k3jK0+85R4C5wx+4eaN1cnLqfFOHswmSsH9
 teY5NRg06AiSD2CR7XQ==
X-Authority-Analysis: v=2.4 cv=TcsDJhQh c=1 sm=1 tr=0 ts=6ad7d624 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=P-IC7800AAAA:8 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=sn4hIavaYfXsKkgl5soA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_04,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_135918_446324_712040AE 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

Thank you for the comments. I have replied to Bryan's comment about a
single generic yaml file. Based on his comments, I will drop the next
version of this patchset with these comments addressed.

Best Regards,
Anusha

On 10/19/2026 12:16 AM, Krzysztof Kozlowski wrote:
> On Fri, Oct 16, 2026 at 04:54:57PM -0700, Anusha Arun Nandi wrote:
>> Add a device-tree binding for the Qualcomm SA8775P MIPI CSI2
>> PHY, modelled as a standalone generic-PHY provider like the existing
>> qcom,x1e80100-csi2-phy, so CAMSS can consume the CSIPHY through the
>> common PHY framework instead of driving it in-line.
> 
> A nit, subject: drop second/last, redundant "schema". The
> "dt-bindings" prefix is already stating that these are schemas.
> See also:
> https://elixir.bootlin.com/linux/v7.1-rc7/source/Documentation/devicetree/bindings/submitting-patches.rst#L23
> 
>>
>> Follows the qcom,x1e80100-csi2-phy schema's shape: a ports/port@0
>> sensor-input endpoint carrying data-lanes/bus-type (D-PHY only for
>> now, C-PHY bus-type value is accepted by the schema but wired up by a
>> companion series), a port@1 CSID output, and a mandatory
>> operating-points-v2 table plus power-domains/power-domain-names.
>>
>> Unlike x1e80100, SA8775P's CSIPHY has a single power-domain: the
>> Titan Top GDSC, matching the legacy in-tree CAMSS driver's
>> sa8775p_resources.pd_name = "top" (drivers/media/platform/qcom/camss/
>> camss.c) and the existing lemans.dtsi camss node's power-domains =
>> <&camcc CAM_CC_TITAN_TOP_GDSC>. It is not OPP-scaled, only kept
>> enabled, the same way x1e80100's own "top" domain is.
>>
>> The PHY takes three clocks (core, timer and the shared CSID CSIPHY RX
>> clock) and the vdda-phy/vdda-pll supplies. The core/timer naming
>> matches x1e80100's clock-names convention for the same pair of
>> clocks.
>>
>> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>> ---
>>  .../bindings/phy/qcom,sa8775p-csi2-phy.yaml   | 172 ++++++++++++++++++
>>  1 file changed, 172 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
>> new file mode 100644
>> index 000000000000..b66ec2f14189
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
>> @@ -0,0 +1,172 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +# Copyright (c) 2026 Qualcomm Innovation Center, Inc. All rights reserved.
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,sa8775p-csi2-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SA8775P CSI2 PHY
>> +
>> +maintainers:
>> +  - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>> +
>> +description:
>> +  Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
>> +  CSI Decoder on the SA8775P SoC.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,sa8775p-csi2-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 3
>> +
>> +  clock-names:
>> +    items:
>> +      - const: core
>> +      - const: timer
>> +      - const: csiphy_rx
> 
> You just named it basde on clock name. Instead, name it based on the
> input name. csiphy is also completely redundant.
> 
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  operating-points-v2: true
>> +
>> +  opp-table:
>> +    type: object
>> +
>> +  power-domains:
>> +    items:
>> +      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: top
>> +
>> +  vdda-phy-supply:
>> +    description: Phandle to PHY supply.
>> +
>> +  vdda-pll-supply:
>> +    description: Phandle to PLL supply.
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description:
>> +          Sensor input. A single sensor is described by a single endpoint
>> +          with one to four data lanes, numbered 1-4. The clock lane is
>> +          position 0.
>> +
>> +        unevaluatedProperties: false
>> +
>> +        patternProperties:
>> +          "^endpoint(@0)?$":
> 
> so not a pattern really and just endpoint.
> 
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            properties:
>> +              bus-type:
>> +                enum:
>> +                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
>> +                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
>> +                default: 4
>> +
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +                items:
>> +                  minimum: 1
>> +                  maximum: 4
>> +                description:
>> +                  Data lane positions following this endpoint's clock
>> +                  lane. Positions are a per-port logical numbering, not
>> +                  package pad or ball positions.
>> +
>> +            required:
>> +              - data-lanes
>> +              - remote-endpoint
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +        description: Output to the CAMSS CSID controller.
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - interrupts
>> +  - operating-points-v2
>> +  - power-domains
>> +  - power-domain-names
>> +  - vdda-phy-supply
>> +  - vdda-pll-supply
>> +  - ports
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/qcom,sa8775p-camcc.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/media/video-interfaces.h>
>> +
>> +    csiphy0: csiphy@ac9c000 {
> 
> Drop unused label
> 
> git grep csiphy@
> 
> Don't come with own style.
> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
