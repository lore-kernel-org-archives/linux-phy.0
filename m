Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29C87CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9ay6TBFybekDT2L3Y/64NsR1YBBNBUcm+JPDgvRx5s=; b=EeOf2f5DAdChxH
	FHjhGUJRAEB2GMhF8ZZRVzGWO7hzGYQFWc6u/tJAXWCXEABSkSr/DdIgYjSluSV3hx/TgSakMNhhU
	V0DS7U03Tpdp6j4YyvfaHK5JiRZzGkbIWctxHQQldYLZHQHNB3qXdFilUku5Iexs/VUebSBtOQaZ6
	gJnZ7x8ee5yhC64rYXSN3ke4t0QjfJQm4VlPu/N1gAg7UUqpTuMBFmHuUqFGLOEZ+QLLEODON2o+u
	OwcHaDMfFkNMUrzu2joR1BdDnCJmeXY0Qe4JV+sd6racFejoR7tBpgBmbaSuQaWV6wLVZ4jUQocsa
	cJVkNzshhudAfhilwm1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8cBi-0000000FvBY-3jnV;
	Tue, 14 Oct 2025 10:23:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8cBg-0000000FvAA-0vq4
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:23:25 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87Luh008546
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 10:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/q6kggVv0I8zQ7jGT2QmEA7M
	QI9ZTL3uoZuqj2yT2cM=; b=kL1xS8E5F3Es/ScguvWjy7ncewgbUzmnaLwzxTTT
	VNVloJ/pWk59upqJNNFE+mKZBL9Ho0Wjx8h96ECdVr21vEHQBFllduAVWyqr1+Tc
	GIFvE6Djg8LoVF1PW1DRhYTrQdIaNoNm4Z4ZcBpvmghtbuBQdm4y7j42tQWerZwL
	LtK6ELPdy8ZIgBmRMOVH15Ok4b4S/p4iKKk9sIuuvBuuZuq9zW8yJvwJWmJsQJaj
	xWij3J+PPAmXAHBd6lT8UhJ2q7VgXrxuUqLWT3mPHJsydFbMDjfz2pqYQwSn8Pqy
	KqwHjPBGv4Yck2jc1//GOLK42IlW8gwIhK9S6OZ8H+KpkA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rtrt4w98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 10:23:23 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-86df46fa013so3301546685a.2
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437402; x=1761042202;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/q6kggVv0I8zQ7jGT2QmEA7MQI9ZTL3uoZuqj2yT2cM=;
        b=qUV6XiR4cKwciQsj4JaZANu3+JP6B7+u5Hr0BlDoBtJtBpOWiI/7uQ0nGcS/V7oCNT
         IPeslsHddB9+qwRlP3hfa4qOaRsBHKSIr9b7oAZlBIfQwrJkdqQctpNXmIFbaCOa4Xqj
         0BD/Ep0tCiCTa6FD95batI4qUmXQJzt8cehgF6dHRNd8DC+IrhRYyDtOy5bqxLDRkEEV
         KkyuYaIom3JeTvM4IGWkwaNHJiPeh/ijjGuVCTmCzvVGFt1DXmMl5wWndA07cgKffL/M
         5W7bTXBkdJcFDcqYz4ltkjXKR09Ypy2AO/1CvLdak2PWH3KDcrOsQ9Zw/5EMk7GnYwZR
         gUBw==
X-Forwarded-Encrypted: i=1; AJvYcCU6AcrinxPFRvZuAuv1JC8iAddsBtpVSbGg1OuUtHPd6x0i3uWToeRCP3pPaViwnc4XJBltph2Kjxs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVQoYHe+s1JebgQQUi2UDP25c28r7anqyISwJzxfY8D7u4K0RL
	HMuiy02mxwaAllIowabfs/wbdxhv3kE2RuJLMHBV02p1cqj8cSyVxr9mN6oea8gP/YJvx8JaUAV
	ceWetNOv2FQ92FiD8AvUS87Bk5+IgUFL940oS3g2DTOaBjkXnk0kWXA/SWPsw/2gmb0fb
