Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E0C4CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HO5ZpFEIqMvBG0V+iTvY1T4KYPczvjOhBuROopOxHBU=; b=Zwgf/DjFxWsW6q
	seODieTKNTe0c3mXEjAjrEley74vhnP8w5GVeWtIG2n0eYoVnew3yxlDquIowWQvVnXTZBmB69OXb
	u2Rkuid8LU4LdYiNP9gAXU2bv2sn+SUIw3GiOQNRYknpFb6JjMbh3a8Ve4jrcWmRjuRLCARhowWs2
	KZPRQv6ZlxKVZPPY+NpQ6X34ef9LAI37yxGId99wQ4tn6LNXkXouIWNji2eAULd5D5/CIT7XAWtb8
	95Pc2g6u9dMW13S5ZFKVyeUpAlDWc/UpFkDO5f/ak9m86UT6cycboufHAnZ3kI+hjrUnvx7+EItRp
	2iqc+aq1NBmaf7oyGKFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIRH-00000007g9n-38Q9;
	Wed, 10 Jun 2026 12:53:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIRE-00000007g8u-2uXx
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:53:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ACC0kN1600376
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 12:53:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bFcFkn5T+1Ccf0UcQnldD5+L
	2Dp6NWivFCPOAqO4D1c=; b=cmKBvOT3LrOh/GjnDhP4CI6pcl2PZbDuOMyk0tmS
	KPF9fqC0EF1b5y0oMOO+TZ5DcLk1WUnzFTWQwPRznAfeA4e/X4bWwjxmGRBgW2hW
	zLnVxJoUDhxL8UrhEP8VM8RPEGwMH4nROEscYxNJrUiBzLlfGR3lgyPRbEzKba+O
	DYHcWh/3P61e9Id3S28GaJewglDAeDLRvu30f+BYPaFDhLtJoYE2PLcXUW//Bj6u
	JBu8RMM5ONjdcJKBzPvc64QHD78786StE1cidR9kH6Nh865/mFxfCV0rLaoTqyeg
	diwwIQ5XfIQi6tfn2OlI/0oe6jvT5SuNSQRI845pNZaDJA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eq1tg1nbu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 12:53:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5177bddf6e0so35358571cf.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 05:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781096023; x=1781700823; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bFcFkn5T+1Ccf0UcQnldD5+L2Dp6NWivFCPOAqO4D1c=;
        b=H1RgPjXhqHWu48SbpJIxAMlCI4j2gd76zNgWXBv9sDMnuUFuiU9ZZbso2C6GuEDVVY
         7sLxUSFExhoA9s+b0Kk7xqr1sxVukvRg1anGdwnIreg25Cu3JNodh2flK+wKZ/9PdWGc
         UpIPQupu+2O2K4m6ujGgrNN0JViLxzUqaHglz4H08W2pT74Qyb+JRBq/kek5MfEwYQ2A
         /ndJKZ1IeHE19DRx3RRJqHh/0EWSGmw1bKO9+RpiiwqoWKborgtkDPIbZ7SCGX7JiR0f
         Yp8kXIh68Y1BzcQOIezB3COzE2/6KRujx14J2C9JBWlHwuhaiYFSuU0q/QO/xM3+FIsZ
         dONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781096023; x=1781700823;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bFcFkn5T+1Ccf0UcQnldD5+L2Dp6NWivFCPOAqO4D1c=;
        b=owwqhtjBee6ls/OyObrVn+sBfUdeBVragu9hFlSKSTz5FnzT9OEq3aJoUPooLhdfua
         Uteg21NgLd98On8EF1A6As6EI8sQanf8T0wCLIx8jDFigkNW4gYM4Wxky7K6ksCidsVk
         YcS73wN4lgxNuvjcuYw1RIBZkFm/Jk/c8dFLFfb2v7O/strHKGXNBOifsMTLNn3+sm29
         6ALKEcGuynRwZWr98oHprvYnKvD8eMhLTJDR3Q0CQS0DKLrRM9DHffAKxflwJ5QSSNMz
         mTtPhnfZBqb4Hf0w0Bqb1OPOgnG9M1mXmv89jZegFYmk+vjJ+I8KgfhzzUVb6b9GxHo2
         fZIA==
X-Forwarded-Encrypted: i=1; AFNElJ83VrBXWjPLf/ECCgE/XdyoUGoDdZ/vjZsgm1+b20VgJiN7ObT+awWj7Zqn5urVEFpVlc5KULHaueI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3nJx1N7btTtLdbkYIu3DXQ6vxwmMbBhgF3/BEXAFc8Q/ukwgV
	kPOPywMO4ZBPCOXCP8KCWsAwBEUMlY6Fuvh4AKd3K9vUMlLUkAlrkH06a57xDFIDt2nYI3QBFpW
	IWo1bHXCptkbo1CJOnmkEcAtAq0+BDs4t4S4CdLrLL4slyukfC/g2WEvjCKFOLyXFV3hE
