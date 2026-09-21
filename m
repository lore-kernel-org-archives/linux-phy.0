Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 547FDC982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 13:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FkiRW0YzOiyx70axzgzc7spBvgi+jFHiiWR7AJfC260=; b=IkGycCP1/la8z3
	o+CVh6NYq3FO9boc5poBYZ8I0HrQxCJNJZi30gS9xQCikdmU6NKpgb3CWJygXmdQALsPR5MpuaV+J
	cuz0XGPd9K1d54IskMbVgKFzQfm4jk1Oo3nS8UNxFV7scqtm2dAnt3iv2NNia+HU91NpbN+6vLMBW
	hXfjzE4jsWVoYAnS/PQhXjqLA5fDGMaez8hyYzlYU5N3CKCnTONcj+fWnMtF8SIDkjlFVp2BiWesf
	5V+1CVPmqaXd/FndWOa2+P2nk64cGV2ThN5HHnjI8rwTIrJTVbA5t7sdl1nOWALe3s2PdH3Vntgr7
	BuOcjCmGeF6fGrFQipLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8eRa-00000002IoJ-2or4;
	Mon, 21 Sep 2026 13:52:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8eRX-00000002InG-2xWg
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 13:52:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LDouw9704239
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 13:52:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Dj95l/vO2+U8MWvuE/XE4MlOef8+RJeyIZeU0fanVvQ=; b=nB8rkH4kSG9Wl+rg
	tRHB+jL0+WSVKo3teO/XzFV37lsCqxpGDRFKaouYCy3SiA51xSNH4pyPBxFQgPZm
	SXvBuPBH7xRJxa1j7bdI6FtpI3NTI9jvx/MB6XgqSUxCX6WS9JOmQQmpJ/z2dfaz
	zdQoYAQkGuOeeFrcMhC0S0kNe0kAgfajvs7VycjmWds2mAYdbN4SbcbdcgGXt0OI
	NzgfSO+L/RKOA0oQXZLQyqPCZs64VPC17M4Biv0/ZzEspG0VU3CQZxoWGvt//JBE
	MA3cUSILm2Qny29yWRjH3BuzV5f5syh0MBjGS3+JAnLnpdqbu/ZdP6LoJ8ZyivWv
	YsgZ1w==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu0rj1cak-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 13:52:26 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-39e18af9f48so4595422a91.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 06:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789998746; x=1790603546; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Dj95l/vO2+U8MWvuE/XE4MlOef8+RJeyIZeU0fanVvQ=;
        b=SUnpapdFnCWYRSpX3115cQE397S1WdwUwF0Q9tZt6wNaclquEEnC9z60UgxIWLijOz
         hq8lfGVtWp3bxmBD2gJoHFvmbakzNtyw28toszmGRvbpgqgLcL0JzqAITqLYKz/XVa6n
         pG+y+yw3eNqsDCzbeD7lBcx7pF0W2WeGSe4LwkDYqR6yRcBL/xal1QA2m/GSPd6MFWsn
         r/KAD83PDr3yqnsuvGg97tTs8zK3Wi7xPDt2XQWTmhKun5VGqKqItuHbI30n2jcB+Jzl
         045r4aBHJ1ikSv5gLANQKOQOAegsPCKhM7hgY/vTH2l4Xm1t/RefdtZQn1PTMQ1kk0/n
         yh4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789998746; x=1790603546;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Dj95l/vO2+U8MWvuE/XE4MlOef8+RJeyIZeU0fanVvQ=;
        b=JI/H3MNqFGHLvzEFbpKTLad935ypNwLp18ORc4jAy5dtKwwpJ/FF3Zi5fvqb1o8nSS
         tT78MJzlOLY/O5dXOYa3+bx/KVkO8SKviv0exq6jsWozVKHs6BlYsAvi8Q2fD6ucgalt
         iwMNU3iuxeMLWlIwRwJJInbI8K8f49MtX/oBvCZsDyF5DZXg6p/EFBGZcdIhHkQz9MVn
         DZwhwt8YIOgnZBZYOleA0Ds2JeokhT3+hENv40+h1/QtRIQMGHVdkiz3pGcz8A+NivD2
         NDzzkmhm/QURQ6gw/XUrkJYSXvNjozTBfKjt2jg1t/2SdOO8nc08Iogj7Tk4RHYT24R2
         5Ceg==
X-Forwarded-Encrypted: i=1; AKwUvBztYuBVTNR8eii2+Up2fw7GK5QpqO4htyZ+zG76NWvAtlVr84QvYg5SwdyDlsh3/o2YKJHBjOJfiHM=@lists.infradead.org
X-Gm-Message-State: AFuF++mzMXuHJK2CyVrzUGGBzp8m1yitOVWeCwGfy9nMDi/6+b0NWXCC
	Jer3ElTlDHGD9MBZJgVh0o22KI8wwRV2zcROEJVuPYr9wOhPR/klLCYHDxKRpgPpCPr38bxIoug
	bh4AtAUvs8qSMefn+Juqln/z4/UkLTxORCh2iFGnIDwzBCSzqDSIFKY8Shr5zsDc3redO
