Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0E3610854BE
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 09:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0qsfHSGREU6Cr13jt78fcyoex3BsJX1rAEQf7Vy9SU=; b=nuJncRQny0YM5G
	QdjUFXHqVqisjQ1+6oPNUbKrc7UonOHHQc4Q/T/8zIJhpPnUf4JxYIBzLPWRpRZGiDskXIu7u2+q2
	q7ELI9yzDLb3ytcBVGpFRNxNvksqOkKh1HEdYAVCiBMjmwyKNPXLjvE4buQp/azyLPyTfZCGLXJlL
	0UhaN8GV3jFvaOLxmtaEd1fVoMxzZUlUj6qpbH6Xh+5HfH/tGYTop0f86TKT0p5gc4SLMmANGZ2LD
	CgSsWvZQI5D5YXO7xTppKIhvvkT6N4uxI3xAbfUhv6a1n7GDWOoW25nPI0QbKI/4dBBIs06qbTrSx
	7s/LrW2BD4/PdVkWedVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6X-000000087xa-1sAj;
	Wed, 18 Mar 2026 09:22:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6V-000000087tb-0ve1
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 09:22:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I930eZ1632333
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 09:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	15hK/7+IQg9d3rM1JPvTgxhytjFXh5CP/ZU9fW/iQ+g=; b=gl3b/WZrIIqNNONS
	i8sSEFpcBVkDOy6SpPfcvTrdYt+gINMsSAz+05T9sr4ykrE97g7DbiybuZ0n+OVq
	jQJArG66+IMrokCHORBhHx3adjgHMXVa/HcT1bACgr9KLyfAXOa/p42BZXa+FEtv
	zIcy9MYF7gZ2nhLkryC3Tc/9PLcZvCSR13X9UpTOemKezVzEfrvOiEs1RV+tLcST
	mn1OAQaDjTZz4U+KSBOKQNiwPteWCtgcwjt0whU/LFMCFZ4pBOxqrDZkUI61kQRU
	08uBskVmhQ2f0deKWXyXeAdacJqVjCH1Vw/eJcxAl+PO+zZUeONOuiEWP9YAeX+y
	Jj8ZxQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyapukh9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 09:22:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091eadc373so48723191cf.2
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 02:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773825732; x=1774430532; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=15hK/7+IQg9d3rM1JPvTgxhytjFXh5CP/ZU9fW/iQ+g=;
        b=krszAt6BtPru6h/ZwVL6BWfn04zC7d+pHGyMxJoWI6Vj/n8trxHudlFUNy0eqIi/pW
         lzZYEB3WLexbazxEEzNgAlTOhSlG/K6LyZGRTCzYKJyuNEvsJ8ndpxHILNIGZTtyEVTx
         yI/bB9kQsa1D0rVYHSNW+8IyoDtHeIr1xw+bljjU1kMxjmWLSymaE2cDSzlrXHTWATIU
         zHxkwsedOqozuJG1llbL2WrassXLu0rPLAx9xeIPg7JPm+LbhZHdm3oqUDTZ1LwrZBBC
         Kk8e5iTGxzdSpb42wHvPrg6XVC4st5KV8mK+6ihLkxbaZ7JZqGMaDmxmS7N/dccKQQT4
         wITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773825732; x=1774430532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=15hK/7+IQg9d3rM1JPvTgxhytjFXh5CP/ZU9fW/iQ+g=;
        b=dx7uGBmLOEELTJ6oY1CZiN19IfDoLVZHfqHZ/fzbYwbKI+pw0SDFGegMO43UvEAcIT
         d8VyhgDiMDUty0CAUxoXbYKEC/215UwS0Py+E31AaTDkGI+bjUHArNFlOD5Ez/y+tIJ1
         tE8Lq+1HISH2o/IRtCBPWGXW7ChIkyVaLjjtGFNy/RO/8EALuE9psyf4FXqbMYc/2r4v
         6HeuRcpu48fmPQKwGFt1+mhsVcRSRNz6ZSYv1HkK0GkYDA+FVr6f91izH4oEOCiCICZb
         dMlNp4Jk7X9HCk3rgxBQND3dtZ0rC0ioPBm+yX16a1kcikieS8w0XlTfVAgq3fUSgw9X
         9xHA==
