Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47550C02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 15:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amvQBkGuJfzbBKgTfMCXf2UAhmTMVxIQ6GKYclnFG88=; b=sx32MqD29hkCla
	8pIUUuAtLV6sTY9LU+v/FhWR1Ot3KwN6zg3z3tR4BM7i7SBTBr31p3RvyTaPEynMm9xRmbQCYljKu
	UIFJZxG4DVRm4IuSVv2bCX+jia6rzodmThaYykbydpwIwBPYC2kz9R0RV/PLKW9fOIbq7yc+x6VTb
	DJxMj7ghPUNn4zNO3HXQa+DlvjQHrl6oS/NSgUHhAcGgMEW57OSJlCqJP9JxtyqkZ6qjoIId+8PDO
	gjfTG9wXc60P6eROTZoQF9YEsEU3HhWhEQ8wSwYVSfnvDPdj8Hx/PszjUErQqoHEbcnRuerc7QRyP
	+Ne6Zua13H8+9DAvu31A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thVb5-00000000Hgc-3c4H;
	Mon, 10 Feb 2025 15:21:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thVb2-00000000Hen-0ZbY
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 15:21:17 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A9NAQ3032157
	for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 15:21:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tO7wPo/I02c14+5eTLQbOjA0EIYJqhCT9oqQQzArqPs=; b=JGf83/odSH6MGTA8
	4zRHs8jNn5rBxD9EVsocoIohaMH8mUr0RafNRyq58WjMOnYIC5KEK04qxbB/R3TR
	ZEcqa8WSyuvoUv1cU7N0w5zf2SRkERBsOg5tr8bADSvx4XTwIkxv1hSs8xiCXCqW
	5CYMRxAoISY1u2oLESHjo7XJPQmX6fWEPBPqjms1/I9YXvTukKSzdmIftWDcAkCS
	VqQPdVniQZ85F78kjsX8PpT9fPispTtEtYes74Jx5VqKh4Bl/vXjRhtHUPBNVgBO
	aqCd20T8piqG4uSbAzKgB0d2GYnTKJBUN9w2tCDKYkBh3cZGw3GU11WCJM2sptco
	RayzOw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0escrdb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 15:21:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4719173db00so2135921cf.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 07:21:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739200873; x=1739805673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tO7wPo/I02c14+5eTLQbOjA0EIYJqhCT9oqQQzArqPs=;
        b=V/kDM4TDy3JjIMmwQf2PRimMk1LQ3jM9GeT7zMV5EodqBFIE9H5iOcyAPlhKsx0YMH
         kzKcDAtUC5eO3OkUUpBvk7bqM0hpVoUKb3uS5CaksvjdXb/8ndZK1SoWssGSgjmtp25F
         43pngIhTf7ePxQTsy2F7FcNY7brd6vBv5rKkEzBfh25gN6M8bDCpwg3DVhaIPC8OZLPM
         NopfTeLdQ2ooC5MObDyy3hEG38+Oq+GtJPwMYi2OHasQFpA2bBtuIFPX9p2+Bf06k6F5
         a9x1xGl4+HthQLb9L745xLR0nqyao+3JEmzZcLT8geQGlfg7/3I61sLmEIpYiC1HS5/G
         bH+g==
X-Forwarded-Encrypted: i=1; AJvYcCWj8IDbNuuSL7sTSIUG+EfdUAZnG2xs75eyUqSOEIwD+q1rRQFLcSHrGi60EBjF1Tj/5mvpHai7jDw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxC8kBm5bAjaA1zQ+B7Vw4z0ILjIEt+e26bIKSR5mI3UtSKyh8B
	jCRjG82/ECdrliQsq8ICQVB8v6Phctf/7p1m9f3dpgL2/Vw6+JNvhpCav5uxVhLOGfGDvDyza5x
	9yGwT0yqzKNywTnRa4Y+Q83Q+I48MB55j2UUuC11LVIHRVPLEMJoZQ5OF/nJy4yTP
X-Gm-Gg: ASbGncu9lKCVc6neBc5FA03NxjSVckY1DuL+Mcxl9K7ryfq6n9oJH9tiI1W3u+xs3Dh
	C+jIzDflzcT9Zr+HycXO7zNNdoyObMLHU6Q6Hcm8SORYRcHkFI6Si/O8UQ54FywEnE7eRvHUW5G
	Y2Qz0zcpeWureF9nL4BWUUaF3VhiIoer5evFan3iiM6b6L+2pQSmiVjhtP4KtnONE1m9/6TT2QS
	HLEp0pW9xherVNSj1n3YWGFwM5m4NQtMNb3WvLD+oEGCG/aVQrb4Ah7CY6ulKAydcV/sAg9PWP3
	5iN2IsTO0B6N+WsVsKk14e+2itF0QXDL+IdNynvtTyHFmbyLdP30TNmmTRg=
