Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B1EC61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 16:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNf4UhrSyhIKPUYT9Ojiuzn1l7Jf5ql0eLlECEPDYAk=; b=RurGM6B3TtlrD0
	OCQn13+YGoLS2chsx9u4JtI9xrUDhP2gGGkbO/POWGHYwOcSQT/sOHJmFD+dl9w2n+jjy0dgc8wq5
	HDc+9ia5P6+CoGLqXrzkh8ygMuYKpPFm6cdJ8c3w2J81B2lCwi6D9/+S1Nej1HNkbUww4OBDGUESv
	EMBTGU4TPNthySvyzxTPmyaxZD7gFpEi7FrJwnT3/HICvruhneTvxxZxSFIsc5Ecs0T0Nl9tTH1+B
	j/IW4tbSyppL7b1lyg3u2e1WovfjD4OPA55ZhlLz09BZeuN4THhC6QLHB3flgd3mHyWtw60wYv/yV
	hPNNjdQQjBkl/CCdJtFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14ri-0000000A2jU-3Vnj;
	Mon, 31 Aug 2026 16:28:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x14rg-0000000A2j1-1F38
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 16:28:09 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67VFqDfS4079238
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:28:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LkJ9lxCTtDvdCe5fxVE9tsx5zXvwZAtV4NrQpN1u2Ac=; b=cQ84dMkegfNwZO1A
	ISmP5JBgwUNkXh0ttbyAra6M+RF9f0Uc90yO/hDqUO0c2UxfiuH5ypUOa87owTbv
	rfydUmufXVZHNTrHbGRBfRekOFe8SOKaEK+ZaD/lS2NRiTJciBAljC0qY7MWmv+U
	oioopqJICC7HZH4iBagwsw15YSppKiBxC4lKKxGE/ZKYOIUvuMrr+V9jqiev5h+p
	fzLKiKurVDfia9bRG60GS6bzwcl+q7ec9Oc0L9ipn/ZgL9UNLrKydHkfLnZrSrNC
	0krTSmUEiBuQssOB0oEg4M0oWDCk1JYcCvcLV515n3Cg5Sy2n5VeW+5NdDY41mwf
	kgR6Pg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gd6rb9vhx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:28:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-930bd2bfc45so122215085a.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 09:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788193687; x=1788798487; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LkJ9lxCTtDvdCe5fxVE9tsx5zXvwZAtV4NrQpN1u2Ac=;
        b=dM4WMMZEQWoteI098Ka3jtgcH6UFaXWLDtJxIcckZZTr/I0Bfj4QqzVAgWsHpH/HKq
         EAv9sdT31Tblo93Ai1Vy91J/WpFef6KPBcxiDC7WiB7hXrUK6SiQbHZ77CSI7Bd4zE6a
         pqiqCZeMV7cvIyB3zYpvOujVcqXFCGK9ATry5Uo01A50OijcKmTa1t8gPEK9COVmDffN
         GBwz7xh4nEWB2kj721Gzo7WosXy/+eYow9ziGHcxbrxlsg1zTyElUxBMnxMLyYLeTFAw
         x+bphAzX9pWbPzeccxdFefCsTRYsyjHfRl3zeQ9EAzTJ58fDa/z4HxCe3f8qKOKqBrFB
         O5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788193687; x=1788798487;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LkJ9lxCTtDvdCe5fxVE9tsx5zXvwZAtV4NrQpN1u2Ac=;
        b=lfL+oHrmrjsCbsJutmvhh5EAJJqyve2X7q3kTc6AxEmWpPey7PpsNNHBdM33JqzQ2Y
         B8YX3xzNPBX6Zsbg1TRoDaDRr7OTmlGMaUsBQJxTOLxGKTFcyqLAm0w+dlxggaLh/F8P
         Vj0YaZ7zvscBu9I2WbMemeB6NNhOwe97KT8asJr7WsZF3D/wsc54YAdWWyP0M1oyIxXm
         2q+iadQJzFThpicW6nHrZw//e3bOI8T5g8XD5us8zBmn7RKnLDGVjL1Xmz8Cgy0OdEuu
         SKu/W+UMJ8HxyYmimdD2IIhr+UciQ9LTCzCh7GWhs6l+fdwVw75qEnbDUwybrZcCmlm/
         zlYQ==
X-Forwarded-Encrypted: i=1; AHgh+RpJsfi90dt0pHuXQ8+wFsVKcW1pWHb+DPzpsovJfAzeJKsfyikgeP6EYYbvJgAf4DQixNyM4CHcDoc=@lists.infradead.org
X-Gm-Message-State: AFuF++nkd6fSrybEtFe0FnzHEaEEErb54CAtpQDpi5UXBLypJySdf9b5
	izrePJSgBbUw2lLsQwpVrt4lwtcTt8IHbz7VGUeyFU/k9IV2LsRQvTWcIMihPy85RMMfqoxd5cJ
	t3M32Dl96mAWBLKCXYK/ADraI6/soXv2XzDHqjCMloOJ2oWMP7K/wm/vESQotkaZLKuFi
