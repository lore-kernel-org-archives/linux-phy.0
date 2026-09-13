Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F401C88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 23:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJc2YQvPzPG4L8b/RcDjsHbEscShfstkfWjDkwi2Tuo=; b=UY3KJCydqNp+Xv
	GU3o1L79o7ZoaCGmi+wJblNa3XiYyLh/oWUG1WXcGa+COm/gRglFbRlJUMdz6wRnS8twXqG0kuEhB
	YSc4bt5DfQ6hTXBLdR34VlsIbp/SOhkYdSH9vt+hE75nwqXMFMR8HK72jGU1kESbLtymB3B2/KjkR
	Dw91PBonPkINeRX1atVM9dkCpHRCNt7esDXADO9tLRxlyPbyEdzQc02HTsYLtmku5kPaxdyD7ggwW
	6kcScPaiYukMeH7jzxCwKTQuvoFMqF+XrqcPc/6nyNr4Z3zm5I2Y66Nr7UfRlxjkHxyZclN1BTXMl
	czRN4Pd52B95QF5lIwtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5u5L-000000026zm-2gvX;
	Sun, 13 Sep 2026 23:58:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5u5I-000000026zP-31co
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 23:58:09 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DNYcpv2962346
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:58:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FDBmdktdlLUHhDlg6uE58fcH
	cyrR9lGGu3jE4lq6oo8=; b=FkRM+T5sbuz1jXUjWOTE+kewEZ6RHwSJ9mZ4QqD9
	yiakrA8NhqWb8EUsreZp3Qi+ly3i5wWSVjcwqRHts0gw2fxY4YNDO8qMDLb/CTcg
	2RIMA2SimlmBlkl+H1hl71enAnp5vf1iv4EfvLTQAaacAVWWGK30llcslfK0b62B
	zSK5K+jTYIutCamRepU7rlDPZ/jIl7BtrDGeevzwcFDUd5UlO6ABh2284EzK9GfF
	EOK6Yd9ZnfrjnPJSCMyhOlQnjq+XAE4hqyOYYqTjhVqhnHWEwo5pmRmei1jg6Odn
	/Piq0KNwXAGYy1clYyBFFRepvL82/n3WvFdwTG/PsM9XnA==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9dcbtm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 23:58:07 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-78580a6b2fbso897720137.3
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 16:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789343887; x=1789948687; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FDBmdktdlLUHhDlg6uE58fcHcyrR9lGGu3jE4lq6oo8=;
        b=Wncqho3aeCvtN/aecZ5e0qj7ihS1uO6I056hhoWGVCZ43GAdp8VOMNGOfMGCury08x
         tMdi2R0VybxnMvG40pHn0aWQwC2CBbznjVZJHi4my5Mp7D8hvF93vmMeER/PGWLWvlYa
         BgVfxdl98whxDZVoGXGC0c25HvvKTGWtDxmChjgQtemkiO8Mwqidq5W4vqOZ1nuyWrD/
         Y1kmrdpKCcmEFjPfyUeDb3mc8rU02EJbyKGS3A6hJQjaO2C1Fo/eYxv3kuwq49hkH/JZ
         GVZFqgTneHkVElqo95oAHFbjRZ8LRrxulDB3h1KNOefh0l4RulwY66jL5OgwMsWJcMl7
         jAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789343887; x=1789948687;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FDBmdktdlLUHhDlg6uE58fcHcyrR9lGGu3jE4lq6oo8=;
        b=N+OVslyaiBWsZTPWTCM9r9SwMp1HrXdZ11gJ1zEffmZ5oeBkD5cM7Y4BMHnm8s0vC6
         2TYq7pCLmKTlO2LhIJpSr9r3N7PLt8/quDGHcg0QGXvmQlF6vekWBWvcfp8hjRhkb9C0
         VY2Mi8uEIdr25KPIccuj8+xpnfGZgTY5Kt/dYKdty5pdSlsgBrgbVZxK8WZ9Iz4cNQA4
         HlCsQ7nY0OZb/5wKrXFvwWZEdUA22FCma+JhNfGBklJ1WkA4/ZYJbna7MU6Sw0q169iC
         9pxLLGLmJfQQbs2hmjB2SvXbYTsLIfJS52AC6uH5plCpkzfq1yAKlRgtsVBOYVwf4GDq
         biZw==
