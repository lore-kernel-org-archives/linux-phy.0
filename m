Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C8FCC7115B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jun 2025 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVtjqSrMPXPzFaX0MQSNggGfRrusFDPnMYQ/YuWKJzY=; b=o9hAB6JKOs6ycE
	F+T9enfQS7raQhnp51TorQa3VlDcwU65QaYfcETC1in+knBwpphpHaTsh3on8fwmN+wkfEYnxpp17
	wTeIjqEspigbADD56j8IST5J0gW2ETeyfADztKSa2UZVn/VGgy77pLI3xJBOYTbFoVGATjM964pUj
	6W+cUHEUOlJyQUegUUq/GG8wntjqV8qYBzDD0aJLc5meiG0T7fEFLv8K1nT0TCcObNHpOfZ607+ZV
	YWlVltwr0yziTjOD+1ks3XPFlatdD6fTZr5uCL2NVja4VlwLhQoIEl9HPyqlfmD5CBXOJSyu38X7m
	0FgW3BySER+mP0lt2Ecg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSVx7-0000000EvbK-3upM;
	Fri, 20 Jun 2025 07:14:21 +0000
Received: from pi.codeconstruct.com.au ([203.29.241.158] helo=codeconstruct.com.au)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSVsx-0000000EvJv-0owu;
	Fri, 20 Jun 2025 07:10:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1750403401;
	bh=VJVc/Bqimb/04dTPJhdiePqGlWXQYi6s6TXswEG790U=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=aw8vMIFr+cXE2mO/q8Oyu1dt9tnCq1lFaxSAROzAWBthwSXvbUQkKB1U6L6uCSkLL
	 2+acxXCyNDkhpz0/pbbOIZSy1x4qwTS3WjNq1nqRpnfLjTjFo0L1DCpeNywuHWsQNP
	 /xmQNCIlx4wV06dP6nDW2tuKvxvIBMeL/eGduIs1nknST7JZlIbBB3mMSOWU/HGi7u
	 y2y/qZTIOwZgrg6zSoXs3t0MtVzQOeK7/MmIoI9aK6W0XyouS7MCZ00VA2dRKTZQoU
	 ypcf0Lm4d/vLU3gBemeyjhzLtybrXugWPxjIDkxa8T+/Qx3H+QvBYSdQjl4eD/aXfG
	 wY/kl+cgKfeMA==
Received: from [192.168.68.112] (unknown [180.150.112.166])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 40186640A0;
	Fri, 20 Jun 2025 15:09:58 +0800 (AWST)
Message-ID: <10d493cb37748aeb1f4c97856929845727c4c3bc.camel@codeconstruct.com.au>
Subject: Re: [PATCH 6/7] pinctrl: aspeed-g6: Add PCIe RC PERST pin group
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jacky Chou <jacky_chou@aspeedtech.com>, bhelgaas@google.com, 
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 robh@kernel.org,  krzk+dt@kernel.org, conor+dt@kernel.org, joel@jms.id.au,
 vkoul@kernel.org,  kishon@kernel.org, linus.walleij@linaro.org,
 p.zabel@pengutronix.de,  linux-aspeed@lists.ozlabs.org,
 linux-pci@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org,  openbmc@lists.ozlabs.org,
 linux-gpio@vger.kernel.org
Cc: elbadrym@google.com, romlem@google.com, anhphan@google.com,
 wak@google.com,  yuxiaozhang@google.com, BMC-SW@aspeedtech.com
Date: Fri, 20 Jun 2025 16:39:57 +0930
In-Reply-To: <20250613033001.3153637-7-jacky_chou@aspeedtech.com>
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
	 <20250613033001.3153637-7-jacky_chou@aspeedtech.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_001003_432153_67B4BAD0 
X-CRM114-Status: GOOD (  11.72  )
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