X-Forwarded-Encrypted: i=1; AJvYcCWbF4fLBY/eQjypoT/ddrQxZHFU0qkju6KdjXKABS5iFtYQBjqZmNZkTb5Nw2nIxOLE3mTQnZRgD7U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxY4ncdW3nZQNx1mtRq/mlB46Ce6Dt5KD3V9i3T/oqDGlFvEmg4
	xnnA/U9MMX43dDNfTCHfW1uL+16qqx13nIEX20PGnQp6Yx1Ci+WWHiytP56t/f6LJUMco24Gkmp
	fDwKllxegF2xnuM0HaYXyAMqimTx3kJdV7/99nofSOrx9JSNZNLP4f4DfKTeaP+ZRzjQK
X-Gm-Gg: ATEYQzyOJdAU9QzmploqD0lItVmD2Ji8v+7e0Dk/6Wfk6iZwoQy/31Ry76d5ODNOHTk
	eiAx5H4D3//o+NqdxQmQGp28xQsf5qv8l7roeeTSlwpYu0IAhcvBS6ADJGc8gfF7wSObGNbM5c+
	/AONp1mToA/ixpxgp4ocLn0SqHWaSJ9AGo+aD8BjCIt3to/MROmzTEG4kxr/CcJCVzi6qZLDJDp
	dE5Ej/+cVTiqNU5PiOuW7KVgN3qfw3xNncJDY35DceuaOGspnVdn/X3ZN+yacA0O9huWUIyWfRW
	w+01c4tYH2m/mYtlIobFb2nez9xYWfo2wRp0J0CS22sJEnrlLsVYbtOA1XgTxsUqMAtiHIpaIJJ
	vSu34kr4AwUl9XVoeDvSrER3PHSxQMzXcy7cCOfC5TgKc6k/XoZKv3LADBf7pCppELUlEWkpASi
	1BFRM=
X-Received: by 2002:ac8:7d4c:0:b0:509:24e8:ec48 with SMTP id d75a77b69052e-50b148afafcmr21250351cf.6.1773825732307;
        Wed, 18 Mar 2026 02:22:12 -0700 (PDT)
X-Received: by 2002:ac8:7d4c:0:b0:509:24e8:ec48 with SMTP id d75a77b69052e-50b148afafcmr21250121cf.6.1773825731860;
        Wed, 18 Mar 2026 02:22:11 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1689d2dsm161386366b.35.2026.03.18.02.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 02:22:11 -0700 (PDT)
Message-ID: <5a464fca-7be5-44a6-b124-7b80ea859a9e@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 10:22:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] phy: qualcomm: add MSM8974 HDMI PHY support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
 <20260314-fd-hdmi-phy-v5-4-58122ae96d3b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260314-fd-hdmi-phy-v5-4-58122ae96d3b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bKIb4f+Z c=1 sm=1 tr=0 ts=69ba6ec4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Z2itlUKkCiT7gnwI7HQA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA3OSBTYWx0ZWRfX+qY+hRMdDnKm
 PvRysq/DdhCbwrUL2hh1UNyCZl2DYpI2uQefLpCzEXstuAmOBhnwMnYr0CNSY8PxvTSgHdK4iSc
 D69YuPVJ84VPO+ykCCYTnExMen9W5K4KP5nwTjZtSc7QdE6seyqA2YLV06KL78wNvhoFqoJwwnD
 YmPKygNG+MJx56P1aTQEaK5e4m1ZKT1cUMoLPN3A1lq4gfvR3CMLPJy8Jj0liQV/32htAWD0jAQ
 l3Fe/9MfDgWWjEHr7pCZXwslSF5oaDk/W0nJ1IhA+mz4zDQaVwpqv3hXLMFa2N9O4rRDHHsyzf2
 qiXDXEoLi0v2yhZ/kf3OAlbEaHJHsJ/3JajH2xGiM7NPCDmF62Qzs+fHl3bKq4LWeQ1G1S81qzd
 8f1gKkh3YvKpiEtsfIPjrp0txCHKrQ/YW8Wyav4CIOM1UKVDrw8UXt2myDiIZ0HkdW+C8fO7bBW
 ViMwpyd/TNP65KdF9Gw==
