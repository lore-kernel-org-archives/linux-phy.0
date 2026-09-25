Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61337C98321
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 13:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ta+n9CltE+wiJH1xDPCGdQlEStrEehWP1vacDXBsdLk=; b=RFJY4Io2524U83tOhHN/oU4A4u
	fKdKA2o41NXz4kJE495xh7SAHLI1Cfolubl3J9woqdvWUxCAZ24f6Nga86VptnyhBz7SowFn4c6jp
	d+J6bRNZmr8m6c8phmv04RHA9i+lnLrWXzG9RyM8j09yLR+cbS2i3L2mW631KP2p+s3B+7qXk6www
	zaGtf6Z0goZ/8w/xIhYKRL1H0qceWon9mk3e8YXY6TBo6Nv+4U+NK1dHwb7PCYjt9TJhlooweLYmd
	Agty4ZCou3B+tLV3WjTcBBSbDMfbZrgrMxnORonKqSBxCK267v/3vFKVBa9Hm5w4zgwYnMRFMrd2U
	jrGUYxqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA6JK-0000000DUMM-08VK;
	Fri, 25 Sep 2026 13:49:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA6JI-0000000DUM2-1GAD
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 13:49:57 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68PBV8A7425745
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 13:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=t6xPkxuvJoftYbLtH1g8lpuw
	KWsBecQ19PbQ95iT2Ro=; b=VgRlUZDgO4FjOvEGw6F50IArihOULTImgp+1g1z6
	YiUGWhHvD3xxmhy+ng3JzBwaEOCgeK7xGv05sQtccdJIFbVliGGfclUAhyN56kxD
	T8+YHGn+eNwaXU0qW3UGub7sqQdKwtxvPdpeLhVu/PlX9LeQMz0SY+vzz4Gln60D
	QD5WbK90AsxPu/8u3ZgcF7F/WgB55wA/Ocu8dxG6s8JbI8K9csjAiGob3n4P3Yiz
	Mi/djYMVgM//vwIszZdTN4H24wbQINJVTEhHjMgZ/osZq9qllFN8HcoOxAmtF/a7
	rzdJaMMc5TwHjUj0XLnHYqu0Trnro7dAAY5/lV+6k3LbiA==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gwr5e8e72-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 13:49:55 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-7866c4ed349so768283137.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 06:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790344195; x=1790948995; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=t6xPkxuvJoftYbLtH1g8lpuwKWsBecQ19PbQ95iT2Ro=;
        b=fQJO12NPYxzK1aOLRNf8Yo+jExkEYtvYfjabrn73AcXjpSQ1170GTEjCNsib6eWhgZ
         hMu8gnowsFxy932VfR1FLY/5dGMpjFNxPQhzY3LaIT0S2obor644r+/54L3z1vLXZHU7
         MMu7Zyc864WRjdWb4A2e+fDFptjVot+UBfItZCz/nxzpvsqJa2ToPJG4wM5QIh1HIV8Z
         9LF7T++eA7vlaGpZfOE+PO5mX8HSUCsGpOgpcAWbwX/LPa2YYKQUjcDMWYZdUXygzWTY
         ZCK6WwTq5Vu3tnASiB0VVsnhlXJbWkdl4Oknmqhz4pcQ/6njqTK38zGscpcbmQAYn3nC
         wTHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790344195; x=1790948995;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t6xPkxuvJoftYbLtH1g8lpuwKWsBecQ19PbQ95iT2Ro=;
        b=EzpJit3OXENMqHUuBH3hgvSBTxAwRBB5okSZLasieIKE45IaZoeRFYLwMlOPG9yven
         2S7QEyJzXPAMzsDDI98/t04/mur7BX/VUq0L9lv/ZE9xp7bo5+EA226AKbStzyquGm8E
         SZv/b6HnnmvKGqIP7Ds+fS5Z7hTgownhMC7Av0qUgAQsd1VSa5Dtu6bwq0tnxBYrvJLh
         PTtHuHbZsi052CT9xVHkkls3PdCZz4oRZtdXGjD/JS7bs+rLe/MH8qEJ0FeJYvt3iuB9
         7kRtje0mfHtL3gmXqHDX0uxbKSrzecIY0qxF0u7UisACcRvvGLiJ0rlku+6Di9bzdnVl
         UZQg==
