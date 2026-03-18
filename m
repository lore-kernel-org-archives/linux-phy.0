Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C31B10775ED
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 17:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEBnavNJcXIm1kezBgIdHC59P+E9nbhgSFrrt1XKyX4=; b=k1gBs3jOVbn2+w
	ciUIGWvXbjejpfSjEA0IpX2JJWxJ8YL1mqBPkjd/R6ilzEjHQfr3wJ9Inf2P9TLKoXvy6mY3W6oBg
	ezW0Y7DgtCWjmoUMmPev9xmoBZNnev3s+hHkLudVgiy7sTpjICfo9Gu73+VfMS3tx0T8+6smt7ti7
	oQSzIpnD2FDySHq220y14GjeHzRf1L6XBBs3x2uiJ2j3vLUAAjU7xCZBI+o9q6qL0fHLk0aApjFFo
	bxooloL49PTGGEdLRjrr9H2BuRI1Z3krMyO3GgFXUsCmFl2BQwgPRXmPu5TPkJ6mOoiK3Kh8Km3Ac
	SME83Fig6AbyVof3e2rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2uUc-000000092Ux-0KiX;
	Wed, 18 Mar 2026 17:15:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2uUY-000000092UV-2syK
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 17:15:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IFh8Wr1374454
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 17:15:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aHulX3nyPqMmPFo5kVxaIEHe
	3GwIwupRJyCV10Oa3Ks=; b=YG2I1ajVLLiWB9n0/gLbtrC3ddPRBfmrfzSrdpgK
	ZPc/P89NNX6DVvexswTql0Nnog3JhHg2WnAaWidQif5/0you2WhjF1NrvuoWEMc5
	ZOWJUSeFM+t1udYIN4MeYioZv8N47A2IkWYszHiFoudBBsEf8D0EZMM3nQbzJPYQ
	QpUWt00MGwNZa2yDSaQ0LszBOVl4Q6mC4HsaPRZHAse8xlSzvLqdl6aWRnb3T3+v
	qhekGaa7S1e91Fos1dTs/ECj7o0gaMlrtPNxL8kOcomlNF7FuMo1QIfVpBLZpSPg
	KGbjde6gltFYvnL1EmieG9r0V7sIx/w1tGpPKIVHgv/UAA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyuuch6dq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 17:15:33 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5092135f2e9so840451cf.2
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 10:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773854133; x=1774458933; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aHulX3nyPqMmPFo5kVxaIEHe3GwIwupRJyCV10Oa3Ks=;
        b=DTifCIsDsfRqB9ixl0eQQ7Yq7y8W/GT5S4vHXyMHpwCA6zUZ9qk/JO+l77rezIzJfW
         l1OmOentf2gFhmFd/KpxrdlNntl3tp0cyvIY4OxQ9pmorg2BdJHRg41Vw4fZsRArWDQV
         YWDGlq+oXwmUhhypLjp73uk7W9WeW2pH8LGuMGaXd6XkRfJtXK0jy3ucjmc/6G7DssM2
         DRtzEvo27x8PvlXzffb9xl8xAifrR9BZZb+soOGtpFcQQG6h8018ltr5pjyaDyaC4m41
         kRGe5nMyYyuej9xIIKltt5ONwU+A8r4tCdIx6ol56tbKmfB7ntI0Fr7mhchdggi05gSo
         Lt1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773854133; x=1774458933;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aHulX3nyPqMmPFo5kVxaIEHe3GwIwupRJyCV10Oa3Ks=;
        b=avU6I4QJmIdi+zJXmUnrQVt+lEcrBn9lXokINTGEYCwR/VXAhkR16Ca3nZ3hAFx2CK
         0yERMC8AyHunwSrKajoI7Kt8W0OqTeVK2tBNN4XpJz2OoM0dwqdb/8dWdbh+vSf8Yn+N
         CCj7WmkB8Bt0zfZnslQwD2a5mFiqpg5FFO9gXyxMI8Ty0OzIieJjtAVeCgH2/KyHETwP
         c6P7ktCioY03puCHf+qtH9xtT9hCblfr0R3caiFNOsbDvtCeZ6lkFC//Yjx3cuZ7Ps+D
         NAyDuydciZ457PtGo7A4ZlPBZHdHo2gQhtCMLjIhSaZEmFMNFrytBEPhnBBRlPJS/THc
         Hw4g==
