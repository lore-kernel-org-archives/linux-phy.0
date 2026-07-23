Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DABDC531D4
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 14:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9FKq3SIgmJY4GxutK0D4h+aKlc4uFEGiRe2k+4bCko=; b=IJaiF1HuVn0Cl0
	dNs1ih1lbKSodbFKgn0r50awuzPXJXHcNIwOdqdiaErH5mKrg5FWKVnfe+khdcrMKnuWSgQrNwzJN
	Rbxy1hLux2uG3yyPcJC+z8iL5bzf1JnZfuDAdfSHn9CWyvaMY1Z2sb6JiREjcDwdKVHF4mHTFnwnH
	OXOvXsCX7dC6YDz1KbArtATtzAuoomJ79OcHaR7IM/8eHakcPd8KB6M1UQQFFT5nJdq9IX2w3n+Ij
	hWxw2oc43DST+jbcXXsYNnV4xyNdLBA/LOdXmlM/pHzgrzm8vHwn0a9PTb9C3ztYsVN9mWELEJbGg
	yuf9fxVrMe3icYNNBDjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmu7W-0000000ESYc-24MN;
	Thu, 23 Jul 2026 14:09:54 +0000
Received: from smtp81.cstnet.cn ([159.226.251.81] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmu7T-0000000ESXw-30S1
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 14:09:53 +0000
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.100.114])
	by APP-03 (Coremail) with SMTP id rQCowABXYkCsIGJqsOrtAA--.4045S2;
	Thu, 23 Jul 2026 22:09:49 +0800 (CST)
Message-ID: <8c2d675115b25107bf463cbbb6a377f80c46e592.camel@iscas.ac.cn>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: add binding for T-Head TH1520
 USB PHY
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, 
	neil.armstrong@linaro.org
Date: Thu, 23 Jul 2026 22:09:48 +0800
In-Reply-To: <20260723084759.3BBF81F000E9@smtp.kernel.org>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
	 <20260723084316.3573714-2-zhengxingda@iscas.ac.cn>
	 <20260723084759.3BBF81F000E9@smtp.kernel.org>
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
X-CM-TRANSID: rQCowABXYkCsIGJqsOrtAA--.4045S2
X-Coremail-Antispam: 1UD129KBjvJXoW7tFyDAry5Xr43JFyDKryxAFb_yoW8tw4kpa
	93CFy7tF1vqF9avanrJw18CF12vF4DuF15Gr1rXr1kXws8Wa4Sq3sIkr98uF48Xr4kWFWa
	yFZru3Z3Xr1ku3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkFb7Iv0xC_Kw4lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwCY1x0262kKe7AKxVWUAVWUtwCF04k2
	0xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI
	8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41l
	IxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIx
	AIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2
	jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07bnL0OUUUUU=
