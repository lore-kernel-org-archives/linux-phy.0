Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12329C001DE
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 14:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYN7rlhzM2+AmTQFfreDijkJUHlWLrwtAZHNcGZz6o0=; b=GnWPhKGDCzfvqS
	N/KGlwKUBHJcWPl3h4NhqigDFFJjVemvIf9EHRUA1vY/uA2QdbmE7L3TTG7R+y83knxqmb2O9RSjl
	iKdr/s6lo32Ti9Vli/aOuV6jxa5eE4vq25y0PxlB5EALqR71B0pebVAVXX1saRMWhE4NIkQS9jYOe
	9tOB4iuwz/kj0R4/Np/iL6o4FeSkwdrweOqciBk0v7eUvEFAMGhy0hktdgWJ/5m256uuWiY7g5zDQ
	sk6vvj6APHY2aBQ5R7aHNUSJGUI35Y5P3XNFrOBb5W9KG6568Zf0mJ5Wpp7TYd4fOxPZHqYXtBCK7
	ZQJPyHPirH1eTOTH0HGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOIiK-007jer-2N;
	Tue, 25 Jul 2023 14:08:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOIiH-007jdP-0Y;
	Tue, 25 Jul 2023 14:08:35 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36PDXDMu010531;
	Tue, 25 Jul 2023 16:08:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : from : to : cc : references : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=aKox1fifr/MD7CscnSNaYClzgh1MKEowYV/1CFbHY8Q=;
 b=4sFWeFLREgJioc9H+rODp72hj3AVdLAeXn//m7QoqBPjLcHM3h6ErPmn4WA399Y/aITY
 Es+zEl+7c1OuNWP/mY/sYFUWBgIrS0ZnwoA5voqLfap1MOnNtJ/zdQsJH70zP6mKb4It
 up4nrSg6m/QvGFbwtP1STGuEVZLJ00BGoK2EjvjlEjCcZJFyhQQwWBxUeAAPCbeV4q3h
 6aBJcowFMNfbDdrNiVfgGpJZ6jk6/MU4C0knjVH4EQXo3oCJXoEvofraY3JZmoYetI5I
 ZcYWT0tL9hA+ODD+fHxyfM0nlDUmDa3FOMio5gfyLhC4I0CiM1Tbi4NIEhA6R3rIQpjx iw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3s2bkbhv00-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 25 Jul 2023 16:08:01 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B9F8E100048;
	Tue, 25 Jul 2023 16:07:56 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5ACB4241EF6;
	Tue, 25 Jul 2023 16:07:56 +0200 (CEST)
Received: from [10.201.21.121] (10.201.21.121) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Tue, 25 Jul
 2023 16:07:54 +0200
Message-ID: <1faa5511-a341-9c17-5e2a-974f8139d1d6@foss.st.com>
Date: Tue, 25 Jul 2023 16:07:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 07/10] arm64: dts: st: add RIFSC as a domain controller
 for STM32MP25x boards
Content-Language: en-US
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <jic23@kernel.org>,
        <olivier.moysan@foss.st.com>, <arnaud.pouliquen@foss.st.com>,
        <mchehab@kernel.org>, <fabrice.gasnier@foss.st.com>,
        <andi.shyti@kernel.org>, <ulf.hansson@linaro.org>,
        <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
        <hugues.fruchet@foss.st.com>, <lee@kernel.org>, <will@kernel.org>,
        <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-8-gatien.chevallier@foss.st.com>
 <61d93738-4ffd-411d-d32c-912c14eea56d@foss.st.com>
 <997780a9-1cbc-46a2-2743-7fd493682278@foss.st.com>
In-Reply-To: <997780a9-1cbc-46a2-2743-7fd493682278@foss.st.com>
X-Originating-IP: [10.201.21.121]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-25_08,2023-07-25_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_070833_527244_AF307F6A 
X-CRM114-Status: GOOD (  21.86  )
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

