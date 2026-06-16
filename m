Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8836CD98DA
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jun 2026 00:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvpePwRkI3t8vrtHauHnhCSm1AhAsr8gL8gyrAocN8s=; b=Wy4JHZ/V4ZDDQ6
	VbPuNW92Sg1xn7viMC8wSl9yaGJLpkz5A+mCN5Fi0KnKl2OVth/EUgS810VAZjTW5USgyIZKImRIj
	6AHigMzTZsynj4NCrglN8DBj0JyTmXs6Y5ISr90j9DxCX7pm633wbAxDPtGXLWi2+gx9S7wCIbeG9
	1KQCC+ufi7uJnHYWVGapimCJstQ58P0xcYtrr55lg6kVHoV1KzeKUv7TVyJLwr2cVtsIeRq0XPs9j
	J0v0/MSazzJYDAFxjNc2Y+X/L90FqWjYXyfQrIFC4svRFsAvXqTjSbFs8I5x6rhG66XCDfVv/R98h
	V+MogsocPxb4gHfogm2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZI55-0000000F2K2-1fuI;
	Tue, 16 Jun 2026 00:55:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZI52-0000000F2Ji-3fUv
	for linux-phy@lists.infradead.org;
	Tue, 16 Jun 2026 00:55:06 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65G0OGUa2154132
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 00:55:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bfH1YFfB8DVE548OmEdzvoO2
	Sfl2pDVWRVr/GFOchFI=; b=TYkLzOHtjzBiErwXALB1Dtk0csLDCxfFkRoQbiUK
	1lNAL8oCGQ35BWqBCa+ot6DYGNZSitul+QeXeViMXgnkZxpqDiKcy/0BZeXJEN2L
	cIvAD1aWbzYsuBN5teBejW90E+x5NRObKUThM4xwyJlizsaTQ//F6HWl4PlvMOk3
	qmZ0CNkrXNt6wSneaisyzRpxyaWPWN/jy2QTSE9QU8cJVgnxRw48ltOx/8oug5z4
	rO+dH29NaDmjURZxmspmmqiAGzYvvVoHtTxiVX7GWZwGtTdCpTMyvBxq0o23mR55
	32Qpe+eakA5qohbjufOjtKgQ15NR/lHkn6FMqaPBZE68LQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4etd2ccd5c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Jun 2026 00:55:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51776d4355cso20320391cf.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Jun 2026 17:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781571303; x=1782176103; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bfH1YFfB8DVE548OmEdzvoO2Sfl2pDVWRVr/GFOchFI=;
        b=WMNedhmuJTkZmM8m/CdumkZveihxBR9wRS04YuyoJencnaCU2NdYYWNQL+4quAygyh
         /C8HyCYkbYpQMzevAbyh/ZH0BTtG8o09ohzOarvUbTR53sRkYk6RMAUALPLwDhPaYmqm
         P5lzQTm8jfTjAsGpOCUCQ+8Jq0QO/kYRVX9eQklLftr9ccALoDU4rFjdKxv4uea4CPq1
         JF2cTQNwcGXCuXn+T4TNlAcbZSsn9cYOM2qoxIVvoXIAaCxg9BcTeCdpW2SWfB2y6lFQ
         tZlJgpYHpl3coN+e+K0C1y2ZlcemQIDspFxrBRWGdYauZH3IBKUJ4MhHW66HxFR9WLoN
         VDlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781571303; x=1782176103;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bfH1YFfB8DVE548OmEdzvoO2Sfl2pDVWRVr/GFOchFI=;
        b=EysHrY+6VfltfegxHZ128uAlgpAG9K640aFcLwMIHthn9/05ZNtd2YLoKSNXFF/2yH
         cl8B0rYPbJ0p24Er6OM4ftsJ8+6bwtFekRdHCfSBSrmVjowJB+NS0ccMQjyslSpbxBsq
         iCERkaCFrbnMfMJ8BrZR3/NCBn37OVmvSKDramnksnLJTVO5zSzLWCVtXJjFDcRs6IHc
         afV2qvh3HzING4cMQH6tI4wICoI+4SZ1HYKktpx2e2/X9Ve3vWEKtO2nSWKyyfDCP4RR
         YybapyGCTS4hVPnC4dDj2Ce4Q6zMJj5myif6Vs7C8oKElrVqcRsdMCBtQWNEtnACMEQy
         nmUA==
X-Forwarded-Encrypted: i=1; AFNElJ++n1kpwgOdVcX/0MJvndetrgZVCKT9f0kPx+Obp7plvDC4XQfYSEI90viMjWdVBP8rftNYgnEsNd4=@lists.infradead.org
X-Gm-Message-State: AOJu0YybTuaqvxXMQFx8V57W3g7qwPL8nBUvf2Lqo/+VUg8XgugQPYMe
	D1dgbsoBJkglBce+NP/VmdhPa37/NOzp9NsQjwJpFCz9kJh00/CJ42vS1WQSI3GtLHf28fhc90u
	SQzYh7R17w9JXckpy8cA1Dlxzrao/Q8TCpFaKHW8j64P8U+yZIYFBFZhTcuGmBpmMWKbA
