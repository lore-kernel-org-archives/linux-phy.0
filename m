Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF50FF9935C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Apr 2026 09:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqyoyA5YifET25j5OahE8N8/Q2IR/4Vg+sjR0/MjMP4=; b=uW/zuQu0zfJEcL
	evOPeLlSZjHqLFDjsTUiv9QoFt4Y4c62Ztb+4K881rlFKqaTaYV17pEQCoD9eTZys/4C+o1M+jnz+
	rMKIrVycRmDoRcQDK68x2Y17rmzOF6y/9uiBNYyI91/bvL+GD5oAukD7HR/X28Pu8o2mnoTKpNzts
	G5NfoLSaMMydYcFVDqQP3GNUt/t8ymP1+LpeVvrDDS+41PC3+yjpl17RFiu0ycfgR/XS+BVMHWV2c
	GCUVp+XxnVB0qZxJrLM0YVB1fpOJshO1nS29zX8g3LHOKEd+OJsz4V0DtPhSYdBGKGnQv7pqIBStk
	Buy0WqRBVkivgs98rCTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFqQL-0000000BP36-1jRP;
	Thu, 23 Apr 2026 09:32:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFqQF-0000000BP2P-1QyG
	for linux-phy@lists.infradead.org;
	Thu, 23 Apr 2026 09:32:39 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N8u4kC3768998
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 09:32:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K6z8eQFDgV6LMClu/l9rPSzIL75kuB2xbW8cHeF/LtA=; b=Cu5yRzGx8eghOxDy
	yXg3UfGnW+limtbUbIjh22ySPsF7/0MuBtjYmgVD7aBSkgTzpt/hUmKG56S8+FGX
	XkrSiaoAM8ekPXrsUNNseHDQ7R37XeiepFkPaWdmIrF7SvHLkW9JJ7+XrhmGe0Hh
	0mHqB+GN505ie/MZQSRC7N6wliXSbbBg4koe9+avxnMgPMCUY7OHbHXgSxYSYJ9y
	aqVTc+wBVvUAbmLT40CSx7eBZfxazjunKmTCtTetsWWvr4RsnR4p+9WobXW+PYm2
	gB6TldU7uCIfPP++IMtojXguZQCrN6ctef6ohGTYoU8HqfwPe+ogIubi1Ybrdaan
	i+iGHA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1hq365m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 09:32:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d840206c3so13356201cf.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Apr 2026 02:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776936754; x=1777541554; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K6z8eQFDgV6LMClu/l9rPSzIL75kuB2xbW8cHeF/LtA=;
        b=WG+uodhDB9qTFCkfErdpkvOaXs5hLCVhkFYetEYraR4tg9r7PhPwEhY7n0EpJ5JTbY
         sN843pvxaLbI6tqVJ9Y51nobXQl5avvXOf6DBlpE4RjAEy/JEPThU1hNr+xa6AFd5X6h
         2JoWulkm9/Sx8qFNWcGgrwoDDU6aeYsnMIXx8gGXES2Y0mbRJgIewn0K5iU3Giv8rEWx
         EgGUmpEB4pGWwgkVaugUCpiXk+pvK6ieLcUDtrVACQ3F5DGbJOKZKF6mNqepk/E/5h5D
         XqD9dCtXP7yW5NPNsEalfhJt+/dotu8Xm75jDsRzdprfr5FEB9QjFg5oMUmICDKV9S2W
         /dpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776936754; x=1777541554;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K6z8eQFDgV6LMClu/l9rPSzIL75kuB2xbW8cHeF/LtA=;
        b=gMFltgzj7cWQM2fCYUExzKPt7xQXcBqAPu8ErGcYQCreNANgM0FHLzSo/aCvFoUeKA
         pLjkhYjUwXOqM0LDAv6Vef6Bt64vL8ONPtY0E6iK/FgyrYW0m1QpklZjvv9WcDeiyYa4
         3uaPGwzRFDdsMvkJUpDN6roYZT4qaJRn2xTT7v4RWRbPKCmctakGgjkeQSn7zKBbbwdH
         ldhDxf6k1UbKP1FRE/6vFu68iEqR04QVmSc4zkWrSGl9R3NbUmeUtRRvf8FIjCToPMMY
         7crB4SBiKJXKZva7E5z7zASn0HJH0dpbioc6fS2TfvHn2BMNFOHfOeBzT818kqVRWFGm
         zz8g==