X-Gm-Gg: AYBFou2z38s+PsepC/cWtAg7/i3x2khIOUaLJ/i9mXUayfT6F3a1QkB3HNPnYQk0SAl
	KupFZdNQXUDiSHMpFoHv3GWVbZRwlYCUfpKyBNFoEoGg16QvMr9UBdeDPojPmsVUBG7Rk1YFD+c
	XFUJ4Cf1JnFWe7XNhKhz4ELSpdVoByyYnaAe7/OxdMPlCcgUr2F/J0vbmBsw14af+bm9+IkPmNn
	zUhd6YOAc+tnDyPf3TPeAPg6SXm7wyoKHjQKVWVI5F1N9YzZMv3fEQV0Cle28UHrtyJesEwUqK5
	ue+HVEu/kC96rld6IN46vz6o4gQ9jaD47bOjOVA0LCE1rNoUVFU6bnvEUPoZp8utuCw73orNiZm
	QSvq8P3ay/+spD3Atn/q9Tk9URz9oYR17Ksc=
X-Received: by 2002:a17:90b:2749:b0:3a0:25f0:d89f with SMTP id 98e67ed59e1d1-3a025f0ddefmr6072569a91.54.1789998745540;
        Mon, 21 Sep 2026 06:52:25 -0700 (PDT)
X-Received: by 2002:a17:90b:2749:b0:3a0:25f0:d89f with SMTP id 98e67ed59e1d1-3a025f0ddefmr6072531a91.54.1789998745016;
        Mon, 21 Sep 2026 06:52:25 -0700 (PDT)
Received: from [192.168.29.146] ([49.43.232.81])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144d55f299fsm36081162c88.15.2026.09.21.06.52.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2026 06:52:24 -0700 (PDT)
Message-ID: <5c16f588-3ea4-4f37-baca-e5a2807592de@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 19:22:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] PCI: qcom: Add PCIe support for Shikra SoC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <e03f3b9e-e98f-4505-99d7-1bcafbc384b1@oss.qualcomm.com>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <e03f3b9e-e98f-4505-99d7-1bcafbc384b1@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDIwMSBTYWx0ZWRfX90ToCUlWv31g
 YzhKA3m72NtKDv9KhWu/cdUnGmoAA3AYdh7jUWYMAeI0XgbWr/oRKWqyF0QHonLmNoI3sZRgWxG
 ht4wP3/S0MbNFdkryTw8jDme0PvBTqM=
X-Authority-Analysis: v=2.4 cv=AsR7T+9P c=1 sm=1 tr=0 ts=6ab1369a cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=gjxls31er4aXgMEaaoPcOA==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=xfGM6EskjLEd39232uAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: zP5R9P9PwtyW7R_Kdirt6UNZbvP7ks9V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDIwMSBTYWx0ZWRfXwEcSy0OIN55O
 9f8VdnSjp+AiqXg3IF9PHEg9YYrYSbMWEpWrezEO8GPzplHn5nTLhD1cjHk+j4VQA8zufBne/ZX
 Tn17ykIJSWval7nVEPSZTpnui3lDSZ1gyGFoNYibpgNu6nV+iG8FoaWPJz0Jew/BWCyDURRQ6zy
 gzFzyr6Jsovcckk7R/O4evWpqV9o4HHDCVECBJUponiYCdAv0UV3LA6+Nu/eacjmo1W7ykJ4/OX
 vcYxZbikFcTffcnqmDkA8KIdyqcW/7jqAFIz0gpJOgeC80tLPnmbHN6tWhkMslJhgI7VmsmBlRj
 ZSZ3PhEDM+Y30X5Sos5NcjiOmk6Y59cYNNifXAjyOFvu87YLHK58x1uypGhv9QKR9rLQfFUXfPZ
 /HvfqGVBx2w0yw6q/w0qEsGsFvrQIlfQW+VBOfoUVRoCgiFkHaFjNwhv5EyFaOFOE4sQ+P7xrAB
 gRR/3aL/Mqp/tQXNNtA==
X-Proofpoint-ORIG-GUID: zP5R9P9PwtyW7R_Kdirt6UNZbvP7ks9V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 impostorscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_065227_857492_1403728E 
X-CRM114-Status: GOOD (  14.67  )
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

