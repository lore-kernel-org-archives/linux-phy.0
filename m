Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1CB6C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 11:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5XIwsbCYk6LGuOOz9EyndzNeE12HwxOD+g4wvmSFCg=; b=dkC2t+4319B8dt
	RF/O34wgEnTEO5Ba9H8LUxa8crCAW02NWHv8Eb5x0/xuLIX6oZv+TlIUUDTT504pexyc/430waE3R
	I9VqaM6358vXtWzMyItKy2UfekfrjMvY6rAImFXh/57wx14z5dwFnmm9PP48HkZgc70n0pjGE04Hs
	TY3rYdUpunnq8lE4J9kNLvkaLN4M/Wa+R0aEa8WkHckyCghiyGHGnjiSTnSGqdQgg26FfMQ9Fw860
	PTagQhc4rrjnWiGyFaZPP8bgbREkaA3MFYVotiYFuZeBQTAXnbdtgOhOx7rkbW48FC7DP5kOIjM+3
	r63sBNRREAvqeHRj6aGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wetGn-00000001T3F-1iR1;
	Wed, 01 Jul 2026 11:38:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wetGl-00000001T2X-19bG
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 11:38:20 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661A8Zwt761867
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 11:38:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o2tQu9z54t7ghzjghFzoCQXBSaxkCwXxy1yiopSDUo8=; b=RBssWh6dz0rhDH9q
	NuVQSARMkh9mgAXUpPHQlP5M6Nm0cH9iPfdfJI6U5BX1tVQKRdMTGB/mdRwRsbS8
	6+Ve2ifGjFsRbMO2ZP1QaD7uwQ0x7eE9IaZEmmkjMCydiq/TzLSUkt9tVkC8MCOy
	6PWendMh6zk4XLxEMaEw96RicWBB2fqwSagvcwI/oaAKCf/y8iRNfWInZI6cKkc/
	c0omdeHY2sXF6aBnFiGbWDCU6ljmVlx9lr7Qt0mPvu/OgXdnLMh4M1D6Jx+AMlxt
	U/oLH/DMShTjkIYFEeFTROapeTuo+tZcEc1DAMbWCVY0mIpMtQuRVgV6puf6Ygkd
	gf9hxA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4kgw3u45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 11:38:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c1fc94a11so656451cf.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 04:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782905898; x=1783510698; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=o2tQu9z54t7ghzjghFzoCQXBSaxkCwXxy1yiopSDUo8=;
        b=flQIeL+GJwzGOoT5wCBgopLt+B3Ems4zXGfyuhEAj1pp2v4gSHwJCJ+UPmLORXKCgS
         kJxwqo2G+YRu5hE/rEz6l1Beq/2c339Iv+77+odWm1fgfK7cx3nnrhwiBtBmJsn9YBuS
         xaAcH1YRltZeEnuM4v7iRonCwJG7RdV3o7WopDsLDTRRFb9jxKgsFqX/vBiRFrdN8GiT
         eRIEIkMN123F+2Ozw9DNVijBdXVD9UzjlxFtpNF+dOLtUdY8RIYqIn6+xhwWC8FPMUO8
         J/CgYa0woJhP+H4oIMGsyn9FtTHyw/229MWJXb3bAaDINjZmIVMup5RDlthoQcnGtu0h
         eOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782905898; x=1783510698;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=o2tQu9z54t7ghzjghFzoCQXBSaxkCwXxy1yiopSDUo8=;
        b=gbEycJ9Fz4zNLpxIj7FSRwvBgi32iwTUQrLk2dMBsHZLULZkweWPuMsBjLaSZ5kDMt
         efJoHb7S2dHVszsPnNUahd1xqNefzKNEDWJuEx8tuuz7wVG8woj/VcrSTYV9f/vmhXq9
         TlB3j822Uz8XIntRdsLWDNfkTynq7tszGHp22CHNhMx4Yl2WByN7zH/qhzvxGN/vX25p
         YXBD6JREO2NLfymnsA1JhDqPmTTrO+Ihsw55b/xcB0ZKHIdOXSgrNdyFTGbehr1CwYHZ
         bsR/R2Kwjj10d3/whROwNl91e8MrQPZhk4kI4wB5+3y7HMtV3n9QuGTUI2Zwpb7ZE3F7
         KWgQ==
X-Forwarded-Encrypted: i=1; AFNElJ/XTAZ2dODUTv4DJGqKDP+Kg0yhbN1LL4OcU9BULGmlqn8x8wiw58xNKrAV+b1h/2XVk5b4WLF5uKg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9oIUC+O5v3R3PUGHUEn+pqd32iuLCu7qztRvnl0s18bJ2JaQH
	e47R2vBR0YVXkGgZGVBWhXvHGTAs1WCa85JrVNKb4EXasGhjLDkT+P5Nz/bl5wU8aW9cnH3nPq3
	y42WMHgFF71HzPud+IKu3PeKLXcYpiBQPr0eOPwY8tVDpHepb/8SGTkgV8NsJVsSa/Ixp
