Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09648D29DDE
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 07:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkNTaGGgRjU9pQNHJkjJ8UerRN4OAsM1nIUNcOYyN4k=; b=W+z1IabEiq1vSz
	Rz+efmHfxyfI/SkX6F6pNP3cIBFs6kCtLmkwpUEPah6LUxp3najX2R+9HoyDN/D6W3jjvM4vqMbjh
	BCF4FIDAMqjvbeuPg/iMOpFIZakNSVnNbEYBF1eZXjkSEwGwgMZ+uH+7JplcugpAHcAlrIyAgEmHe
	zxZzSelgQP5FE9xv4GIioRHqOIJMtGQxZbxEhFwXHhAR41tqoH1Y2Vxx/N/77syHuOUiW5CNxdxmC
	l7H2YYvecR5aDIF2wJPRgQnXv8p8IQeiS/lKB5dpV5oXjQLFHP0C2ekc+YRkly5S5aM8T0GdNmSYj
	jMa/vch6gy8VQRBNFK6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfYkg-00000006e0Q-3Fm4;
	Tue, 13 Jan 2026 07:23:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfYke-00000006dz1-0uWZ
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 07:23:41 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN5r3x3301643
	for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 07:23:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oNgFazqcMlu8myL+AuN/JIcSjpDYbPE9dhbXciQk9os=; b=O8Y91ILdxqEvLqd4
	nqY0Nno8epFqtZnfnCRAPOEvBD04AcvdxfwnDX09TL74yJmC26PHuc2jmToWsCM+
	MZBdhtFa9ioLHKDcxfZs0O1s8VLhRcjYK/UNJ2pi+5NN8anfPQJu/TEzpNY9qze5
	vOhhKCGN6KkBobCL1j5uKitDBdsAekEKmQeXJRoGy0O/YTJqk3jKu35NCWTd9mXR
	R8rVqEQtJsdaeRqVa2nOZ56yCe9C6TMzF0CF/pOFEg4XoNI9RP+gUakbFBvgbId0
	jYbas+YmNu44/2XGJe/VgPrS+tQbjhJ4wBL3nfVXNG5w9kq6hYdMRJ5X00uA2/VL
	RWThdg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jm9shm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 07:23:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0e952f153so189971195ad.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 23:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768289018; x=1768893818; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oNgFazqcMlu8myL+AuN/JIcSjpDYbPE9dhbXciQk9os=;
        b=BPFDi96ojEeZ5gsWLr2u2aMu2kLOvXzOY8K//T/ThxQIGjR1/66FF0rcNFx6eSi1A3
         P/2An0WRfLVcEoKdDigysCA08/YGRcGhdbvvJHV4Jvho8s3Pd+12PEfT6Qy+/GOabI94
         nqEgPD4v6faSYrxpEpXTBOLjt7NVgRQ18dP21GI6T5/Vcv+CAxrCMdNKTGAGLEc4PuGr
         mZcZrapbCPxKwzCzPPUNqr+4DWpo9M1xtBNGlDXe93Iy7iPrl9BdrUuClMTXWmF9eOKi
         hlv1yTBwlw+/vcQ4TkHnERhSVQTrP2jLU9qcptrk6p0nsEeW45Pd/E+ul4vcdC4TIh66
         93tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768289018; x=1768893818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oNgFazqcMlu8myL+AuN/JIcSjpDYbPE9dhbXciQk9os=;
        b=G+3dbAVSAm8WGg2d9EfVxmGgcOG2SPjCLStWTC4476YPhNZk+AeTNZvb5AKIglm5jh
         bJKMNvZbyPmpnBU1+b0u7auxiliN4QXmNonQFyhAHuTqzPIx7zCHZ2DFm4h66L0uzz0k
         KzFOEiWbli7HGh8C0ZM3FGklVw3ibT14hO4+A6YzX6p8DTtDSZqDqjWzlMNCy9TVf5+f
         LM1ktS0O1R2oHfEUtX3DxXICulmyhnKJQ/VFTrnPc8lyRhZ/AGCGyhx9DJkX8MEMW/n7
         GShRnNO8jwLbrq3OufKB2hPXBf9hw2HgoEwmqup5ESNseljOQwQGrVgR43iRG30WHNMu
         9fqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvTrXoNXML9LfPcH60+A8SN1g9qUq6Httr+WSdQ7u0QSEznCcvRk7Nxy2n0ni90ltg6a62MZrK09I=@lists.infradead.org
X-Gm-Message-State: AOJu0YwUUlpIe81Bojp/z9ENiBD461KqZwt7kNckOtmjBh5HmW8hb/wo
	KRCUsL2UaIzGpO7VixPiVg07QR13SX9+4zQIaHOLWZulGzvTTx7kYHlvNX/+gUlApy7IrFLml6Z
	kK8oEmEWZO0JsBWRCeixmDqBH+hxe9LRk/6xqq7eq+GIVHeURKrXUJz9nBfZi8jPZ8iAz
