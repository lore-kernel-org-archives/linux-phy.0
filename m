Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8CE9C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 10:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgZXhpWFXeRMo05HSiuIxCaPiQn5GmMjoRqOCwceZr4=; b=4rsLE2Sz7vR7OG
	DZ89PFGYniyBRe9FDvAM2Fxp+7MNjrFLcj9CO10y2nghlAE3/QbidndKtoS0NpgrOUXs45VjFDmI1
	LTatExb3JIYehAkEEJn4OSO/VbNvK8cOxk2k4a1lGt59MV5gN6UJtJl2DjVdmlrgANOVBLoGHikGU
	3KjcvCLJ/Bl8fm5WbZzsyY4wUhjaw93Olnt9wuNG0jRnDvNJ6avBROPZhdOgMwszuqg3rEpWFYU9g
	HssnsGA+fN/MHcfXYgx0bhh/ZN7nhk9Wv/RgaNp+GXm6VaallJhjYDiWYIyG5Ubmm/IDz2kBP2H0r
	t1AOsXjfuvkCHdfarJIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesHK-00000001JsE-1LCG;
	Wed, 01 Jul 2026 10:34:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wesHH-00000001Jro-3p7i
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 10:34:49 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661AGE6W793729
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 10:34:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KBjaamXA5wUppqhhT0yZ9IlQ5XxuWeojqrulhTasdTw=; b=o/+9jzHgKBtr6Yef
	MRBKL7YIu9Ef313xvza8/f3KzNbEK/JMsU88tyZKVYStFhaMlwzE2KmJBhRyDU1a
	rQ9czWiTlKismoB0Hv+iQiX9unUnoyLpsWU//gV78W19gSHZqBZKQp5NkMaJeay4
	wVYZJPWsptNyB19tB7eLZ7zmU/+nuVKZeCv/aXVHqzZkWYBlXM6HosZPB7hZk+SV
	SotaM5XMNjkxVTflrEiI9/aibzTsMbuAiINurgMycClqh5iizh8+EQi654gcGbpY
	u3O/VCSwfIzT5QR0e29LxsuirfDeuAFXbbdh8vDxOo91hH13vkzPomaGbNs3t94s
	3aXChg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f510ag36h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 10:34:46 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c298a1b20so280691cf.0
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 03:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782902085; x=1783506885; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KBjaamXA5wUppqhhT0yZ9IlQ5XxuWeojqrulhTasdTw=;
        b=FFzHpsDfSqDP6ms66qX2XYeKhUfABp9KIcOpq2BLap7RNHQ8HBmyXBoEwhjGqJZDlP
         tRBKF2297vugGVZUR/VwkvEv2nMPO8mg3bM0dovvYHsNb/zdsomba07UA9/o9Bn7zEPx
         O4u9/cJdXOc8ZFg1Bsdvr4Ai4tlxBhtD87Ev8Z6q2p+ekoscqlisT8yU3E73IbLnQzMS
         bCAboMztJH2tGkbzefBxvVk7jYsWh+n+hlG0T5cvPixSrDvCOvigyym9XjlzDzdcqmtl
         hWSq8NL+Wti/qxCmQVgDYfNbMvf5Lol+XOGIr1Xcp0Bwoqj10LjI/7+v4zR3OfTIO7Zn
         lZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782902085; x=1783506885;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KBjaamXA5wUppqhhT0yZ9IlQ5XxuWeojqrulhTasdTw=;
        b=tPSF/HXIiE80i7YPet2zPrZm7oaXZcojZ2BMLjK/+7re9npgPJwaZrP+wUfpaAo+X5
         cmKDOGx0fuoDTWhapZjhlkdm73Hv1QZi4ACiGcwT9CHai6FLrg5WTl7zEMA6fPU98B7R
         PTbEg/0dTcbDOc/mTdtRxkg626HgbGys6a111G0b3I9qTE3hSs2zJsYffcZbBg2rUcic
         e+m8QlGjwYnvSo4O71mxyHczY9fUZ//e06cd6ryGhBHGyfVQ6Zmh0FJgQNFyXKuFZLC4
         mZb01gj4ydIwG3yOjn3JSGlQgpyN0eBPYpwPBWynpEu1NQpeD5f7bK9HM8t0v3AIcsuO
         QAdg==
X-Forwarded-Encrypted: i=1; AFNElJ/HJh+0JmtBhu1YKmlUYZPv/3rEHeJ9E+630JAaEKa7qtBUtifkqcI4y9BeUpVOp+0K4cJRkitezC4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDnvUlSAqn8xOdYKGS0o7DnH5o/Uyo5l9DK5Yc2HX/4iJTjCG7
	Pwa78Ab2H512/QyoO7QDkvIB0HzdUHakA9NKE+uXcbO47IxLyPby4aFNbCOIprgSwMJlGcm6xXt
	ueLaz9wN50BNmfKW5rtWDW/FbPWJIrC2V7uosppm9j2aqpXe+2MbxdoFkwZuR01VxcHYu
