Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 082FCC369CB
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ekv45BkETJq1xeHaOEt5iO2QEaoNpJzIayj4Ls6TyUw=; b=Iy908CUAqH3wkW
	phsmgAI2wJUT7YvURH911LuHSNK+nhRLE4l6m0DyYQ57L1YPnSyYsF3FeNWyjGRhB1oansiMEuHEq
	B3p0WR3xbCoaQZsyxNeX4v6ceSswEcJ7Mr8wsuUK7hznnQl2xBdwURtV0jqymL5suG9C9wpCYbZph
	Jmb3UIe2U48ySOC/9nXxa+eBD++hAp3K0bZGTruoGTYsi3nol+IGbyXXvAZ2dD5N+eXcdqqXivEB1
	w8REywxpafJcrBCgkOQaBOs4PqnVcA8OrFvuNO74pdRblk3NQadZ88p6hKB2TEp7OcI4p+donrR21
	EU6zbCx0SnS2bTdqWFvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aXa-0000000Ai88-2pAq;
	Wed, 23 Apr 2025 13:53:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aBl-0000000AcB9-32re
	for linux-phy@lists.infradead.org;
	Wed, 23 Apr 2025 13:30:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAniuJ022438
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:30:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wj+FtiAGAkQ5P/5zChODPkrm
	ZAMKKPl/2U1Ld2vwF7E=; b=lln9v1Oc1wNdBAOcxgSa0NUOSO3GeARiFX0pWfBT
	TB72Ue87DJnryx3NjX+fkfljwpPeSHEttfHNXIMW0hMXfAWmCQz30Qfnr39qHxoj
	Lsz8T5pDCCM45mCE0VL7jq/tReu41HvWK7/F0k9p7WykLE8P6KYjRbdAbVTBQo7A
	RPpPQOoEZPn1+toa5OKpsOVAoTp02EWXjAQ2jnwOR+1nGzmnsNxXz5/jRHpWaMO6
	ZKUigtfJs+ZRGywq+p3Sl08dmcM8y4u+3rlYlzQjQ99zakY39vFtej73yslL+a4i
	J87Hg6K/1RRqiO4kV189DUnc/+QfgYfnPwl/yelkdOc3Ow==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh2a977-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 13:30:57 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3fdf9b1f172so1632458b6e.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Apr 2025 06:30:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745415056; x=1746019856;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wj+FtiAGAkQ5P/5zChODPkrmZAMKKPl/2U1Ld2vwF7E=;
        b=TwvskOHLw9KIwH85CZv4quGNLZauGkYDhmPOPHbs9oic+wYT/o1t/53GlyvqSvETTH
         mPnYUG1CWsX5hZPU/yicHZMo1Zu6LIHG6g9H2NrQ+cWXkFT/lrGpQaBXoM+iCHU2cti4
         Qru6St7+3RKdJy3dMvlexk+jpjC8X3cBdNvTdHu/RyFpzYTi6TE+lHqhDWeIg0FYAquQ
         rQ5p9yFO0DxkLxsg8M7js9er9bsF+8BGlWGUdV0SEw/37RBzoBn60h2j0Ks041pHF3dJ
         /I2808926YjDC0c4zEdhIB2TULfKPRttYoQCsT3r6l90p89i79cAerTXtQdEqPZUkkyt
         RddQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVJ52I4PwDSsLo/SV1JURGREKKRKoqKO7HllHvsAJ6CENodexUMKOdfkKhBozBncVBe6UYOW0EUE8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4kQIcufeAg+dYddx0fknnFIsSSIzZ2PWFqyKYiz1hlUiEE5GQ
	ePoZtUDgdSfd9x9eSTpNNL7pt6V1BvGM+qM5n9LCpx5LuYj4U3azEUYGm+U+vAruKkLcz188uzW
	EZRQ+p3F7ye0bjaXpVdgUJCQnItWeH8oFm1uGjLQHwK3hjaAtnIsbMGr089ses9ob