X-Gm-Gg: AfdE7ckIKf2mbY7KiTqRoNnFO55/uHPGA88PujI6giSD3lr4ijywbjg0x1okvVTbz2X
	jek7CSWM9VIBqwtwxw9dR5R8Y/8jaPbTxI1PbajnKvbRWtH1Y3Pz30hglZ3Y6C5ASHk1vNBSZK7
	mNfXA9t5V/sw7BD+qGBOQmfaWl42EnlRUfVQPDkGyQSpP2GhKeMZVhkOSf5QBhN9sSE9014QO14
	0O11Rrw8a62wlzhRONuJnAjxuuyVJH7KK9pERYm8BximERkQrLAoCumbKxSyxq7wHa/6knBlevx
	6uoQN/YC3ajCYzWts7jcgApVI0Gf/SsEvNpax0h5j+ybSUYQ6HGGLAvOPkbdr/1MfMyglEhGm4R
	1gCiR5+/17nTKmZda9PNerqfiiyzcvvGi5ac=
X-Received: by 2002:ac8:5f13:0:b0:517:5e32:f3ac with SMTP id d75a77b69052e-51c2693f551mr10261851cf.0.1782905897826;
        Wed, 01 Jul 2026 04:38:17 -0700 (PDT)
X-Received: by 2002:ac8:5f13:0:b0:517:5e32:f3ac with SMTP id d75a77b69052e-51c2693f551mr10261531cf.0.1782905897416;
        Wed, 01 Jul 2026 04:38:17 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6987c3b6526sm2656719a12.8.2026.07.01.04.38.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 04:38:15 -0700 (PDT)
Message-ID: <f5b75410-cf75-4bfb-872b-81b6180e386e@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 13:38:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
To: Monish Chunara <monish.chunara@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
References: <20260630165700.1886608-1-monish.chunara@oss.qualcomm.com>
 <20260630165700.1886608-3-monish.chunara@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260630165700.1886608-3-monish.chunara@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Co2PtH4D c=1 sm=1 tr=0 ts=6a44fc2a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=pnqc_4j3uO5S_kuVk7YA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: dwVo6KjvlErOvp7CQld0F7Ixpu4aLBGn
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDEyMyBTYWx0ZWRfX7MGHTC08Uhe4
 eLvC2xNjkgVG3+FQjs06GtH6FO/dq340ffE0Rsu1nmnbgjrpiggQNRDgw+EDZbtCSbe8FZtb7v4
 4jfdvyBaDRsapMpDd9x6IhJYWD4Au8A=
X-Proofpoint-GUID: dwVo6KjvlErOvp7CQld0F7Ixpu4aLBGn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDEyMyBTYWx0ZWRfX+tvYWkD4Gby8
 QGufIZReaRaoT+zx0cfP8Imq46TwAyo2X9MceVoK4z/iPzmSZ7UBd2BzcA0UqxQnnGw065UDaZz
 3NAUCAQqdqsxlql1Vpm/ZrL/Xkzrq1JnPcXpJmuIoCKRxtDM/RBxWy1Vji6qlKwf7QHaum5Nqtb
 TzVAgPNeobcTun/7tl7Phwm9x67rmQg/ZxjLwwLROGqI2+BQW1B9FkMbXcw2gzjylffOr5DprJc
 Incw4OjJPAXAzoKiICAY8+CsITimeh6bfAXb1JFXXLTS+Vwd5VNSw+gTmCVMDMjeo0sgch8bp5E
 qaKAFrFEmVXxHc/eEW18M+86k2VCymgATqUlh8i9qc1UTpK34+Eb0UkfXXu2fxAopzwE1FCEtYM
 eHK1h7QKa2MvG8sMZfLcFoM8UFB8OGUiKQiUmdSqfLXD1RPpZe0b4uDItZJ6Y8XWT6Dp0bUivar
 iVA4fdO7r0D2ncFSRHg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_043819_325652_CCEE6C85 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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

On 6/30/26 6:57 PM, Monish Chunara wrote:
> Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
> vmmc/vqmmc regulators and gpio-based card detection for each board
> variant.
> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/shikra-cqm-evk.dts | 18 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/shikra-cqs-evk.dts | 18 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/shikra-iqs-evk.dts | 18 ++++++++++++++++++

Move the commonalities to evk.dtsi and only override regulator
in the board files, please

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