X-Forwarded-Encrypted: i=1; AJvYcCX3ndUFxLNr81NsSDn7VIGiz2esnA1A1aHu6M7YCaUGk8J55QYZxY8CoeeCCCMVhi9l4M7mN7X8ioI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+y9R8919J83OMDpRRgdt2T5MqVlVsq9jEeGecOifOsHVxn9/3
	3wUnsDN5hrXq71wnAv0ZRVAtRIRFBr6sH3GzfMeoHSRXqtzuIj+nfn6z6YbAtKtf0EviWUY3mfw
	1fDse/LbK72IgTR46PLDbX7Q5y6eEcgp6FJHaVAHJd2Fmp1ff9Bs+MwFZdPnpm1JS8pvH
X-Gm-Gg: ATEYQzxxLa2xzThSerXiK8WPSCFg8w1mn87U1sGjIKHYie67pYiojpKp0f5yXInpgnX
	al/CCklwMg4NlO+6n0EyTF0a3ZtmWJD62u/Y6PgfBfWzHc6vNpJruQFGhqdxstlK0coXXFgtVri
	ALqqfsyHcGLyZ1OvBPxWzaXyLffFOmOvBbm37Wdov5cmEplnhzl+/hcOYbPK7oaxG/dEHOorRNx
	DnduSek5ch5flBqMB1nJ1mJIEfmDHQrXygTT/yR4L06S8vZqvOTic/UNhFTRRLU+SvsJvVNC8zT
	wYABRshziKkrRS+UzajD5ATMkwtB9Auv7hHCgB3aeWZssqGMmxbyNXAhqJtTvO9f8LKwwXrV81v
	GCl/0TNazn31jFNg2nBcTsNeu2O+cM9hUTezOyFHku9VHOn8+WaNENkbcX/0bRqkdy9VVMPMhfs
	2fJJa3+d4LIp4LyJRRZL9UGEZi2YCD1sGOPCs=
X-Received: by 2002:a05:622a:15ca:b0:509:1cf9:ea09 with SMTP id d75a77b69052e-50b14900351mr54257901cf.67.1773854132523;
        Wed, 18 Mar 2026 10:15:32 -0700 (PDT)
X-Received: by 2002:a05:622a:15ca:b0:509:1cf9:ea09 with SMTP id d75a77b69052e-50b14900351mr54256641cf.67.1773854131670;
        Wed, 18 Mar 2026 10:15:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c6e28bsm677462e87.52.2026.03.18.10.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 10:15:30 -0700 (PDT)
Date: Wed, 18 Mar 2026 19:15:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v5 4/4] phy: qualcomm: add MSM8974 HDMI PHY support
Message-ID: <dpzq6o4qdttbmgtpgit2atjghu2kwrcj36ko3rnvwaehbkvjrk@lr4ms7mi6aiz>
References: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
 <20260314-fd-hdmi-phy-v5-4-58122ae96d3b@oss.qualcomm.com>
 <5a464fca-7be5-44a6-b124-7b80ea859a9e@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a464fca-7be5-44a6-b124-7b80ea859a9e@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: awu9cpiXxXWUNTXh3bNG2VRvQnH8ZslM
X-Proofpoint-GUID: awu9cpiXxXWUNTXh3bNG2VRvQnH8ZslM
X-Authority-Analysis: v=2.4 cv=U4ifzOru c=1 sm=1 tr=0 ts=69baddb5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=5ezwpRT3i1EXliiOuAgA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDE0NyBTYWx0ZWRfXx/aE0F0xXQfm
 clR84aliMqP2t/VpLmzHyKeMFDEr14u+1flCun5LvNR8zaE5FvwjwV3Jpx1d459yjL8IqFul7mm
 GcxdKTV/X4cxQiQY7qqRA4EHBYyRNP5MHFCWB9B2AGX5KhVaEzIWHmacNJDFugxL2kZlbgEY1q3
 4CKHAao7ueFdCM2NrhyKztzWUs36mG31oFfVQkFjF3s5vZpVKNnjVDwYGFfHF2rGCivP1px8Rhx
 cGdx4HA7b62uSJ0Y2hiiKzEMSqLbel6pvIiaIGdNGc6LkaEmmjyofUoFJkrIYA9f3wagGH5LjhC
 5s+s+gVRz2Iggks8hCwbI8fjIdxiCn7hRPm7VLrJ+CLjdeDdHDEjqwqEkeM0FHL+ruDyH4GPglX
 4a+AF6Wp9ydKxYtpjBlNn/bK7dZQM6LOPH42P4UaiARusCzrs1Dp90pw+eu66z2EAABm+kuMwO6
 jL+UsqHifIUk2vQTUOQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 impostorscore=0 adultscore=0 spamscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_101534_867477_77378038 
