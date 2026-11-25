Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B71606A327
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 11:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uZgLWEWW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Bf0qJbMg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DroYifAF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1dXP2qRSWAhFCr7oulhBUuY1K0Ad1WZlLJAzpM7uxvA=; b=uZgLWEWWRhV7YBTzLQYeuBbUWC
	IVNrJ3RwJGflhHL+DBXikFJYB5kKOV/eIfipoYSaVEBucsg1D55WJT5FCSyUYOnZ9g23FD2Gbkfyi
	/O4bZ3rIMjSzhRqmHEJOUI9VJH6mHHsrmawhzx1XQrp88gbbh1iuxi7/U6pJ1CN0Ed8b6kIl9HxoE
	iw3vEVOTaicW31WLdy7mlKvk3cY+d0J16DKMeYKpEfK7fwWdbLzJQKvzqrH8+cjwpy431d7okAFT3
	NBV3UNCksuWfXWU936k/yLXlamHUVkEJrGH80u9qetiH+WBvwFG9dR9ABJGlCWR7kJ1Mq/1IRvwVw
	l3z/le+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBcl-00000009kSj-0PRe;
	Wed, 25 Nov 2026 11:57:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWBci-00000009kRY-0MsV
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 11:57:17 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AP9mMZS3126905
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 11:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WIaM91otGd4vtySupJsEK/JbUTZeMbmkY21CbOPjPac=; b=Bf0qJbMgIQfinrCm
	T7S1xHwVE75BX50Rkepre02UkLvICu2sBavOAP4WOGy0HbYWHM7q9+ATKrzJWMir
	A2APG+eMge4rxnMXZsWS4PJrcUrihtQyKvLCe4FVaqwQPLJJnx5FJorHoactzt/g
	SH53X66n2WkioAm1+0GZ4vEQVX7BNOG5TKciRIK6JoKXg+UziF8LLuNZcyxejlkk
	aodkDvWL+zApsaqYIAbhPD8raCpv1xu0iIX2mskDC2tOtzFnlLv8fJ59OTzKGRfI
	2BNdxGy/hgTEsEPMw5fEmcyuSnEBn8n0Bf91sSlieVKg0TpUM0kEisIOvd/wSV3t
	ESQegg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5eydc16s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 11:57:15 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-945e8a244bfso61346085a.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 03:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795607835; x=1796212635; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WIaM91otGd4vtySupJsEK/JbUTZeMbmkY21CbOPjPac=;
        b=DroYifAF+M5wdDFiuenOLWii1VPOVlRoH11RlrUJw1MjfPL4z0M5VJDE2Bu08eN964
         rwVmgjPlTxKBrU/6UogMFsigu4Fib14WRZzQKyViL6wZxbdxAzPagjLsRcMc5+Uf0VHJ
         zvHVclzxaymiP57J64VaEX6F5cDvnv2qKEdET7Xx5UdM9nSnP9SK6YbHtDnlDHyCdKl0
         hGBX5BinPHUcriWcFNxY8Ht36oBEhjE5PdesYdHzoHA3SQ+hxFML28GrWMOE85oQ6z3p
         ltfbigW3yIOy5EDUZLkGPXNJ68xxcB0BQ/Ma5RZFvh03y8v3EAK5kK14bi8AShcROOR4
         SM4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795607835; x=1796212635;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WIaM91otGd4vtySupJsEK/JbUTZeMbmkY21CbOPjPac=;
        b=n7eNFZnTOblE3mekDT1s/YOihRowx0TpiBBiopgTlzsYztdbyjGADdx6X6KK73D4wg
         9wQzDOn+dO7ZsA61C0IrW+P6sMjuHsriNsDkSE4pTM/G1WqMGA3UWkWSf9X15qjzUIBv
         ECUTtVo2pUAoYIwIAsVvgaHUlyzQsLraBfbkvJsYF2v4pkpjaKpPAXvIMgnAX7YC+pXv
         bOsV/v9Ed7RlQfuDmi77YiVMVJ9zxEt1bVzpFrSyKWlf9t8UxF/bswR+xH8Q9QwBXvj3
         Lk+i/gtpr5DYj2LMzziMVcpoD3y41J61B/pkW8IS3hMAR49ZHvcrP38ciDe8MrQklr1j
         coQg==
X-Forwarded-Encrypted: i=1; AL+hErEQgafkdJ1J0T9HAi8dZoxWG8lMMa3VwyKjjZESMZG/l4CYfcxh+EvREGYAEoToKoU1DmSNJQxSSbs=@lists.infradead.org
X-Gm-Message-State: APuU4Z9Wk2OxCOS1ARvUYoTq1pk6EE1G5VuHzGGqmqHBDnMAMO8cXcvg
	U0DhD/pz4zUKHhqVaLxasXek9GiRwUsB+MGQk9seY24G/WuI4wYd7m+85g6REwEiR/wJKqXZVAO
	Fsex2F49R+yvrc+8pTY3X7s91Eq07GAOTDYi3L/89oMZK7b11zWmp140H0H7dKpWYNKFx
