Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7837C4452D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 22:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdtQat5cXBf5RJsVYaW/uHz6gBsCQOYl1sbUXPdW7lw=; b=k/w6TjmZzUx7pH
	kq/UL9yT+bGGzXX/DaRzv5WdSC4u260hK4VJ8IdfdS1TGWk1Zc4pA0WRnLD3n0aRkvlvCVG6hbXhQ
	/SMSQ2xb1NGNQ/I0oqDxdcynHCIn6rf+a/E2l8A7Ghju1wKQksCwCVEAONLeywTaTdNTVrVunXXbx
	ZS6gVCMxbJPKncQ1QJYY1CsIdM4mMHqPEzSj9VuEmo7aGfJJt4A/YwEcbhcmfIYZedueE+7Jgo8zy
	i8jLydjOpTV0y5YcS2mnqT6uxIWLyPKtiYaKdX7kTdsiQPzWgxumU8VY3PqA8XBgj+My2KQSZdao0
	63X179PRNpIuCr148i1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJJg-0000000AXEq-1SHB;
	Tue, 21 Jul 2026 22:52:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmJJe-0000000AXET-0UY8
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 22:51:59 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66LMZHbW2625296
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:51:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XS7xhh4HCfCvNxpAVUpkGBU6
	MKSoOMCEQaZdxWSYEO0=; b=MQh34pTK8MRFuRZtdTddPb+jXNkA8+u4M4BSQ0Y9
	iOOyv4AoEzc1rO2Sh3HprdK1WcKGFj/ZAbHy0CLewf2fFZX+TYCevx1URsS2xGZd
	VOQqm4s7JeyJ4PDTD/xgRuPNKeEO/fdqTBWmigArdpCzQq1Eh/lb+olIkPVjomX6
	vemmRo7JFBYUxVi9HmdbJa8yCLZBqsl5umtm0mK66NcYK2PyrBsCQEVvxMriE6Lq
	d7M1SDk01QwHzDCY0/WbcNAN+i+lTyZvlV7eDoKAw+bYQwQlxJeNcfOcgvupP9NB
	wFXYpA06m5a9sose5TbTjBFvZ2GmYDbysrNrtwFnmCNFcA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6fs75q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 22:51:57 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51a8db414c7so205955821cf.0
        for <linux-phy@lists.infradead.org>; Tue, 21 Jul 2026 15:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784674316; x=1785279116; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XS7xhh4HCfCvNxpAVUpkGBU6MKSoOMCEQaZdxWSYEO0=;
        b=Ih32xvFqWkCLDPWzUVu6M34Ba2a0vbzf6jR7Qs1LaL189AkBzFWQgyvFeZ6D9QfVpf
         tYulwy+VkQxftVJpa0Z7bPwPIdK8vCT3ynTQruBUMp7Eoe4vG4Ez0bRxubWskB2Vf4rD
         f2Sdhx09WFqxByuVFSuaMWneUd2qK8EaoFo5ut6Vf71yraVe3GsgJeAJYUArJ/es+uMX
         TCVLhNRmOqxmoGSCB03SHSHO2ROnxEbHM88kQCFxW1qfnXnvfIffJCX04hhVX0J7mp58
         +a3oI3si4ui5iPJb9zxmXfhlTpflYvYEaXBb8bNdqJiL156/wxaYPphLf5o2pPGuAebD
         fcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784674316; x=1785279116;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XS7xhh4HCfCvNxpAVUpkGBU6MKSoOMCEQaZdxWSYEO0=;
        b=M6tvEIZ65VUQ7XB5wbJgerV5vxeu3m1NKDxV6SauuZKyVpRZc/t8MpcaEmdsIsFX7G
         2q6Bh0ltPBTFv8wobuqLje2NT5ZVv67EoBnGvdWxPAjMLIoxboDsRgWdrSwR+lyoLPfu
         1I93PFeX0I18VbO1batwwBALgkI4UDVgZq65X7W2GOByPMEG5HVcXdA5sPkGnJyYYu8e
         uwi0wUVYOfav01KmoyA74wFBBbMSz7+St4xoxqKyV8ckrTykBfctk49TOppTAbfXHR6/
         6wb1S/OlHFMK4/LpLDTMYAyZr51FGzdFCbI41Kd/jNDoEmkgHBiPVrm8zUjqUJStpKTY
         rGoA==
X-Forwarded-Encrypted: i=1; AHgh+RqRH33Ca5Ktu7WrmXTf9qcsSLxz8s6T/fs+1sO8CfnMtibvekOPPqnV9vySPnur7tegQ875FOdgoes=@lists.infradead.org
X-Gm-Message-State: AOJu0YwxH8C4L0jCPjQqctlGZvNcC3zru7+0qZco3qXQ3/M2XnpUY/iX
	RgyAg+uJmu5UGolHqjfmUmKz8vTs9oqIJvVunFTbMYZPvSWaUtDRhxa8ouinZ7GgVwsAE6jnYBi
	tWDXr5nuUrxYh+Hdc7cJCDKGf7tmcF2LXcCS20NhOU5Jht3iajhu0ym39TzvNmzim4H3a
