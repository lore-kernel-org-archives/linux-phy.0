Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40815EDEBF7
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 00:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouDBZtD/6FASyKH5q7nDAS0gIR2E8d1EfENFeRthgp8=; b=f67yvxgiO2vy05
	C0zhW5Wa267pQ/rAdn3g34qSiIFZ98tdQgJFaKkPb8MboPEjhtqSbulU3cDv/8uljfZp9GopjnSDI
	coxQ00EJvM58foFsBkKrY3jDLMw6ykwhA6nkKGQs8bzeg+qZfwfMALEwX3hyhxcKiU6gaHyEk1+fv
	nukVDvS2xh8vKofUez7AfEiN3nzsycLUaGSSzsft/cVGhH+WSjClWGYMFHzsJfT9gv9K39GnDLZna
	v5O6r0a7tgXV+gwDz17tI+eHn32riVYVfq6DU9GyC8Qkr8Dw+Zr8p1Gl+LZbAyNbh+eSk3PgBF62I
	6EZ1ecR/nwIoCqaHEo8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZu6-0000000G8no-1mqM;
	Wed, 04 Mar 2026 00:15:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxZu3-0000000G8nB-2FFs
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 00:15:52 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623Kso08593178
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 00:15:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UwGhxPVXr6fe1FFLz9NwC8zGdlVRdL/GDhYMOcQDwmc=; b=RK91ZTytpuKIA/Cf
	M5wrv6LlER5g4R90DbIjx4a2PzB+BWLrBacSibwYvGXJTcSZHp+viPGGfO82lcCc
	oq5jfbdpxGFA7A22pZN6CRXqvfNIu+9SdGgiCfEUK6to3CKINXamF8dwsMG8x9lj
	NBR3DnoEXmRaDxbSe0kz0dZ57yfqFe3KHu76Tx623i0L9FK8+5SFTHMqcAIAGrgU
	ExhOh4XLY7zVvECPKruq5Hb4JEHkB0rom4TnisK50zoEfagvEPPIKlVMXkkPzkJH
	Kh98DBCS0Dqw68GGa+/Eepd1IMMboi3/wUCdqPv6WUhqa3CKawD8NRv7jzdxnyQJ
	e09v9A==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp73h8jgk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 00:15:50 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1277896014fso106761526c88.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 16:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772583350; x=1773188150; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UwGhxPVXr6fe1FFLz9NwC8zGdlVRdL/GDhYMOcQDwmc=;
        b=Hik+JG9XeIQBaT4jSWxedBxOZxMxUljcB6NIbN5fdZZPruLI+pf3cYhzPuh9pSz8dG
         DybycAh8ll5qtmW4VIvq96uSfMshyk3DhxRRTQWPin0ngYAjl34GEE62qK2yLYbQ/7oe
         ckROHemMEz88WuyuLFwuIc7OJZN7Rki0Fnr4LzNOXPKA5EPBB3RWAzPRoDu1lN82NC6K
         ktUGkIkiQP01aQge63PzGGLs2HE+IgmNYRj3cl2HSNQCX6vyYRHvY5+rFalSj4oglmZ3
         eFMQYrDNbte7GhxzAESLUq1BhJ8zLIemy7IcBTTWIT0YyHg0BhmCctSH4vK8iolXmz/D
         KdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772583350; x=1773188150;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UwGhxPVXr6fe1FFLz9NwC8zGdlVRdL/GDhYMOcQDwmc=;
        b=WywfWNtpGv3UiYRMpOunsUYeQEnM+BjDgEV9Z/orV9oeu7letMd3qsOD3I3wwOuw1b
         CFtUPjPQexjalAhvkMBhR7JhWjjzzpfTlw6A6UCp5eEciS+Dr2Xf4DHkF8sslPzw7EM7
         PUfNPDJefXZrrzTsA7cZmJfGq+fuV9O8wII9eV6CWblUltM5cEuztbfkkgTr6h77C2Qh
         UzxJ46xd129zw4RENqIqPoQm3K6qrvQ98y10GU0Td3sQiFRF8O8LPVmW/CyR5vYH4tjF
         xH+2Y0TT36RE7f3hAWgD7O0xfbql65jf3GuaA/5/v0x1qgOg9Y/wUT9ahq5jW4VDXAOM
         ZcMA==