X-Gm-Gg: ASbGncvOrYca7EJ9D8Ua/a/oXjJruCYGE/dswJb2Rp8aFyn4FaDrYrNZraZfhbjefr0
	clQd0tSODO74UcCnDgRKy/o/dT+t1v76UwfpiLEKLQpL9B7pH0VoN69D/FcYKY68WKzSbgVOmwF
	OVEruLloXhe+UX/K7ywZ3Eq8loNA0qU3llHW9oSWJ1nNid29WJytsOyg7nOSQljPbx+PphbXaHl
	h7vg6UtXXtkzXvqWN+wcjmTrf2R1aO7UBaauBVmCOyHyhzDqsx9tFPYQou6fd6onn5brTffwBGQ
	ZG79C/N+3XHgLp3xipxDSGfOP64F3rA6DzLMyVlHPmF3sNp97vxS4skAeN/J61DzrWZoSjZ+YVG
	HVEipMwSGDr/dB7qjXTFBfUaqumLjIJ6Dq9eBM77TVy1i0yRitLUt
X-Received: by 2002:a05:620a:bc5:b0:85f:d78c:579f with SMTP id af79cd13be357-88354019979mr3300404785a.80.1760437402455;
        Tue, 14 Oct 2025 03:23:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWXH1WiqeKRdg/ZhH41/VhdoA1bJDjANkssxaTXJhlGef6O0WTcMGo77Oq7bI7MfQwSpsR+A==
X-Received: by 2002:a05:620a:bc5:b0:85f:d78c:579f with SMTP id af79cd13be357-88354019979mr3300402785a.80.1760437401998;
        Tue, 14 Oct 2025 03:23:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f92casm5118341e87.43.2025.10.14.03.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:23:21 -0700 (PDT)
Date: Tue, 14 Oct 2025 13:23:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH RESEND v3 3/3] arm64: dts: qcom: Add missing TCSR ref
 clock to the DP PHYs
Message-ID: <ivigimfa6lp5rbjdw26t5witdpnlghvbnlljc2aspst457hadu@4yuudxoxx26x>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
 <20251014-phy-qcom-edp-add-missing-refclk-v3-3-078be041d06f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-3-078be041d06f@linaro.org>
X-Proofpoint-ORIG-GUID: 5VDg9juiLWFq12xeLKoch6LbliXFYwyr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAyMiBTYWx0ZWRfX7Zd68Jh8F2RJ
 Nv/u5K1qNd8yHYoE5JndwqzPw29MZuXjFtblvrFvLZKaNbNAtjmOkta+S4rvVtADrPQxDnGOCTS
 Scn7/RXnLT/f1msPO9fxbZeF6jPEUg+DynfA2ONL2xuIG8/ZNOuMjrYdU7Rpo4vgVrhopv7smnR
 nmp9wKX4qO/iUxqW9GmYJc/qSpKam6QxdDQ6iUUBZ8ItCdnyCYQe1ukzTt883mW254j4qw+ibS2
 vRVHkN8qHw1jKfjjCw8QhRS1zKCWCIs1AYpiWHssbw6SQy01s+1Xe5lOfztOshsBhwOnEpPPSzE
 G7yd4EU68moEvwZusvEkzGZeoUjNfE5d5zKRsXwOBKTKGC6JzxxcxmY37OBftBfk4AjhFeGzVNt
 aCD/FSd8yQnbw2GRmy3ocF5v03BsgQ==
X-Authority-Analysis: v=2.4 cv=SfD6t/Ru c=1 sm=1 tr=0 ts=68ee249b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=bvtlJ27tT1nIeLj7f_gA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 5VDg9juiLWFq12xeLKoch6LbliXFYwyr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_032324_398171_9229EECE 
X-CRM114-Status: GOOD (  18.58  )
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

On Tue, Oct 14, 2025 at 12:46:05PM +0300, Abel Vesa wrote:
> The DP PHYs on X1E80100 need the ref clock which is provided by the
> TCSR CC.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So lets attach it to each of the DP PHYs in order to do that.
> 
> Cc: stable@vger.kernel.org # v6.9
> Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
