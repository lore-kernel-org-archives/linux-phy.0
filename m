Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BDADC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvlFZRMJw6c5k8RSvIzFiS9ViBfJM3GNnp4Dhf9sWig=; b=IfxuiuDnYcbxm1
	XruhTnBf2CL8OOxmD+oa2owQPdVrDUKqLysCyodMjGDAWIJqRkuNX2NPC2VquWtz2HP8k6HQlUqyX
	wPTvKD/smUS6RoPrWZTvsmIQxX0bvCDI4dsMzSoGLB1DzTz+ZzugWvSJAZlI/He+xIG2jWQ9GOLCs
	X2nSKLNXGOWwYQo8CARNG0VwOsZZw5ciRQVdaqHGCPAF4RRE52CdIJCSv5FVQJ3KC5KVHJ0eggY+k
	LhFNk2BXDpvY7V9vIbYG9C9gRbFWhAw7QDVHqI5r2iGfsTZUq/+GARj4yCV6G6UX7O9sXcV7pew3w
	e7wkSWyIDwlUKsG60AUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woemu-00000004vWd-3LDt;
	Tue, 28 Jul 2026 10:11:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woemr-00000004vVY-49Pg
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:11:51 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66S82lIf2275993
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 10:11:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FNwlA0hdBAVgy7IiebJ4IPZsJDkniERK7NeOika4n38=; b=K1FfmrA6UnD7PVAC
	TaAWyluvmCKkUOy0s+MRya47jmT3G8GtcqtjcsF5jb19Jiiophxi5aDXD1kcBmKK
	/P3CFB/9hoMTpj0Y6gYGa4TGNctiI2sqazy8hDJfteYJHnEBKOaoWvDrDYpRN4Zh
	jNQ5lrMfmiUoQ5S43krOlK9edJwGWock3maxNawil1EXVkH9M2xtEWcoZm/UGZBt
	eecYY3jpD68QEhYhhlyX5BMQrjAt8a9umJ3lHPkHxDhBFLRbR2DlceIMoRyaG0wc
	MwdSFMfPxfF+q3O4mUSue069jfwq0Hpq2mAD/adZZarfR+BkKaUaYFrzdD+gm4tq
	93JvIQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fpbrsunn3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 10:11:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8ee7cd05e18so1744656d6.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 03:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785233508; x=1785838308; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FNwlA0hdBAVgy7IiebJ4IPZsJDkniERK7NeOika4n38=;
        b=SINzMaivTq5UGA+XeobrfjGu0b+VPtRnmL7F3tLrr0sWjs/Kw8GEN7jtM2RqNUtOm8
         /nenJAswx/QhAOW2wXiEYQxRinc2uT81Eexp3QqAfYGUBZIsGDwgA3qv67/jFH8XhZEQ
         hs+F2I600HsTYxWb4rUht/a1/ay3GrHMsrgdK9yI+J64SS8IqsdjoIK8S1hkYa7h5CqV
         8bjOQ3kr/RTLQ8yPvodKSBB1yFXQZIPwcNbqlx9yck1OS5WzAeernVz7Z/mL545puWhI
         D3nXazd8yL4p9jDfmIN7b9a902PjjuE+a7qAYC79MRXjnqQaqOxqnfL+ibJU4Uilqdlo
         jobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785233508; x=1785838308;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FNwlA0hdBAVgy7IiebJ4IPZsJDkniERK7NeOika4n38=;
        b=Haq8akT6fV4nAdSXoN4pIROIEYBU1iNCraEhppsiDogPLcGdPQ1Az82FBbXgNT3Oou
         HA5SBhrvkd/Av1HSauLG4UQrQASAV8typrq5EqbtkFqra8vOoKRgcN/y60dp5v1w78nO
         nyhR9EjY0AGj17zxMjxWWXoLYRmt3yFjwJWiM8Lv8Gd4QtMTp2Vg+kt+CuBqr4JtQwaY
         fwk09m8ObtNH+3HoaFWUYnokgyUzV6YVJnMoKsHzM/qC31mNYkc9rEKWed3LNmvyg92H
         wyTn0AWDo4Yoa7L+DmSINilgQNIa/RWa7IkTPZDfY/x02wjTKjwT92OVWx0wqcqVoGfV
         clEg==
X-Forwarded-Encrypted: i=1; AHgh+RrHECVPI+Xde4K8vW5/4MZ5ikcnwc4UJfIv+QkTZxaJE8saMQqtxjBqb/VQ3m2IuCrTUH7HzRPOGVU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOWb3nT1AGEHAqmTW79i7MVDsJW+kOLdbqXfL8g1KjkWXZes27
	OdASTgJS5WnU5KyX+ownmypHp/gefP4Lt8LN5S3TKE09iCMshE41ZvHGp7iQAHyPf/nqtbVoNgo
	Uewdl5qgw6VsFiH2HCDgHH4XREd3qfOcd57vJ7ZrFzLC8Kirf70CP7sUjD70BJBiNADP7
