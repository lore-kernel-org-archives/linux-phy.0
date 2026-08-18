Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37AA8C5DF7E
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 10:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCfZM1uOiwZnEggpk2gG8UacTMzeRFlQEtnBSuQDvj0=; b=cNuxo1ES4F+qfd
	rnxoN1RwbmYlO8AnDHMWPIHhX1WP5PAPl38EaNqEX7x/40T9bMCMyfIJvlv7j69t8SKW9SCWbQg/9
	yy2L284d1Vx4sfC+vKit7EC0iV4zcpINq1kcc6JkP3aQIddb9G14GIEcWvnhuSTs6UoKFoLWpCqcS
	bBsUaJwO5RLljby0mrinRLwgWhp3ilozb0dxv6msxDLzsJ9f4zDbT7Mun+jIWYKOMkNRRgg/+uJDc
	IdALMWPHkmjTJdgqjZTisdTRRrLl11i1+ern6aiBMjo2hxZK//VviI8wMXLeHGQteTl0N+bV/xiCg
	xNxH7Qt9EeR+n9Net8uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGrz-00000007hYz-3P9S;
	Tue, 18 Aug 2026 10:16:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGry-00000007hYc-0Y91
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 10:16:35 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IABW34068517
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:16:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R7gxToVkREhPO6dQI34HddITtzydFov0LPEzCVWHmA0=; b=TgP2Ndtx33vsCXf2
	jHtVVdnOXv/sHLMw1LbpDKjhI7H5PRJaRwJyho/UKK6kRoOPxLvUbLO4ip//A9gu
	xCMqU0pkrcmIvMeXX4GIbNTaDDdr7KH8Wq+dZ6GJP+GzsB4cfgdIiQX7J5teIx9c
	ZTYqswQ4h/mH0vQQbypj9iyRn50tpjNXsm0CvlERw490WIsgC79h5vveamZPhxf9
	e+7NycubgZfVBmB2DOWL1nk3KloM480cCTG3VV0TwP/yJA33tZy+pVoDYJ+YdhXe
	oolWFhvnxMMF0DPvbxLsadQsq6Uu9uO/MYfIDcYht0pYzr1e64KbbD2JKeaMYhS/
	EJcWyg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4f5psp8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:16:33 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51bfa45b280so917731cf.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787048192; x=1787652992; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=R7gxToVkREhPO6dQI34HddITtzydFov0LPEzCVWHmA0=;
        b=T6woWKhQLi0yetJjbqhTGyjl5TM7bEq26P3eMTcdTru9OVJkpTQwTIJf7GToDX8orN
         XofsGgRv8EMtY8299rwFmnsVcn79Rtljy+aHr4AOoUq5L+3ki296nkJh7U+4ZkP53mwJ
         0l8zvG3hYqLaA7pEv+XAogPSmnJkQpC/qVHfGYgE/w8btLkoEqNB1p1/JxplT4cyK8Hk
         W2iOJXBXB6ZDqnnIJZs+U9N1KrrEonOsf0ow3NSCxE2r8XV7OCB14GfqUdoddbaw7wkr
         lBzYNYT7cAwkRI7XwDb2DOh/ZzAEipmNi/WMGWFwjMpS6wNwYh5yzhDTXIIwT9uJpr/k
         x+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787048192; x=1787652992;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=R7gxToVkREhPO6dQI34HddITtzydFov0LPEzCVWHmA0=;
        b=ZQsfiyQlU4SoH3+KGiqneTOuJFWp95wPaDhbqL8KFWoc2451TMtsDhKyIC+Jzz8fjD
         yWg9TSwQTt2WmxflASCtGOSNtpoOigJbcYuWWqJc4mebh8TLu/G6D33PkjsYe3ml8EY5
         nPwzwf0B04fP8id9kj0amo6pWELIFSGjQl5dj/lUyywACoDubbvj7vhG2Qt1W/yVeGqD
         MN/6M1oe8Wp30+iNbS+iGXS7eD4cOI005bcLrWw7QZWn0ghQxqFoLQcaf9SRADOFUSur
         EXET4N8721j5Eb0Ik1ykuWdzDX3u2+3jk8ORSToNFBi+LN7fPWnljwsByWF20226+f6C
         oPHQ==
X-Forwarded-Encrypted: i=1; AHgh+RrNGFUQViHijdy6sEaxI9XLBCCrw0xwT2VT0ITVJwqDTNSPPq8YjegFMDKUJ+ZSV8UleoiW33+Iljo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxR0IvuKZ1D52wl4Ehexj62JK2Jy2/0v/YnSvAW2+cebknFNc5e
	6HLnnnGACsNTTO7J+8SyaXbvVOrvfjka4PflkW/UlEVlFLsilQPCijiIbBudv9ffXioNV2HVbYb
	hx2Jtuj0nJGPXYIHspIx0HxSi6Da7gDUHThssp3R//BhWlmD4OYkpI1+g4PDR/iX4eJjw