X-Received: by 2002:a05:622a:40b:b0:467:54b3:26f9 with SMTP id d75a77b69052e-471679dde6cmr74988401cf.5.1739200872668;
        Mon, 10 Feb 2025 07:21:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZngGYEjAE8ToZFxYP3tXUQoXXdJK35nMB53ISSgcq0zeqFsADPXApqeDQvtox7tyt3AgM1Q==
X-Received: by 2002:a05:622a:40b:b0:467:54b3:26f9 with SMTP id d75a77b69052e-471679dde6cmr74987981cf.5.1739200872212;
        Mon, 10 Feb 2025 07:21:12 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7d72ae04fsm21262166b.46.2025.02.10.07.21.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 07:21:11 -0800 (PST)
Message-ID: <f7ef484e-276f-4a49-b399-58a3201bea0a@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 16:21:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        neil.armstrong@linaro.org, quic_cang@quicinc.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
 <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
 <20250210101338.boziqlrxl2cei775@thinkpad>
 <e7381931-aa58-4fe9-b96c-4f4226e02371@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e7381931-aa58-4fe9-b96c-4f4226e02371@quicinc.com>
X-Proofpoint-GUID: TVTBm_LLZeSYuDo_PswhAim0sn1grATD
X-Proofpoint-ORIG-GUID: TVTBm_LLZeSYuDo_PswhAim0sn1grATD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_08,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502100127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_072116_357827_1009F059 
X-CRM114-Status: GOOD (  27.43  )
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

