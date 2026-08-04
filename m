Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D501BC55184
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 23:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BsQFRNCDkYn+XpunijvK90Z85DEeFn3NPddRntgd4Y=; b=CSUhZXhldT/qeU
	uGlYaFEiy0t5BglLbueDTcv8gea3OzHdh0oPY3Ro7zblEBEuYn72Jf3byz81f3B5dLCpbyWCfqYgD
	9syz286TcQ2cbT7plvyVsVCfKoUZ12nPP8Yj0/fG480XuYqzNje+wwEATOTU43eApFSszmBskSZtD
	YE6P69cE/BOUEki5K9Ykd5ZF+yPlqu661im+5Clv6FuNe/5ZsBM7eHwLmp/YM4b5qJDBbb+H+U6W3
	ADMdToFza/gU54j8tPnlrDwgD8nWZ+2w7il24dP1nTInS6wZjxK3tf0ikUZyeAnh8VAwy6AhcCmjK
	VYQrjtZhOw/0WZDvnY3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrOiH-00000002vrO-0KmS;
	Tue, 04 Aug 2026 23:38:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrOiE-00000002vqo-2ZM6
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 23:38:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 674NH0Lw1395888
	for <linux-phy@lists.infradead.org>; Tue, 4 Aug 2026 23:38:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tCK3SPQ5zchCrYz2NKkSth5I
	odtFQPccsfX2kI83AMI=; b=mtfKplyQITFzqsT8gyatEHQFQypJkOTxkJyZH9Vr
	EXpZygOHC45PxKrUA1Zr4I+OHatWhvffLnhT5sivFXGC+BVsIHyVCn82oceSG20D
	1SZ7/Q5fMzReMtdyhviNyec2ZJVFZBJ2R+Sm/7/8j1jw3gRxJO+xU34iw66FI/uZ
	RUm9tTz/iuJ/VOtRfQiow/MHWa3tMm3kVm3SGYKOCnyPi33Ym5YWzp6OczzZJcGS
	gL68lRi+yNAZDzBKmGI3MygEitEXfCLbbn3lOXSmuRKq1r+1h3QxTEvRWyENvwoo
	grZDCfmd+vJk43cEIeoTa9mscDy4BHDn8Km+r0SIr/gswQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fug65aux2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 23:38:19 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51bff5c7035so5894531cf.2
        for <linux-phy@lists.infradead.org>; Tue, 04 Aug 2026 16:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785886699; x=1786491499; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=tCK3SPQ5zchCrYz2NKkSth5IodtFQPccsfX2kI83AMI=;
        b=H2qXiNQfVCOeEwsV5jHUVV5jhwCj94wR4tKkgkt8ffx2cranxGojyiFR7gKTsfd7Bt
         MkWUUJoSTfm565l6waNbMaGF0Lm74DDUa0bHTcgvD2kCmTQ4bPV66GQScrGymQL4LfE1
         j5IaXDCFjvbw6c6dPkwSC7xf2QDIGKdf4Xd7Y3t3vFzPMOjCA2Kh0/onhXGNKhspEpTS
         WLASXOsrx5j838TX45EHt66I7X8vBH1MXpxiZk+iICrbt0frRKBuUjVSW2h3wN/dJreb
         U40HZLcwKKqaCpGG8h2tAXi6dXGRdB06WGH0W1Mc4ma5W8GZ/SFjHZgK+a51UDknQdvz
         NA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785886699; x=1786491499;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=tCK3SPQ5zchCrYz2NKkSth5IodtFQPccsfX2kI83AMI=;
        b=rQe1m89YJe1GLBW0NsSmxS9//tSSOH5ji8Vb7+UN1dHB1S9F0+lPxYWQ51Pu6jaNDl
         2QQcqw2hAQ2WgBc6wX09rP1JWj+KHmRBaOFlJew0TXBpYmRopTlqcE74eP+VOjGpagIS
         0aJaKfZ5EaghKCKQdb7h/GS1RoTkR4n3JDe2G3ZqLlR79DOxA1un5KZq7xDYWx2fLMHo
         73X9yBnAabkOyp/pO1YsBqCrDu9bF5YOoxFA4giLE4FjYq82xnP8flB2rcMvvS01LyQI
         fM4v9Gb7Kr4Zj+xqr83y9T9/2CDAx6rTuO/mNOmJsldDAbVDZ0QDcMcJD0ExOD3dyOSi
         fthA==
X-Forwarded-Encrypted: i=1; AHgh+RrU8ilyU0QddaZb7VSv7iciw9CrbZKwVwDy52Bp6unJGPaFMG0GZ/T0To+4lVLkaUlsGW6f/XDP68g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLnp4f/XI/XUdEerjaoVGv0270h29AEYOWeqVR9aITmMZdJCpK
	UyPk3nTTKF5pwXfWSn2Q1v/nkcRkX2Hxdw2U4uxtYyY8Me3aRCk6s9bw9KyuBxtdRa0sIqqlTxP
	vpPQDPHebe7snhXtDAvrM3wfSUEwO922QVu2zbfTYJPxDiz/MkAEwkaj9OpcZy4Lft7mOWcMCmU
	xA
