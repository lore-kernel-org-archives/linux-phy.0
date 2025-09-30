Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB054CAC5B8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 18:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQqvnw8R6TyA44MzZHX903x9zzPhCNOIVtjdrZOU5GM=; b=u9DCol3uz2ekeu
	l9AbWqK6TCHr1yJGI/bYUCugjTfT8LBQVuQe2NCOgHqxqhJgoh956Hy7yIKfAUuixtoiRNLs53PC5
	3WQuqzqHtJH5sRt43dFo3yRwBTMYsJMR2x+hyQTfwdVo7sVMYUYUfdqYkK2RsSKt3Pzqx7trIJdw0
	dmfxEiwQVt/mJVCqjkBwaZgRWzkkAp/Z3gikLjEk/1MdyGNUi4vHX/TL8Ge7gRiTYDA7kskETcDRY
	DXx+gbFyhx/XflOZgPn3wAAIGTES3VaIuAvEowOUrCWxOfdA6y2scF2iL704+GrXH6m123glq72yc
	LRfKLZKbXV+Vqu3RRkbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fKE-00000005zhp-13g2;
	Tue, 30 Sep 2025 18:43:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fKC-00000005zgm-0z0F
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 18:43:45 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBcv5l011599
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 18:43:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yGmiFBtk8zoxCM+T4HUw6+ZD
	+jra215LvynAxpP5vgk=; b=bfTmvrZJra+/oQZi7uhdBmbERNSFcTLqisqpazM1
	wiudlbDafBQKYQ6pepOJctTKpmrQZLScq2Ie2N7USskXBRMWD61lwlErIgXOMJN1
	qmq79ohKTxUDoPGobDLWT5bGi+/L34X/W9bxBGDsNwKUp93UaBDrvGqMjJxwddVv
	twZAAp/AyQzDTi9fCjHWxV2d2jpJzcZmPHSum5dzsj1p5zNaGphdjbtvdj3uGbsl
	syJVbQRAxIaMzySx/jd27fn8v+vpXiG3HM7OTe6rWRUwrdTQbojn/tGpr7OocZTK
	QsbqQ25r2ltFmYQHFm4C318tKfN+YNZeJSWJg4psEJRt3A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mctfc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 18:43:43 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4df10fb4a4cso131402071cf.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 11:43:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759257822; x=1759862622;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGmiFBtk8zoxCM+T4HUw6+ZD+jra215LvynAxpP5vgk=;
        b=UBfeIKdxk/S/x7voan+3MvvEWmqAMxpASLX7u1AwpvIGHL/wnAV/FzTYLMgwjvUwHb
         BIy4BWMHQfItaPsOMfXCM3h30kfnAbnK8LqYpj7TEylokcoIjHs7ylGszNxeNFyriMVw
         bOw++lZN0bOz8Zcf7WN5n1VzQo/MXzpEcFicn23ezZlrbK/f2q+OD/pApiPeqQ+y8j41
         73BmGfdgbqrOuLdo1I4pXSbKdhpxIk5asfk0b6c6wnozwNwAiBddn9A4UXieIkFbyjwM
         4jtooIMwzWd10vk0Q10J5n5CgD3SUrUyAzinzy9P51wejOu6z7WO3ocpABXyXkohddSb
         /bMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWfWGggVX4XzbUzlnAqZxGyyPiObm021n2cruARHPrmmHp2BHO+b7pR8N/7RixFPmcGNTAtAih4L4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrE+7VB/CqBUbQtbgjU5Zm84OzO7MRBoVn9Lv3RbtiWa2U17V6
	oaDZVEaToN9h04pXcCi6PDuBuAmpN8S2AyyV6uczvFGExOzg0u9sMmmfPBZy24ejUOY6tlmwtUY
	Nc27s42i/2vF452snR79Oub0DO/T3/MWLsVAuVgrg3smdhV25PYkOW/30A1KmM9lmM5WM
X-Gm-Gg: ASbGncucfc+Nb6SfsS+7YU3gK1R6muDnXUahoEOo75HzMzKX5kkR0ITKM9tfyRsCatd
	GJUwPo5CVFoIQ9/kSrj4ilSsIDPLzkSSW0Wl6P/rcwdc2qLaQjkpDKOQAOQe7rQgXeR3oi5kdV3
	jwSx0qvEBo13lHyevAj67tHI5GCS2159Q/6Dh766yftr6TZc8aR3PGoW8Kb6MAQe568Cu2GYSgj
	nJOEvNgS15D9G3FqVlEuebJen9T/kbQqn0HBWff3PKyux+yoRVlhkcFrJCiXMW9plqwcMlq8FAZ
	QMj8EM68SORXhfXof2W9C/of5RLfv9WPH3lszJBhssAOeVZGSYRnUI1JS7HUK/rT3MUmX/xF7zJ
	wMqkpedufiziwfhuRh/HmulV17xhl9n3edCyzTqjG2MgjVBRyi7Arlomd8A==