X-Forwarded-Encrypted: i=1; AKwUvBwPiEwtd+wOEilNIlCEQe4TNvkpA5sDQcAal3xu5Z+v1GzrQ5a7tfcv975vLmDGo0+BOvBk0IWqrDY=@lists.infradead.org
X-Gm-Message-State: AFuF++kqghL1yMk8eOQ++98f0S7bSbk0mPkjP0AMeBbdnFMotsuLiSk/
	KCAGf+BeYrgwN+t/EPYLQ87H3KK9T/DyQEyQ8zsNIaxcIzqZBt79v/rVHqB3E/G+xTvH0CqgZu+
	lEmQE16hIWr5GuY0JnR1HOaKwsNT/lKVvUMq0iUqCBJ8c4Pt6X7j3FuoN5ePzLyuWCUlh
X-Gm-Gg: AYBFou3rxtnRRxDD1U2uBRQR2G+kWKMYMp4Lt43N55gNhNwsYXoqn8h0KdyEUffTIwy
	XrhtXl8IoDn2eDsz/guMnIEiZ/TDNfQufVhWUv5UE+w9rjnG1ULnKhhAxWAhbBoHjPdZ6eYDOOM
	80KT9usapbUxRo8+rv20CY74BFJqVQCiuAyOeZqNohZ9jG0R6YOVbuSEX4+B92DwRcQcMTexYkk
	0t8/BSAyYe+0LWkThUQVtsDdTBZg9XBNvcTmu5Um4zCRc0Fdf3figMUn8V7TWEdS8gtQ3hicH7U
	zuSHdDpmqa0CfsyXiy7eVmKBlRvtDB9A4jz4Ip8SlGY7wPQY9HDYXpVeyonklaNOdWxVvqefYl3
	ZOJA7zrReJ0Bsow==
X-Received: by 2002:a05:6102:3f46:b0:7a7:19aa:8a89 with SMTP id ada2fe7eead31-7af1f2fdbe0mr2551498137.36.1790344194594;
        Fri, 25 Sep 2026 06:49:54 -0700 (PDT)
X-Received: by 2002:a05:6102:3f46:b0:7a7:19aa:8a89 with SMTP id ada2fe7eead31-7af1f2fdbe0mr2551472137.36.1790344193905;
        Fri, 25 Sep 2026 06:49:53 -0700 (PDT)
Received: from localhost ([188.216.77.92])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a35607bsm6803889f8f.16.2026.09.25.06.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 06:49:53 -0700 (PDT)
Date: Fri, 25 Sep 2026 15:49:52 +0200
From: Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] phy: qcom: sgmii-eth: prepare for additional PHY
 modes
Message-ID: <arZ8AKV4vzzrGuKW@lore-desk>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <20260923-nord_ethernet_serdes-v1-2-f8ac1c487882@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20260923-nord_ethernet_serdes-v1-2-f8ac1c487882@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDA1NSBTYWx0ZWRfXyqvTmUdJ3Un9
 5aoAhuQl6Jph4cWC+5N+gXoPMVMbuDu6YToopqSJ1p7cyInL19OOKyLMcRmuGPyLMlrakxximcQ
 PTosTfNdN4o8wM8z2SNHP9mjEQmjy1k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDA1NSBTYWx0ZWRfX0oIckdI7vCx0
 QLCXvcjV1o/CTvQSa3jh5/GtsI0UfTK42WFAzb8Lg/1QqsjPN3PcS5Wd5SyM8uvKm2c7FFhuAzo
 Sw4/8g/+BdQSxeWY6l+/whMNKIGPwE+mY0ih6GR4rKUJT79MEPZoHnNu72kfTTInZ0bWFZB+EgE
 X0KVei59XbtQRgf6Ig0o05FSubY8+6INjIg6lX9iDw1nqHltu4U3XOscNyYfPUNElOp4aJrnZNv
 Mf7e8U2pX4FA3L42NE8YxoBuO1K7kk06+NEshroQZK9WLMexNthX7qjGY5Zwpb94dACGiEb2eX1
 zAtVGBnkSxbHmxHgfufljRl7tNrEfgOe6TAL0CNmGtA0OAu1orvEPQNZXW1Wkq8CSYtLdLvq35Q
 o17jw+b40HBNjVCz5Jx19ciXxOv5cUPevziIEW4R+l7I43ls5ODqhDkWMbd+pHnrpufc16o6HHg
 Qya3d/+Yt5311YMBjhw==