X-Forwarded-Encrypted: i=1; AJvYcCUjHtNyMPjF5t3Kx6ZwafDTjq2OFONv6/DgKGtJeY+oKZ78EbKC03ERQf4/uybRTIXekJIBIBThwl8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZmxsmM2i1HCF8dmcuNGaca0NeEJqH4NXRmAxOv6Hq9uBgOszl
	WdrZQQI9pADpUiZ6k8QrEoe/+sVEb+TCvY6qCz2wHUTLLvJzZuue+m7kDL+ZYm9xSBapuUO86oX
	Pq6i7WnPLUFuA7VEsJ1lfsrez/EFlOi2Kqa/IMqP9NB0IpvIiX5grDgZkLqIdChEc+LoP
X-Gm-Gg: ATEYQzwWNrjc8zV/GSFc2L07qtqdYrOQWGzQXvvNwnOA0O7sG+dmpmbqBR9n0RL1+KW
	7hieoR40TxI57nZl5e6Kp7GiloKGM7UH/iyIpwX3rmWCtADn1/Gnr9uHd8VqvuDLXJVcLUxM0yY
	Nm2K7v25XYk9SOWkrQdZc8hYr0pyvtlnhZPqWGeB4qiJCr/9l9ugGSve/q7UbOa5igOIGkKk8lo
	xHUygHeQse3cT2sb9wvAB2HzNS7BzMgTGRrnmzz3dm/rGo/oRxll799AW0ElHLCHStlrnhedwpc
	zBxv+eR0fx9p9fzExTPM8UVztyyiJOUjiklLQVAjZRj89dIENRjME6gjqUC2LIlvN6ZoLeN1e2t
	IZ9jTSsVAd/H7aBtdHXfQrvsrwTPuI4pqmBOMdXZmc/V860Pf4Y9W1Tf6uRjpucG1SnzWUxCkH2
	xJ
X-Received: by 2002:a05:7022:ba4:b0:11b:7824:5c97 with SMTP id a92af1059eb24-128b70ebd92mr40086c88.40.1772583350058;
        Tue, 03 Mar 2026 16:15:50 -0800 (PST)
X-Received: by 2002:a05:7022:ba4:b0:11b:7824:5c97 with SMTP id a92af1059eb24-128b70ebd92mr40065c88.40.1772583349495;
        Tue, 03 Mar 2026 16:15:49 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-127899dfc47sm21089438c88.6.2026.03.03.16.15.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 16:15:49 -0800 (PST)
Message-ID: <ce21e223-3262-4a1c-ba1d-22c35f18e6a2@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 16:15:48 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <4pFL6wOeTKUt-Zq4YbjqJdacMgUIPSYJD-4-5DcIMEZ1sM7JsNFYcSv1bd7ZRVOklTsmkEfxM2b6tTflmiECNQ==@protonmail.internalid>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <03b44922-72d5-465b-96e1-97a19655e97d@kernel.org>
 <4440a3a8-7281-4bea-bb84-7a9d19ef7ce9@oss.qualcomm.com>
 <2a1155bd-7dc5-4ed8-b1eb-ddfa483c75ca@oss.qualcomm.com>
 <4fea7117-ebd3-4279-9973-3ac4f2a78835@linaro.org>
 <bfTUflirC2qzMSllq_4qHGr3GL6TJ088yNF4lCBtjCoc1sXqz0KcfYyWuQv6TeRtP6GdpqllNp4ipl4Qax4xwQ==@protonmail.internalid>
 <f031acf1-9a03-42f9-b61f-b6fa6bf9100b@oss.qualcomm.com>
 <dde5f82a-9ff5-4f7c-9ef9-470aad17c9d0@kernel.org>
 <8e7c2036-74de-4f21-8269-8e2b24323753@oss.qualcomm.com>
 <39828202-9f48-44f9-9f28-574f141e2ee9@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <39828202-9f48-44f9-9f28-574f141e2ee9@linaro.org>
