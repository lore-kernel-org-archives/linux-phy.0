Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6099C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgJ3GUoxbygjFLHUJrGtU2gJ5v8l9ph/joOJAef/bOM=; b=tVJKwqQ6pv7JZu
	liGAaldbWDNU6vGPvcKg4wgf09rha2lSozcEilAFbAt6Gj2qL8O/muh+UnIHQPYuwWw59MlnRid9v
	HMv9h7uxFrnOsqR4U0d4vc5Hc18uE4UUuxoFS3Zx1StwyzGDIN0ipZTZwi4u2ULevQz/GVWsC6WYo
	ibcH3mVtM0x0frybD6fe/Vxj2DAsYuOa+U4lx3AAccrcu116WSVIJCLFoW7FOUu+BNU3NifkNZF/5
	u+JZOZ3UTjkphH2oCwhJhwo0My+jWNThvkdBffTyA0SjnBNJ1qzFLR6NJj55XgZ//6HoUpJ2vrL2R
	Pu8X4E3IcuICC6UnaPMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGE0-00000004PvS-2wkX;
	Thu, 02 Jul 2026 12:09:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGDy-00000004Pv8-0JJE
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:08:59 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 662Ats093485588
	for <linux-phy@lists.infradead.org>; Thu, 2 Jul 2026 12:08:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WqUbFffd94CJdYg+tgT60cVAVIRk6IpevQHF0pQaKzI=; b=BxdWsIHpYGQLZXjO
	dJkqbhdzp8isewUp87DbAEA2/swjK4qe0gPIt2eDWvvlprqTcMU/Zwn9TEoKGEtf
	kDe1VTEH1h2L4gSIFblHNI7yh31jk6E4HkmfeQC3p1fMaMHed1a9y2kJg+O5ZOIO
	eST7tbw02YIWtmqBO5iJl3IKF6VXJthEHGpDfiUkWRTTrhMBgLIQu6tJJaZNGoox
	gAFrFiwmCy33QVHaT2DHq0EwPl34Ti7u4/PKsI+FO90u36b4hKBerZ8Nnb4ov8yJ
	6GFmXr4aEBuFhqMwKhQRhkDfyyOl4My/tp9XF7ZcPHpJGw5B2uZOAmR9Q8Nvxj5L
	yb5/Nw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f5h98hkeu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 12:08:56 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c21be5bb4so8697521cf.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782994136; x=1783598936; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WqUbFffd94CJdYg+tgT60cVAVIRk6IpevQHF0pQaKzI=;
        b=NFgboZ4zSCrXt73tqTKWjdqHI0cSsnI0jOIkY5FhNAIrrDsM+4HLwAPFWewYRSja5F
         oFnh6Kn4fhXtzffI+Ec2fJu1gasNNiD4P/Fy9G0hZvJx5B7z91f3AYXO9A7d+coteVRt
         dPr3TvtNSnZL+BJ6XMVU3nMxD4Mzhdq8TCPmKp0oHfENimAaJP5bAOboj+MmcNdYqdW4
         Cc2OTPeuvBNH+GvzASZa9wxkhHItSZfi74k8Ovw3f1MG71jXpzGRjNMyADWS64qvVpur
         CVN40Huk/IqQAzNAFIB07IV4p2hdao5KYVhOcyUh7xwskaomp7vZFZwMrQw9+DUHqKx6
         Bk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782994136; x=1783598936;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WqUbFffd94CJdYg+tgT60cVAVIRk6IpevQHF0pQaKzI=;
        b=JxIouxF/2zVmXbNt82irKGeVyi0+Di7QiCwLWz0kO7jrYeqx9/NWx6JrUEmoPbHpNH
         K8W0V+DSZSpGY4B0qWKYQlI/DJcUiGe9KSxL4wTOTbaIZGpYUJJ60X6Tw/+euaaTgULk
         P1jwbt8G34vfUm/XbVAUUMMk6mksheGY/WmE6I/tMxr6RNKKEZDmvROr0vVpasN/akYt
         5N9zdvAK5xUU9Tncy6wLY+0dxIVCf4cKftJaz4FD7BKXPBkG+hpfoda6i7q8eg2Km+cn
         /NAO0aAyiLPYtF3tBs2tYzDVLzH/rb8Eg3GAwIHXHcbMOVGTS1TY5TRlaEEBQmS1mLi3
         /7VQ==
