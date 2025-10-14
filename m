Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4958CCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kw8czcS95MmzzNs0ljCm2r4RqcUKMpb3d1W7ecXPsE=; b=Q8jGhLLL9+9FZJ
	eUx6weWzMf65W365NEN5V4evqiiEQy/UyXl136TAOJg3ncWU7jAmX5lEl0kOxvouZK2Eo5+Y340kZ
	Ro41KqywebU65bf8/PmxbuN4Q54hJnhlrPY2GAp5vumsaEfZokOYECZeSlGdn72Z6bZ1M6dd2sfKI
	WnFQbHVTpet3yYvtGdEvyP7IykAQYLQI8qgwJ0MtLeiaSVJQQ39yAqDHF0ugNKjT6NCRze4pBGtq6
	l/eyE5p86RF7VhN9fvsdYzMtPNRST2z/jzzpstH9ZCNmn0c9A4x1bAU3SjPyvzkGsBwIT3y8+7772
	vhZZ6lbOst3GsyiDDwGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8cBP-0000000Fv7s-2Zb2;
	Tue, 14 Oct 2025 10:23:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8cBN-0000000Fv7X-1J1B
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:23:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87TmD016917
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 10:23:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7Uj/7ATN4u+TUQSCAcK5UK3n
	NiApttHLG6ztUMcWXEg=; b=VRSU2J++mFCvHkkvlPobpzEbjhkwJV0p7WGrp0r+
	UjH3mQUV13vruv4FO2uxwDRPrADDOInLQv2JnjQyDNUP7Lkong/krzOmlPwmCOy8
	ZNqs2ZWM2LNxKkUhBExih9/bDjHRuQuw1WBHEImnX21c/MESQE0dg/5i4AgVnIf5
	KmS9K8ZjJtXkJq5b1oqVodMmXczMx0WlJOiAAMNrFJ/tk3QUSuQyT5w2kTXEAlCU
	PpKLs5Sj51AMed4iEmIkoLOCupi4gaG+ed0bm+O2hSpE20UFf/jFYLNIDYDUNtpP
	wPIU3PEQNjN3wbGf3fS0QUkKN8ekqfNAm4NgzSCMaF1N8A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd9058t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 10:23:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8645d397860so962218185a.2
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:23:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760437383; x=1761042183;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Uj/7ATN4u+TUQSCAcK5UK3nNiApttHLG6ztUMcWXEg=;
        b=gbkZJ8K2XaokmTuiOdkhshvEs6I4CUGpqawwyiPBfxG6eZ/z0+IeEHY9Ghk/iVUOIm
         icgy7aRl1OyZPaJYt6T+hsoP836wqxAym0ERl6zTHHkwirwYK0f1R7bgxd3VuyXahAG7
         waZpLKKDGSE+71spxfpxCc8ZCh6ce9/j+EF9fYRmkhZlQbN13UosjUOFXFxco7NG890P
         QhULVhquPEOP3HDxzWNtI/wisEk4yoxqCJc6PEYaeS4gKsZlozwPEsgUUMEERn8XHSbn
         W3lnumEfPDDh+UDraCtkWSs36Jxv9yolmfzvNrbkMcY8iMS+H58amnVcpKlIsYxTJDtm
         rKpA==
X-Forwarded-Encrypted: i=1; AJvYcCX4IKC2mFieESgtQTYt2r1uA7iRxGoUy8MXsLvd3UHaB+HKaxaUsWizmj5B6YjGefX1K4hrncx+U9w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNwSYqkR0FVd57sl64ggMCH3uiBl5cnVkFFhI5dCueOTD1jEFL
	+neHjRx6XbXl7l2Dz31Uc1WOT7yh2Rie8bS7NMUzyIzC88qOKy1eLp7RbKQwcdUqL/C1n4HKRS3
	WN+53dMZcM+yteDIcA5xOZNEsJdCRld9pPAVbEm6NWZlxCYh3lH/Xkcq6yZlEK+XyRrxj
