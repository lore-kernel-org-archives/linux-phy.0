Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61BC0D1A610
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 12:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWxtrHJ5zNYbHPlbFqirm5Pm2woP82ivFYFMtpgTg3k=; b=tBDq/TfA75pLje
	tBiHd7kPk49sGJAJnA+C6vItEUXt3Yx14/vtpA8vJRGwm2LqKvvwJ3D9RPNZu3iTNjlhBkKzq5Cma
	a+K9aNIjoWZx51Anad5G6+bmjUpEaogKrKQC6cRub7l3c7Ghx/FXsUkrkZ0ZDb2yDNn5A/vXJRNwx
	66MyfnurPColJ7kWn0VJ+TnSC5qADLSRMwEcPS6jBPLts0GhTOEdAmSzjq4qygRCYf7wmJXL6PsLZ
	T+YTVlspwKIdXjamPaAUvAv5cZV6K7aG9bgJre5lMdjqfOx/tq6FAa0vMNHbHxVPu1uQB/2M7br64
	dbWDVLIBgak6n4Kdrt6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veBwE-00000002JwF-3e2E;
	Fri, 09 Jan 2026 12:49:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veBwC-00000002Jvs-0tfo
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 12:49:57 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60975nuY1953455
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 12:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Rd5uHVBTMwWuRc2epUK6f920
	2o112jWj2BZm/gYde0w=; b=Mw6klRMcBaVZT2/qtbZ975yCZOxXNduNfQBe0l2k
	IulxeIj/bm0qe2a9E6ijucFyrdtMzVfSgtHf7XD+GMl8Kx+P9MvHpA+W6U0uQx0N
	FFMMIES18plXmp3/F0Y99EDUBALfjzNCWB8WnM/wPWcKni2mh/9IToq+u9xN7zhj
	MguY+E74g3Qk6Gwo0Y9qbQY38hOZwYCGE+I9an3M+oK+q/vVn0V7SfBIlP6tPv1m
	FFTdKqcLnv24x9QjKMc/nlC2oK2KaAeouw1XgrH5LKDDbqloRu10G8X6UQdP0j8P
	vVySELgv+yTstyVDFK1u3utFqP69qBYDk5eKa19VQMiB5A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjfdabbcy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 12:49:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e19c8558so976386885a.2
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 04:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767962992; x=1768567792; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Rd5uHVBTMwWuRc2epUK6f9202o112jWj2BZm/gYde0w=;
        b=Cyi280R9uabR0WRF1ZFSGLZJEjCYCruVYF+GmcpGJqNbrSp4IGHIsbS8oZJLaUN+Ta
         e+aqBQoHfyn2N7zkkPRCoGnz929jPEFD3nPRDl02jFAsE9hsQD+UPa+NbXdLIEl8GldF
         FpAa5ntQTkUBXkjBJYVb/pnuUvi3PfYL6RM3cATch2fff0xZIrGDbMCqvW3lWI9pe4R0
         3DxTE0VHFXNhyMLKkIa2jGv1oSylluKJUKTQu3aVStAU/iNeh3Jz9EfYLBL0nHSFNWqa
         +DfpB9yeq/NjSVpJnRHQGSalSmrFFhkrxnnon3+h1j+eNSl/ffWa2qwpscIQlEvLDZWR
         fcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767962992; x=1768567792;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rd5uHVBTMwWuRc2epUK6f9202o112jWj2BZm/gYde0w=;
        b=UuFu/6rr/X/a/nYhl1rOLU1qBeCy7AWXO4GObigyOvOyWTG2SUoc0ZSYoXp1f6qWDt
         MCLhm/883OmauNYaBn4s8UU9eU3fec0W3MJ4AB7pfjjvUdg8XD5F7n/lc0U/K11a1Ler
         UEv2GiLzORobD7zSyTyPAJBxaG3Fq4MRP2pzNAAr7PK0pFGadyt7x+OLzTDMuUtGr1AB
         lFRHYI0rmNfhSgAnMfE0D87/qmw449AygrT4mb874KSAus6uP2mG2oHzv/VtCl8Qkrzl
         AcWpQh5CxqaRb2CGjqA6drFbESqGvBkeKB1i0AysDhYagzO5SN789fVguK0jaK35wQWi
         zZ9A==
