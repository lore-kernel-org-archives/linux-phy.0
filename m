Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A60CAC5A7
	for <linux-phy@archiver.kernel.org>; Sat, 20 Sep 2025 15:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dndaHUPseXaj50TtkqV8BjeDwTzCk6DHea9v3hykrcw=; b=DVy0BT9713w2zR
	Rvngs9flbEMZ3Dw5zXeu6zTrhuBVJ22hjhW0i1wzTXV5Il1akH6s50S4Slz0/nVCun7hnYOIwBnbM
	7RRvReHt59ogOAxmsq9y0q7+rg0gmCbtwU6rxLHrRtUDEKT8nyssC0FD5Tz+d8Ele4UK9g0T+461G
	4Jlq8eTaKMPA/071Y2Bxi/MDMqDOLsUF/JIFW0OxRglhmpYC8g957x0Ogh1JjZuF6Pk87viFViKzF
	tkC+mVdfp1C7yszuQjdGRIkhJnoh2QwsJ9his1bLy9pkfoNE3Y95GnVgSyRaUlGYdIHaiaGlMMoLN
	xBAB7dIveBiLjdb22pmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzQD-00000005X3j-2O4K;
	Sat, 20 Sep 2025 15:22:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzzQA-00000005X3M-3JZ5
	for linux-phy@lists.infradead.org;
	Sat, 20 Sep 2025 15:22:44 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K4m7Qt015883
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:22:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qMvP8F7p/iDOTofUgdqZ4hYV
	jRyQ8rzwo1S3mGKqewI=; b=EHdi39/sRKMF5YFMprLKbxk2PLKoxfCXgK62NOBa
	lh3Dsw0MKcrUKng/QZ5fVT7lNhoFNhMC0mQUN5TSCmf3VM8+MfO3aAUVR6dGDJAp
	+jnND8JM0Yru8ZOCmeI8PyeXU2t8tdjskYPeQUWDsigwwIEVqvml1xzaRZX2RcTB
	oK9WskshuZpjyOQoD1FZUO9H9T6u5Bmd3W149CO7J99/IJyoQYhg9VBk+OHhIRKz
	EdF0r6z3DHdnfQ9pIMPiMyGENsHIb2Gu0mxABEEi88zkOkrgJcpbuHSBipC+C0qp
	qXJbcpCYR4CCG0V/a1bYECWjegISWElZUf6V6tev6zKuMg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499nj8rrpj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 15:22:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78e5b6f1296so62904176d6.2
        for <linux-phy@lists.infradead.org>; Sat, 20 Sep 2025 08:22:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758381761; x=1758986561;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMvP8F7p/iDOTofUgdqZ4hYVjRyQ8rzwo1S3mGKqewI=;
        b=bAC6qiETLEUye47aC5MgPk0UvbjiO9Bkz97+jZ4/SlMChqTiJQliJFhUwVqJmgLvnB
         kxnD45fqyJcKccH+YRbK0wcY7yAupehd5RuvUSNeQ/tuWt6e0OzzIPxrh7l6X2gur80N
         Pd86n6mWuMqipWZG4auAAmmLzRN8Oq10uko2Ciz+5lzW8OjcZ8ttvL7uGwNFjjk4E1v+
         j0hrNN1X0WaMROuYO9MN4yn+7UgIlBvz5WBcAYN7g3EfPDqLyVLnZWR8fbJmoggDBiXB
         /PvkKD7Qkn4vCBCms6ou5I1Y3unNULLoXjFww+sxLdlCdcTQq6Oz2sC94JDNuJ+J7sal
         XrtA==
X-Forwarded-Encrypted: i=1; AJvYcCUrpNv/k4rIwxVGUXPsH7zjiwPDHUpbfG6Brmkj6CuVOVM9P63PussCvlT77hlPDo7/NUKukUzMJ6w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0f4gxSTgtpPrlo071tXJFBCA4KSSjk2vCB9YtvCDgJr0wt9yA
	T7Lgpxw8oVHwyeZjCCfOf4m/ZRpex+MQD3rcF4qZhEt/vNIaSWaagkP2bNMD+yQLsWm2HpTWaTN
	vVX84YXP6Ei17jXNIGl0qJVp+YfziRR1z9W5nXAMH+zYB761+mVDjA0491uoFWkeIf9k7