X-Gm-Gg: AR+sD12iyAreYBGlbmTh0u4F4JdVXE0P53AJ9lAi71DuuR5CWb5+M8Vx3O8pAevIEg3
	7BuhYW8bEeoM+XP+RjOqeyd1bpJePLCJR/o6F9yzdSfWdYJaja8SaY7phbYsxT6bK5qbfOTtd5C
	FJXKaC+Mp7KPfogXnewV+wmZbbLpIor2JXcuqcYudZN0/t+D1jphXSJiQ0hjPHaug/uaTA7kBRw
	zj6TyOcxIlIJiTqOcQ/lGrtzWhwjq2HB+P0KeqXUwCe1VyxFamRQcbeleww9/XWEA0iQRx4+0tz
	KLTXeEHMxXBQjjBL6Iby8+9R3n5XAh1yOxHi7ey6KwEwPRGmL+v2C9jsQlRlXpfdQvMiV1+SF2F
	IEgrCTOLlOb2EJ7dJC+tVCqVp
X-Received: by 2002:a05:622a:190a:b0:51c:2324:666 with SMTP id d75a77b69052e-52d85425e6fmr251850101cf.3.1787048192292;
        Tue, 18 Aug 2026 03:16:32 -0700 (PDT)
X-Received: by 2002:a05:622a:190a:b0:51c:2324:666 with SMTP id d75a77b69052e-52d85425e6fmr251849621cf.3.1787048191916;
        Tue, 18 Aug 2026 03:16:31 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c217ff7e231sm164114966b.20.2026.08.18.03.16.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 03:16:31 -0700 (PDT)
Message-ID: <6f11fda5-43ed-46ff-851e-e571be749a31@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 12:16:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] ARM: dts: qcom: msm8974: add the HSIC USB
 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang
 <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-9-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-9-e5f93ea76ffa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=S+/pBosP c=1 sm=1 tr=0 ts=6a843101 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=7gRAf5yVggz7YA7u_AMA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 3ELHZLLje797c-iJ2gS3GGFe3cm0R-hL
X-Proofpoint-ORIG-GUID: 3ELHZLLje797c-iJ2gS3GGFe3cm0R-hL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3NCBTYWx0ZWRfX6xty0H86lzw7
 2yxH2MFc3NJOYKNaYU3zCnGP7tvcg8RFS4s7zuvaeBsqzFtig3Wos8iPODuJO6eBQgLcY5VXHNF
 afW7FOED4v1qcseeSbYomRax70lAWgcdhnGqlL+dnoFiPR0ENCs+Aa1YvSPEPBbzGWrcAEQbXdo
 vsy+VNIPxoMJqMzQkhbA+nH2ueatftILrZ0NCmncQBXNtRr8RHBSWDiSeh98XJrHjU/8lSI1B0c
 yCfeDQ2p4l6uZHspwU9c6bg4sn0DvGfRW4pqvTGiUFfJy87UvQ3xLB8ElOPov9c29sNQoHeDZUH
 OY8NGNjVKWZA5yehdvyCai3MoTTjO3B0Qi0vYN3+xC12syklrJ8j//dKV/VxJYUlqWvDTmHZo2I
 brEeKqP22G6PFBvYhX1lBgFJ69KiM4HPrqDpEhfdB+5jegfZbj7S78DteJ/TY0zv9pBpvIXInkt
 M51d9A4v2neU/XZPKog==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3NCBTYWx0ZWRfX12I25NOKf8cN
 6cIfqw7aSJ+K8qVKHQyot1rkVFzSD53iPaCg8wvwVxMekHKc7uXq1wp+731QTvoe9jIUVgJkwI+
 NLfIfznJPDUgjOpisgo8z4lkSbGp8ow=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-18_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_031634_181285_6B91EC46 
X-CRM114-Status: GOOD (  16.26  )
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

On 8/10/26 5:42 PM, Dmitry Baryshkov wrote:
> The MSM8974 HSIC USB host - a third Chipidea controller with a
> dedicated HSIC PHY on the special hsic_strobe/hsic_data pads - is not
> described, leaving boards with HSIC-attached hubs or modems without
> upstream support.
> 
> Add the controller and PHY nodes. The PHY is a ULPI bus driver present
> inside the ulpi subnode.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +		usb_hsic: usb@f9a00000 {
> +			compatible = "qcom,ci-hdrc";

I see the driver determines whether the controller is a HSIC one by
querying the compatible string of the PHY.. fancy.. would it be
desirable to have a separate compatible for the controller itself, or
is it more or less the same vs a non-hsic one?

> +			reg = <0xf9a00000 0x200>,
> +			      <0xf9a00200 0x200>;
> +			interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 148 IRQ_TYPE_EDGE_RISING>;
> +			assigned-clocks = <&gcc GCC_USB_HSIC_SYSTEM_CLK>,
> +					  <&gcc GCC_USB_HSIC_CLK>,
> +					  <&gcc GCC_USB_HSIC_IO_CAL_CLK>;
> +			assigned-clock-rates = <75000000>,

Do you have any docs that would detail whether we can run with the
slower, 60 MHz clock here?

> +					       <480000000>,
> +					       <9600000>;
> +			clocks = <&gcc GCC_USB_HSIC_AHB_CLK>,
> +				 <&gcc GCC_USB_HSIC_SYSTEM_CLK>;
> +			clock-names = "iface", "core";
> +			resets = <&gcc GCC_USB_HS_HSIC_BCR>;
> +			reset-names = "core";
> +			power-domains = <&gcc USB_HS_HSIC_GDSC>;
> +			phys = <&usb_hsic_phy>;
> +			phy-names = "usb-phy";
> +			phy_type = "ulpi";
> +			dr_mode = "host";
> +			ahb-burst-config = <0>;

need required-opps

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
