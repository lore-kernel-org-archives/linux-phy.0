Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB0D2CAC5B8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgdVjGflkf+sFUCca6LSdNJoXpEzrn/n1tyTfNgUHBg=; b=QV5fOudLf78RHg
	VnxoJ1SoTQrlyCniFoLiyQzkPbDdxIsWknlnSaA4n+OZ9LzrHECCaRaeNe5jF3Iuq8r096KfrYtOz
	DWKUbmE/qbccvbJnrb0AV/v29h7CYLnrJiflib6qjHk08XUxj2qzD4UwXKud0tRPRalztr4baxOn1
	1iodeF3SEQWpbxiRmHASfypK4+AgAGeFYJaEIrDVQm+Kov7vpRPJD/gobJAE1CtwowORBjB/kGeiX
	+7Z126uYb3NWll970P42aCmvLC8WrA6TAEz4hK5IACWRaq/kaCAryB06o6ztK3EZqvYPeX5aaRB/X
	CyS6x9lVJyBmr5bnWgOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fWb-000000061DU-1c1S;
	Tue, 30 Sep 2025 18:56:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fWZ-000000061D5-1190
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 18:56:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCaoai030548
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 18:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V/OMvPsmXCvICDYI+aDy61hj
	qbzRWVVGIUnKyYVKzhY=; b=oTirnR1UkTKN58dV8P9Jap/U+OeRj/e/lysnnON8
	3SYP8Lou9EM1WsG7Lw00xyGHA6qvYqjgH0q9rL9mtg5uvFlkCHskkhBGQbA5IhZv
	piCfpgKIo/Be6Vcp9VMymKqKY4etJeBfCSBPZpV2iFUjpMBkQPxBT9xhQQ70kpZW
	l47QLoNbT4D/DR0O1YR3HUFevRB9hWB30ixAN6bNRY6rKPCdXhVPMgfUzUFNWsGm
	XQpLFJmXpoNYMF2xrp2rfzQa54ADdkC63TlQOQY3X5PZW6BsQqEUEKeTFlURgGR4
	dwjcPRJtRs8NZ+pAmXSj3dd5NA9678BU2YVX6P3SSp3YaQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdhvrv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 18:56:30 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ddc5a484c9so120737881cf.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 11:56:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759258589; x=1759863389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V/OMvPsmXCvICDYI+aDy61hjqbzRWVVGIUnKyYVKzhY=;
        b=lwUSvWGYq4QSJFdy4Fpv1DlWnYfmlCyszg51NmvvkX7M2MG1R0ekW+S7IHDil5MKn0
         WjbLLVY6U3yew+XrUpvmHwdC0DZ5JsruhBnQqzWdVldc/N6auMkFUm3svVPhBNDH5URL
         v3HH6ufBcjAXfVd2Ljxu0N9VOcsiUkpiD/ZBk7LMFO76guDbkJiS0nattYvmVie9qf1b
         sM3YAMiXQuHpuYMbUOFI8MX4/z+xo1L3Q7py0xlhRxLGhou3vRnUaYT56Ko9zrGQkgVB
         GpxgQAS0AeffS5wi6ZAgCxEPBxAupsVd83nx1v5pQwanMzqjVzW6JuVkr+Ey7Lj6mC5V
         dzfw==
X-Forwarded-Encrypted: i=1; AJvYcCX+r3qwyW/N624Ouy0ssKsXKkNsgmK2pavtw5Y+w4aXBTM0bdqBm8HvywQ+nlZzEJdpjxtpXnKz0i0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/9m2plPPJdZUdgzLKZgGSKyhIggRdXwCvObnuvXaPbBAHdjd5
	bvE0JTpH2Hw46mxITOyoNfh0puMSGEVVEeVxfUIxPSgbHZ9WDV61oAoRs2Ami4R4E3iQVzl23IG
	tUbtH/bar/G+XkgVW4LXuDeN/k3r5HCEWEJBXcMKlbM4Alo1obE9kTD/FyuzH+byUFQZM
X-Gm-Gg: ASbGnctAOReEzk9vu2k2vjAd+yqH5F5iPtrui+pVDQQPmvIKD46Ei9bcByLfbUX0z6I
	qlVGn8AzlXpBl/13jBs8jhYycGxV6FPVxHVdycDr6RO+eR5L6RMJX9AALUb2u3ceDJMag9S2j/f
	C0PqQk+Y2fBaSUsMPGdxhvpWsZzGFnkKK5dcEv1tYkHxSWMNcft9fTpg+ef4/fCcUAsuhO7SML8
	rlqqexDvMQhI08Vjqkp57yf9H9MYg5hQEFZGypBYv2ep8sYJyUJjFuUIrF2V22IYkAet2ZQq2kW
	qho/N8+ymQqVwIBn2w2bWFE2FRMPNXVnDXHa3qTfZmJ5b03YC6e6biBnHdcH+sdi9p/PIF0hd/L
	RKPzvTTVTdMReY76f1WVO1u8x2E+4HGbbaJ0X/8sm9cTuvFlPpzxhxFfaXw==