X-Gm-Gg: AR+sD11g79aIFtVgw36lGGOhUJv1bGiIjoGwPp9obGKRXmab+k5wDY5+VbO5fZSglsr
	hVo/xHaPQ3/6IxxfHWthj2ZAHx+4dhl1UgR4gpHnEMH20Rir+SUtqkfKzBY9/26bd/2uvjJsp2t
	d4w4xNMr4qKnRJ/cTS3+1ebrZXhGFzwlL24K3wtEESw+WNcw62OknwxtZa1jgE/FQaV2KkYLBcE
	/+YZ599EPAlgPxjyHgurADhkc0sNu682JOIk32GH86t2lbHRjWprr/hRvmNo3DQ29j0CF/DAf8G
	yzkuL6c9iU8xpbI0wg9MfeMNk6KFjMTe6rc2HLScOEgwwD9kzoJ43d1rhiBKPa9MEmXuZa242og
	cp6VjH8b95GupcKiPzuJm+H1w9jQF5AXzFbewFBFVqM3G2stNsx4IxTaJq4K/onBve7YAvQ83E+
	3lDcMuWTdCJQUa4w==
X-Received: by 2002:a05:622a:1f97:b0:51c:e6a:1b5a with SMTP id d75a77b69052e-52ce5fd907cmr36961621cf.12.1785886697680;
        Tue, 04 Aug 2026 16:38:17 -0700 (PDT)
X-Received: by 2002:a05:622a:1f97:b0:51c:e6a:1b5a with SMTP id d75a77b69052e-52ce5fd907cmr36956931cf.12.1785886691570;
        Tue, 04 Aug 2026 16:38:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fb98eeb78sm3134401fa.14.2026.08.04.16.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 16:38:10 -0700 (PDT)
Date: Wed, 5 Aug 2026 02:38:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: esteuwu@proton.me
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH RESEND v3 2/2] phy: qcom: qmp-combo: Add SM8475 support
Message-ID: <ikg6rz34bs2exae2ew6zrsnvpb4lsno6ugym3e3uxkiv7gi3ah@wogybp7c2uu7>
References: <20260804-sm8475-bup-usbss-v3-0-9a5b9ebf62de@proton.me>
 <20260804-sm8475-bup-usbss-v3-2-9a5b9ebf62de@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804-sm8475-bup-usbss-v3-2-9a5b9ebf62de@proton.me>
X-Proofpoint-ORIG-GUID: 7-uNR6VzFfw8e7aZpAqMdke2_AXSySRK
X-Authority-Analysis: v=2.4 cv=fcydDUQF c=1 sm=1 tr=0 ts=6a7277eb cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=0cGqrpNjlybS6BQeJRMA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODA0MDE5MiBTYWx0ZWRfX4RKYEilLLyoB
 bozncQBXdcppqM8bOIN4zUK3AZHfEzSDUv/TAEBS1Bg4sPBgTnNEq1j4sqsrVL/2UuERVjac9FC
 LbpgNo44d9aJ/AZuUFC0BGxtM2qtXAE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODA0MDE5MiBTYWx0ZWRfXxBeTslt1Wda1
 L4+GkUfBAZ3+az/HSFfnRePPBbSX3Pd3ymvVHQsmjMmQmDW2LpRp16C48vhDrIqXXHg5qGaWeyL
 ciB0tIjHumrNdHxjVuzKNFgMLaCMV+c8H8qZ9Bt2AkyPoCeW99OtftICxkQFrPQ5VMyteCAs0w3
 rW9c6+R+ZK98I8Ro3IR3sIAyJ8kR6XkspuRpvDghj/uGUWSoNz5A4OgoKSpV++acL+7Uo+37WpS
 nnI+olJU5oZeLQJZBbU+1sup5KhDKnqtHufFjbMZV2QeiexgDYz2dUmoEUszW+q+q1DdHmcsnb9
 8xIiJdY4l83sJfBrwiq1myP4OFf87KzqsdsQpOx6JdEMuxtRTf6sLzPCT4UVB+KbNyMgdlLI6d2
 24sr45LOT2JM0DE1rN4iquc9HIayeR9GTZiXonqT/ytTbl5+07HlnSsTLMw4Zn/UgRXPy8k9hsV
 sI9lSdkKtVN5ZZqFyeg==
X-Proofpoint-GUID: 7-uNR6VzFfw8e7aZpAqMdke2_AXSySRK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-04_06,2026-08-04_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0 adultscore=0
 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608040192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_163822_789546_8F07F1A1 
X-CRM114-Status: GOOD (  16.98  )
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

On Tue, Aug 04, 2026 at 02:06:20PM -0400, Esteban Urrutia via B4 Relay wrote:
> From: Esteban Urrutia <esteuwu@proton.me>
> 
> Has been tested with the following capabilities:
> - USB Type-C at 10Gb/s
> - DP Alt Mode, using HBR2
> - USB Type-C at 480Mb/s + DP Alt Mode, using HBR2
> 
> RX and PCS USB tables had to be added, while serdes, TX and PCS tables were
> reused from other SoCs.
> 
> Some SoCs such as SAR2130P, SM7550, SM7635 and SM8475 use 4nm-v1 PLLs.
> For SM8475, trying to use qmp_v6_dp_serdes_tbl structs (which are for
> 4nm-v1.1 PLLs) causes link training to fail because of ref clock
> differences, which in turn makes these structs differ.
> Add structs for v1 PLLs as well.
> 
> Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 169 ++++++++++++++++++++++++++++++
>  1 file changed, 169 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
