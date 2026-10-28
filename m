Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9B4606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 14:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tV9NCQDs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=JxMcRL79;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ab+qsUgf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GWR+eyBZ/0N9ZtjT26PbiRgUAI949pnVcfDBhSv5pek=; b=tV9NCQDsCcdqf5w2fhurQNo5sb
	7rghwvYKLG+bF6tp+OwrfcbfOMMoZj25UxhibMgNVFAZAFdAYy4ZSunQzvPaAds+OrC7LyojPJgcX
	XMYcqUHxNywzW3OiRaBX+1g1F3sEuGV9HXRHwVVJh7iiwpRe+7cD9o/CGaoBiMx1I5t5YD87SuFaU
	WY5hfdpkbZQPgYRO7gfFQ9hmkTBVO5Li6cF8oVDgAVUH+PAKhUZAN50gY9GdfEUUIpEfz/OpWhaow
	KNJT3mGffB6ugocbPbmU6vXgFUTMPydNH/EMt34iB4SLtS4qfc+WJy8BB0R3/J45SE+nBmkLNDZIn
	LPllmyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4nC-00000007Dur-0RTg;
	Wed, 28 Oct 2026 14:38:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4n9-00000007Dsx-00IK
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 14:38:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SBdwLb2105493
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+BJpmnQqZ884dUFJrdWVavAYxVKIGdQfDby5GCSqo8M=; b=JxMcRL79w8Fs+cCO
	CSpN/e6Mkk0iwRwudoSDfaeVSpU3cgyFXVHMGYeltSsk1VSSmIAKEzRz0unFRScL
	H6By4VjNuYCbLZJzbbIt2wyE+IXf06OO1Iwo+ouPgu710e+0jFgLvEqMlWko3a30
	SX31nxLl8M/ayV69LUGRd+daS8vM44VAn0LuufQsW41c0mznqSUMjeLGCFC92VLa
	HCg2uVrrIyM4vCYnqI0hc2dAOpMZqtlN/I02IZcl167abb9ApFN+Y3ipQGL3qlL2
	1+n7Yh1Qr5bP882WiUnVEgvfWoGTYc/SWCs1z+HEGEjS/Nwe8YekGQAPcOGsbdHe
	OE/nlQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk12pv2ht-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 14:38:13 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-77f133855b9so40769137.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 07:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793198292; x=1793803092; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+BJpmnQqZ884dUFJrdWVavAYxVKIGdQfDby5GCSqo8M=;
        b=ab+qsUgf02sA2AD+Q5fTqZMSt/AxQjvQDgbjy8wFPUh8CATASWQ2v4tJ3RYiKSNbB5
         sZnT9PES79FuSTDvXsQvP+sUVOEVfec7V9msbpc6NVsTKZXK0vgC0orGGl1RRocanqLv
         kw6v5+Gs7DZcndj6WkShL70Pv3tjUhCX17undhr/JeAdqvXnO+Ei0H9X/Q4afRAhiw1V
         UIqYfSacYIrf/rSexv3lFUyKWs+ZjvwJ6Bw02OavZGDHcyIInVXWQsawWwWh25MclXH+
         RzzwODRcccYh6RCiuBtaPXeeEq4Z4PV+28ioEliXy1wsp+djyN8f0yZpXUGNBBiQ329P
         S9Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793198292; x=1793803092;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+BJpmnQqZ884dUFJrdWVavAYxVKIGdQfDby5GCSqo8M=;
        b=PUFuftXu+Q0RkCh8w/iGqfH8NewsnM1CcG5ow8SIH7LHfzqg+hBQyRksOhYHp6bgC5
         HMqP/jVAq34I1xdTUTqtZ+zZK7QfnT7j/qvTsy5DaZ8/pJscDy13jBY3zfqteQr3n+Oe
         QAsYAQyf7vY67kzD5q/211W4mpaYfdY7xBnl7qtjZGDyNKzAjrzgNBkL3W0eXlXUkUFD
         t2hOZfLmdiXeaF0PUMknsqWBwfcvmFqRQUVGh0TQ15FleC3wHgsNBUVhRkkc8gflhBIK
         Jd6rH/9AfCMOCix5g9XP9J5PdWYwpGH6Zfr2IHNDxVj0RcohdUvz0WwApV52qYFTpBOM
         3Zbg==
X-Forwarded-Encrypted: i=1; AKwUvByoePfhQ0GIS48lef6cuVO7K+ipPIhaihBNYWOk6sUHPRQ5LCQtv68VKYm/yKhq3d8lNtTOCmiRC3U=@lists.infradead.org
X-Gm-Message-State: AFq9FYJk+LcColhXP979/1NgBd5DwfN2v5Ao2LeMhd2bgQCl0gWea+ZZ
	zzTe2SRRADGEEylzYu4x19WwIYZDub4tJOGo6GvBe8GZON9PKGrJ85iPjw129Tyz96XFQfth4o/
	ZdUI+R70R3wUpkOrA3sDz8FH0bhlLM6vyd6JaopFChyKdXdmp+BBkaLpn0iLTlY8kfeqo