X-Gm-Gg: AfdE7ck8f8k5zH91ljcWgBB5h3AzHUCI5fQS9ZQUZuSBOJaGutgbvA2y66HQmAYlctT
	awNgQztvuZjyGP40yNojbozgX5EW84nz/d6TMEtUIHr4qXvEvlyzn8Vgsso39mXVEy/YrHsdk5L
	UauDA/hh10ZAMQBZsKtML8oUbKYZEn4pNZIgJIzZP4RY5lx402XALhaijnF4XrN6YmYnqCZFlWo
	FQrqj10O9RJcuGksbjMHdad1E0NRkuid2MID260PmIdPU41RIp9aGnd7khVlswRvGYGIdUG5fYj
	13Ms65r54cei/MX7qo2cFseer3jpgLHJI52wovVDDQqouT1uCfbL2c/3/KmLerMgilCGFjfw/zA
	osnak59IrQ4Wv0V9d92Aqtr1oxUtpuYnwstMyFiIftDmPy+hf4M5HLfxQjJPhH5Wi71YyLLyHyE
	nOVrU3FeD0NsOyuA==
X-Received: by 2002:a05:622a:22aa:b0:516:e249:e30f with SMTP id d75a77b69052e-5213e876fdbmr202401371cf.42.1784674316315;
        Tue, 21 Jul 2026 15:51:56 -0700 (PDT)
X-Received: by 2002:a05:622a:22aa:b0:516:e249:e30f with SMTP id d75a77b69052e-5213e876fdbmr202401211cf.42.1784674315887;
        Tue, 21 Jul 2026 15:51:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9d31c82sm151883e87.41.2026.07.21.15.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 15:51:53 -0700 (PDT)
Date: Wed, 22 Jul 2026 01:51:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Esteban Urrutia <esteuwu@proton.me>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-pcie: Add pcs_lane1 offset to V5
 offsets
Message-ID: <vnqbthpnjfgwm3bsp3lysfhugxfljd3cictjmwvn4kuavytvmt@lwkhsuydhamk>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
 <20260715-sm8475-bup-pcie-v2-2-48bd91a19abf@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260715-sm8475-bup-pcie-v2-2-48bd91a19abf@proton.me>
X-Proofpoint-GUID: A_NK1AFCr-I-pLA7e_3AB-BnYhO0AMZ0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIxMDIzNiBTYWx0ZWRfXxT/1rFPWL3ud
 69ZjAMRryJ4IXJlaT2Wz1H8Z+wgwOELpI72fRmDyktYI6WVAK3PHUi2HSgPkKffyU1Z2gr+LwJI
 V0vyi52VVCLvNhi2Gu+2dLUd2MBoR6GLYk6f6AKQVHo2aUi32dPZr9eSRCvkde++a57r5lAoppk
 PQf1TVwxt/lc3Epuc9OEFAMjuQrS2ZkbZRUGFWXpD6zgLhpWl1yVfTX7USoTRhq5YaeF1zcm2j9
 Z2iauPv6mNhgiO1t6ojHhU0MO0ujiHAog1M/C09cpz5HOtDFgyD5dDYAGHtjxRtovLHoXnkUJNv
 f4yWRYLxbJ93VY7jd4WXydl+YKb1i3bGjk3u4wjPuKMdntpaT0/cSm4l9Xfd4GJ1qglZHn0NxC4
 h5XvcJshcShWpzjWWeTVWLDenJEr1tQahAd8jkplYqx4/QFfUDVDsJ9/J4C5Uc7GCIZGllBmwvc
 iPHHwp/okmRllcXr6Ng==
X-Authority-Analysis: v=2.4 cv=e/o2j6p/ c=1 sm=1 tr=0 ts=6a5ff80d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=cyArV0-BNq6UFoJ5HPsA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: A_NK1AFCr-I-pLA7e_3AB-BnYhO0AMZ0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIxMDIzNiBTYWx0ZWRfX1gMDsgluHFNm
 mvyCnzOSAPiX7Sn5/b8WMa66Eds7uy8cMYn055pDXmXs94p4Ln1fsRbz7FgFs3kYO9KDVPfhm85
 bDGsxaZUwjO6icicFWyLqPX5qWsf0wA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-21_04,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607210236
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_155158_164132_FF0FC567 
X-CRM114-Status: GOOD (  13.93  )
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

On Wed, Jul 15, 2026 at 02:37:47AM -0400, Esteban Urrutia wrote:
> Some SoCs such as SM8475 write data to registers using this offset,
> specifically SW_CTRL2 and MX_CTRL2.
> Add pcs_lane1 offset to V5 offsets to support this.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Fixes: 0fd0b31965b0 ("phy: qualcomm: qmp-pcie: add support for SAR2130P")


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
