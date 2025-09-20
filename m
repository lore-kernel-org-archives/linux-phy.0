Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F1F6CAC5A7
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPhBLl0yOhVuDpD3KH9oVqPrqhodlgS9JL9bQfuMo+E=; b=t9FiG8U3ChSETN
	qJKmL6kh1kXnmwTqpeYX4WSLRjl4yE6G5bdp5tt9WmGz5miUFn0XqR9rMzT67w6SSB2WoKtv+SlYV
	MEPEIZnVbTNbERn4WoXJPSn3MNVw14GwvLEtIcG/WM+7EqHfudTNdf4X71obTR0L/yBHFu+4JHKaH
	ddDiGYTST9u5Vpv4cSx0xvr6V+MkPgEx0zaAe7UY07wJ5m1ObblP+2vDEkncUe7I6xxtHzt8ejmP3
	L/SPZraTKBYJ9rveT8qswOP4YpGhhKV39Q3bXzuIrWJ/mypRhfmzbjtzxdb4e02fgsW0D5I9VcbLm
	njIqt2UszBOPNQf6ssDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzLs-00000005Wjk-3D56;
	Sat, 20 Sep 2025 15:18:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzLq-00000005WjP-0tRt
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 15:18:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3KLsi006382
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:18:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SE/TzCpNn1lm56lGm5GusKtj
	RWl26G4v81+gPtsUGow=; b=Oyd0/K44/kEUNLbydKKISKTQ26NcU2d3YKxy8W8d
	nd6HHacXfLWHjmE+B+jIoUemAdbfxCtzRjezksu011wbgAp7X4xjeuf9K17+Awmy
	yKVJ09uRmvbKb6BcDdIpFgLQN9Ect7je82uYepVLQeESc4a3eEZVUygoJIJul/BC
	H8uy/BEVqKEdE01URkdgQbFJUPIDmOzQ1khBNatovKHTcbcecgJogYdfNYFZLEGS
	01dCffNXwFPggV4PU9PMgemk/G7cqaN5cbIg6ESVQ5+qhf0wju2YoAeTKUaprbh5
	F31ruOdSpjkGYutisy3pmUAF2VdHD5f4Bg5nATyouwd7nQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k988yb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:18:13 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78e30eaca8eso81605726d6.2
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 08:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758381492; x=1758986292;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SE/TzCpNn1lm56lGm5GusKtjRWl26G4v81+gPtsUGow=;
        b=f6opsPXs2w2ssWrVHkcjuBRkGbzDxSQBbXEwcbgRVozcrLmsScTiVGsE0VHed0bp66
         fE99qoAyJGvsj4NuqaNMMJThZGsOdc24RhSzIP2QeMzoBmx6ktt7HLapTS3iWtbcWIXt
         Z5IODlX+1Gcva+aIHGayXzbMUdWkOEy/JwJLSVy8shDz9onXSz6ht2+QZbwcvw+fMlCa
         BohuaUulAPCbgX3V6vDt2LaIG/696agq4RWVkWSBcYBstulcbpVas0ryxIT2xqwitAcE
         r3GDJRUlBW71l1OfpMD2uH3B/+Qq5wuLGteaqSPU3AgZyfb5wgLLPFbDW223o+qDsOXr
         UMkg==
X-Forwarded-Encrypted: i=1; AJvYcCWAyVna8vHuaNIFv3PFa3GtMcISvnTVdLZ+oDNJMbnDg3JNiGG9RsgLgyejjzqjB7teAgl8/4XPtx0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwVmYPoX7nW7/SvnKDUc3iP9sgPlcmsfeZVvEGJ+F8z9O05Ujx
	UhWJ9Qg8YvVDwvAK0tzoB8ED9/b7IiR/VgAFIMM7wj6PVQhfzdCJVF4bkf30T/ddKUPtcaIEK9L
	ifzEqj17JpY90ErLwJf52QDXoIBuIMYfolEWHGV1xVl/b8IH3GY5jL7Hdq0cT4hnY+fWm
X-Gm-Gg: ASbGncuvsasyd8/Idet29h6s4HFct8WRND324VIl5PNyniZqMPQIC2rlh5MGq2oNEwr
	SBigijFE498Yq9Uf5fSDS2yOpK0iOREeVDiZuEcqOFO0F0FKP41iAMGDKQTcgYbWsQr3L7DZX5M
	CypyBRMMiwrFpkp9CAmcHJicOywY7JZofkGE9vUusrNzc35QyKlTBkfJLQUUGHh+yUNWFLweOcJ
	aucnLTjRO4Pfde/aRY3IcQ/MHLNMm4xL/MVfRbTUwnN3SqUjQXINs5MVKp0EqyJRkVorF2eDuPT
	VJBXnVz+Z3XS8D37Rx8YuBcapIqO0wiFOrn+qmDMV9DwrLfC88g0zSwfVnQeZzXRN6nnfFkdNO4
	x7FH3+09cU38lvLO0yuzcauVoUYfl91TpfH1p3xWgvvxdHiIwdEuN
X-Received: by 2002:a05:6214:2628:b0:785:6e1b:f09c with SMTP id 6a1803df08f44-79914360a02mr61581206d6.20.1758381492226;
        Sat, 20 Sep 2025 08:18:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQmwINRFMEdLkNFG4kPMcSl8VW3EPEFYUe5j3w53Iw6eJvwSXX3a0dznM5FIuS3Bv41bI9dw==
