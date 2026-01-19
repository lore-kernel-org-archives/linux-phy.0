Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C935AD29C21
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 12:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0j2cNa/Uyd1deEfwY9P+UzwUT8C+Uw6fd9T8pPP6eRo=; b=cYwE/biq6hMc5/
	F5LtL0/Qb6qBqv3xoextTSr+QnJXiloLpmAZBbC0wWHElwHTnR2q1o3HfHkS6ax9M5enIrfHVd+pS
	7KLAmsIq1ek/rL4KNCNwC77AghNt7oS4n33drxL6zci4Z4B0w6c4IhuVNJcNZs55H90eP4OUQ3uWw
	ZvpHXntI3FVK8P+orQyJQ7q1VRdlvFnUPGsfv5oXHtDsFbeIJMK3cTUKPpXRla+itaO1ZPJMntGeK
	QftbYcRviOBAUgddhxWgB5bnS18H4UUpGo+/e8iCuZzqLLkmyBpNFAxAusN1v+Rmcf6n9u2VIcBX+
	cnOlcXMl+ZKr7kjIwP9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhont-000000026Zy-3yK5;
	Mon, 19 Jan 2026 12:56:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhonY-000000026Y4-2aQh
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 12:56:08 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JAJxK11531420
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 12:56:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DKqrhLXRipHTX2o/kMbissJ+
	QS7u/kS1j63CzCsZxCM=; b=E6X5IIB8GKBbzMijLAfpPFRs88SAqdEssKIlsXde
	I6CcnTKimZA0mK7ndQp4qHnNP0E7Dk0avi1gM6V5WAOMY/XM3aSH9/bGjaBt5Yk5
	vBfw09nzBCKJGa2OxTSOOobc9yeTr8w9QMNnP1vi571Yjq/OLwlRiRbxYGPNIyES
	onxS2TbeLnCeod0VQ9bUHevv3M1ptYWT5vkgC2KmlOBh0xzP+Ww5sVwRSwLCKjX1
	0tmB0QwHedXFoleJeZnOnU5vr788+HLXDpzK75t24VSzbY/C6RzmV4zvjjxWrvY0
	lZaDbn/Cx2jXOsengOQDkxp9JiHp8ZfjgqQGUgB2PXodMw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjrxrdpc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 12:55:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52d3be24cso543029585a.0
        for <linux-phy@lists.infradead.org>; Mon, 19 Jan 2026 04:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768827359; x=1769432159; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DKqrhLXRipHTX2o/kMbissJ+QS7u/kS1j63CzCsZxCM=;
        b=BruG3uFtiWBqij22RwZUAWaOHo6VZl6urq+4mVZUkPucmf4j3HCoa/ChAeD5gdYjSN
         DXx+mJCqVUfI64EaArJXQXo1QBHhalxT0l6EkrUkJKZGbpnh7OBzaCMaqCgwWyQI71Gc
         Z0VUuHhG3SfLURSlKqGb2WLzJ7jtW8BHLi7mrJCSyUmGrgirSvEbKNQ7uWopHw2oN7Sb
         VK6sVaSG2INMqb2F1bO6xDZQZEOzqjrWOuEbS4Sct3RgV2qaVUPBpxjcrZRfbRfZxwst
         F26Hj09zXwPjyd1wHWQx3SJyqlnKITF6Gy2lQdg/h9Gj3zAEuMJyUtLZP3yIZRlAaZwk
         CYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768827359; x=1769432159;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DKqrhLXRipHTX2o/kMbissJ+QS7u/kS1j63CzCsZxCM=;
        b=C86Gs6ifNuxdo+im81lqHNyqgJgHb2EiJ+U4SXTUsQf5Uyou7YQdHQ3smvkCT7Ax8d
         CogikjzX0lpChQkkaGkh6YKeHrsJn/6tcKeTXPbF3F+3PQVU5XnFNe9rlFSr3NGGvcEN
         vPBBUQs0gA7egUZsWHsTEVvubTAEdeNYjdDk/eZR9PJZXNngYbSEB4nNwTuV2OcZ/p+/
         y1o+6p/Z/RT5x0FO7sCi7JZt46K4zC2GEWxf9RONQEHM+tAC8DiH4cS0WyIYxxLLNtnh
         HA/28hlRPmoedXMGIlECMI+4JrXwGO7WSs6HbLHuW6NzftNUAD6OsQ1z3k+uffpMX9Tc
         Ea7g==
X-Forwarded-Encrypted: i=1; AJvYcCWc2Rzc+u/ujKm7MiLe7xBpYdwjYivZo2yTdrTuYYNsuhpCoOa6ex4dR+QYj4F/SuINV2b2Qu5+gwg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKHs9cXFkjRcSzwbx7+JIxXcCQJmVSV5ObVCY0Ji4DTVlWB7PN
	BiTgH+S4O/4znvrdSpF24rOeDscnUKYDC9mfDwAaHu/OiwLP/QlqlSlnNOHL7ev5YE1FSqH12gd
	kkUWII9qwmHyZMz62Svp6xUqpQOzeuG0sOO4Iy7gGIy7C4zYrImK7GuWnVs/WFQaxVtbd6L86W6
	oXd2g=