SGkgQWxleCwKCk9uIDcvNi8yMyAxMTozMCwgR2F0aWVuIENIRVZBTExJRVIgd3JvdGU6Cj4gSGkg
QWxleCwKPiAKPiBPbiA3LzYvMjMgMTE6MjUsIEFsZXhhbmRyZSBUT1JHVUUgd3JvdGU6Cj4+IEhp
IEdhdGllbgo+Pgo+PiBPbiA3LzUvMjMgMTk6MjcsIEdhdGllbiBDaGV2YWxsaWVyIHdyb3RlOgo+
Pj4gUklGU0MgaXMgYSBmaXJld2FsbCBjb250cm9sbGVyLiBDaGFuZ2UgaXRzIGNvbXBhdGlibGUg
c28gdGhhdCBpcyBtYXRjaGVzCj4+PiB0aGUgZG9jdW1lbnRhdGlvbiBhbmQgcmVmZXJlbmNlIFJJ
RlNDIGFzIGEgZmVhdHVyZS1kb21haW4tY29udHJvbGxlci4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBHYXRpZW4gQ2hldmFsbGllciA8Z2F0aWVuLmNoZXZhbGxpZXJAZm9zcy5zdC5jb20+Cj4+PiAt
LS0KPj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1MS5kdHNpIHwgNSArKysr
LQo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAyNTEuZHRz
aSAKPj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9zdC9zdG0zMm1wMjUxLmR0c2kKPj4+IGluZGV4
IDUyNjhhNDMyMTg0MS4uNjIxMDEwODRjYWI4IDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9zdC9zdG0zMm1wMjUxLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
c3Qvc3RtMzJtcDI1MS5kdHNpCj4+PiBAQCAtMTA2LDE3ICsxMDYsMjAgQEAgc29jQDAgewo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHJhbmdlcyA9IDwweDAgMHgwIDB4MCAweDgwMDAwMDAwPjsKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCByaWZzYzogcmlmc2MtYnVzQDQyMDgwMDAwIHsKPj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInN0LHN0bTMybXAyNS1yaWZzYyI7Cj4+Cj4+
IFlvdSBjb3VsZCBrZWVwICJzaW1wbGUtYnVzIiBjb21wYXRpYmxlIChpbiBzZWNvbmQgcG9zaXRp
b24pLiBJbiBjYXNlIAo+PiBvZiB0aGUgUklGU0MgaXMgbm90IHByb2JlZCwgdGhlIHBsYXRmb3Jt
IHdpbGwgYmUgYWJsZSB0byBib290LiBJZiB5b3UgCj4+IGFncmVlIHlvdSBjYW4gdXNlIHRoZSBz
YW1lIGZvciBFVFpQQy4KPj4KPj4gQ2hlZXJzCj4+IEFsZXgKPiAKPiBTdXJlLCBnb29kIHBvaW50
Lgo+IAo+IEknbGwgY2hhbmdlIHRoYXQgaW4gVjIKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gR2F0aWVu
CgpBY3R1YWxseSwgaXQgd291bGQgYmUgYSBiYWQgaWRlYSB0byBrZWVwICJzaW1wbGUtYnVzIiBh
cyBhIGNvbXBhdGlibGUuCgpQcmFjdGljYWwgZXhhbXBsZToKMSkgRmlyZXdhbGwgY29udHJvbGxl
ciBmb3JiaWRzIGEgZGV2aWNlIHByb2JlIGJ5IG1hcmtpbmcgdGhlIGRldmljZSdzCm5vZGUgYXMg
cG9wdWxhdGVkIChPRl9QT1BVTEFURUQgZmxhZykuCjIpIFRoZSBzaW1wbGUtYnVzLCB3aGljaCBp
cyBzaW1wbGUsIHBvcHVsYXRlcyBhbGwgdGhlIGRldmljZXMKZnJvbSB0aGUgZGV2aWNlIHRyZWUg
ZGF0YSwgb3ZlcnJpZGluZyB3aGF0IHRoZSBmaXJld2FsbCBidXMgaGFzIGRvbmUuCjMpPT5Gb3Ji
aWRkZW4gZGV2aWNlJ3MgZHJpdmVyIHdpbGwgYmUgcHJvYmVkLgoKSSB0aGluayBpdCdzIGJlc3Qg
dG8ga2VlcCBvbmUgY29tcGF0aWJsZS4gSWYgc29tZW9uZSB3YW50cyB0aGVzZSBkcml2ZXJzCmFz
IGV4dGVybmFsIG1vZHVsZXMsIHRoZW4gaXQnbGwgYmUgYmVzdCB0byBoYW5kbGUgdGhpcyBkaWZm
ZXJlbnRseS4KSSdsbCByZXN1Ym1pdCB3aXRoIGEgc2luZ2xlIGNvbXBhdGlibGUgZm9yIFYyLCBw
bGVhc2UgZG8gbm90Cmhlc2l0YXRlIHRvIGNvbW1lbnQgb24gdGhlIFYyIGlmIHlvdSdyZSBub3Qg
b2theSB3aXRoIHRoaXMuCgpCZXN0IHJlZ2FyZHMsCkdhdGllbgoKPj4KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDQyMDgwMDAwIDB4MTAwMD47Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDE+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmFuZ2VzOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmVhdHVyZS1kb21haW4t
Y29udHJvbGxlcjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNmZWF0dXJlLWRvbWFpbi1j
ZWxscyA9IDwxPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVzYXJ0Mjogc2VyaWFs
QDQwMGUwMDAwIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0
aWJsZSA9ICJzdCxzdG0zMmg3LXVhcnQiOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZWcgPSA8MHg0MDBlMDAwMCAweDQwMD47Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxMTUgSVJRX1RZUEVfTEVWRUxf
SElHSD47Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwm
Y2tfZmxleGdlbl8wOD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZlYXR1
cmUtZG9tYWlucyA9IDwmcmlmc2MgMzI+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
