Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65918C9830B
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 12:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PM7nclOwLtMW8wniZeELXcHzDbdT1/MfIsMIeSSxQRU=; b=eGEclz33vk/hcG
	DLfceBh4VrbX2IBN1tcoq9ZGIN1yGI4HDKojlX5yDcQlzpDf/Pxt95UTpvI7alIFQCCCOg1MQEy7K
	aR+zB30+H8C2rDFyruzO2xIHkGIcK08zM8BynRaWiaRb0K1uiGrpiucFvzXWhu5oDzgzgdJTrpmq0
	LvocMdgQn2uq/RvyE/j2M5VNOiLruEtF98YpNjep5uFpwiNxUwjJQpKpQO2k4PQo7jfJ3gHovFdGj
	0wC0apHNVNUyO8S+D2GjURwCcM/tmeb8W3L604gM7OgQ9AwC3vgFTyCDgS8WYolo+Cmz1upWvRtDO
	LUJ8M40BljHXBBatzLnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9LxE-00000008EFY-0VWg;
	Wed, 23 Sep 2026 12:20:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Lwr-00000008ECN-3tm7
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 12:20:01 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68NBbVpi4144497
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 12:19:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GnMmorU5z7ubvp2RV2au0vwumoI2G82ZHEvqLawCVIM=; b=kSFRmsHs+oW+GSUU
	LEz6kZCbnLmpB6rmdxPPBwFZ8nEOw6U3TrYlxIcfTNQg5rpTCFb0P4h3jowlyhRA
	HkpRBwcDwfH0kDYeBBhUwa8GRa/Z+H+mmVWHOHw4mlbl1kjQSo10i3kN5LrrPcdm
	knEs9W5dcHZjmPCaoFnVPTQKtchQqGhmyNFg1xf7jYj4cfgyizDvxcQGUmf00e06
	1sjSaUZgzZvoo7wcoRn5JT20n818K2hSJOWlNULI1wz2xV+So11VZTZyIK/lml3g
	8HR0IsaDkrXUpzcJUFH/m6yy5ETHH+tyjj+bTYuEnUGPDq9+6/y3ursRtUiGw6j4
	ysbULQ==
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gv428tpqq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 12:19:41 +0000 (GMT)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-97cace0be95so41489241.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 05:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790165980; x=1790770780; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GnMmorU5z7ubvp2RV2au0vwumoI2G82ZHEvqLawCVIM=;
        b=F8qpHY5lZPbTMBalGcIq7KXMQR7xDK+WAeqCTZs7tluQsVi8DBKQ0UqtyuQ4kcuwun
         zCv6Qr1p1bCfs0/M3zoADooJ4HBn2XcOHaaNQYZBxzlYpA972r5nOC9382c3YslIIMxY
         zXMefTRLpevlFtSttyP1DNXfLYwowuTwGBZl8D0Ygd/C06BJU/1Rf+0A4RO/1lAk9Ntr
         f0RzfTnQC7dtXHOv6PIlrMkRBi7JD4E1amqUsweGePSqydWVvA9XJ8bWvWxOfO4rGwgG
         3MyslIFgGHgswpT58hMwXF2Qz95Wqh1oiccKBNyI7zG3BE3FDcNQl6dPJOJKDcDTbIqh
         Z6KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790165980; x=1790770780;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GnMmorU5z7ubvp2RV2au0vwumoI2G82ZHEvqLawCVIM=;
        b=VkkJsyg13yHVf0VImGgFVF162cxFAaX6TDN2ccocQX+vUsa6jM6I3tH0V3tM4zR+FF
         hSnti6a0eQM4xuKDU5nW3MUYfHA+ToYthj7/hqIrw2LUnImnoCAgR1wls3rW2ndrmNK9
         U0DJKn9W2S+LRLz0mxvKXyM3U67S7n6q5yjoxi/p1IswRenzqzA0AItmy3fSKX8PnN8s
         qZO1XmgkIc2LDcnlcSWKDGa/kBgJu1KuZU7IaiDMzfCAI6vGdwSSkxhs0YwtYd6AFL4L
         bFtaH3P7hgA3uH9VEbK3NyTi66yHa0nIjbyCuAy0P50ymoAf6DQvWutnklqjzgVB8pdG
         NvrA==
X-Forwarded-Encrypted: i=1; AKwUvBxdey8leK9Jv48bSzjgpu63zR0/d3+UdPE3Ot8fx+uIYAdiETKdPRgwALrPL9Y7C8iooTfrsFWRDl0=@lists.infradead.org
X-Gm-Message-State: AFuF++mTo1+L4BtQQkIAmGZUDCERIG5bscqZaUlJMZ3JdB6EXPYtD71E
	IbusK/EjjTEFQ7TnDM2nyQK439KVTdFdoSUSMiEPSiqfo9A81vnaAaSGAbHhbNBk2kdpB0ia6lO
	zNwJ7iwVj6lZT3KN71HmU79SnpW+5phEFYjvpd2i/wDgezoBHprEcFxl16hK6N8xTLT1d
