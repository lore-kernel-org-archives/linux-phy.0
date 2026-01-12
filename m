Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67663C9EC63
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 10:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQ08zJINc4Qg4DDk1u24Jhf7DnOKH8d135tLGp+XE9w=; b=FzXfp6W3pLwQ9T
	BGs4WXV905aI+AKlOtNtJ8cuNfF8673yPhJlbyoB/DVjfuVUwJp+7k99k340o5Z9J/MCJaKNs+RtS
	CzyIYCj82xsLt96OL4We+rPRCHtOD2dA/ErqT4dTqAE1LnnwzTQVoZ7hvrMATF2roHf5u24O/LG56
	mul9PCHBKbJ6ahupXfCjRlGA1B0CPjxMSbC68d3kSM2Qjq3Yc+5sWBiDMKOjhtH4bNWf1hPznyrki
	pgoxyg/D4Yq2PflIO7atz0+O2wiQSZgCGhtSDL99qP8YF7FAXrRLl65SNr5ItSpPZkOa31GTyDTVy
	VV1N9I+uvCU0Y+jprArA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFBS-00000005BCe-0bsd;
	Mon, 12 Jan 2026 10:30:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFBP-00000005BBM-3D3n
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 10:30:00 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C8rtZT675909
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 10:29:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bxMVnP7klhF7zuicFFjZTjp3gwEJfISaysxyhwsH6zU=; b=mKcniPiCqKedrd1a
	ZUavt6rBtOP9PeRqG2qVS49oIRhL6AIthCiVoVjr8f2DbNgTRdVTW0+4NdwzwiTz
	mFnrtTo4ozC736ydacctG+gIxMusfsYN3gmym7B6h/Mv4BJJNTfl7NMK72cPBA/D
	lIWXR/U47x8G8F/Jy5k9RlNIJdrByd6jRvT15zXcKVSq1TYUcRNzMqjSkjNAFLho
	1qQYnEuDtZw7atGKh9tu+dUdvwVqYvL1z9/JK8LvjzbMQ8FytlMWyR75dfZWknmj
	2SULBr9nOtM/PrKw16HaGYI6Gw6oqExCw5lS46DsF9OWAeNPF/wQwaS74TFB5AGP
	5ZKobQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmwur8a2y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 10:29:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b222111167so122518185a.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 02:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768213798; x=1768818598; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bxMVnP7klhF7zuicFFjZTjp3gwEJfISaysxyhwsH6zU=;
        b=guyNbakxT+itzuBD7mGAICqK3xWDHsx3jKVShmkGBuSOvlB7B5t6Q+Ojo7oUG/CoVx
         s19m8uWeUoI5TUjOik/a5L9xA5WRk2ePor/Yzmef56lhPwC6txrX6H17tx+cvgerZnXs
         ZIj0oidi1/HzKuJF86x75WA7i+wmu73mMEHxz8EiFINjLnEyjBCvIQXBntSlSKeh3HYX
         p009s3AsFC7LSJXn2Fp28FIaRZgZwKGBH9uiOL739fGqA9s/gyi8z3sts7pl8RZeJki8
         f/bH8BXUmOITSKrgNzyl3h9jbmJKfNtl2olegumfFQ4QpO6+3V4HIkc1mAdvUF/gtnLS
         UzNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768213798; x=1768818598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bxMVnP7klhF7zuicFFjZTjp3gwEJfISaysxyhwsH6zU=;
        b=RXDzi0Nd+xp3O0bo4O8vp0CeSFGYAMroQNBsZQ3jPhe/cBrql2QRmtIml87Z9Ytzfk
         qjN+9vJv01+cVyKWTn2hHO/rvPD5KhALF6kwZbUx/NjZD5Y/hMJTfRXCCoIa3OOpjKUk
         Mamx/m8w40eZtf/olwdN6YZ2iku8olCjt2MVbOkxeB2kxEwDG3xRorfUjdpHklbK83e2
         01owCxRWKzdJoY9J5BNFjJx/I5cZOyPXVirMDzTzQE6uhUHIEk4kT9MvmrPQPyn0k8ur
         moEm1ZiSUX6TbjHtyczGfDtIzoYNM6sY2jFYDgolAIWfmUrpTN4TqIL6xrmvBXy/hOXY
         xzIw==