X-Gm-Gg: ASbGnctvkvhktM7q+LBK+zROQrIGWX2XDJsuY4Sdn7zl/ORDFG+Vo6Cof4cky4Ct238
	3pHNQi0tyMz/ASKfY0ctjbT+hiNbbZ2IOs9Xt60iwNWLpDUgnNLUe9mT4XOos67I5uiyqVs2CzB
	99eKbarJpIgbjLgsRKupA5dmAhbmzCXjBxh1aCFJz9tqN0fIPDrlMFHLOf5dpl3kj69AfmoMR6N
	EWNLcTftTV6J/cb53+EbgAaoZa18HvB9g2lXe2/mPAp8kDNCMqlaBfSOD4iiyeL+p47gXJ1zHl0
	Lrb/UJKxZ2DAl3E7TeZdX0HeSVniKMu/s03vqrx9IGNT4+n2O+K1x81fdILKoeVQCKf/SLVzVXI
	=
X-Received: by 2002:a05:6808:6a84:b0:400:fa6b:5dfb with SMTP id 5614622812f47-401c0ca677amr12197792b6e.36.1745415056317;
        Wed, 23 Apr 2025 06:30:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDEi3rdB2ep6R+cK4PHyu/fZwFAeRdF3OHYastR6zA3OEKUX6hMlxowo/Y01S4Kl8W7OZkVg==
X-Received: by 2002:a05:6808:6a84:b0:400:fa6b:5dfb with SMTP id 5614622812f47-401c0ca677amr12197723b6e.36.1745415055890;
        Wed, 23 Apr 2025 06:30:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3109084e434sm18283881fa.104.2025.04.23.06.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 06:30:54 -0700 (PDT)
Date: Wed, 23 Apr 2025 16:30:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
        David Wronek <david@mainlining.org>,
        Jens Reidel <adrian@mainlining.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
        linux-scsi@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-crypto@vger.kernel.org, linux-i2c@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, linux-remoteproc@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-hardening@vger.kernel.org,
        linux@mainlining.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 28/33] cpufreq: Add SM7150 to cpufreq-dt-platdev blocklist
Message-ID: <pywgehih5yrxbnzyjtufkh52xiuonsjv7wougvbauiw2yd3mpy@imcguzi5f7fm>
References: <20250422213137.80366-1-danila@jiaxyga.com>
 <20250422213137.80366-12-danila@jiaxyga.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422213137.80366-12-danila@jiaxyga.com>
X-Proofpoint-GUID: spbhCwzwm1O-5v0qafSoP_ijYoJSCofI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5NSBTYWx0ZWRfX0XYv5BLxzyBy 7PWzsINm9bck65dP97Rnm62eH5lxYVi7tmI2ixbDZGiJbl9dOfVo/X3KpCncNjJWQtPBTP0IbRB 5HpcSfEsGyXQeAZ8YlE6SPc+8y7iRSVOLaqvL64F6RHS5ZD1nNd4sA0C0CydcrIm1cfMWjq3PrK
 oSRgasUlj7buBh23UgwWlM3G4Q9DGO29wkNdpgpbJ5FXNMmXz3ffi4xoChaJT8gab4bXHZNmJTw EAeRxlUfMAxgFDf702yYWuBj053SxV+xPmMyb1zhqjydJKSITt0lQs7rnM7KRGBhqZP45Rjat8Q wFpk28N2l6Bo8SRxf+wcl9cP38qV31lP7xZNQSn6UUi6SbKvVUIJXUlyAaB1yfyuN2eEGILCfaI
 +4qvsjVvQkZBqzHlrEdz+v60GAw0840GFB8cjogS0csasZMYRA/KQpAGqDpRUTvLC6kGczTl
X-Authority-Analysis: v=2.4 cv=Tu/mhCXh c=1 sm=1 tr=0 ts=6808eb91 cx=c_pps a=4ztaESFFfuz8Af0l9swBwA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=7ibcVnAUAAAA:8 a=EUspDBNiAAAA:8 a=KMkCwTOw-m2sBZ1LepcA:9 a=CjuIK1q_8ugA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22 a=HywIFdX19-EX8Ph82vJO:22
X-Proofpoint-ORIG-GUID: spbhCwzwm1O-5v0qafSoP_ijYoJSCofI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 mlxlogscore=665 bulkscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250423_063057_776107_833DB49C 
X-CRM114-Status: GOOD (  15.93  )
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

On Wed, Apr 23, 2025 at 12:31:32AM +0300, Danila Tikhonov wrote:
> The Qualcomm SM7150 platform uses the qcom-cpufreq-hw driver, so add
> it to the cpufreq-dt-platdev driver's blocklist.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