T24gRnJpLCAyMDI1LTA2LTEzIGF0IDExOjMwICswODAwLCBKYWNreSBDaG91IHdyb3RlOgo+IFRo
ZSBQQ0llIFJDIFBFUlNUIHVzZXMgU1NQUlNUIyBhcyBQRVJTVCPCoCBhbmQgZW5hYmxlIHRoaXMg
cGluCj4gdG8gb3V0cHV0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphY2t5IENob3UgPGphY2t5X2No
b3VAYXNwZWVkdGVjaC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL3BpbmN0cmwvYXNwZWVkL3BpbmN0
cmwtYXNwZWVkLWc2LmMgfCAxMiArKysrKysrKysrKy0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGlu
Y3RybC9hc3BlZWQvcGluY3RybC1hc3BlZWQtZzYuYyBiL2RyaXZlcnMvcGluY3RybC9hc3BlZWQv
cGluY3RybC1hc3BlZWQtZzYuYwo+IGluZGV4IDVhN2NkMGE4ODY4Ny4uYzc1MTcwM2FjZGI5IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9hc3BlZWQvcGluY3RybC1hc3BlZWQtZzYuYwo+
ICsrKyBiL2RyaXZlcnMvcGluY3RybC9hc3BlZWQvcGluY3RybC1hc3BlZWQtZzYuYwo+IEBAIC0x
Nyw2ICsxNyw3IEBACj4gwqAjaW5jbHVkZSAiLi4vcGluY3RybC11dGlscy5oIgo+IMKgI2luY2x1
ZGUgInBpbmN0cmwtYXNwZWVkLmgiCj4gwqAKPiArI2RlZmluZSBTQ1UwNDDCoMKgwqDCoMKgwqDC
oMKgwqAweDA0MCAvKiBSZXNldCBDb250cm9sIFNldCAxwqAgKi8KPiDCoCNkZWZpbmUgU0NVNDAw
wqDCoMKgwqDCoMKgwqDCoMKgMHg0MDAgLyogTXVsdGktZnVuY3Rpb24gUGluIENvbnRyb2wgIzHC
oCAqLwo+IMKgI2RlZmluZSBTQ1U0MDTCoMKgwqDCoMKgwqDCoMKgwqAweDQwNCAvKiBNdWx0aS1m
dW5jdGlvbiBQaW4gQ29udHJvbCAjMsKgICovCj4gwqAjZGVmaW5lIFNDVTQwQ8KgwqDCoMKgwqDC
oMKgwqDCoDB4NDBDIC8qIE11bHRpLWZ1bmN0aW9uIFBpbiBDb250cm9sICMzwqAgKi8KPiBAQCAt
NTIsNyArNTMsNyBAQAo+IMKgI2RlZmluZSBTQ1U2RDDCoMKgwqDCoMKgwqDCoMKgwqAweDZEMCAv
KiBNdWx0aS1mdW5jdGlvbiBQaW4gQ29udHJvbCAjMjkgKi8KPiDCoCNkZWZpbmUgU0NVQzIwwqDC
oMKgwqDCoMKgwqDCoMKgMHhDMjAgLyogUENJRSBjb25maWd1cmF0aW9uIFNldHRpbmcgQ29udHJv
bCAqLwo+IMKgCj4gLSNkZWZpbmUgQVNQRUVEX0c2X05SX1BJTlMgMjU2Cj4gKyNkZWZpbmUgQVNQ
RUVEX0c2X05SX1BJTlMgMjU4Cj4gwqAKPiDCoCNkZWZpbmUgTTI0IDAKPiDCoFNJR19FWFBSX0xJ
U1RfREVDTF9TRVNHKE0yNCwgTURDMywgTURJTzMsIFNJR19ERVNDX1NFVChTQ1U0MTAsIDApKTsK
PiBAQCAtMTYzNiw2ICsxNjM3LDEyIEBAIEZVTkNfREVDTF8xKFVTQjExQkhJRCwgVVNCQik7Cj4g
wqBGVU5DX0RFQ0xfMShVU0IyQkQsIFVTQkIpOwo+IMKgRlVOQ19ERUNMXzEoVVNCMkJILCBVU0JC
KTsKPiDCoAo+ICsjZGVmaW5lIEQ3IDI1Nwo+ICtTSUdfRVhQUl9MSVNUX0RFQ0xfU0VTRyhENywg
UkNSU1QsIFBDSUVSQzEsIFNJR19ERVNDX1NFVChTQ1UwNDAsIDE5KSwKClRoZSBkb2N1bWVudGF0
aW9uIGZvciBTQ1UwNDBbMTldIHNheXMgaXQgd2lsbCBhc3NlcnQgdGhlIHJlc2V0LiBJCmV4cGVj
dCB0aGF0J3Mgbm90IHdoYXQncyBkZXNpcmVkLgoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoFNJR19ERVNDX1NFVChTQ1U1MDAsIDI0KSk7CgpTQ1U1MDBb
MjRdIHNlZW1zIG9rYXkuCgo+ICtQSU5fREVDTF8oRDcsIFNJR19FWFBSX0xJU1RfUFRSKEQ3LCBS
Q1JTVCkpOwo+ICtGVU5DX0dST1VQX0RFQ0woUENJRVJDMSwgRDcpOwoKSXQgb25seSBtYWtlcyBz
ZW5zZSB0byBkZXNjcmliZSBwaW5zIHdpdGggbXVsdGlwbGUgZnVuY3Rpb25zLiBUaGUgb3RoZXIK
ZnVuY3Rpb24gdGhpcyBwaW4gaGFzIGlzIHRoZSByZXNldCBsaW5lIGZvciB0aGUgc2Vjb25kYXJ5
IHNlcnZpY2UKcHJvY2Vzc29yLiBDYW4gd2UgZGVzY3JpYmUgdGhhdCB0b28/CgpBbmRyZXcKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
