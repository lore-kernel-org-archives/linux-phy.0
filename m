Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 557E0CD4F2C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 08:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2jA1wYMdoLiyCRUftsOcge/Oz+a2MZYn5bea+CMlGE=; b=0QxmoOPFozpQcy
	LATWbkT2i5H7piSqI6J3ykiVhpGhYyqvTPQR3InCVjjAX5F9uxwrJHGIsC/1ACssgIRGtTMWI8WXJ
	TAWPU2Nlr3OHhLAv6XOQXQJcZVq99tPxAHvemZ5XNHq8ELrVgTUgK8csO3qiTjpxTvU7sezVu9IDM
	TeZSiRVArgHsc4t8C/xovk8DxPH0+hk/evGJse8VGRAYKi1b5UVGOvoxJrb8okATBo+hgsnRiBlcu
	4O6xbR0yn8X/uv46wSN6R2CbB2c0Q7WsK14qdOAO65pntVtj3M4ijr67251+lXYyqDDsBJclrL/r4
	dHwEXe9IuSO4wb5D4ZqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwwJ-0000000AY7n-3dZP;
	Fri, 12 Jun 2026 08:08:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwwG-0000000AY7E-3I78
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 08:08:30 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3Bstp2548708
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 08:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DWYvrVR9u8QpN8NdHDBscoTKQgzIdztsQdgF9fhW5bQ=; b=jUkIZABSDjvG2+0e
	keSeprAhCzaa5ySTpA+uZ+dB0o2jNq+hfFPZlU2qcEzi3gaDJmjvQR3FlVsKBp61
	TZAMo0kLdzHFxCDKn2VYZWB4VvlT1P6efWlZgYTYh9Xkmn1SIzLdV9J5g0lOfzxR
	SE8cdlv/MVtNx4sX1WhsxWqIw9qWHNMCS3uHG9DUKtUAyo4xKLqTrdDfEINuUf9i
	48Plbe2rc6Ly2G3Z3hs0olOn9cJZeXJAvv+qumItGXA8kixES0gI5uzTefL9ZjMi
	J/5g9HRhH7dVKCeChwtX/Zrxf3z9wgmlybovNvH9U19iKk/ie+C5ytfPLcMAYqFg
	oAiRTw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er29ut9ym-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 08:08:27 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-36bc54005a7so949561a91.0
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 01:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781251707; x=1781856507; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DWYvrVR9u8QpN8NdHDBscoTKQgzIdztsQdgF9fhW5bQ=;
        b=PEwfX3rNpfV1lT95o+X1gpNQysZ6nToGgN7teSUVgR2f/iwoaZMLSK7QfNKGk6ScAd
         qPnDDlUsrhTRbEwNj9BEJ5mRQ6Y/FeTY9x8HyfGn4qINuJZ+5iTuArUwtsawjf34dDXb
         8c5MAGQL0OHbWCP+RKB5pDFFA7T2uBMKqpocMY2076V4RO+vDCWuv5GU5HYfRQijiydj
         yJ+s+tp8hv4pRdL/rJHmAjdDkugn6nPr8IMvEB/aASL6N0GartUf3LcbqOG0lGYTBga3
         NH37x94YGpOCFlQ/txhqeAN7W4mNWR8eJa/7j5yAqcjB6sYFPjJX4Rv912Hf2K6eqMi0
         yZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781251707; x=1781856507;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DWYvrVR9u8QpN8NdHDBscoTKQgzIdztsQdgF9fhW5bQ=;
        b=EHJKhyklPB5xbyNPj++y+lMmzvv5xb0K2ZOqhuzkPQu/kfF9k1VGbfKCD/f4EO0yq6
         MTVVFJ9PjcJzzOPAUQgjBZbq809cHGpjpQYB5G79cQer8JHgExzJjN17daAwVF5zYH/w
         WaXsG4/8ST5sCpzMiD/JbxxQNBMnD/pj3cwwhdWA5l1BleeXKpJqtB1XZrUtea0Vbqiw
         f9XIDDVPdtPFzrLqS/E2yoIw8uM+jwtyd6eTrXXd6zje4eI47Yc8LaUoMdGPLRsum/fa
         z3t0JAjlXq/1QNiHoTFtPlrlEWSKw/no9y5pcE54Ue9m72xU90H9I7PxKgTdLcvsv3Lo
         zX1g==
