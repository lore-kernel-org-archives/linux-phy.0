Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE422CCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 12:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8eELSU+WzoHFEV46RqxXdeNhR2/av8b/4rxodebkqk=; b=bMXS8bCpr9Kot9
	F6WA7VMVWiVzYIJpU1F3d6yz7cTV9kXaZHdgSM5xUNBsX4Awiy8wehA4KNtm9pZbxTK3CoD+rcpCA
	g2rQVEiZVFQWjHIq2G8UcFeVwTP/ThWExw7Askv2yrbpjndtesTU00FZdoJjrAy+uGQyXlIxL90z2
	wluMBUszLGvGa1LVS7U755ZuJXfmGqZCw/wBeBcFU/CYbPH5M5Z3kYcrNEukMpUkbNkkh0DecySuh
	oJndaBImFzhgHIRzzIVqOIopx/GK2gWC7kQaffIwcC1EL+bnrY/JbNBKCpLgOFTD1yyKcJ4YWq1eX
	VUlbdO6SDkXP1XCMIN4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HmU-0000000D8nq-2Hcj;
	Mon, 13 Oct 2025 12:36:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HmT-0000000D8nI-01oQ
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 12:36:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DA9rG8032708
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=u8goP0px9a8ckKVRo5TU8/0r
	Gkad5U2lG1RKmUfiwgc=; b=Irwo3ki04+biq4RjeyRHjKxUmrs71JT5Nx4DUy+W
	7s6k94p4fH23o1Ua75eMkZ6so8DtxU5JYsso5BwqxPsVsZTasIPZ6fhJIDYeEWmg
	5q2qmvKgBp3+6pGwLSmGii43JqDalJxDZzt8H7GQ9XbXvOdT+QBsqT5yKxHPqkx1
	9e2VySl9KeHULiWcBfXiwxR4KwU+LnnmglW5c1r319HSfqiwN2spJxjNnim9lGNq
	QCRPrIg3piZ5KqsEtNwF9CcnI+yogY/5PTO1RrxUlcgNbmWCx5MfGp29KvJ/C44U
	rIdSB9y2NHkNhJqZ34hpRvSxCUhcZGVWSSg9msKGNwvgIA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd8vjeb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:36:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8574e8993cbso940159985a.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 05:36:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358959; x=1760963759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u8goP0px9a8ckKVRo5TU8/0rGkad5U2lG1RKmUfiwgc=;
        b=heU8tnQY1BrgJSvguOty1gNk5+wB/Ug//mplNs+qcMCoc84kcxybFWjZINTEbNf8WI
         h3ic3CuOsuvCVcNMZxQBETuov4ezPB0eGuNs8dXO1yd53oQdnzXE3c4cYQkR2DHstTfP
         0hoEuMjB+5muVxPht4hdfkIsi6KE4I3TBzLgZgBD7Hzwsgsnp/wqbwg6RcdyvFPdTm4Y
         1zUvlDIGQMP386D/G40lQfSl/ZcksUvn+J8UpAa2xNnWlOGGidZytBYVP05OKayC9NJH
         p/60vWZeyf3MVXci7BOOmKN55GdBxpSJ7iDX5jW2ZWjkNuyE3CHMswzjRme2MxZm47z2
         YkCg==
X-Forwarded-Encrypted: i=1; AJvYcCUs61PItufxAM7L3pFrizsj4SFdEkk48niwK4OfPdPN+fso3YJvM3qLWNzAWnZMn+tHzpFZXG8SnjU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0+e2iOQZAvnAW4ahJ7SZzXN5EyXmvq44GUWGkNsEd310Pxdbs
	u7RDbmJx73MIaS5DcD1vqYXBcTsJi1yg4xmOWfrW2QE90trMBTvu8yJtwW+MnyDdZMqgbUqyaDS
	zpHGU580aTjugVmhsFWgGOx0o0wAXqR2rFJPoKqSC2ZXFsK8P21m2Hfn3eRW8QP/VvdAs
