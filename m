Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D567310FC465
	for <linux-phy@archiver.kernel.org>; Thu,  9 Apr 2026 02:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df73IiQRxgIGLpTidsKfEi7ZDSS4e2FfWh2CsN6A+NU=; b=RZ6J6RmejKszMt
	jP2xJm8cEPieA/B0T9M/1zxSqVtEXIixk1DD6fQh8L5Gao3nAP+p81MTwtWDcnmKvQx+HLTnBCeqa
	egK6WqQass+eyJlZnRBVq9Xv4nEg5sa4xh0tjRvco1QWXQ3gEFHiDGm0nCqovUCpQsfqzqvgoEV3p
	w6wuAwOV3d/xzwRx+kYtOihHB/AyxDKe87LuL1Dc90RWNmzF0pgEtkqnOCzGqBkOUY5HeabODlrRh
	k2BwMg7SejSbM/cE6nNcQK699zq9uPIvFFWakr2qM7TwE2c2fUZB1y1OAyDaIrFCUnVzPHm+vcnsg
	+ROglqMmfcxKQCjhsnLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAezQ-00000009c6m-0bwK;
	Thu, 09 Apr 2026 02:19:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAezM-00000009c6C-3Ybt
	for linux-phy@lists.infradead.org;
	Thu, 09 Apr 2026 02:19:26 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 638NsJBp1072630
	for <linux-phy@lists.infradead.org>; Thu, 9 Apr 2026 02:19:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=d9sCCw8oekUugQnNyjHlCrSr
	WbxrJ3dBnUZAbEDDODM=; b=AJ15wqP+KK2zKr2ezTG8zJXVHMohhb49FogLJOj4
	JK2ibProZ8qyK0m1NTZBPPbLo6JSIe2QXSxiujo71vBnA69go/vFYaTvwHn2CyoH
	448nWoo6r7/NvOUxcBxNAiHEsm0dPnnG/6/R6BStSD8STZ4gStSwH1FJgwPfn2cQ
	Z8wviuLd4GG9fq6qpPZpF/pGjg7olaz7gaEBxfPT45kzViQu/51I/idcH5Dv4UJe
	XLUAeMdU/jN6fh/YJLjvQDhQUDLXnN2T7GLkaHl0SiSCm41xFix873t4Y24+b+xA
	VL9DaysGjt2hWSu6Rh9xDHbzQR+u8nq5OE5eHQiAzbTXFw==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ddtb39xgb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Apr 2026 02:19:22 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-127133794b6so10726234c88.1
        for <linux-phy@lists.infradead.org>; Wed, 08 Apr 2026 19:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775701161; x=1776305961; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=d9sCCw8oekUugQnNyjHlCrSrWbxrJ3dBnUZAbEDDODM=;
        b=ND2ohSVUrni7x9sgookd/27nNM7yj7nmj7RiP+nnOodOz2GAdt8LmnAtFd/2PzbB26
         NKNl4crne8rH9efoB7wEk1uI2hpAjFU61T601dho6SCjt57QsLfXHm8NrHPJ5/oHX82n
         KZzXDP8Jt1HOaSLREaj8l4v/JrVb7LVEuMSxovw5aolBp7WgFb6IJ7MhkIj9oik8tOHc
         4JUr5HkNQdd6iJ8hEyf4bx148XVVCCHscP0qok2nI2fQXBuppMirb8AekfqjxVySxDpz
         gn2rXA9dD7B1Wgc1sREpIwuvw+Uslw5ddPi+U3k8G+j4l9g9NnIingfV+bh7xzdQgLz7
         8IvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775701161; x=1776305961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d9sCCw8oekUugQnNyjHlCrSrWbxrJ3dBnUZAbEDDODM=;
        b=nr9K0vBALQ9tXOjFJDzIv+iSuRXCV6DtNvvstyUVwCtLPB5GaEDkPp0AVStMggeAaw
         5hGAc+YrNsvgO7eTtGSgqVg4vLBXxc9faUZLeVbDgtDKNrC1hoW56y+60qk9UuEvW7HD
         7C/6u/Ve8VnTb1uW6vVZvMezvD177Ewexq0hM8u5rVCxRThgn4l7WmpHuPd6hG4lHO9S
         TxebjD6AhoXDN0OOMYA1Bbm6jgs5THplFQjF3mQpb3nMRYlO7Sd688gUgSQB0Jo3O5JC
         VXkomOjzthGyivjEEgtmhHzPgKXVlnmXfKgyoM0FaS4t7RyrXYHVqbqPSTCZ9nwbHDkS
         1xPg==