X-Gm-Gg: AR+sD139sGPLsaCuL3oBFUKZEkkN8wPMJl8pFwJI0OYwUw34AgqziH+IbfprVC5rCzR
	djsSukfSMqLdoC+CSOwTLM73Xnx36rKbkwTpE85az9UYhrKFdJN8WD+ntJALeT3N5un/bso2bCA
	x0/GuiC3RiG1Cd10GKZ7ltNfCv7IY2GWTCiCiuYHLWpEPjX7pRd11qr43ngswRsEBGQAaeXnG+b
	htiBlwsDMrFhYjEZ3fppePvy4jnPb7Md/8Ea8v+5Ry+49VJ/li9UaATWgjQcDyePZeaG2uH3/+7
	EitCa5bAzjMCuvOzzgWrdB3dSo6tfVURFY87PDIEyPu7nLvuxXeOJewhxNKSz2jtRlqpvVljoyi
	SQEZ0VKZOCPk93iWZECqtdVT/
X-Received: by 2002:a05:6214:528f:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-908175552e6mr24111136d6.5.1785233508252;
        Tue, 28 Jul 2026 03:11:48 -0700 (PDT)
X-Received: by 2002:a05:6214:528f:b0:8f1:507a:ed6c with SMTP id 6a1803df08f44-908175552e6mr24110556d6.5.1785233507761;
        Tue, 28 Jul 2026 03:11:47 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ebb385sm740924066b.52.2026.07.28.03.11.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 03:11:47 -0700 (PDT)
Message-ID: <8c79424d-8b79-46e4-bcc9-37edce5664c6@oss.qualcomm.com>
Date: Tue, 28 Jul 2026 12:11:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] phy: qualcomm: qmp-combo: Add preliminary USB4
 support
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
 <20260728-topic-usb4phy-v2-3-5d9dd5149ec7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260728-topic-usb4phy-v2-3-5d9dd5149ec7@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI4MDA4OSBTYWx0ZWRfX0Khk5n37vE3t
 1drtWkphwjLpbNZTpL3j8KCUobfYxVMAW88T39is0XFv1ImNNJyz9s40y/lakE5TDJ3Ss9sfuwE
 Ft0iRA7EejeG9FGopuv0A8NHXsNhWrpjYpi+c/I2omcpamNgMyNlLmS2RY8om7Sl5b+Zpfd7WYP
 tPBO/Nr1c82SWTQ5VIvIMng7amY8wFDSeQQM4Zp+W377FKqnjrCRwJ9GQJgiTtpYAMjdOqOG4z3
 0c/COntn2L0Yfpb+Uc2vgAaU2bAauZyvBlBOJji//+u+Okb/os12dDZC/0A5s2TfJbaBBHlv081
 yIP4xCQOSK7AnmCJ0GTgI7rNPCs6nuFS0Mm+pPhvR6+bVcg1D+CmDoBjtTbkXzceVeOUj/4fl1n
 ytUukRRuvV8tbYIZ3Y0lp91WM69qwN7a4y40O9FOPf8R6nK5ReWIHYxt4EgDCFz6ZPbdOWWY3tj
 B+/jFXyv8jMdj6YjEXA==
X-Proofpoint-ORIG-GUID: UnmPqWBFtIQ3XG_jLaMzLkxWTHKUleCT
X-Proofpoint-GUID: UnmPqWBFtIQ3XG_jLaMzLkxWTHKUleCT
X-Authority-Analysis: v=2.4 cv=ALkdLnG8 c=1 sm=1 tr=0 ts=6a688064 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=rXb9wQVw3mmQ7qUHhtYA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI4MDA4OSBTYWx0ZWRfXzMIDZbbBTI8J
 YWCgLLhB39DB3ROlH7LEJgjqpTXfH5OMlAg6Zb1QzgGRTKy8a1J6K2ob4YvilULAutl3JNWRaKJ
 /skug7R4Ej79sZfxaeLHIpbquyBhuhk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-28_02,2026-07-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607280089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_031150_148223_89538C3B 
X-CRM114-Status: GOOD (  10.14  )
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

On 7/28/26 12:10 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Some Combo PHYs (so far only on SC8280XP, X1E80100 and Glymur), come in
> a flavor called USB43DP, which as the name implies, features USB4, USB3
> and DP signal processing capabilities. In that architecture, USB3 and
> USB4 PHYs share the same USB_PLL while featuring separate logic spaces.
> The DP part is roughly the same as on the instances without USB4.

[...]

As I pressed send, I noticed b4 didn't pick up:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

from:
https://lore.kernel.org/linux-arm-msm/37a4vzkiicm7aw3bg2r3s5e53kigh3wsc5yuqqjp4h6oxhpk7g@oybpt7kdnnxb/

because the patch applied on an ever so slightly different base

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