X-Forwarded-Encrypted: i=1; AFNElJ/AiIa16jmWLhoOkYdHbY3T0R2zrL0Dh33R/F1jJgj/4cJUTdKkB0L/Noi5eFPaIgPo5BHuYMug4Z0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwyyZD2ICRxiZsdAPBvWsRij5GJPZTe2FIMAdXeYfOQVCNSxjN+
	Do/kSrKK1Bb5UrXfaAq1qVwrEJs+BVQ51LWBpYTWm5+9EQPkQdBe4e9RUvPR0xqyrlaSq80DdA5
	Sqc7VK1JRq1/1/+lpQyf/HwCOEIXZ5xiuht8iMMh7c/Q98WMJlZXHlSNrWh5lIII+fAUHLREjvX
	dk
X-Gm-Gg: Acq92OGxWPqejz8pMJ05w74KnImFtkq+mioT+VyEjIY9HVJcBhh7ZeOEZjRiKUs5Wls
	m/5Z1m+kO28m7cvWQWtu60bzRT+nWyB9dLtcuT1teopnOyadK8pkOs7FbnfTolAHPNbr9KTxydM
	GUMwqqrKD3Ltol4KDJX35vY3mz/Mp0PuSDm9c2PwPjiY4ATBQ8ekREfoR7Ue6tTbJ/KQOKGSVz2
	pNfw/fJQljTjrWsslkyDhZ0uoGPW9pjv3ssbggo3EfCToBES7yaClxU5JHwbqseO3tAGCXRCVuC
	samn3hghglHRpfW/sBBj/LVgVpiadLBdU18YwT7cgXTAKrYoyfcGB2E9OrZ9bW5U06JV+0FRj1r
	SZqrLTiXc9SZnzhSNLRYBP2YR1eN9nhzQEWK0OLr6p/7I+Y/3i3h1Q3g4M/6Gj6w=
X-Received: by 2002:a17:90b:2c84:b0:36d:7a76:827b with SMTP id 98e67ed59e1d1-37a038e1996mr1933139a91.14.1781251706675;
        Fri, 12 Jun 2026 01:08:26 -0700 (PDT)
X-Received: by 2002:a17:90b:2c84:b0:36d:7a76:827b with SMTP id 98e67ed59e1d1-37a038e1996mr1933110a91.14.1781251706192;
        Fri, 12 Jun 2026 01:08:26 -0700 (PDT)
Received: from [192.168.1.8] ([122.164.81.0])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37a1f07bbfdsm1578146a91.5.2026.06.12.01.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 01:08:25 -0700 (PDT)
Message-ID: <cb1c557b-c411-4102-ab1f-38fec91d7677@oss.qualcomm.com>
Date: Fri, 12 Jun 2026 13:38:20 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add support for the QMP PCIe PHYs in Qualcomm IPQ9650
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <aiqYtowP2DQt7Jw0@vaman>
 <8a0e9314-0c97-48c8-be95-986c7e6fe641@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <8a0e9314-0c97-48c8-be95-986c7e6fe641@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA3MiBTYWx0ZWRfX5JVr0IpS5c4v
 QD5bGiWVt80Wl5ULI7547JCPyEwRlpdHTgv4bqFsYWKWrQ1gi1BZ7a/PxLFoOswmraf4l+4vafN
 ZmWn5u66lMIngEeYCOy1f2vyDEPHXWQ=
X-Proofpoint-GUID: q0GU8uuSoNRcRdyTFUMNLu5_BSyQgHD5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA3MiBTYWx0ZWRfXzD2kZDcE94XX
 AfFCivMYD6YKQtvnCYktcxEwJ45ZwHHRW3MpIk5otYBw6S/0ESCUVk+uwCERtSCGQs9L72rPkzb
 bN8Cb5NlJvhHa50b9rdhjiZr7B0BtKm72XI0gIfXh5XPF0DHlcuM3Y+VLm7NOHDR4JCajpDEfU6
 k3hGQ0nATZMKhl88b6wSKFd3J47rb32Gh7MmZP47VOauosp6mtHEyrXreY9J3hQHPD24IuA2QNT
 d6fqJEelsx2pR30ZEdXBkfrqB8aZ54pkxFyP0STZU3pB3MGRh1bRMVw5CZ19ArwXYFZwOCP2Aw0
 NEaJgqEFC7qE3cgNoUFJ1z/nCr134K8ur0W03ot93QyV80MrGCn0gOQeMx3KSuuJMxxp7xvmb2w
 pvNfv3HsjKLKaqgu+H4K2S48ZSzCuy2vuOICbL9MzaQdC9WPMxyIzUWANm1+3+dgRUnKT59+GQt
 N2ixeG6sISA7BSoSn3A==