X-Forwarded-Encrypted: i=1; AJvYcCUjBjUHo5w3bIA7mAcg1RYpBUOn4o+TRxDGwQJJ2n3WqCfvVlb0zkAqVVCUnz2uUmgSRDp4s9tSqF4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvqRAEkZVmsOGd6iJA0zJz2XkaiHMNKESeDtyll7rD2bXnzQRF
	pgkwwd6+6BJvk1HiLYNnwSzRwP8UzrfUXn0h91fDmTbaxqitCCJDcLsDI9exNKPuLfcuqImwFn+
	3yedyk0UJMhrMqZ3hXpAYa6nSt0J3BY5hqLUroghirAurhz0ElU2afnCWJhp2mcYEtL+p
X-Gm-Gg: AY/fxX4ZZPCM4opecaYGet9RxSZx0GhuF76sscgPpqlYkIwQDVMN3WGenV0Wp498DQW
	RcMRSE3m8ISQNN/2HEte9pGUrTZyjNH4kurmiimPkUxkGIqFAIDLVsm6eIF3X2h1/G9pJfS5N4U
	HczcUUnDzLp4Rep2lPmTxY88h5Nu+MxNjFBn/T/RCRV/WdmDDCc0CgnqBwSgT3ZCKa/QVJyNXuF
	qaq5uJZI/v4noBfF/tM+X4xrc9ANasVbAfqh8LfwNLLOXhYyIK1hare8pX5N1irgm/CueQQCogL
	Dc7ThZWj0scY69h3G8+C153Dr233T53V3BMheadsFzbSw2nHEyUGNT+8tdVwoTxMVpZZ9584Twj
	wceLrkikZQkM7cr1dw6v1olRhxOs7QWVm1GcvYs+Xy7cbNhUGObJvpF07FKl0LDWN7HU=
X-Received: by 2002:a05:620a:4150:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c3893dc319mr1707034685a.7.1768213798011;
        Mon, 12 Jan 2026 02:29:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYkinKvuUhGe4V4yaanPySErY45GVSf7HQse7lAC+h88C4FKeCk2VIkqMj67TZjna5NhPTaQ==
X-Received: by 2002:a05:620a:4150:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c3893dc319mr1707031185a.7.1768213797514;
        Mon, 12 Jan 2026 02:29:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86fee09163sm593221066b.26.2026.01.12.02.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 02:29:56 -0800 (PST)
Message-ID: <ccbaff51-d7fa-4b22-8d4e-02bea5d8a529@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 11:29:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
To: Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
 <2486dc4b-71f3-4cd9-8139-b397407d7e4d@linaro.org>
 <543d9e55-c858-40f9-8785-c9f636850120@linaro.org>
 <DFMH8W40TCJ0.XCTHNRJFJE4T@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DFMH8W40TCJ0.XCTHNRJFJE4T@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA4MiBTYWx0ZWRfX/K1RCYzqoJeE
 AX3xyu0Rwb/vpsqE0FC0mTZ8LIigZ4EN1A/eYAE5Pdh89uj65ZV9dyGXFR+if84iv07uDR+7Yrw
 3MSTZY6YDVEC5uhXJpSlQpD4B74jZLu5VbWtug/vEkFlWw913+xITN7OGyHqti32JsVCiaCXK6/
 VGswKkMsZIZOef4UzgSjRVpqFA0UAmDVIxBz4V8USwOo4EywysJlnWnIpMY0Oy6X+VnjJGlwyQO
 TiPgwkInNgjgd3p6WST3xuF9fbP7N+wXKv076tiQ18Gn7MHA7I2OFmyRonSfqI6l1RQ+Pg1FfER
 dlOSuwa54q7lQgRuqAj8F/dmHc6/5mt9TITrYPz2Cr8s4hZHJCjOHa7LVJ/AnoCe/e1h4OKsf0f
 PGKr0ctY3/HEjAtTDKboAEx6w++RiwVgFCtCCOmCa1cJltvE4sOyu4pvGWZEoZrKzOr9BoIebun
 Wkmx45NmpKV43XL2aCQ==
X-Authority-Analysis: v=2.4 cv=HrJ72kTS c=1 sm=1 tr=0 ts=6964cd27 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=7X8Kw1P6343en4nalX4A:9
 a=ZPF2tL_FRqzNxS05:21 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: PK2WcXj62d5437V5ki_NmeE_M2Tv9XyX