X-Gm-Gg: Acq92OHeLjpbcJqv9+ENOWIvnaWGyz1j3C+5BL87U+oU6pvVTxkOlMl4ExCdliMZ20c
	bbzZCv2sneupLelgGjI30xGIQkQfUq16JnXpA/m5lVgBPts5HpVsNxcnH1yv1D0HS2EhhMbeKht
	LSIJrcwiICO1e4fnXsed+NXe4NC0xw7X57ziPw4jK95BOi2zsEDcL1vaTOslrtPhkLsxdec5B3N
	3qTfAA2MjqC+bt5D0LiHluYxJVlmjegwrl7A0NaI+MJiECci4ehFrwOdPaCQstN0/JuLQaP9F/X
	bE02MB9a9maYLdOPbPJutxEJ2il8CTTr3Q0LR8Dc2+pJLuzu+z+sVJedCd2lmI+l5d9WdhFN15/
	N/2m74y/Q7DqrI8QVaKWXX5JsWyc+kbu8uxn9bOnl5rjUHlMFiMVSLxKGiEtWqQdjH6HFJdDEkr
	g04kW1O8X2o4rd5hJ4eagr1cyJ/2a0JCvUI4KHw7uRMvWbpg==
X-Received: by 2002:a05:622a:c86:b0:516:d803:af03 with SMTP id d75a77b69052e-5179888396amr279529141cf.40.1781096022910;
        Wed, 10 Jun 2026 05:53:42 -0700 (PDT)
X-Received: by 2002:a05:622a:c86:b0:516:d803:af03 with SMTP id d75a77b69052e-5179888396amr279528671cf.40.1781096022323;
        Wed, 10 Jun 2026 05:53:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b97a714sm5438040e87.43.2026.06.10.05.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 05:53:41 -0700 (PDT)
Date: Wed, 10 Jun 2026 15:53:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm6125: Fix QUSB2 compatible
Message-ID: <h77lj4jdhvqi3pqsnl2lhhjo2g2ffmlam6vlcn75t4dogboju6@2lhpsexbd2tn>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-4-d7135980e78f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-4-d7135980e78f@oss.qualcomm.com>
X-Proofpoint-GUID: bsQn3Yj9pHKF1WnHyAEZJkLnN-jB0Gmg
X-Authority-Analysis: v=2.4 cv=dLmWXuZb c=1 sm=1 tr=0 ts=6a295e57 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=LZHrLB2tbJw_R4RbR5EA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDEyMyBTYWx0ZWRfX24EzFR0Se7hs
 DA7Y8VN3CP8IJkNacynJ2F1ZEByMXanJiZbTMJadpgHWrvWjbMmcMXZgqgyIL5+iSqTwaK5PnFw
 ncOYtGO3vnpMh3cP8a6lvJfH7KWZL3N97WDC/BH9bwwVkPyiqURYVU2bb3Lg3lHJFkY8TuO8GPS
 Yn2PrmnOqiSs7jb/1jviKObp7jZhRbl3jOEE/lnv823yCn7m0P8l5y3nENx0yvG/Jn9CRUW47bF
 Tu7wzrDeiAJXKbkYUlyZgbC5EYesSvdh9uBt/0K4fkIwZuQelRuAIotzr0W63uFl7R+0SC4Kupc
 b6meeSc/J7CQGYHut0aJm7zIt8SZtQ9M7ZJxzdJg37oHJGvICfvwprq0gFqKNqVy/1PFTejWgWo
 BycCbQ8hpVDuBnDPrsJgzMz2k1LhQspQQFEy3x2Ocn5E1uMULiN84gOTaKMiV5LBTeGsGXf0pJ+
 n8d9os5MN5KBFXSgpwg==
X-Proofpoint-ORIG-GUID: bsQn3Yj9pHKF1WnHyAEZJkLnN-jB0Gmg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_03,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 adultscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606100123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_055344_857489_B5ED7D2B 
X-CRM114-Status: GOOD (  16.34  )
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

On Wed, Jun 10, 2026 at 02:04:17PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There are a couple issues with the current description:
> 
> 1) The msm8996 compatible is wholly reused, without a SM6125-specific
>    primary compatible
> 2) MSM8996 has a different power setup (VDD powered through a RPMPD
>    power-domain vs a regulator)
> 3) MSM8996 uses a different init sequence
> 
> As part of fixing all of them, use a SM6125-specific compatible with a
> SM6115 fallback.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6125.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
