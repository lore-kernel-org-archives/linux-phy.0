Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79DD2EB48EB
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjDu9wHnDynuSyG3IhrWGXJNgR44kDUBx2mmFhP08LU=; b=y+ijQtLwuucS+p
	E+AQlf6e84xkm06n08iwOtxHUKBfl5UvHPGXnFpZYMGskBQljW9XEbvHXIXk4MuB8wNNjw1v9GEUf
	WwoXmGdllJMdHX8VqkfH+igxC+qY8ZB5NPYjZLbilyi5FouENCoAYiAr0mYcQhYU84AFR5hNgqLpo
	mrseKZrw16kgYgBKmKpedY5ziI27fuk6GkglUyU9qsmYFIEvWSntGR/TpIwKX+oT4euYI/OM08wXU
	WR1QW4rCb/AcluqAY3oVCZzIlG9mXvTIj6HvQJHQnJ4aCULbEIqI1Mfaw1OYDHArpGK5Ef9K5c0sH
	9kciEQhApawowgzCKTcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqSvg-00000001pV2-0EJf;
	Thu, 12 Feb 2026 09:24:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqSvb-00000001pTV-3sae
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 09:24:06 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3S1xO3222945
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 09:24:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jYQTdQ3eriXSnzd+Hz092D0hWf/uAteoJhiJrVldSDY=; b=evqxtkRydXiX2AV7
	byV66pKayOc6TVexcUwade+SjBI+SLFsaNSCwwKMfgASWVVN+v2PUFyTBayU9ddI
	lQg/LzQQ17FfoE4NLadjtfWsrjxuVedDC9ML7zKPHr7F4+uKoFhoF7P0HiIzGP5N
	w9yEIpca19ENGG/5Jf+jJOExixPuxBZAemMtH96zd1Tp3nDSHBgnoAO7XEESLqAt
	0L67vpBaDi//HIFEVTcmKqrxJyZD+SwS7kziY8aObKNS7YF4B4wI7SviSoL8oIov
	lmqBb3H/gFbqR4lcWbGA8P4hTx+HElnCMpPVvE2tMssaS4UKK0qKW87svE9F/il+
	4E69JQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8rvbbn1y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 09:24:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-897193937baso8972956d6.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Feb 2026 01:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770888241; x=1771493041; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jYQTdQ3eriXSnzd+Hz092D0hWf/uAteoJhiJrVldSDY=;
        b=jazJAMNd35xlOehiLnAPScgD3A6b0KLV8JBQyE58CvVwUjPKJR7MtkwnA+aQhP7O+e
         BM6nqEWCiL7plKHR14+ZOqKh/dOdR1dOz+0u+goWSYel70K+mE4buaV0GgIuutis6utU
         IwsHBeBblbRB0JOdtPKvaCMjv5mSASIHW7zAWINgEWP3b5ol1neaXRqq1bagQkfW2b++
         Auod90WdthMbNPkp4Lez1UMb9qAyPAtUh4BCNx+xyD2CyrPMSkFKmfIzaQmIv92J6Tlu
         6MXcCK/KxMoKueLOFml+Dxo8y9MoYIfctrkNlvPyU00HrElUlipRrig3wTEmItkmYQYD
         I90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770888241; x=1771493041;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYQTdQ3eriXSnzd+Hz092D0hWf/uAteoJhiJrVldSDY=;
        b=bsXmmTO07ljNNI3glLYus7O1NnSfOAAyhHrYuUhpsGkGU9E7f1tQukDrRbQRK/BVNj
         4stiqMKSaAhIfS30k4Fa3b/u4R8o7WSBheasnaXXI9DxyTBDY/4REPLyuoUuLBFZF09W
         5Bws2jfIz3y6TylQa/vwyStwsfTUELJZ97CahTzhyK/r7/eUNpwSvoCBK881vpOPP0bc
         k8GtcOVbEsnQ1DSFWsaCbgJ2cpgzOsK4VUuy6b3cDBfpU6AODjnA1EU9pm3tKOrbMz32
         dhz1Yvqo32T3ruiB2GhEc/GpY7Kl3jsbGVZiBkR/19lHNTalcaQBt7jglvQVZulZOCx5
         mn6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbDOdFskULcBmRt6LpX3c1l3CFSoWxNEVYuMxYbg3bgIjkZEDLVXs6r56C+B+82LkBMHQXfMaWsHY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzxabh1FdePpoUyM+hpvnaYruTJ/vLR9410AH8sK6w4f5QaQBTT
	3DC98yX6OB8v4TS0nGFo7md7Acy12R94FIYDQdFTOe8FQHwr+6aSHoddPjptNB/7LxRPNT43/N3
	dTLcAQcFVP0c628Mbw38xVXCfmzWZNyKxEC/Ez1TT8KY94exAXpan04mmDUHAL8wU3fFI