X-Received: by 2002:ac8:5a49:0:b0:4b7:a8a1:3f2b with SMTP id d75a77b69052e-4e41e825e31mr9552181cf.64.1759258589046;
        Tue, 30 Sep 2025 11:56:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtCiYt7FMAzWgeneawmAeX/wzn69Dw7nDlfMUDs8bcGjbCrdSrmalKVFRpAjd5R/gcKR6Agw==
X-Received: by 2002:ac8:5a49:0:b0:4b7:a8a1:3f2b with SMTP id d75a77b69052e-4e41e825e31mr9551721cf.64.1759258588450;
        Tue, 30 Sep 2025 11:56:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-586a064a22bsm2621293e87.59.2025.09.30.11.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 11:56:27 -0700 (PDT)
Date: Tue, 30 Sep 2025 21:56:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
Message-ID: <uozgwot7yuwmaiwmqoo6ickblpqe52tnj44tnxcorygqxwou52@hksvktgq5zp7>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
X-Proofpoint-GUID: wntWgFi1kilq8ggb0nt3kxq5knTv2h9v
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dc27de cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=jDN6A-fuz-j-nsQmgYgA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: wntWgFi1kilq8ggb0nt3kxq5knTv2h9v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfXxEbU3rn6k+Im
 nUtObToDw/YJWsZKOs6WNaoWEJw5fpi7NYQNBxrV9Bf5cdPE7MknpwEmMqcBi49t28JgmvHYcUC
 6ftaQzGkM5zi2Esc1JOguofaE/taw7FS1XSfT92O6z9jkywNsL8LsKqudlOZisRIaWJbEC3Xgdy
 oVEnNLnTQyfYTGxsIFAqo/ohietB+fneBg7D9eAaD10H4p5vLKscAWX1p08wSrcIJWfgSSDIt1W
 ICnfjah2/7KWz1nlq3KCiuZobZu3hobAprhD3s9pajy0rj7OFfQ9te0F90tE8reCMQRtRN50L+j
 zxXySCuLrldD9bwB/MgZB5oQTHuTT5GYVLNZO7ZoIQgw8nKs1r0lo5HZIYhBwdx0jBOzbJq51l3
 NcUkEdEYlP4h+G4bVbj7Btt++56s8A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_115631_320200_2F09325C 
X-CRM114-Status: GOOD (  25.71  )
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

On Tue, Sep 30, 2025 at 09:39:48AM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++++++++++--
>  1 file changed, 137 insertions(+), 8 deletions(-)
> 
> @@ -4167,9 +4269,41 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	ret = qmp_combo_typec_register(qmp);
> -	if (ret)
> -		goto err_node_put;
> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +
> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> +		ret = qmp_combo_typec_register(qmp);
> +		if (ret)
> +			goto err_node_put;
> +	} else {
> +		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
> +		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
> +
> +		ret = qmp_combo_get_dt_dp_orientation(dev, &dp_orientation);
> +		if (ret)
> +			goto err_node_put;
> +
> +		ret = qmp_combo_get_dt_usb3_orientation(dev, &usb3_orientation);
> +		if (ret)
> +			goto err_node_put;
> +
> +		if (dp_orientation == TYPEC_ORIENTATION_NONE &&
> +		    usb3_orientation != TYPEC_ORIENTATION_NONE) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3_ONLY;
> +			qmp->orientation = usb3_orientation;
> +		} else if (usb3_orientation == TYPEC_ORIENTATION_NONE &&
> +			 dp_orientation != TYPEC_ORIENTATION_NONE) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_DP_ONLY;
> +			qmp->orientation = dp_orientation;
> +		} else if (dp_orientation != TYPEC_ORIENTATION_NONE &&
> +			 dp_orientation == usb3_orientation) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +			qmp->orientation = dp_orientation;
> +		} else {
> +			dev_warn(dev, "unable to determine orientation & mode from data-lanes");
> +		}
> +	}
>  
>  	ret = drm_aux_bridge_register(dev);
>  	if (ret)
> @@ -4189,11 +4323,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	/*
> -	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
> -	 * check both sub-blocks' init tables for blunders at probe time.
> -	 */
> -	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;

SHouldn't this still be a default in the 'normal' USB-C case?

>  
>  	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>  	if (IS_ERR(qmp->usb_phy)) {
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
