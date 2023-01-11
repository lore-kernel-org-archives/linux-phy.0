Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56F72C46467
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jan 2023 09:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pt0gAm4PsgIRN7D/osUTIWrphq3HZjt1iA7j6uj3ymg=; b=LjDuO+zjNOKO2G
	BTWL3DrHFVk0UPWPgPAa3GPUswYVtZtwi8+DGKHwAoG6SNFBShpdMPUUvwqVk2lz0GaBAfwcTfydC
	TjEkQeGrBIlTgFbFfzb6VUearajJxDGpilNtEBnhxDsR0Fe2LFdwAXt523Qp11QGHvjl8zBltwX+K
	9t8qZ1jXmWD705FB9UpicNtCdCPEMooED2MUXdTFYC7qm43bzFMmUq1Gnd0sFpknZJmCg5rq5r8dF
	cA/VGWMsd+VBN7MkqZNUdKDNoWdNiCePvYhiZNfhozKzRJLo9MqsYbtyWNlP2FjmB7xyVRw8jVFEU
	vyrJblRf3PPNCWOjya6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXou-00Ae1C-KK; Wed, 11 Jan 2023 09:54:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXor-00Ae0I-5A
	for linux-phy@lists.infradead.org; Wed, 11 Jan 2023 09:54:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9F77261B8E;
	Wed, 11 Jan 2023 09:54:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 428EBC433D2;
	Wed, 11 Jan 2023 09:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673430892;
	bh=kbawuu+G4uhdhk6Z3iHZybE1MSwuvuLFahb8EbDh9VM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BQoovrkzqShYA5ElXnNFPZZMv8OCDbzkP7k+/fTO0DWODS9jAXrtliuh3qjaSkwpu
	 65apxuUgPGLr/gj7eW/qE0qAsCwasphkV//btWgaOOK8z3Uner+mpVXULd7Md+Pjet
	 U7cu8oWMPawGFJAD/sJH9xWMwqJqZczd79EVKm7E9tianfU/cyl6Pf9YSjlG3Br0RE
	 Ngqy4ejUdsJKC6JO1LQD3NxK6E7592v9u57Q97gEszAHVR3srbDEcGDQxiT3NMV1+t
	 3ToMATiJX9TQSauuDlN0+RginTu5NVmCryA37cBZtG6SQA4BzTAjMNNgqh5C17yW0R
	 xXca0N8L9iwJg==
Message-ID: <cf854af6-fbbc-6e5c-f773-c4a868d85278@kernel.org>
Date: Wed, 11 Jan 2023 11:54:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH V2 2/2] phy: ti: j721e-wiz: Add support to enable LN23
 Type-C swap
Content-Language: en-US
To: Sinthu Raja <sinthu.raja@mistralsolutions.com>,
 Vinod Koul <vkoul@kernel.org>, Ravi Gunasekaran <r-gunasekaran@ti.com>,
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
References: <20230106071714.30562-1-sinthu.raja@ti.com>
 <20230106071714.30562-3-sinthu.raja@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230106071714.30562-3-sinthu.raja@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_015453_295642_2A38AB27 
X-CRM114-Status: GOOD (  28.57  )
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

