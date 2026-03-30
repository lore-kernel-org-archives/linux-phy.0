Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41A4610D14A3
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 11:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFmyw3m5E6ZcYgmhuc+eIBbj7N8dZx+PStBTroe8LmU=; b=SeaH2X5DU77u/F
	qNvETWd4jIRNZGP7TiRsOd6CQYlGx5JSWYUvIibrzPyB0c5P4jSTSrq1DzV6HdOry3UKWAVjHEpRC
	hs8lvdhpMCvGgjB0WT3dwqj/FZqfiaNo4y9hhw/tbrdQDR+FO93Uo0MXsz0BO8PbK+qWZ9Q8VC655
	76VQ3tYJbxM6TUqGwu0rq6B4qtts2UHswVmf4wajOZHO74dIveSjK+VVm2EtujGBvLeAf8sgT/Gjo
	Nd2Yf4As1apTopa/OdZpLXnohNDwjCulB9tNB1Jv3dskcHoQE+WQOeHlQ/HOEtNf8JSfIZ0BeAN8y
	Ni8KAEFV9Qn8vw63K17w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7AgT-0000000B9h7-3F01;
	Mon, 30 Mar 2026 11:21:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7AgR-0000000B9gI-0Ams
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 11:21:28 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U9n9FL3721837
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 11:21:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6Ic1nLhA2BVLZfE93GgGLyyBeF9wvtvwcAK8zVyhSjI=; b=YmCBxfD7q9t9r63g
	ibklCkOWxq+X99CAEkisCUvvmaMndfimumjsGGt56ykUo3Idd+NNX4CoZrCn3msV
	Ermoq1ZyYt6DLxBHSqD5EW+9Mo7kdYyFdW1KKhoVGqnwD2LquUGdgrks9twJQQWz
	sFuUmO/tkXoUZpHKlxV9lJKQAf4Zx3nfIKKlTb/mYknDImbRj0PnSoykkvYlAFxT
	3Wt1Xzgwf9GBQi36HV0pMnBeNU8gQQsQo3g0YpZIWbtMm2fzOOPWAqUr79Yh/jnR
	ryGt9jd/98dd/irm2L2YC/pgE6M/1JzwE0L9oTlgSEoHMab/XVezQAODw9ftX2zX
	ql1KFA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d7pvmraf2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 11:21:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89f59c9bd28so4920916d6.1
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 04:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774869685; x=1775474485; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Ic1nLhA2BVLZfE93GgGLyyBeF9wvtvwcAK8zVyhSjI=;
        b=b/GNuI6eoRf+oNy5gxA86yRBxR0oPPccKVox5aKqCme/08Ydz7rKDiAJECZY1sBpAV
         6ERfNCzKbDS23vt7REvpx6bUA0mtL0CLHO6/zfipT2qBveZyyREWos0xhkYE+pwnB3/W
         dnEi5abk5x0K80jwBTldZRxmR1Mwp9lrmHtwIvFbc9d1wjL25EPpE81pKKr6fVJdCj1D
         kKf/pk8zHMl8+Gu26jXVsocXgGk5SLIRP2WSdSUX7nfHq5+06Un/fT6pHmZxO4yO+C1w
         BtMDdFNPC1mxdSC1BvUM+kSit9dijNQPe4eiE3rJ4U5OFXzG9el6rUEgEP24fmY9QE8b
         8fIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774869685; x=1775474485;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Ic1nLhA2BVLZfE93GgGLyyBeF9wvtvwcAK8zVyhSjI=;
        b=NGVdmRdWzj41Y2nXC2HM8h9sYf+pJIUEEtvGZvQ9NCQDyNXUrXOKV8eus8awz6sAiT
         oSfmr0TAiMy6gM2vxAgCugnTGMKv7o9Eo9B3vWFSkcumPlZOUvKBZcARDg9PSFEQf0tv
         riYQUZOWMfTb+EKMABo+fXXy1iko6MRLUyP8vc+bh1LDJF5xFy8n0i3Hqkz3bjXIJu1b
         hN4SrhtJfAoazmDMRLWUwZFjtzU4pdkjjZEtJz+IiVwblzWZ7lCJWbQV5/54S49GkAvk
         5qMsy2F51BoZoI5lnK+N1SQoeNNZ68SQ0Pxmd8A8ho3hrNjT6a0YlV2LPqMEbqymFpcz
         RyGg==
X-Forwarded-Encrypted: i=1; AJvYcCVG6nxg/DaX5xaF8J3ifS50sUbwWuYEPTNumO9bb4FL+ciXznG/f2x9ROFVoHoEflU9WDzGaH/zY4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+GbPu2JQMkuFk2S36tyzjmdwJVykJGmzWVtwpICA21D5uohI8
	5TLpMY1Sods49NovMNnpA0kqrqJjHnbnnYvxmuqPHlzpwDA5RuffqVA0Oibhmrj6a4WV2OM7cV6
	BS6TAOdL5JmKAUTm3wUlckkkG1HCOM8VN4bKn6TXz8ZoeIYyhmbSDQebuDAg4a+jXjFlA