X-Gm-Gg: ASbGncuRKzY5DyLdwZbyLuTpoPOU571FNzg5rd4W3AUYQAUsl9NlLih7lKs9TdBk321
	M/DXeRIsJ2UA+JDERHESeMvwpQuoXqBjU7XWjFPEy/DH9UXKvoxXm27BKPF8BlwbCYge6JHJ/3m
	EOAQV39gAInwd/zUk+myqkYsXY/QaMsaL/B684gnFRAde/g7twwnZ/pnmFoy3YB7HqK6p1G/ACY
	VdTYvELUrvthiSzBzDaO+zUnakALRwN2BZbMuq+lEK71HGrtjmw2KgwNJiqSZQ9PWYxrJHU8c/o
	QaC4QMCO+TamF8DRxMxyKOG8zge63fxKCFulCuZ2a9vWncaL/NhCGNT0h/cJfcqEpqtiX4rCeEk
	uopHfwXycKpL84VmETD77M6emeGH4SS3ngj8WSPtM8q6/M4iUKUg5
X-Received: by 2002:a05:6214:f01:b0:793:1b9b:4a9d with SMTP id 6a1803df08f44-7991c5f520fmr84609216d6.49.1758381760614;
        Sat, 20 Sep 2025 08:22:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWlAgM3pnMSdAw/Rq7z1YnN1kZKJ5qD9fwFMBKD5LFNPD+tDGwMgQD4d59xA4K90UQvVcnrQ==
X-Received: by 2002:a05:6214:f01:b0:793:1b9b:4a9d with SMTP id 6a1803df08f44-7991c5f520fmr84608976d6.49.1758381760044;
        Sat, 20 Sep 2025 08:22:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a27c0242sm18259521fa.21.2025.09.20.08.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 08:22:37 -0700 (PDT)
Date: Sat, 20 Sep 2025 18:22:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI
 PHY compatible
Message-ID: <7gvp6pshp4eiugk3qodg2ub3azu365loturidbkxqly6nhtgq7@bxnkxeqzarkv>
References: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
 <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250920032108.242643-3-wesley.cheng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dZ6A3WXe c=1 sm=1 tr=0 ts=68cec6c2 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=IEiawqspG9gC1EAg6qAA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: bTuLm6962G1y6pAUTO9xZ9169Q1nCVk7
X-Proofpoint-GUID: bTuLm6962G1y6pAUTO9xZ9169Q1nCVk7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MyBTYWx0ZWRfX7BYRH6Tam2oK
 DFqOMuYybl2nxqH57fF0xC1EH9jKAFQvqVSgMZJczIszZaGRvBJaCQ8YIo2w6wWtA0jktBtuDwB
 fC7WI+vupHCG7RYg0sUiNFCtV7p6/KUHBI59e/D1MTTLC3Kp3Y588OPGJUCqhWGsPDLC6ifLOu7
 c28MxapiQqS/cubk+uym0bZaLz9+Gw6kCsGxbxy2Zr/k81X8fJER9Bnm0hxg+EhnDn3d0mbQguo
 Vu4AOEn+h9SB/Svn/p375v5/prZknTK6WGs41XgguO96g4pnEwaDRcWMT82BRMfMPYHth80VLyS
 9s8ZTAJ8p4quBUpajJYdDZA3Ue2XlckaEZZD+gyx3/kMm5wfTG51aXpUzAbk34CegjD6KqqGsms
 NnEC7jHq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_06,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250920_082242_832937_E83502AB 
X-CRM114-Status: GOOD (  20.28  )
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

On Fri, Sep 19, 2025 at 08:21:01PM -0700, Wesley Cheng wrote:
> The Glymur USB subsystem contains a multiport controller, which utilizes
> two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml       | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index a1b55168e050..772a727a5462 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,glymur-qmp-usb3-uni-phy
>        - qcom,ipq5424-qmp-usb3-phy
>        - qcom,ipq6018-qmp-usb3-phy
>        - qcom,ipq8074-qmp-usb3-phy
> @@ -62,6 +63,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true

You've added it, but it's not referenced as required. Why is it so?

> +
>    "#clock-cells":
>      const: 0
>  
> @@ -139,6 +142,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,glymur-qmp-usb3-uni-phy
>                - qcom,sdm845-qmp-usb3-uni-phy
>      then:
>        properties:
> @@ -147,7 +151,7 @@ allOf:
>          clock-names:
>            items:
>              - const: aux
> -            - const: cfg_ahb
> +            - enum: [cfg_ahb, clkref]

Why is it being placed here? Please comment in the commit message.

>              - const: ref
>              - const: com_aux
>              - const: pipe
> @@ -157,6 +161,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,glymur-qmp-usb3-uni-phy
>                - qcom,sa8775p-qmp-usb3-uni-phy
>                - qcom,sc8180x-qmp-usb3-uni-phy
>                - qcom,sc8280xp-qmp-usb3-uni-phy
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