X-Proofpoint-GUID: GbpPUoT5XViSl-VN2doNhCCGGiAKagSm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAwMCBTYWx0ZWRfX8a65+zSXPYK+
 FH3mcVG/sgTI1Lwd2V2k7hG7wkU6wsaAMJ/YAsLzWufav+vvKKBB7PIDexjISskQFweiJtqsWJE
 TpQcPX0YXA+n8zKn0EQHXza5f81A+JsYGZ03YbtrMl0221n6qbvLWeu+G8M6BGp3R/IDTg1GDI+
 A8CWpcjvaKRxGSCBuik1WczX7W4fj4jGcevINExGtD08l1ZYY7GODATjMLIqXcczCXfQvy2VPE0
 ETNowN3mRbKepUPWO18nZMWcsQugNeEyqhptN/8hTYjBv+rrEQXSlNBaZ9YYqfy/dkgO18vYaNs
 Dn9wsypeghuk5o2wSyBmGAI6wAhwWzbvatG8wjjod4RqUKiWsqouc8Rlia2fgTknoqJ/KwmoA6G
 bSASCv+VaAaL7AQRWJLdOYldPO8DXOwwSMDahXCvKqLF7zl22PF9p2l5SL+CscoowW3ZrrIogpR
 Zzm0cp5gsLn19Gry16g==
