Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6092AF9B602
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 10:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1xMtH3w6qw5xDZDfofSoJ18G6usRDOechykGo3RWKE=; b=vLq9jkBPUyLURo
	fnoT90h86ekp9yNcYzuEeCKAM/4KeekyyZ+JYuB/yO4ozv3Um+iSQdWglUMtZGaZOiIBGqB8FnUH4
	MLjK0RpbBMZZR0fSs7xmVDrxrT/27KIHPI5uOypGtsfNQ9o+mlxbv+d2UNOfGlWPCjp6pgXNCqW03
	PyhJm3AEnzTL9OYweh2VXScOmENtGxn8zgIur8YV9bxErANb6Gk8PUbHNZjBFU0DzGnJ4VJIRQqmF
	6mij3HIepss4lu80r8PSAhm/JI9doXMkNQP/8dyiIWr3H1+AtaZVMncL2apI7M/CAyQxEYRRVdVAc
	3CXfB7o8fEvvgSv/pu3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUTc-00000009vG8-42A6;
	Wed, 22 Apr 2026 10:06:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUTa-00000009vFn-0Bf3
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 10:06:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M983DK2637672
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 10:06:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E7dhqIXNT+osSd+4CR+kMtKfRz1bj+2wyCzp2NKZcx8=; b=ZxzASiXLj94Eh0NF
	7y43PtYpG3BWFT24Fcer0gOJBkXiwhm28xGzc98EM4f/oOMScyR/C7BJEHlROYLv
	E/PiJK8uoZnNxrNlfiB0nAUttIQfsZPyPLlH05fMviMgk/Lwtd4WW1ORlzxAvAjl
	S8VXA/PgIXI0UBuyXiM94+h6FT9grpMpzdurfNddqyOBnhrTe6J8MXeszuAyBWSe
	c4oCInioFy+SbMUzCGNuqh9tY3ommcSBJ+KNvw/TPuPVuvo2HTr4gr4SzuTQwAKt
	AlgF1ZbUtAr5n2Kx2SBkwC+mckyEZQNpmm2DiklX4Dc776qx9/qS1dMbieF+xuDh
	TvLotg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenhau45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 10:06:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8aca5b32b89so16436216d6.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 03:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776852392; x=1777457192; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E7dhqIXNT+osSd+4CR+kMtKfRz1bj+2wyCzp2NKZcx8=;
        b=Gyp6nT8MF+Py0jyZNPZlkJD5pWTFdpf/D9PEnugk9lRhPRxuugz0D+hoXs02S7uDXK
         GyZ9Pw0JbW/G8Yy1OvH+Iy/LZx30K9N4rSjPTUz53BiZ+FxuvomVfPTv8H6CMyieEWPe
         M2hGePLakHGkD9YnANrTjPCaF252guCfkTO0EHC2F6yObxL60Ffy6ZNotYdKdoS29zK3
         zCyzHwflj05HukYltMoAk07uQAZJ9Rc7s9j+pydf5pSxdDlDpTmcegx9DxuMhz5MdZaG
         RJIFPMneLVrkT89PLQyVN+vivyXj/N9Go9aL3bbcxXAB90xZZDcc2N247Q6hX/WD9O/F
         Sf+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776852392; x=1777457192;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E7dhqIXNT+osSd+4CR+kMtKfRz1bj+2wyCzp2NKZcx8=;
        b=QNPVCuE27FQkdbqyZjoR9W5AiySS3JZot1jtltfoTWjkMJjWBX2Ji973PDxVAl7Mrt
         qUaQHo+UQBfFjKdLgHwmJEKoeZbuGkAyPTyISlin48DhngERxfqYP9sEkmBOQr+CXUg9
         JOTMSJQleUO1YxxSnH32iWqmeE1lhK7MHlPX9ST56MZYdN1VPPatx5AVUyiQWyY4etST
         7MurKwmU59hxRkRc6VV8gMH9pZ+Ylq2JEodCeI8osR/cU3UXpZVYQ0blII3Si38R4roM
         IhPWefP+kXZr7T8mTzmKTs+k+eGsCSx/F9UYwUZRl3sAkYuwqs8oUnfZi52TAbGcMSdy
         nR9w==
X-Forwarded-Encrypted: i=1; AFNElJ8kQLnT+RiaIXgGeb/EwdFJkjUD0dHOS5AM/KUtXD4khobgRnc57Tn0lxw7uU1XwpA1jvPGTh7cCgk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx02L9fVMUvb7wNH2jwFD3TNHk60UEbnVgG0O5dcLTOwIDdJQTg
	pxR/tCzXyLHioYuMlrF7wfl667xet0/cwF6Z5JLtbPdLVAGsgFPHK1mIrqpToMg3DjVGMKOGw3t
	+MgZJy9fpGbsu2sqruBKKMP/u2IqnJ4uLBZBPAkC4nMdG3jj4jTrATi1XWT/2osbuRRP4kh8G96
	aK
