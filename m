Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CF57C88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 21:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8qcMJDws7W8bdkdZ769XDexvKEccS5R/Xvumzpu8r8=; b=OGmDlyL4GdiFTu
	Zb19OgFZGLw2UQEL5xLOafaIm50IXC8gD7GAR515PQZwJ2r+u5fTnusC2HrJaRgm55dulHUKyMbYz
	Hb/mKWaI2GLm6Krh5gQe3y4+C9MOlNqdVyDDoxn1TyyK3D3ajw5wrXsnpVF74Vr3SaZOR59OWk+7d
	ATMrq9OKSDTqLYWdSCAJJ/zgid/ADX4paS0NKQ+wQTOWneieE84M2yb95LnuUr4Eeaqw6fS4w1ZUX
	QyN7F/VcdFKdGosf3J5Rinc4DgBmZKbfq1Xhf91INLsHgpzv8T90E9OFCQAoeYo6dmaSNEDbPGTTj
	UjhD2D0qAbT0MSApOlTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5rs6-000000023OU-1d2l;
	Sun, 13 Sep 2026 21:36:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5rs3-000000023O7-0YKR
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 21:36:20 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DLF7QX3672710
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 21:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9NG7m+b/WWrUHSwlQRSzFSoC
	lkdz/Noo7KR5PJVocI4=; b=QSUM0FhHkfoqqdMnY5xBavLUZPk3Qo9KSi7TSrkr
	Xta+weX9GGY2ETDqc/xbTVhwC99LoLS1f5UJsuj/WO3/q1C24LACOSV+uC/OPZ55
	p849UZPa85VwwQw1zvrFCzq8dgAGHFbyfJd3NMEPQm7kEe/yhqlieYcdKc8pihtz
	yALsgRouBTSWUsATaEqySYFRtnGvjzNavsVHsEUhwPKe90AJzSs6L1ElnZoThTle
	KacV0ja7EKeRcf2bS6gdYGwSM3p5wg1LyNxuaVxinBYO6Zd6Ujb/vkHDv/LTh7AV
	zaQyWNF5OQAG/AM2JHCdizdBGIQVO24mo3G6lbiXlF46Dw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gp3k0816h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 21:36:17 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-980989f5030so2256387241.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789335376; x=1789940176; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=9NG7m+b/WWrUHSwlQRSzFSoClkdz/Noo7KR5PJVocI4=;
        b=kcCjmufa7mpGeFdxLk6ruaXqF/m+Zt4LKojcrHbiJVjLxQYcLWXqcbNnNDQbN1X/Mi
         ay3KmEA31rb8RPt8dALka6hWQ+QHuuz+XLwGytCR8WfjykTaD0VEyBw84aUa2GsVWiTe
         P14N7shcmsQoXv9uIQTUSoMyxssdoc52trr/QvGgycJmF7l9WBslh1sa7q7QeiwXmXo1
         iO7TIKrLEq0+FjTSIIk2BMRwJB7Pjkm97Sj74RrYq8a2BJXkwBD0k/VrA7T2RzufIl+e
         z8JOiQuKH2yBsfM24PL+ntzWroyMJXdxxOWUz72vkP9ZDaFSeu80cmKF4VDCpcCNb8zj
         glzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789335376; x=1789940176;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9NG7m+b/WWrUHSwlQRSzFSoClkdz/Noo7KR5PJVocI4=;
        b=ZFORAV80w/s5D2Oq1EuBEEiCPzBvHgtJReVjv+wIzUgKj35hnbzkXAsAbhk8O3BYjE
         te3baihdkNIo3hP0HTNvDuejJOY4EQmfmc3HU0Aoupo2pYOQgFS41JBeOcOek/Aaax5L
         BuylgfnOIcsVXPtsPf+VvDv4HBTEeHh+lNuWWeOqes+IOaowZU9GMmXhknTrHRsLzsud
         hfrvWDccrrQaHEquayQvOfAEVFGIfnVh/ypdXJqQDTWmSjI4Mv8hUjEGFZxabM0tfeJp
         TlVMUWskFuSnxApl7BFZEpqspMRv3ak7kSbKXiVOTNb+10PmDLdkuz16PBUoe9PWEehV
         g+xQ==
X-Forwarded-Encrypted: i=1; AKwUvBwccxIrvje/S8bEMI4MX62hOYEEWFJHzbMT5hwe03bZxbakuZ+gWpZ5Ox3JTfiAwY4VzVrMABa0dGE=@lists.infradead.org
X-Gm-Message-State: AFuF++m2R94NgxUgMx7fRf30SGWjIZdTQh/qQQVjoKouLX0sJqKZYeF3
	IlXWqrsXVlU8lMN5GBshIoPSkHZYIiucg8hK9bGIKxW7G/yZsul3P4+J5NWzmfgY5V89oGYuBtH
	0CX81ZkbygKJCVK2fPPX40uSUFZqoIqy0UU7EQMEG3CHhkaS31IZ4oj4c1BVX9dI3N5K3