X-Gm-Gg: AYBFou36CxZ1JjONyE3EVIdJWNvD7KaZTs5xGKbn1fPDcUWsS7CaHtxc6bMzRMcdy3H
	jXuYqbH5Y8ovGt72QlNi5F617x8Vmnustm4DjPuaIZeP/Uv9e0EOLt3HEcg9Ol0A5HSQ9HNOhVG
	mQfZCX18H+r1NHWuXUqtbkimOyeVzp8mzx7RVm9+r30L6YfW+dfyZ4r6RsAWfDpl+QWb8dIi2MT
	QOIr8yMcjelOZhQOSbkFTXirSwLV8RFRWgYfmVB0AluDCCnbpPSyNjUjPEBOY5krwamjxG+SyRJ
	tuOttE7x1p9p4oQPg4iJ1gf0bViqGq0ng03+3+V4042j1+ufO6TWArcmSRAID556nK6rIldSBYA
	TCyDfIlD+Mk1eoRwU6lIxl3qPOez3iZeJ3I1n4ceoo8X9t8D2G8JobPNINUydJbvFxGPIltQ=
X-Received: by 2002:a05:6102:3c04:b0:7ca:21e4:8e20 with SMTP id ada2fe7eead31-7d03a4d89damr1130796137.2.1793198292170;
        Wed, 28 Oct 2026 07:38:12 -0700 (PDT)
X-Received: by 2002:a05:6102:3c04:b0:7ca:21e4:8e20 with SMTP id ada2fe7eead31-7d03a4d89damr1130751137.2.1793198291691;
        Wed, 28 Oct 2026 07:38:11 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b497ff5fddsm1482885a12.2.2026.10.28.07.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 07:38:08 -0700 (PDT)
Message-ID: <35c0fe02-88f9-4845-b37a-daa9bbc6a5fb@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 15:38:05 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Add
 vdda-refgen supply for Glymur
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
 <20261013-phy_refgen_1012-v3-1-f28305289499@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261013-phy_refgen_1012-v3-1-f28305289499@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: vcNn0g5ILsC5ie4iSsIlT-OEUY1UOss5
X-Authority-Analysis: v=2.4 cv=DtDDa2/+ c=1 sm=1 tr=0 ts=6ae208d5 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=uZIZgAQFpoYdS5itBGQA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfXzXbLQ5cmlGTj
 Ej6jQxOSaDtffueaujxHsNKDDdLO+ZOaH52dXIvqUJJGthIE7zs1VGhdsEyPo5/XJPaXqJ21qIo
 HWwosjdUkOq3SHuEyyOFC0YL4B2A4NlKmidzgXFG/khpxXdkEvg9Q4Uh/UbrGpFSo77q1J0V7gP
 Xa8ZXx7EkfyKUpERhUCdztqsHGgyGHh8SWcylqZ7/WQy33rDEuBWEd5F79rdo/lGX4I08XjxHAN
 CsU21s5Z3kwTvTUaTReBJFe65dbbjiNuC9H39whPotIGuqxa4veg5zMVe2/ntscwlhS/21ntWne
 e4WTs01+oHbWjmJOmjLsaCXH4bn4cvV2FMdHpDKDOoM5QshOk0cF5C0UoDi8A4m7xTK2IuQysru
 6NFZIS2P3AXpFMz2CZBSchhNoGqGpeky7ccLkJ2dICGvhvyf7eMItznJac/j4cDhNj4Lkl3ouCQ
 ie43pXGF9CAyjAKCtMg==
X-Proofpoint-GUID: vcNn0g5ILsC5ie4iSsIlT-OEUY1UOss5
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA1OCBTYWx0ZWRfX70SAVzsuyBwn
 cWTmBi9gsOvZilLghv3ENvcaZDxdS1E6hE5edyZXSLQCROooH5kzdgJkpnnCGyUaK0lbR3S8C8p
 DlYggXqeKQ8GTfhDrEljQVraEJtG1CY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_073815_050024_43899414 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/13/26 12:16 PM, Qiang Yu wrote:
> The PCIe QMP PHYs require a stable reference voltage provided by REFGEN,
> which in turn requires two separate LDOs to operate. Without these
> supplies, the PCIe PHY cannot work properly.
> 
> Add vdda-refgen0p9-supply and vdda-refgen1p2-supply properties. Mark them
> as required for the Glymur PCIe QMP PHYs for now, even though it breaks
> ABI; other platforms having the same requirement can be added later.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
