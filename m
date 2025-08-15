Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFCBCA0ED1
	for <linux-phy@archiver.kernel.org>; Fri, 15 Aug 2025 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKXranaNbWqK0W1tBE/3YI741LVBY+KDijmKj4bInJM=; b=mRoLUSLA/e4rqk
	3X8W/uaerd5D1q1cQBKug8+5vs1TzVtS3BNjV3riwm554hIFhKgfGlebqJyWAnFsw/FXbHTdZ1ADt
	Vslj4873MhjHlWVzuY/z9OinC9lBYucI5kFs8+4de3CO4hyXDwjqmTT1pCFqTiQDP4+roPtDCXzJU
	DlV3A9az2PAecHTrJIbb1ZYRHH+ICzPZjSO20+m4c5+NQdfKeZNInYBFfh3RAwM9hwEbQn0R0yg6r
	rheQVTXz7BJ5JrM2IpId291U5pLTsACY2plchPThKknaK6w0bmYfTUt1Er+O7Jp/rkeReqQZOYYaU
	xnF0fvJjQoyyVngz7kbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1un2pI-00000003cvK-1KLg;
	Fri, 15 Aug 2025 22:23:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1un2pG-00000003ctl-0FPB
	for linux-phy@lists.infradead.org;
	Fri, 15 Aug 2025 22:23:07 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJ44E008757
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 22:23:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JPoqrG76Fa+IJ69XT6fD+NUhuJLanbuSb1J5gF7obvU=; b=bgjyUAi1oWHVp/Jx
	8+Tz+gwEf2MKAx+ZsTVEKOTKcqL/MUqWcbHpC7FH1+FfXTRSWAS3BTpEzo0xOmKj
	Z741Z0P6eAoFegyjXV28v9NMfIb89usjBV57HhgYAwRKiU9Qliw66EeKPQt5uzQf
	fi4amw34pK/R2X45JyFCnbe8i55Qk1dOWYauH4Nv4tTfZhS19RW6xpYCRVYJ0OyD
	z9nvvGdd2hxsxs3bt4lmC8dsYf8ZgHpOXsgBfm2wO0yZlHawC7IX0nJXxyNbVIv4
	LCsQUc5cH3gnkvwW6S0gQ7onmwnRMuoHgxrSj2D51jtWfMzZjdEm5uTrt0UfygvT
	/yMMig==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffq7089t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 22:23:04 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a88d99c1cso48043086d6.0
        for <linux-phy@lists.infradead.org>; Fri, 15 Aug 2025 15:23:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755296583; x=1755901383;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPoqrG76Fa+IJ69XT6fD+NUhuJLanbuSb1J5gF7obvU=;
        b=RUQ6VO61oXLTu3IiYgGkAowBCmZewqpYRy+BdWYepijcEiXUmQWZbgMDItaewUXFgU
         hJq6Ayq5WSG2Lui3ddlHPxXg0bI/eUCqzZUfriW6dmPeJuzsSGA29waEsOKDGYoUfAxL
         SMAjvzOuoswnFIoFdVeULuZfdo6nQqoOjDhGbRjAWLOzSLF/ofXxms9UVjLTR/SQoNhc
         a6g/pcCUm5VUDNkCGpQgDJ4Ur5Oh6bCEFNYBJdbGriOYM4GhDKda/9+apGb/wArzk3an
         3D5XR2vxz09F/QZ31VLUcEA/9oCJfqxrM3PdmtDOelvpcfZ5FZKUbPAo9KKWhbQk0/YG
         yswQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsqnNMTBu2JPQ4xZh5LxJgbbQldYC+pstMUoUazzszAuGpV7w7mBCCSqWS09zvnbF+eUnW2ezisKY=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywsux/sClBlXxyQ0cS2FFsTX46DVl1SRLnRuZbgCyyNjJQiOm1S
	Vb6xaLtBM4ucsfEoDKCuqWmndcfYND2XnNDkItdCV8gUtiGshlAe+a3UB8u+bbZ14vQAwx/ffAu
	FikJaeF9gCuCRJ2aNnZCrhMVmOm+bodO18WEEkowOh2s/ZxWxhh57Evu1EKDfqgueLI23
X-Gm-Gg: ASbGnct1LqhuGdX+zzd4K3FySRFb6FV+9llVR+MKQd1wXdbZKJulccjaULjbGlnZ4VW
	PLANI8teqwfwaHHkT9t4e5W27ExQ87kK4vpJuDNQ7fCd1ivBakNV/0tulbrR8ABsH9Qx7ymsXfS
	s9AMb0jKgZ2ZFo8PmCrPkfwMv1Aoyi6IbVnQS05jP+hPu6M86Oh9A74oLax+cJmLGQilR8CaR9r
	FGYo1xDY0VTDrLPoO/YSwMRpiLYGps+OeTRSOyOLygcfrElOCDKYlr+klmYPwmHoKcQweFZ60jV
	0KGUCGzGqOwOfhxmccvO1DeVu8RCBMhTah8r+zphXySQPpBLai2boeUDt/D3+Bv7UPqVI5hJ9f1
	oBVSxv6LiSEjnu8Vjdg==