X-Forwarded-Encrypted: i=1; AFNElJ9UqlNyd+7jPrhAtD4aqwzif+ZsBFKCwQE72l5BFqR+K2FKkbzIyH9uGnhPbZH6PeCdC9uwXShPjF0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzCXLJuxtxOaLzp6bLRIvomGpz/ys7P0C/K8bPowwzcDuAB6o2H
	bh3ygFhu9zIqqMNtxnsdb1zXNnQNjSFkd4TcSuLAsjFGOsoF35JkNeaD/OjESPtmOklJoPAAtRI
	p8w6sp/hkKnYaEWjovjvQ4Ml6R2w8WB3gjLM8MGp9PpRmcaN87oWnMmfMcRq71BLVlsdu
X-Gm-Gg: AeBDieuXQLrKFcg/ddQxT2jUvuqlkgS9secSLPMi8tRmciUI9RMSXAZlYE6Uhy2uCvz
	wk/Tffegmek6oTpP5GR8SQ8sE2Xb6Y6XTxYZlu0yE4xUqEnkNI82qos/ANS8FQ+Xn1n1mJRPbRc
	jV7lCYNIlMxJxqsga0/NRzZLQnnvSSic7sMtujqjirGcrz3YPBCHCgJbsHPXQ9sFvZS6wpTN/oI
	LJfgs3SsMEHOx8SxrkXByyHWt5pdcjr67ophN09y8VyjmgNDQIKLWf07yMfqXbMvztk5FkrobO4
	c3q5peMkrdbSnAgCSybHZNpgWGnhUrYqyjFYfwP8v4bM2RqCwmh0lLO5oOG/J40nTpHxcUFCGDm
	ZTyZt4RlAp+LGlvLDoFmf5LFwxNnAPNLlo5O08pVnzKgwZRrQBTlU4aj054z47wJd7H220kR0Y9
	OEjLg6AjoWAvmbKg==
X-Received: by 2002:ac8:5741:0:b0:50d:ec32:b84f with SMTP id d75a77b69052e-50e36c12a00mr247028781cf.3.1776936753673;
        Thu, 23 Apr 2026 02:32:33 -0700 (PDT)
X-Received: by 2002:ac8:5741:0:b0:50d:ec32:b84f with SMTP id d75a77b69052e-50e36c12a00mr247028601cf.3.1776936753237;
        Thu, 23 Apr 2026 02:32:33 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba45572d01esm662989566b.62.2026.04.23.02.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2026 02:32:32 -0700 (PDT)
Message-ID: <d3865273-3a39-42fb-a49a-16bab8daff05@oss.qualcomm.com>
Date: Thu, 23 Apr 2026 11:32:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] phy: qcom: edp: Add SC7280/SC8180X
 swing/pre-emphasis tables
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
 <20260422-edp_phy-v4-3-c38bef2d027b@oss.qualcomm.com>
 <df40b4d1-6133-4d49-a7e3-47cbb2b058e9@oss.qualcomm.com>
 <cbfa3db8-e500-42ce-8302-16af7b19afe1@oss.qualcomm.com>
 <6a83b074-8a19-4148-a4df-bd11e27e7dce@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <6a83b074-8a19-4148-a4df-bd11e27e7dce@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDA5MiBTYWx0ZWRfX2O18lTW1Xa/4
 8JoRDJJ+Tl1d8yXHGBTFGTESx8uI5KO6gNBISkBS10jJCuH3C3hC0deBqgcTjiTfMSZUlNKtics
 DDzmpx5OyVTYP0EMMPyMLXhxxmz6/8rC13dqO1YEqi8H7irmEQy+Hdv0t9UE1NaLouoLMPYOK9n
 nTpe68oTEQQMm/RIDxugDG35D8bk/s3RK801zxymZgzfQSmcnLe4WoT6NHpZBLlDCoLA81atAJN
 hKIJYsgN5pRl1SClH/EfO2tmVq+T9kLbu6E0qgIleUctZTW+f+i0kqCV0MSo3wBICb/rcjDtrG5
 GPvsGS/HXrntB6XaKclsE/NvEjYKu2tH9t51BlpaRE4sfD/gKHgUmoRTwUMPJ49Je0K+QU/UzuG
 kY4WHt+GWxHFemJIPxOm+6KNxszm5zqbkq4BRQJearCyyAH2xpjuwcD+wCn8neXhm8iSk/TAtyQ
 0h9MEIYkeROcwI1xiog==
X-Proofpoint-ORIG-GUID: 45ioZIscnvPcJ2k4DorIjKU6pbsT_3I7
X-Proofpoint-GUID: 45ioZIscnvPcJ2k4DorIjKU6pbsT_3I7
X-Authority-Analysis: v=2.4 cv=TJt1jVla c=1 sm=1 tr=0 ts=69e9e732 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=hqNdK9bzmW6HMFoEAMsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_023235_502880_5B2C8DA5 
X-CRM114-Status: GOOD (  11.19  )
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

