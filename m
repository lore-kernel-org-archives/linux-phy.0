Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49744CAC581
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 12:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1slXjO69oIwi/ZBmg4FCMuxGTKjqDCz0fJSGgDEdOM=; b=155JE3oMsTSrYd
	AkJKAtnwVdq6scixeSKV9RU4LP87fvqCEKxNo3iUKSzLJv6tsX2tktn1srr+zdOTG+KEHWgUo9EHi
	3pD27RNJGIuiZl+hbgFZaXZ3aeWmvVO4Yc5IehzQDrgcMXFlulHAUBC7MW+qm7yukhyS1/9nD2g8o
	HCiewznbc1PYrKaXijl4ZhbWfKLV4AEriAYLW7NCUR3C1LkLLF410UZLflXUQo8JoYIUCLJ4lDwZs
	J6xEoP4gDCKU4JoJPr3gJ8ZGz2I8nhNebRtRe7oKBxUerXgx20A3nmUyPyDk9TDqi4U3WSQ0H1wJA
	Ku0mPPFvA3/NnYSz7aTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbFI-0000000H6Yg-3p3c;
	Mon, 08 Sep 2025 12:45:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvaEN-0000000Gipf-1LO6
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 11:40:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58890TBl013523
	for <linux-phy@lists.infradead.org>; Mon, 8 Sep 2025 11:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NnEbO7ArMxQ89jgAEQwVkzyZoAUuZFaKn25X0Rq6OME=; b=bnVhBCf3W5YshFsc
	JTPN2wRztoaTNpoO2lYqtUE5Q/kBi8X8bL4Jfi1y5JNY84n93nx/6hOUiF6tHvEg
	eEdmDS/A5DKloz5qnPXVgew7SCHnTdpEFshGM3ctH0aJ8RGz1vmvgoWyM6660R47
	+O2/mGJYtmnzNFroX7p9WXwG3P3jVQIxfZgi2qvn/GiihOWvSztZvyI9tv0bUlOU
	/8pKuNGJLnhszzG3Z0D6MD2x2S2YlIOpFq1RHPxEr2rIdBn7Ma63/zftjyxESLs/
	1ngsUbu8nMb98pPZOfmGonsKZzWxQfirL/nUD904xBg2mi+zt/way+9ct9ZoiTd2
	ZBvVWA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfvb7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 11:40:18 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-721c6ffab9cso9439316d6.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 04:40:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757331610; x=1757936410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NnEbO7ArMxQ89jgAEQwVkzyZoAUuZFaKn25X0Rq6OME=;
        b=oGDyk0VuhmzuyBmIHNDn636xkbGdxQgUD/droYPXqMAohnSlnfMjxdyVw/HrstWxqx
         nPAZpgl+WNfBfMJftEchs421MlSYVjSZqB0k1Ja6tkiS91uowbTqF9Kwba/Ap1XRa96i
         nWKX08fWmuH0xlPZrYyj5PLM3YGsAPHjcUM5XXGE28uaxLTAJzbrWIgj1cDgvBRrPSHv
         hl0n3edjEnqs5oAaR70c0dq8pyFny4QOHcV3Hrn/o3ufJfdDfeybwFmlDYXICiVKF4xT
         xSwGB2Q9RgaFP7hBIKvmZWM7cTNP3QxalaOITzrO2K9/x2irezOsWnoOunJeWSvwqe8S
         y3qA==
X-Forwarded-Encrypted: i=1; AJvYcCUilHenEqY0KZ+XVeCLfW0O5IG5QcFvalAtFxYcLYytUe9AAl7XBKegGuZZpc218dmARpsPUjSjaKM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNzXxmiYw+Q7VKrtd8l68mz5PJiKk1oLLLUcFoarjprg+uiEle
	sMSOoMGOjTFgWnjuTbMOWP+S6xewsEojTqLXjysOgKrdoHPDc/AfVS33iesa7vvJbpzjgm0u6jr
	Urk6FQSOJcjgslXFrAiE7HAktSeJx9cA8Pqmdxdw7xlg+LCNBZlnzs1Kh/ZfzlQmSWpRf
