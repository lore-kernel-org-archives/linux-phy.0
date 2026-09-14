Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7DFFC88E64
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 00:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwxC75+AQjG1NuumIV63hwC9Y+Hb3BiClVr66Y/pv3w=; b=JqDpaWqPwwKVya
	6AFWNHyj6ZORxSMa2WHfQiERYzgMfnmbwgCZN5zXsVLdt85qMWDFRtdSp839GyX7XLBChJy0Ty6vb
	2UkyDTCtFF0lDzKsu/XjLyuu1SfOX/zQo3z1R3tBHPuyxDm91Mrs7O6ck0JnNp/N3dQzYWPhbcB7n
	pbRHWkrIPU0/A0Rfb82Rim1AagVSVY7grIrRrp61P4xIC4AMjKva8DRUyuLAxiIJpvGfuM4RK/8bJ
	6UJgfCG1hR0WMZQnMFNxlAnNiFS+WyPfsyXv20Pmr0QJxLP00GZRXFZQbia9bk3C15DhIf48fGNsb
	Somw7nPOQmAk7KKqTHcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uIr-000000027Ks-1TgR;
	Mon, 14 Sep 2026 00:12:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5uIo-000000027KU-0pH7
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 00:12:07 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E06Knv2660823
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:12:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=e8pSLRGNT3rSCZcyNbWseqo/
	tYmMZllBzMLqwr0LFTg=; b=epHc4tgsZj5yGCT4hjzftMjZh0Jl+bg1warXRRhn
	6M3YznL2a/eTFZN9w5gnyszvVXCAcnZIKpe6He0Ua5fIQ1aHjwv3G1UP8BIposuc
	bZh50lMr2ntc0QLLoXuNPEewAPBbHhXPC2CvK22qeHF+zhDpGsXOWAxw9T1r/cLs
	S2tfuPpJ17jCV7IMJXXk06itpT5nhqE2jfkUsw96Y5DghRrie5B/+ehtXEs8yX4z
	9aqLsMguKT1MmWM9OO2FikDp3hGdcE9YxjZv7H0c5uGsdKR4n/lPfBLQokTUzcOd
	7h8/xjhrPZdHu5LdPYJlcmtohFaJQm5KflRQz3yEPxehow==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmygd4ebc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 00:12:05 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-97e9e1dd7fbso2132542241.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 17:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789344724; x=1789949524; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=e8pSLRGNT3rSCZcyNbWseqo/tYmMZllBzMLqwr0LFTg=;
        b=C+PV8ybk3nDJdOiYZ0vb/2hWYD/Zbvth70bOl0AO2bbrwegaC8EjqzsjI4I+kLMhhK
         LOlb8sZEybFlgApnG842wrvYICLsm0aRK9QHosQ51OJhXsVSrMHrI/2r0km0ybxZZDdO
         IPyFS7tkXaswRmY6y4/SsJKbyTDse1KL06+9GSC/sK92DS600Tj3kpzWdsoYFqL43PXx
         2x1Xzw/95Y/7EnEYxEXyQDwAVr+J3GgJTbiCuSYUMmEoBTJhK2S0I7d9Er521BOXUbug
         PXD/cVcJjeoR9S/o0Z2qp5bM2wNyABkVJU8pIhhlenlYRpjTkNvIN1EZfirceTViG9zi
         c2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789344724; x=1789949524;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=e8pSLRGNT3rSCZcyNbWseqo/tYmMZllBzMLqwr0LFTg=;
        b=aUx8osEvT2jFJpxgE84gx7PF1QekBQPT1xaZZmNK+AncKqpk51FpgR6c39L8k3PSSS
         O1f0aI+Dbkalf6yEMh6nQf6uePiKzPPYqXD1KZlJ3/qpLPNaJ3lBH1bTw5hkEFhNV8+v
         jNNjgbCN9KbqmuR03K+HmwQ2Z5MZOaAqxyrfG1gvTbka8YhZ2uu5k98nZBBnYH90ccf0
         a8smW+/cumNLUMtxPqwcWwDfJMj+sRSiPfbMWm+H5mzbVJAgJD4C3rwCtEX+1a77JoJM
         /geqosGHdGTCtvnX0KVyHBC1vEuESdlc816kYT0wnrSuI9S+fnaY2CzBLgO82kDDuB00
         q0dg==
X-Forwarded-Encrypted: i=1; AKwUvBy4GlTEwb+oSgjcobTMuecxROG+VvDJWjymqFt99mj1bbv0d2XxafLEafUvfFlp3YjmoAZc4cQlB4s=@lists.infradead.org
X-Gm-Message-State: AFuF++lqS7bJlDOWTlVWfzjEncXgdYGWthcDXe55XbwUcCm9IHz1UWSe
	EedKaYvHXZyq5ZXINtNWOV+rI/7Nf4fCa+reMIzJO7B2ordol2TFMt+TQAR+/ishk2hyUIe5jSo
	6VScRqmyZji16t3UM434+e4TQ8NJBkOdSQJxewQQTisSAXvVBRaX96BRvlxuSD1bWEVOT