X-Gm-Gg: AeBDiesaaCkOHfl1QJXViXoAJ9/JD5seDXEzhX4oe/kd3v8/27liesu9ODxMQRZITKF
	ws+wxtXkbu8x+fXGwJBW0ZNB2qA1ansW2fFmQdsyrEA6tdh3Vu9kHxNr93SN2G75YtvurFrRgY7
	XsRpQnTwLZ9ZLDpaFH0nTxTJxGSSrCbiScqRFlI3Dy9lXIFr9Lxh+Oq1kj6aIiMLcnzZHbZHBxG
	G2+adaHLjBo9EZ4tYLggjB1vpf39qYqSi7Oy3gKgmjlBEBR5eU/CM2VdqJ1M3tfAvVyJbSx4P4D
	8NcvyxdRsD8a6oIPcTUYtS7BAV9bvhkhBOAT2e85efkDiX75F+svSkSTDFVAhAfAVWNs7O/qXjg
	5DhNS5YrwtVResXGATYSpJpobuVATox7lZ7kcDMBE1wm3l0eTJY7CD6dNO9twDI05BcOJcH9scH
	mhkGXpg1zPMFntCQ==
X-Received: by 2002:a05:6214:2521:b0:8ac:a205:f118 with SMTP id 6a1803df08f44-8b0281997b8mr227504156d6.8.1776852391810;
        Wed, 22 Apr 2026 03:06:31 -0700 (PDT)
X-Received: by 2002:a05:6214:2521:b0:8ac:a205:f118 with SMTP id 6a1803df08f44-8b0281997b8mr227503966d6.8.1776852391406;
        Wed, 22 Apr 2026 03:06:31 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba4517ee077sm538493266b.18.2026.04.22.03.06.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2026 03:06:30 -0700 (PDT)
Message-ID: <3526a6ec-20ab-41d0-9130-8dd6d5b76f49@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 12:06:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming
 on Glymur
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa
 <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
References: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260419-glymur_dp-v1-1-ad1067a8e8ae@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HdUkiCE8 c=1 sm=1 tr=0 ts=69e89da8 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=PVKFNgOZ47auAR9NjogA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA5NiBTYWx0ZWRfXzsmOI53VnpXB
 +J4/22jJOylmWDaBBokOJ71L8x/uooMyAQPGw99mDhdwi6vbsEOHvBg+0Z3hFW4qQ/QD/ReegVs
 NlqBcNQizbpnFpz1lSIG1qlLakJir2MumipVLGPWYACEVU3xYRk1FfhyczIX66mMJEkjopM98/W
 Lr0WXvtnV4wj/OrfrrVH2MS9Q4TkYEL1na/m1NXXQZ6NVRZhIZFlVuHHKWkAlQtXXVdkO5od9MI
 3hcPDkcokuf2ZrWR38TN2cQqSkZ06cBcyFc95brwjNnIUDaH8WLwv14EsU8rJkBLBFp8RFyeIRV
 jA6QhSziE3KpUet6ZOSXIg6EIqXBIQ3VMCz2pgOYFiZB2fYe4nf4NfQHWHgA9NZiHXTHobq0kix
 RL8A29Hdk6RLHxugW8rCsv68Oq/Ve7txlSXcT+HIP46kF1Y9pJipj+NfWUW86U07p8kS5giC9na
 RHsa0NrmZe65hVZNc1w==
X-Proofpoint-ORIG-GUID: ryKqcxXkUFYQeHu8xhB2c46Ykh-sPtbA
X-Proofpoint-GUID: ryKqcxXkUFYQeHu8xhB2c46Ykh-sPtbA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-22_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0 spamscore=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_030634_231788_CA561A55 
X-CRM114-Status: GOOD (  16.18  )
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

On 4/19/26 12:15 PM, Mahadevan P wrote:
> The existing DP PHY PLL and AUX configuration for the Glymur platform
> does not fully follow the Hardware Programming Guide requirements for
> DP over Type-C, which results in DP link bring-up failures.

[...]

> @@ -283,8 +283,8 @@ static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_DP_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_DP_AON_TOGGLE_ENABLE,
>  
>  	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V8_COM_RESETSM_CNTRL,
> -	[QPHY_COM_C_READY_STATUS]		= QSERDES_V8_COM_C_READY_STATUS,
> -	[QPHY_COM_CMN_STATUS]			= QSERDES_V8_COM_CMN_STATUS,
> +	[QPHY_COM_C_READY_STATUS]		= QSERDES_V8_COM_C_READY_STATUS_N3,

This register is in the DP_QSERDES region, not in COM.

The updates to the reg addreses themselves seem to match the hw description.

[...]
> +static bool qmp_v8_combo_configure_dp_mode(struct qmp_combo *qmp)
> +{
> +	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE);
> +	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
> +	u32 val;
> +
> +	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
> +		DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
> +		DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN;

The Hamoa (v6) HSR suggests we can use this broader value there too.
And same for e.g. Makena (v4), but not sdm845 (v3) (perhaps we could
use do it either way?).

With my response to Dmitry's comment in mind, the diff in this function
against qmp_combo_configure_dp_mode() should either be broadened to
other platforms, or the function should just be the same for all targets

[...]

>  
> +static int qmp_v8_helper_configure_dp_phy(struct qmp_combo *qmp)

This function would then be the same (except your v8 impl returns earlier
than the existing one, skipping a 0x19 write to QSERDES_DP_PHY_CFG and
QPHY_DP_PHY_STATUS reads)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
