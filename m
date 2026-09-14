Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F5BAC88E50
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 08:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNnXq13cKDcWHEuFPTGjj6u2dXZNrB9RGvJp/OY6h60=; b=Moz7zUhdovtqSi
	yqQVkB98zpOukRvsireNhKLLq/lhZzzmKsvuOfgV1v0lj/wL5P8+8o5ZGl07+XHTW53dC91SONU+2
	sttG1QU99JlwYyug3APevM4STL4ARl5UOM4Iqk3oi/F2pp56KseGXfzJkYe9QNXlK45ubueQCCG07
	LxcmtUF3rEZsNN129urIvyVaq6MugyqkLA28tU+kXugh6pxp5mtGPXI3ljKWhKcCu29BoGKRiokwn
	VcqsY16v2xN5vSoDsbq8Y89dhfgMIfkZhUtBOGaJdUx7mMW/OTTCKaCQ2ZpxFKmW23FilpoIab7S+
	7d3EduE6Dc1mD9HNhXCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61jd-00000002fHO-3lgU;
	Mon, 14 Sep 2026 08:08:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61ja-00000002fGv-2oL6
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 08:08:17 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E5j4hJ063677
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 08:08:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LrqX32EnO3d4Uq7N4G8r4oWD6xf4vvdnOcV1PMGcjmU=; b=imN5fpI9OinQuYhs
	Zm681p87GeCmBBbnNrsmV+rIMI3TIs9DAG63YrWCk4+cv0xplTeOssEsSTDfC3gf
	FCNFkRpVuiiMue+2+16QSY29pGduwe4c/flZYQiz319NL316w0em1y4KIKl06OL/
	u2MXHvKc5c56927lq1UFY9JfkW6h+5Y+Z0U3tTjODp0iBg3MFfp6HGTpyanRduDA
	i3eyhMEZ8GiqvjdxD6f8NIqJOlbILvDpmPHlps9/YS8PZiZtAVCBD+s+XXO1GUHs
	xh3zfbtYP708s+YalzI0KsFeFwZirB9r+Hw/RW+tNtajftA+MONIeBeMqbQgbWRN
	B6AEvA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9dnq6w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 08:08:13 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-90e921f84a2so6596606d6.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 01:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789373293; x=1789978093; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LrqX32EnO3d4Uq7N4G8r4oWD6xf4vvdnOcV1PMGcjmU=;
        b=P9K8zLz+WHnFOt2aYeKp3u5+qWtwlSegKHVEEig6D7xVfcV4e3wlmunmzVaDPAPw2W
         tGCzZBNK9eHivksv9HsfQFFkesptyBbBkfbM+wK+VytPWLV2r5Uuyj87o4zqFbQ21h+R
         FOaRjDcxDqYzS8CKP2O58ipgJ0DO1H0934JA7OSaotLP1N1sc3XSG+jqggOrKnJkiz6k
         RLrtHE9Sx6UtW0osKIKkgUg9gUM25cgfNkmTTYmkXwhkeX6YJ58Bfb8Sn1tI27Ba9rEf
         Z4BLPsTP3AGYUcJLrAuBqWzD8E3s7grrhTIRFiz+VYKzuNrRuveSWdEVMnjJ8EJzdLKQ
         Prdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789373293; x=1789978093;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LrqX32EnO3d4Uq7N4G8r4oWD6xf4vvdnOcV1PMGcjmU=;
        b=CrIzCX7s3pTTri8GoEX/dkOurWanlpFSHVTDYjnKNxYoQoUTH0DYJb2wMooWwzKvxO
         CGheQCJfYi+0iMy41noZ7XkEeAAL75A5mA+YX4THiJw/bzOr3t3HfEjSN4RucIHtkZIX
         pX6SopP+iJN9vxmfcxJVgx3o+rEyotOuJqzc/MA0iYSZ3fPvwYt+BDwqP8GFRBT+C5ZO
         Ign9CNKWdeZggfnGYORZU7qewGq2Mf2T8qm/UT7AKAM4j4Q1PBKhd0b0UinlaRict/mh
         JweEA8FuGAvr871W2LddukPialkKiO2iSTUStkUe0eXeCnwZMRpdPYR+GoDSd6tUyv3C
         smHg==
X-Forwarded-Encrypted: i=1; AKwUvBxPPN8vno3LlyyULCxByEnQvztEN0CLYsfVYEj5vJw1T9CLl1YSmtLzn69E5CBF6WrQRYqspwFTeJA=@lists.infradead.org
X-Gm-Message-State: AFuF++me0mmrbhsN+LY94RBxp+rQXuTSDTHvMcwkrvYTNAcsJt9pKwhI
	dExQb0PbbRxFYSxVjPRx9qbqy+Oig+6+ocKh3GwtX5959279tUUR8jIfPdj7169oQzAvczTsHer
	VZoOo/9gfkOxMig5VAE5AhGt3YiUEHRAU0wfqbFpRv0q3+XeQPYZC4s4UDQoHqYPaEdJA
