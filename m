Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93D9CD128A
	for <linux-phy@archiver.kernel.org>; Thu, 11 Apr 2024 09:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFIhH53ivVEMCx2rm+P1S1F9zEDScTeH/yMpJoAXmlg=; b=15hZeVHxbdXoit
	910yUDaau1Uu+eh0FKHqHcb+mia+V7Rt5QJq7J7c05K0ZlAtQB04WqulVHlPKA66prTDKF7zF/EjS
	iHF6H+ynyPM1+UjgmKh0h7LLZGOlKof8oyPU58PC/wigTItft/EiYJtnOe/jCtYjjNC9ilZ5LZNb1
	+3nTYo7wWc5XwaqqsHOaGa6Jk4oCDP3y1hP9BVpWEATKohNULgI00c2URznLwDBHh2XVFhcUDAwBA
	FyKLGByy61ug3WVXFtO0Vpq7qoittnu6KqRvOQykJyRBE21fiZ8ya7iS0eGLfSLvNKBf0CwLeK9pc
	L9LqmbbzC+FQ+3cSkhtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruqtx-0000000BMOS-12Cx;
	Thu, 11 Apr 2024 09:39:25 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruqtt-0000000BMKW-35xF;
	Thu, 11 Apr 2024 09:39:23 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 43B7Pfi7029833;
	Thu, 11 Apr 2024 11:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=6rfS5zPiSmzZMMxQ4v6y7X7sH1FVnmMas6q+NGiPbP0=; b=RH
	23LTkuSOQZgrLqSQPcyDWEaHansF0FyzusSDHHejYeeQubA/RF03+Fcw0JO1uxMG
	vxF1TpPcpGgm0D5a22KTGFQ7B10VA0NGWF7kWPIuCEes6xP+vVpTvGT3WcMqMrto
	D4vR5lrxgA/glhjYfqpRe5c0L23nsZVK7DVfPfG0lEV5OCEp0AXAts6p2Sz8Eqn+
	pfNDTysrxZZj3w6etWkPop5DdColzGvEkh0mS5oMq1L4D7HeqW1uQ1DiKhu8ho9x
	WWExS/Zmj9aq87LkaFiH+L0wv8VNYlPBEg0uHS/sXlEIu+kMGooWvN+/JWrTbuwL
	XfW02l4cyVpCxpiEPg5w==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3xbfy12h6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 Apr 2024 11:38:51 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id D322A4002D;
	Thu, 11 Apr 2024 11:38:34 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 906DE2132CA;
	Thu, 11 Apr 2024 11:37:27 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 11 Apr
 2024 11:37:25 +0200
Message-ID: <ee47d2e8-763f-4451-b9f3-b46ded4c1b97@foss.st.com>
Date: Thu, 11 Apr 2024 11:37:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 00/13] Introduce STM32 Firewall framework
To: Rob Herring <robh+dt@kernel.org>
CC: Gatien Chevallier <gatien.chevallier@foss.st.com>,
        <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <jic23@kernel.org>, <olivier.moysan@foss.st.com>,
        <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <andi.shyti@kernel.org>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <hugues.fruchet@foss.st.com>, <lee@kernel.org>,
        <will@kernel.org>, <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <lars@metafoo.de>, <rcsekar@samsung.com>,
        <wg@grandegger.com>, <mkl@pengutronix.de>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
References: <20240105130404.301172-1-gatien.chevallier@foss.st.com>
 <61608010-fbce-46c6-a83d-94c04d0f000d@foss.st.com>
 <CAL_JsqJTiBK3qzdMzL-ZuARosKGqnf_PjyCj13_H=V415y9sHQ@mail.gmail.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <CAL_JsqJTiBK3qzdMzL-ZuARosKGqnf_PjyCj13_H=V415y9sHQ@mail.gmail.com>
X-Originating-IP: [10.48.86.79]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-11_03,2024-04-09_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_023922_094889_DFCD90CB 
X-CRM114-Status: GOOD (  18.29  )
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

