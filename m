Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7BECAC5A7
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eu/tI/0AWq3cAmaitcIxBHBRaUkbPbxgurcJ/8R6stM=; b=2LY9q2LTcrC17S
	Dm44hyNd+UJcR9QUy7X4hT6xpTEPmbufHDYHzQnji57uTIcHpbQWQgEbd+aTx00sI2r0Kb6IK18jW
	6HkSPkA9F0Stk8q+giBdP8hB1YfTb7cpDOr5nv8X0/b4ms8o0nKxw9oGxZkGZ1Vf/vzkgFjEyPtid
	DmR+QjuhaNJnb+7a2KprBjGVXhsXamQbdlw0nZn5+I1gzSZvNCcG+YNIfl8wJn53fvgK+Lf+jdATD
	cDnTgPjuCB0KBtpY9A/E1jwGG+9cMtJhRg/8NUX0a/q6WdbUXXtIaeT71GB7dZr65seu46fi30Jsj
	E/OApnNHnVAORaP1d7og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dMn-00000009yEO-1vNj;
	Mon, 22 Sep 2025 10:01:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0dMl-00000009yDB-1WGU
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 10:01:52 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M90FRA002252
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 10:01:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XiYvYz09Ku6t3DKDC+/4pI6q
	fS4bj3bJjEj9wOzslhA=; b=M7Yzv5JW0kzo5jqhfuTrRAr2NwtyCdfXVTLVHncP
	tYI97i8LcDHQB5HgXes9kVdNM0fTPrfKEikVW5TvqhegrojVEAyu1/H2qs8MNc1Q
	VoGZZ2bvd/2C2225s7s7U2IXWuu/zxXLD83t1PfAVQ3Ex8YzYzw0wNK9XuifolUL
	qqRXE5YC0eTFuK2tGjUDYH6nA6ORf7KuA9VYoRVFUXn0VWb7pzvJvozCpd3h5gtV
	/REIvnhJ0oIMAcL7e/3p4yZFYBjUDllStnUmYL2t9DGEVn5PNJv3j6oZfV4pORIB
	3OJcgmPs9kjwgyNQzEhh7tJjyNTuVaYGLy7e3Tuz6HfQTA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k7svem5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 10:01:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-78ea15d3548so41395646d6.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Sep 2025 03:01:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758535309; x=1759140109;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XiYvYz09Ku6t3DKDC+/4pI6qfS4bj3bJjEj9wOzslhA=;
        b=rdO6TnYIvhL1R9gUNLVNQH9oqbeQLb6mQjv8Tv4XHiP+HhFAnDHWvRBJEfRyqXFzCX
         IUdFaQghfzd22MhXIF3jYQlth4Qivg/rBY1VSOQiu0QWsTKUFT+lIj56vEUlebd66Euy
         oRW2qflW5+Y+lHmFciV1ls5WiNaFTwPNGw8nNXdjASDfTa6LqXBbECEiCZLHF8mgWff5
         OcIrdrZSoVez4ICg4y3TY1Nbl0Ms/uL0jHLFg5S7PnQArYTeJIoODbagJ9HoCJVVLB+7
         ktkc2Y5ErIwfrakffNhtdqfOGYQ75CJIPbQ0Gjff5uM0i16Ko3R8TmxVt+VAWuhD3SLp
         2Rww==
X-Forwarded-Encrypted: i=1; AJvYcCXdqvzzmahwYHeWm4CsBi8d2ObEcI7XyQoqm1hgxBO/JFMBHydPjGVL6WgiAC5wL2xHbKCWx60/9PU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRtwyMJyYHZd1GaywUrA2oqEA2eIMVLZOH5VrUE3Q8RAzwIqOR
	WVypwj5bNaTddjdVIkkk2LozpCu46+w+g098yRP4JE0iFdhGqDanWSUnsDFENgRBTsQ6WZlyLbv
	Rczo0QWImhqp33aIlJmSR5xcULHR6g6VdV9H37VfgYvPjQ8Hk8JAsK4Z8oqHKd9wyTgPB
