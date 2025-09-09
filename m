Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E429CAC583
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 15:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlrFLFx8e7kzsEyOFextFwYBjvLxgQ+5PeYH6xkN5vg=; b=GAJayy22r9keyA
	eux8zqpMC+IQMB8M5ifNf2+oP66OcUBuocpJNi0rG9n8c8oj06uFxBfGuW6eYpfcm0GOjn99JhI0D
	Z8EkimVgmSNzJR7wksMPSroYit30qSPMLF9OEQP3lKXPIV46/H//WKEkhAZwtaePbsAkHba095u7k
	oj55EiqxpPqMnE+2RpBUu23e4dQIhaVZxSr2p19y0Lt2Ex4zkCM1PTI4hBNthYgT4iwTrie0eDb5i
	tBGeisXHESc0JaOSq9xUsrj1ZL5pmmkeya4V9Juxn9MYMPEfhtswMbVuUg1/bYIAlEEgsA91pKHhK
	wEFNgWc/1KAwipWEwjkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0Yt-00000008GB9-1RSq;
	Tue, 09 Sep 2025 15:47:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvwi5-00000006nyF-2KnO
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 11:40:30 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LkhL032157
	for <linux-phy@lists.infradead.org>; Tue, 9 Sep 2025 11:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WkBZK4nX8r8AkRcyHEfLR0jL
	z865vmuc1R3ut1MxHM0=; b=LcWLajU7pmng9f5CC2hU8jnbi4VfEWJPLitPJqRq
	tVziE2UTN/VxVg5lJ0ZAtXP8Jf8K7mD34WvQcRwyxy/lCr/YKXaS449RDKOxhMoT
	ZeLbpGk4rCwv+leG6flx5+K7DT8VbvZg5gg2sdnEpsdl69IgnsG7aQFTKuWHMWja
	jqhy8pvG4MpwsjBkDQP5R98660muQp6JMZRy+1sowuJk/YOXYhMmHHuRFthLNMqP
	4XaD9UaJDYGdVTn4c0AXPMt45rZe0XOURiTjN9nh79hrEMzEepz24Jdqo9Iuj0Kc
	GHDXpdyjt/q5STE0wBgywjqv1KUuDjAbyUARZLPJLIye3w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws85gq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 11:40:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-720408622c3so114894516d6.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 04:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757418027; x=1758022827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WkBZK4nX8r8AkRcyHEfLR0jLz865vmuc1R3ut1MxHM0=;
        b=jp9aB8sCQrtgN06v6h9/IgdSMJKvtobfITw7s9eJA1zd1q+NOHWlfO5GspvOZFBCSA
         vAEZhEIGl1jxigwDz8VsR6rDoS0p/f+DV5kCQT8B9ic56Jdk6+rmECRFXN2IGSh+uDPf
         ckklhGdMXxMRTHqzMqekrcmXjBCtUWX/XtKF448u+z7l8UqQGlIvXJvEdxrO/iV+lln/
         xk4ytfRetK3vPfyfWuqbf1WsVAW75KDrIapa3FSResWPwLK10RV18yM50QnEoizvkZ5N
         l/sG9i5vPzUt/f5AKrTbz39X7VR/yvVMhMkptA6qsKwX7liKvmjjye3HovkXfj64H0qv
         SifQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6rHbD56py82mgkKlSAVPAgm2kVP0JLKfYmctQ1awIVAFBS9copsJuQ6r61DZFkwni/5xE0QNoTbw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/vy72Zfco2Ch+szMXVJRGWeNHAR7XQZW7LQU2OBxenz8ymW/i
	Y0sNOSJs8ZhYha7zreN4KGGI3rxsIRHZz7pze9pZB/TtqCsb1bcVTIC9jdmufGIqqi7Mvs9X2cR
	O3Vr2iVepOUIJNN8iFUQw/vTZGZiNSaOGp73dLfw5OQRH8DrwjDXJ2JBs4JCl5xcPBo/VfFA1ZU
	QN
X-Gm-Gg: ASbGncu3XYtFfRhDi+6ANZUdbAxRyPjQf7DPq4OQsXjf3UG3EpAtLodN8MdYqslHJ6X
	w/OxOhM5jm4a+tJS9kwWR4cpxrhCbDlocbfLvVAcMzyZoziTYk+B3IRXMLstIS7qMgqiKqjjJkc
	1p5fx0SV6P9uUbQBjfpCKFZ9TyJvVeoPIjmmrNpZnvz6DZbTzWniNVxjG1cHhYTe4PAupisaAl6
	/jRMWTCa2BIfc5wp4S6ACtft2inw9BrsffX8XujZvq21Zya9P7IhR/6tIqTbW8H/1pyvg3ZfXrD
	+igjp7MhwQvRp3jNmmUjH7yH3kESHgXhSyTrJrUWj8+kdPaQ2vs7DNpDbWgLc2yQrCI5sZfAs71
	VLq37Eg+Ylm2BkKS4EwUbNkpLidlZzfcO5bdoEoL/ULAGMHFBx2RZ