T24gMTAuMDIuMjAyNSAxMjowOCBQTSwgTml0aW4gUmF3YXQgd3JvdGU6Cj4gCj4gCj4gT24gMi8x
MC8yMDI1IDM6NDMgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPj4gKyBDYW4gKGZv
ciB0aGUgTUNRIHF1ZXJ5KQo+Pgo+PiBPbiBNb24sIEZlYiAxMCwgMjAyNSBhdCAxMDozOTowNEFN
ICswMTAwLCBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnIHdyb3RlOgo+Pj4gT24gMDkvMDIvMjAy
NSAxNjoyMSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+Pj4+IE9uIEZyaSwgRmViIDA3
LCAyMDI1IGF0IDExOjQ3OjEyUE0gKzAxMDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+Pj4+IE9u
IDEzLjAxLjIwMjUgMTA6NDYgUE0sIE1lbG9keSBPbHZlcmEgd3JvdGU6Cj4+Pj4+PiBBZGQgVUZT
IHN1cHBvcnQgZm9yIFNNODc1MCBTb0NzLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IE1l
bG9keSBPbHZlcmEgPHF1aWNfbW9sdmVyYUBxdWljaW5jLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4g
Tml0aW4gUmF3YXQgKDUpOgo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqAgZHQtYmluZGluZ3M6IHBoeTog
cWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeTogRG9jdW1lbnQgdGhlIFNNODc1MCBRTVAgVUZTIFBI
WQo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqAgcGh5OiBxY29tLXFtcC11ZnM6IEFkZCBQSFkgQ29uZmln
dXJhdGlvbiBzdXBwb3J0IGZvciBTTTg3NTAKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIGR0LWJpbmRp
bmdzOiB1ZnM6IHFjb206IERvY3VtZW50IHRoZSBTTTg3NTAgVUZTIENvbnRyb2xsZXIKPj4+Pj4+
IMKgwqDCoMKgwqDCoMKgIGFybTY0OiBkdHM6IHFjb206IHNtODc1MDogQWRkIFVGUyBub2RlcyBm
b3IgU004NzUwIFNvQwo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqAgYXJtNjQ6IGR0czogcWNvbTogc204
NzUwOiBBZGQgVUZTIG5vZGVzIGZvciBTTTg3NTAgUVJEIGFuZCBNVFAgYm9hcmRzCj4+Pj4+Cj4+
Pj4+IFlvdSBzdGlsbCBuZWVkIHRoZSBzYW1lIHdvcmthcm91bmQgODU1MC84NjUwIGhhdmUgaW4g
dGhlIFVGUyBkcml2ZXIKPj4+Pj4gKFVGU0hDRF9RVUlSS19CUk9LRU5fTFNEQlNfQ0FQKSBmb3Ig
aXQgdG8gd29yayByZWxpYWJseSwgb3IgYXQgbGVhc3QKPj4+Pj4gdGhhdCB3YXMgdGhlIGNhc2Ug
Zm9yIG1lIG9uIGEgODc1MCBRUkQuCj4+Pj4+Cj4+Pj4+IFBsZWFzZSBjaGVjayB3aGV0aGVyIHdl
IGNhbiBtYWtlIHRoYXQgcXVpcmsgYXBwbHkgYmFzZWQgb24gY3RybAo+Pj4+PiB2ZXJzaW9uIG9y
IHNvLCBzbyB0aGF0IHdlIGRvbid0IGhhdmUgdG8ga2VlcCBncm93aW5nIHRoZSBjb21wYXRpYmxl
Cj4+Pj4+IGxpc3QgaW4gdGhlIGRyaXZlci4KPj4+Pj4KPj4+Pgo+Pj4+IFRoYXQgd291bGQgYmUg
YSBiaXphcnJlLiBXaGVuIEkgYWRkZWQgdGhlIHF1aXJrLCBJIHdhcyB0b2xkIHRoYXQgaXQgd291
bGQgYWZmZWN0Cj4+Pj4gb25seSBTTTg1NTAgYW5kIFNNODY1MCAodGhpcyBvbmUgSSBsZWFybmVk
IGxhdGVyKS4gSSdtIG5vdCBhZ2FpbnN0IGFwcGx5aW5nIHRoZQo+Pj4+IHF1aXJrIGJhc2VkIG9u
IFVGU0hDIHZlcnNpb24gaWYgdGhlIGJ1ZyBpcyBjYXJyaWVkIGZvcndhcmQsIGJ1dCB0aGF0IHdv
dWxkIGJlIGFuCj4+Pj4gaW5kaWNhdGlvbiBvZiBiYWQgZGVzaWduLgo+Pj4KPj4+IElzbid0IDg3
NTAgY2FwYWJsZSBvZiB1c2luZyBNQ1Egbm93ID8gYmVjYXVzZSB0aGlzIGlzIHRoZSB3aG9sZSBp
c3N1ZSBiZWhpbmQKPj4+IHRoaXMgVUZTSENEX1FVSVJLX0JST0tFTl9MU0RCU19DQVAsIGl0J3Mg
c3VwcG9zZWQgdG8gdXNlIE1DUSBieSBkZWZhdWx0Li4uIGJ1dAo+Pj4gd2UgZG9uJ3QuCj4+Pgo+
Pj4gSXMgdGhlcmUgYW55IG5ld3MgYWJvdXQgdGhhdCA/IEl0J3MgYSBjbGVhciByZWdyZXNzaW9u
IGFnYWluc3QgZG93bnN0cmVhbSwgbm90Cj4+PiBoYXZpbmcgTUNRIG1ha2VzIHRoZSBVRlMgZHJp
dmVyIHN0cnVnZ2xlIHRvIHJlYWNoIGhpZ2ggYmFuZHdpZHRoIHdoZW4gdGhlIHN5c3RlbQo+Pj4g
aXMgYnVzeSBiZWNhdXNlIHdlIGNhbid0IHNwcmVhZCB0aGUgbG9hZCBvdmVyIGFsbCBDUFVzIGFu
ZCB3ZSBoYXZlIG9ubHkgc2luZ2xlCj4+PiBxdWV1ZSB0byBzdWJtaXQgcmVxdWVzdHMuCj4+Pgo+
Pgo+PiBUaGVyZSBhcmUgaGFyZHdhcmUgaXNzdWVzIG9uIFNNODU1MCBhbmQgU004NjUwKD8pIGZv
ciB0aGUgTUNRIGZlYXR1cmUuCj4+IEFwcGFyZW50bHksIFFjb20gY2FycmllcyB0aGUgd29ya2Fy
b3VuZCBpbiBkb3duc3RyZWFtLCBidXQgSSBnb3QgdGlyZWQgb2YKPj4gcHVzaGluZyB0aGVtIHRv
IHVwc3RyZWFtIHRoZSBmaXgoZXMpLgo+Pgo+PiBNYXliZSBDYW4gR3VvIGNhbiBzaGFyZSB3aGF0
IGlzIHRoZSBsYXRlc3QgdXBkYXRlIG9uIHRoaXMuCj4+Cj4+IC0gTWFuaQo+Pgo+IAo+IEhpIE1h
bmksCj4gCj4gSSBoYXZlIGFscmVhZHkgcmVwbGllZCB0byBrb25yYWQgbWFpbCBlYXJsaWVyIGlu
IHRoaXMgdGhyZWFkLgo+IAo+IFRoZSBMU0RCUyB3b3JrYXJvdW5kIGlzIG9ubHkgYXBwbGljYWJs
ZSBmb3IgU004NjUwIGFuZCBTTTg1NTAuCj4gU004NzUwIGFuZCBvbndhcmRzIGRvZXNuJ3QgbmVl
ZCB0aGlzIFdBIGFueW1vcmUgYXMgaXQgaXMgZml4ZWQgaW4gSFcuCgpOaXRpbiwgeW91J3JlIHJp
Z2h0LiBJIHdhcyBoaXR0aW5nIGFub3RoZXIgaXNzdWUgYW5kIGFkZGluZyB0aGF0IHF1aXJrCm9u
bHkgcmFuZG9tbHkgY2hhbmdlZCBzb21lIHRpbWluZ3MgZm9yIGl0IHRvIG5vdCBtYW5pZmVzdAoK
U29ycnkgZm9yIHRoZSBjb25mdXNpb24uCgpLb25yYWQKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