X-Gm-Gg: AY/fxX4FEH2ER3SflQdYI+RyZHd5SAulrjVhyFcAL51vEKWHmY8sWTfBOMAmmqMDKLp
	feqCXNzP5SEsgBJ2zJAsjtZ4/KDH8efmT1GYE3zIXaCYPA+rgBguJZYo06Z1e+jlzesNg24YXj0
	yvHt9zOow7+5qFxg+7NxSrFBSf1zny8KfH1QLnoSWetZ5QMGsm789XLgRFaII6i1VH4eEIPfVR1
	MWqZcXroFuXV69YOzN9jUIXm31BEeEHDdHHSId+d1y30qfKsACVGO8id6CnzgB4ScB9x/oezc83
	5cruF9Rxtmr7EJjjkJB+u+HgXY/hqIJYnkmVnM3s/QwtOKcGySydfc7mCtAB6i4USMutYelVt/N
	XHtydnr0OlKFklVJh1eMPw8CY6MqfktLcjXO7bcJb7zwxc+T5oYufWfJltRJto8jL/CJ3qhK8ra
	WxndE=
X-Received: by 2002:a17:903:1b0c:b0:2a2:caca:35d2 with SMTP id d9443c01a7336-2a3ee429933mr213782165ad.16.1768289017690;
        Mon, 12 Jan 2026 23:23:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHwDEFvz6AypcTbvFw5c0lu2Oo0n+YreDV6bmdNGs37euaqv+jPI2MpciMHjODGQ8L1iQ3/Nw==
X-Received: by 2002:a17:903:1b0c:b0:2a2:caca:35d2 with SMTP id d9443c01a7336-2a3ee429933mr213781975ad.16.1768289017228;
        Mon, 12 Jan 2026 23:23:37 -0800 (PST)
Received: from [10.133.33.201] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8920sm191440495ad.85.2026.01.12.23.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 23:23:36 -0800 (PST)
Message-ID: <581a9672-64b5-4df2-ac9d-bd3dbc1730e6@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 15:23:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qcom: edp: Fix NULL pointer dereference for phy
 v6 (x1e80100)
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        yijie.yang@oss.qualcomm.com
References: <20260111083317.604754-1-val@packett.cool>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <20260111083317.604754-1-val@packett.cool>
X-Proofpoint-GUID: 49_pTrzOxQFQtWVO5cN4aiqfF-UIACk9
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=6965f2fa cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=nuEKUdX3l-reoJBA14YA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 49_pTrzOxQFQtWVO5cN4aiqfF-UIACk9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA2MCBTYWx0ZWRfX6JJJHsJ4Bmqy
 jDraZ8aixZ6pEY5aGABWQqhfFe916+kZBt1pTnM5GlDNbN8ZVomu99SOifeGzXMmUKPYEvX6e5v
 LOGxM1+yVhHbECmL5zPKSIr/sViTavuNxcHSf4OumL5Hm+SN2Y9xpummctU9HE5kyu53WrkqNUR
 asGSXs1wdd9whYttuaILI7TiCseLhKLUSUpkWMhuXrXU0jWJR6znKDr28v08X/zinU8Xj+cFrWp
 2XAxAe/8jxFamyazQYaEyxxT7nbNJ1R2JkUT3wp2k5LJcAFuzPc1hrhMfyTGhq/Miu09lKFpN9F
 r5Uv0BvHR0dk8NyZjhsSDPFJg4aVWZ2Op1a4iY7IfeSncxxVZhyswbe0dW36AoOPeBNBxy0kgUn
 h5IxD3AHEs9GlqFNy02kO2RXDcTDTjm3EuV+x35KLKGe/X5W4HQlXgfge2ilOLpw+MsmDr5zVDA
 uhs2fOmt4R+/HYrceSQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1011 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_232340_388058_3108DEEF 
X-CRM114-Status: GOOD (  15.39  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 1/11/2026 4:25 PM, Val Packett wrote:
> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
> stub implementation was added for the v4 of the hardware. However it
> was omitted for the v6, causing a NULL pointer dereference oops on
> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
> 
> Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> v2: pull R-b, reuse v4 function as suggested by Konrad
> v1: https://lore.kernel.org/all/20260109045214.5983-1-val@packett.cool/
> 
>   drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 13feab99feec..7372de05a0b8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -758,6 +758,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
>   	.com_power_on		= qcom_edp_phy_power_on_v6,
>   	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
>   	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
> +	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
>   	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
>   	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
>   };

Tested-by: Yijie Yang <yijie.yang@oss.qualcomm.com> # Purwa-IoT-EVK

-- 
Best Regards,
Yijie


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