SGkgU2ludGh1LAoKT24gMDYvMDEvMjAyMyAwOToxNywgU2ludGh1IFJhamEgd3JvdGU6Cj4gRnJv
bTogU2ludGh1IFJhamEgPHNpbnRodS5yYWphQHRpLmNvbT4KPiAKPiBUaGXCoFdJWiBhY3RzIGFz
IGEgd3JhcHBlciBmb3IgU2VyRGVzIGFuZMKgaGFzwqBMYW5lcyAwIGFuZMKgMiByZXNlcnZlZAo+
IGZvciBVU0IgZm9yIHR5cGUtQyBsYW5lIHN3YXAgaWYgTGFuZSAxIGFuZCBMYW5lIDMgYXJlIGxp
bmtlZCB0byB0aGUKPiBVU0IgUEhZIHRoYXQgaXMgaW50ZWdyYXRlZCBpbnRvIHRoZSBTZXJEZXMg
SVAuIFRoZSBXSVogY29udHJvbCByZWdpc3Rlcgo+IGhhcyB0byBiZSBjb25maWd1cmVkIHRvIHN1
cHBvcnQgdGhpcyBsYW5lIHN3YXAgZmVhdHVyZS4KPiAKPiBUaGUgc3VwcG9ydCBmb3Igc3dhcHBp
bmcgbGFuZXMgMiBhbmQgMyBpcyBtaXNzaW5nIGFuZCB0aGVyZWZvcmUKPiBhZGQgc3VwcG9ydCB0
byBjb25maWd1cmUgdGhlIGNvbnRyb2wgcmVnaXN0ZXIgdG8gc3dhcCBiZXR3ZWVuCj4gbGFuZXMg
MiBhbmQgMyBpZiBQSFkgdHlwZSBpcyBVU0IuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2ludGh1IFJh
amEgPHNpbnRodS5yYWphQHRpLmNvbT4KPiAtLS0KPiAKPiBDaGFuZ2VzIGluIFYyOgo+ID09PT09
PT09PT09PT0KPiBBZGRyZXNzIHJldmlldyBjb21tZW50czoKPiAtIFVwZGF0ZSBjb21taXQgZGVz
Y3JpcHRpb24uCj4gLSBSZW5hbWUgZW51bSB2YXJpYWJsZSBuYW1lIGZyb20gd2l6X2xhbmVfdHlw
ZWNfc3dhcF9tb2RlIHRvIHdpel90eXBlY19tYXN0ZXJfbGFuZS4KPiAtIFJlbmFtZSBlbnVtZXJh
dG9ycyBuYW1lIHNwZWNpZmljIHRvIGxpc3Qgb2YgbWFzdGVyIGxhbmVzIHVzZWQgZm9yIGxhbmUg
c3dhcHBpbmcuCj4gLSBBZGQgaW5saW5lIGNvbW1lbnRzLgo+IAo+IFYxOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9sa21sLzIwMjIxMjEzMTI0ODU0LjM3NzktMi1zaW50aHUucmFqYUB0aS5jb20v
VC8jbTVlMmQxYTE1ZDY0N2Y1ZGY5ZGQyOGVkMmRlZGM0YjA4MTJkNjQ2NmYKPiAKPiAgZHJpdmVy
cy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgMzMgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMgYi9kcml2
ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKPiBpbmRleCA1NzFmMGNhMTg4NzQuLjgxNWU4MTI0
Yjk0YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKPiArKysg
Yi9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKPiBAQCAtNTgsNiArNTgsMTQgQEAgZW51
bSB3aXpfbGFuZV9zdGFuZGFyZF9tb2RlIHsKPiAgCUxBTkVfTU9ERV9HRU40LAo+ICB9Owo+ICAK
PiArLyoKPiArICogTGlzdCBvZiBtYXN0ZXIgbGFuZXMgdXNlZCBmb3IgbGFuZSBzd2FwcGluZwo+
ICsgKi8KPiArZW51bSB3aXpfdHlwZWNfbWFzdGVyX2xhbmUgewo+ICsJTEFORTAgPSAwLAo+ICsJ
TEFORTIgPSAyLAo+ICt9Owo+ICsKPiAgZW51bSB3aXpfcmVmY2xrX211eF9zZWwgewo+ICAJUExM
MF9SRUZDTEssCj4gIAlQTEwxX1JFRkNMSywKPiBAQCAtMTk0LDYgKzIwMiw5IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgcmVnX2ZpZWxkIHBfbWFjX2Rpdl9zZWwxW1dJWl9NQVhfTEFORVNdID0gewo+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ19maWVsZCB0eXBlY19sbjEwX3N3YXAgPQo+ICAJCQkJ
CVJFR19GSUVMRChXSVpfU0VSREVTX1RZUEVDLCAzMCwgMzApOwo+ICAKPiArc3RhdGljIGNvbnN0
IHN0cnVjdCByZWdfZmllbGQgdHlwZWNfbG4yM19zd2FwID0KPiArCQkJCQlSRUdfRklFTEQoV0la
X1NFUkRFU19UWVBFQywgMzEsIDMxKTsKPiArCj4gIHN0cnVjdCB3aXpfY2xrX211eCB7Cj4gIAlz
dHJ1Y3QgY2xrX2h3CQlodzsKPiAgCXN0cnVjdCByZWdtYXBfZmllbGQJKmZpZWxkOwo+IEBAIC0z
NjcsNiArMzc4LDcgQEAgc3RydWN0IHdpeiB7Cj4gIAlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSptdXhf
c2VsX2ZpZWxkW1dJWl9NVVhfTlVNX0NMT0NLU107Cj4gIAlzdHJ1Y3QgcmVnbWFwX2ZpZWxkCSpk
aXZfc2VsX2ZpZWxkW1dJWl9ESVZfTlVNX0NMT0NLU18xNkddOwo+ICAJc3RydWN0IHJlZ21hcF9m
aWVsZAkqdHlwZWNfbG4xMF9zd2FwOwo+ICsJc3RydWN0IHJlZ21hcF9maWVsZAkqdHlwZWNfbG4y
M19zd2FwOwo+ICAJc3RydWN0IHJlZ21hcF9maWVsZAkqc3VwX2xlZ2FjeV9jbGtfb3ZlcnJpZGU7
Cj4gIAo+ICAJc3RydWN0IGRldmljZQkJKmRldjsKPiBAQCAtNjc2LDYgKzY4OCwxMyBAQCBzdGF0
aWMgaW50IHdpel9yZWdmaWVsZF9pbml0KHN0cnVjdCB3aXogKndpeikKPiAgCQlyZXR1cm4gUFRS
X0VSUih3aXotPnR5cGVjX2xuMTBfc3dhcCk7Cj4gIAl9Cj4gIAo+ICsJd2l6LT50eXBlY19sbjIz
X3N3YXAgPSBkZXZtX3JlZ21hcF9maWVsZF9hbGxvYyhkZXYsIHJlZ21hcCwKPiArCQkJCQkJICAg
ICAgIHR5cGVjX2xuMjNfc3dhcCk7Cj4gKwlpZiAoSVNfRVJSKHdpei0+dHlwZWNfbG4yM19zd2Fw
KSkgewo+ICsJCWRldl9lcnIoZGV2LCAiTE4yM19TV0FQIHJlZyBmaWVsZCBpbml0IGZhaWxlZFxu
Iik7Cj4gKwkJcmV0dXJuIFBUUl9FUlIod2l6LT50eXBlY19sbjIzX3N3YXApOwo+ICsJfQo+ICsK
PiAgCXdpei0+cGh5X2VuX3JlZmNsayA9IGRldm1fcmVnbWFwX2ZpZWxkX2FsbG9jKGRldiwgcmVn
bWFwLCBwaHlfZW5fcmVmY2xrKTsKPiAgCWlmIChJU19FUlIod2l6LT5waHlfZW5fcmVmY2xrKSkg
ewo+ICAJCWRldl9lcnIoZGV2LCAiUEhZX0VOX1JFRkNMSyByZWcgZmllbGQgaW5pdCBmYWlsZWRc
biIpOwo+IEBAIC0xMjU0LDkgKzEyNzMsMTcgQEAgc3RhdGljIGludCB3aXpfcGh5X3Jlc2V0X2Rl
YXNzZXJ0KHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAqcmNkZXYsCj4gIAkJCWludCBpOwo+
ICAKCkRvbid0IHlvdSBoYXZlIHRvIHVwZGF0ZSB0aGUgYmVsb3cgY29tbWVudCB5b3UgYWRkZWQg
aW4gcGF0Y2ggMSB0byBtZW50aW9uIGFib3V0IExOMjMgYXMgd2VsbD8KCisJCQkvKiBpZiBubyB0
eXBlYy1kaXIgZ3BpbyB3YXMgc3BlY2lmaWVkIGFuZCBQSFkgdHlwZSBpcworCQkJICogVVNCMyB3
aXRoIG1hc3RlciBsYW5lIG51bWJlciBpcyAnMCcsIHNldCBMTjEwIFNXQVAKKwkJCSAqIGJpdCB0
byAnMScKKwkJCSAqLwoKCj4gIAkJCWZvciAoaSA9IDA7IGkgPCBudW1fbGFuZXM7IGkrKykgewo+
IC0JCQkJaWYgKCh3aXotPmxhbmVfcGh5X3R5cGVbaV0gPT0gUEhZX1RZUEVfVVNCMykKPiAtCQkJ
CQkJJiYgd2l6LT5tYXN0ZXJfbGFuZV9udW1baV0gPT0gMCkgewo+IC0JCQkJCXJlZ21hcF9maWVs
ZF93cml0ZSh3aXotPnR5cGVjX2xuMTBfc3dhcCwgMSk7Cj4gKwkJCQlpZiAod2l6LT5sYW5lX3Bo
eV90eXBlW2ldID09IFBIWV9UWVBFX1VTQjMpIHsKPiArCQkJCQlzd2l0Y2ggKHdpei0+bWFzdGVy
X2xhbmVfbnVtW2ldKSB7Cj4gKwkJCQkJY2FzZSBMQU5FMDoKPiArCQkJCQkJcmVnbWFwX2ZpZWxk
X3dyaXRlKHdpei0+dHlwZWNfbG4xMF9zd2FwLCAxKTsKPiArCQkJCQkJYnJlYWs7Cj4gKwkJCQkJ
Y2FzZSBMQU5FMjoKPiArCQkJCQkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+dHlwZWNfbG4yM19z
d2FwLCAxKTsKPiArCQkJCQkJYnJlYWs7Cj4gKwkJCQkJZGVmYXVsdDoKPiArCQkJCQkJYnJlYWs7
Cj4gKwkJCQkJfQo+ICAJCQkJfQo+ICAJCQl9Cj4gIAkJfQoKT3RoZXJ3aXNlIGxvb2tzIGdvb2Qu
CgpjaGVlcnMsCi1yb2dlcgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
