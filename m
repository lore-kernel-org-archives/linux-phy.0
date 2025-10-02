Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE735CAC5BB
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 00:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SVT+8qThLft2h7mNw40T5PtJBXMhiGV6lEzFVHgDCQ=; b=EXhVoj/zNPHoWN
	5X1oB5k3w0tMcLHoBJR2CcM3j+xyXbeH51iwDiBOC9chHW4TgVxi9rFoS7mGF6KpoVd233StI3z5/
	qNQTLvMWw9D/2Ada6R3qbT5IVIECk/sbGLpUi5B+C5zzboQoTUist/NzIcKQBsxyEDSEE2rxDVacr
	iY1V+8pJYLFnq/Cuk9PPYuDukfcUO7Uk+PGOVDmQIh8hHqwnKNadYc3cbZkb8wP0HMbWq8HK45DTf
	x5GDPwbqXPgtLW/xCAyxIkYDXZRvVpw6KcbctBXrKbuXXp/ZZX61Ngyv5yx7ahnfqZKdOROe6tkM8
	iERUdDpUyZJE8uLv0/Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v47c5-00000009LKk-0vP4;
	Thu, 02 Oct 2025 00:56:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v47c2-00000009LKO-2F78
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 00:56:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcSqn024148
	for <linux-phy@lists.infradead.org>; Thu, 2 Oct 2025 00:56:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8PzQc+BmJiwVOLFHqrykB34m
	n5pDbaOYFIBrZaxzwsU=; b=I2tOQqxHbLH3mAXAEts/d7DiOVYDuGA82QegSdLf
	vAZ4A+rYVfab/A9wCZ8Dv/yYgp7fkMtxOBmJMzEhTw+qrNjG35UVaL9oEWe6wLHT
	G2VXD8qx8L6vRfY9iz1q7/XtJvNN34W5yJUBsgpjcFX6uNVUc01lWv5SU6EhZM4H
	4NpqV4smMyCJdmLWwo0lwzTajvaonYJ4psS7gc1DXzFE+SlN9ZXGP9Y6ngM/eGME
	2fSZGnXo6BgR2I2QgBZsXkqR2I5x7Q70cxb8Wi5LgcxbUNaxwM8GdL2MdQdBd5EL
	LDGaWXTHQEO0JS8sB2jbzDP63Xin008qIii2EfXZ/v1R4A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a66agn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Oct 2025 00:56:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d77ae03937so13227581cf.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 17:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759366560; x=1759971360;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8PzQc+BmJiwVOLFHqrykB34mn5pDbaOYFIBrZaxzwsU=;
        b=B4xUg4ygQFvYGDmKbGcc4wEmoFoKhabil+iI9FrGGiu8XiwKoYvZOciIqoXoTO5JUN
         g3gWp/kbIHRMgxJSDU0Wv0SkT1YXoti6L8AULXqovRZJshWHZp7zx1rrkIXIZ/HWEHAd
         4phoksYUaxWUDB7G84WQrEOyTZUTEtkPmtMgn7wOaiCidQ6TFOFVAr8ZKWfstNy8OPaL
         s4VM8xghEz9llv7+Oli9uXkUtEycLHXymndIiFT6A1Ze1QALzulbnQ2RmovdbfuDyA1v
         RZJnTcrDLreQBf84OqZ0IxKvksCOfbU1wBGMyjml+9E1DWLXfrDQ5xRa0QSRYfyWd2y6
         na3g==
X-Forwarded-Encrypted: i=1; AJvYcCWwybjDiYNi4n5G0igZT0L0rf20hEaeFmi6bRakVuUG5o5oI3i3039RT79CxEddSairg5AHg87WSFk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwMFGp41QoIDTAIUwOZl7B6uqAw9E5UkFnTQ8HOAY0f9h7rz0yF
	MXXgOihi25RUZob90eYpWtKDIxKI9jTsTRmc/0FWCJMfB+hF0+nFO5u/9IzRLoQCOEkFyK0rvRZ
	/HtDdl6D7FdlCYMfHgr5IsGLZBrrmq0SGxKROcmw+b01Whtp3XxCe463yLUL00a8F1IvK
X-Gm-Gg: ASbGncsBSSJgj7yhet9afIKVxDuZtzssqhw4D9KM8qSTWQzK+YULBtgYu8uSxmLpm5c
	LeAaKgfII+7clgtAdcVWrKuq2982MUNf29NfdCSHi3UKp6QzYT1XW2cAucjmqjt3FxOmauLw5Go
	I7V/d8FGJn5CkTWpkkkkvqKWh+0sfT70w3jhWt4ljtF93Eu7PBPhXP5Y682e7cEi2MlDma1zhQc
	lt6AK123kj2e20HjmUNnMBtoP0DWCSdi4TjzWmjmbFCHfv9kpB1uysx/rLZfBl+eKwBhZiftsSb
	/S1Cqqx20F0ZMIKfRBbij1Jf+4dXbiD3yKXHef3CTSUmwgLG0UNCKRQoH+rPe2/nOD7vqzPrTx5
	R1EddVc2LmS9sjoX1BGmseFG17PKscldjGhX9e7r1TQQb2/IQdfme4EimIA==
X-Received: by 2002:a05:622a:5518:b0:4dc:4828:b7a6 with SMTP id d75a77b69052e-4e41e5416famr78963271cf.59.1759366560006;
        Wed, 01 Oct 2025 17:56:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtplyOrthJ4uP+eWCWIt60T2cvFyskp9IejhadjkX5IEu1X/U3y4cM2LWQ0k7UzPqTkzQ8qg==