X-Originating-IP: [112.94.100.114]
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_070952_134821_8903B2FB 
X-CRM114-Status: GOOD (  18.82  )
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
c29mdHdhcmUgbGltaXRhdGlvbnMgcmF0aGVyIHRoYW4gaGFyZHdhcmUgZGVzY3JpcHRpb24uCgpC
VFcgdGhlIHBvd2VyIHJhaWwgaXMgZXhwZWN0ZWQgdG8gYmUgYWx3YXlzIG9uIGF0IGxlYXN0IGFj
Y29yZGluZyB0bwp0aGUgc2NoZW1hdGljcyBvZiBtdWx0aXBsZSBib2FyZHMsIGFzIG1lbnRpb25l
ZCBpbiB0aGUgbmV4dCBwYXRjaC4KClRoYW5rcywKSWNlbm93eQoKPiAtLQo+IAo+IC0tLSBQYXRj
aCBbMV06IFtQQVRDSCB2MiAxLzJdIGR0LWJpbmRpbmdzOiBwaHk6IGFkZCBiaW5kaW5nIGZvciBU
LQo+IEhlYWQgVEgxNTIwIFVTQiBQSFkgLS0tCj4gY29tbWl0IDkxYjQ4NDBlZTE1MzY0MTM3ZmFj
YjE5MDU1ODBkNGRmMmJhNTc2NjMKPiBBdXRob3I6IEljZW5vd3kgWmhlbmcgPHpoZW5neGluZ2Rh
QGlzY2FzLmFjLmNuPgo+IAo+IGR0LWJpbmRpbmdzOiBwaHk6IGFkZCBiaW5kaW5nIGZvciBULUhl
YWQgVEgxNTIwIFVTQiBQSFkKPiAKPiBUaGlzIGNvbW1pdCBhZGRzIGEgZGV2aWNlIHRyZWUgYmlu
ZGluZyBmb3IgdGhlIFQtSGVhZCBUSDE1MjAgVVNCIFBIWSwKPiB3aGljaCBpcyBhIFN5bm9wc3lz
IFVTQiAzLjAgRmVtdG9QSFkgd2l0aCBjdXN0b20gZ2x1ZSBsb2dpYy4KPiAKPiA+IENoYW5nZXMg
aW4gdjI6Cj4gPiAtIExpZnRlZCBhdmRkMzMtdXNiMy1zdXBwbHkgZnJvbSByZXF1aXJlZCBwcm9w
ZXJ0aWVzIGxpc3QuIEJlY2F1c2UKPiA+IG9mCj4gPiDCoCB0aGlzIHRoZSBSLWIgZnJvbSBDb25v
ciBpc24ndCBhZGRlZCB5ZXQgZm9yIHJlY29uZmlybWF0aW9uLiAoVGhlCj4gPiDCoCByZWxhdGVk
IHJlZ3VsYXRvciBpc24ndCB5ZXQgY29udHJvbGxhYmxlIGJlY2F1c2Ugbm8gZHJpdmVyIGlzCj4g
PiDCoCBhdmFpbGFibGUuKQo+IAo+IFtTZXZlcml0eTogTWVkaXVtXQo+IFNpbmNlIGRldmljZSB0
cmVlIGJpbmRpbmdzIG11c3QgZGVzY3JpYmUgaGFyZHdhcmUgaW5kZXBlbmRlbnRseSBvZgo+IHNv
ZnR3YXJlCj4gc3RhdGUsIHNob3VsZG4ndCB0aGlzIHBoeXNpY2FsIHN1cHBseSBiZSByZXF1aXJl
ZCBpZiB0aGUgaGFyZHdhcmUKPiBtYW5kYXRlcyBpdD8KPiAKPiBTb2Z0d2FyZSBsaW1pdGF0aW9u
cyBhcmUgdHlwaWNhbGx5IGhhbmRsZWQgaW4gdGhlIGJvYXJkIERUUyAoZS5nLiwKPiB1c2luZyBh
Cj4gZml4ZWQtcmVndWxhdG9yKSwgcmF0aGVyIHRoYW4gY29tcHJvbWlzaW5nIHRoZSBnZW5lcmlj
IGhhcmR3YXJlCj4gc2NoZW1hLgo+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvdGhlYWQsdGgxNTIwLQo+ID4gdXNiLXBoeS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aGVhZCx0aDE1MjAtCj4gPiB1c2It
cGh5LnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3RoZWFkLHRoMTUyMC11
c2ItCj4gPiBwaHkueWFtbAo+IFsgLi4uIF0KPiA+ICtyZXF1aXJlZDoKPiA+ICvCoCAtIGNvbXBh
dGlibGUKPiA+ICvCoCAtICIjcGh5LWNlbGxzIgo+ID4gK8KgIC0gY2xvY2tzCj4gPiArwqAgLSBj
bG9jay1uYW1lcwo+ID4gK8KgIC0gcmVzZXRzCj4gPiArwqAgLSByZXNldC1uYW1lcwo+IAo+IFtT
ZXZlcml0eTogTWVkaXVtXQo+IFNpbmNlIHRoaXMgaXMgYSBtZW1vcnktbWFwcGVkIFBIWSwgc2hv
dWxkbid0IHRoZSByZWcgcHJvcGVydHkgYmUKPiBpbmNsdWRlZCBpbgo+IHRoZSByZXF1aXJlZCBs
aXN0Pwo+IAo+IFdpdGhvdXQgaXQsIGRldmljZSB0cmVlIG5vZGVzIG1pc3NpbmcgdGhlIHJlZyBw
cm9wZXJ0eSB3aWxsIHNpbGVudGx5Cj4gcGFzcwo+IHNjaGVtYSB2YWxpZGF0aW9uLCBsZWFkaW5n
IHRvIGluY29tcGxldGUgaGFyZHdhcmUgZGVzY3JpcHRpb25zIHRoYXQKPiBmYWlsIGF0Cj4gcnVu
dGltZS4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