T24gNC8yMy8yNiAxMTozMiBBTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA0LzIzLzI2IDU6
MjggQU0sIFlvbmd4aW5nIE1vdSB3cm90ZToKPj4KPj4KPj4gT24gNC8yMi8yMDI2IDY6NDIgUE0s
IEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+PiBPbiA0LzIyLzI2IDg6MDEgQU0sIFlvbmd4aW5nIE1v
dSB3cm90ZToKPj4+PiBTQzcyODAgYW5kIFNDODE4MFggcHJldmlvdXNseSBzaGFyZWQgdGhlIHNh
bWUgY2ZnIGJlY2F1c2UgdGhleSBkaWQgbm90IHVzZQo+Pj4+IHN3aW5nL3ByZS1lbXBoYXNpcyB0
YWJsZXMuIEFkZCB0aGUgY29ycmVzcG9uZGluZyB0YWJsZXMgZm9yIHRoZXNlCj4+Pj4gcGxhdGZv
cm1zLiBTaW5jZSB0aGV5IGhhdmUgZGlmZmVyZW50IFBIWSBzdWItdmVyc2lvbnMsIHRoZWlyIGVE
UC9EUCBtb2RlCj4+Pj4gdGFibGVzIGFsc28gZGlmZmVyLCBzbyBtb3ZlIFNDODE4MFggdG8gaXRz
IG93biBjZmcgaW5zdGVhZCBvZiByZXVzaW5nIHRoZQo+Pj4+IFNDNzI4MCBvbmUuCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBZb25neGluZyBNb3UgPHlvbmd4aW5nLm1vdUBvc3MucXVhbGNvbW0u
Y29tPgo+Pj4+IC0tLQo+Pj4KPj4+Cj4+Pgo+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21f
ZWRwX3N3aW5nX3ByZV9lbXBoX2NmZyBlZHBfcGh5X3N3aW5nX3ByZV9lbXBoX2NmZ192MiA9IHsK
Pj4+PiArwqDCoMKgIC5zd2luZ19oYnJfcmJyID0gJmVkcF9zd2luZ19oYnJfcmJyLAo+Pj4KPj4+
IEZvciBlRFAgLyBsb3ctVmRpZmY6Cj4+Pgo+Pj4gSSBiZWxpZXZlIHRoZSBSQlIgc3dpbmcgc2V0
dGluZ3MgZm9yIDgxODAgc2hvdWxkCj4+PiBpbnN0ZWFkIGJlOgo+Pj4KPj4+IDB4MDcgMHgwZiAw
eDE3IDB4MWYgKG1hdGNoZXMpCj4+IEVtbSBpIHNlZSBmcm9tIGlwY2F0IGVEUCBMb3cgdmRpZmYo
TG93ZXIgSEJSKcKgIHN3aW5nIHNldHRpbmdzIGlzCj4+IDB4MDcgMHgwZiAweDE2IDB4MWYKPiAK
PiBZZXMsIHlvdSdyZSByaWdodCwgSSBtYWRlIGEgdHlwbwo+IAo+IFsuLi5dCj4gCj4+PiAucHJl
X2VtcGhhc2lzX2hicjNfaGJyMiBPSwo+Pj4gLnByZV9lbXBoYXNpc19oYnJfcmJyIHNhbWUgYXMg
YWJvdmUKPj4+Cj4+IFRoYW5rcyBmb3IgcG9pbnQgdGhpcywgc28gcHJlX2VtcGhhc2lzX2hicl9y
YnIgc2FtZSB3aXRoIHByZV9lbXBoYXNpc19oYnIzX2hicjI/wqAgSSBhbHNvIGRvbid0IGdldCBp
dCdzIFJCUiBvciBIQlIzIGZyb20gcGh5IEhQRy4gQnV0IG5vdyBpIHRoaW5rIG9ubHkgZURQIHdp
bGwgYmUgdXNlZCBpbiB1cHN0cmVhbWVkIHBvaXB1IGJvYXJkcy4gaSBjaGVjayB0aGUgZHRzIGFu
ZCBub3QgZmluZCBhbnkgcG9pcHUgYm9hcmRzIHdpbGwgdXNlIERQIG1vZGUob3IgbWluaSBEUCku
Lgo+IAo+IFllYWggbGV0J3Mgbm90IHdvcnJ5IGFib3V0IGl0IHRvZGF5Li4KCkFib3V0IG1pbmkt
ZHAgc3BlY2lmaWNhbGx5IHRoYXQgaXMKCktvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