X-Gm-Gg: AZFdTZeyZt85IuRlNRaygj+IupqdKIvpuD9/Xprdgt0FM1H3xG5AKXiqfHVEU8MuCB1
	bbpJs9+UJRi3vpzl8eArESoOy42NNPsIhlzhIjr7Ip5Vs9HadhS5sNn571CeDsqFsqsm/jRGk2H
	r24w4+uicn6wvjdSsxux5/a8f14IGaxNIuW508xxp3A4AvOHEZqOSo+9ia0DLeEBLFKEG+mE+Qu
	TqTjhkS1FMuN6CISNJX/SHj7wFc6NhW2J8+eXLfxIGBr1r2VFWW8IQ1UxL1Zc79F2k26t2nFxDT
	O9Icuih6EempTB96AvGRhF9Oc4CRM8377TzvDJfq+n4w6yKi6PAPqwHh1qyQb43Nl8pOf5AI7UY
	ZV6SwF5kyGlGpszyxrBd7LgDDjrP7gjMZ8A818UEZmviZjmWYoioJ3p0MA9hFEo7kP9GkNWY=
X-Received: by 2002:a05:620a:5408:20b0:949:ae35:480 with SMTP id af79cd13be357-949bab50fdbmr3064945085a.6.1795607834508;
        Wed, 25 Nov 2026 03:57:14 -0800 (PST)
X-Received: by 2002:a05:620a:5408:20b0:949:ae35:480 with SMTP id af79cd13be357-949bab50fdbmr3064941185a.6.1795607834035;
        Wed, 25 Nov 2026 03:57:14 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513afc244asm621335166b.55.2026.11.25.03.57.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2026 03:57:13 -0800 (PST)
Message-ID: <f4d667b0-8a92-48f1-a033-3ba12e0e85b4@oss.qualcomm.com>
Date: Wed, 25 Nov 2026 12:57:10 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen and refgen supply properties
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <20260916102023.2054761-2-ziyue.zhang@oss.qualcomm.com>
 <5b27776f-cef4-4963-85d4-6d2f970c8484@oss.qualcomm.com>
 <361c05d6-b5b9-41a5-a33d-b12f534e5893@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <361c05d6-b5b9-41a5-a33d-b12f534e5893@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI1MDA0NyBTYWx0ZWRfXx24pcIA5PMXQ
 cVjynLpMpfBjmHfFMXCJWgs8QhJ1+sKR1gjL9XNtSkOam1lfwGYIF67HaTzL4FCs+c1fLCeTkk3
 nHm/OX7Mj7dsH+zR1lZEDe8g/OpCw5Y=
X-Proofpoint-ORIG-GUID: ZPJHF5xWF_FYC9Xd1tFCZwugshgqvxas
X-Proofpoint-GUID: ZPJHF5xWF_FYC9Xd1tFCZwugshgqvxas
X-Authority-Analysis: v=2.4 cv=GIGdgeNK c=1 sm=1 tr=0 ts=6b06cd1b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=BrYspsXIrGSGt3-AnOoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI1MDA0NyBTYWx0ZWRfX4s8bVffOoFlG
 9HaPUJkXPIEh2XMF+evzRdkArC8Cwm4OBFSLAOMQrhHnDp/w+GnvdxaJjlY6RU6cHUlmcMAwu8l
 eqIUNO+k1ZkGIO8Pimdma7xaLDLv+g9SdH6Zo3r2xMWcKAVo0lJkpGYYoQIjvolIinoltTXWhLl
 fojfdhyJUX0puCe4h+fHvzDyJYL/fUX95DehMUbzbR6jd0DnTE3Y0/MIJ54S4xbXHS/dHCwoGGL
 XthHDh98DAnB+yQNpuOWYY5Nvjfo5J78ob28rUzOTpB45QgQF0sqN+G2HbD/phJzNJqvZAkMj9B
 YEQoXYxXmEbuhIWYHLpCKTo+0ijcEz0+uT9ScriTEWY/nJ0XsyWE8G0997VKBqIRV/Ko2DopABH
 hojM2vyEuso61Lv9AUpUmARk1/ctcy9SJLazaPcUD6oBlk6ddoeAqPKR4Fs+SsGsGdPpQKFVcE2
 zAzGZCjOi/mwNMTcR6A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-25_03,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 bulkscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611250047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_035716_134694_8E57428A 
