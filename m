Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D519CA0FE1
	for <linux-phy@archiver.kernel.org>; Fri, 22 Aug 2025 21:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiIiWlNFn7jV+yzQLWCX12keapsB7OrTFhUoEdJ9FwU=; b=TQQdOdAfoJSr63
	aiCG5JELDudCvNOQYkkdM+Yoi1KUz9I6L7DLCQl1VMtTYUXx+KZ0KOMHQCrSdwJm2jTduh5sqDPUS
	Z5JS+VpyFB4OHJ74aUPVQX9Gw1RfsxIt2S3rn+Uh023m6uNabQbZaBPdeNUGStEffd6UU0YaYsDPY
	56/4LsQGyHkSCRiN90baquStFCmQr3BFcoG/CnOg297Cucxu/TnRiLaCO7FzbBfOVxg5eNnBDTdDK
	zxfUm6Eq+dPmDCeqPwp7++3nP1XnL70kK1a3NtltGmZrB3DdzW6fxrbaYE5EppR9pgW1PftafhXxv
	9zPRaxOglAPDvECDN0mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upZcW-00000003Ysi-3pmK;
	Fri, 22 Aug 2025 21:48:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upPSK-00000002G2G-1FfV
	for linux-phy@lists.infradead.org;
	Fri, 22 Aug 2025 10:57:14 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UTlU005824
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 10:57:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3UQrGVqjSSQmpliOJA4Xb1OO
	EwV8MQbwtqNERrXa4jA=; b=lAqfUhGaCj3cvEsrQ1qieqfNR4feDyAk0ZYKpHej
	n0rgynhAy/xBSToDOgjPUK+nIUF8LYGr9r9M34aInEyIiALxi8D6LRd+m5xXFWOw
	zEDsnwr8x7rUBH92hfCISqdP7wg4kqyUvt5t1hKP+LK2UjYuO3bGeRqoWCbyoN+i
	jWHpWhiNqTU38wZvKk+SJDH1eR6LIs6bid+jA2axGlLJ3hQ/zh3PV2sz9ciSwHXq
	4Pgnsf77VBlx1pHHHDMz6GE9EGzp+ER4w+0b7bzfdDLDq4i2wCtlzOYW3hlli3za
	ejQTZRl/kpDfzPSMKqUMef6ahfcqwboRFG8JKkKFXvbkqg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52drusj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 10:57:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e8704b4b01so475668085a.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Aug 2025 03:57:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755860230; x=1756465030;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UQrGVqjSSQmpliOJA4Xb1OOEwV8MQbwtqNERrXa4jA=;
        b=HTs43lMg/bT7bZkUhLdMWTYTd581ZoXS5ttCQq0ZYCQxPyNRUCnWbkmGVeHzluCIaH
         aFeGdhSSkxSkS2ZF4oEd44bLrUjyQwTm947QmEJZK6hDUMhJKqscujI/vPt6Cuzv1ykn
         xbrSXUMkXouKNohNZ+zrd3w4KR1LZaDPV7l1hWY+rRThW7MShgIT0QWvHCyYMF1dt7QC
         7j+HmLtSnyOSpuD8qfAhHJ2Y0ejItLDdN/8ixYbuivfwrSTlmu5oRqIGBSIlqquNaIfe
         jkuX8VjNfZ9dsknAKFx1YAXjpZi9RfyeyAyoDRbbY3GCsi/BAYH9fORRDkOyK160s7da
         jggg==
X-Forwarded-Encrypted: i=1; AJvYcCWnxzmIZlW6lmKiTWkgQC8UX30YDmF2mvAlwa72lJrimcZYG6pebNnoXawno0fBkx5Y3nbRrV9nkc0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJgxb3o9nqRm2Qw6BLZjEZKIHor+9X1olmEtOgYmZ7+Kzb6rws
	p8EIygEgRnYYCxK1ACZ5gOTO/O1V7iJy7+iTqubbyQowSbkAlXoi0q37iSKWIySVZGXcncpkl+R
	gdp3YR+dv7m0btLqfwxj+Olg/2EjF/IoRPFKCQybEbqZiYEcGyBTwfjHprLLU+HPYQ6Fp