X-Gm-Gg: AYBFou2XWBV+KKo/NUfKcwAo/Nc6V4FS3QYPTsNndvPoRFaQvin9jgPi3Hvyjtmka8g
	l5EKR4K+x+Mn0wXQwPbdvnHZlC37++sjUtYDKdhHkm/efIF2HmaTVTU2grCdh3vBmmHaOjdcPdU
	Ig1RKj808wqqM45uiAeUnMo2xHo3J2Dkdf4cDGdC0mIhDHUIYrtBqxpBYlBAliAsQ+EYXmVFum2
	QqL7SvpOEEGnGLsME/ZmUZV1AF/n1eTF1TQbGzALvd5p77CL+9pXu8/xIHmD5/z9cpTARlIEVqJ
	qsWttvsNt+OkyKxNs7O40NuV/1Ks6bViRUE3L4xTUYw1EN8ReBk28sbJFilUnp4yf3ujgPPfVyL
	yk6G+rnh09LXi7SYT5JxqSSolEFselyqRPozUVUz50W/WGhD0Xsq+1gl6UnwRw8KRj0PXNZEUpS
	dpsMakgTmO+DhX
X-Received: by 2002:a05:6102:4492:b0:779:c38e:de53 with SMTP id ada2fe7eead31-79b5b28fe7cmr67030137.10.1789344724389;
        Sun, 13 Sep 2026 17:12:04 -0700 (PDT)
X-Received: by 2002:a05:6102:4492:b0:779:c38e:de53 with SMTP id ada2fe7eead31-79b5b28fe7cmr67008137.10.1789344723990;
        Sun, 13 Sep 2026 17:12:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a0456bbesm1989247e87.22.2026.09.13.17.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 17:12:02 -0700 (PDT)
Date: Mon, 14 Sep 2026 03:12:00 +0300
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
Subject: Re: [PATCH 14/17] phy: qcom: edp: Add Nord PLL configuration callback
Message-ID: <nv5ij423d4rbwpnhexj6yv2qgasrb7k3wzoo7o6vx5kg3vc3n7@6u4rln5ltbsv>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-14-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-14-e25c073cf1b6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=RY0FmFtv c=1 sm=1 tr=0 ts=6aa73bd5 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=G5yU_OXk3sxSGaYP5ugA:9 a=CjuIK1q_8ugA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDAwMSBTYWx0ZWRfXySQUPYkBOqYx
 52rohGJZjk4bKoy24KlqVtXE1qvsbHIYpMsKhuDJz69yJ7s4BLunBv8tHHn0ny71GoxCjcyvqh9
 B0gUDsEojzp+9Lj59lETVTT7od/tMSQEpoj6BUq600KTzT5VRHCUMoMoI7u/iSh6yiCgQPnRSTF
 9wA0dfgExruO99DWCqjI5uQzhKJfGjtYYZkeKTDM3+JCzk9LfJUOJo+Xibahcr6lNazQ5R3SQfz
 x5h661ZDw1FzVU1amLSxoqur4cKUwjjHzfpGrJYXLAqYu2+pA0RMItvWiqZbG4pKsztOT1c9A+q
 fXGArFSuRSaZ4x+pSjGZB01aGjwybF/kuPIy/t+zPBgIK0FWxSASdkT0wpRWXOyEKySVuzOugHO
 AkuzqqLE4PDldXE37a0f23i5A7Nc7Zn7y5d5Jh3LNInOlaBG2pywC3GyRJkB3zlNFT4fsexeNsY
 ytp11/1dhjfzzigM1Gw==
X-Proofpoint-ORIG-GUID: bBJWSwqgk_7VmWIPEVbF_I1UnIZK3bAw
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDAwMSBTYWx0ZWRfX2P50cgGr9DUl
 phUcULLfYsWntXYmo0VM2ptg4zkd7E+DRY3BwMBkxXW6Yo9hjCYON136E/5q+K/55EEOLENQHEY
 BSfZX0XKzAKc1uiYGiCpHT7IhKUttWI=
X-Proofpoint-GUID: bBJWSwqgk_7VmWIPEVbF_I1UnIZK3bAw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_08,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 malwarescore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609140001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_171206_253352_A51DDBBF 
X-CRM114-Status: GOOD (  22.73  )
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

