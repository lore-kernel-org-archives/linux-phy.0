Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3452F30298
	for <linux-phy@archiver.kernel.org>; Mon, 16 Mar 2026 02:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOG+YmwWLZBAFccfdwvhyTulV6h7+999v4HdIppFDSo=; b=iX4G17cH6mugL3
	TV5VGx/XPzLTKEvm3BpCVu16nZxsrgVRYhvycper2sbQqWcgBOnXz3TXNyJea9dmnS+YHIVibpcfF
	fQTcHAi34Eotl0wJ6tm09LyACU+7PZNYKxJZyb2qfUQZ6dcdWnFdkBlcmVapujJLV18z7IOIREsuY
	Z2ln9YOVl2CwceDdGpYWvbIxwmxBOw9eSpD/2zGdBAePx66x0swRRn1WpYLTMZTxVdSgTNtyImkTs
	b549qt0s4/x/WyZNRfcP7hVTYxpxSowu67KcNDuOuPxOu6xrmMeilZ1OoCU6GWmubIr8Z64/Tdz74
	NsnCTF9H3lUWAfx8MxyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1xxu-00000003EQ4-2xPx;
	Mon, 16 Mar 2026 02:45:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1xxs-00000003EPj-1XlJ
	for linux-phy@lists.infradead.org;
	Mon, 16 Mar 2026 02:45:57 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FB7gUa2514619
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 02:45:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8QMp6hJBWXNa+7dNP5uMcXtE
	s6BjdPBEVpsBPxW9nRE=; b=JW4USMHUnPTpvTa7BUbSik99GXc+9c4/tZhCqSMZ
	ilv2Rg8B6Rmjx6806EV2BeVtMS15bTiRGBBZNInLsqd7LUqpqqtwvkXan5rU8JwO
	RQ82AxSsQ7/wPRVZEk5yQ8kzFIk6kIfdH6oFgd0nDSmcMD9VH5lYUREJZZcEkO90
	4tRjfSXTQtInTCNNwaXgVH+KHD89mZqQfbagTLrwkOPG1VYhr41BqOv0uMkrWAx7
	H2rjQ8dfNdFsTQ3a1lQcus9bvargngrxkXTBszNXByVUKc7amGRTPI2nx2/aoH/J
	U6VBX4WLbe9PeGb6z96V9xnqYxOLK8hsSIEYu7eBjp288Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw043ktsp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Mar 2026 02:45:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7fc27cf7so2462177685a.1
        for <linux-phy@lists.infradead.org>; Sun, 15 Mar 2026 19:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773629154; x=1774233954; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8QMp6hJBWXNa+7dNP5uMcXtEs6BjdPBEVpsBPxW9nRE=;
        b=QHJ+AVP9/ezMdRv6M4Jsyrf1Ycp+63lmmx0RhVufLO5MCPTo5KEg5WH3TCpR9GQYHG
         s8H9xQu1xRIhGsv8KpMSkF0zwnk1ufPkM8CgKWyKYyD83OX+07HPK5Aq+HBmCFvkKSkE
         FYNR1dn/pTKWwSLItPLNEW+ap0mZLIm22QQ4+785ZbkClw0aiLixdbPHEhyY+/+285GR
         VWUIVHVHdebal8IjmCSu+ttF46LYt+NK6GzNFm2JrO19pYw9FCBoa9xO0ZQVHMHNCSbm
         EXii2txpJi6G8sT8tNjuGgRyK4ApnsWrT+wQK6O81DToBmTlleLUPIfSDzFHqTWCaMGm
         Ys6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773629154; x=1774233954;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8QMp6hJBWXNa+7dNP5uMcXtEs6BjdPBEVpsBPxW9nRE=;
        b=YWnQ+nH6HTBM0wrCJj/GF0n5swpdKlOgdpXmcwztBqzj4tpBqRXj10A5DqsLtu2JjD
         UN4VAeWa50NoPrLELzyJL9fGIDwqwJFEXFnq/YRIJfr0UiR9clt+j8MQ2gqclEbUx6qf
         3dv7fx2k//Kraob/2+3739/ZB5rmme3vqXF8SDF/4BuEEc0O1J11QSd6Wl4TlOqWTv6O
         Erp+5Bx7DOprXpEmbZHdXc4wWd8FAKdereVR2VJKfJzFRa4wqEGXhYj7a8KsNmYzk692
         Bcuwz2AT/LhBTzGshUzxw3MXUkdPxsC2QYPDwmgSQ7UneVlZB7xXOwCRTJaRhUA7vbhF
         Z9gg==
X-Forwarded-Encrypted: i=1; AJvYcCVBnlT4/MrqcRfLgyK19T5XlwquanPYMTA/2IZqzNA4PdEZQsP3v0tO39bf7wmce8wHhLUB9NM7dNI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3xm5BcrPYJ5KceCNDj3PEYeq1RGSbegVozLBnFveSElg32AVW
	Y0BfkucRBROaSL1WeFrMekl/5KkBHhosUqDJFJUSJezaBigW7GY1ddlxR7+HCejh6SKjljqYnJ4
	YzCEOHOl2MN6P7PjQKZoxoDDPZNG47OnsNZFs4ffakecBWYDntvSe/Wn9DVFe21uGEya5