Ck9uIDkvMi8yMDI2IDI6MTYgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gT24gOC8zMS8yNiA5
OjI2IEFNLCBTdXNocnV0IFNocmVlIFRyaXZlZGkgd3JvdGU6Cj4+IEFkZCBQQ0llIHN1cHBvcnQg
Zm9yIFNoaWtyYSB0YXJnZXQsIGJ5IGFkZGluZyBkdC1iaW5kaW5ncyBmb3IgcGh5LAo+PiBjb250
cm9sbGVyIGFuZCBjb3JyZXNwb25kaW5nIHBoeSAmIGNvbnRyb2xsZXIgZHJpdmVycy9kZXZpY2Ut
dHJlZQo+PiBjaGFuZ2VzLgo+Pgo+PiBTaGlrcmEgUkMgaXMgY29ubmVjdGVkIHRvIFRDOTU2MyBQ
Q0llIHN3aXRjaCBvbiBhbGwgdGhyZWUKPj4gRVZLIHZhcmlhbnRzOiBDUVMsIENRTSBhbmQgSVFT
LiBUaGUgaW5kaXZpZHVhbCBkb3duc3RyZWFtIHBvcnRzCj4+IG9mIFRDOTU2MyBjb25uZWN0IGxp
a2UgYmVsb3c6Cj4+Cj4+IERTUDE6IE0uMiBCLUtleSBmb3IgNUcgTW9kZW0KPj4gRFNQMjogTS4y
IE0tS2V5IGZvciBOVk1lCj4+IERTUDM6IEVtYmVkZGVkIGV0aGVybmV0IGRldmljZQo+Pgo+PiBQ
b3dlciBhbmQgcmVzZXQgdG8gTS4yIEIgYW5kIE0uMiBNIHNsb3QgYXJlIGNvbnRyb2xsZWQgdmlh
Cj4+IFRDOTU2MyBHUElPJ3MuIFNpbmNlIFRDOTU2MyBHUElPIGRyaXZlciBmcm9tIEFsZXggaXMg
c3RpbGwKPj4gdW5kZXIgYWN0aXZlIHJldmlldywgY3VycmVudCBzZXJpZXMgb25seSBjb250YWlu
cyBiYXNpYyBQQ0llCj4+IGVuYWJsZW1lbnQgZm9yIHRoZSBjb250cm9sbGVyIC8gUEhZLiBUQzk1
NjMgZW5hYmxlbWVudCBjaGFuZ2VzCj4+IHdvdWxkIGJlIHBvc3RlZCBhcyBhIHNlcGFyYXRlIHNl
cmllcyBvbmNlIHRoZSBHUElPIGRyaXZlciBpcwo+PiByZWFkeS4KPj4KPj4gWzFdIGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC9lMmlubDdrNWdzamo2b29tdjJrNXhpbXV6cGIzZ2ZpejY2dWZl
dDNiNGh2b3Y3enF0NEBxejRwaWZib3M3eWYvCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFN1c2hydXQg
U2hyZWUgVHJpdmVkaSA8c3VzaHJ1dC50cml2ZWRpQG9zcy5xdWFsY29tbS5jb20+Cj4+IC0tLQo+
PiBDaGFuZ2VzIGluIHYyOgo+PiAtIFJlbW92ZSBUQzk1NjMgc3BlY2lmaWMgY2hhbmdlcyBbTWFu
aV0KPj4gLSBGaXggY29tbWl0IGRlc2NyaXB0aW9ucy9zdWJqZWN0cyBbQmpvcm4gSGVsZ2Fhc10K
Pj4gLSBGaXggUENJZSBjb250cm9sbGVyIGR0LWJpbmRpbmcgZXJyb3JzIFtLcnp5c3p0b2YgS296
bG93c2tpIC8gTWFuaV0KPj4gLSBEb2N1bWVudCBQQ0llIEdlbjIgbGltaXRhdGlvbiBpbiBjb250
cm9sbGVyIG5vZGUgJiBjb21taXQgbXNnIFtLb25yYWQgRHliY2lvIC8gTWFuaV0KPj4gLSBBZGQg
R0NDX1BDSUVfU0xFRVBfQ0xLICh3aGljaCBpcyBhY3R1YWxseSBQSFkgQVVYIENMSykgaW4gUENJ
ZSBQSFkKPj4gICAgbm9kZS4KPiBZb3UgYWxzbyBzaWxlbnRseSBhZGp1c3RlZCB0aGUgT1BQIGxl
dmVscyBpbiB0aGUgRFQgcGF0Y2g6Ck15IGJhZDvCoCBJIGRpZCBBQ0sgTWFuaSdzIGNvbW1lbnQg
aW4gdjEgcmVnYXJkaW5nIGhpZ2hlciB2b2x0YWdlIGNvcm5lciAKdm90ZXMuCldpbGwgbWVudGlv
biBpbiBjb3ZlciBsZXR0ZXIgbmV4dCB0aW1lIG9ud2FyZHMuCj4KPiA8ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVxdWlyZWQtb3BwcyA9IDwmcnBtcGRfb3BwX25vbT47
Cj4gLS0tCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVxdWlyZWQt
b3BwcyA9IDwmcnBtcGRfb3BwX2xvd19zdnM+Owo+Cj4gaXMgdGhlIGxvd2VyIG9uZSBzdWl0YWJs
ZT8KWWVzLCBHZW4yIGNhbiBiZSBzdXBwb3J0ZWQgd2l0aCBsb3cgc3ZzIGNvcm5lciBhcyBwZXIg
SFcgdGVhbS4KPgo+IEtvbnJhZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