X-Forwarded-Encrypted: i=1; AJvYcCU/jCKhOa4NxNIS6KSjDtNrMix3UjCKBbY9AvOffGyilzkp/RwTt5HuSJebVc1CWelFiaPTk0NCMY4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzdSGUbfefoLtXMte7B3Vgo9N+RfIzBSlZ1pD/1RO+VE4gxiciE
	j8Mab4frRbxj7Xecr1ABny6QBVsrzQkheJ/BXIYoOaM7RzaVolfmDUqReqVi3dytXplN7PY3bzU
	FN2WI8SGxBnqOoGDmEFkQbFtbYRVxwhmVlP5C5Dd9bTNEfxuItQJwdA0/cp9CJVBPz1WF
X-Gm-Gg: AeBDievrj2M1tXxHo2u8h7gD75lq6FyKIfEAFRctjPQr94yrlU0sDKdpgQ9tBUVANov
	W/k0N5vRZ7IabZeevW5NmTFv1UfwyC81YXgJ/I8WGoxacDvOjPFmQYHmLlEw27HFileu3FLQwEJ
	TO4rge2mQA1D1yi06mzPVcDh7uEFVTQ6yXSF2/huCnpnumIerHjZjdvjC7to8iZHiy34SEder/d
	/T6Kza6vlpKJhu/oMapdLuT4vbTciRFZuPpl2Mp9lp513YcBamUk+4y9irnHYPUancrPMtjhhAj
	D2ysyqRqLpBMs6VD+NhE7WaLvb0u16A8GP0X8+HOQS0OuzKwyGAviX/j5Tiub7LWWp02kZsAWc9
	ZLeNTlv8b+04JMe6gr2KJv/Z/HY78oG5DxvjZwwAvug6hAtbmaunsxxW+r0mgdDdKYV8j
X-Received: by 2002:a05:7022:68aa:b0:124:9fd8:4ba9 with SMTP id a92af1059eb24-12bfb70bb28mr12174546c88.12.1775701161497;
        Wed, 08 Apr 2026 19:19:21 -0700 (PDT)
X-Received: by 2002:a05:7022:68aa:b0:124:9fd8:4ba9 with SMTP id a92af1059eb24-12bfb70bb28mr12174515c88.12.1775701160899;
        Wed, 08 Apr 2026 19:19:20 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12c07a8703esm18238907c88.8.2026.04.08.19.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2026 19:19:20 -0700 (PDT)
Date: Wed, 8 Apr 2026 19:19:18 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <adcMpisuyQPjAQCH@hu-qianyu-lv.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-1-ce0fc07f0e52@oss.qualcomm.com>
 <20260407161311.GA2666255-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260407161311.GA2666255-robh@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDAxOSBTYWx0ZWRfX3hXqi/7cILnj
 iWTrOCykHZ4MxZ1hXYemnQWwSx3OZtqDALIHVuh0yXuv7U/pijSh4SUp249x3Je2w3xdqRq7Vvk
 aRqq/nfHmfbPjMMSSn1NP2VHtIBshUxRQkIl9nlbShuKHSvRgNRqCmCcxJJjnEfE4qwiz5skiZF
 zkwzSsj1JNV/8ec9VM+IxcY605MiU3xPKWj8tGCA05cPrf9eQJV8h1lMBrwiGzJ5GQmWXtNkEy2
 YME20h7dyLDOPBgJZjFCBiMzk/mQjxsEmiT6aFdbUQfgrZiVQNbUxoc0bzwSebBLLm8s30b3eJj
 MnEaNaBMtE8ytTMmlCQfrRzSESGAPZJh/deq4fm4UCRqZA8eMieTpU6OKGLT8ykXNHVQ3ZSadSt
 s448psVkk4Dk57QZ5wDD1XFabqlTO8nnN96dfmuFblwFQS5vwijdoEkk3k7NCxZAjosItAmTOmM
 7z3XqHy99HC2FOCwBVw==
X-Authority-Analysis: v=2.4 cv=eKIjSnp1 c=1 sm=1 tr=0 ts=69d70caa cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=ltEoF5Qc1AA1ACRQjt8A:9 a=CjuIK1q_8ugA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: btn5auOIBEWrwD1qVOtdT2RTT-pU6S0U
X-Proofpoint-ORIG-GUID: btn5auOIBEWrwD1qVOtdT2RTT-pU6S0U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-08_07,2026-04-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 spamscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_191925_005411_46D66AAD 
X-CRM114-Status: GOOD (  25.29  )
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

