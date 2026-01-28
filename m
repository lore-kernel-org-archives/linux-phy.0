Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF82D25B4F
	for <linux-phy@archiver.kernel.org>; Wed, 28 Jan 2026 12:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCfJwizq6rtZLRNxrZCCrfbjX4AQy3j1y6wOT8SHxlU=; b=kIiIqLNM02BnIA
	UUSn8/qmlYoa4s+ZmmV6/avYydmqpQ+284iwLpanpNX4lQOsOKQ0BZ8sZVfcm2hrLM/obGlQFcKv5
	AjYXS8fDIPLbsQmU2r7wO8aXqdMcjz7AUHOceTco0wm7CfYt1iHiKdw4OFZT9v+zFCMGQrBdC9et7
	VTb2PL3/KYbDUnYcNzpVPetMBYGXt4Qd2WTsNC/jWzFyG+KaYVLbaouA+01vEOHySnmaE1bRy8opX
	Dm6J0i6kSmk4PA55Gvj1G4mYWI/osxl1Z1cRVkVuo99dapYHeVY+WDoehvY7AwXLzLIoOpvuGTs5B
	YgHcJmpTYpRQieSPWwaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl4ri-0000000G0si-2EnJ;
	Wed, 28 Jan 2026 12:41:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vl4rg-0000000G0sN-1q3Q
	for linux-phy@lists.infradead.org;
	Wed, 28 Jan 2026 12:41:45 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SBdv7V1750463
	for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 12:41:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+kKO8dd5rQGlLu9l3bcEKgOh4c+qRDDxzTu2b7/j6A8=; b=NW7Cn3fHtWCkTfEv
	xUSO3e2o/hTeDByXBhngZsPvUM5NT5K1lToWt0WwmVUnbat22ryjdfyHioN/4Btm
	T3P+Z+x0Mwm/bCjg9Q69qsFrReKAf7cyOjELivzRdNMnLkOD4d6J7sX5Fuw5Gs4U
	0xGfeggc9pGR8ctaiUfmExTyn2nY31Mbrv3x0OUjeJx9NYrlWoxj29bfcy9dCLyj
	b6vVomE3dGHYK27i7czbZvbV9d4I8otkxm7SF8qUz2GJXUo3E5piuYGAK2R+7Icu
	pPq3B33p5nSY9jjQVWkqBYLQwR3lveCb7H8ernH1H7jCG9ypSqPEVAXRRB83ZZnf
	mQ63/Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byhsj86fv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 12:41:43 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6d6b0f193so142688185a.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Jan 2026 04:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769604102; x=1770208902; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+kKO8dd5rQGlLu9l3bcEKgOh4c+qRDDxzTu2b7/j6A8=;
        b=ZaPqc7wvzNvRrV8S1AsUTlDb6W8piqtyXrhrT3vBGp3SiT7FjGRPAm4wFcLHzKymcP
         zl+a3svZRg/iqtUMw/OFdgurG62Ou8bd5CHN8lF4sucWJle8KVgCYBw7f5v6B6ZkyYfC
         71wiHO5IqQrR2Ih/rcLArkr3s09ojEdveKU7FsyW6kz4aqiN3pzaoWfy3TV2rl1dd+id
         V/CADUnxmm/FRsTF3FeuNjRFYQbrilgyU6FsbvJZ0gX1DDxhozj8Dz10uYliT20clpGk
         sl0miaEeFAvti2zCLEZGdE7oZe9j9rTeSMwP6DOeVeAaL5//hdT4nAOVLbRuW6hEZ1kk
         F5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769604102; x=1770208902;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+kKO8dd5rQGlLu9l3bcEKgOh4c+qRDDxzTu2b7/j6A8=;
        b=ZxgGbzoJ69ks1a8RhxwaoDA6I6KwY5azjfqq+xU+gklWXWavNAR26mIQCSvzfi1St8
         jx+qpIVRlXTsnxdhJ4mRlHLXvPRRbKwqG06ZglQpLcMo/lwW/Q9Z/A7e0PzylL+Bdi8f
         v1jvDCkNhTDE2SnMPliQlTKZQTEO07xgZ6cDSX2ywATpGlTTMSEepmcbOpghih7cZine
         q/hipWlAlToJxXd3x7op0Hwci6Dkpx/SJvgdKavFP/1k+Chj1pOPEmh7znF7Cgt3oR1r
         jM2ue795by/QjmFLQgS5j0D/l6/JEYuxihD3kPAFeHA4Wkegc3nxT6R4cyXH1ffgnJ1G
         SBjg==
X-Gm-Message-State: AOJu0Yx00PyORgIo/RKwOqpVxVQDMZxm9I0yST+6Cw5BzvWL7exYQhGH
	4W1MGwEXk9RZR7ep0ss/IK5sdwoY8ENLTVDM0yi6wJ0ilLHqAdb8+igqLYLw0/dR/ad/VPfmFU0
	Mu2PhyyhnPyc1VJh5VFCg3J09qAMfp+oktkfG9eefwGMB+ois6bmNv2KD7Qwfqbn9cK+f
