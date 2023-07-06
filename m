Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B43EB64D9
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 09:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Py4zisMf9d/AAPI7cgh4SzpteNdPp9USEJvVI7AuxOw=; b=JrGAxkCk8pR3F2
	hhEi/olD0EJ7n8iM6Vqeo56kjBGYqq6V1yQ/3BnQTcAsDFNKp8uvHbZYFFO52ZaUbNIHaNYIdy5dZ
	hSXFq1zmNao3V92LUmXM63LEXBaaEZFkKoljISM9HfPqncwBTEYm/8b/fLo8Nv5h5SW2aeSgfoJ4D
	QekieE+Fmd2On0mRlk7qbsx8ZrOdrODDHhkzSf/bcYLOyhOfNsSuzfOKWjSiI1uGH9NI9FsmxHy8Q
	3H6f7ERtGFSXco491HzqAfMjsswx6tHPQ1wSQ5lfgd693YTedIyaNZM+XMsxckS4X7cqA9B5Z7rxH
	Zwcx4ekUgRSpHyURGu+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHLKS-0015lX-11;
	Thu, 06 Jul 2023 09:31:12 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHLKP-0015kn-39;
	Thu, 06 Jul 2023 09:31:11 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3667J8tL028476;
	Thu, 6 Jul 2023 11:30:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=QjdN1V/hI6Mx6jHfQb/2NbbcyfO5P8v8g9k00xWpqD4=;
 b=DYCthB7alQTQ3lrROhg7wOy4r1QjzIouOx6L/IhrmzziUxxOXE/SAY/s3xl5nbC6MKjP
 yKTOupwej1UZTT1NzllCw19pAI/ozfW4DzFp93ABJK04vmnrhUVTRSeHfQBMiFRmMCS6
 RE6I1Z7cJ131NjJJcG1uMwLxnvvWKLJSrY1Ldr2zQqHHRB5gF6YmNXEW5uDS8b7ASW9K
 9NavX8kCT/YO35Q8WUwtoqHl0/n1GZUt3sDcUAgcu4R4+QK48NXobdWd0egzTTMZmYXB
 Fcl1NvDUv2WloUvJGVEtMGRv5s06I3e2+JLxzO7J8eoNhgBH/rQgPUF5qHlO3YrPxajT yQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3rns47s4ud-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Jul 2023 11:30:49 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F3A43100052;
	Thu,  6 Jul 2023 11:30:47 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E997C216ED4;
	Thu,  6 Jul 2023 11:30:47 +0200 (CEST)
Received: from [10.201.21.121] (10.201.21.121) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Thu, 6 Jul
 2023 11:30:46 +0200
Message-ID: <997780a9-1cbc-46a2-2743-7fd493682278@foss.st.com>
Date: Thu, 6 Jul 2023 11:30:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 07/10] arm64: dts: st: add RIFSC as a domain controller
 for STM32MP25x boards
Content-Language: en-US
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
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
In-Reply-To: <61d93738-4ffd-411d-d32c-912c14eea56d@foss.st.com>
X-Originating-IP: [10.201.21.121]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-06_06,2023-07-06_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_023110_301025_A700F62A 
X-CRM114-Status: GOOD (  18.57  )
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

SGkgQWxleCwKCk9uIDcvNi8yMyAxMToyNSwgQWxleGFuZHJlIFRPUkdVRSB3cm90ZToKPiBIaSBH
YXRpZW4KPiAKPiBPbiA3LzUvMjMgMTk6MjcsIEdhdGllbiBDaGV2YWxsaWVyIHdyb3RlOgo+PiBS
SUZTQyBpcyBhIGZpcmV3YWxsIGNvbnRyb2xsZXIuIENoYW5nZSBpdHMgY29tcGF0aWJsZSBzbyB0
aGF0IGlzIG1hdGNoZXMKPj4gdGhlIGRvY3VtZW50YXRpb24gYW5kIHJlZmVyZW5jZSBSSUZTQyBh
cyBhIGZlYXR1cmUtZG9tYWluLWNvbnRyb2xsZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEdhdGll
biBDaGV2YWxsaWVyIDxnYXRpZW4uY2hldmFsbGllckBmb3NzLnN0LmNvbT4KPj4gLS0tCj4+IMKg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvc3Qvc3RtMzJtcDI1MS5kdHNpIHwgNSArKysrLQo+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAyNTEuZHRzaSAKPj4gYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3N0L3N0bTMybXAyNTEuZHRzaQo+PiBpbmRleCA1MjY4YTQzMjE4NDEu
LjYyMTAxMDg0Y2FiOCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9zdC9zdG0z
Mm1wMjUxLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9zdC9zdG0zMm1wMjUxLmR0
c2kKPj4gQEAgLTEwNiwxNyArMTA2LDIwIEBAIHNvY0AwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHJhbmdlcyA9IDwweDAgMHgwIDB4MCAweDgwMDAwMDAwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHJpZnNjOiByaWZzYy1idXNANDIwODAwMDAgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b21wYXRpYmxlID0gInNpbXBsZS1idXMiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInN0LHN0bTMybXAyNS1yaWZzYyI7Cj4gCj4gWW91IGNvdWxkIGtlZXAgInNpbXBs
ZS1idXMiIGNvbXBhdGlibGUgKGluIHNlY29uZCBwb3NpdGlvbikuIEluIGNhc2Ugb2YgCj4gdGhl
IFJJRlNDIGlzIG5vdCBwcm9iZWQsIHRoZSBwbGF0Zm9ybSB3aWxsIGJlIGFibGUgdG8gYm9vdC4g
SWYgeW91IGFncmVlIAo+IHlvdSBjYW4gdXNlIHRoZSBzYW1lIGZvciBFVFpQQy4KPiAKPiBDaGVl
cnMKPiBBbGV4CgpTdXJlLCBnb29kIHBvaW50LgoKSSdsbCBjaGFuZ2UgdGhhdCBpbiBWMgoKQmVz
dCByZWdhcmRzLApHYXRpZW4KPiAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0g
PDB4NDIwODAwMDAgMHgxMDAwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2FkZHJl
c3MtY2VsbHMgPSA8MT47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxz
ID0gPDE+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByYW5nZXM7Cj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGZlYXR1cmUtZG9tYWluLWNvbnRyb2xsZXI7Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICNmZWF0dXJlLWRvbWFpbi1jZWxscyA9IDwxPjsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdXNhcnQyOiBzZXJpYWxANDAwZTAwMDAgewo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzJoNy11YXJ0IjsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHg0MDBlMDAwMCAweDQw
MD47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxH
SUNfU1BJIDExNSBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNrX2ZsZXhnZW5fMDg+Owo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGZlYXR1cmUtZG9tYWlucyA9IDwmcmlmc2MgMzI+Owo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+IAoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