X-Gm-Gg: ASbGncuZBrKHSxt7tNTkthfnIJKKD4RNCogAYvKIEHfD9nwF31VH1BQfrpU09nWBnaJ
	JtbpXX06UnVoVSbg26IkCzedtOQmQHTRY+3zrAV2+7agPsuyPWeHW4Rtqp35c7jAIGKHpnxooIY
	2sf7euNemuHxeeLuDfLuRcPHmdhnRbx7j9GI6oCUlcS4z/kRAi9pGbxNWj2U0JVxz6z+UF+7LdE
	m6s1RwIFe3J+fq+3S5NN1jBd+gt5O8th0Pgx8n7mDVMEuO4KzzVyqRWNLwWbK9U1TbW0kZywC0A
	Ezl/tgcCesqcUeNZhId7H5TZWaBBmcCtrFSa0foQWRnG5tiqPfG+Mw4Ao4GbIp2PD47E2URKXVP
	m2jGMxJFcbNBhKmOxWUdrnJ7gWFVG5GBvADLN0uGBgQw3Nsh/bp4h
X-Received: by 2002:a05:620a:440a:b0:82b:3775:666e with SMTP id af79cd13be357-88352ab09d7mr2876980385a.36.1760437383494;
        Tue, 14 Oct 2025 03:23:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpI9b1UGkdarxfxY2my6QGIRQFNyBFabsw/h2nYcLI4je0hd8JsX+xtryHXf3lrxskF2pXZQ==
X-Received: by 2002:a05:620a:440a:b0:82b:3775:666e with SMTP id af79cd13be357-88352ab09d7mr2876976985a.36.1760437383043;
        Tue, 14 Oct 2025 03:23:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088585765sm5122059e87.127.2025.10.14.03.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:23:02 -0700 (PDT)
Date: Tue, 14 Oct 2025 13:23:00 +0300
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
Subject: Re: [PATCH RESEND v3 2/3] phy: qcom: edp: Make the number of clocks
 flexible
Message-ID: <cjwmyljscgxozzbfdprb43mryoaz66mbqd2ihqdz4fbzzusyon@e4h2qfaeqxux>
References: <20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org>
 <20251014-phy-qcom-edp-add-missing-refclk-v3-2-078be041d06f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014-phy-qcom-edp-add-missing-refclk-v3-2-078be041d06f@linaro.org>
X-Proofpoint-ORIG-GUID: ti4zRqxSw3W1BBJhArl9pszZ0IHz8hWS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX7WDhW0ngepmz
 kT72EfAZ/W0aM4Z0LV5E4vn1c5tQ9HArY8JV14dRocoIoFrCSxCly+1pkIYF645pGLIECZ8xBpm
 P+u+6VEtXXRu/D4/kKlUcr9CeJGejND5LhLvGhkIh7y36W36ZuqYX24A2nRTCtPNK0eX8HzNlv/
 yspWSyqCnQpZuLACWYsbK5jo3k30XgG3qHwPULyDB/CsoRT93YeJiYaKhfR0T9PcwhWbOrQyhg/
 P2ssioxxaO/rP9osfNFIYxAv4VT2x+jZZDEqLPBbB7rWyKpYzFG9P0rG9QS9qYtmJT4oZ/h3wzW
 fdOwl/jnPphmK5FWeoWS0Rt3OtBwpeTd0oTCg1JxBrDfypPFlXQyhsnIxUpLxXBHHyVOtOiQcd1
 +Cm3jWnacKbb9zhK+juUKYzCL8CcPg==
X-Proofpoint-GUID: ti4zRqxSw3W1BBJhArl9pszZ0IHz8hWS
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ee2488 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=77Gn-jvO4NWksBu-1S8A:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_032305_352893_A76B589C 
X-CRM114-Status: GOOD (  18.89  )
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

On Tue, Oct 14, 2025 at 12:46:04PM +0300, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called ref, while all other
> platforms do not.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So in order to handle these clocks on different platforms, make the driver
> get all the clocks regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