X-Received: by 2002:a05:6214:2628:b0:785:6e1b:f09c with SMTP id 6a1803df08f44-79914360a02mr61581036d6.20.1758381491614;
        Sat, 20 Sep 2025 08:18:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a9f1419csm1982523e87.148.2025.09.20.08.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:18:10 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:18:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Glymur compatible
Message-ID: <nkkimxkdp3q3iiyv4ic6rxnwwedq5tnnn2zismqf4pdocvmono@xltxaqz6rb5q>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-2-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: jpegE-TMRKahG7HKUeQyvyFN3YsvLuak
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXyesBQPBdf0hp
 Wp4ufahidxKLXnjLz0kS2Ot+ntd7xqJXAAQuDHkleIW14kCONi5z6bQ/HbFu9dU6OgyJaJT6G9R
 Bg9lDBzGRFczYtaFngHZyaYNwvj2452l+s2iGyLPdbAm2LU4iMhDd3txBOByy8XlIBnoZ0PSGou
 bcegOTt9nEavQFApEwiWZf6kPpV96ApdcYm5CFTDoRs1IvPPtg0G39kkbP5v5PEzO1b90LL0O3o
 8KtTiKrDrcc4z8j/xppH5Q8Im0QdzGcgbcKPkfJtAi/MNb29ujtQMC+bFjd0fy11o+gTcnBNSml
 AHr5r1oWrq3ZA53lSF1C9I/UE+FZIki5qFjbVGhVfTtCbp14HnK7IGLjoctb+WBBIZCBh/bXMwE
 4Ax9xM0B
X-Proofpoint-ORIG-GUID: jpegE-TMRKahG7HKUeQyvyFN3YsvLuak
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68cec5b5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=gizSWZE1I5L8aEIMteoA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_081814_373368_4B46B240 
X-CRM114-Status: GOOD (  18.52  )
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

On Fri, Sep 19, 2025 at 08:21:00PM -0700, Wesley Cheng wrote:
> Define a Glymur compatible string for the QMP PHY combo driver, along with
> resource requirements.  Add a different identifier for the primary QMP PHY
> instance as it does not require a clkref entry.

Are register programming the same for both of them or not? If it's the
same, it might be not necessary to have different compatibles.

> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 45 ++++++++++++-------
>  1 file changed, 28 insertions(+), 17 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 38ce04c35d94..e0b10725a1c5 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -15,22 +15,28 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,sar2130p-qmp-usb3-dp-phy
> -      - qcom,sc7180-qmp-usb3-dp-phy
> -      - qcom,sc7280-qmp-usb3-dp-phy
> -      - qcom,sc8180x-qmp-usb3-dp-phy
> -      - qcom,sc8280xp-qmp-usb43dp-phy
> -      - qcom,sdm845-qmp-usb3-dp-phy
> -      - qcom,sm6350-qmp-usb3-dp-phy
> -      - qcom,sm8150-qmp-usb3-dp-phy
> -      - qcom,sm8250-qmp-usb3-dp-phy
> -      - qcom,sm8350-qmp-usb3-dp-phy
> -      - qcom,sm8450-qmp-usb3-dp-phy
> -      - qcom,sm8550-qmp-usb3-dp-phy
> -      - qcom,sm8650-qmp-usb3-dp-phy
> -      - qcom,sm8750-qmp-usb3-dp-phy
> -      - qcom,x1e80100-qmp-usb3-dp-phy
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,glymur-qmp-usb3-prim-dp-phy
> +          - const: qcom,glymur-qmp-usb3-dp-phy
> +      - enum:
> +          - qcom,glymur-qmp-usb3-dp-phy
> +          - qcom,sar2130p-qmp-usb3-dp-phy
> +          - qcom,sc7180-qmp-usb3-dp-phy
> +          - qcom,sc7280-qmp-usb3-dp-phy
> +          - qcom,sc8180x-qmp-usb3-dp-phy
> +          - qcom,sc8280xp-qmp-usb43dp-phy
> +          - qcom,sdm845-qmp-usb3-dp-phy
> +          - qcom,sm6350-qmp-usb3-dp-phy
> +          - qcom,sm8150-qmp-usb3-dp-phy
> +          - qcom,sm8250-qmp-usb3-dp-phy
> +          - qcom,sm8350-qmp-usb3-dp-phy
> +          - qcom,sm8450-qmp-usb3-dp-phy
> +          - qcom,sm8550-qmp-usb3-dp-phy
> +          - qcom,sm8650-qmp-usb3-dp-phy
> +          - qcom,sm8750-qmp-usb3-dp-phy
> +          - qcom,x1e80100-qmp-usb3-dp-phy
>  
>    reg:
>      maxItems: 1
> @@ -46,7 +52,7 @@ properties:
>        - const: ref
>        - const: com_aux
>        - const: usb3_pipe
> -      - const: cfg_ahb
> +      - enum: [cfg_ahb, clkref]
>  
>    power-domains:
>      maxItems: 1
> @@ -63,6 +69,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true
> +
>    "#clock-cells":
>      const: 1
>      description:
> @@ -110,6 +118,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
>              - qcom,sc7180-qmp-usb3-dp-phy
>              - qcom,sdm845-qmp-usb3-dp-phy
>      then:
> @@ -129,6 +138,8 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
> +            - qcom,glymur-qmp-usb3-prim-dp-phy
>              - qcom,sar2130p-qmp-usb3-dp-phy
>              - qcom,sc8280xp-qmp-usb43dp-phy
>              - qcom,sm6350-qmp-usb3-dp-phy
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