X-Gm-Gg: AZuq6aLtbKYeomtdw2SzPiLyiGqt0EL4nYeKbWaqiuk6fdH3oofJQeKWqBTvtsGQvEH
	dWjlWdQG5X1fR6Y5n84JHE4A3Z1Y1WEfUa/1MHDfS4sRiKBmIsP3vjHQ/G9vUo3Ze6+wW0bKWJh
	Btqy/W9X021cLJE4nOAF9NhZAgdLmYQTsFC6FRTDuOOMJmnisyXnnXw9B+vQ7wNo9V0VRjwLs7K
	0GESiMQKjNt1uLLCMDZntkk8/c+/xkjF9hzsJ6GATAkDyvt94FKKrWp4U5JaBeVzL9zt5pDhbAP
	1S04Fq4eo/4Tiusf4NSaVOG8vYby1V/dL6mNgSfWO6tyyMiLix8ofNjkS68BxZ6BiarnwcVWpvf
	iFYk56ZjkZliunMql7Hj1Nk7Z6jnK5bkONueI7ErD4mPSKJKSSjKNx4GX88Dd0M3nRJNflMw7JN
	lAsn0=
X-Received: by 2002:a05:6214:6105:b0:896:f9ed:be98 with SMTP id 6a1803df08f44-89727999b22mr22927296d6.5.1770888241010;
        Thu, 12 Feb 2026 01:24:01 -0800 (PST)
X-Received: by 2002:a05:6214:6105:b0:896:f9ed:be98 with SMTP id 6a1803df08f44-89727999b22mr22927126d6.5.1770888240531;
        Thu, 12 Feb 2026 01:24:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3ced48dbsm1488000a12.15.2026.02.12.01.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 01:23:59 -0800 (PST)
Message-ID: <d7c66964-48b3-49ed-8d52-5341c382c1ca@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 10:23:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H+XWAuYi c=1 sm=1 tr=0 ts=698d9c31 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=4XAFBGz2Hh_vFV4knqAA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2OCBTYWx0ZWRfX92mxS88yqxPz
 jSWsaC2wBdCk43JEmY6hncjxTuRYXwrQd73XLqvOpy21QlmcWvryzgGl7gU8aoajrXFVnwVLAao
 QpGAIFwabAUPkSNTY9PBQdih6MXy0NraGpFp92/035FNxiJADzrZ7Iu7Yx10hIgRydX/pdgZsFi
 l4xO6/NCHN2cgbgd5Z/3Sh2GOy5xk1as2+tXxwrZl0mwc+lJcgNxrTJyOZQ/S1eWBIQN5JU/zTU
 PkWnG3Eizh1N2iuwEc/A5brcnWSxGNy5xCrELELbe2tlrQI/VRpKOsfMPpxvJ5ojgDIO3jbwTg1
 U93D7VCdKPjBSBR+KPH52Fj6z+dux+XzgFPmcfES4DcqTIoe0G9DReQtbNCO+1ePP7fQZ86pPEN
 I8ZwIs5mDHLiv0C5dYSQCB5m3akqv9YcUUOi/nwotYBoNwibvKSBclHP7YMpqN2KYjlLBAMbwRm
 9HGbmKNQKcAmtvhn6vQ==
X-Proofpoint-GUID: NWaU-vUFysK0MHgZyaEBLOdIc7ocUR20
X-Proofpoint-ORIG-GUID: NWaU-vUFysK0MHgZyaEBLOdIc7ocUR20
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 clxscore=1015 adultscore=0
 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_012404_089151_2B3E88C6 
X-CRM114-Status: GOOD (  25.02  )
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

On 2/12/26 4:32 AM, Qiang Yu wrote:
> On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
>> On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
>>> The PCIe QMP PHYs on Glymur require stable reference voltage provided by
>>> refgen. The refgen itself requires two separate power supplies:
>>> vdda-refgen0p9 and vdda-refgen1p2.
>>>
>>> Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
>>
>> How does the driver matter for the bindings? If I add dedicated driver
>> for refgen, then I change the bindings?
> 
> Yeah, I know that dt-bindings should describe hardware, not software. But
> what I meant to say is that the refgen is different from qref which is
> controlled via TCSR registers and its LDOs are requested to vote in
> tcsrcc driver. The refgen doesn't required register setting and it doesn't
> have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> this statement in next version.
> 
>>
>> There is qcom,sc8280xp-refgen-regulator so why there cannot be
>> qcom,x1e-refgen-regulator?
> 
> I think we can and it seems better because the refgen for pcie phy also
> supplies reference voltage to other modules like usb. But I checked the
> qcom-refgen-regulator.c, it contains some register settings and there is
> no LDOs voting. I'm not sure what does those register do, maybe Konrad
> can provide some backgroud. But on Glymur, we only need to vote LDOs. So
> what if we use a fixed regulator in the device tree to represent refgen?
> We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> PHY would just need one refgen supply reference.

That refgen on e.g. 8280 supplies display and camera PHYs. The latter have
some sideband interface to request a vote directly (on all but some single
old SoCs, IIUC), while the display ones need a manual vote.

It would stand to reason that perhaps this MMIO-controlled regulator would
have some sort of a voltage input.. so maybe that's the missing part in the
story? I'm trying to find some answers but it's not easy..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