X-Gm-Gg: ATEYQzz+1cHhV94IvcqWsenOO6b3TtpgakTZASAHvaM1bBLlDVS+wsS1Rkciotgc/NB
	ZKKKDPv00UAflyrCcaC/VsaGnLYnQCG3uDMDsS/04kwxzi+iQAvfTh+UiJ9naHiLrxI0PL4oKZw
	bcZtHybf44yw1doQF5vgvpeiSOAyYHmRDgio2WZZixmjmLhR7Zt/Q70MJdGHkxPAXmYbvreWe0G
	pKbX2Xm1lI4eE/Ujwg/Xf/ioAF43WhUcMIk6fNXyM0xG3b8ukAZlDCBZvDIb/F9v7j24yOUsKNB
	dFjlSFRFFGyZYBpjOQYyCuXf5xy1l23+qoB45vYpemz+S/kAX6zhxUIaT29938BEvaMCJBGQydS
	kAhQWwiDAH1mgFj9zktHADNXS3ivErCwYQHesf3Qi0GtI5v6ufbR23TedAMX7V9OixjlxbHj7BR
	p0HSs=
X-Received: by 2002:a05:6214:1bcd:b0:89a:575e:ec01 with SMTP id 6a1803df08f44-89ce8ceca2amr129623516d6.1.1774869684867;
        Mon, 30 Mar 2026 04:21:24 -0700 (PDT)
X-Received: by 2002:a05:6214:1bcd:b0:89a:575e:ec01 with SMTP id 6a1803df08f44-89ce8ceca2amr129623056d6.1.1774869684399;
        Mon, 30 Mar 2026 04:21:24 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9b7b1a5fb3sm282004366b.31.2026.03.30.04.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2026 04:21:23 -0700 (PDT)
Message-ID: <df073955-476c-4abf-a0cc-b5842089371a@oss.qualcomm.com>
Date: Mon, 30 Mar 2026 13:21:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: hamoa: Fix incomplete Root Port
 property migration
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20260330020934.3501247-1-ziyue.zhang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260330020934.3501247-1-ziyue.zhang@oss.qualcomm.com>
X-Proofpoint-GUID: UBToinQZSz9HgY0WqIbEGs8sXOdvlwWv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDA4OSBTYWx0ZWRfXy9x7dwN4a3aN
 g/Rpj/+B/+YRa0HZn/Q+3z/iZMuNEDCoqVKIv5hKZ533QIQkk78GqD3kB+zhu95LyS5RaThd7lI
 koWswgaNSuqbc7Jt0uVycAZOofvyot2oKdv2QUc/gwQKvkzG9id+S6/c4n5rdjPUHLa+8aFT06g
 KMTmOM5iHNw75wvOjJb0X73EapUfk8J+ylgGa0tMkRQFyFcrnMr9VcQLh/CdKORxvcULK1L/xOP
 TMxyszdQT6DcJQ6pmM1nZ565sWIM5gi3FsPumZZOXNxDLvBKLo+yQHIsxxg6IhWdIkFTVO0PoNM
 gQRw2mHRUbZzDFxVRxqY0CxMOpM9STuW17KqL1e/j/3lqQr6zz1E8wOVNX0R7Mpv9R9Jj4Js6H7
 6NI9UVaJfd5qxj11XSfeeBBBdxKFyMbBvbyuqtgrrris1gEelcNKyQ0/lg2mFlVV/uFq6JZuCUf
 KaKpE+Zonl9ZkM/yQkw==
X-Proofpoint-ORIG-GUID: UBToinQZSz9HgY0WqIbEGs8sXOdvlwWv
X-Authority-Analysis: v=2.4 cv=S9rUAYsP c=1 sm=1 tr=0 ts=69ca5cb5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=tO3S9EIgoizo5XbbBjkA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_05,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603300089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_042127_241313_6391731D 
X-CRM114-Status: GOOD (  11.74  )
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

On 3/30/26 4:09 AM, Ziyue Zhang wrote:
> Historically, the Qualcomm PCIe controller node (Host bridge) described
> all Root Port properties, such as PHY, PERST#, and WAKE#. But to provide
> a more accurate hardware description and to support future multi-Root Port
> controllers, these properties were moved to the Root Port node in the
> devicetree bindings.

[...]


> --- a/arch/arm64/boot/dts/qcom/x1e80100-medion-sprchrgd-14-s1.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-medion-sprchrgd-14-s1.dts
> @@ -1033,9 +1033,6 @@ &mdss_dp3_phy {
>  };
>  
>  &pcie4 {
> -	perst-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
> -	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
> -
>  	pinctrl-0 = <&pcie4_default>;
>  	pinctrl-names = "default";
>  
> @@ -1050,6 +1047,8 @@ &pcie4_phy {
>  };
>  
>  &pcie4_port0 {
> +	reset-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
>  	wifi@0 {
>  		compatible = "pci17cb,1107";

nit: This single hunk misses a \n before the subnode, but maybe Bjorn
could fix that up while applying?

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
