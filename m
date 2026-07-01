Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CF67C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 23:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEuJlDYWs5xz4HNOTuLDoYTHbft98JI6v4W4q/vKyF0=; b=Y72DnoOk39Bmr2
	UJGmaHzoLt/b2LzZUtbOOp6TQjXMkpx3cez3imrM70GBa+/Svldh2jQWJPhFFPZTczDG+G6c/rEPV
	d4SF0Oko2hhcPDmcfFIfjX+3t2egym/p6F2DEgA5K9J0o61+Hjrl4bLf1fInnUHNLNdAPc/VWpcBl
	CWM/3PBQxyvBPTCLLdrZWudIoPuHsO2LjUvKuXzZf91/kbJgmE3Q51EGoyG6iYNsLGi1EbsBcB+Q4
	CqvXqty9kohAQ5nDra7zrenh6ZqWBMo5Pk91eRQqLBlzlKUMsr2XsS1JsrX+XOvM3KKxOB1ydjFE2
	AFhjQDiueb7QAt+yjfRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4IN-000000039Aa-2ESV;
	Wed, 01 Jul 2026 23:24:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4IL-000000039AA-0erD
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 23:24:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661LhhRh2491147
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 23:24:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2hvamgifKm2sB1fXIHK+rOhS
	pe4bd4g/AfutVumANqE=; b=heeBx074q+C6T0fma3VVv/HtU86WHMgVL3fU3vbr
	s24kfBFWwTWWO6IzCF+GEBmkRyGQEtEMsAmtCxHEWbqJFXTBORzIAoHdnbR/5LX2
	hcui7NXaqSskHLoptSSC+wq4L4Er9FavGF5lqZ6U7plGNK5vQbRjMCAaSbHRrBxN
	BiFfKnOqUQ8jmZMQ9iABb5H/dfeBANcD4Wae5poBpkeMpfxwlSMPRl3eO8BkofIC
	hArXmMc8h4SeX4RNfDnB5FnHXB3zK/i9yIV4aSRk4m1DK/qFFkDUSwx8ozbo43rA
	vt7veqTUn8AaFwKLCLsNkwZ0yneXD82rk9jlVl6H+W3CrQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f50sd331d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 23:24:39 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-92aea0d801dso147450485a.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 16:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782948278; x=1783553078; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2hvamgifKm2sB1fXIHK+rOhSpe4bd4g/AfutVumANqE=;
        b=KzLbWIb8b1ME3ycy3zM+0FiCsiB722brffmmFyQ9wjrcwweBefBGp3aK1atk+v/b14
         sLtOAIWB7Eh4AahFUtBkwMZ4rZRWc5g6+1ZJ+aXq/tQuPYFlT5hMMe2hoYghkbqLBhep
         y8Hr6nFiMxZF3ZFt25SO2i1wAMUWERZn0T6rx5+zsPoyWmWqItInXmWWCKLGHKgVI76Q
         ALpKc2nuEuSmiWApBx6h5FGjCishikdudPVgdi2BeBHOIU+cJD2mQ+C/4kI+vgNk+PWQ
         mFQgX5jfzRXvqjm9NTc101IWVL3sGomVtq+2x1bB6/iaA7t6AjNcnm+FHoIi0VT9BN/D
         V1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782948278; x=1783553078;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2hvamgifKm2sB1fXIHK+rOhSpe4bd4g/AfutVumANqE=;
        b=g8DEdkN4Ap0Rb3xf4aG6Sh/NN8Pra2U0VCAws1bJpINi/2hBcAiVOcFE4og2fd1EmR
         mh+vDYI0X6mhSNFt1btNQN/pnQ3CLCTD8s658ijKHNkF1XVcOO0+l6E4jgSEW9QySJVc
         Zv+h+et2o1MIx0c0yMaQtL625TNCK4vn+LNMnnmco1PuguOJzmBMGR8VVKR1XWqtu1+E
         BrGYaCGVzTSLu569jRj6SJ2s7fe6U//3EOLyMzWxl3hMHjyVZkvWgXdvHIZ6kBKV1mRw
         KRdnplZtbiQITu8L0mpYtI3V/HV77xyKXM5DECsiMc+gmu/WhNuz8hV7PUo5Rv+ol6Kb
         zRpw==
X-Forwarded-Encrypted: i=1; AFNElJ/weAvZto1mS1gfElCuJE97nJVRtZPf8YFJGwA/C6O0iPMzkFmWzU6cEAbJPjJdYqWxy92wIU2N43I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzKVXwgZeNcp0vRngoOCMeB91ZH3uQy4YM1MEGIATngI3qu3moB
	MxfKz0fXnXrcgSv/6VlERIpRO48KsqfD4lt/Kyep3M4b8i7n73j4DGAcOBOirM6nyVe3v4sNoFv
	H47EZd+zWKwn20VgMSm8DiJ2xH5RWkE97W6Qk6+riBe8Qu8W4vCkxFANvie/u2z5eAa/s