X-Gm-Gg: AYBFou3Vd9YLTfm81pif9sq4I0K6ptDM+QpPyrUcy3vJkUz4e+Th1Qz4cwnFXXmR89g
	rNVgaIehLCsgYF/oqWsMeDp6nuoN9Hd1nc60j8J59mNf6XVJeQSMJ9U8ZjP0t8zc//DlMA0Dhvz
	KaihDPs5IB+4lZwOBEVrMuIfngi64AcHtaAe2UnaurHdMNnC/qSbVGCbd5+iYt7ehRsVJ4ZLzSK
	vyHDCt8T+vNTxZ7wF+uUndu7yTB23fSIQoRWJnrepAXc5OTrC9P/qXWGYPvyjAijQFT4xQ6jte4
	ro0tEhnh2soEx71BZYNnOBH1hdKpvIO8peNQmZ0iGg+7MmNJAydeD7MpyDknU8Uhq0Uh8w7g1o7
	YCR297127Q5U1P/Dck95odG6tzFXL7cfzURA2CacoWZUL55WQ63MLilxtVfQ2o+qTpvPE5/f6Vt
	F4kPE0ks7FgDCb
X-Received: by 2002:a05:6102:8309:b0:785:c960:ff85 with SMTP id ada2fe7eead31-792a96ab51cmr10976042137.7.1789335376493;
        Sun, 13 Sep 2026 14:36:16 -0700 (PDT)
X-Received: by 2002:a05:6102:8309:b0:785:c960:ff85 with SMTP id ada2fe7eead31-792a96ab51cmr10976019137.7.1789335376094;
        Sun, 13 Sep 2026 14:36:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a03a88a5sm1937493e87.8.2026.09.13.14.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 14:36:13 -0700 (PDT)
Date: Mon, 14 Sep 2026 00:36:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <quic_riteshk@quicinc.com>,
        Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>,
        Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 1/4] phy: qcom: qmp-combo: delay Type-C mux switch while
 DP PHY is initializing
Message-ID: <glm3mcwzq3uawbexxaggbqwkatudk3jrunnz5rwbp6gg5kcvm5@xbpqetiznnk5>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-1-2825e5bf8a96@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-1-2825e5bf8a96@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDMwOCBTYWx0ZWRfX4Kg0+5nVZKcl
 TQ5fsZlEs6MMJBpk09mjWWsJvL05paTbT1eiTP2uect1Vtdv6KfsDBIFJzU7NE6SnL4X7+fuT+p
 61tk714+h/ZuLdDsWZ4r8uWU0uRFLis=
X-Proofpoint-GUID: oFaC5JU7pYD1yOsNt3vy8csPSrloAsU3
X-Proofpoint-ORIG-GUID: oFaC5JU7pYD1yOsNt3vy8csPSrloAsU3
X-Authority-Analysis: v=2.4 cv=BtAIUoX5 c=1 sm=1 tr=0 ts=6aa71751 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=nEuW5l_y3reV5ifXg-kA:9 a=CjuIK1q_8ugA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDMwOCBTYWx0ZWRfX56YOsVVkAKMP
 uWkehXEzFX5ANvXYYxBSNu++kbR5+U5xE0d0cU69VA0WqPxg7bc4kzS4m2rRJA8SChfvQxVjfTk
 mKVpeoZ1MJoDTZ601vqsTWTXlyMtdCHL/5Qcl8bI9H+6KC45ZRNL7QHyETbO3VIcxu6ImgNX2uJ
 7S0wsXWzJfgvDTNbSDArrAm/haZOZXb6GIoR0GqwSoXZ1wh+4o50Cix+Dh9HaPZAr/f/lgd0hkL
 mtGN3Nr9mePMeH9nMaQrKaj4bOaIlPL9YJXkzWzPqNgPnk1mERO7A90k0u3scX23/qm0mCPWo2b
 X1f3e3zHvqgIWbIv95rwIyUXOicFDKDKqBwCfEZYhJR4PvKubgAdnqb8JVRjlQdnKUy4XUfHBAQ
 4ojZsDbKQXXvNRouzE+UMQ4DQWWeUZnJvLCYys0dm4rlumG7RyR2TrZlyPTQtM2k1J+PiXhf1So
 oeWi8QYfMzi/NlA2QNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130308
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_143619_189022_6A042B7C 
X-CRM114-Status: GOOD (  16.71  )
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

On Mon, Aug 24, 2026 at 04:58:04PM +0530, Saurabh Anand wrote:
> The Type-C mux switch guard only checked dp_powered_on, which is set in
> qmp_combo_dp_power_on(). However there is a race window between
> qmp_combo_dp_init() and qmp_combo_dp_power_on() during which dp_init_count
> is non-zero but dp_powered_on is still false. A Type-C orientation change
> arriving in this window would proceed with the mux switch while the DP PHY
> is mid-initialization, corrupting the PHY state.
> 
> Extend the guard to also block the mux switch when dp_init_count is
> non-zero, covering the full period from dp_init through dp_power_on.
> 
> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

If it's a race, it usually means you need a lock. Otherwise you can
still read the incorrect value of the variable.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
