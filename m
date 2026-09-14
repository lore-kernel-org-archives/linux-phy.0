Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F285DC88E5C
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 00:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRMgpaPltW/EFLCfcCl0a0+UG6sCzNucwzDx29DAuxU=; b=l2eQF/jpjgEbAD
	dTiZ0ceLQapf210hRMvKYIZQQ45Dcilr5w9ocLCLiLo1Jrqe+0x0xGQJn23NfiVElRDdCJA1tQ1dH
	7AEFx0SatUhkQLkV+kCHqUwysFgjaWtkLxawIlda8j848gzZcpZWRX0mTJh/yh0LuJVxw0kg7Vlfa
	dIKEHIq5zrGxutZC9R0LsrncR94XfJPQJdqdsQER/HtOL5TMfI2aTH0k/FMD9BgM0gjf9zSo2L7xf
	o9mb4Hmus6X5jeFDSwDI1Ju3x1BLBBrnd6WVZMjiWVOlHaYQPTS9WRDPlyND1O6oHyFLgXX/ot4sw
	aDAn7mUIfCnQnAm4dg1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uE4-000000027ES-2k6V;
	Mon, 14 Sep 2026 00:07:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uDy-000000027E4-4AMm
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 00:07:10 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E06Ywk082294
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:07:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mB2tXTYElK9wlaDpsNW/VGIQ
	GRoWVlamEFnm6tcQN2A=; b=a2sP1jSc+J8gb/HzYw5SU4wOvQdqSxXUqCXrRPH2
	qnS85EY12kfioFFdLIj2ySXvcdZUx3jyETjnqDmZ21YwAFPE8ffKMxQhcQS/TcQf
	qDYKU1qR4zkaCWNyS7tRZdXe9iTaMCf9u7rrYTdpp9wNjZWr7Usjaivtg2RQ/TmV
	OPUSgsK4fus+rapk4i4ithO0ySwxxooISnAli+ScWpUcIMO4I5A16CqcD3d/GXev
	5Ff9CgGsSfea8yV3mVttfSEJSjeScwH1XkyK+mNqFf1G+VplsQN60ga1Qy4oc0M9
	iIszyybic4wIrgx47s05tgONvXRfa6rjky8prJ82NHHAFA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9cmd0h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:07:05 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9806535f8ffso3135036241.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 17:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789344425; x=1789949225; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mB2tXTYElK9wlaDpsNW/VGIQGRoWVlamEFnm6tcQN2A=;
        b=U0Tl0kypremU12FDGrm5OcVSgHS86GWvQ0kzpzunwvLQVan40GL7SWRQD6ZFJ7TnkF
         QCURI1c+AXFNaB4m+oGXdAoT5X58V8ELxzw3Rtjwz5kFR7Tiafc5vDIUzC0G1wlqACJ+
         G8eWMzA4jIoGFPoDNCxVdcoUd6KjfAos1bviOkMaUPsOry/o39fzbkaG8UpH2nySndy1
         zju6EMxmrERWQVeH/YnMwwRHMjuwGw+iqeIS71XSnJaer05Cn3ZNbJZ5hdO3G3uckt07
         NbV4q50tvzgcyT1D4KVWEcFwqVuJvOFMQpYsZmSPwMOVa8Zba5SkIIb28yzf5aTPZC1l
         Fqhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789344425; x=1789949225;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mB2tXTYElK9wlaDpsNW/VGIQGRoWVlamEFnm6tcQN2A=;
        b=CgHRV4wdXtsctTV0pKbmlbzi/kj0lmsPICsTb0KyH3WHTg3Z1ULDbwjY6xuDICD2Ul
         31fjO5wMVlQykFbhgkjsDyTIt7dMkpX8zDiLPuOC562zLKJEjQcezvSmDZZu0ICKvY5/
         yA3jOkinMzjoZjKiG+P1CB4AJH1Kfs59Hrr0AM/klL3pg5ld73vVfQ7bm5skwDKzLbCw
         wbWqlJ4MWT7j89ZBPXSt6r34il6LH5AaskuUr+MAb5mjDMn5JdEOk/V66Zv1aXKwwGgC
         6HDuAq14y37nOwZxjw4Lh/rF1jfucCVcYCtWJDWeguPqWRMPZNt/Er+PikcVNk6KEqH/
         KGIA==
X-Forwarded-Encrypted: i=1; AKwUvBzkB3Kma/k4K0hdsEk0XBJ2/RAU/9+Pdt1Od6ukK/qcuOGzLgTG4+fw+yOAEa4Ns/2YfzoOjGpP28w=@lists.infradead.org
X-Gm-Message-State: AFuF++mJBr41KJ311nhlTs81rAvHiBZ84QBNypkUiFI7PSGbXBxBwMhY
	kP1iWVJE5CAenIlLGXH6ASyTf9ngeq/KeSFNqpZfxDOsAh5cbLGHDlG98HvdecDd1i8kYlez4yE
	GZ2fCWTDPMBUgNBwkyqP8my1BcZWP0dxKub9E02OH+dcuVM/NwuhQnAPRVv3rbZPUWo/V