X-Gm-Gg: ASbGncsvx5gNFMeE1sFWwcyE0vI7yRCoieqBbvjM5vKgtOgBZejMLYRS2p1ovDC5a1N
	rZWOD7LXmtWA5qMAxFGux6X55oF4O1U0ENqvkABb7sleXPlOwbJE3AI1Ra/8umll+aI5046cjcS
	Eycv5iR8iITFWhQcbVk4EoQSEQAfigFJ0RDmvtw2lZq8I2inalBRVCQ2/z8HmVtiOg4VSIhk2Il
	4EawIOFIl94lAhbpNjQG7fJyoaXog0Uqdc8SGsLV+nai3eTCdZDNnQFd6u9l6FvjqJdAN3Ds7fi
	N1vDbl6HvKLp1MLtOfTwvfe7DcWVAvHdvhsIO6jEa7+GrttusO70/ooBPNlbFpIihiyvc078QMw
	gRvhUR5u3hNs5ylXktXyD0tebN6DY9ZDblvaSwWeRUi1GcObn+f9b
X-Received: by 2002:a05:622a:ca:b0:4b2:8ac4:ef70 with SMTP id d75a77b69052e-4b2aab40c3amr29596641cf.83.1755860230201;
        Fri, 22 Aug 2025 03:57:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEuLWCCZnI5In7y4ErM2MToO2IgEg0s/ty1U+t0OKmjsrE3j0h7gWXUiKhn+W/Ngv68PUajSQ==
X-Received: by 2002:a05:622a:ca:b0:4b2:8ac4:ef70 with SMTP id d75a77b69052e-4b2aab40c3amr29596431cf.83.1755860229666;
        Fri, 22 Aug 2025 03:57:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a481a13sm35509521fa.34.2025.08.22.03.57.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 03:57:08 -0700 (PDT)
Date: Fri, 22 Aug 2025 13:57:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
Message-ID: <yc7ceoq3bn3lkxdwkrk64ecubej64vblpwlwzyj5cuep2wmjui@nln2t2yicu7o>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXyZGBfEDrjQXl
 EJcC66m3pfluDZ+OGmIy7PGQXK1gTVALYGA886XiLRc4sUmyNsdfyGVilHwfrXKRtouqNXQQ5Jz
 7OawsL8guKX2nCb2fPQELw38OBqWAAgyvkFkuKek8VsGXfzawncvmNk8nvcUGnV/kkEdPLWeN3G
 bpQwGB6To+7cMNnaZFmPBQRTDqI5TJHialXhFYeTmbL6ztr9PxfXn0weHvn1HSvzxsa6tZ7oJNU
 0q+rHEZPMDcWWIN7Oocbt7qk07W4rFB/VFxqKfxqvDwVNsOLyh6/ouncKRjc+FH+/IpyNmSczqx
 jm441kgKlXvbtSp1nbTuBwAQDHxNvnvlMnRpqsZ1e9Afta1nR4wUjL5laqlqmlOisDqoIxvTdMs
 KyWagIwSQLnBKTY+Q6RLjrjT1iThEQ==
X-Proofpoint-ORIG-GUID: NPklp6cHKWccWvuTiYlHpKJwDpg8Q24l
X-Proofpoint-GUID: NPklp6cHKWccWvuTiYlHpKJwDpg8Q24l
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a84d07 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=QmbdcxT1eW_NYhLIMYYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_035712_453284_C66AF1D1 
X-CRM114-Status: GOOD (  24.24  )
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

On Thu, Aug 21, 2025 at 03:53:26PM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> And the layout of the lanes can be swpped depending of an
> eventual USB-C connector orientation.
> 
> Nevertheless those QMP Comby PHY can be statically used to
> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...
> 
> But if a 4lanes DP->HDMI bridge is directly connected to the
> QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
> probbaly be USB3, making the DP->HDMI bridge non functional.
> 
> Add a property to hint in which layout mode the QMP Comby PHY
> should be as startup.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43ded5a38aad766f9810fe7 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -76,6 +76,19 @@ properties:
>    mode-switch: true
>    orientation-switch: true
>  
> +  qcom,combo-initial-mode:
> +    description:
> +      Describe the initial mode of the Combo PHY configuration.
> +      The Combo PHY is a wrapper on top of a DP PHY and an USB3 PHY,
> +      sharing the same SuperSpeed lanes with either DisplayPort over
> +      the 4 lanes (dp), USB3 on a pair of lanes (usb3) or both
> +      technologies in a 2+2 configuration (usb3+dp) as default.

SPecifying this as an initial mode means that it can be switched later.
Should we generalize this and desribe it as bus-type (from
video-interfaces.yaml) and allow it to be present only if there is no
mode-switch property?


> +    default: usb3+dp
> +    enum:
> +      - usb3+dp
> +      - usb3
> +      - dp
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