X-Forwarded-Encrypted: i=1; AJvYcCWx4Ad0yw+xbj+M4L3V0r2jZ9tkbwJr3Mfm0V/s8CvZb4r/lAYYsg1VvXtDFUBLTb4RoF0kSY+glUY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyldpkDMgMZ7ZBFx+VvxiK8sJWT/hEnV2R+JulV5Jx+W++/RmAT
	mnvO3yRnf0g+xMDa60WJjsSBElmcr7ZFTlfZwBtJ2lAl+wBgWvn7J11mc/sVF/F3EIxIjt+ZHCj
	HlpxhQHGDR8H0ySeKwgdJ7nX4MSU/9LyEtp+vLx0OTmLxl9fTh+Kj3f94Tx9zoqcxDqIj
X-Gm-Gg: AY/fxX7iZn5aGJzDp7Rvd4RYNSFZpm4zpCcQPMfjCOfzwi5YLx1GU9je4aUEmhXuNuX
	ZPVtEU/+6jfNgbRX5xknmc8WYGmYHBvy3sESCNksHXL1kLyCK/+svXXlFS7rpZkKs1DOKVObjk3
	VIQoZ+MK7pBTEth6pXZwdnjE2cINKp/u7I7Ah3KbRVPvreCjRX/C7bZLVNiZSY8+x5V2GYLb6rZ
	bgIf+SGrFh6rScTw69VSTmTwW/O7pva4Bov7pYzyLADazb4sdnqg5MBTg8MyhUXi6iMOXMB9OTf
	6sWLYcLzIk3ne0JDbWaxEmDAjffOxUimP9jzMiqVeqkb35ec+XBGDv105moB0e/VMXxb6IklxTt
	FzZDkxtr4Oz+HWzQ/Fu8UNUQYtNk9cyGE3qsOfWTCAJs91g9JoViul8DdQtiZ6y4xpbipTDOeTe
	PKvxtHyj/MCBWOgSbSL6b48Dw=
X-Received: by 2002:a05:620a:258e:b0:8b2:edc8:13c2 with SMTP id af79cd13be357-8c3893693ecmr829286785a.11.1767962992544;
        Fri, 09 Jan 2026 04:49:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHstTtb3FrRh30obIfJP6DUKWz7S2L8BnVOnPKrp23IWevnvTKBVQtaFafvf+bRIVu2jd5OyQ==
X-Received: by 2002:a05:620a:258e:b0:8b2:edc8:13c2 with SMTP id af79cd13be357-8c3893693ecmr829283785a.11.1767962992062;
        Fri, 09 Jan 2026 04:49:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb3bf079sm21512361fa.13.2026.01.09.04.49.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 04:49:51 -0800 (PST)
Date: Fri, 9 Jan 2026 14:49:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, neil.armstrong@linaro.org
Subject: Re: [PATCH 1/4] phy: qcom: qmp-combo: Prevent unnecessary PM runtime
 suspend at boot
Message-ID: <d4m5xswrcekjm7vb7fxzmx7apirgmmypaqpmazkp6xqc2aifm3@7iyer77wey5p>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
 <20260108154944.211886-2-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108154944.211886-2-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ue1ciaSN c=1 sm=1 tr=0 ts=6960f971 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=b7NUgUE6t-UYR0nikDAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: CouFqZUVBk9NGTIXNXRj9lYMXUVxHHTg
X-Proofpoint-GUID: CouFqZUVBk9NGTIXNXRj9lYMXUVxHHTg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NCBTYWx0ZWRfX1KKMe4mR7R+b
 4wXDbV7PtaavITw4X0waWIJ3XWsshkvTzeDBi71R70zDo/zR147KisxjLWsy9IvhK4BAZlQJkvg
 wFw4YklkSwv5aLL9/xOIH3a+sPktjZfhNAk2/lCsywAgPtZa3YpVxRdwTsnV2R89jCqTKsb9Htt
 OdovaWrzTXSPYGK/7XYae/59SymDbuH174b9jbKehHH90mZMmOsl9KUxjG2Vrp+qr+VjETDyDXe
 7A6F0fkJdnUsf5nGXPe5jFHddVHes0z/FGrSFSJFGx++VBWnbASjNZnRnmlNIlayLpEr+5AV8h+
 UdC+D4/wbF+zixhDiKd/JDqmw3ApSvl1vdxbI6viAGgvMh87XSLw5KS/+Mcrgoi4AaZDYiV3XHP
 p9403L3p2PjbgVpq71TX/FKYAluEHBjrPuDju2rdLU+xpunjlldcrLsDJxNQO3fic1LKGt27/4d
 t1hiHWb7iViWXI9lu/g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_044956_383377_10E37C2C 
X-CRM114-Status: GOOD (  13.94  )
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

On Thu, Jan 08, 2026 at 04:49:41PM +0100, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.
> 
> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
