Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC20BE71D31
	for <linux-phy@archiver.kernel.org>; Fri, 29 Sep 2023 13:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:CC:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDDSuwBMpGu+1kX95wwgJlBptcfxkVyWFy3F/VZTmpg=; b=uFGGRGjrOot4MJ
	GT/S4H96wt29J2HXobH/HyTH7qKOI1p1HyaBoRfcxv6W6+ABchtuWmtWKOyolP76Ix7PU8I3ZyiVz
	romOy5o+3Tk7a95DHTZGddTh8mAAWoukfJvp4TgxwHAMNyH4gFJciNzgoC/IjoYr2XYCUd7/6HPEP
	q48Zf5t3UCGYBkdvNUBm/01r1gkNAehOO8pW/0Fr1MpQuSvGmAPS4kEUoGnFyJKhDiouLg8FISuCz
	KD52rIUHFM1W7mvldBwriAkVRbGPSuYtfDj0bixNLtnsMWTRTaAPxsT2Mnx3WFvFFKHcRV201lj+F
	Mch6jFp5cF5NZEyk4aFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmDOw-007x8q-1k;
	Fri, 29 Sep 2023 13:19:26 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmDOt-007x7t-22;
	Fri, 29 Sep 2023 13:19:25 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38TABSom007571;
	Fri, 29 Sep 2023 15:18:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:from:to:cc:references
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=KMM5HFfGi3/V+NX/zIj16MtndrNJ3wjO6VBqQEWwOzE=; b=ga
	rM6WT7soC9Qg5lgEynlNIDEz19ICFxdBxx8K4WKaa81yBoo69ZoqQgPtPJrk+yqH
	6Ke+T4tgb/wvQ7+D6b8/REeHXj+x3qhuVXstjmlbfDXVsD7fnq1otz0IBlMfWVfL
	E4pait5J8DRp751sajaRVoUu+IBQuOKISwGGaDU+w8jkYTr9fXxKlpYDQovtoe8f
	gElrQ2fdRogxsh24zwaguSO+d3txrH3Ag2t7373pPcvxthqul803q1iHU52Zkj5N
	HDkK8wgJgLFXVxL19kvPUsq9yAyQ76DfuoiJhXjgKUsphyNPOIYM5JXL5gCdij8s
	EmQ/SdD52jWC2koKfFGg==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3ta9k0s0fb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 15:18:50 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE29710002A;
	Fri, 29 Sep 2023 15:18:48 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4AB3A2865FC;
	Fri, 29 Sep 2023 15:18:48 +0200 (CEST)
Received: from [10.201.20.32] (10.201.20.32) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 29 Sep
 2023 15:18:46 +0200
Message-ID: <6e419e89-10f1-e448-10fe-64f1ea9ff862@foss.st.com>
Date: Fri, 29 Sep 2023 15:18:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [IGNORE][PATCH v4 01/11] dt-bindings: Document common device
 controller bindings
From: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
To: Greg KH <gregkh@linuxfoundation.org>
CC: <Oleksii_Moisieiev@epam.com>, <herbert@gondor.apana.org.au>,
        <davem@davemloft.net>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <alexandre.torgue@foss.st.com>, <vkoul@kernel.org>, <jic23@kernel.org>,
        <olivier.moysan@foss.st.com>, <arnaud.pouliquen@foss.st.com>,
        <mchehab@kernel.org>, <fabrice.gasnier@foss.st.com>,
        <andi.shyti@kernel.org>, <ulf.hansson@linaro.org>,
        <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
        <hugues.fruchet@foss.st.com>, <lee@kernel.org>, <will@kernel.org>,
        <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <linux-crypto@vger.kernel.org>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20230811100731.108145-1-gatien.chevallier@foss.st.com>
 <20230811100731.108145-2-gatien.chevallier@foss.st.com>
 <2023081117-sprout-cruncher-862c@gregkh>
 <4f0f9d6c-ce4d-73a2-60bf-801c1a1d6cc3@foss.st.com>
Content-Language: en-US
In-Reply-To: <4f0f9d6c-ce4d-73a2-60bf-801c1a1d6cc3@foss.st.com>
X-Originating-IP: [10.201.20.32]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_11,2023-09-28_03,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_061924_002496_9F03618F 
X-CRM114-Status: GOOD (  22.01  )
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