X-CRM114-Status: GOOD (  12.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMy8yNiAxMTo1OCBBTSwgWml5dWUgWmhhbmcgd3JvdGU6Cj4gCj4gT24gMTAvMjgvMjAy
NiAxMDozNyBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPj4gT24gOS8xNi8yNiAxMjoyMCBQTSwg
Wml5dWUgWmhhbmcgd3JvdGU6Cj4+PiBRQ1M4MzAwIGFuZCBTQTg3NzVwIFBDSWUgUEhZcyByZXF1
aXJlIGRlZGljYXRlZCB2ZGRhLXJlZmdlbiBhbmQgcmVmZ2VuCj4+PiBMRE8gc3VwcGxpZXMgZm9y
IFFSRUYgdG8gcHJvdmlkZSBhIHN0YWJsZSByZWZlcmVuY2UgY2xvY2suIFdpdGhvdXQgdGhlc2UK
Pj4+IHN1cHBsaWVzLCB0aGUgUENJZSBQSFlzIGNhbm5vdCB3b3JrIHByb3Blcmx5LiBNYXJrIHRo
ZW0gYXMgcmVxdWlyZWQgZm9yCj4+PiB0aGUgYWZmZWN0ZWQgY29tcGF0aWJsZXMgZXZlbiB0aG91
Z2ggaXQgYnJlYWtzIEFCSS4KPj4+Cj4+PiB2ZGRhLXJlZmdlbi1zdXBwbHkgaXMgcmVxdWlyZWQg
Zm9yIGFsbCB0aHJlZSBRQ1M4MzAwIGFuZCBTQTg3NzVwIFBIWQo+Pj4gY29tcGF0aWJsZXMuIHJl
Zmdlbi1zdXBwbHkgaXMgcmVxdWlyZWQgZm9yIFFDUzgzMDAgb25seSwgYXMgYSB3b3JrYXJvdW5k
Cj4+PiBmb3IgYSBoYXJkd2FyZSBpc3N1ZSB3aGVyZSBRUkVGIGFjdHVhbGx5IGRlcGVuZHMgb24g
cmVmZ2VuMyByYXRoZXIgdGhhbgo+Pj4gcmVmZ2VuMiBhcyBkb2N1bWVudGVkLCBzbyB0aGUgUEhZ
IGRyaXZlciB2b3RlcyBmb3IgcmVmZ2VuMyBkaXJlY3RseSB2aWEKPj4+IHRoaXMgc3VwcGx5Lgo+
Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFppeXVlIFpoYW5nPHppeXVlLnpoYW5nQG9zcy5xdWFsY29t
bS5jb20+Cj4+PiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraTxrcnp5c3p0b2Yua296
bG93c2tpQG9zcy5xdWFsY29tbS5jb20+Cj4+PiAtLS0KPj4+IMKgIC4uLi9waHkvcWNvbSxzYzgy
ODB4cC1xbXAtcGNpZS1waHkueWFtbMKgwqDCoMKgwqDCoCB8IDI3ICsrKysrKysrKysrKysrKysr
KysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4
cC1xbXAtcGNpZS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+Pj4gaW5kZXggYjM1M2I3YmZiODM5
Li5iZDRjOTg3ODQxNDIgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwKPj4+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNp
ZS1waHkueWFtbAo+Pj4gQEAgLTk0LDYgKzk0LDExIEBAIHByb3BlcnRpZXM6Cj4+PiDCoCDCoMKg
wqAgdmRkYS1xcmVmLXN1cHBseTogdHJ1ZQo+Pj4gwqAgK8KgIHZkZGEtcmVmZ2VuLXN1cHBseTog
dHJ1ZQo+PiBUaGVyZSdzIDIgUkVGR0VOIHN1cHBsaWVzICgwcDksIDFwMikgYW5kIHRoZSBzaXN0
ZXIgR2x5bXVyIHBhdGNoc2V0Cj4+IGRlZmluZXMgYm90aC4KPj4KPj4gS29ucmFkCj4gCj4gTW9u
YWNvIGFuZCBMZW1hbnMgb25seSBoYXZlIGEgc2luZ2xlIHJlZmdlbih2cmVnX2w3YSkgc3VwcGx5
LiBUaGVyZSBhcmUKPiBubyBzZXBhcmF0ZSAwLjkgViBhbmQgMS4yIFYgUkVGR0VOIHN1cHBsaWVz
IG9uIHRoZXNlIHBsYXRmb3Jtcy4KClZERF9BX1JFRkdFTl8wUDkgTDRBClZERF9BX1JFRkdFTl8x
UDIgbGVtYW5zPUwxQyBtb25hY289TDZBCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
