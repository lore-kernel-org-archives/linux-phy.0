Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE599CA0EE4
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 00:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hz0CB36Vm7gTdIih+HvyFRBd6KScfIUvCVTx3UgNBhE=; b=kB2UBhZrRYjZzJ
	DZkOBsFPL0/O//k+Xf+QLkMtu3A4NGJ/PYRSBmZptkQ0U+sbDXcSIlpaUgrfxG2szrRxR0YE1RkST
	CYxpqeQLwEVwm14pdq01N2KsemjoNu1EKGkfsKpRy4A5YyTTzU9jonLk8DfNXyqKhgoNVpk1NSkXX
	jIYXXC+MHiV6trnoOCAZgdf7V1Y1yb9BJieW2MNtHkw60JdEPopLgsT3+AP12vPxYfzmb8uR7x95E
	9VVSpVRnpNVwzQHxD0RoFnIRFFHOJlNPccaTHwWjzTCzsfG29ha1m0O5BGhubXI5i7ULOgfSkEnX2
	XM/toQtnPbM3kubFqFYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoAT5-000000091ff-31Gs;
	Tue, 19 Aug 2025 00:44:51 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoAQU-000000091PV-3dhy
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 00:42:13 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57IF2xnD025739
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 00:42:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OBbn273P8/f9yxcLk4nZc3A83z2zO0Iuz9NA/0alo3o=; b=CVSLpQFIqL2ri/kW
	j3XH9eOVJXfBRJyXZv5o3bkzw/gumYdiq6/AyhS37XxIdOPTUWYjlfjVV7Cb8Rhe
	xQbrHHpqWGwzowE6684jOZ1WAwq26Prr/ojNpbaOMYIE9/Z9DlKBL94w7zBboOmY
	qG85j3YubU5x9rZOzd7z9MSo+yBwYEwOLqa8CwsxmNBbXKfhDLASmNbtE53jTnJX
	DEY8AAOXfEuLGvk5+Uz9NHkMogsDaohynyfcuBNGf15hnC7Rmemke+AxPfSlVXPA
	DfYhMyVkYrquUw2nhEE75BbwVF3T1Akgb5wK1UxUYCX4If+csARnnNJmcfkOqkKZ
	FV00Cw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jh076n0q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 Aug 2025 00:42:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a9f5b3601so117872946d6.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 17:42:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755564128; x=1756168928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OBbn273P8/f9yxcLk4nZc3A83z2zO0Iuz9NA/0alo3o=;
        b=VBmTAdASHyDytBti5mHJmUb+FrD1OGHIZS5gcF7y9k316tOD+mun0zkdaTvp3Hqwq6
         woTVq4Q0UUetk3i2Y7k4sGPbl10AFQZGG6qZ+IRU0ozvTJsfeREG3euA4X8TFHoe3BsR
         eUSVg6eX3vZI1SUDIp5V/3/7lUmuUa+eEhecmEy8anxfaR0PL71n2qqZcVa7UhSocXB8
         AnxSbdobBi+r5i2tEqA7KZDN4znfdkPOYMbWw6NoDR8BmFT2G9vk8MBuQinIWHdnp7MR
         O1M1WJLM8wvqxhW6jWG1q9cVmuKOYhVK3SSBbBYcnr+2NzNjB/3/0DRHSkKk9N9w4+Qq
         zE6A==
X-Forwarded-Encrypted: i=1; AJvYcCWDkCj+QNJmb+K9O0RKEpGnb8MR+CIjIAL6Og6goJkt6LMKEGWE+onL0Jm5gVDQk2RX5TOTbJHaKpc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/0e83vdfegxmA84JM5shckpyNu/8Jk1wMj7WzZqF+WxafubyW
	wxHN1v0pJZizORsbu+BADrI0f0hWNoGBKuA0mKWTB/xznR9nHOKsZDFSNoTvMOXBpN2awvBjNmE
	HFgPoh98UcnOp0cm1/QAe+Gdsptgzd000OOCgUD5kquVcHfXHRgHToMFq7tWOQ7aGyU5Y
X-Gm-Gg: ASbGncu2XsrnzHTDZ3+e/pGCRJ3lkaFNbaKK7hOf0OM4PHMyy2NU3rJd7qyMu5tlw31
	9u1efVv4lmtjMn3twNN6n7HFzarWJfgoYvuLKB+/4vXi/w4EzOQj20BZCRjfSKuQUofr6m7Cbwc
	EORYZwGuo+7qFtgYUlnwATR3vfJ2vZG0MXjcDB2EN8Et2Ny7J4JzfVJ1Fq4tsULpQ22YivPImqv
	a/7soOCBOnZn9Tu/w5sJxT1gUkRHjVmQSXAn7xbZISHdZzFyAm2KlWEWSbamuTTVLFYTau0vRCx
	APfALYJbQcN8/8qs1pOt1LaYIWQWeLBfkrUXI941Xjc27OziJzNEZMGMVqTdHploQoyJ/FTf68D
	j1Rv9qNA/tIFwXoYFdRLPUx6B5as056iHCCUTkwqy