X-Gm-Gg: ASbGncv3nxeGXLaBwtkcSrDhJjPZmSNyaHXFlaf2HORsdsf8vgVNLyt1Nn7bWBwgh7V
	Iw/LzMssfMoqYH9y1+nXw1ld84CQRq41hf/J+WXqYheGBPtcgS/VUeH6GanpD4EXxj4fcUP2hHx
	jlvbYr5+dWh5g57zKzj7uFcLfg7pkCP1ZLCPh0gE3n9PBrdZ1HYpDlQ1asCGd+SytrB2m8SwcwZ
	egau9Q1G4ElUc85CkYzYdwO/ALYipGixcmWaGIS2plQ9ujyce6wpv0qDc4GyeKr27r7SIzdxOcr
	78laVz7F1+oINU/+K1y9PKf/9vnHql/XgEOWa/TsddxXRQvvvHJB9F8YKbImt5LZu3dY3+7+Jye
	pdYkY/Eji0eSHPVjYsnS6BQ==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr55841041cf.9.1757331610308;
        Mon, 08 Sep 2025 04:40:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxfpBCfjkE1QhZrW+7/NQDQGsgDEMhq3BgEaMgwoV6K03PfppLuh0RrNhfqqjSD1n65xJK2Q==
X-Received: by 2002:a05:622a:1355:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b5f85310efmr55840761cf.9.1757331609503;
        Mon, 08 Sep 2025 04:40:09 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046f888b95sm1229367066b.34.2025.09.08.04.40.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 04:40:08 -0700 (PDT)
Message-ID: <365b984c-a5e0-4fa3-a011-b897107e2b92@oss.qualcomm.com>
Date: Mon, 8 Sep 2025 13:40:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
 <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
X-Proofpoint-ORIG-GUID: c_RLfvDX68drmdcWaQX8rfHhPDLyoo9x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX9mTIJWLsCmRH
 HKOiWJK8/4WMVYiVc/VqeHVQGbiaVRtBQFL0b4EkAGTk5bb1TjZ7WHy5VmFiZDSD5JplWNkPfNm
 PIkW1jRhlHdzOshG/YScn8/Yu/dlG7WmNKwXtuDOQEEdjzyo2w4cqo4DJ2jJRGqt2bbPTdSifdI
 LgHZ5DR+DS6vzMKn/ErM4X1LArd2ru1vC3h1NFMwwIPciNPXi6qLXnAp7XzdodqZlks1abOgG6/
 NrfOxgwlzcxCqrFjs6DmGx0rGw+IiK7x7CGlOWuzpjiq7FaEBfmXhNrVLqdedzJWSgie3G5+TMj
 IbQDR6WIxFCY3fNMBvEBlmRrESF/6wTqme71whYmJjHn3tMlSHvfN3HMFB3SUsrTK1NnN1mOaGL
 seW86+aF
X-Proofpoint-GUID: c_RLfvDX68drmdcWaQX8rfHhPDLyoo9x
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68bec0a2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=0cVmaDdcn-jcdQdzUFEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_04,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_044019_385188_F4E9AACA 
X-CRM114-Status: GOOD (  17.54  )
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