X-Received: by 2002:a05:622a:5518:b0:4dc:4828:b7a6 with SMTP id d75a77b69052e-4e41e5416famr78962981cf.59.1759366559465;
        Wed, 01 Oct 2025 17:55:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba4a6015sm2742211fa.45.2025.10.01.17.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 17:55:57 -0700 (PDT)
Date: Thu, 2 Oct 2025 03:55:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 01/10] dt-bindings: phy:
 qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Message-ID: <tblxljq2wmbbb3cpzv3xd7koc6j224ts3kd5mhx7hgpatenond@dqu3gunfocu2>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
 <20251001220534.3166401-2-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251001220534.3166401-2-wesley.cheng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68ddcda0 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=poLWbaA-Eiv7kSeqQ60A:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: r85g0ghUSGcI9h-ROhKGaPcvD-HlZcwV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX2qo4JHwloKWM
 raXrclHt55opQq8H+9W+4JWxXmCdfcWmSM0wmjk0EmjDA3S0D5R+iQYmC82zeYs4e4i4e/UZozb
 Bbkw/QzJJUAFPBAbhRuEZrAQWsnwQ4936X7MXRa9DyFW7fjrxGAdLcKpT1wsg6ctKM87nR3BH0M
 Y04GZUuPaeXBHTna4vyWkSAn8DSDEUChc06YnaVionwMb3an3SEFzn4Wnf7XAGsVXX2V/oJm91m
 MSp2/Jr3Gn3jsrNyGe1RMuyLRpQR5YuN3nj4p4QM9QQFYZBB8V9sDTrLAtvPjR5vhToFndtdFiu
 EL9TgK96GTT24DcZPLlDHI60IRtjUw5ad2yN2gSF1JGrKCcJUcTtrlgeO+oVRVqgTepDFOflbIr
 yWb5azs2xnONgGufv22zj99roZsIGw==
X-Proofpoint-ORIG-GUID: r85g0ghUSGcI9h-ROhKGaPcvD-HlZcwV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_07,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_175602_695237_06EBCEEE 
X-CRM114-Status: GOOD (  18.72  )
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

On Wed, Oct 01, 2025 at 03:05:25PM -0700, Wesley Cheng wrote:
> Define a Glymur compatible string for the QMP PHY combo driver, along with
> resource requirements.  This adds a new requirement for a clkref clock-name
> for each QMP PHY.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 76 +++++++++++++++----
>  1 file changed, 63 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b..377d830f0855 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,glymur-qmp-usb3-dp-phy
>        - qcom,sar2130p-qmp-usb3-dp-phy
>        - qcom,sc7180-qmp-usb3-dp-phy
>        - qcom,sc7280-qmp-usb3-dp-phy
> @@ -41,12 +42,7 @@ properties:
>  
>    clock-names:
>      minItems: 4
> -    items:
> -      - const: aux
> -      - const: ref
> -      - const: com_aux
> -      - const: usb3_pipe
> -      - const: cfg_ahb
> +    maxItems: 5
>  
>    power-domains:
>      maxItems: 1
> @@ -63,6 +59,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true
> +
>    "#clock-cells":
>      const: 1
>      description:
> @@ -105,6 +103,22 @@ required:
>  
>  allOf:
>    - $ref: /schemas/usb/usb-switch.yaml#
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
> +    then:
> +      properties:

Missing constraint for clocks.

> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: usb3_pipe
> +            - const: clkref
> +
>    - if:
>        properties:
>          compatible:
> @@ -113,21 +127,45 @@ allOf:
>              - qcom,sdm845-qmp-usb3-dp-phy
>      then:
>        properties:
> -        clocks:
> -          maxItems: 5

No, you can't remove this. clock-names doens't provide constraints (or
description) of the clocks property.

>          clock-names:
> -          maxItems: 5
> -    else:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: usb3_pipe
> +            - const: cfg_ahb
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,sar2130p-qmp-usb3-dp-phy
> +            - qcom,sc7280-qmp-usb3-dp-phy
> +            - qcom,sc8180x-qmp-usb3-dp-phy
> +            - qcom,sc8280xp-qmp-usb43dp-phy
> +            - qcom,sm6350-qmp-usb3-dp-phy
> +            - qcom,sm8150-qmp-usb3-dp-phy
> +            - qcom,sm8250-qmp-usb3-dp-phy
> +            - qcom,sm8350-qmp-usb3-dp-phy
> +            - qcom,sm8450-qmp-usb3-dp-phy
> +            - qcom,sm8550-qmp-usb3-dp-phy
> +            - qcom,sm8650-qmp-usb3-dp-phy
> +            - qcom,sm8750-qmp-usb3-dp-phy
> +            - qcom,x1e80100-qmp-usb3-dp-phy
> +    then:
>        properties:
> -        clocks:
> -          maxItems: 4

Same here.

>          clock-names:
> -          maxItems: 4
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: usb3_pipe
>  
>    - if:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
>              - qcom,sar2130p-qmp-usb3-dp-phy
>              - qcom,sc8280xp-qmp-usb43dp-phy
>              - qcom,sm6350-qmp-usb3-dp-phy
> @@ -142,6 +180,18 @@ allOf:
>        properties:
>          power-domains: false
>  
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
> +    then:
> +      required:
> +        - refgen-supply
> +    else:
> +      properties:
> +        refgen-supply: false
> +
>  additionalProperties: false
>  
>  examples:
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