X-Received: by 2002:a05:6214:e8b:b0:704:a0cd:f597 with SMTP id 6a1803df08f44-70c35b8b5a0mr9282086d6.21.1755564128301;
        Mon, 18 Aug 2025 17:42:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYUQOO9C5theUsgHuQ7WuHIc+c5d31s4BRQUPisTdCBR05/M1rf3y3WoAQasBUktoz06m8MA==
X-Received: by 2002:a05:6214:e8b:b0:704:a0cd:f597 with SMTP id 6a1803df08f44-70c35b8b5a0mr9281776d6.21.1755564127778;
        Mon, 18 Aug 2025 17:42:07 -0700 (PDT)
Received: from [192.168.10.39] (91-154-146-251.elisa-laajakaista.fi. [91.154.146.251])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef351545sm1861560e87.21.2025.08.18.17.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 17:42:05 -0700 (PDT)
Message-ID: <3f857197-1cd1-4c18-88e9-e8c00d95af82@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 03:42:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/14] phy: hdmi: Add HDMI 2.1 FRL configuration
 options
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20250818-phy-hdptx-frl-v3-0-c79997d8bb2b@collabora.com>
 <20250818-phy-hdptx-frl-v3-1-c79997d8bb2b@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250818-phy-hdptx-frl-v3-1-c79997d8bb2b@collabora.com>
X-Proofpoint-ORIG-GUID: vv60w9LLhErqGI9zRcdpKGgSZGf94Pfw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX5Y7COXiKM7Or
 7sYoszPPR5D1x02JEXS7qH5Mba62KJV4Iu1YApiUaBFMCY8F8SRz8JJ4F/NEbjvHoF0BwGF4Tbr
 qnYmMRc9w3blBXQiJjQYikBQCLqtC2/0Vjrao7Rv7zSVwieNK4ykKQxjrhw1e8qljMrdZfGOUHn
 r3GrZtXlbudCo6KJJHAaVBFJmMWFs6vvpgpoN99L7F0B3rFGrmU8xPKXSbh2+P1+DeBqRxNlOKX
 TkWDwXneWxqSEMVK911H+UpGa5psED3grgKk8uqqbewObjLGST4l1awN6ohx2aae5TrBc3Tm5li
 Ew3d1F6qT8oH0zLDmTHhUNzmvwe2JFRBJYUEKueKxibUJHwGKI0T0sXWOUtXQW/esiFbvEEGQF3
 CQUppBnf
X-Authority-Analysis: v=2.4 cv=a+Mw9VSF c=1 sm=1 tr=0 ts=68a3c861 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=CKk/IlMN6Gw3Dq31eR3Dfg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=QX4gbG5DAAAA:8 a=bbK825GtWpsu-Oi3XvwA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: vv60w9LLhErqGI9zRcdpKGgSZGf94Pfw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_06,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_174211_022572_93A6C85E 
X-CRM114-Status: GOOD (  26.36  )
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



On 18/08/2025 21:59, Cristian Ciocaltea wrote:
> The HDMI 2.1 specification introduced the Fixed Rate Link (FRL) mode,
> aiming to replace the older Transition-Minimized Differential Signaling
> (TMDS) mode used in previous HDMI versions to support much higher
> bandwidths (up to 48 Gbps) for modern video and audio formats.
> 
> FRL has been designed to support ultra high resolution formats at high
> refresh rates like 8K@60Hz or 4K@120Hz, and eliminates the need for
> dynamic bandwidth adjustments, which reduces latency.  It operates with
> 3 or 4 lanes at different link rates: 3Gbps, 6Gbps, 8Gbps, 10Gbps or
> 12Gbps.
> 
> Add support for configuring the FRL mode for HDMI PHYs.

Could you please point out corresponding DRM patches? They might be WIP 
or incomplete. I'd like to see how this works on the consumer side.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   include/linux/phy/phy-hdmi.h | 19 +++++++++++++++++--
>   1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
> index f0ec963c6e84f1b7728acafc824dff191c6b873d..83330d359e3ae345554f20429519da14506b8ab5 100644
> --- a/include/linux/phy/phy-hdmi.h
> +++ b/include/linux/phy/phy-hdmi.h
> @@ -6,16 +6,31 @@
>   #ifndef __PHY_HDMI_H_
>   #define __PHY_HDMI_H_
>   
> +#include <linux/types.h>
> +
> +enum phy_mode_hdmi {
> +	PHY_MODE_HDMI_TMDS,
> +	PHY_MODE_HDMI_FRL,

There is no unified approach for PHY submode names. Nevertheless I'd 
suggest something like PHY_HDMI_MODE_TMDS / _FRL. It follows more 
closely the networking / USB submodes. An alternative might be to use 
PHY_SUBMODE_HDMI_TMDS / _FRL.

But it's really a nit and/or bikeschedding.

> +};
> +
>   /**
>    * struct phy_configure_opts_hdmi - HDMI configuration set
> - * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
>    * @bpc: Bits per color channel.
> + * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
> + * @frl.rate_per_lane: HDMI FRL Rate per Lane in Gbps.

This works nicely until HDMI Forum adds an rate not being even Gbps. Is 
there a reason for not using ULL and bps following the tmds_char_rate 
design?

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
> 

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