X-Gm-Gg: ASbGncsu+4MJUPks+XtFJrlXNlJzSFXaCGjvk5aJMvgW5mEvGxBlO4JuTtm/kipRTIV
	zISpixNsvSURpy+5laIbtZRF/iptXlXw/A1rU1GuiPG0tcwATJtiu7M22VFgNXnrritXTM7IgN2
	5LlqnVD7Pziv+g+nfx5uk0ZQwv4qGjT//krh5V3jK0Y7w+zR/GQo+5PJpLTRw/B2+llnktouXeI
	B+Uc+dXgmW6yhP64N6EwFYmQ5SmH9WHp5dlZIvo8oy3C1EbblJot27ChD7sYm4iyYo6LFH8qw7j
	fP20/fluVg4mbrsQ/8GXgoXSarNwRuAeLKGpPz9XWwk1BtoVIczfUIMf89Jdsu/pZqru40zrIr6
	UONTHJQBxk6DYJrU6kx3o1Mr4Ky5mA/vwoYdMRQ4Kw9f9OXMIj7HL
X-Received: by 2002:a05:6214:2129:b0:77e:dd3e:a0c9 with SMTP id 6a1803df08f44-79911fe849emr152956756d6.14.1758535309185;
        Mon, 22 Sep 2025 03:01:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3dwdmnAT8Ej8kna6zU+1gThqQvOHecwhWI8VJSZtuu94b0HchIuEq9o+Du143hQaVFqG97w==
X-Received: by 2002:a05:6214:2129:b0:77e:dd3e:a0c9 with SMTP id 6a1803df08f44-79911fe849emr152956006d6.14.1758535308504;
        Mon, 22 Sep 2025 03:01:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a1e077d0sm29027191fa.9.2025.09.22.03.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 03:01:47 -0700 (PDT)
Date: Mon, 22 Sep 2025 13:01:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>,
        Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 4/7] drm/rockchip: cdn-dp: Support handle lane info
 without extcon
Message-ID: <gcgiszrrpqkoi3mhajn4i72awbffqv6mayahmnyswoitxxmrgd@nr2z4cpurbwq>
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-5-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922012039.323-5-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXwiPMiuKovBd8
 /O9eCnIV4Q09VH/5ABzQbYA0FMmNwdeF2AmR755DbbTioyK8d2X+Kgq0aM+t6aot+xa/ohN8Kjt
 zQgGKJowmLlg3rTRWFmHxw0lAo+fZc7EF0HJcT+nVwXL0xOd+0EzQ3xeE4OVoXfp46KykeiGMgD
 WvP0kpSuQtqoRzz//qa3pO4jODNLN/F0IB6IaXCjj8A2zDD+zlUNA/etWfMXLmaWotuGPxcjGxq
 kKDWf608OzpWoK/yO8kXoxYD2tyHQyg1a0UnAtW8o+n1RGhimxLxycu3Ej+fU1XqwNsTueC3MUy
 QwCx1m3e2tFncwkoKb2AFQzEePwGjZsx8bqZVAczRNjJLA2vC8PvoMb4ZFQ01A8d0ch839GLY2k
 u+lGeNf8
X-Proofpoint-ORIG-GUID: 8yHzvPcS1qQBmEgAZahJEhbl5ltAQz-C
X-Authority-Analysis: v=2.4 cv=bvpMBFai c=1 sm=1 tr=0 ts=68d11e8e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=k09sBhBf5rVv_DnywOQA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: 8yHzvPcS1qQBmEgAZahJEhbl5ltAQz-C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_030151_398478_6332A003 
X-CRM114-Status: GOOD (  24.39  )
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

On Mon, Sep 22, 2025 at 09:20:36AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for get PHY lane info without help of extcon.
> 
> There is no extcon needed if the Type-C controller is present. In this
> case, the lane info can be get from PHY instead of extcon.
> 
> The extcon device should still be supported if Type-C controller is
> not present.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v4:
> - Remove cdn_dp_hpd_notify().
> 
> (no changes since v3)
> 
> Changes in v2:
> - Ignore duplicate HPD events.
> 
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
> 
> @@ -1120,14 +1129,14 @@ static int cdn_dp_probe(struct platform_device *pdev)
>  		    PTR_ERR(phy) == -EPROBE_DEFER)
>  			return -EPROBE_DEFER;
>  
> -		if (IS_ERR(extcon) || IS_ERR(phy))
> +		if (IS_ERR(phy) || PTR_ERR(extcon) != -ENODEV)
>  			continue;

This will break the case when the extcon is present. It should be
(IS_ERR(extcon) && PTR_ERR(extcon) != -ENODEV)

>  
>  		port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
>  		if (!port)
>  			return -ENOMEM;
>  
> -		port->extcon = extcon;
> +		port->extcon = IS_ERR(extcon) ? NULL : extcon;
>  		port->phy = phy;
>  		port->dp = dp;
>  		port->id = i;
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
