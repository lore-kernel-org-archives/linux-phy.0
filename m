Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FD0CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KO0s3CQ/LFou1SoPwkCdzdyhpXekL/VcwkXLCn0Hfk=; b=V3FYJA4C8E4WcO
	6S4Rgiyz32zSFAOQEDU2Z+lAVyITkOPVe0Xi3zMAZFogDA3/4xniHuwg/wOWvPm6DQKa8oUcGV79b
	lq34Uw1/IN+3fYsKtcYdAE0HVJd5+EZSF2ddI05Fc5ujBJ8KC6VkYgSW7SKLO5ovDetulZO0M9q8P
	pOMOhr8Jjp0yXEzmO23V8xWAoNtlGvlgKFmxzlR9PnUlpxar+Ga4p8+CNJzkEn05W6ihGG+1wf72M
	y1Kw86EaoD9M87QOxPGJ1TximmIXoVV067kr4jcFLFdteANrZRaeZlh/UZs1o3Z2uzZtPN5aplQ4V
	6Dd2ZE0AW6OkaMZGI0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1c3n-00000005LtT-3WHC;
	Thu, 25 Sep 2025 02:50:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1c3l-00000005Lt4-1FsR
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:50:18 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0UaKZ028188
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:50:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aTjhOlbDGoi+nAgLRYqCc7oF
	FUvkDZHGjtvCYSikgJs=; b=NFlkY+kvk3DkDeJ7Kp3u9alaExlaj2NbPl3K9MBJ
	2DPcQdzpC3hz/nrnlDpVGZR3TKu8Rva1p1XF4vWWgAOg6FoQ0m93KAECNBzqkUny
	kH/ayuWVl+CuvnS6ryJN2hvPciWNTbqXGBGbWDuaYcQDcI2i/65PLDIe7uebt8P1
	Lt1SAmHgrgOun/CEGG9rvjIhchuUZzobq6NQQYvdpvPA/AX0qMeH3ODj/COT08yg
	+4z3VLEFTOmPn2dHvbsIcviJabAiB75kQNa5HBNYKw+25vcGcaIFPKs+AAZmQT3U
	jY0IbAl9FD5WiqHZ7lMdQGxxGVVWDAqyPg0hBjxe2rwGlQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxukr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:50:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-81ea2cb6f13so118717185a.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:50:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768615; x=1759373415;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aTjhOlbDGoi+nAgLRYqCc7oFFUvkDZHGjtvCYSikgJs=;
        b=aGsUuWgDoRmDIAFs4sNLYZGw0mU9bTF5i+7LME5KMH/4uALzgWn5u16vmOU4dtmXjB
         FJgcssZbYInUQCwU+Wtnw59SwbykMcU0eETK99T9D5jYFaHlyfmdjqEik4gGz4K6+MHi
         F2PpnryT/2ZtaWlvmNYV7MPGIEyo0DQ1z9unFLOcADQB/zgI5dppFM8FIMe8rH2qgE2+
         XCX+z1wqYdK/DoOoW6ChXcqPl1FR5ZP+2JpJZup0wU+2Oqzqu5yZRtTLf16zQMDKy297
         vETtMyMPXbRFIXBKcfSyMvs17VkU7NklzhIv6wokhO9KUWvBzLxQ9dZ4cjf0urNXqW4m
         epAw==
X-Forwarded-Encrypted: i=1; AJvYcCU0D/5Et7YqImMhhQx7YZf8e0QVM0m9TpB0HYX3SO2LviVjTRNB6AZu0EBhltuOm9oEZgY1yak1T+A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzg5e5657u/xA2raD1Hc4gtWwGEvqTzhUXKNA0Cawgif5JFAjNN
	bIDF5w9Joiw1ZGy9lT3f89rxKK3lQxL+17P2J3cI3qBfDRL6bbN1mBZoHunhcaxHrs3SorI2TPP
	djOep6UlcfC3r9OvHbzH0wnwcj1FyQPvzOQCJKiFLThQG0tEftLrTNEumleGnaP/vNbQF