On Tue, Apr 07, 2026 at 11:13:11AM -0500, Rob Herring wrote:
> On Mon, Mar 23, 2026 at 12:15:28AM -0700, Qiang Yu wrote:
> > The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> > 
> > 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
> >    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> > 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
> >    follower to form a single 8-lane PCIe Gen5 interface
> > 
> > In bifurcation mode, the hardware design requires controlling additional
> > resources beyond the standard pcie3a PHY configuration:
> > 
> > - pcie3b's aux_clk (phy_b_aux)
> > - pcie3b's phy_gdsc power domain
> > - pcie3b's bcr/nocsr reset
> > 
> > Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> > 8-lane bifurcation configuration.
> > 
> > The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> > requiring the clock-names enum to be extended to support both
> > [phy_b_aux, pipediv2] options at index 5. This follows the existing
> > pattern used for [rchng, refgen] clocks at index 3.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> >  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 45 ++++++++++++++++++----
> >  1 file changed, 37 insertions(+), 8 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..25717bc9be98824e38f3c27c3299fbd1f2e7e299 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > @@ -18,6 +18,7 @@ properties:
> >      enum:
> >        - qcom,glymur-qmp-gen4x2-pcie-phy
> >        - qcom,glymur-qmp-gen5x4-pcie-phy
> > +      - qcom,glymur-qmp-gen5x8-pcie-phy
> >        - qcom,kaanapali-qmp-gen3x2-pcie-phy
> >        - qcom,qcs615-qmp-gen3x1-pcie-phy
> >        - qcom,qcs8300-qmp-gen4x2-pcie-phy
> > @@ -68,20 +69,23 @@ properties:
> >        - const: ref
> >        - enum: [rchng, refgen]
> >        - const: pipe
> > -      - const: pipediv2
> > +      - enum: [phy_b_aux, pipediv2]
> >  
> >    power-domains:
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 2
> 
> Once there is more than 1, you have to define the order and what each 
> one is for.
>

Okay, will add - description for each power-domains.

> >  
> >    resets:
> >      minItems: 1
> > -    maxItems: 2
> > +    maxItems: 4
> >  
> >    reset-names:
> >      minItems: 1
> >      items:
> >        - const: phy
> >        - const: phy_nocsr
> > +      - const: phy_b
> > +      - const: phy_b_nocsr
> >  
> >    vdda-phy-supply: true
> >  
> > @@ -183,6 +187,7 @@ allOf:
> >              enum:
> >                - qcom,glymur-qmp-gen4x2-pcie-phy
> >                - qcom,glymur-qmp-gen5x4-pcie-phy
> > +              - qcom,glymur-qmp-gen5x8-pcie-phy
> >                - qcom,qcs8300-qmp-gen4x2-pcie-phy
> >                - qcom,sa8775p-qmp-gen4x2-pcie-phy
> >                - qcom,sa8775p-qmp-gen4x4-pcie-phy
> > @@ -201,6 +206,17 @@ allOf:
> >          clock-names:
> >            minItems: 6
> >  
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,glymur-qmp-gen5x8-pcie-phy
> > +    then:
> > +      properties:
> > +        power-domains:
> > +          minItems: 2
> 
> else:
>   maxItems: 1
>

Will add this.

- Qiang Yu
> > +
> >    - if:
> >        properties:
> >          compatible:
> > @@ -223,11 +239,24 @@ allOf:
> >          reset-names:
> >            minItems: 2
> >      else:
> > -      properties:
> > -        resets:
> > -          maxItems: 1
> > -        reset-names:
> > -          maxItems: 1
> > +      if:
> > +        properties:
> > +          compatible:
> > +            contains:
> > +              enum:
> > +                - qcom,glymur-qmp-gen5x8-pcie-phy
> > +      then:
> > +        properties:
> > +          resets:
> > +            minItems: 4
> > +          reset-names:
> > +            minItems: 4
> > +      else:
> > +        properties:
> > +          resets:
> > +            maxItems: 1
> > +          reset-names:
> > +            maxItems: 1
> >  
> >    - if:
> >        properties:
> > 
> > -- 
> > 2.34.1
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