X-Gm-Gg: AZuq6aJD+xIE6f3/Xu8eJ5UxhtcXQ94yFCbHppOkFQrV4t8uG/bYafWr29eqxjtTumN
	YcyEEjnRlwvtwVWK9aBFvyuB4r7pXR8j9SemQIavF6qU5O7dt+6Q5hof4mYLen4ekLa0YEDuQt/
	9U88vmaaFtWO77NLqDPZXnhlY88FKbQUAfubiwoi3HoIQaOIJRanTfrrGXY7xrQwagLaL2mNRVD
	GkAjwLP7bvahfZTvWXUhRgL7rFGiNZVQZJ0d/EqP55LyszEC3b8p6ATQ6ind0EhnyKVapK2w2xc
	vojSaM2hdCZfCJaycKW/IYpR6Yzo7Is5jMHbJZGjuB0z9sGNdwy/Ckb6cXfoTtg64Hgc+m/C3CE
	FJSTZpBUYE/9NHHXwgzEb5lDT2CpzKYq4VVkA2tHXtpbacJalIBj621cUiVznQeXt0+w=
X-Received: by 2002:a05:620a:46a7:b0:8c7:110c:762f with SMTP id af79cd13be357-8c71ac75eb6mr278085a.4.1769604102172;
        Wed, 28 Jan 2026 04:41:42 -0800 (PST)
X-Received: by 2002:a05:620a:46a7:b0:8c7:110c:762f with SMTP id af79cd13be357-8c71ac75eb6mr276885a.4.1769604101707;
        Wed, 28 Jan 2026 04:41:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b469e6b2sm1438238a12.26.2026.01.28.04.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 04:41:41 -0800 (PST)
Message-ID: <795c4862-de48-44b4-9af9-6d9185a3c3ea@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 13:41:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: lemans: Add eDP ref clock for
 eDP PHYs
To: Ritesh Kumar <quic_riteshk@quicinc.com>, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, abhinav.kumar@linux.dev, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
References: <20260128114853.2543416-1-quic_riteshk@quicinc.com>
 <20260128114853.2543416-3-quic_riteshk@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128114853.2543416-3-quic_riteshk@quicinc.com>
X-Proofpoint-ORIG-GUID: 6qh0VR4X3nbu-P7YAKWGMN8b_f-UDJYX
X-Authority-Analysis: v=2.4 cv=GbMaXAXL c=1 sm=1 tr=0 ts=697a0407 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=3Q2R1SHny_ty92h1eiYA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 6qh0VR4X3nbu-P7YAKWGMN8b_f-UDJYX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwNCBTYWx0ZWRfX14lKm+lMOzr8
 ucgReJu4D0wV7QlImLifHeZ+NUOEC3mmgHWpdOmNHgn0SLD0GxR1xFIGPbSwmeB9dbJ/QlBi8nr
 uvIlRGG3dSQVuw3aggg+PldMAcOIqxMb714fLwIrGb+pev0Rq/F18C50NvhrjLjsbCkkQlMiTOj
 y3BYofACJNuS7sWxcIPe/ugNmQ9r6gMgt0SsEvXWYl6b5sMqe0ew2lkKN3+hTr2Xrw/UfHYVO9Q
 PG3izGctyvl52DqGxeiEkAr8jYzT4VbZ9C1AtGEvPoBfHIhWNKpUyjEpunRwQ9kNKHc89ir2/iD
 +HiB6ODWJcpyPgzCy/xfaPeFSQrubvUnVNdSnKQFlQTp7nhlvPZwf1BzoUATWWSLBIunZWfYWJ8
 ZaH3sZcLJuVcF7NGXX24qC9jFF0hn2SvZc1jmUucu3CCGISQOCqPLyywMI2+7eGpYot3onD8JKz
 nZzdl4NLxLPdQBzIqhw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260128_044144_506046_588D18FD 
X-CRM114-Status: GOOD (  11.48  )
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

On 1/28/26 12:48 PM, Ritesh Kumar wrote:
> The eDP PHY nodes on lemans were missing the reference clock voting.
> This initially went unnoticed because the clock was implicitly enabled
> by the UFS PHY driver, and the eDP PHY happened to rely on that.
> 
> After commit 77d2fa54a945 ("scsi: ufs: qcom : Refactor phy_power_on/off
> calls"), the UFS driver no longer keeps the reference clock enabled.
> As a result, the eDP PHY fails to power on.
> 
> To fix this, add eDP reference clock for eDP PHYs on lemans chipset
> ensuring reference clock is enabled.
> 
> Fixes: e1e3e5673f8d7 ("arm64: dts: qcom: sa8775p: add DisplayPort device nodes")
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