X-Gm-Gg: ASbGncvp+zD8WnqV6Mu1xqlsPyMyJt4YebvWmylIj7RDXCNMJe86bEKCkLBXpv02x+1
	ajovhcu0a39h/yrvqr36JWnpO6CjnQJGKmmK+3rgHnMLCEfljUi7DqvghGTfIO3UEsZWco4NjKT
	EY5B4lPOJS9ZRYJyIvl//vx4oVHkoulMkLuHcMInsm4uqE081rwOzOSeienWuRUMsWYX8FE0ZB1
	ajHGfmM4d1WI8jkY2QXZmopiOfKXDyBcuYb64qgZfNqoeCDgjCgJYcgyvmIJOuENjBZRdgFOYD2
	Rq2TtuBXXBDAI+5QhsynWSVMGnaxodzLF0mkfUGKtm8ckuE9w4SwFk4H0K8MyuGcnbBUYV8cf58
	dQN2OXKhlOb3Qt/8V7QANoP+yPzmZMzPGK+PL7SdYCTNim+eG9VaZ
X-Received: by 2002:a05:620a:2983:b0:864:1d18:497e with SMTP id af79cd13be357-88354ac39cbmr3044048685a.23.1760358959080;
        Mon, 13 Oct 2025 05:35:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwoj4faJclOVnlrUN8P7wIZhl4D7mky2VyxsU8g1O5JnX3k9H6mJ7qsn8Lah7rEGjXaxUOBg==
X-Received: by 2002:a05:620a:2983:b0:864:1d18:497e with SMTP id af79cd13be357-88354ac39cbmr3044042185a.23.1760358958586;
        Mon, 13 Oct 2025 05:35:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e4dsm4084850e87.22.2025.10.13.05.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:35:57 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:35:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: lemans: Add edp reference clock
 for edp phy
Message-ID: <c4bhkhw6xlaqlwhbataveafav6jcsrgnazk72lkgtj3fygwqjc@4bp5w4q5sygh>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-4-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-4-quic_riteshk@quicinc.com>
X-Proofpoint-ORIG-GUID: 7jRNQ3zDj4o3Fcn9boJIEyOuFaKUl72S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX4Of8zbQLtXHv
 RWJHwuNE/22ceSTJ/u6oz4EFQJilzmYPHn4IRVu+FgruxYCHWYv+qbRMMdnboLLaQctT/8S14oa
 C2wcO5I4Hjsjs4yX5mBWvXoPS/HgHEXrMF0honIM3c1qvpyiykoYGZDp1K7D1C6dgvD6QoYBT1Q
 0/t4Cji1SgrIjKbhQPvX++rAqrROzBJAVnwcc41Waa6WL/Lj1eTIXpeVb19CX3xoBx/pOJkSYwd
 5X76BurBtjIzDUcz/yu+I+fjfMwlHfq2tFhw35O/Nk7JUmLWgzeVcaX7ACvJCM09wqj/b4x2i3e
 +VExyfg5XoTwFxrb6KnKYQdHCmeJDAv4YezYiRVJFumYvdWuG44YSnQOTKZLOBlNPalQ7SmXfFy
 P0tWKAQwiE2pDvPBnVG16Ux4kB0koA==
X-Proofpoint-GUID: 7jRNQ3zDj4o3Fcn9boJIEyOuFaKUl72S
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ecf230 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=xNGN3EASD54c2UHPMiwA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_053601_049717_A000A988 
X-CRM114-Status: GOOD (  16.04  )
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

On Mon, Oct 13, 2025 at 04:18:06PM +0530, Ritesh Kumar wrote:
> Add edp reference clock for edp phy on lemans chipset.

eDP, PHY, Fixes:foo bar baz

> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index cf685cb186ed..1bcf1edd9382 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -5034,9 +5034,11 @@
>  				      <0x0 0x0aec2000 0x0 0x1c8>;
>  
>  				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> -					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_EDP_REF_CLKREF_EN>;
>  				clock-names = "aux",
> -					      "cfg_ahb";
> +					      "cfg_ahb",
> +					      "ref";
>  
>  				#clock-cells = <1>;
>  				#phy-cells = <0>;
> @@ -5053,9 +5055,11 @@
>  				      <0x0 0x0aec5000 0x0 0x1c8>;
>  
>  				clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX1_AUX_CLK>,
> -					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&gcc GCC_EDP_REF_CLKREF_EN>;
>  				clock-names = "aux",
> -					      "cfg_ahb";
> +					      "cfg_ahb",
> +					      "ref";
>  
>  				#clock-cells = <1>;
>  				#phy-cells = <0>;
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
