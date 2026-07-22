Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDF87C44539
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 12:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lEMRRsIGxMSYM0Tb4oJXrLKi9PibWRvNVnLZYAuYWI=; b=Zah+jnjiXjFjPc
	ZXKFscx6zxmnK2Hu84JMuVzrC/A6LOpqaR8y224LR1KjojJOdmeuZ7ebPE6uS3FpFvasYlaKMgtch
	eRVY5otUR+quWjAXJm9Q/XpGLVZ89KksVgxBjaAQyvabAG+gtKxoJnMX1fiKjNZ7bCn1ktT76iTyJ
	qaMqwv92tC6CeK6hvMDM1Mk5NEPgmhlZ3NkRKSW6FY04/FBRUyF9Z0XjsBtkgYfPuCZQtmrF4smyW
	YXN2k7wj+OIkp0y5qlP8cIRgikKaopd+1WWgDRBX/4e1nwybOr5Su7Dzm0FUQ+tAtQQxFQxyZcBKj
	zlisERvsHDk/ilk3rbeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmW7U-0000000Blp7-48IP;
	Wed, 22 Jul 2026 12:32:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmW7T-0000000BloH-0EuJ
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 12:32:16 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M8xWG91401407
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 12:32:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AyfZ1AGsNFCY7Vy8azTP8G/03OAP5A5XNV25gHm9a4Q=; b=VV4Yb3PLfUC47MwO
	p3TCnTvJCi2SnOKUgpDzdj8gNxnfs7Qcs5X1WFw2Vn9nsgK8ZAcoqcOp2RZ6QgvC
	b7SbNBpCdFTb68f53bCZrpM4wEiTzYIObhtb3DChubri+FAbMjI5zdomph1IrNv1
	QyfwrUT7TVepLLSQvJbFMohIfOBZdUMkmtEq6q1x1tmi9T+vrD1EQ25gMQ6BQIBO
	2RGqSOS3WwDEr0cRm5jzc0Dj0jMZX/HgLvIQfVnSF/n5dJ/zqa02Pk/JIgDSEfG2
	wstp4deEUsT/JvHSdzpbqQlZiTKucU91YDQhDuFD5RiZZ7RJjWWItRTXheNMMqIq
	bk7mHw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjr839j4q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 12:32:13 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2ccd1958e8fso127497135ad.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Jul 2026 05:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784723533; x=1785328333; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AyfZ1AGsNFCY7Vy8azTP8G/03OAP5A5XNV25gHm9a4Q=;
        b=UghUuoP91Y/0GxAUV7VNFA+euBXv9f0uhZQMUTx8MJSEVM+ESYPERlPzANAaYl3QdW
         QXLUcm9zaOKAvfbyh+zxB2CFlqw1Kl9NsodSaqnqxz2RXeBAbr/58TkiGsbGxH5hWya2
         6Z0YduvoJ0cdtqizlVpBdFKYbznaNaY6qUQGY9Fb07LDSZNmh3a54FmofL/i5ouTs+4H
         XqCExhBdRFNswj8bC5S3tXQ/ReABLUpen68J57a7aSLLvAUE/bOPQp5buaj87GUerCAi
         LHkQgOTWWLxYGeZQukCE/rIGkrCtIuFed+g+Qj1Ku1A1bwv1iN77iQc9iuyJL7uzFG5d
         rCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784723533; x=1785328333;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AyfZ1AGsNFCY7Vy8azTP8G/03OAP5A5XNV25gHm9a4Q=;
        b=Fa9qW0f/pE/UawS5tI4XLTE2MM0M9OCPVuqFk0foLpdPKAmPMm+6uaPzmpz+tSWbPy
         2B5MaDGLhwOZAiT8cC4bpStZnm190oWnqtwgtX3e+mOcTa6Rl2hC4WpV49c8bdZoO9Jb
         01URMOIhiAqqgMQaEP3htceO9jnXnODM8wzUflv4MR7Kjh08gamlYchvmIQ6PszKMoAz
         A1rIohWc44aiBUnFBRPXOK/MRtKi1Cxq9m/1yFRuDI6hdykr/dxUTwv0FnC9wnTnsGOZ
         K/RAbaDkSTDE0XovXXtl5O8hAeCAZV/YwiVGIVI6aRg8yxmA0VViIeGum186RQaDnwHW
         0PSA==
X-Forwarded-Encrypted: i=1; AHgh+RrlI/jZFHWaAzlo3h4Rpcfuu+iCEZ5FJ+f5DnGRG7SA5IKlJd7B5pEppmsNPY/kkqw3P32b072fCNU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3z+ltfLfp1YWi/q5bKxhAazz/UvC5KgsNOENAg4UaJ06tIc0C
	589BLob5E6rE/D+sRf6EFCRZr6/SdiZ2BLvYDc2M8nqzCcOVYQcEkD5y/aQVSwMQIbTOvepY/Gb
	zeLWtd3WsjUjlgFc56R+dCQFd+qeF8bpkq+nV9qAc5rCef+Z8HFRy4mRcJbZz8w70/Mbe