X-Gm-Gg: AfdE7ckJ9tQtD0MXOn0gl4jWIviKt5ScbMnsoFpe66hDYqgvM4mclRQQtNbXONNPOxQ
	uEkNtUhiTtvywdDHLrGKy1aNnfJDxUp7hCMVcmPEsAPymABikmUOKuwr4x0SSNn0uroFYiEQmJx
	H5uGNQMXGcYtMd+BN1oeOsztg2APVltMHA+suOHnAijclve9sSQ7of1AML82pZfxfY3klJYzgBd
	XDkwbvj59n4cOxf7ceZGAE8VCdolY2QPjjJuqjePBASOfGPV199a5ReAUhruiX84gqNlNJMbwyE
	NEX5Ww4BWw9Mttz6d530nt3kCp5TAbT1XGB+CQyr/zUjROkrieHxGI9mX8ndl2Jr0QNcmhEHv6g
	2Rn9MJ6FnBdCF0MgaR5gcyqD+qavyZd35BX8=
X-Received: by 2002:a05:622a:1348:b0:51b:ff78:f229 with SMTP id d75a77b69052e-51c26a8ec25mr9409491cf.5.1782902085613;
        Wed, 01 Jul 2026 03:34:45 -0700 (PDT)
X-Received: by 2002:a05:622a:1348:b0:51b:ff78:f229 with SMTP id d75a77b69052e-51c26a8ec25mr9409191cf.5.1782902085193;
        Wed, 01 Jul 2026 03:34:45 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1288f499c4sm251567166b.49.2026.07.01.03.34.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 03:34:44 -0700 (PDT)
Message-ID: <12e86cc4-d96e-44f5-8c87-87a6df321115@oss.qualcomm.com>
Date: Wed, 1 Jul 2026 12:34:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] arm64: dts: qcom: shikra: Add PCIe PHY and controller
 nodes
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-7-e1a721eb8943@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-7-e1a721eb8943@oss.qualcomm.com>
X-Proofpoint-GUID: PxmaFXkltodkRq4tl1ojoBwFgIFpHruX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfX+5W8QtFxMuvx
 i/8A5OuVdepCwd7xHBI51B6BC2vJafD2gpLIqI5dUY8bMZSzFkUfcnXw+6cjUyoJy1llCLxMc2V
 BLRL4hjXTMKIVkgOtLrqH2SE7pRfY53ozButw8UeqcQrWW8e8ME8KUZiNiBSx6HEJXpckBGi6lV
 y2bzxALrgmNvNLOxD37YTL6k7Z3I0Op5bGJNLIFo2m92afgzVNs8TnsECayNpF4PjM40gShnt3C
 ydz7b36e9swJZ5IR6TsJqEUBIfOFeRAOOE40JiBZorL9Aavnd+oq43CyKoxtX12csip0QeyBIuO
 jUl8/3OFJkcKhjXbUGTDdOTO58sSjG5QzhW/tuv4MgfyiEDdL8z6F6c6v1YZvBmagwnx8TR1z6D
 N2p9G2F65xgz2bBTN1Q8vNMaT8FKdEceL6dxJNwvXtgXIml7jsJd8CV3nYFSjksHrjEIRrmlltd
 3YKuM5dWKESIuSMOsCg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDExMCBTYWx0ZWRfX09pIA3tK1NjJ
 zJdgE+gIW2Z3Vjg8nQKsyJpPVnZdAMs87vstaibJcm0gBinJGWAlbvIopW28YXnD1VPnLH8xK5P
 Jwc3jMvN2KDT/1tw9v0yj02e2twkU8U=
X-Authority-Analysis: v=2.4 cv=JpXBas4C c=1 sm=1 tr=0 ts=6a44ed46 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=K_jWTC3QbOtyT-G4GQ4A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: PxmaFXkltodkRq4tl1ojoBwFgIFpHruX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 malwarescore=0 impostorscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_033447_956671_46BF3172 
X-CRM114-Status: GOOD (  10.91  )
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

On 6/30/26 9:02 PM, Sushrut Shree Trivedi wrote:
> Shikra supports single PCIe instance with  5GT/s x1 lane.
> Add PCIe controller and PHY node for this single instance.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---

[...]


> +
> +			max-link-speed = <2>;

Please add a single-line comment right above explaining that the
host supports higher speeds, but the attached PHY is only Gen2,
so we need this manual limitation

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