X-Received: by 2002:ad4:5f0b:0:b0:707:71d9:d6de with SMTP id 6a1803df08f44-70ba7c3ad53mr53884156d6.36.1755296583109;
        Fri, 15 Aug 2025 15:23:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFleBuWAy5mTXP7RbCTDkEBzEH4bx4YRYK1jQyBfG2qlZcDy/NOHJR86cvYBPpQ4zK6w/3KsQ==
X-Received: by 2002:ad4:5f0b:0:b0:707:71d9:d6de with SMTP id 6a1803df08f44-70ba7c3ad53mr53883776d6.36.1755296582437;
        Fri, 15 Aug 2025 15:23:02 -0700 (PDT)
Received: from [10.178.110.229] (37-33-152-67.bb.dnainternet.fi. [37.33.152.67])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cc6c5sm510042e87.106.2025.08.15.15.23.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 15:23:01 -0700 (PDT)
Message-ID: <3d796f6c-d1d0-4499-8e63-bd37bfcc7c3a@oss.qualcomm.com>
Date: Sat, 16 Aug 2025 01:23:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] phy: hdmi: Add HDMI 2.1 FRL configuration
 options
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20250805-phy-hdptx-frl-v2-0-d118bd4b6e0b@collabora.com>
 <20250805-phy-hdptx-frl-v2-1-d118bd4b6e0b@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250805-phy-hdptx-frl-v2-1-d118bd4b6e0b@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NSBTYWx0ZWRfX1YugeY/qt1tb
 xyfZMQ2PpzuBnor/Q6v+R6YI5pdOXulgcmxB7V+gVc/NyiVR0ZAJWHjESiZxpud8TGtA8ABMFX6
 mE17Lb8abepf7cm4XKOqvj/Y9xeXj16s0n6zC/quugYvxMG5fgXkL/yyojZhmRRXHByZTAV91mG
 5oo+2moIgRqf95s/gYJZHRqiWEa/B+d6zw4XPQqjbbPj2827PqOkQSTYHrd3chGO9ehqbKlSsGl
 VWC6F72Z6eRaeaJpjj16kZXqTu7d25ZkKtyB7WYXQNla8+XijTfIGoWtUVoFJW0iVB6FHLmBqgp
 11cVPeueeTG67Llk/iWW54LjYc/zq8wz3d7FJ5J7XnihnZskKko2PVzBsJTzREuQCkxloGaoTNe
 gVlBPhZr
X-Authority-Analysis: v=2.4 cv=TLZFS0la c=1 sm=1 tr=0 ts=689fb348 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=bUxD0lY5qGftl71vRM2jGQ==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=QX4gbG5DAAAA:8 a=Wdy89XEDvX1HR8FnkzIA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: pN-azDQ2R2oBcI0UXdVsrJhqamwn8Bca
X-Proofpoint-ORIG-GUID: pN-azDQ2R2oBcI0UXdVsrJhqamwn8Bca
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_08,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250815_152306_114579_B4E192DF 
X-CRM114-Status: GOOD (  21.77  )
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

On 05/08/2025 14:56, Cristian Ciocaltea wrote:
> Add support for configuring the Fixed Rate Link (FRL) mode for HDMI
> PHYs.
> 
> For improved clarity, also rename existing HDMI mode to HDMI_TMDS.
> Since this mode is currently not being used explicitly, no further
> changes are needed.


I'd say, this need some explanation, especially for those who don't have 
access to the HDMI standard. Please mention that FRL is an alternative 
to the traditional TMDS mode, etc.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   include/linux/phy/phy-hdmi.h | 14 ++++++++++++--
>   include/linux/phy/phy.h      |  3 ++-
>   2 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> index f0ec963c6e84f1b7728acafc824dff191c6b873d..0b26472d8defcc9ded142d4283e29861dc2b3746 100644
> --- a/include/linux/phy/phy-hdmi.h
> +++ b/include/linux/phy/phy-hdmi.h
> @@ -6,16 +6,26 @@
>   #ifndef __PHY_HDMI_H_
>   #define __PHY_HDMI_H_
>   
> +#include <linux/types.h>
> +
>   /**
>    * struct phy_configure_opts_hdmi - HDMI configuration set
> - * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
>    * @bpc: Bits per color channel.
> + * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
> + * @frl.rate_per_lane: HDMI FRL Rate per Lane in Gbps.
> + * @frl.lanes: HDMI FRL lanes count.
>    *
>    * This structure is used to represent the configuration state of a HDMI phy.
>    */
>   struct phy_configure_opts_hdmi {
> -	unsigned long long tmds_char_rate;
>   	unsigned int bpc;
> +	union {
> +		unsigned long long tmds_char_rate;
> +		struct {
> +			u8 rate_per_lane;
> +			u8 lanes;
> +		} frl;
> +	};
>   };
>   
>   #endif /* __PHY_HDMI_H_ */
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 13add0c2c40721fe9ca3f0350d13c035cd25af45..04c84c1dbd6dac55fd04c54203cff4f9d939d970 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -44,7 +44,8 @@ enum phy_mode {
>   	PHY_MODE_SATA,
>   	PHY_MODE_LVDS,
>   	PHY_MODE_DP,
> -	PHY_MODE_HDMI,
> +	PHY_MODE_HDMI_TMDS,
> +	PHY_MODE_HDMI_FRL,

I'd maybe suggest keeping PHY_MODE_HDMI and having two submodes: one for 
TMDS (default), one for FRL.

>   };
>   
>   enum phy_media {
> 


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
