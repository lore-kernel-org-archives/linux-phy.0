Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44971C531D4
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZqhW7VvoGnIkTCNbWm/hNf7lS5e8MKFtDkrgo8Aq9o=; b=XNLVPLosxHC9P1
	0cTKqaUG51suCn1Nm3Djhj7WQblhxzwu+kW14P8Ey7Hd1ZLqMvTz2LzWWSKp62hQne/LdUFDmyq8d
	Xt68I0TyuCH026Ykd6OU76L/Gclnu6XHtMIMBUWjw1x/XFVfUYZ3zPuAEylRw6oe3zbIqODlHei7H
	bJruEyGKW9BrUyCRp0LQ9Y5VIAzyk200gvbYoJCmjF7Pb0EJrhGriSzJAYjx4oKEjA/S+6OxngUON
	KjPSyRxkp5zAXk7D6dLQTaTLTjGnekUIihBYbhzzgeM0kXTic/SDlkdO/cqYj2k14SuCD6O42Kffh
	vlrBcI1xYYOJDN3a5A3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmu3I-0000000ESJ7-43Om;
	Thu, 23 Jul 2026 14:05:32 +0000
Received: from smtp81.cstnet.cn ([159.226.251.81] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmu3F-0000000ESHa-0m8z
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 14:05:31 +0000
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.100.114])
	by APP-03 (Coremail) with SMTP id rQCowAAnM0GkH2JqeLvtAA--.65491S2;
	Thu, 23 Jul 2026 22:05:25 +0800 (CST)
Message-ID: <8ccf1a36179881b1f9662e70d728322c62c88f78.camel@iscas.ac.cn>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add binding for T-Head TH1520
 USB PHY
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, 
	neil.armstrong@linaro.org
Date: Thu, 23 Jul 2026 22:05:24 +0800
In-Reply-To: <20260723084759.3BBF81F000E9@smtp.kernel.org>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
	 <20260723084316.3573714-2-zhengxingda@iscas.ac.cn>
	 <20260723084759.3BBF81F000E9@smtp.kernel.org>
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
X-CM-TRANSID: rQCowAAnM0GkH2JqeLvtAA--.65491S2
X-Coremail-Antispam: 1UD129KBjvJXoW7ur45JF4rCF4kuF4xJryxKrg_yoW8Kw4fpa
	93GFy2qF1ktr9YvanrJw109F12qFs8uF15Gr1rXr1kXws8uw1Fqr9akrZ8uay8Jr4kWFW2
	yFsruas3Jr1vk3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkFb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCY1x0262kKe7AKxVWUAVWUtwCF04k2
	0xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI
	8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41l
	IxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIx
	AIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2
	jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07bYYLPUUUUU=
X-Originating-IP: [112.94.100.114]
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_070529_595539_97619737 
X-CRM114-Status: GOOD (  19.43  )
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