X-Proofpoint-ORIG-GUID: GbpPUoT5XViSl-VN2doNhCCGGiAKagSm
X-Authority-Analysis: v=2.4 cv=BpWQAIX5 c=1 sm=1 tr=0 ts=69a779b6 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=CgQL4hy3QgFxKJLL_JIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_161551_603300_CE92B757 
X-CRM114-Status: GOOD (  19.43  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAzLzMvMjAyNiA0OjAyIFBNLCBCcnlhbiBPJ0Rvbm9naHVlIHdyb3RlOgo+IE9uIDAzLzAz
LzIwMjYgMjM6NTAsIFZpamF5IEt1bWFyIFR1bWF0aSB3cm90ZToKPj4gU3VyZSwgSSB3YXMganVz
dCBnaXZpbmcgYW4gZXhhbXBsZS4gSSBoYXZlbid0IGxvb2tlZCBhIGxvdCBpbnRvIHRoZSAKPj4g
SVBDQVQgLyBjbG9jayBjb3JuZXJzIG9mIHRoaXMgdGFyZ2V0IHBhcnRpY3VsYXJseS4gU29tZW9u
ZSBuZWVkcyB0byAKPj4gY2hlY2sgdGhlIGNsb2NrIHBsYW4sIAo+IAo+IEkgbWVhbiwgZmVlbCBm
cmVlLgo+IAo+IHVuZGVyc3RhbmQgd2hpY2ggUEhZcyByZXF1aXJlIHdoaWNoIHBvd2VyIGRvbWFp
bnMKPj4gYW5kIGFkZCB0aGF0IGluIHRoZSBmb2xsb3dpbmcgT1BQIHRhYmxlIGFuZCBhcyBmb3Ig
c2NhbGluZyB5b3UgY2FuIHVzZSAKPj4gdGhlIHNhbWUgUlBNSCBsZXZlbHMgZm9yIGFsbCB0aG9z
ZSBwb3dlciBkb21haW5zLiBCdHcsIGlmIHlvdSBoYWQgCj4+IGRlZmluZWQgdGhlIGJlbG93IE9Q
UCB0YWJsZSBmb3IgVE9QIEdEU0MsIEkgdGhpbmsgdGhhdCBpcyB3cm9uZy4gSXQgCj4+IG9ubHkg
aGFzIHR3byBwZXJmIHN0YXRlcyAob24gYW5kIG9mZikgYW5kIGRvZXNuJ3QgbmVlZCBPUFAgc2Nh
bGluZy4gSWYgCj4+IHlvdSBsb29rIGF0IHRoZSBJcmlzIGRyaXZlciwgdGhleSBsaW5rIG9ubHkg
dGhlIG14YyBhbmQgbW1jeCBwb3dlciAKPj4gZG9tYWlucyB0byB0aGUgT1BQIHRhYmxlIHVzaW5n
ICdQRF9GTEFHX1JFUVVJUkVEX09QUCwgbm90IHRoZSBHRFNDcy4KPj4+Cj4+PiArwqDCoMKgIGNz
aXBoeV9vcHBfdGFibGU6IG9wcC10YWJsZS1jc2lwaHkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNv
bXBhdGlibGUgPSAib3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKg
wqAgb3BwLTMwMDAwMDAwMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAv
Yml0cy8gNjQgPDMwMDAwMDAwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXF1aXJl
ZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIH07
Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgb3BwLTQwMDAwMDAwMCB7Cj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAwMD47Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXF1aXJlZC1vcHBzID0gPCZycG1ocGRfb3BwX2xvd19zdnM+Owo+
Pj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAgb3BwLTQ4MDAw
MDAwMCB7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAvYml0cy8gNjQgPDQ4
MDAwMDAwMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXF1aXJlZC1vcHBzID0gPCZy
cG1ocGRfb3BwX2xvd19zdnM+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+PiArwqDCoMKgIH07
Cj4+Pgo+Pj4gLS0tCj4+PiBib2QgCj4gCj4gWWVzLCB3ZSBzaG91bGQgc2NhbGUgdGhlIE1YKiwg
dGhhdCdzIGluY29ycmVjdC4KPiAKPiBjc2lwaHlfbXhjX29wcF90YWJsZTogb3BwLXRhYmxlLWNz
aXBoeS1teGMgewo+ICDCoMKgwqAgY29tcGF0aWJsZSA9ICJvcGVyYXRpbmctcG9pbnRzLXYyIjsK
PiAKPiAgwqDCoMKgIG9wcC0zMDAwMDAwMDAgewo+ICDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAv
Yml0cy8gNjQgPDMwMDAwMDAwMD47Cj4gIMKgwqDCoMKgwqDCoMKgIHJlcXVpcmVkLW9wcHMgPSA8
JnJwbWhwZF9vcHBfbG93X3N2c19kMT4sCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPCZycG1ocGRfb3BwX2xvd19zdnNfZDE+Owo+ICDCoMKgwqAgfTsK
PiAKPiAgwqDCoMKgIG9wcC00MDAwMDAwMDAgewo+ICDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAv
Yml0cy8gNjQgPDQwMDAwMDAwMD47Cj4gIMKgwqDCoMKgwqDCoMKgIHJlcXVpcmVkLW9wcHMgPSA8
JnJwbWhwZF9vcHBfbG93X3N2cz4sCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPCZycG1ocGRfb3BwX2xvd19zdnM+Owo+ICDCoMKgwqAgfTsKPiAKPiAg
wqDCoMKgIG9wcC00ODAwMDAwMDAgewo+ICDCoMKgwqDCoMKgwqDCoCBvcHAtaHogPSAvYml0cy8g
NjQgPDQ4MDAwMDAwMD47Cj4gIMKgwqDCoMKgwqDCoMKgIHJlcXVpcmVkLW9wcHMgPSA8JnJwbWhw
ZF9vcHBfbG93X3N2cz4sCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPCZycG1ocGRfb3BwX2xvd19zdnM+Owo+ICDCoMKgwqAgfTsKPiB9Owo+IAo+IGNz
aXBoeV9teGFfb3BwX3RhYmxlOiBvcHAtdGFibGUtY3NpcGh5LW14YSB7Cj4gIMKgwqDCoCBjb21w
YXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+IAo+ICDCoMKgwqAgb3BwLTMwMDAwMDAw
MCB7Cj4gIMKgwqDCoMKgwqDCoMKgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MzAwMDAwMDAwPjsKPiAg
wqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzX2QxPiwK
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhw
ZF9vcHBfbG93X3N2c19kMT47Cj4gIMKgwqDCoCB9Owo+IAo+ICDCoMKgwqAgb3BwLTQwMDAwMDAw
MCB7Cj4gIMKgwqDCoMKgwqDCoMKgIG9wcC1oeiA9IC9iaXRzLyA2NCA8NDAwMDAwMDAwPjsKPiAg
wqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPiwKPiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhwZF9v
cHBfbG93X3N2cz47Cj4gIMKgwqDCoCB9Owo+IAo+ICDCoMKgwqAgb3BwLTQ4MDAwMDAwMCB7Cj4g
IMKgwqDCoMKgwqDCoMKgIG9wcC1oeiA9IC9iaXRzLyA2NCA8NDgwMDAwMDAwPjsKPiAgwqDCoMKg
wqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtaHBkX29wcF9sb3dfc3ZzPiwKPiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhwZF9vcHBfbG93
X3N2cz47Cj4gIMKgwqDCoCB9Owo+IH07Cj4gCj4gY3NpcGh5MDogcGh5QGFjZTQwMDAgewo+ICDC
oMKgwqAgcG93ZXItZG9tYWlucyA9IDwmcnBtaHBkIFJQTUhQRF9NWEM+LAo+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhwZCBSUE1IUERfTU1DWD47Cj4gIMKg
wqDCoCBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjc2lwaHlfbXhjX29wcF90YWJsZT47Cj4gIMKg
wqDCoCAuLi4KPiB9Owo+IAo+IGNzaXBoeTQ6IHBoeUBhY2VjMDAwIHsKPiAgwqDCoMKgIHBvd2Vy
LWRvbWFpbnMgPSA8JnJwbWhwZCBSUE1IUERfTVhBPiwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPCZycG1ocGQgUlBNSFBEX01NQ1g+Owo+ICDCoMKgwqAgb3BlcmF0
aW5nLXBvaW50cy12MiA9IDwmY3NpcGh5X214YV9vcHBfdGFibGU+Owo+ICDCoMKgwqAgLi4uCj4g
fTsKPiAKPiAtLS0KPiBib2QKWWVzLCBzb21ldGhpbmcgbGlrZSB0aGlzIGJhc2VkIG9uIHRoaXMg
dGFyZ2V0IGFyY2hpdGVjdHVyZS4gQSBjb3VwbGUgCnRoaW5ncyB0aG91Z2guCllvdSB3aWxsIHN0
aWxsIG5lZWQgdG8gaGF2ZSB0aGUgR0RTQyBhcyBhIHBvd2VyIGRvbWFpbiBhbmQgYXR0YWNoIHRv
IGl0LCAKanVzdCBza2lwIHRoYXQgZnJvbSByZWdpc3RlcmluZyB3aXRoIHRoZSBPUFAgZnJhbWV3
b3JrIC4KCkFzIEkgbWVudGlvbmVkLCBpZiB0aGUgUkNHLCAnY2FtX2NjX2NwaHlfcnhfY2xrX3Ny
YycgZGVwZW5kcyBvbiBNWEEgCihhY3R1YWxseSwgSSBqdXN0IGNoZWNrZWQgZm9yIFgxRTgwMTAw
IGFuZCBpdCBzZWVtcyB0byByZXF1aXJlIGFsbCAKdGhyZWUpLCB0aGUgY2hpbGRyZW4gb2YgdGhv
c2UgKGFsbCBDU0lQSFkgY2xvY2tzKSBpbmRpcmVjdGx5IGRlcGVuZCBvbiAKYWxsIHRocmVlIHBv
d2VyIGRvbWFpbnMuIEFkZGl0aW9uYWxseSwgVGhpcyBpcyB0aGUgUkNHIGZvciBDU0lEIGFuZCBD
U0lEIApMaXRlIFJYIGNsb2NrcyBhcyB3ZWxsIGJ1dCB3ZSBjYW4gZGVhbCB3aXRoIHRob3NlIHdo
ZW4gd2UgcmVmYWN0b3IgdGhlIApDU0lEIG5vZGVzLgoKVGhhbmtzLApWaWpheS4KCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