X-Forwarded-Encrypted: i=1; AFNElJ+ozJL0/+5uAcTgBcIMVAciO3QIHjkjbIwTwJEltTTG/axsBzKWw1Ysq6bD7GK2/UQL1nFcpenao2o=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6P3cX2HUwrY4fSXdNI6bKrpsDBV6oxmOIATDxcjKlNqNWocgs
	zEGeX4Kn97A5jQEP16rTgVAnjNPHMkWpi+hKieDfxxQIBYbUbjDIYDwQ7/gTkiTFPXAJO8QbX+w
	qlus/Mri+SOUrAv/3pTarrhm/o9yEdkz1KWJPhv7eoeKXXyKhyXWtUBotWHUgB76kIznP
X-Gm-Gg: AfdE7cmjf5d4yeV9z3xvjIatgE0+Eaa5T/0mnFJyz1XDJOjVyXgKceAoii+riCe/7Tg
	Xzn3d9PV4D632V5OvVhnmqWiSvBpqHNlCo9opVsQ92rHaPRYYNKJh5U+tV5vPVXojXcSrguxMyB
	M40H2orvSqk8ZuIhn5xYfSDvDN9riVKmvRoDmau+m/S3v0bzvVNtAG3qvwdhIVJv4ywnoKkKet4
	wmMYJzurepIjWtMn/oPZK+IEZWKIr0BGHrQyDzTxKSL6HkfNvFW9k/dZkUcj4ozdi36D0qq9FLN
	6+O7akN50EpvvdfruYC18B3xKKJcpGmhNb6+xxwXLJcx66b6zNrzhmUfu6mc/Mr1xunNQip2+rC
	AibZ1uq5Q3ooSAZAwgQfev2TDc0ixGHrMH1s=
X-Received: by 2002:a05:622a:13c8:b0:517:8999:6c50 with SMTP id d75a77b69052e-51c26b25b59mr58048591cf.8.1782994136211;
        Thu, 02 Jul 2026 05:08:56 -0700 (PDT)
X-Received: by 2002:a05:622a:13c8:b0:517:8999:6c50 with SMTP id d75a77b69052e-51c26b25b59mr58048051cf.8.1782994135600;
        Thu, 02 Jul 2026 05:08:55 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b628efefsm120580566b.32.2026.07.02.05.08.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 05:08:54 -0700 (PDT)
Message-ID: <a1151605-242f-4044-b0cb-7decf643e83e@oss.qualcomm.com>
Date: Thu, 2 Jul 2026 14:08:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
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
References: <20260702073354.3641966-1-monish.chunara@oss.qualcomm.com>
 <20260702073354.3641966-3-monish.chunara@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260702073354.3641966-3-monish.chunara@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: c_hwImtQSDfEPfn8iaYpn-tHx9vL_hx0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAyMDEyNyBTYWx0ZWRfX5FI8CkquL5HJ
 KDGzWmgLMP43X94P3GU8XKs6v9U9GsiabMYLHHeZHABJYPoOny+5KcxyUajFle5czChXLU97cV+
 rJY/ph+AS7V/3RmoHNVFxOzWKLpMumpR4iVqsiOOkph15WQDmyGmiTyL4xMHnSjFXP5mMIAPvFU
 AgdvxnToALVI2OJvKM3Lg4Yy+xcGiDj53JfUCRUp/cP9kjDfQxP1LN1OjdlSaFsgHWFxvSnHVy/
 oBspMNYXtugXcJuUinRStx4bcGSaErT0K3dImxwLMsG+WqYDPsipvCGaVTuVv8rae31B1moE6Bx
 YNdEMsyvZKSFa9f7Kqiy3p2htkZMaxCeHrD81NpXaodbsZcao6PnJ+UnhGSphVEM7UfsdUDbBZG
 lw9M0N21HPDUc6dFvssCRNwJ3e7lQUdMg306f4lHFgQ7p19S7jHTougWevn+vdXrC35cqohP/l0
 0cAczGyaiuJotuqUzFw==
X-Proofpoint-GUID: c_hwImtQSDfEPfn8iaYpn-tHx9vL_hx0
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAyMDEyNyBTYWx0ZWRfX4Q9OziP+gv5e
 7ejmvJ+vYZFvuPgjn1Q2QKeOKFeykVmD8ufODOOQkaq6HTIyjw9gPWFnBwTxCmJK05fWqCLDVuu
 VXONmQg3e2tNG280heMsAKa96wx0QaM=
X-Authority-Analysis: v=2.4 cv=bdFbluPB c=1 sm=1 tr=0 ts=6a4654d9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=vBACkDl9X50tgIqftl8A:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-02_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607020127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_050858_234286_AEAD58FC 
X-CRM114-Status: UNSURE (   8.75  )
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

On 7/2/26 9:33 AM, Monish Chunara wrote:
> Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
> vmmc/vqmmc regulators and gpio-based card detection for each board
> variant.
> 
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