X-Gm-Gg: AR+sD13BNCg2NzK4Qbf2LpOYeB0kzBb5dg0YPb8NYBWX1uvemdPE2LqercLxP8dYHjW
	pXwsYeLu+sauLbkXAYddDE3VR6nbuU/ZumSgpFVAMPzu55mN2KvbQa1WMNcHvptNP/qJC3ZCIaS
	Pi2lZZboBQhw+/D93Cz7k0rnJtOI53NB1hhljIUQ3LOu6+GMn4RVW0+MQ7WMi7yb3y7x8R2JwcO
	DQcia505d5GiS8lPk2X5iGaZgNgf/lZvvKPpzjUxwPVWUyImLd80WuZ6woC08xGN40KgeVqW8aH
	OBfzT5z4SYugC37qfbZXka0/rvGn2inOEnV7KQJHf0ipPxlSu8t6pOJr3vUXcKPsU9r+dnvmfdo
	yAYD2fylQRFJ80Q38lpN0J8DF1sL33MhQPTbRXqPw37w=
X-Received: by 2002:a17:903:2f84:b0:2c6:a012:6241 with SMTP id d9443c01a7336-2cf34850f28mr257908455ad.6.1784723533275;
        Wed, 22 Jul 2026 05:32:13 -0700 (PDT)
X-Received: by 2002:a17:903:2f84:b0:2c6:a012:6241 with SMTP id d9443c01a7336-2cf34850f28mr257907815ad.6.1784723532702;
        Wed, 22 Jul 2026 05:32:12 -0700 (PDT)
Received: from [192.168.1.6] ([122.164.85.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cf8f2e5f17sm14379875ad.41.2026.07.22.05.32.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2026 05:32:11 -0700 (PDT)
Message-ID: <bb810003-51d4-4dc8-9aba-19d09d9fb33a@oss.qualcomm.com>
Date: Wed, 22 Jul 2026 18:02:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Add support for the QMP PCIe PHYs in Qualcomm
 IPQ9650
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260710-ipq9650_pcie_phy-v3-0-ef6018818d33@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: PWVxALb5wQRWGifimHED4WyHhnBfnjMm
X-Authority-Analysis: v=2.4 cv=VfrH+lp9 c=1 sm=1 tr=0 ts=6a60b84e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=C8tbAiBpJ+kDtIH6BY8zzQ==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JfrnYn6hAAAA:8
 a=Ebsc_R1zknWeFji_XzQA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-GUID: PWVxALb5wQRWGifimHED4WyHhnBfnjMm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDEyMiBTYWx0ZWRfXyUex1J4aSjLs
 oDrpannR8/qd3MnoKkvCJqWo6741+NXWfMYqPloiowidOhjoc4HXettGWtPXCMydK5JQnQBzUYw
 i6vRPmIbveagvFz8+Gk4tC5wTso/PugJX7/+IlJEIkcyu5W5r4zbsXpu4mDhPFdl9mrpFTr1/DK
 SycysOOlZY5Kxd6AbVic7HWObAjtuwzbHYgk4+PJFiD5kHxQpN7SihjcDhuRFYWrNramS6xXSfx
 I80Td2Cx8FpeOZlT75pSbWqPceRcZCEHE0D9DSJkA7E2b7/bi3bJ/hRjv9F5ZQPoZRgHuf7WkOd
 /EK/4X8iBYUk17/zpbLgQGLu98MntmbLSbkp30VG4fOY8lX7HhnQFA/OqO8o6qAdUdRcV1wI+fE
 Tlrb9nXlOTd7QfdL7ht5UoKYe6334+FLMV7CCuL2sQfZOVAgO+DrREIgKw0MdkNUFZNn1f76oq3
 8jjyHbkoCxQv612w/GA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDEyMiBTYWx0ZWRfX9ew0Y0Z/7d/u
 X2PJ9Hqv/08bCxYpUfmX073ruP8HVeKy8flTz2kkV1Ce50D2u2rmwSgNRc8jkMRBgifrPPqbq9L
 0eYtkdUzQTwNCENC+VWxYTTvsbdzx6g=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_03,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_053215_112213_B00C66D2 
X-CRM114-Status: GOOD (  17.78  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 7/10/2026 11:16 PM, Kathiravan Thirumoorthy wrote:
> Qualcomm's IPQ9650 SoC has 3 Gen3 dual lane and 2 Gen3 single lane
> controllers with the QMP PHYs. Unlike the PHYs in the other IPQ SoC,
> refgen supply is needed to bringup the PHYs. Both single and dual lane
> shares the same HW init sequence. So reuse the tables.
>
> Document the compatible along with refgen supply and add the phy driver
> support for it.
>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Vinod, Gentle ping...

> Changes in v3:
> - Rebased on linux-next: next-20260710
> - Pick up R-b tag
> - Incorporate the link stability issue fix (QSERDES_V4_RX_RX_MODE_00_HIGH4
>    from 0x35 to 0x3a) recommended by the IP team.
> Changes in v2:
> - rebase on phy-next
> - pick up R-b tag
> - Link to v1:
>    https://lore.kernel.org/linux-arm-msm/20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com/
>
> To: Vinod Koul <vkoul@kernel.org>
> To: Neil Armstrong <neil.armstrong@linaro.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
>
> ---
> Kathiravan Thirumoorthy (2):
>        dt-bindings: phy: qcom,ipq8074-qmp-pcie: document IPQ9650 QMP PCIe PHYs
>        phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
>
>   .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |  19 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 220 +++++++++++++++++++++
>   2 files changed, 239 insertions(+)
> ---
> base-commit: bee763d5f341b99cf472afeb508d4988f62a6ca1
> change-id: 20260521-ipq9650_pcie_phy-60d7df32581c
>
> Best regards,
> --
> Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