X-Proofpoint-GUID: Y7W_mEI3ybHuz0MMM_Ka2B0bVlHoASbl
X-Proofpoint-ORIG-GUID: Y7W_mEI3ybHuz0MMM_Ka2B0bVlHoASbl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_05,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_022215_388280_811A0498 
X-CRM114-Status: GOOD (  17.31  )
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

On 3/14/26 6:06 AM, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Add support for HDMI PHY on Qualcomm MSM8974 / APQ8074 platforms.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +	sdm_freq_seed = mult_frac(remain, 0x10000, int_ref_freq);
> +
> +	val = (ref_freq_mult_2 ? BIT(0) : 0) |
> +		((refclk_div - 1) << 2);
> +	writel(val, base + UNIPHY_PLL_REFCLK_CFG);
> +
> +	writel(sdm_mode ? 0 : 0x40 + dc_offset, base + UNIPHY_PLL_SDM_CFG0);
> +
> +	writel(dither ? 0x40 + dc_offset : 0, base + UNIPHY_PLL_SDM_CFG1);
> +
> +	writel(sdm_freq_seed & 0xff, base + UNIPHY_PLL_SDM_CFG2);

Some beautification (BIT(), FIELD_..(), defined magic values) would be
really nice to see.. although I'm not sure how much you can do with the
PLL registers..

[...]

> +	ref_freq = ref_freq * 5 / 1000;

mult_frac()

[...]

> +	rate = (dc_offset + 1) * parent_rate;
> +	rate += mult_frac(fraq_n, parent_rate, 0x10000);
> +
> +	rate *= (refclk_cfg >> 2) * 0x3 + 1;

Really strange calculation, but in the end this is (n * 0.75)+1 -
mult_frac()?

> +
> +	return rate;
> +}
> +
> +static const unsigned int qcom_hdmi_8974_divs[] = {1, 2, 4, 6};
> +
> +static unsigned long qcom_hdmi_8974_pll_recalc_rate(struct clk_hw *hw,
> +						    unsigned long parent_rate)
> +{
> +	struct qcom_hdmi_preqmp_phy *hdmi_phy = hw_clk_to_phy(hw);
> +	u32 div_idx = hdmi_pll_read(hdmi_phy, UNIPHY_PLL_POSTDIV1_CFG);
> +	unsigned long rate = qcom_uniphy_recalc(hdmi_phy->pll_reg, parent_rate);
> +
> +	return  rate / HDMI_8974_COMMON_DIV / qcom_hdmi_8974_divs[div_idx & 0x3];

nit: double space


> +}
> +
> +static int qcom_hdmi_8974_pll_determine_rate(struct clk_hw *hw,
> +					     struct clk_rate_request *req)
> +{
> +	req->rate = clamp(req->rate,
> +			  HDMI_8974_VCO_MIN_FREQ / HDMI_8974_COMMON_DIV / 6,
> +			  HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV / 1);

I don't know if it's a good direction, but maybe:

const unsigned long max_rate = HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV;

clamp(req->rate, max_rate / 6, max_rate)

?

[...]

> +static int qcom_hdmi_msm8974_phy_find_div(unsigned long long pixclk)
> +{
> +	int i;
> +	unsigned long long min_freq = HDMI_8974_VCO_MIN_FREQ / HDMI_8974_COMMON_DIV;

reverse-Christmas-tree?

> +
> +	if (pixclk > HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV)
> +		return -E2BIG;

include/uapi/asm-generic/errno-base.h
11:#define      E2BIG            7      /* Argument list too long */

-EINVAL?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
