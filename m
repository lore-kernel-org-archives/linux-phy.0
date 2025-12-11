Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CBBD41C35
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWzSdyiGvumPLAB/rCLFZpo+WtoPYGKiaziq4cNRfTI=; b=PWuUVGMdyb2AcA
	NgUNOuL9pAj4paTYprhYPZcNa36ibcZzrXBE5Sl0tg6H332N/1+rwiFxkgcEHKro7mLShg3QNbaf4
	l9XhC3jLMwcYbdZBYKqhWprEHkLCwJfuCvjW33kBEa6ZyC9WBgL5ScNm4AH0mJzWZOd2lpbmzf0bx
	xx4bvXDcOwY9JYa0w/SfDd1tMXqgzwUzMKAjYwNZy9mzdjxxzsv9b5Go6QJ2rYap/i16IJ8dQd4ZV
	EGgsgKjI2gu/eQEekTqepv+E63PD8Df82TzE/y/vLuzjUOq2vlTKGFe0zyWKExK5Nj4uHCZ3AkVwD
	bAocXeAtuNub8nQqHTmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTgkQ-0000000Gdsk-0vLC;
	Thu, 11 Dec 2025 13:30:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTgkN-0000000Gdrt-3bAy
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 13:30:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BBAXtnj1032391
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 13:30:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EO+BUDe6vdph0zzM9WBxo/An
	GjHrkdByqNLFm4MV5Ww=; b=ZCFzAB96/4RAiCpyEqXbHM8WkPaU4A0HzgO8j7F/
	YsutP0EKmUazLZSRpPher3XrYHC2ZRE/sMT67fbLPTEiaVSLvqg/h8c+JimpDX5L
	M0/qvAQ1xnMVa8/GKXPr0nj2EtZG4e4kEeU1pEkpbUdiJXVKbJTLsNfRCOSJKc+5
	EsZvdFbI2lgKUGbumX0D9la5eQHuMBc2fdq4yL0Yal2XfHZ3vTEObB0jToLZJzvO
	5qrsRw0F7ufE2RNg8Zj9+Mgj+WyRPGzMQqwD7HQGCUL4xs4Tj7aFV4kPOBrVE6EA
	TaW+Q7MclLXJExhYkUGdirSfW1NtuLrMQegrvnLXnfRv6A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygtfjjbq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 13:30:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed782d4c7dso1221961cf.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 05:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765459817; x=1766064617; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EO+BUDe6vdph0zzM9WBxo/AnGjHrkdByqNLFm4MV5Ww=;
        b=gEL+rpA29QyywXot+wWFgLIMi7A6fVLIgF1qNuT2+hZBzm4N/16ALt94k6aI472AX+
         AVb2twyenbTZqNHZG0C1f0T0s/c70kyE2HNmrXOorzfGJ9HnQ60NswUTAO09zhn/hMx6
         Hc1uH3jGAQxvvl4PgcOd784hFFc63XCwswx6qd3d4rA3Oc3yGd1tsasdUgvC89qmAfhY
         GBoduNyzHZZVmFGjecLcw0mDFf5Ixb/bVXNNyEF548aWIxk7kTOMUBWg03IG03AL4J1T
         m07a8lDjFUpuY3K3YxBvtHyGUoCUW54pbi0PWpU3sfZDDyQ3S41BwGKdbjX8hoHWM790
         K/ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765459817; x=1766064617;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EO+BUDe6vdph0zzM9WBxo/AnGjHrkdByqNLFm4MV5Ww=;
        b=TF5OKX8fFmHRykic1zoKsk1StuI4HI4JUzLkBytp8Muy9EndhlGYxy4g1ezY4lmdax
         +At72O/CoTI2E71uJbRCjZpK1VkilzF31cfNfjphgg2Xxjx0aJrdT4cbAU/iy5hg9gkz
         oNzBQY039j21vntrAMs0oKtGK9in4gRTY8rQMxFP/rDQVQQFeVSNtiE+wW5mYJ7KsoHk
         rONuEdUopiD12TR098wNSjUKIyRC3zF0hDgCiNTgNWUnem3nRLPuDkMHvXdA3fMhX0ee
         bJ2xOyYCiyUNJ9PNz3pEGmFvy/z0oy6QQzgGQh/3pgh9rSE95ZnTJvl0Ufz0u2mC/AMY
         c8jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpKFAv+orsopzaK7L+qNAuemzLqrGnDRdFnJ6+rqAbOCoEhkUPgVLvZe6mCEi7f1YQopoRULmAiA4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwiJpbZEw1l1czjaTMCwi1BPqzxgQkEg8oMqWG23d2Lz8xywn+K
	+c4s1y1DgMAfExV7bGdqpkoMH7awQMuX31nCpfC3FHu4zOaSyBbhwF69I+veFyP0ReknC163u++
	a9z7hGBCHEwvm9x3oOA8MPtK/fmqCvRXMKD913GvLP+HwOIPBjGI/QJY0+YiLLS1+XjV2