X-Proofpoint-ORIG-GUID: PK2WcXj62d5437V5ki_NmeE_M2Tv9XyX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_022959_806321_964F7AEA 
X-CRM114-Status: GOOD (  21.85  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMS8xMi8yNiA5OjQ1IEFNLCBMdWNhIFdlaXNzIHdyb3RlOgo+IEhpIE5laWwsCj4gCj4gT24g
TW9uIEphbiAxMiwgMjAyNiBhdCA5OjI2IEFNIENFVCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+
IE9uIDEvNy8yNiAxNDo1MywgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+PiBP
biAxLzcvMjYgMDk6MDUsIEx1Y2EgV2Vpc3Mgd3JvdGU6Cj4+Pj4gQWRkIHRoZSBub2RlcyBmb3Ig
dGhlIFVGUyBQSFkgYW5kIFVGUyBob3N0IGNvbnRyb2xsZXIsIGFsb25nIHdpdGggdGhlCj4+Pj4g
SUNFIHVzZWQgZm9yIFVGUy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgV2Vpc3MgPGx1
Y2Eud2Vpc3NAZmFpcnBob25lLmNvbT4KPj4+PiAtLS0KPj4+PiDCoCBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vbWlsb3MuZHRzaSB8IDEyNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKy0KPj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTI0IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21p
bG9zLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vbWlsb3MuZHRzaQo+Pj4+IGluZGV4
IGUxYTUxZDQzOTQzZi4uMGY2OWRlYWJiNjBjIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9taWxvcy5kdHNpCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL21pbG9zLmR0c2kKPj4+PiBAQCAtNzk3LDkgKzc5Nyw5IEBAIGdjYzogY2xvY2stY29udHJv
bGxlckAxMDAwMDAgewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
JnNsZWVwX2Nsaz4sCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDww
PiwgLyogcGNpZV8wX3BpcGVfY2xrICovCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDwwPiwgLyogcGNpZV8xX3BpcGVfY2xrICovCj4+Pj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDwwPiwgLyogdWZzX3BoeV9yeF9zeW1ib2xfMF9jbGsgKi8KPj4+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDA+LCAvKiB1ZnNfcGh5X3J4X3N5
bWJvbF8xX2NsayAqLwo+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MD4s
IC8qIHVmc19waHlfdHhfc3ltYm9sXzBfY2xrICovCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmdWZzX21lbV9waHkgMD4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmdWZzX21lbV9waHkgMT4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmdWZzX21lbV9waHkgMj4sCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDwwPjsgLyogdXNiM19waHlfd3JhcHBlcl9nY2NfdXNiMzBfcGlwZV9j
bGsgKi8KPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjY2xvY2stY2VsbHMgPSA8MT47
Cj4+Pj4gQEAgLTExNTEsNiArMTE1MSwxMjcgQEAgYWdncmUyX25vYzogaW50ZXJjb25uZWN0QDE3
MDAwMDAgewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHFjb20sYmNtLXZvdGVycyA9
IDwmYXBwc19iY21fdm90ZXI+Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCB1ZnNfbWVtX3BoeTogcGh5QDFkODAwMDAgewo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicWNvbSxtaWxvcy1xbXAtdWZzLXBoeSI7Cj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweDAxZDgwMDAwIDB4MCAweDIwMDA+Owo+
Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JnJwbWhjYyBSUE1I
X0NYT19DTEs+LAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBH
Q0NfVUZTX1BIWV9QSFlfQVVYX0NMSz4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDwmdGNzciBUQ1NSX1VGU19DTEtSRUZfRU4+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNsb2NrLW5hbWVzID0gInJlZiIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAicmVmX2F1eCIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicXJlZiI7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJlc2V0cyA9IDwmdWZzX21lbV9oYyAwPjsKPj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXNldC1uYW1lcyA9ICJ1ZnNwaHkiOwo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwb3dlci1kb21haW5zID0gPCZnY2MgVUZTX01FTV9QSFlfR0RTQz47Cj4+Pj4g
Kwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsKPj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcGh5LWNlbGxzID0gPDA+Owo+Pj4+ICsKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4+ICvCoMKgwqDCoMKg
wqDCoCB9Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqAgdWZzX21lbV9oYzogdWZzaGNAMWQ4
NDAwMCB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLG1p
bG9zLXVmc2hjIiwgInFjb20sdWZzaGMiLCAiamVkZWMsdWZzLTIuMCI7Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweDAxZDg0MDAwIDB4MCAweDMwMDA+Owo+Pj4+ICsK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMjY1IElS
UV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNsb2NrcyA9IDwmZ2NjIEdDQ19VRlNfUEhZX0FYSV9DTEs+LAo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfQUdHUkVfVUZTX1BIWV9BWElfQ0xLPiwKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfQUhC
X0NMSz4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19V
RlNfUEhZX1VOSVBST19DT1JFX0NMSz4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDwmdGNzciBUQ1NSX1VGU19QQURfQ0xLUkVGX0VOPiwKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfVFhfU1lNQk9MXzBfQ0xLPiwK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlf
UlhfU1lNQk9MXzBfQ0xLPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZnY2MgR0NDX1VGU19QSFlfUlhfU1lNQk9MXzFfQ0xLPjsKPj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjb3JlX2NsayIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiYnVzX2FnZ3JfY2xrIiwKPj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJpZmFjZV9jbGsiLAo+Pj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNvcmVfY2xrX3VuaXBybyIs
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicmVmX2Ns
ayIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAidHhf
bGFuZTBfc3luY19jbGsiLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgInJ4X2xhbmUwX3N5bmNfY2xrIiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyeF9sYW5lMV9zeW5jX2NsayI7Cj4+Pj4gKwo+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwmZ2NjIEdDQ19VRlNfUEhZX0JDUj47Cj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXQtbmFtZXMgPSAicnN0IjsKPj4+PiArCj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJjb25uZWN0cyA9IDwmYWdncmUxX25vYyBN
QVNURVJfVUZTX01FTSBRQ09NX0lDQ19UQUdfQUxXQVlTCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJm1jX3ZpcnQgU0xBVkVfRUJJMSBRQ09NX0lDQ19UQUdf
QUxXQVlTPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZn
ZW1fbm9jIE1BU1RFUl9BUFBTU19QUk9DIFFDT01fSUNDX1RBR19BQ1RJVkVfT05MWQo+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZjbm9jX2NmZyBTTEFWRV9V
RlNfTUVNX0NGRyBRQ09NX0lDQ19UQUdfQUNUSVZFX09OTFk+Owo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGludGVyY29ubmVjdC1uYW1lcyA9ICJ1ZnMtZGRyIiwKPj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJjcHUtdWZzIjsKPj4+PiAr
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWlucyA9IDwmZ2NjIFVGU19Q
SFlfR0RTQz47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxdWlyZWQtb3BwcyA9IDwm
cnBtaHBkX29wcF9ub20+Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvcGVy
YXRpbmctcG9pbnRzLXYyID0gPCZ1ZnNfb3BwX3RhYmxlPjsKPj4+PiArCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaW9tbXVzID0gPCZhcHBzX3NtbXUgMHg2MCAwPjsKPj4+Cj4+PiBkbWEt
Y29oZXJlbnQgPwo+IAo+IAo+IEdpdmVuIHRoYXQgZG93bnN0cmVhbSB2b2xjYW5vLmR0c2kgaGFz
IGRtYS1jb2hlcmVudCBpbiB0aGUgdWZzaGNAMWQ4NDAwMAo+IG5vZGUsIGxvb2tzIGxpa2UgdGhp
cyBpcyBtaXNzaW5nIGluIG15IHBhdGNoLgoKU2VlbXMgdGhhdCB3YXkKCj4+Pgo+Pj4gYW5kIG5v
IE1DUSBzdXBwb3J0ID8KPiAKPiBOb3Qgc3VyZSwgSSBjb3VsZCBvbmx5IGZpbmQgb25lIHJlZmVy
ZW5jZSB0byBNQ1Egb24gY3JlYXRlcG9pbnQgZm9yCj4gbWlsb3MsIGJ1dCBnaXZlbiB0aGVyZSdz
IG5vIG1jcV9zcWQvbWNxX3ZzIHJlZyBkZWZpbmVkIGRvd25zdHJlYW0sIGFuZCBJCj4gY291bGRu
J3QgZmluZCBhbnl0aGluZyBmb3IgdGhlIHNhbWUgcmVnaXN0ZXIgdmFsdWVzIGluIHRoZSAuRkxB
VCBmaWxlLCBJCj4gZG9uJ3QgdGhpbmsgTWlsb3MgaGFzIE1DUT8gRmVlbCBmcmVlIHRvIHByb3Zl
IG1lIHdyb25nIHRob3VnaC4KPiAKPj4KPj4gU28sIHBlb3BsZSBqdXN0IGlnbm9yZSBteSBjb21t
ZW50ID8KPj4KPj4gTWlsb3MgaXMgYmFzZWQgb24gU004NTUwLCBzbyBpdCBzaG91bGQgaGF2ZSBk
bWEtY29oZXJlbnQsIGZvciB0aGUgTUNRCj4+IEkgaG9wZSB0aGV5IHVzZWQgdGhlIGZpeGVkIGFk
ZGVkIHRvIHRoZSBTTTg2NTAgVUZTIGNvbnRyb2xsZXIgZm9yIE1DUS4KPiAKPiBOb3Qgc3VyZSB3
aGF0IHRoaXMgc2hvdWxkIG1lYW4gcmVnYXJkaW5nIE1DUS4uLgoKVGhpcyBwbGF0Zm9ybSBkb2Vz
bid0IHN1cHBvcnQgTUNRCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