X-Authority-Analysis: v=2.4 cv=DppmPm/+ c=1 sm=1 tr=0 ts=6a2bbe7b cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=DVNErGSwdtF8OHn2hLoakQ==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=mUgSyTONyoZcvpXPCScA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: q0GU8uuSoNRcRdyTFUMNLu5_BSyQgHD5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_010828_941082_DB726347 
X-CRM114-Status: GOOD (  11.82  )
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

Ck9uIDYvMTEvMjAyNiA5OjUyIFBNLCBLYXRoaXJhdmFuIFRoaXJ1bW9vcnRoeSB3cm90ZToKPgo+
IE9uIDYvMTEvMjAyNiA0OjQ1IFBNLCBWaW5vZCBLb3VsIHdyb3RlOgo+PiBPbiAwMi0wNi0yNiwg
MTQ6NDAsIEthdGhpcmF2YW4gVGhpcnVtb29ydGh5IHdyb3RlOgo+Pj4gUXVhbGNvbW0ncyBJUFE5
NjUwIFNvQyBoYXMgMyBHZW4zIGR1YWwgbGFuZSBhbmQgMiBHZW4zIHNpbmdsZSBsYW5lCj4+PiBj
b250cm9sbGVycyB3aXRoIHRoZSBRTVAgUEhZcy4gVW5saWtlIHRoZSBQSFlzIGluIHRoZSBvdGhl
ciBJUFEgU29DLAo+Pj4gcmVmZ2VuIHN1cHBseSBpcyBuZWVkZWQgdG8gYnJpbmd1cCB0aGUgUEhZ
cy4gQm90aCBzaW5nbGUgYW5kIGR1YWwgbGFuZQo+Pj4gc2hhcmVzIHRoZSBzYW1lIEhXIGluaXQg
c2VxdWVuY2UuIFNvIHJldXNlIHRoZSB0YWJsZXMuCj4+Pgo+Pj4gRG9jdW1lbnQgdGhlIGNvbXBh
dGlibGUgYWxvbmcgd2l0aCByZWZnZW4gc3VwcGx5IGFuZCBhZGQgdGhlIHBoeSBkcml2ZXIKPj4+
IHN1cHBvcnQgZm9yIGl0Lgo+PiBQbGVhc2UgcmViYXNlIHRoaXMgb24gcGh5LW5leHQgdG9tb3Jy
b3cuIEl0IGRvZXMgbm90IGFwcGx5IGZvciBtZSBkdWUgdG8KPj4gY2hhbmdlcyBhcHBsaWVkIGVh
bGllciB0b2RheQo+Cj4gVGhlcmUgaXMgYSBkaXNjdXNzaW9uwqBvcGVuIGFib3V0IHRoZSBzdXBw
bGllc1sxXS4gT25jZSB0aGF0IGlzIAo+IGNsYXJpZmllZCwgbGV0IG1lIHJlIHNwaW4uIFNvIHdl
IGNhbiB0YWtlIHVwIHRoaXMgc2VyaWVzIGZvciB2Ny4zIG9uY2UgCj4gdGhhdCBkaXNjdXNzaW9u
IGlzIGNsb3NlZC4KPgo+IFsxXSAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0t
bXNtL2FpcVl0b3dQMkRRdDdKdzBAdmFtYW4vVC8jbTM3YTU3MWZhYzBjNzdmZDAwZjYzNzlhZDlh
MjQxNGI2MDQzMTgyMGIgCj4KCkRpc2N1c3Npb24gaXMgY29uY2x1ZGVkIGFuZCBJIGhhdmUgc2Vu
dCB0aGUgVjJbMV0gb24gdG9wIG9mIHBoeS1uZXh0IAooMmFjZTJlOTQ5OTc5ICgicGh5OiByb2Nr
Y2hpcDogaW5uby11c2IyOiBBZGQgbWlzc2luZyBjbGtvdXRfY3RsX3BoeSAKa2VybmVsZG9jIikp
LiBQbGVhc2UgdGFrZSBhIGxvb2sgYXQgaXQuCgpbMV0gCmh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LWFybS1tc20vMjAyNjA2MTItaXBxOTY1MF9wY2llX3BoeS12Mi0wLWI5MzhjYzJmYzI2
N0BxdGkucXVhbGNvbW0uY29tLyN0CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