X-Gm-Gg: AfdE7cmNrM3bfkE6u6+YbnUGGsYFG1tu0/MyLex4ZaJG2IVuVgSKAhKZR0z7cfTyblH
	5EL9Ra6GopdilCsdlbolphYpGaQYPN8hJ7k/y720SIHGKZ0O1a5v237KgqR3xhzDHuX0/TvF/s6
	pcVoN5Hz91Gnoj7N+8J8hpP+EeCVb+WKXEIF6lb82XPaDuK7euNKMYL01hFl1fyoNNFOqp8XqJ7
	3qukMxwTBDa38XFIMQlQa7bTNqbxob2/JnjgkGJS+pChTFmhNAzqA05U+S8WMpKM8dBWp1UvnSr
	rU9qt6d/dY6F0hQvPv1ohf0WLNZnymMaI1vQoaUjWdLyMTtw6ve326oy7n+6dEZXgRdu8zIAHYR
	VD/F9rRdU5zkiePBT5jZH6FUAx0Uai1fH7mrtr5H0pQdDfTG4vsUq0s8Iagd9PDhZyJ/QGWmuV2
	h+dYi+yU5UuAyPajW65Qu45JP0
X-Received: by 2002:a05:620a:46ac:b0:92d:6961:9519 with SMTP id af79cd13be357-92e7b0139camr436519885a.8.1782948278233;
        Wed, 01 Jul 2026 16:24:38 -0700 (PDT)
X-Received: by 2002:a05:620a:46ac:b0:92d:6961:9519 with SMTP id af79cd13be357-92e7b0139camr436515785a.8.1782948277685;
        Wed, 01 Jul 2026 16:24:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aec8991b0dsm320333e87.15.2026.07.01.16.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 16:24:35 -0700 (PDT)
Date: Thu, 2 Jul 2026 02:24:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] phy: qcom: qmp-usbc: Add qmp configuration for
 Shikra
Message-ID: <vodejww4dwqanw55dsyhinaxx4damkh3mpi22g7zaaabz57khz@o6njpo34yrlc>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
 <20260701165051.4122259-5-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701165051.4122259-5-krishna.kurapati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Z+3c2nRA c=1 sm=1 tr=0 ts=6a45a1b7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=uS2ns290GtotmmKbczwA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: S39N5LyA6we7RNmLaW6oxhl1F-PpWRaJ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDI1MCBTYWx0ZWRfX6etb3j1daPyR
 Qse2fuGkwIte0h8dnys26LDkDbbBoeW/M1HKjX3HY6cI0mZFayNvd2H40fyZF1txpoO+bQjPVmp
 NKmxsQBjOvELWufXV6t3sdVx0f31z6Y=
X-Proofpoint-GUID: S39N5LyA6we7RNmLaW6oxhl1F-PpWRaJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDI1MCBTYWx0ZWRfX1tQe0RrZWQ3+
 kouSJBhPpynBuIWgRoDTGyBcJVo+Oxssfb+e0PQ6aSJp8QrBxRtHx0yp8Hx89iwfgFgJgag2srs
 8pe0pQVmpUEAf9HpZXjLTEuKyNyC6twAs+xlxaKoyjabI3J/EHwn33WYPoA9UiggXjcH51Sg64Y
 Tm6jy0VD3IAolkpngPXaFQthud+FNDwtFEfbshKhiVuaBQ/8/NvWhe68T2Ygrr1h4sOSuWDSpYq
 v/oJQU9EaGWzTL276z7SoCcAabOtBI43A3qGDTMjGNcbykJ0EklmBvhhcExw9lpqnF+ICm9Vv9T
 uFXHNjG+XUyEIxWBS25rumfeM5tiY+sQgRa3KDSVaFXqI5ZZYs24k0TD3xdg8ScbJF1EkvxFzCZ
 bgmycMYHtGPDlPC+U6OSyZHy2YhaaTi6q6D0TZFdQPM3JBHF4CY6BVpFeVrtc0zKXHwRMNDVmJE
 OTQzRVJyWC9GJigTaWA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_05,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010250
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_162441_219686_A83EC38D 
X-CRM114-Status: GOOD (  13.72  )
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

On Wed, Jul 01, 2026 at 10:20:51PM +0530, Krishna Kurapati wrote:
> Add init sequence and phy configuration for the Super Speed port on Shikra
> SoC. Also since Shikra uses 3 resets, add support for the third reset and
> configure Shikra platform data to use 3 resets.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 53 ++++++++++++++++++++++--
>  1 file changed, 50 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