X-Gm-Gg: AYBFou3d/1kVVRVh25+Xnjmpv7YujP2LsNrISQT9lqRf81tdcL0qUWIwMlfSSSGisxI
	fdO1Gamp87cxttObWxbJK2lgUumcb4itlbxZcsGXX95roLSyZf7TXh6SjP2LKehvDrjcptRnFkY
	aqeo5MnP93eJVYcKsrxAVNnh1BwtDDmUX3PS51ipFraoAL+f/0vs8cpF4khv0mEZYiEpUv9Ifqy
	PUvpkAlvOy5TXXD7d4MLNgVNYZzr4vwRj7RsgOMsjT7Yj7Qljr0bxuaTpLq7vcM5qvGnhvIm2Hw
	/lkrmI80yD8r/+1rxZYLcmPNjXh8dLb2HK61iBD0Jc+HkE2wJ6/UVGUcm2nudYdldiNPDlvhy4Y
	nwu98W/f1WLbw47JziJkXGA==
X-Received: by 2002:a05:6214:410b:b0:90e:9616:d7ac with SMTP id 6a1803df08f44-9122e67e91dmr18605896d6.4.1789373293006;
        Mon, 14 Sep 2026 01:08:13 -0700 (PDT)
X-Received: by 2002:a05:6214:410b:b0:90e:9616:d7ac with SMTP id 6a1803df08f44-9122e67e91dmr18605436d6.4.1789373292507;
        Mon, 14 Sep 2026 01:08:12 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2966067345sm391067666b.32.2026.09.14.01.08.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 01:08:11 -0700 (PDT)
Message-ID: <d9671bb6-9924-4b37-bd7c-de9e343e6f4e@oss.qualcomm.com>
Date: Mon, 14 Sep 2026 10:08:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/17] phy: qcom: edp: Add Nord PHY power-on and reset
 state-machine callbacks
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-11-e25c073cf1b6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-11-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDExNCBTYWx0ZWRfXxpXhZtKpfMgI
 Sfh/iED6qceOYsaqgFUHhBm4uZ2IN4Y3uAky5ySz8HP4G8hBXmqGhGuw3a2EmfQ5FRXoVMV3bUU
 nnB2z6T1BKnWYJxBTwPBOWb2TnvNJNI6EG8QAHXzzv492EmgJb+H+Z0Ylr5UhQpvhk3bZ7UzOqa
 JkFG78skrk+9E7iergKKM83kw+9DA/KJbd7AVJ9pTlOriy4fOoAPSdYt7C2h3/SpfmaLaWG3p17
 nnwQA4Zd8ZrP8ofY77mpmdOcCvi1sgfGOeonBNg8ng/C32hQfntyPXE4QCWsdp3djmvM/YkETaD
 k77rbKPg5BxLwdGfA4Gq4Txlk193DQkpgwp6loeZ2zg1jRroaUuQgZkfNz2XAiUO2ibqMJ/n/L9
 H1ydqVgB6+WmCLLWgdbz7cEUM5Z8vdsQf6hZqBW33njrztn/2IXTh+KSuHVhn1EbEicTZs7uDkg
 dMI1Lpd91z6aTkOmMSQ==
X-Proofpoint-ORIG-GUID: mg3uE6FWNqz19Pt08Kn9KM2tlfeVz7IC
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDExNCBTYWx0ZWRfX2XEPNCrEmc9m
 Om0liBxW8KklkBL48Gp2MJggiWdn6dmZHvtiKvQRDZVwKP3ZYxK3tWGpiqbiHmky+wicQIB/8kW
 u0TRRWxuQUXu9ZW8n00BTr4x91fMcxc=
X-Authority-Analysis: v=2.4 cv=Y6htIReN c=1 sm=1 tr=0 ts=6aa7ab6d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=vbpSL41SLP_TpwptBaYA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: mg3uE6FWNqz19Pt08Kn9KM2tlfeVz7IC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_02,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 impostorscore=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609140114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_010815_809340_55828BB3 
X-CRM114-Status: GOOD (  17.41  )
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

On 9/11/26 5:36 PM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord relocates the QSERDES COM CMN_STATUS and C_READY_STATUS registers
> so the generic sequences cannot be reused.  Add
> qcom_edp_phy_power_on_nord() which powers down all lanes and polls
> CMN_STATUS_NORD (0x1d0), and qcom_edp_phy_com_resetsm_cntrl_nord()
> which triggers the reset SM and polls C_READY_STATUS_NORD (0x1f8).
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

This commit introduces compile warnings (-Wunused-function)
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

Double \n

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