X-Forwarded-Encrypted: i=1; AKwUvBy1TJDMGCQOFW1byYMBalCsA5bAywvOG8w2m+v+ub+T69OkCdG8eo5mgyWGHCkWwogbHEwv5Ma5WQg=@lists.infradead.org
X-Gm-Message-State: AFuF++l4BENNSFlLRbqLotnoPbzTN/zAOXYG9nCtuuMAFUz2Wwr9cHKI
	Kj7XCMp6mhjg0/PacUGEa4M/Ride3RQ+2Xj+2EzeRyUqDGq005MQYqiDqpVIaUne+bJlSbPaJKM
	uxoRmPN6dubXTZViyFIokZbMX9wApm1VDj5egFP81Ft3ZGhzSzWzsmdjseHY7yRYZ1bpX
X-Gm-Gg: AYBFou26K9t2WtThFzP+4hpE7zZXJMnG16hzhXKX38MvxtL8+6IOoiLnBI3Lm5h2d2S
	ZBC8ziT0gmSYiyj7EQyMszVYr0AqEDPMNqBNzBMxj+Dmrl6DgQr2S4h9l5nBHEilEHsqNy9EE5V
	lLcDgDKVlG+8d7GcL4jCiFM9ubsrKgf1VRBEz1j7pdTdNV3YHVx4sY2Exmk5M3U0Ftng0gVwuRr
	yaYQjDTGNyhmLCvRQ3Y5nFHp6hIk4zLkMGqfhmbQdJ7yvF9agv/YJ/jIVqjHK703UvRy0/9G71m
	i8kq53omfYx0zOGOI2wdUUU3A+aXoW7R5xm6vz79BBOuDKR00OnnN/Kv/gmHvoURrzJ1rCoDnZp
	yzLTA3Y5zAKlfmfu8yic+kyw9xmroDEvnTjKc6A59bYXVhrU2x7+W6bFAtRQWDqQDUuUF4BKKJf
	fhni/KGpMWqHSL
X-Received: by 2002:a05:6102:149c:b0:791:8f69:b802 with SMTP id ada2fe7eead31-79b5992c78dmr36604137.7.1789343886560;
        Sun, 13 Sep 2026 16:58:06 -0700 (PDT)
X-Received: by 2002:a05:6102:149c:b0:791:8f69:b802 with SMTP id ada2fe7eead31-79b5992c78dmr36574137.7.1789343886082;
        Sun, 13 Sep 2026 16:58:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a5a33263c7sm21510611fa.21.2026.09.13.16.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 16:58:04 -0700 (PDT)