X-Gm-Gg: ATEYQzwG2AqzCRyROkRQp2TRzA3gxrtREvdriHGkpk28tkGpZMrMpmzFjm8YMlMP7Mr
	Dn5+Z33nRbhs7F9nr6m6EV8hJv8i1CKs9qbK84QR4Za5jzvlC3y/bsTTjLCGb7iUFNG3LI8YJ/u
	gs4Ce/y/xEPrXrtvVR17XD9VaOuT9LJX7zLfLXh6NVpfYAXF0v3vjIMsG8EHTOy8XCiaxtwRJJx
	+0fr+lc6djy/aE1zdn/jZhc3d1H2KAmhRaj+6GXjbaQyYMeATh/PCuJMEwqV0XSTnZSAGGu9/8z
	5f2fJSUd9Mz6ms4QRBzBd1kButrLA2GK1Qq59gXZBKYv05o4+yqevKfi8TCjW/bFjWJ7IIQM4jh
	zWDrX2dLx/ZpV2QEyDpbOe5J2VtzFKLTJMVWJ3KTP/8BdkWoplVE9O2xI/NBM+2kx3oklz0giKI
	uVW9++YOwoVX+Zrz1SU9tjJHSmD2rTIHFgMhQ=
X-Received: by 2002:a05:620a:472b:b0:8cd:827a:2ab9 with SMTP id af79cd13be357-8cdb5a5bf8fmr1586621685a.21.1773629154220;
        Sun, 15 Mar 2026 19:45:54 -0700 (PDT)
X-Received: by 2002:a05:620a:472b:b0:8cd:827a:2ab9 with SMTP id af79cd13be357-8cdb5a5bf8fmr1586619885a.21.1773629153782;
        Sun, 15 Mar 2026 19:45:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f33bf1sm3158988e87.1.2026.03.15.19.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 19:45:51 -0700 (PDT)
Date: Mon, 16 Mar 2026 04:45:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <wjsnwdyoptrfbmdkqlcepzekfbccv6vsfop5wm37m56rtlevfk@jkbievryoo2j>
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-1-90c09203888d@linaro.org>
 <c59f621f-23a0-4c60-b8e3-5a9082c816e2@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c59f621f-23a0-4c60-b8e3-5a9082c816e2@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAyMCBTYWx0ZWRfX2QyqRtXOD0q/
 wzm5mLLAg8lOuBnFnjuWjJA2ZN94vqEqzonWcboTeYa7mImWHXXYQs1qheGbUAbVrihiSkv8cAr
 oCMXjK22rfZoDOY4XkTG39ryxuwPBC3IvIHBq4YMS9Vl2liv1WnGfFGfp9YUAShsTkBA5+GrBVl
 oDooRf6eaKeiNiysL90H4/EHhJ+CapWil3BVUSVt/PTbRmbiBIpL2GtZ3rA6f8dC6/lWkxXd2X8
 cIp/adcGbmnIlzNrrHZHNXzReWgwir55BHYMd+2acVWKS/W8jWq2N/gkNBaPWm2l2lYBVMJsk4h
 zWiYbjpImoa1Q6k85O/N5G/6hxtO2a7of8dAo6zlNzO3Xz8g8KSOfsoHqU1x2WRBsXjW/BjoE4k
 CGqnCht+wrgCX+UBl3cmGcSO9FZGrfbBLdFWT3MEMeNpXow/i3yQAvkVpZRoiZLErncDXOeciUl
 Ao7UPbYNnc6VtA2JQvQ==
X-Proofpoint-GUID: YAdc1xlgcNQ-M_qfoHrNLGe7DZbhvbu7
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69b76ee3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=KKAkSRfTAAAA:8
 a=c7rPNOMjApX9GAaFin8A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: YAdc1xlgcNQ-M_qfoHrNLGe7DZbhvbu7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_194556_579651_8440A65F 
X-CRM114-Status: GOOD (  20.84  )
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

On Mon, Mar 16, 2026 at 03:58:14AM +0200, Vladimir Zapolskiy wrote:
> On 3/16/26 01:52, Bryan O'Donoghue wrote:
> > Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
> > PHY devices.
> > 
> > The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
> > have their own pinouts on the SoC as well as their own individual voltage
> > rails.
> > 
> > The need to model voltage rails on a per-PHY basis leads us to define
> > CSIPHY devices as individual nodes.
> > 
> > Two nice outcomes in terms of schema and DT arise from this change.
> > 
> > 1. The ability to define on a per-PHY basis voltage rails.
> > 2. The ability to require those voltage.
> > 
> > We have had a complete bodge upstream for this where a single set of
> > voltage rail for all CSIPHYs has been buried inside of CAMSS.
> > 
> > Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
> > CAMSS parlance, the CSIPHY devices should be individually modelled.
> > 
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > ---
> >   .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 133 +++++++++++++++++++++
> >   1 file changed, 133 insertions(+)
> > 
> > +
> > +  vdda-0p8-supply:
> > +    description: Phandle to a 0.8V regulator supply to a PHY.
> 
> On Hamoa the CSIPHY supply voltage is 0.88-0.92, so it is 0p9 rather than 0p8.

What is its name in the schematics or in the datasheet?

> 
> > +
> > +  vdda-1p2-supply:
> > +    description: Phandle to 1.2V regulator supply to a PHY.
> > +
-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