X-Proofpoint-GUID: nlbb0i5fz9wNQ9OnNX6HGqsgPa4XRn9v
X-Proofpoint-ORIG-GUID: nlbb0i5fz9wNQ9OnNX6HGqsgPa4XRn9v
X-Authority-Analysis: v=2.4 cv=Hf2B3SE8 c=1 sm=1 tr=0 ts=6ab67c03 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=WpTaRW6qxYHRGzLzQsVYzg==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=3A7O19NBzCfcshX2nUQA:9 a=CjuIK1q_8ugA:10 a=nBaL-gEMhMgtoG46ZuEA:9
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609250055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_064956_349498_5D560AE4 
X-CRM114-Status: GOOD (  26.74  )
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
Content-Type: multipart/mixed; boundary="===============7453361439402735255=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============7453361439402735255==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yKk0FJ90Lp2MZhgF"
Content-Disposition: inline

--yKk0FJ90Lp2MZhgF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Prepare the SGMII Ethernet PHY driver for PHY modes that require a
> different SerDes programming sequence. Move the SGMII readiness checks
> into a helper so additional modes can provide their own status checks,
> and select the initial interface mode through per-compatible match data
> rather than hardcoding SGMII during probe.
>=20
> This does not change existing SA8775P behavior.
>=20
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>

Hi Mohd,

just few nits inline. Fixing them:
Acked-by: Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>

> ---
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 70 ++++++++++++++++++++-----=
------
>  1 file changed, 46 insertions(+), 24 deletions(-)
>=20
> diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qual=
comm/phy-qcom-sgmii-eth.c
> index 7137200c3f310a4d2642bb9bdbe3adb7589b2241..029dafacee7853648ef24afd0=
d9c4b83a549badf 100644
> --- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> +++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
> @@ -41,6 +41,10 @@ struct qcom_dwmac_sgmii_phy_data {
>  	phy_interface_t interface;
>  };
> =20
> +struct qcom_dwmac_sgmii_phy_match_data {
> +	phy_interface_t default_interface;

nit: maybe better 'interface' instead of 'default_interface'?

> +};
> +
>  static void qcom_dwmac_sgmii_phy_init_1g(struct regmap *regmap)
>  {
>  	regmap_write(regmap, QSERDES_PCS + QPHY_PCS_SW_RESET, 0x01);
> @@ -227,47 +231,31 @@ qcom_dwmac_sgmii_phy_poll_status(struct regmap *reg=
map, unsigned int reg,
>  					val & bit, 1500, 750000);
>  }
> =20
> -static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
> +static int qcom_dwmac_sgmii_phy_poll_sgmii_ready(struct device *dev,
> +						  struct regmap *regmap)

nit: can you please fix the alignement here?

