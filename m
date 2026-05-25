Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB43FCD5BBF
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 08:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWnLQ+GIylbV4Du54+7pwWWc/hpUglhU6sbhyQ+hO7w=; b=LcLR6LBnDqXtRQ
	cCsYbV7JWT7L260yY2UFelvPV5ZdD1QWKkgRdA8LK9UG8104OkF0uSK7JNabxropTproVkDpbsCBD
	r7mQInNuYwsAkDSo2Xtpnjm/YQPQp7BTM07fjiZUF38Nzm6PEZ6YT95kPuEAGNjL5D99Ig4awVdeU
	aRJtde0tNpngOr8924bc8r4RER6BQ1dZDvzvLqDa1l/XAnysDFvgIhzV6dB1jIhdwQJ1Y+vBYd3AE
	uy1jR6cEG0z65q1ZkGbV6GvBMR0NSCbgxglnXxKdZZiyA9/dOJhQ2ZnO+LdYkIXQTpKZ2Z28Cz64O
	yVVJsK2jf/DgMpyQU8sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQww-0000000GhCQ-23ET;
	Mon, 25 May 2026 08:46:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRQwt-0000000Gh9l-3CKp
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 08:46:13 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64P6gPh91223139
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 08:46:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hFiV6LzYg2/gkd1HSW0VgQp7
	ymJq45Zmxzox7MJnUAg=; b=n0ZR32dPrxyMsE59gimaKdFweRtJMKTJ66AMq3Dg
	S9F/YIQe9LKg/ekHv+TxEBfMr4FPbc+Urpcy5z0JLGpsvrDimvPF9BpLTKnkZ6XF
	sV1/LNEhWq4h73wT/uCA7nylzCs9gGAyMdOswznx0W+c+9f8P1wIMgyPAWTejbze
	OOh1zCKwyOjHvUFn2yenbwMd9rr4MxiylSZKSGMjhVQXbLKhtJaOkXxp3c92oW1B
	Lsc4bUWADFPCFNVsEAsDULjCg411sWsWll/eoBCp78NhDwCA679IhandwMPTIYtB
	V8/4DDSJDM6UMgk7R7ZMNOoZ3eDhDeO0cTwBS5m91hbJkw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eb3txnus2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 08:46:10 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-516cde13e8cso81028751cf.1
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 01:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779698770; x=1780303570; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hFiV6LzYg2/gkd1HSW0VgQp7ymJq45Zmxzox7MJnUAg=;
        b=H3YDcgfOohQFEkeOu+Bd1+t9zP5fAJvS/rOF3XpeaDJa/7kirNCH3GyCLAXbkYi2hk
         3DjPIgihdeioGeikTuDdX2OxuvxV5JTNE31DzjwPLfq7NlVpnf310A4bc06BYJkPZvvc
         0vmmH0WSwB4+7O+zwRrjrAE48DgyjKMaKoMTMjVv8KhVxgy/DP3QNbPK5yf1JqJn80yn
         3TyVn+0HDD+Vah+U1M9of4nKH8vg4FqknFYfvg23tvTDxbXYqnfaUJPLAyaK80wCyzhT
         RGImb+uD5QQAaIN03I0vJFTz8UdOb1VslR+bLHaTI9IqHfyR5nkfOKwOkxVXYXCGKzg3
         Zctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779698770; x=1780303570;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hFiV6LzYg2/gkd1HSW0VgQp7ymJq45Zmxzox7MJnUAg=;
        b=DPqh/gKA+fmZ3hdhWn7M+tw1iet/8tQOrAhUl6aJP+dGOjFRPLbBoCjKNwReDnRDv7
         RVuYMg2o1UJvURZymawPS0xMf5g5yM9gsQqNYmeMqHpo2KLr42kK+jNHJDsP/1jZ4Wjc
         cHBq6twAMU9RKHoGp3vxC8onJlhtvLmlXarz+O/OloR/HP7YFVLIAI+vb4U1FlfntfgI
         4z3Y4CZqL9HMr4RzN3J2Zpe8PltP3D5U1GG/D8K9vHwQ2bO/Z9q8AVTSTxPNEIfrJip0
         E2x9l9sg0C4Fi5t5FuR1Jd4XlFSwh8r35oZRv1907zDjHRzSZd+ldWFgmeu66kLrypH4
         K2RA==
X-Forwarded-Encrypted: i=1; AFNElJ8smJCIyCvW1TkZJstY5q9qg+zIi9+KaM+fDXxOHxQ6mLqubUSJYKJm4my0ywvbGb5az0dI+kXQ66Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOJsGw+wc3L472G3YzLZUruyx0A6eIVvy2BnvhC0DLxvMvZLhY
	AuwgrCNd9FA2flmwPmo+k274WI2eUzOx5VBJSo4yP4SMVXMgKzITss+smLoF05irk7Xqnh0jf3C
	A9CiaftUqdBQ75C5/XvN3pyx6hjV4j/tWoULJHHySZyH+ZUvLFsWX48CAMvk8XP35MwLv