CgpPbiA4LzExLzIzIDE0OjAwLCBHYXRpZW4gQ0hFVkFMTElFUiB3cm90ZToKPiAKPiAKPiBPbiA4
LzExLzIzIDEyOjE2LCBHcmVnIEtIIHdyb3RlOgo+PiBPbiBGcmksIEF1ZyAxMSwgMjAyMyBhdCAx
MjowNzoyMVBNICswMjAwLCBHYXRpZW4gQ2hldmFsbGllciB3cm90ZToKPj4+IEZyb206IE9sZWtz
aWkgTW9pc2llaWV2IDxPbGVrc2lpX01vaXNpZWlldkBlcGFtLmNvbT4KPj4+Cj4+PiBJbnRyb2R1
Y2luZyBvZiB0aGUgY29tbW9uIGRldmljZSBjb250cm9sbGVyIGJpbmRpbmdzIGZvciB0aGUgY29u
dHJvbGxlcgo+Pj4gcHJvdmlkZXIgYW5kIGNvbnN1bWVyIGRldmljZXMuIFRob3NlIGJpbmRpbmdz
IGFyZSBpbnRlbmRlZCB0byBhbGxvdwo+Pj4gZGl2aWRlZCBzeXN0ZW0gb24gY2hpcCBpbnRvIG11
bHRpcGxlIGRvbWFpbnMsIHRoYXQgY2FuIGJlIHVzZWQgdG8KPj4+IGNvbmZpZ3VyZSBoYXJkd2Fy
ZSBwZXJtaXNzaW9ucy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBPbGVrc2lpIE1vaXNpZWlldiA8
b2xla3NpaV9tb2lzaWVpZXZAZXBhbS5jb20+Cj4+PiBbR2F0aWVuOiBGaXggdHlwb3MgYW5kIFlB
TUwgZXJyb3JdCj4+PiBTaWduZWQtb2ZmLWJ5OiBHYXRpZW4gQ2hldmFsbGllciA8Z2F0aWVuLmNo
ZXZhbGxpZXJAZm9zcy5zdC5jb20+Cj4+PiAtLS0KPj4+Cj4+PiBDaGFuZ2VzIGluIFY0Ogo+Pj4g
wqDCoMKgwqBDb3JyZWN0ZWQgdHlwb3MgYW5kIFlBTUwgZXJyb3JzCj4+Cj4+IFdoeSBhcmUgd2Ug
c3VwcG9zZWQgdG8gaWdub3JlIHRoZSBmaXJzdCBwYXRjaCBpbiB0aGlzIHNlcmllcywgYnV0IHBh
eQo+PiBhdHRlbnRpb24gdG8gdGhlIDEwIGFmdGVyIHRoaXMgdGhhdCBkZXBlbmQgb24gaXQ/Cj4+
Cj4+IHRvdGFsbHkgY29uZnVzZWQsCj4+Cj4+IGdyZWcgay1oCj4gCj4gSGVsbG8gR3JlZywKPiAK
PiBJJ20gc29ycnkgdGhhdCB0aGlzIHRhZyB0cm91YmxlcyB5b3VyIHJldmlldy4gSXQgd2FzIGZp
cnN0IHN1Z2dlc3RlZAo+IGluIFsxXS4gVGhlICJJR05PUkUiIG1lYW5zIGlnbm9yZSByZXZpZXcg
b24gdGhpcyB0aHJlYWQsIGFzIGl0IGlzIHN0aWxsCj4gdW5kZXIgcmV2aWV3IGluIGFub3RoZXIg
dGhyZWFkIChMaW5rIGluIHRoZSBjb3ZlciBsZXR0ZXIpLiBJdCBkb2VzIG5vdAo+IG1lYW4gdGhh
dCB0aGUgY29udGVudCBzaG91bGQgYmUgaWdub3JlZCBmb3IgdGhlIHNlcmllcy4gSSB3aWxsIGNo
YW5nZQo+IHRoaXMgdG8gc29tZXRoaW5nIGVsc2UgYXMgdGhpcyBpcyBvYnZpb3VzbHkgY29uZnVz
aW5nIHRoZSByZXZpZXcuCj4gCj4gQE9sZWtzaWksIGNhbiB3ZSBpbWFnaW5lIGludGVncmF0aW5n
IHRoaXMgcGF0Y2ggdG8gdGhpcyBzZXJpZXMgb3IgZG8KPiB5b3UgcHJlZmVyIHRvIGtlZXAgaXQg
YXBhcnQ/Cj4gCgpIaSwKCmFmdGVyIGEgZGlzY3Vzc2lvbiB3aXRoIE9sZWtzaWk6IEknbGwgcmVu
YW1lIHRoZSBiaW5kaW5nIHRvIG5hcnJvdwpkb3duIGl0cyBzY29wZSBhbmQgaW50ZWdyYXRlIHRo
ZSBwYXRjaCBpbiBteSBzZXJpZXMuIFRoaXMgd2F5LCBJJ2xsIGRyb3AKdGhlIFtJR05PUkVdIHRh
Zy4KCj0+IEknbGwgc3RpY2sgd2l0aCB0aGUgZ2VuZXJpYyBiaW5kaW5nIGZvciBWNSAoU29ycnkg
Zm9yIHRoZSBtaXNsZWFkaW5nCiAgICBpbmZvcm1hdGlvbiBpbiB0aGUgcHJldmlvdXMgbWFpbCkK
CkJlc3QgcmVnYXJkcywKR2F0aWVuCgo+IFNob3VsZCBJIGNvbnNpZGVyIGEgcmVzZW5kIHdpdGgg
YW5vdGhlciB0YWcgaWYgT2xla3NpaSBwcmVmZXJzIHRvIGtlZXAKPiB0aGlzIHBhdGNoIGFwYXJ0
Pwo+IAo+IFsxXSAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMWU0OThiOTMtZDNiZC1i
ZDEyLWU5OTEtZTNmNGJlZGY2MzJkQGxpbmFyby5vcmcvCj4gCj4gQmVzdCByZWdhcmRzLAo+IEdh
dGllbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