X-Gm-Gg: AR+sD12D/PRaxhKh3epAclqcYRHetiMPDCFbCNQshT3FZYWkBkPWWmfiWsDVpqAqOOU
	9We2Gv1dRoP5GHIZvYTlHzceGJECZDI84F0N/kn0qecTwRUvLmawuiGm6A0SZB400upkTO7W6Jq
	bi8qFy1SFQyUS8cKCZanv6DDPOomruAV6jPvAJmFa1DMEBKr+TwqOgkhCuE6vgcf58US3Ya4Ftc
	2hQQdaOg1Lo5RYm1MGNQdiRZ1QtM3velii64pVNvqX+lZimPkNXi0pNy3+pv+L3ULHrs97Srk+Q
	wRTCW1tR+JpxgcgmglK9unyggfeuwiOz8JraruiWMxKlL1PqaGd0NkTUselhlFa/NwXP8T7Qkvl
	5VQG69F/HpOUIWwNiBt2q/Q==
X-Received: by 2002:a05:620a:224a:10b0:939:3fce:1a60 with SMTP id af79cd13be357-9393fce1addmr278259485a.0.1788193682013;
        Mon, 31 Aug 2026 09:28:02 -0700 (PDT)
X-Received: by 2002:a05:620a:224a:10b0:939:3fce:1a60 with SMTP id af79cd13be357-9393fce1addmr278256585a.0.1788193681450;
        Mon, 31 Aug 2026 09:28:01 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c255f1b5a4esm464039466b.32.2026.08.31.09.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2026 09:28:00 -0700 (PDT)
Message-ID: <3e7c4364-db4c-4db8-b37a-c9ed78bbca3b@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 18:27:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/DO NOT MERGE 02/12] drm/msm: Properly handle
 msm_ioremap() without name
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        linux-phy@lists.infradead.org
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-2-67843277de17@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-2-67843277de17@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: nVtLZ-MsNsdoXhCdajRLZCB2WHukvxs3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDE0MiBTYWx0ZWRfX3AvIrkIXIX08
 XlXV0Nf85bj80PeIriRrVTAR4tcIAs6tanS0fmLAQxvYle39mEgHF5NW1JvgMJPu+dqHXG7VqL1
 em+jzz7hQ3OfdEiyn23MCLYdcZl96Ie/aZuuekzNWlpPX8rPpYLAk5vxlKyNkWWuSB7tbqE1Ezj
 lZe8YOVf94D8OaItICpcxjnAHZNcbaHnHCgnh7KBTXepqo6mjTVsFK9PEiI+N4D+IPbv79MlEdr
 IB5fz/AaKBYE0bypBWaq4U9h7Z7nnUfrEAEPt9QQCOW05v/EigMj88KR2v8ICGTxMRMoxeK2J7M
 0i9PTvCSiKKskrRCN+cf/kznot5lwJjDBDYiW0sRQ96MJHYE5l3ue2hUHO1irlKk1iqWA3kT4g3
 6NmoMTj7BO95dwNoAZXja6hSeILpca4a2uO6HR3X8LQWPPytJAyqjhsmpgqLSdZZG9fSST4R2J4
 uIF+JNzVMe0I/T2CKmA==
X-Proofpoint-GUID: nVtLZ-MsNsdoXhCdajRLZCB2WHukvxs3
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDE0MiBTYWx0ZWRfX4Ebv1FyS8Hnk
 xNJ8JRZKu25NexpoYwHQBPJIDLFHzue9psgkJKX/9uMINSIeCDEhg/d8hlV5z4kgtgCROf0Q80p
 OmPgkytopU9fkURce/nafDlAfTuaro4=
X-Authority-Analysis: v=2.4 cv=d/fFDxjE c=1 sm=1 tr=0 ts=6a95ab97 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=20nyjBPLO04NUT9Gj6kA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_05,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608310142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_092808_355414_60EBD309 
X-CRM114-Status: GOOD (  16.13  )
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

On 8/28/26 4:05 PM, Krzysztof Kozlowski wrote:
> msm_ioremap() accepts being called without name of the region to map and
> in such case maps by index 0.  However error paths still use the name in
> error message.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/msm_io_utils.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/msm_io_utils.c b/drivers/gpu/drm/msm/msm_io_utils.c
> index a6efe1eac271..93b94e330cb8 100644
> --- a/drivers/gpu/drm/msm/msm_io_utils.c
> +++ b/drivers/gpu/drm/msm/msm_io_utils.c
> @@ -77,7 +77,8 @@ static void __iomem *_msm_ioremap(struct platform_device *pdev, const char *name
>  
>  	if (!res) {
>  		if (!quiet)
> -			DRM_DEV_ERROR(&pdev->dev, "failed to get memory resource: %s\n", name);
> +			DRM_DEV_ERROR(&pdev->dev, "failed to get memory resource: %s\n",
> +				      (name ? name : "#0"));

nit: name ?: "#0"

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