X-Gm-Gg: AY/fxX5b+0JWpxuqHgB3RreZK842BcHnXxJoIcgcRMICAhAjB4A/ipKoOdmIj+Bntq3
	Dx5d131k70uLdjw6DSOOxQ+ZZ4P+ZU9DIg1rvdmAv+eVca7lhnu3mSX7Hk5SxPGL2ftmBytgIkG
	uKbWUcCHRo6ems2QSI9Y8CKl6jmSJPYTiMC2NUP2Ag/GPsOeYa4+VhOBowWoaNtj0bYbeZs9PEb
	9VHvxNGbAfabOWDRnzO+cdhMCS2qERFJfRGvro74VXiLHYyL5rj5StHFR7GNIyImoshz9npJ9A6
	E25FrbmlYEw8g1PycRG1tdLzW85qDGCB3R3TUwDxQAXDwG3x6FeKbC2NR0teINOZFMdWiTrImcE
	D8VqGjpomfMs6lrxYUOkMwAV6gp1ttMG/jm37nGXK79500vvPNkTL2uRU3cKGKDPx8+hAkAFwMw
	fFcyZ6FC9YjCGsB6nF+HzpWi8=
X-Received: by 2002:a05:620a:4445:b0:8c6:aeff:4002 with SMTP id af79cd13be357-8c6aeff4005mr1258257885a.81.1768827358687;
        Mon, 19 Jan 2026 04:55:58 -0800 (PST)
X-Received: by 2002:a05:620a:4445:b0:8c6:aeff:4002 with SMTP id af79cd13be357-8c6aeff4005mr1258255285a.81.1768827358183;
        Mon, 19 Jan 2026 04:55:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c3a0sm3269087e87.81.2026.01.19.04.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 04:55:56 -0800 (PST)
Date: Mon, 19 Jan 2026 14:55:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2] drm/msm/dp: Correct LeMans/Monaco DP phy
 Swing/Emphasis setting
Message-ID: <47skckagggxijdhinmmibtrd3dydixtj6pccrgjwyczs7bj2te@2rq2iprmzvyf>
References: <20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260119-klm_dpphy-v2-1-52252190940b@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEwNiBTYWx0ZWRfXybxy29qIjRwc
 b/vN9Jvm9jk/B6rsj8erS4ck1NZWbjD3PLTS3w+8TmszeXqVv84Jdow0/tpwCUDMxQyb/woV+mI
 4XkgU/WOghnzol2jM9Lygaos6O+9JZkyOmjceYenki253DRPIeHgDmtVCEtiR5FjrcWjlhoy13j
 Pd/sFlrKQ5rd6QA/gQJeMFR7bM27y7DzW7FM5/s24ct8kEA9qNiqFNeBV3oNoiFrCAnDPtfslbf
 MD0VX2FuZpYX+j5ePeZoS7KF7+Fg5cxktgZMQR23Fyg+RckheV6Uq6iAJU7f9xL18p/Zxs2umYQ
 ETJd/RRqAurbyEqUsDKi7zxroiLUPm9az8FyV0XJm1oJfgLLcuGnxwoYQMKbjUHa5jzAaRyTAmf
 w7WBHQq+oJLLIybO13k7b+9PNLDu6Yoh5YrUT6L8GYTDmZENDF66RMPW7DE9Kj8Gjkd69o6Bt0y
 lxA4IX68+P7YwsPT8KA==
X-Proofpoint-GUID: mAkAWjCQXp7SMYd4KB45zP3YerswjyDO
X-Authority-Analysis: v=2.4 cv=PPUCOPqC c=1 sm=1 tr=0 ts=696e29df cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=YA03fZz7SpFxgGhAhAYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: mAkAWjCQXp7SMYd4KB45zP3YerswjyDO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 adultscore=0 spamscore=0 bulkscore=0 suspectscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_045603_619737_8A1E57E1 
X-CRM114-Status: GOOD (  16.36  )
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

On Mon, Jan 19, 2026 at 08:37:20PM +0800, Yongxing Mou wrote:
> Currently, the LeMans/Monaco devices and their derivative platforms
> operate in DP mode rather than eDP mode. Per the PHY HPG, the Swing and
> Emphasis settings need to be corrected to the proper values.

No, they need to be configured dynamically. I wrote earlier that the
driver needs refactoring. 

> 
> This will help achieve successful link training on some dongles.
> 
> Cc: stable@vger.kernel.org
> Fixes: 3f12bf16213c ("phy: qcom: edp: Add support for eDP PHY on SA8775P")
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
> Changes in v2:
> - Separate the LDO change out.[Konrad][Dmitry]
> - Modify the commit message.[Dmitry]
> - Link to v1: https://lore.kernel.org/r/20260109-klm_dpphy-v1-1-a6b6abe382de@oss.qualcomm.com
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