X-Gm-Gg: AY/fxX48TQy4XwSpwiBZzmcLE1EtseZ6TJD5lPPABrX3+0bA/ozo6m5bhSLLzNCxftt
	GyVbs2P8lc0W+zD3IctlWyn4g2kBhnnq5+2MeirFQyrVjuOYt4gLH+haDrkgWa+DtE3oDVoZ71z
	pVYQ2r0j65lWj3FroRlJCjOGX3ug/7TidojLHgjzeD8svQWGV2/DAHrGGYJCtoDXAGlixAPCMoR
	vQS4VsdavJPnX/QvJ/HXt2jbpd1w6JrNM4Z2yYUeHGwzZbjlPrxmbqDamMlSTD7f0mGYfH8Ms3u
	cQu30OGbmL4fE+eJL4uk+zI8r/BX0wSXp+IiQNSYRXdhwrmjSxoWk20NBzC2dBtbeou2ZCYVOa7
	cUpeuZF0oNekWoETf4/BzrJdX7CiUeUQ8TdPfmuWPY6sdGDxVHVn+N/m5dR4GNJyyTJQ2vww52r
	aEVlFpDpWLpS42NEGKIpDZcGM=
X-Received: by 2002:a05:622a:5806:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f1b1b91046mr76448391cf.80.1765459817522;
        Thu, 11 Dec 2025 05:30:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAhdhH0nn4P7B440k+djR9sb7ykmSQg3YeqAFNdrpZPHC2OvvdjB/siLR2Kocqqcd4BcKfPg==
X-Received: by 2002:a05:622a:5806:b0:4ee:4709:4c38 with SMTP id d75a77b69052e-4f1b1b91046mr76447771cf.80.1765459817038;
        Thu, 11 Dec 2025 05:30:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2fa7780sm880650e87.67.2025.12.11.05.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 05:30:16 -0800 (PST)
Date: Thu, 11 Dec 2025 15:30:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v6 4/4] phy: qcom: edp: Add Glymur platform support
Message-ID: <azhdq6zxeiidaijw3cqhhsepyc6gchn4e3gataqrejss3win33@6ntrm3bk5zgp>
References: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
 <20251211-phy-qcom-edp-add-glymur-support-v6-4-5be5b32762b5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251211-phy-qcom-edp-add-glymur-support-v6-4-5be5b32762b5@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=At7jHe9P c=1 sm=1 tr=0 ts=693ac76b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Qj678yAOHSKhnH0m0hsA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: xNNdFSmVTil3nvGQrN733X2hYVMWQzpN
X-Proofpoint-GUID: xNNdFSmVTil3nvGQrN733X2hYVMWQzpN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDEwNiBTYWx0ZWRfX8axMdKwnjRTx
 f7RgkWTBRD/VpQRDnaifL7JpuW2b3R7rU0S6eIM/grGiR+GSyo/wLOEhkCl1zkQ9RMcw19awShF
 7iNy6Nz+TPxMb8DDByc0mQr/OBqEZwLtC4+rlCnYgT5Bs2hkwjkzGi1Qc7VfFzFGZMVnvqa2bxN
 L1C9IFga4vbkBuwTC/A7KfTqNMzH4Xs1bISQeMNbEqSMUiRfkMyeFNiw/dn7SxnLy/ilkrzzGnk
 gW/daDeHcG5D14TqCpt4L207ebkO2efBixyd3UaY5SRhToYTktTiP60axfu5hyAcsPy8qIQQAte
 pGIs1rRL3gxWHyTK5PAb7LaUClLmyeBUvme8Fy3hSoJzS59e/bXUYH4er8LSVu3iVFVUEdV+W9P
 wLP5wdYKjQo8GcYmoE5wuYGS68hhRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-11_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110106
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_053019_901237_0DEBFD2F 
X-CRM114-Status: GOOD (  16.97  )
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

On Thu, Dec 11, 2025 at 12:17:25PM +0200, Abel Vesa wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> The Qualcomm Glymur platform has the new v8 version of the eDP/DP PHY.
> So rework the driver to support this new version and add the platform
> specific configuration data.
> 
> While at it, add the rest of the AUX_CFG reset values for the v4 and v5
> platforms, which makes the handling of the platforms specific array
> cleaner, as they are single sized now.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 227 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 219 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