Date: Mon, 14 Sep 2026 02:58:02 +0300
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
Subject: Re: [PATCH 07/17] phy: qcom: edp: Add Nord-specific register offsets
Message-ID: <t5thwekhz7wyhmyq3nobm37kag6n7ef2z2xpuwrqikv4aqniwc@ha2pjr32ecrp>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-7-e25c073cf1b6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911-nord-drv-dt-v1-7-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDM0MyBTYWx0ZWRfXwEHhAEFEsCK8
 4gbrkUpYuglhwUymjjje0ZvPqFjT0YCwLaMHWx4pXywKij8ftkBYo14PAtUgUS2XML55jaXOv/a
 fOZnVPkzTBwm2W5hy57jN7Ud6CBdtAQbMp5BqdRQ1UVLNZqC4FLt9l5723f03Sg2KFDX7cV5X7N
 4ksCfZfVA1IwU2kIA2gLennAtazTSmRM2YwKzNITbXPI5IgY81PY6MhxjFwdd+FspqjmKJtp+Ye
 9e2JORuSjgLuC4svLWsSdshNiGkqaFEoXQlS5vll/LUbA3zZzw8e508yvq36muPPcj9Dmb4sb1j
 XkefTbahpmCTpSAUBumWi+IRRNXw1iTcP71yb8C5H3nooLAVl2W7J8aCYn+V6EpDvUgi8kywlFc
 XHVeqQVc+rrrmav3RYkauH6qpOdb+O4VBl4cSQ/KeVxKB2C2eT+PORF8y18vZK/oIxF0FfTpTrw
 L9iSG8ESS3dmLiiYIcw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDM0MyBTYWx0ZWRfXy3atzHHcJoWQ
 9YnkzgkQ5afbSYGl8xvSBtrCAUdgd7V/uH1GcPqU9RWFBk/PqVctiqaVAaxm3U6f/6TYx4Xginm
 7E2CAooQLxgIEni2coVSYNlm6AqyYUg=
X-Proofpoint-GUID: 11xThhQkN8_6tSM4C3LvfWJnTDNBfF_W
X-Authority-Analysis: v=2.4 cv=OeUNnRTY c=1 sm=1 tr=0 ts=6aa7388f cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=y1iHI6lx7uGyBqjubtwA:9 a=CjuIK1q_8ugA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: 11xThhQkN8_6tSM4C3LvfWJnTDNBfF_W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_07,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609130343
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_165808_890419_158C4CE8 
X-CRM114-Status: GOOD (  20.32  )
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

On Fri, Sep 11, 2026 at 09:06:38PM +0530, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord relocates several DP PHY and QSERDES v8 COM registers relative
> to existing SoCs.  Add Nord-specific defines for the relocated and
> new-only registers in phy-qcom-qmp-qserdes-dp-com-v8.h and
> phy-qcom-edp.c so Nord sequences can reference them by name.

If the registers are reallocated it usually means that there are other
registers being inserted (or deleted). Are those the only registers
being changed?

> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c                   | 10 ++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h |  3 +++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index a3c893f72908..bf8a17336c7e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -41,9 +41,19 @@
>  
>  #define DP_PHY_VCO_DIV                          0x0074
>  #define DP_PHY_TX0_TX1_LANE_CTL                 0x007c
> +/* Nord uses a different register layout; non-Nord value is 0x00a0 */
>  #define DP_PHY_TX2_TX3_LANE_CTL                 0x00a0
> +#define DP_PHY_TX2_TX3_LANE_CTL_NORD            0x00c0
>  
> +/* Nord uses a different register layout; non-Nord value is 0x00e0 */
>  #define DP_PHY_STATUS                           0x00e0
> +#define DP_PHY_STATUS_NORD                      0x0110
> +#define DP_PHY_LDO_CFG                          0x00f0

Why does it not have a _NORD suffix?

> +
> +/* Nord-specific TX lane registers */
> +#define DP_PHY_TX_LN0_DRV_LVL_NORD             0x00e4
> +#define DP_PHY_TX_LN1_DRV_LVL_NORD             0x00e8
> +#define TXn_TX_BAND_NORD                        0x0024
>  
>  /* LANE_TXn registers */
>  #define TXn_CLKBUF_ENABLE                       0x0000
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
> index 93edabb830af..008b17222a8d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
> @@ -48,5 +48,8 @@
>  #define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
>  #define DP_QSERDES_V8_COM_CMN_STATUS			0x314
>  #define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
> +#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL_NORD		0x17c
> +#define DP_QSERDES_V8_COM_CMN_STATUS_NORD		0x1d0
> +#define DP_QSERDES_V8_COM_C_READY_STATUS_NORD		0x1f8
>  
>  #endif
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