>  {
> -	struct qcom_dwmac_sgmii_phy_data *data =3D phy_get_drvdata(phy);
> -	struct device *dev =3D phy->dev.parent;
> -
> -	switch (data->interface) {
> -	case PHY_INTERFACE_MODE_SGMII:
> -	case PHY_INTERFACE_MODE_1000BASEX:
> -		/* 1.25Gbps mode */
> -		qcom_dwmac_sgmii_phy_init_1g(data->regmap);
> -		break;
> -	case PHY_INTERFACE_MODE_2500BASEX:
> -		/* 3.125Gbps mode */
> -		qcom_dwmac_sgmii_phy_init_2p5g(data->regmap);
> -		break;
> -	default:
> -		return -EINVAL;
> -	}
> -
> -	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
> +	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
>  					     QSERDES_QMP_PLL + QSERDES_V5_COM_C_READY_STATUS,
>  					     QSERDES_COM_C_READY)) {
>  		dev_err(dev, "QSERDES_COM_C_READY_STATUS timed-out");
>  		return -ETIMEDOUT;
>  	}
> =20
> -	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
> +	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
>  					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
>  					     QSERDES_PCS_READY)) {
>  		dev_err(dev, "PCS_READY timed-out");
>  		return -ETIMEDOUT;
>  	}
> =20
> -	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
> +	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
>  					     QSERDES_PCS + QPHY_PCS_PCS_READY_STATUS,
>  					     QSERDES_PCS_SGMIIPHY_READY)) {
>  		dev_err(dev, "SGMIIPHY_READY timed-out");
>  		return -ETIMEDOUT;
>  	}
> =20
> -	if (qcom_dwmac_sgmii_phy_poll_status(data->regmap,
> +	if (qcom_dwmac_sgmii_phy_poll_status(regmap,
>  					     QSERDES_QMP_PLL + QSERDES_V5_COM_CMN_STATUS,
>  					     QSERDES_COM_C_PLL_LOCKED)) {
>  		dev_err(dev, "PLL Lock Status timed-out");
> @@ -277,6 +265,28 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy=
 *phy)
>  	return 0;
>  }
> =20
> +static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
> +{
> +	struct qcom_dwmac_sgmii_phy_data *data =3D phy_get_drvdata(phy);
> +	struct device *dev =3D phy->dev.parent;
> +
> +	switch (data->interface) {
> +	case PHY_INTERFACE_MODE_SGMII:
> +	case PHY_INTERFACE_MODE_1000BASEX:
> +		/* 1.25Gbps mode */
> +		qcom_dwmac_sgmii_phy_init_1g(data->regmap);
> +		break;
> +	case PHY_INTERFACE_MODE_2500BASEX:
> +		/* 3.125Gbps mode */
> +		qcom_dwmac_sgmii_phy_init_2p5g(data->regmap);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return qcom_dwmac_sgmii_phy_poll_sgmii_ready(dev, data->regmap);
> +}
> +
>  static int qcom_dwmac_sgmii_phy_power_on(struct phy *phy)
>  {
>  	struct qcom_dwmac_sgmii_phy_data *data =3D phy_get_drvdata(phy);
> @@ -374,6 +384,7 @@ static const struct regmap_config qcom_dwmac_sgmii_ph=
y_regmap_cfg =3D {
> =20
>  static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
>  {
> +	const struct qcom_dwmac_sgmii_phy_match_data *match_data;
>  	struct qcom_dwmac_sgmii_phy_data *data;
>  	struct device *dev =3D &pdev->dev;
>  	struct phy_provider *provider;
> @@ -385,7 +396,11 @@ static int qcom_dwmac_sgmii_phy_probe(struct platfor=
m_device *pdev)
>  	if (!data)
>  		return -ENOMEM;
> =20
> -	data->interface =3D PHY_INTERFACE_MODE_SGMII;
> +	match_data =3D device_get_match_data(dev);
> +	if (!match_data)
> +		return -EINVAL;
> +
> +	data->interface =3D match_data->default_interface;
> =20
>  	base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(base))
> @@ -419,8 +434,15 @@ static int qcom_dwmac_sgmii_phy_probe(struct platfor=
m_device *pdev)
>  	return 0;
>  }
> =20
> +static const struct qcom_dwmac_sgmii_phy_match_data sa8775p_match_data =
=3D {
> +	.default_interface =3D PHY_INTERFACE_MODE_SGMII,
> +};
> +
>  static const struct of_device_id qcom_dwmac_sgmii_phy_of_match[] =3D {
> -	{ .compatible =3D "qcom,sa8775p-dwmac-sgmii-phy" },
> +	{
> +		.compatible =3D "qcom,sa8775p-dwmac-sgmii-phy",
> +		.data =3D &sa8775p_match_data,
> +	},
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, qcom_dwmac_sgmii_phy_of_match);
>=20
> --=20
> 2.34.1
>=20

--yKk0FJ90Lp2MZhgF
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCarZ8AAAKCRA6cBh0uS2t
rEGCAQDcF3QGqllo5A0wikzR4QE2j/w+6DxZ8Xl8T35b1UK6mwEA7KQRxR7vSWuW
IIiZdgxaw+0xxfMCQqB3lH4occUf9Qc=
=EKj3
-----END PGP SIGNATURE-----

--yKk0FJ90Lp2MZhgF--


--===============7453361439402735255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7453361439402735255==--