X-Received: by 2002:a05:622a:2c9:b0:4b6:38f8:4edf with SMTP id d75a77b69052e-4e41ca1b2d1mr8343151cf.29.1759257821837;
        Tue, 30 Sep 2025 11:43:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVoTpyYZEYD5BDhL/ibzffyH63whEH/5BJy4dUuRPx4WpG/DtAm/AZa0wD/E68tizX2uBZjA==
X-Received: by 2002:a05:622a:2c9:b0:4b6:38f8:4edf with SMTP id d75a77b69052e-4e41ca1b2d1mr8342591cf.29.1759257821234;
        Tue, 30 Sep 2025 11:43:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665791esm5232132e87.82.2025.09.30.11.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 11:43:39 -0700 (PDT)
Date: Tue, 30 Sep 2025 21:43:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Romain Gantois <romain.gantois@bootlin.com>, Li Jun <jun.li@nxp.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: usb: switch: split out ports definition
Message-ID: <vwlshz5li23xlthn5delxwxdsdci5nc22iey3xih4qf5uhbory@clskdsy64xpx>
References: <20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org>
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68dc24df cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=OOCT3r6X_P3o6Jl0E7UA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: PIL07ZvMy0U7eZW8Yp9PygVdAyKHnMrU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfXwiX/JKSVQ9dd
 HFyyJq5kfyKTDSv7ivXW56uvmqh0Zih4HaT5rtrEf4fwjt2LF6+xqo+wedp9g3GehFqjAMKUFCO
 EIdgUYFsc/PgC51LFjIcS7gnWNf5OsGBa92WUfxxoPgVschpULTFkzOFg03GsKqnZGs9XyWPDdT
 kT6YpEUAC6Ut96pp31q6aXpGaIxtuAJBJJnBnBw0vzki5YrDPBZtCwrImq9/Y1KytXvvgJN56NY
 rig8cpaBS2KcHksI2XRe6+/9whlhvIoXiz583epkqRwUxFK/WAHZU57pbHiq0sKwbKclEoXyb6J
 OcNR7/SRbULG6ZBiSAKo3BFTrn6JVQ0Fd4uRZFvfYCoXjc45Tj/hqH49g1ZG/uFezgluML1dDfF
 D9R2cw99edrQ+WnV6d936mHNQwF8ww==
X-Proofpoint-GUID: PIL07ZvMy0U7eZW8Yp9PygVdAyKHnMrU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_03,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_114344_278326_140EB29C 
X-CRM114-Status: GOOD (  18.13  )
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

On Tue, Sep 30, 2025 at 07:17:21PM +0200, Neil Armstrong wrote:
> The ports definition currently defined in the usb-switch.yaml
> fits standards devices which are either recipient of altmode
> muxing and orientation switching events or an element of the
> USB Super Speed data lanes.
> 
> This doesn't necessarely fit combo PHYs like the Qualcomm
> USB3/DP Combo which has a different ports representation.
> 
> Move the ports definition to a separate usb-switch-ports.yaml
> and reference it next to the usb-switch.yaml, except for
> the Qualcomm USB3/DP Combo PHY bindings.

Isn't it easier to make QMP PHY use $ref for port nodes instead of allOf
and keep ports definitions inside the usb-switch schema?

> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml           |  4 +-
>  .../bindings/phy/samsung,usb3-drd-phy.yaml         |  4 +-
>  .../devicetree/bindings/usb/fcs,fsa4480.yaml       |  1 +
>  .../devicetree/bindings/usb/gpio-sbu-mux.yaml      |  1 +
>  .../devicetree/bindings/usb/nxp,ptn36502.yaml      |  1 +
>  .../devicetree/bindings/usb/onnn,nb7vpq904m.yaml   |  1 +
>  .../devicetree/bindings/usb/parade,ps8830.yaml     |  1 +
>  .../bindings/usb/qcom,wcd939x-usbss.yaml           |  1 +
>  .../devicetree/bindings/usb/ti,tusb1046.yaml       |  1 +
>  .../devicetree/bindings/usb/usb-switch-ports.yaml  | 68 ++++++++++++++++++++++
>  .../devicetree/bindings/usb/usb-switch.yaml        | 52 -----------------
>  11 files changed, 81 insertions(+), 54 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