X-Gm-Gg: AYBFou2GXUpqhahcSR3aSVTczoWuzGSZiW5A8aPgUjs4BRSwJyMncwssujTFvQCPBsE
	9einWkyPQxmHwpR3L9ucoKpcwD+tNkgoxtEcxL1UZALE0XXtAfz8UKubJK/DMGyXumQEnUnx2Qz
	YO31vkkijfZsv4t7uvY/1vHc9DC5duv+PkHldJ87CN5zqRYqf4M0WNqYQRlWhwInt6HLGoSjGmx
	BXXESa+bfjarWzZnOQ9Fmj+HmKtHxtmC0wYVi2Hn4xHBr3uhI3t4+nzR8sN4SUzDoYUkwoy3cih
	kU4gzyUVKUhrtM8IfljSOi807NLX9B6pK+HzIvzst1Oubmdrcx1LmmjLtnXUk12q3rad9G+miQQ
	WUN/551hxgc8aKyyX0M9SESubDZ94MqJXf25xpm4X1ZfDd9x2yqcE2YBImypbfq0KRBbQRdiAQu
	DyZNCblei13pdf
X-Received: by 2002:a05:6102:638a:10b0:780:c9c:bfcd with SMTP id ada2fe7eead31-79894637907mr734633137.17.1789344424888;
        Sun, 13 Sep 2026 17:07:04 -0700 (PDT)
X-Received: by 2002:a05:6102:638a:10b0:780:c9c:bfcd with SMTP id ada2fe7eead31-79894637907mr734605137.17.1789344424487;
        Sun, 13 Sep 2026 17:07:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a045726fsm2036893e87.20.2026.09.13.17.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 17:07:03 -0700 (PDT)
Date: Mon, 14 Sep 2026 03:07:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 11/17] phy: qcom: edp: Add Nord PHY power-on and reset
 state-machine callbacks
Message-ID: <53h45tzuwxcpa3dgto5jcpc74hpeifzuhdjwvwlgsbvkxaxlcg@p2p5rciv3e2g>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-11-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-11-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDAwMCBTYWx0ZWRfX4di8YwDK9LVV
 l34FKpRD5MA3+rOpzlVjiZL2aVTKuBEqdO5kIqVuhINKQYXpJ3nqdi3KigMP7jYVyJdg0rGcArZ
 K7LCZ3/JOiAtc8hm0O4Q3XZbIAW5HNxtH5bq34m22uhH9TAu3TKwz/PIeq0J38U6vvsRvpDjJPb
 N8MLdguo/72JJetnqy96DIUuZhj7FG89wdok23x0AR6BqahYfPNcCV0kdbBj/SElacakUpuaK4J
 Js5Beafg/bfXzDFef4IOngXsGjNHyfSoNN2yf2GRfGeOqD3om7wImT7/SEEzABz48NGIsJGcqp7
 mX7JaxkvQxlr7hHczqDb6LXMMS0q+9rB7663rG3W2s5j7FyypvXMFLJxJ0Hkavv/ACIvWyC+ZD9
 jAZndWo43BcTtAbPcKzVKqKtuM07a2Znl8993BM3L9Ak2rd4o5Z5GPFqFza0lMr1rXABy8WkHgA
 tJDxben2DsNPh234eIA==
X-Authority-Analysis: v=2.4 cv=EMyTQFZC c=1 sm=1 tr=0 ts=6aa73aaa cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=2o1v5Kz8aWF9ZuGQiYsA:9 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDAwMCBTYWx0ZWRfX+9qw037XCb4L
 fhwnZ0v3JOiMmjxnQG9K5XVTWn/zwnSXGINR0/New0yapqBxtWcjlSK3xW2zor4A+5BWUdNxnWp
 +VIiKAyD2018uK4FgZRN5qOBvrXIBIM=
X-Proofpoint-GUID: HPg3NPAid38bWeUwSTW1rAxNaOdGoUpE
X-Proofpoint-ORIG-GUID: HPg3NPAid38bWeUwSTW1rAxNaOdGoUpE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_08,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609140000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_170707_044996_E04C26AF 
X-CRM114-Status: GOOD (  21.21  )
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

On Fri, Sep 11, 2026 at 09:06:42PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord relocates the QSERDES COM CMN_STATUS and C_READY_STATUS registers
> so the generic sequences cannot be reused.  Add
> qcom_edp_phy_power_on_nord() which powers down all lanes and polls
> CMN_STATUS_NORD (0x1d0), and qcom_edp_phy_com_resetsm_cntrl_nord()
> which triggers the reset SM and polls C_READY_STATUS_NORD (0x1f8).

If the only difference is the register address, please use register maps
instead.

> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 64878398f43c..6cac4b55b66f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1612,6 +1612,31 @@ static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
>  };
>  
>  
> +static int qcom_edp_phy_power_on_nord(const struct qcom_edp *edp)
> +{
> +	u32 val;
> +
> +	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> +	       edp->edp + DP_PHY_PD_CTL);
> +	writel(0xfc, edp->edp + DP_PHY_MODE);
> +
> +	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_CMN_STATUS_NORD,
> +				 val, val & BIT(7), 5, 200);
> +}
> +
> +static int qcom_edp_phy_com_resetsm_cntrl_nord(const struct qcom_edp *edp)
> +{
> +	u32 val;
> +
> +	writel(0x20, edp->pll + DP_QSERDES_V8_COM_RESETSM_CNTRL);
> +
> +	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_C_READY_STATUS_NORD,
> +				 val, val & BIT(0), 500, 10000);
> +}
> +
> +
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
>  	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
>  	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
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