X-CRM114-Status: GOOD (  25.34  )
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

On Wed, Mar 18, 2026 at 10:22:08AM +0100, Konrad Dybcio wrote:
> On 3/14/26 6:06 AM, Dmitry Baryshkov wrote:
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > 
> > Add support for HDMI PHY on Qualcomm MSM8974 / APQ8074 platforms.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +	sdm_freq_seed = mult_frac(remain, 0x10000, int_ref_freq);
> > +
> > +	val = (ref_freq_mult_2 ? BIT(0) : 0) |
> > +		((refclk_div - 1) << 2);
> > +	writel(val, base + UNIPHY_PLL_REFCLK_CFG);
> > +
> > +	writel(sdm_mode ? 0 : 0x40 + dc_offset, base + UNIPHY_PLL_SDM_CFG0);
> > +
> > +	writel(dither ? 0x40 + dc_offset : 0, base + UNIPHY_PLL_SDM_CFG1);
> > +
> > +	writel(sdm_freq_seed & 0xff, base + UNIPHY_PLL_SDM_CFG2);
> 
> Some beautification (BIT(), FIELD_..(), defined magic values) would be
> really nice to see.. although I'm not sure how much you can do with the
> PLL registers..

I can try doing a bit of it, but not that much. The HDMI PHY is mostly
unspecified for that platform. The code here is mostly based on the
study of the existing values in downstream and corresponding DSI PHY
(which uses the same UNIPHY core).

> 
> [...]
> 
> > +	ref_freq = ref_freq * 5 / 1000;
> 
> mult_frac()

ack

> 
> [...]
> 
> > +	rate = (dc_offset + 1) * parent_rate;
> > +	rate += mult_frac(fraq_n, parent_rate, 0x10000);
> > +
> > +	rate *= (refclk_cfg >> 2) * 0x3 + 1;
> 
> Really strange calculation, but in the end this is (n * 0.75)+1 -
> mult_frac()?

It might be based on some other dividers which I didn't recognize.
Anyway, yes, mult_frac() would work.

> 
> > +
> > +	return rate;
> > +}
> > +
> > +static const unsigned int qcom_hdmi_8974_divs[] = {1, 2, 4, 6};
> > +
> > +static unsigned long qcom_hdmi_8974_pll_recalc_rate(struct clk_hw *hw,
> > +						    unsigned long parent_rate)
> > +{
> > +	struct qcom_hdmi_preqmp_phy *hdmi_phy = hw_clk_to_phy(hw);
> > +	u32 div_idx = hdmi_pll_read(hdmi_phy, UNIPHY_PLL_POSTDIV1_CFG);
> > +	unsigned long rate = qcom_uniphy_recalc(hdmi_phy->pll_reg, parent_rate);
> > +
> > +	return  rate / HDMI_8974_COMMON_DIV / qcom_hdmi_8974_divs[div_idx & 0x3];
> 
> nit: double space
> 
> 
> > +}
> > +
> > +static int qcom_hdmi_8974_pll_determine_rate(struct clk_hw *hw,
> > +					     struct clk_rate_request *req)
> > +{
> > +	req->rate = clamp(req->rate,
> > +			  HDMI_8974_VCO_MIN_FREQ / HDMI_8974_COMMON_DIV / 6,
> > +			  HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV / 1);
> 
> I don't know if it's a good direction, but maybe:
> 
> const unsigned long max_rate = HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV;
> 
> clamp(req->rate, max_rate / 6, max_rate)

Note, it is clamp (min_rate / 6, max_rate)

> 
> ?
> 
> [...]
> 
> > +static int qcom_hdmi_msm8974_phy_find_div(unsigned long long pixclk)
> > +{
> > +	int i;
> > +	unsigned long long min_freq = HDMI_8974_VCO_MIN_FREQ / HDMI_8974_COMMON_DIV;
> 
> reverse-Christmas-tree?
> 
> > +
> > +	if (pixclk > HDMI_8974_VCO_MAX_FREQ / HDMI_8974_COMMON_DIV)
> > +		return -E2BIG;
> 
> include/uapi/asm-generic/errno-base.h
> 11:#define      E2BIG            7      /* Argument list too long */
> 
> -EINVAL?

Ok

> 
> Konrad

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