SGkgUm9iCgpPbiA0LzkvMjQgMTk6MTMsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIE1vbiwgQXBy
IDgsIDIwMjQgYXQgMzo0NOKAr0FNIEFsZXhhbmRyZSBUT1JHVUUKPiA8YWxleGFuZHJlLnRvcmd1
ZUBmb3NzLnN0LmNvbT4gd3JvdGU6Cj4+Cj4+IEhpIEdhdGllbiwKPj4KPj4gT24gMS81LzI0IDE0
OjAzLCBHYXRpZW4gQ2hldmFsbGllciB3cm90ZToKPj4+IEludHJvZHVjZSBTVE0zMiBGaXJld2Fs
bCBmcmFtZXdvcmsgZm9yIFNUTTMyTVAxeCBhbmQgU1RNMzJNUDJ4Cj4+PiBwbGF0Zm9ybXMuIFNU
TTMyTVAxeChFVFpQQykgYW5kIFNUTTMyTVAyeChSSUZTQykgRmlyZXdhbGwgY29udHJvbGxlcnMK
Pj4+IHJlZ2lzdGVyIHRvIHRoZSBmcmFtZXdvcmsgdG8gb2ZmZXIgZmlyZXdhbGwgc2VydmljZXMg
c3VjaCBhcyBhY2Nlc3MKPj4+IGdyYW50aW5nLgo+Pj4KPj4+IFRoaXMgc2VyaWVzIG9mIHBhdGNo
ZXMgaXMgYSBuZXcgYXBwcm9hY2ggb24gdGhlIHByZXZpb3VzIFNUTTMyIHN5c3RlbQo+Pj4gYnVz
LCBoaXN0b3J5IGlzIGF2YWlsYWJsZSBoZXJlOgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8yMDIzMDEyNzE2NDA0MC4xMDQ3NTgzLwo+Pj4KPj4+IFRoZSBuZWVkIGZvciBzdWNoIGZy
YW1ld29yayBhcmlzZXMgZnJvbSB0aGUgZmFjdCB0aGF0IHRoZXJlIGFyZSBub3cKPj4+IG11bHRp
cGxlIGhhcmR3YXJlIGZpcmV3YWxscyBpbXBsZW1lbnRlZCBhY3Jvc3MgbXVsdGlwbGUgcHJvZHVj
dHMuCj4+PiBEcml2ZXJzIGFyZSBzaGFyZWQgYmV0d2VlbiBkaWZmZXJlbnQgcHJvZHVjdHMsIHVz
aW5nIHRoZSBzYW1lIGNvZGUuCj4+PiBXaGVuIGl0IGNvbWVzIHRvIGZpcmV3YWxscywgdGhlIHB1
cnBvc2UgbW9zdGx5IHN0YXlzIHRoZSBzYW1lOiBQcm90ZWN0Cj4+PiBoYXJkd2FyZSByZXNvdXJj
ZXMuIEJ1dCB0aGUgaW1wbGVtZW50YXRpb24gZGlmZmVycywgYW5kIHRoZXJlIGFyZQo+Pj4gbXVs
dGlwbGUgdHlwZXMgb2YgZmlyZXdhbGxzOiBwZXJpcGhlcmFsLCBtZW1vcnksIC4uLgo+Pj4KPj4+
IFNvbWUgaGFyZHdhcmUgZmlyZXdhbGwgY29udHJvbGxlcnMgc3VjaCBhcyB0aGUgUklGU0MgaW1w
bGVtZW50ZWQgb24KPj4+IFNUTTMyTVAyeCBwbGF0Zm9ybXMgbWF5IHJlcXVpcmUgdG8gdGFrZSBv
d25lcnNoaXAgb2YgYSByZXNvdXJjZSBiZWZvcmUKPj4+IGJlaW5nIGFibGUgdG8gdXNlIGl0LCBo
ZW5jZSB0aGUgcmVxdWlyZW1lbnQgZm9yIGZpcmV3YWxsIHNlcnZpY2VzIHRvCj4+PiB0YWtlL3Jl
bGVhc2UgdGhlIG93bmVyc2hpcCBvZiBzdWNoIHJlc291cmNlcy4KPj4+Cj4+PiBPbiB0aGUgb3Ro
ZXIgaGFuZCwgaGFyZHdhcmUgZmlyZXdhbGwgY29uZmlndXJhdGlvbnMgYXJlIGJlY29taW5nCj4+
PiBtb3JlIGFuZCBtb3JlIGNvbXBsZXguIFRoZXNlIG1lY2FuaXNtcyBwcmV2ZW50IHBsYXRmb3Jt
IGNyYXNoZXMKPj4+IG9yIG90aGVyIGZpcmV3YWxsLXJlbGF0ZWQgaW5jb3ZlbmllbmNlcyBieSBk
ZW55aW5nIGFjY2VzcyB0byBzb21lCj4+PiByZXNvdXJjZXMuCj4+Pgo+Pj4gVGhlIHN0bTMyIGZp
cmV3YWxsIGZyYW1ld29yayBvZmZlcnMgYW4gQVBJIHRoYXQgaXMgZGVmaW5lZCBpbgo+Pj4gZmly
ZXdhbGwgY29udHJvbGxlcnMgZHJpdmVycyB0byBiZXN0IGZpdCB0aGUgc3BlY2lmaWNpdHkgb2Yg
ZWFjaAo+Pj4gZmlyZXdhbGwuCj4+Pgo+Pj4gRm9yIGV2ZXJ5IHBlcmlwaGVyYWxzIHByb3RlY3Rl
ZCBieSBlaXRoZXIgdGhlIEVUWlBDIG9yIHRoZSBSSUZTQywgdGhlCj4+PiBmaXJld2FsbCBmcmFt
ZXdvcmsgY2hlY2tzIHRoZSBmaXJld2FsbCBjb250cm9sZWxyIHJlZ2lzdGVycyB0byBzZWUgaWYK
Pj4+IHRoZSBwZXJpcGhlcmFsJ3MgYWNjZXNzIGlzIGdyYW50ZWQgdG8gdGhlIExpbnV4IGtlcm5l
bC4gSWYgbm90LCB0aGUKPj4+IHBlcmlwaGVyYWwgaXMgY29uZmlndXJlZCBhcyBzZWN1cmUsIHRo
ZSBub2RlIGlzIG1hcmtlZCBwb3B1bGF0ZWQsCj4+PiBzbyB0aGF0IHRoZSBkcml2ZXIgaXMgbm90
IHByb2JlZCBmb3IgdGhhdCBkZXZpY2UuCj4+Pgo+Pj4gVGhlIGZpcmV3YWxsIGZyYW1ld29yayBy
ZWxpZXMgb24gdGhlIGFjY2Vzcy1jb250cm9sbGVyIGRldmljZSB0cmVlCj4+PiBiaW5kaW5nLiBJ
dCBpcyB1c2VkIGJ5IHBlcmlwaGVyYWxzIHRvIHJlZmVyZW5jZSBhIGRvbWFpbiBhY2Nlc3MKPj4+
IGNvbnRyb2xsZXIuIEluIHRoaXMgY2FzZSBhIGZpcmV3YWxsIGNvbnRyb2xsZXIuIFRoZSBidXMg
dXNlcyB0aGUgSUQKPj4+IHJlZmVyZW5jZWQgYnkgdGhlIGFjY2Vzcy1jb250cm9sbGVyIHByb3Bl
cnR5IHRvIGtub3cgd2hlcmUgdG8gbG9vawo+Pj4gaW4gdGhlIGZpcmV3YWxsIHRvIGdldCB0aGUg
c2VjdXJpdHkgY29uZmlndXJhdGlvbiBmb3IgdGhlIHBlcmlwaGVyYWwuCj4+PiBUaGlzIGFsbG93
cyBhIGRldmljZSB0cmVlIGRlc2NyaXB0aW9uIHJhdGhlciB0aGFuIGEgaGFyZGNvZGVkIHBlcmlw
aGVyYWwKPj4+IHRhYmxlIGluIHRoZSBidXMgZHJpdmVyLgo+Pj4KPj4+IFRoZSBTVE0zMiBFVFpQ
QyBkZXZpY2UgaXMgcmVzcG9uc2libGUgZm9yIGZpbHRlcmluZyBhY2Nlc3NlcyBiYXNlZCBvbgo+
Pj4gc2VjdXJpdHkgbGV2ZWwsIG9yIGNvLXByb2Nlc3NvciBpc29sYXRpb24gZm9yIGFueSByZXNv
dXJjZSBjb25uZWN0ZWQKPj4+IHRvIGl0Lgo+Pj4KPj4+IFRoZSBSSUZTQyBpcyByZXNwb25zaWJs
ZSBmb3IgZmlsdGVyaW5nIGFjY2Vzc2VzIGJhc2VkIG9uIENvbXBhcnRtZW50Cj4+PiBJRCAvIHNl
Y3VyaXR5IGxldmVsIC8gcHJpdmlsZWdlIGxldmVsIGZvciBhbnkgcmVzb3VyY2UgY29ubmVjdGVk
IHRvCj4+PiBpdC4KPj4+Cj4+PiBTVE0zMk1QMTMvMTUvMjUgU29DIGRldmljZSB0cmVlIGZpbGVz
IGFyZSB1cGRhdGVkIGluIHRoaXMgc2VyaWVzIHRvCj4+PiBpbXBsZW1lbnQgdGhpcyBtZWNhbmlz
bS4KPj4+Cj4+Cj4+IC4uLgo+Pgo+PiBBZnRlciBtaW5vciBjb3NtZXRpYyBmaXhlcywgc2VyaWVz
IGFwcGxpZWQgb24gc3RtMzItbmV4dC4KPj4gU2VlbiB3aXRoIEFybmQ6IGl0IHdpbGwgYmUgcGFy
dCBvbiBteSBuZXh0IFBSIGFuZCB3aWxsIGNvbWUgdGhyb3VnaAo+PiBhcm0tc29jIHRyZWUuCj4g
Cj4gQW5kIHRoZXJlJ3Mgc29tZSBuZXcgd2FybmluZ3MgaW4gbmV4dCB3aXRoIGl0Ogo+IAo+ICAg
ICAgICAxICB2ZW5jQDQ4MGUwMDAwOiAnYWNjZXNzLWNvbnRyb2xsZXJzJyBkb2VzIG5vdCBtYXRj
aCBhbnkgb2YgdGhlCj4gcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwo+ICAgICAgICAxICB2ZGVj
QDQ4MGQwMDAwOiAnYWNjZXNzLWNvbnRyb2xsZXJzJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhl
Cj4gcmVnZXhlczogJ3BpbmN0cmwtWzAtOV0rJwoKWWVzIEkgbm90aWNlZCBpdCB0byBteSBjb2xs
ZWFndWUuIFlBTUwgdXBkYXRlIGhhcyBiZWVuIHNlbnQgZm9yIFZFTkQvVkRFTkMuCgpodHRwczov
L2xvcmUua2VybmVsLm9yZy9sa21sLzE3MTI3NjY3MTYxOC40MDM4ODQuMTM4MTg0ODAzNTAxOTQ1
NTA5NTkucm9iaEBrZXJuZWwub3JnL1QvCgpBcyBzb29uIGFzIGl0IGlzIGFja2VkIEkgY291bGQg
bWVyZ2UgaXQgaW4gbXkgdHJlZS4KCkFsZXgKCj4gCj4gUm9iCgoKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