X-Gm-Gg: Acq92OE3n0agxAHwbyImGgWNxSnRhOUXmm3xqzwFSY76LuZ0GxB4s9RTSCHCtQx4MIB
	XBPRQ8c7NY+W38sBNaNvy7yLS35ikm9PoMWBJRuICfdIkbajIPGeYD24nSOzyC43W5CHrq6PX9H
	JiFhwcTXELsy4APYZV+ZKyIomsHBdFcjUhg/nKnlTXcOPnu8I+yAKVG+mKj2i/0rZ+KqAbWdWRq
	PbfiINYaa3VhJTdruUnUD4d0w4MDI0nSXLWMkEr6OBtTqnDVxvPlS3mZnZTqzFSZu1R64hDZmOw
	z9/FYQfEhaUxN/ckwL7hyuvna9zWUGfsjiL6LdUnp8727Yk3Gxcl1XBL2oTmeW4SsZ4yQApe9tR
	w6Zh/QSkyylW8lLCtJXpxrbN/Ad2VfpRIoPFYYdNMubkHgv9WSFGd7qVTGkSGwCnynuVWblIlvM
	Id/9ssX0GkoO01RX40NU3sarjofpgLV0vXa+4=
X-Received: by 2002:a05:622a:4a08:b0:50e:5acc:e795 with SMTP id d75a77b69052e-516d428549cmr194093181cf.9.1779698770161;
        Mon, 25 May 2026 01:46:10 -0700 (PDT)
X-Received: by 2002:a05:622a:4a08:b0:50e:5acc:e795 with SMTP id d75a77b69052e-516d428549cmr194092971cf.9.1779698769783;
        Mon, 25 May 2026 01:46:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-395dcc0a196sm21352231fa.21.2026.05.25.01.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2026 01:46:08 -0700 (PDT)
Date: Mon, 25 May 2026 11:46:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, bvanassche@acm.org, andersson@kernel.org,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH V2 2/3] scsi: ufs: qcom :dt-bindings: Document the Hawi
 UFS controller
Message-ID: <fhdronmweor6vb4yu3ggickvvzj7ls7w4eqb6tsvp4amjpg7ae@xfr4up3iesjh>
References: <20260522172716.820490-1-palash.kambar@oss.qualcomm.com>
 <20260522172716.820490-3-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260522172716.820490-3-palash.kambar@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI1MDA4OSBTYWx0ZWRfX6FsjmH47YwiP
 6+jGoKHp8f8LyM9JFxksQ43WJYNfBSn/nNxDVDyBfF38k6b6qyuHm+BLP1BkRTIa8l83wAtK+qF
 xgjdJBZy/DR3zEr3ZT7EusmfGw+cOlvPAZA9BOBBI45lSVfv9gCzPP0pF0irhXIYE2kfD6Xckli
 iuLp4mCQ7+r1Oxi1VDKEP8BdTjXH4poPlfDEzm2Kd8RZHw/WLtbVoOlyMFftuBisctwcGMb0jUS
 6G6lEaIWigGzlGw+Vs8HPBo7Y5rmoLK/cuY+RuQhyirJDS0TpsPz2A4ll2/2kgZTn2K/CPP1IaT
 +xp2LAexzkFAYXhX9HOP2/Ii78vcLZh2FYDZrHdWZR1CtGc6dwD1oGB+ycr4D+8a2Zcxsjlc6Jq
 vpUjWKbWerKOlY9wNG8ILyPhrSjhhGONwqx2yMXBEq+r4L0aAEN48/lqWTvEiK1Iw4O4LRbP8m+
 yQOKPtYFZMZ34fFHChA==
X-Proofpoint-GUID: TaY_ojb5bbZDHesGQxuCBgE-1cDXHK4K
X-Proofpoint-ORIG-GUID: TaY_ojb5bbZDHesGQxuCBgE-1cDXHK4K
X-Authority-Analysis: v=2.4 cv=MetcfZ/f c=1 sm=1 tr=0 ts=6a140c52 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=50Eb8-NO9TumpNjsHIYA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-25_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605250089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_014611_973805_257A6E91 
X-CRM114-Status: GOOD (  15.98  )
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

On Fri, May 22, 2026 at 10:57:15PM +0530, palash.kambar@oss.qualcomm.com wrote:
> From: Palash Kambar <palash.kambar@oss.qualcomm.com>
> 
> Document the UFS Controller on the Hawi Platform.

Please fix whitespace order in the subject.

> 
> Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
> index f28641c6e68f..3de00affa4c6 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
> @@ -16,6 +16,7 @@ select:
>        contains:
>          enum:
>            - qcom,eliza-ufshc
> +          - qcom,hawi-ufshc
>            - qcom,kaanapali-ufshc
>            - qcom,sm8650-ufshc
>            - qcom,sm8750-ufshc
> @@ -27,6 +28,7 @@ properties:
>      items:
>        - enum:
>            - qcom,eliza-ufshc
> +          - qcom,hawi-ufshc
>            - qcom,kaanapali-ufshc
>            - qcom,sm8650-ufshc
>            - qcom,sm8750-ufshc
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