T24gOS84LzI1IDExOjM5IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIE1vbiwgU2Vw
IDA4LCAyMDI1IGF0IDA5OjE2OjI5QU0gKzAyMDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+IE9u
IDkvNi8yNSAxMDo0MSBBTSwgSmVucyBHbGF0aGUgd3JvdGU6Cj4+PiBPbiAyMS4wOC4yNSAxNTo1
MywgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+Pj4gVGhlIFRoaW5rcGFkIFQxNHMgZW1iZWRzIGEg
dHJhbnNwYXJlbnQgNGxhbmVzIERQLT5IRE1JIHRyYW5zY2VpdmVyCj4+Pj4gY29ubmVjdGVkIHRv
IHRoZSB0aGlyZCBRTVAgQ29tYm8gUEhZIDQgbGFuZXMuCj4+Pj4KPj4+IFsuLi5dCj4+Pj4gwqAg
Li4uL2R0cy9xY29tL3gxZTc4MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0c2nCoMKgwqAgfCA0
NCArKysrKysrKysrKysrKysrKysrKysrCj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2Vy
dGlvbnMoKykKPj4+IFsuLi5dCj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS94MWU3ODEwMC1sZW5vdm8tdGhpbmtwYWQtdDE0cy5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL3gxZTc4MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0c2kKPj4+PiBpbmRleCA0
Y2Y2MWMyYTM0ZTMxMjMzYjFhZGM5MzMzMmJjYWJlZjIyZGUzZjg2Li41YjYyYjhjMzEyMzYzMzM2
MGYyNDllM2VjZGM4ZWEyM2Y0NGU4ZTA5IDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS94MWU3ODEwMC1sZW5vdm8tdGhpbmtwYWQtdDE0cy5kdHNpCj4+Pj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3gxZTc4MTAwLWxlbm92by10aGlua3BhZC10MTRzLmR0
c2kKPj4+IFsuLi5dCj4+Pj4gKyZtZHNzX2RwMiB7Cj4+Pj4gK8KgwqDCoCBzdGF0dXMgPSAib2th
eSI7Cj4+Pj4gK307Cj4+Pj4gKwo+Pj4+ICsmbWRzc19kcDJfb3V0IHsKPj4+PiArwqDCoMKgIGRh
dGEtbGFuZXMgPSA8MCAxIDIgMz47Cj4+Pj4gK307Cj4+Pj4gKwo+Pj4KPj4+IEhpIE5laWwsCj4+
Pgo+Pj4gc2hvdWxkbid0IG1kc3NfZHAyX291dCBhbHNvIGhhdmUgdGhlIGxpbmstZnJlcXVlbmNp
ZXMgcHJvcGVydHk/Cj4+Pgo+Pj4gK8KgIMKgIGxpbmstZnJlcXVlbmNpZXMgPSAvYml0cy8gNjQg
PDE2MjAwMDAwMDAgMjcwMDAwMDAwMCA1NDAwMDAwMDAwIDgxMDAwMDAwMDA+Owo+Pj4KPj4+IE9y
IGlzIGl0IHNvbWV0aGluZyB0aGUgYnJpZGdlIGFscmVhZHkgbmVnb3RpYXRlcz8KPj4KPj4gTm8s
IGl0IHNlZW1zIGxpa2Ugb3VyIGRyaXZlciBmYWxscyBiYWNrIHRvIEhCUjIgKDU0eHgpIGV2ZXIg
c2luY2UgdGhlCj4+IGRyaXZlciBoYXMgYmVlbiBtYWRlIGF3YXJlIG9mIHRoaXMgcHJvcGVydHk6
Cj4+Cj4+IGNvbW1pdCAzODE1MThhMTY3N2M0OTc0MmE4NWY1MWU4ZjBlODlmNGI5YjdkMjk3Cj4+
IEF1dGhvcjogS3VvZ2VlIEhzaWVoIDxxdWljX2toc2llaEBxdWljaW5jLmNvbT4KPj4gRGF0ZTog
ICBUdWUgRGVjIDI3IDA5OjQ1OjAyIDIwMjIgLTA4MDAKPj4KPj4gICAgIGRybS9tc20vZHA6IEFk
ZCBjYXBhYmlsaXR5IHRvIHBhcnNlciBhbmQgcmV0cmlldmUgbWF4IERQIGxpbmsgc3VwcG9ydGVk
IHJhdGUgZnJvbSBsaW5rLWZyZXF1ZW5jaWVzIHByb3BlcnR5IG9mIGRwX291dCBlbmRwb2ludAo+
Pgo+PiBEbWl0cnksIGlzIHRoZXJlIGFueSByZWFzb24gbm90IHRvIGFsbG93IEhCUjMgYnkgZGVm
YXVsdD8gSXMgb3VyIGRwCj4+IGNvbnRyb2xsZXIvZHJpdmVyIG5vdCBzbWFydCBlbm91Z2ggbm90
IHRvIGFkdmVydGlzZSByYXRlcyBpdCBjYW4ndAo+PiBzdXBwb3J0LCBkdXJpbmcgbmVnb3RpYXRp
b24/Cj4gCj4gSSBkb24ndCByZW1lbWJlciB0aGUgZXhhY3QgZGV0YWlscy4gSWYgSSByZW1tYmVy
IGNvcnJlY3RseSwgdGhlcmUgd2VyZQo+IGNhc2VzIHdoZXJlIHVzaW5nIEhCUjMgcmVzdWx0ZWQg
aW4gYSBsZXNzIHN0YWJsZSBzaWduYWwgdGhhbiBmYWxsaW5nCj4gYmFjayB0byBIQlIyLgoKQSB2
ZXJ5IGVhcmx5IHJldmlzaW9uIG9mIHRoYXQgc2VyaWVzIGhhcyBhIGNvbW1pdCBtZXNzYWdlIHRo
YXQgcmVhZHM6CgoiIiIKU2luY2UgaXQgaXMgbm90IGV2ZXJ5IHBsYXRmb3JtIHN1cHBvcnRzIEhC
UjMgbGluayByYXRlLCB0aGlzIHBhdGNoCmxpbWl0IHRoZSBEUCBsaW5rIHJhdGUgYXQgbWF4IGxp
bmsgcmF0ZSBpZiBpdCBpcyBzcGVjaWZpZWQgYXQgRFRTIGZpbGUuCk90aGVyd2lzZSwgdGhlIG1h
eCBkcCBsaW5rIHJhdGUgd2lsbCBiZSBsaW1pdGVkIGF0IEhCUjIgYXMgYmVmb3JlLgoiIiIKCktv
bnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