X-Gm-Gg: Acq92OE1wPP2jndagl7xIEB0037bKf9Rnf+984k+2JfDOLQo+cGqRGuEn7aV2pA+mgP
	baeIOxkKsP9Em0SaG9yFeP35Y//ySiZHv2rO4J27SP1uqB1gYyZ93FtN+Oj4DA1W1M4etw1Q0co
	0VoZCKgaPQQWL2YAUNDJHUJKwbxFxuSakYhW4nmU5zebeYhPs9FlUbUnJDjCil5PGVtOa9BfuMd
	7p0Kk0QlXhKOlDqS1bVw6/J8hKdfg6vz5AVVKSxkmcjNh2x1tW2zpuh4Iop0aEQe3T8htv5dmPn
	X3wjwjxEgyLHt0i4DukNvc1eFKohaK8Hk99mc+1rJlicjhnkz+FDpESpDzEkflT8yIQWOQBLDdt
	nxMzjF2KwH9wsIxnQkNTr+YYK2uH4FxeoHK5LLwLVteI/a4qt0YOP21Krf2rE7L4baCFvryEa1l
	1T80tLUlIIOSJO5Yv+yf95r+F4EtpJYXFMgpI=
X-Received: by 2002:a05:620a:2985:b0:915:29cd:306c with SMTP id af79cd13be357-91c2c4d288bmr257335485a.9.1781571302549;
        Mon, 15 Jun 2026 17:55:02 -0700 (PDT)
X-Received: by 2002:a05:620a:2985:b0:915:29cd:306c with SMTP id af79cd13be357-91c2c4d288bmr257331585a.9.1781571302114;
        Mon, 15 Jun 2026 17:55:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e161f2fsm3158366e87.11.2026.06.15.17.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 17:54:59 -0700 (PDT)
Date: Tue, 16 Jun 2026 03:54:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V1 0/2] arm64: dts: qcom: Shikra SD Card support
Message-ID: <boo7p6mgop7rarfu3rfsrfah6eq7zp6y3sf6mdq3hsejtacwxx@yl543m4lj47d>
References: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260604122045.494712-1-monish.chunara@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDAwNiBTYWx0ZWRfX2i9qg5HCO/yx
 42tZl17iFlABRd8vdNKXmKPzaU/xMC0wVyIigOIeyr6JzSd2r439U/dRntejeahlc/Q7iQ2jvh2
 jZ34m1mmuG5hE+BkyLtAfltbc7U2tWytNSDVQfYrjTEtXKIk69O8xdUe2evEMmlQJs/qe0m67wR
 I/jrlQ5igWK+GzZGYQYaCUEXQWRpXd/RBqPr1cuoSaUWJMvDZXXCgb8yVL4f/yAqnbsCcXAypI1
 S2FhozWKELsETg3CRemY/kTkcPhC2uQe5YLq6zSwTFfxIcjuhkOaBozdoE/08gd8Uz/l1YodRC+
 7U+/FHi0PGiHhFJOuxWT9p2OBwZLon3pB4l+w3CdjBywUbo1ZybbUY9QCOjz5Fs9R3WuXabvYd6
 BIswRpL2EgFclegBmHwl0mO5CKyaxrpNNcUjx1vf3NNd3xTEta7lQpdvyoD6F/tYPq97CuMCy0A
 u+Cl+X1GcpMg3FOd9jQ==
X-Proofpoint-ORIG-GUID: TpuKOyI9xqzaPeCRjhrJ1p3oOHwsit3Q
X-Proofpoint-GUID: TpuKOyI9xqzaPeCRjhrJ1p3oOHwsit3Q
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDAwNiBTYWx0ZWRfX8M9ts25NH89N
 L0llQ9Th2l+qFiRCk/TdC9HGdqCvX7JRBlpckeX7Z2W/GvvuwVarsi8M4WBJyCHj84FbRuY/Jhb
 XMSRWh7frYixb17qz0R2pPsKz3HmCN8=
X-Authority-Analysis: v=2.4 cv=MsRiLWae c=1 sm=1 tr=0 ts=6a309ee7 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=Sqa3oZAXkj-0WgPsOd0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_01,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_175505_056120_D503499B 
X-CRM114-Status: GOOD (  17.59  )
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

On Thu, Jun 04, 2026 at 05:50:43PM +0530, Monish Chunara wrote:
> This series adds SD card support for the Shikra platform.
> 
> The first patch adds the SDHC2 controller node and the necessary pinctrl
> configurations to the base Shikra SoC dtsi. The second patch enables 
> this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
> the regulator supplies and the card detection GPIO.
> 
> Testing:
> - Validated on Shikra EVK variants.
> 
> This series depends on:
> - https://lore.kernel.org/all/20260527-shikra-dt-v4-0-b5ca1fa0b392@oss.qualcomm.com/
> - https://lore.kernel.org/all/20260521-shikra-rproc-v3-0-2fca0bbe1ad7@oss.qualcomm.com/
> - https://lore.kernel.org/linux-devicetree/20260513-tsens_binding-v1-1-1780c6a6caf2@oss.qualcomm.com/

If the SD card depends on remote proc, tsens or cpufreq, then something
is wrong. Maybe, the way the serieas are organized and sent.

> - https://lore.kernel.org/all/20260524-shikra_epss_l3-v1-0-b1528a436134@oss.qualcomm.com/
> - https://lore.kernel.org/all/20260522-shikra-cpufreq-scaling-v4-0-f042a25896c5@oss.qualcomm.com/
> - https://lore.kernel.org/all/20260530-shikra-dt-m1-v2-0-6bb581035d13@oss.qualcomm.com/
> 
> Monish Chunara (2):
>   arm64: dts: qcom: Add SD Card support for Shikra SoC
>   arm64: dts: qcom: Enable SD card for Shikra EVK
> 
>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++
>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++
>  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++
>  arch/arm64/boot/dts/qcom/shikra.dtsi        | 93 +++++++++++++++++++++
>  4 files changed, 147 insertions(+)
> 
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