X-Received: by 2002:a05:6214:5287:b0:734:c868:fb4c with SMTP id 6a1803df08f44-73944249693mr115542016d6.62.1757418027256;
        Tue, 09 Sep 2025 04:40:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1x5yuvHnnOA+bErPR7PqGkCxp1J6nz/QL7NqI2NRrDi1/NlaUQaX5MIKLRDoOyGf3VbZlEA==
X-Received: by 2002:a05:6214:5287:b0:734:c868:fb4c with SMTP id 6a1803df08f44-73944249693mr115541686d6.62.1757418026714;
        Tue, 09 Sep 2025 04:40:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-568180679a6sm474574e87.105.2025.09.09.04.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 04:40:24 -0700 (PDT)
Date: Tue, 9 Sep 2025 14:40:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
Message-ID: <dq6hg2l6mseov3koisg5vsrkhifiwutlfy2phwaehvwzxxfgug@vgtcptgcopmw>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-2-02553381e47d@linaro.org>
 <3xw54kzk36u7zrfhgva4p577nzle3ctzi3lyhcxapczv2bhceo@23zcaylkqoff>
 <12ae186b-9816-4269-ab3a-7aacdc7cb954@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12ae186b-9816-4269-ab3a-7aacdc7cb954@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 25RkKsGKaC3Oyp3NC81DA7L5xfUOOKRi
X-Proofpoint-GUID: 25RkKsGKaC3Oyp3NC81DA7L5xfUOOKRi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX/Kz8gVIDinWF
 qlzzQxIlFpVb3m0D+h/q+qaM54rLvC7xrv0+5KsT6usljiWzFANWLh1TQEF6a6VjpT8vlHwetIL
 LrSCeQxg8B5FCzkpIG79+6+QM9Wy2TbrEF8xIbKrfJZUEfyPNAz1yaeDj2Zz+gUuzLtsP4+qOA7
 jAfrhZo4gzAyM06DwYXK35IRCnayKrVFQwPbWzcJH/1JEccf6T+MFmCYyXuoNmurkCzoDX2+/4G
 Xv1TCNhZnrzNcVwCU6ljHPE2nCJhKD8v+05Ezabllxz/vwKoTc8V66PJ9PE3USj5hNnKCdmMgcI
 +zoyy4s/INY0fdkifQ2yudFjOuiZwuM7Twjos2OeGWtnlJP/9w9NP2hGqnTz9kQv/aDKaqZYub3
 OIRSg5Nl
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c0122d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=pQyaD6lL6sn_3oYIr7sA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_044029_600945_468CC01B 
X-CRM114-Status: GOOD (  27.21  )
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

On Tue, Sep 09, 2025 at 01:24:02PM +0200, Konrad Dybcio wrote:
> On 9/9/25 1:19 PM, Dmitry Baryshkov wrote:
> > On Tue, Sep 09, 2025 at 01:07:27PM +0300, Abel Vesa wrote:
> >> Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
> >> for the same version number. So in order to be able to differentiate
> >> between them, add these ones with DP prefix.
> >>
> >> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >> ---
> >>  .../phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h  | 52 ++++++++++++++++++++++
> >>  1 file changed, 52 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> >> new file mode 100644
> >> index 0000000000000000000000000000000000000000..2bef1eecdc56a75e954ebdbcd168ab7306be1302
> >> --- /dev/null
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h
> >> @@ -0,0 +1,52 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +/*
> >> + * Copyright (C) 2025 Linaro Ltd.
> >> + */
> >> +
> >> +#ifndef QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> >> +#define QCOM_PHY_QMP_DP_QSERDES_COM_V8_H_
> >> +
> >> +/* Only for DP QMP V8 PHY - QSERDES COM registers */
> >> +#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
> >> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
> >> +#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
> >> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
> >> +#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
> >> +#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
> >> +#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
> >> +#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
> >> +#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
> >> +#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
> >> +#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
> >> +#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
> >> +#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
> >> +#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
> >> +#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
> >> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
> >> +#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
> >> +#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
> >> +#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
> >> +#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
> >> +#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
> >> +#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
> >> +#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
> >> +#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
> >> +#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
> >> +#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
> >> +#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
> >> +#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
> >> +#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
> >> +#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
> >> +#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
> >> +#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
> >> +#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
> >> +#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
> > 
> > The registers are the same at least up to this point. Would it make
> > sense to keep common part in the same header and define only those bits
> > that actually differ between DP and PCIe parts? (Is it really about PCIe
> > or is it eDP vs everything else?)
> 
> No, there's a wild amount of variation between various "v8" PHYs and this
> is impossible to catch by eye

I see. Let's see how it will surface later. For now:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