5ZyoIDIwMjYtMDctMjPlm5vnmoQgMDg6NDcgKzAwMDDvvIxzYXNoaWtvLWJvdEBrZXJuZWwub3Jn
5YaZ6YGT77yaCj4gVGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSBy
ZXZpZXcgZm91bmQgMiBwb3RlbnRpYWwKPiBpc3N1ZShzKSB0byBjb25zaWRlcjoKPiAtIFtNZWRp
dW1dIFRoZSAncmVnJyBwcm9wZXJ0eSBpcyBvbWl0dGVkIGZyb20gdGhlICdyZXF1aXJlZCcgbGlz
dCBmb3IKPiBhIG1lbW9yeS1tYXBwZWQgUEhZLgo+IC0gW01lZGl1bV0gVGhlICdhdmRkMzMtdXNi
My1zdXBwbHknIGlzIG9taXR0ZWQgZnJvbSB0aGUgJ3JlcXVpcmVkJwo+IGxpc3QgYmFzZWQgb24g
c29mdHdhcmUgbGltaXRhdGlvbnMgcmF0aGVyIHRoYW4gaGFyZHdhcmUgZGVzY3JpcHRpb24uCgpX
ZWxsIHRoaXMgaXMgYWxzbyB0byB3b3JrYXJvdW5kIHRoZSBwcm9ibGVtIHJhaXNlZCBieSBTYXNo
aWtvIHlvdXJzZWxmCmF0IFsxXS4KCkkgZGlkbid0IG1lbnRpb24gaXQgaW4gdGhlIGxvZyBiZWNh
dXNlIEkgYW0gbm90IHN1cmUgd2hldGhlciB0aGlzIGlzIGEKcmVhbCBwcm9ibGVtLgoKWzFdCmh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUwNzA4MTcxMC40MDkwODE0LTEtemhl
bmd4aW5nZGElNDBpc2Nhcy5hYy5jbj9wYXJ0PTYKCj4gLS0KPiAKPiAtLS0gUGF0Y2ggWzFdOiBb
UEFUQ0ggdjIgMS8yXSBkdC1iaW5kaW5nczogcGh5OiBhZGQgYmluZGluZyBmb3IgVC0KPiBIZWFk
IFRIMTUyMCBVU0IgUEhZIC0tLQo+IGNvbW1pdCA5MWI0ODQwZWUxNTM2NDEzN2ZhY2IxOTA1NTgw
ZDRkZjJiYTU3NjYzCj4gQXV0aG9yOiBJY2Vub3d5IFpoZW5nIDx6aGVuZ3hpbmdkYUBpc2Nhcy5h
Yy5jbj4KPiAKPiBkdC1iaW5kaW5nczogcGh5OiBhZGQgYmluZGluZyBmb3IgVC1IZWFkIFRIMTUy
MCBVU0IgUEhZCj4gCj4gVGhpcyBjb21taXQgYWRkcyBhIGRldmljZSB0cmVlIGJpbmRpbmcgZm9y
IHRoZSBULUhlYWQgVEgxNTIwIFVTQiBQSFksCj4gd2hpY2ggaXMgYSBTeW5vcHN5cyBVU0IgMy4w
IEZlbXRvUEhZIHdpdGggY3VzdG9tIGdsdWUgbG9naWMuCj4gCj4gPiBDaGFuZ2VzIGluIHYyOgo+
ID4gLSBMaWZ0ZWQgYXZkZDMzLXVzYjMtc3VwcGx5IGZyb20gcmVxdWlyZWQgcHJvcGVydGllcyBs
aXN0LiBCZWNhdXNlCj4gPiBvZgo+ID4gwqAgdGhpcyB0aGUgUi1iIGZyb20gQ29ub3IgaXNuJ3Qg
YWRkZWQgeWV0IGZvciByZWNvbmZpcm1hdGlvbi4gKFRoZQo+ID4gwqAgcmVsYXRlZCByZWd1bGF0
b3IgaXNuJ3QgeWV0IGNvbnRyb2xsYWJsZSBiZWNhdXNlIG5vIGRyaXZlciBpcwo+ID4gwqAgYXZh
aWxhYmxlLikKPiAKPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBTaW5jZSBkZXZpY2UgdHJlZSBiaW5k
aW5ncyBtdXN0IGRlc2NyaWJlIGhhcmR3YXJlIGluZGVwZW5kZW50bHkgb2YKPiBzb2Z0d2FyZQo+
IHN0YXRlLCBzaG91bGRuJ3QgdGhpcyBwaHlzaWNhbCBzdXBwbHkgYmUgcmVxdWlyZWQgaWYgdGhl
IGhhcmR3YXJlCj4gbWFuZGF0ZXMgaXQ/Cj4gCj4gU29mdHdhcmUgbGltaXRhdGlvbnMgYXJlIHR5
cGljYWxseSBoYW5kbGVkIGluIHRoZSBib2FyZCBEVFMgKGUuZy4sCj4gdXNpbmcgYQo+IGZpeGVk
LXJlZ3VsYXRvciksIHJhdGhlciB0aGFuIGNvbXByb21pc2luZyB0aGUgZ2VuZXJpYyBoYXJkd2Fy
ZQo+IHNjaGVtYS4KPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3RoZWFkLHRoMTUyMC0KPiA+IHVzYi1waHkueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGhlYWQsdGgxNTIwLQo+ID4gdXNiLXBoeS55YW1s
Cj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aGVhZCx0aDE1MjAtdXNiLQo+ID4g
cGh5LnlhbWwKPiBbIC4uLiBdCj4gPiArcmVxdWlyZWQ6Cj4gPiArwqAgLSBjb21wYXRpYmxlCj4g
PiArwqAgLSAiI3BoeS1jZWxscyIKPiA+ICvCoCAtIGNsb2Nrcwo+ID4gK8KgIC0gY2xvY2stbmFt
ZXMKPiA+ICvCoCAtIHJlc2V0cwo+ID4gK8KgIC0gcmVzZXQtbmFtZXMKPiAKPiBbU2V2ZXJpdHk6
IE1lZGl1bV0KPiBTaW5jZSB0aGlzIGlzIGEgbWVtb3J5LW1hcHBlZCBQSFksIHNob3VsZG4ndCB0
aGUgcmVnIHByb3BlcnR5IGJlCj4gaW5jbHVkZWQgaW4KPiB0aGUgcmVxdWlyZWQgbGlzdD8KPiAK
PiBXaXRob3V0IGl0LCBkZXZpY2UgdHJlZSBub2RlcyBtaXNzaW5nIHRoZSByZWcgcHJvcGVydHkg
d2lsbCBzaWxlbnRseQo+IHBhc3MKPiBzY2hlbWEgdmFsaWRhdGlvbiwgbGVhZGluZyB0byBpbmNv
bXBsZXRlIGhhcmR3YXJlIGRlc2NyaXB0aW9ucyB0aGF0Cj4gZmFpbCBhdAo+IHJ1bnRpbWUuCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