X-Gm-Gg: AYBFou34dViQk6sgxIpV4dvhWhtIrbzzFu/k6V/JBgYuMF0CpyH6RpYOiThp5NFks4H
	fekCJyALOozwswUv4lavBb+I4xdiFDH5lvme40i2O2L3LYfl4o0I9wywJueJtnCEU9ts4yeMzdx
	Q1KdOHdec3dv4RZshOA5nkvbvMF3vrCtVi7o7MHWnHOplGjbBue0DEQ+UBnVkcND2Y6+hRpDLyF
	0Zh+T6wdyfw9YrhRLP4qKJvFdFp5w5D+MLEhrCjYhw/6uBMWwZ5yetcckVMLId/fT18amIHl00a
	TRqiGK6XilhVwY1IGNswQfL/hlBs23gz67f8mH3wrqhtCK1tXycOZAkXHtOckFgOr4we5Ky8+Oc
	Bl5lt23Bc6mC/2/9ZZWmAXg==
X-Received: by 2002:a05:6102:5e93:b0:7a7:ad9f:539c with SMTP id ada2fe7eead31-7ac1ca9015dmr1987618137.2.1790165979985;
        Wed, 23 Sep 2026 05:19:39 -0700 (PDT)
X-Received: by 2002:a05:6102:5e93:b0:7a7:ad9f:539c with SMTP id ada2fe7eead31-7ac1ca9015dmr1987594137.2.1790165979587;
        Wed, 23 Sep 2026 05:19:39 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ab0aae727sm92143166b.0.2026.09.23.05.19.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 05:19:38 -0700 (PDT)
Message-ID: <07ad0b0e-f666-44f7-b5a2-bf9ad016b297@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 14:19:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add endpoint PHY configuration
 for QCS8300
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=EZdd0/mC c=1 sm=1 tr=0 ts=6ab3c3dd cx=c_pps
 a=KB4UBwrhAZV1kjiGHFQexw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=Z49P6srHwRQ8gCsPR7EA:9 a=QEXdDO2ut3YA:10 a=o1xkdb1NAhiiM49bd1HK:22
X-Proofpoint-ORIG-GUID: 48mZvaDkDwSMHUM0Tt3M-UO0MhCqzmLG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDA0OSBTYWx0ZWRfX2xEaw4pd1XmT
 1iGyQy1SdtXpuFO9TqJj7XnhwmFOMnSF2m2Sb5y4U+R33NATD5dTq19thzuLsNS3Y1U5tdrS/c2
 6Gp8dW+gDt/cq8wnAUDQOi3a1dGlqfmhT+2h+xhlPM685dyZwMLSMjZgbS5bNsHiNjNsy8u08f+
 wBOTyCJXCmQG7WK/X0re0gtCTMlPcsCTukZ5aortkMPZonLyFclkGczVveSvMJqQvOtx6+YaKLV
 Q4r9augqctgB625L/53dw/fQOX/A3oPaXa8Xh8CE9uKVJi/LrjmJXQTxEo1wRALHAu9c5iACgFy
 C0IQabNoHvZsTNST/IZUm49sC6N194FF/fVZPVZyroTIjefPTxhRCnh0jLrqoqbtjwvBbattSqF
 wzFb67sfUl6Ngj1ZHchMZABxchzUsc9SZVqpT5rhzMbKjo17aFs2iWpbdCA89LbQA9M5EjIkTRX
 apWwmjU9SJGet5y69Bg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDA0OSBTYWx0ZWRfX17hJTsZBnn0l
 UvrfOwXZ0YTnQSqHmpA5+4zc5q0wTVf2tH76e1sZrsdsnUyYBagG/A295we22RZ0LGIFxQo6UTO
 zYxtJwOya7t+TyWcIcGbwz5BgHV1QHc=
X-Proofpoint-GUID: 48mZvaDkDwSMHUM0Tt3M-UO0MhCqzmLG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 spamscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609230049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_051941_986457_8212C18A 
X-CRM114-Status: UNSURE (   8.72  )
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

On 9/21/26 12:58 PM, Krishna Chaitanya Chundru wrote:
> Monaco supports PCIe Endpoint mode on both PCIe controllers. Reuse
> the existing SA8775P Endpoint PHY programming for the 16 GT/s x2 PHY and
> add a new 16 GT/s x4 Endpoint PHY configuration with the required RX
> tuning parameters.
> 
> This allows both Monaco PCIe controllers to operate reliably in
> Endpoint mode.

Does that also apply to lemans?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