On Fri, Sep 11, 2026 at 09:06:45PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord uses a 38.4 MHz CXO reference with a different QSERDES v8 COM
> register layout and PLL coefficients.  Add
> qcom_edp_com_configure_pll_nord() which programs all QSERDES COM PLL
> registers with link-rate-dependent values for RBR, HBR, HBR2 and
> HBR3, per HPG Table 2-1-d.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 112 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 112 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index a0f4b12e561e..4d1b2c81d956 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -1688,6 +1688,118 @@ static int qcom_edp_com_configure_ssc_nord(const struct qcom_edp *edp)
>  }
>  
>  
> +/*
> + * Nord PLL configuration per HPG Table 2-1-d, CXO = 38.4 MHz.
> + * Supported link rates: 1.62 Gbps (RBR), 2.7 Gbps (HBR),
> + * 5.4 Gbps (HBR2), 8.1 Gbps (HBR3).
> + */
> +static int qcom_edp_com_configure_pll_nord(const struct qcom_edp *edp)
> +{
> +	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
> +	u32 div_frac_start1_mode0;
> +	u32 div_frac_start2_mode0;
> +	u32 div_frac_start3_mode0;
> +	u32 dec_start_mode0;
> +	u32 lock_cmp1_mode0;
> +	u32 lock_cmp2_mode0;
> +	u32 lock_cmp_en;
> +	u32 hsclk_sel;
> +	u32 code1_mode0;
> +	u32 code2_mode0;
> +	u32 core_clk_div_mode0 = 0x14;
> +
> +	switch (dp_opts->link_rate) {
> +	case 1620:
> +		hsclk_sel		= 0x0c;
> +		dec_start_mode0		= 0x54;
> +		div_frac_start1_mode0	= 0x00;
> +		div_frac_start2_mode0	= 0x00;
> +		div_frac_start3_mode0	= 0x06;
> +		lock_cmp1_mode0		= 0x37;
> +		lock_cmp2_mode0		= 0x04;
> +		lock_cmp_en		= 0x04;
> +		code1_mode0		= 0x8d;
> +		code2_mode0		= 0x27;

No extra alignment, please.

> +		break;
> +
> +	case 2700:
> +		hsclk_sel		= 0x04;
> +		dec_start_mode0		= 0x46;
> +		div_frac_start1_mode0	= 0x00;
> +		div_frac_start2_mode0	= 0x00;
> +		div_frac_start3_mode0	= 0x05;
> +		lock_cmp1_mode0		= 0x07;
> +		lock_cmp2_mode0		= 0x07;
> +		lock_cmp_en		= 0x08;
> +		code1_mode0		= 0xf6;
> +		code2_mode0		= 0x20;
> +		break;
> +
> +	case 5400:
> +		hsclk_sel		= 0x01;
> +		dec_start_mode0		= 0x46;
> +		div_frac_start1_mode0	= 0x00;
> +		div_frac_start2_mode0	= 0x00;
> +		div_frac_start3_mode0	= 0x05;
> +		lock_cmp1_mode0		= 0x0f;
> +		lock_cmp2_mode0		= 0x0e;
> +		lock_cmp_en		= 0x08;
> +		code1_mode0		= 0xf6;
> +		code2_mode0		= 0x20;
> +		break;
> +
> +	case 8100:
> +		hsclk_sel		= 0x03;
> +		dec_start_mode0		= 0x4f;
> +		div_frac_start1_mode0	= 0x00;
> +		div_frac_start2_mode0	= 0xa0;
> +		div_frac_start3_mode0	= 0x01;
> +		lock_cmp1_mode0		= 0x17;
> +		lock_cmp2_mode0		= 0x15;
> +		lock_cmp_en		= 0x08;
> +		code1_mode0		= 0x14;
> +		code2_mode0		= 0x25;
> +		core_clk_div_mode0	= 0x0a;
> +		break;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD);
> +	writel(0x0b, edp->pll + DP_QSERDES_V8_COM_SYSCLK_EN_SEL);
> +	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SYS_CLK_CTRL);
> +	writel(0x0c, edp->pll + DP_QSERDES_V8_COM_CLK_ENABLE1);
> +	writel(0x06, edp->pll + DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
> +	writel(0x30, edp->pll + DP_QSERDES_V8_COM_CLK_SELECT);
> +	writel(hsclk_sel, edp->pll + DP_QSERDES_V8_COM_HSCLK_SEL_1);
> +	writel(0x07, edp->pll + DP_QSERDES_V8_COM_PLL_IVCO);
> +	writel(lock_cmp_en, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
> +	writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
> +	writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
> +	writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
> +	writel(dec_start_mode0, edp->pll + DP_QSERDES_V8_COM_DEC_START_MODE0);
> +	writel(div_frac_start1_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);

Always 0x00

> +	writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
> +	writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
> +	writel(0x12, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
> +	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
> +	writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
> +	writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
> +	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
> +	writel(core_clk_div_mode0, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
> +	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
> +	writel(0x1d, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);

Not 0x1f?

> +	writel(0x0f, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);

No DP_QSERDES_V8_COM_VCO_TUNE1_MODE0 /
DP_QSERDES_V8_COM_VCO_TUNE2_MODE0?

> +	writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
> +	writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
> +
> +	return 0;
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