X-Gm-Gg: ASbGncvTymAy5v7h7LTIc9DcxNNhxWh3IYBUo/EYDcR7fBRgmBpznzRIqbWn9G2RYnV
	dmRIt38/Tgg7VUdwT7uiAkvo/RSNF+WIKoudf/1uVThqdUISiRfBhwRZaPFHvTk4AFz729d1WUF
	ZkPY13YV/n4W+BDCDFZnICjOuKK5yfME3bg1lhpbOm0/Rq8HmXzoHMslG5++HQ5vWhm7cL+EHCi
	VUPFE7qAj/Rh4v+rDZ44csxZHOo2v92EKA+kdVv+H25oIjfGSVnFtxDMgFDG5lzTeTVgH/7WKx6
	pAcJ4jyrRFG7Bpr9MJLF+iMQn8aDay8SgfQAJunQczMfp84EGavxUsb8DxmIqj1+3nnsvMtZrGC
	n2IRrX2xtKKKJ4kH1F8UGvvy6+NudRLimJRPDhK3gifLTTJ0vmbli
X-Received: by 2002:a05:622a:11c8:b0:4b6:373c:f81c with SMTP id d75a77b69052e-4da485b86bemr25522241cf.30.1758768615423;
        Wed, 24 Sep 2025 19:50:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPCPAHGHm02oKWm0hULewn+TOHb7/Ic6Ao7ghcD4in2rWcF+r1bHJkHP7fu0DzmGPlkvE71Q==
X-Received: by 2002:a05:622a:11c8:b0:4b6:373c:f81c with SMTP id d75a77b69052e-4da485b86bemr25522081cf.30.1758768614887;
        Wed, 24 Sep 2025 19:50:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139047d1sm260416e87.34.2025.09.24.19.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:50:14 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:50:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 01/10] dt-bindings: phy:
 qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Message-ID: <fuq4wzdsvfxromlezvt645wrjynv6onolv6kfvehwl2n3neezr@gdfbmfzkljwv>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-2-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250925022850.4133013-2-wesley.cheng@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d4ade8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=FDav0VyUyA2TYFF6ppcA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: p614ug_AVOXCEBgfDT1471ZwOHIdfz1N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfXz5EGu5tD+EYz
 Dy2744nedUBa+n/1m026YCX2llCrlxYO2S8eMvFOR26wqzro0z6R3ETshH8ikzudX2nU1wNP7no
 EyWJ8q8fDvLxbjkkcccLJzHCLDj6W1RQDCGdTEe2rMjt2hZsy0RWYdPyxqgU3xsTEji88X05xti
 va0RHiIV3/UzbggyH8FVEebkFd0qKHFSyfOWObCrUpukhTYeHN0J/qAdpTgPwj7x+Yt+qOwb9pG
 GAc/g1FMklcVcKLV8Sj87IY1vi6FFl0axRs0VWDMFsqWBsRIIAT83YI5ZI3azttRu85M/w+l5S9
 R5w4S2BFZ+Ml0XI1aZjsH2sWl2r7WyxmDk6ntrICoTPOd9iL2z8Gbat1J6GMK8igzv3dWJvf27c
 SRmyh3YH
X-Proofpoint-GUID: p614ug_AVOXCEBgfDT1471ZwOHIdfz1N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_195017_461715_1548F157 
X-CRM114-Status: GOOD (  20.56  )
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

On Wed, Sep 24, 2025 at 07:28:41PM -0700, Wesley Cheng wrote:
> Define a Glymur compatible string for the QMP PHY combo driver, along with
> resource requirements.  Add a different identifier for the primary QMP PHY
> instance as it does not require a clkref entry.

This is no longer true

> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b..2f1f41b64bbd 100644
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
> @@ -46,7 +47,7 @@ properties:
>        - const: ref
>        - const: com_aux
>        - const: usb3_pipe
> -      - const: cfg_ahb
> +      - enum: [cfg_ahb, clkref]

Either define it using the if/else or split glymur to a new schema file.
Such enum allows specifying clkref clock for all the platforms defined
by these bindings.

>  
>    power-domains:
>      maxItems: 1
> @@ -63,6 +64,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  refgen-supply: true
> +
>    "#clock-cells":
>      const: 1
>      description:
> @@ -109,6 +112,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
>              - qcom,sc7180-qmp-usb3-dp-phy
>              - qcom,sdm845-qmp-usb3-dp-phy
>      then:
> @@ -128,6 +132,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,glymur-qmp-usb3-dp-phy
>              - qcom,sar2130p-qmp-usb3-dp-phy
>              - qcom,sc8280xp-qmp-usb43dp-phy
>              - qcom,sm6350-qmp-usb3-dp-phy
> @@ -142,6 +147,18 @@ allOf:
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

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
