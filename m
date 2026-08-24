Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F54CC5DF81
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 14:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caa6gXXlIFk8ZE6IuP3N29ZYTUrGQk3FLUVnukHuJlU=; b=Pv5bsDoFZNkWo9
	QabGD3WEPM5MzWJ7C1brfvGClwVjTlMJmAKbWJsha/0RYhxpZVey/L+X/8FT6ka2bozRVHi/+VTbF
	COwJzRRe6ZAnjyxUC2FB0/VnELt9EASs8YQIjJ0xVBU8iX+KJgq5Q3Y943SbuPRVechVhzi5B7bFP
	ehYEkGNcfBD79lEV4Oq+k3Wer58G4iKuqK6DKy4WP7wM5pOv1bsSCi6AIpNfK8a22Y/W6GrN0GYsw
	E9AVxcZ5rlNaodGK7gEFy8A+vIvQKSQk7n68RANCGdgdMLfEtjzmHBx8BkF4q9sJyiU/21D+nMXFA
	kkSdQY0O8gxhXb3L8hxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyVp7-0000000GnvD-2v89;
	Mon, 24 Aug 2026 14:38:53 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyVp3-0000000Gnu4-3cYl;
	Mon, 24 Aug 2026 14:38:51 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 90B14201B99;
	Mon, 24 Aug 2026 16:38:43 +0200 (CEST)
Message-ID: <9650b30e936b58c37ccc73934a66e2d8edb02331.camel@pengutronix.de>
Subject: Re: [PATCH 04/16] usb: typec: tcpm: Add STM32 UCPD driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Greg Kroah-Hartman	
 <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Christian Bruel	 <christian.bruel@foss.st.com>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>,  Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>,  Srinivas Kandagatla	 <srini@kernel.org>, Marek
 Vasut <marex@nabladev.com>, Vinod Koul	 <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Pankaj Dev	 <pankaj.dev@st.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Date: Mon, 24 Aug 2026 16:38:43 +0200
In-Reply-To: <20260821-ucpd-host-fusb340-v7-2-rfc-v1-4-c5e27cbc0795@foss.st.com>
References: <20260821-ucpd-host-fusb340-v7-2-rfc-v1-0-c5e27cbc0795@foss.st.com>
	 <20260821-ucpd-host-fusb340-v7-2-rfc-v1-4-c5e27cbc0795@foss.st.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_073850_055359_AA03C877 
X-CRM114-Status: GOOD (  21.42  )
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

T24gRnIsIDIwMjYtMDgtMjEgYXQgMTg6MjMgKzAyMDAsIEZhYnJpY2UgR2FzbmllciB3cm90ZToK
PiBGcm9tOiBDaHJpc3RpYW4gQnJ1ZWwgPGNocmlzdGlhbi5icnVlbEBmb3NzLnN0LmNvbT4KPiAK
PiBBZGQgc3VwcG9ydCBmb3IgdGhlIFNUTTMyIFVDUEQgY29udHJvbGxlciBwcm92aWRpbmcgVVNC
IFR5cGXigJFDCj4gQ29uZmlndXJhdGlvbiBDaGFubmVsIChDQykgbWFuYWdlbWVudCBhbmQgVVNC
IFBvd2VyIERlbGl2ZXJ5IChQRCkKPiBwcm90b2NvbCBoYW5kbGluZy4KPiAKPiBUaGUgZHJpdmVy
IGludGVncmF0ZXMgd2l0aCB0aGUgVENQTSAoVHlwZS1DIFBvcnQgTWFuYWdlcikgZnJhbWV3b3Jr
Lgo+IE9uIHRoaXMgcGxhdGZvcm0sIFZCVVMgbW9uaXRvcmluZyBpcyBoYW5kbGVkIGJ5IGFuIGV4
dGVybmFsIFRDUFAwMwo+IAo+IE5vdGUgdGhlIGRyaXZlciBkb2Vzbid0IGFsbG93IFBELCBzbyB0
aGUgcm9sZSBjYW4gb25seSBiZSBzZXQgYXQKPiBwbHVnIHRpbWUuCj4gCj4gVGhlIFVDUEQgY2Fu
IGJlIGEgd2FrZXVwIHNvdXJjZSwgaW4gc3VjaCBhIGNhc2UsIGtlZXAgdGhlIGhhcmR3YXJlCj4g
ZW5hYmxlZC4gRWxzZSwga2VlcCB0cmFjayBvZiB0aGUgdmJ1cyBzdGF0ZSBhcyBwcm92aWRlciBh
bmQgYXMKPiBjb25zdW1lciwgdG8gYmUgcmVzdG9yZWQgYWZ0ZXIgbG93IHBvd2VyLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IENocmlzdGlhbiBCcnVlbCA8Y2hyaXN0aWFuLmJydWVsQGZvc3Muc3QuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNuaWVyQGZvc3Mu
c3QuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3VzYi90eXBlYy90Y3BtL0tjb25maWcgICAgICB8ICAx
MiArCj4gIGRyaXZlcnMvdXNiL3R5cGVjL3RjcG0vTWFrZWZpbGUgICAgIHwgICAxICsKPiAgZHJp
dmVycy91c2IvdHlwZWMvdGNwbS9zdG0zMl91Y3BkLmMgfCA4MTggKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgODMxIGluc2VydGlvbnMoKykK
PiAKWy4uLl0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvdHlwZWMvdGNwbS9zdG0zMl91Y3Bk
LmMgYi9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3N0bTMyX3VjcGQuYwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5iNWM5ZGM0MTc4MTQKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvZHJpdmVycy91c2IvdHlwZWMvdGNwbS9zdG0zMl91Y3BkLmMKPiBAQCAtMCwwICsx
LDgxOCBAQApbLi4uXQo+ICtzdGF0aWMgaW50IHN0bTMyX3VjcGRfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiArewo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRl
djsKPiArCXN0cnVjdCBpMmNfY2xpZW50ICp0Y3BwX2NsaWVudDsKPiArCXN0cnVjdCBkZXZpY2Vf
bm9kZSAqdGNwcF9ucDsKPiArCXN0cnVjdCBzdG0zMl91Y3BkICp1Y3BkOwo+ICsJaW50IHJldDsK
PiArCj4gKwl1Y3BkID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCp1Y3BkKSwgR0ZQX0tFUk5F
TCk7Cj4gKwlpZiAoIXVjcGQpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICsJdWNwZC0+ZGV2
ID0gZGV2Owo+ICsJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgdWNwZCk7Cj4gKwo+ICsJdWNw
ZC0+dmRkID0gZGV2bV9yZWd1bGF0b3JfZ2V0KCZwZGV2LT5kZXYsICJ1Y3BkIik7Cj4gKwlpZiAo
SVNfRVJSKHVjcGQtPnZkZCkpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwg
UFRSX0VSUih1Y3BkLT52ZGQpLCAidmRkIGdldCBmYWlsZWRcbiIpOwo+ICsKPiArCXVjcGQtPnZj
b25uID0gZGV2bV9yZWd1bGF0b3JfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJ2Y29ubiIpOwo+
ICsJaWYgKElTX0VSUih1Y3BkLT52Y29ubikpIHsKPiArCQlpZiAoUFRSX0VSUih1Y3BkLT52Y29u
bikgIT0gLUVOT0RFVikKPiArCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRS
X0VSUih1Y3BkLT52Y29ubiksCj4gKwkJCQkJICAgICAidmNvbm4gZ2V0IGZhaWxlZFxuIik7Cj4g
KwkJdWNwZC0+dmNvbm4gPSBOVUxMOwo+ICsJfQo+ICsKPiArCXVjcGQtPmJhc2UgPSBkZXZtX3Bs
YXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7Cj4gKwlpZiAoSVNfRVJSKHVjcGQtPmJh
c2UpKQo+ICsJCXJldHVybiBQVFJfRVJSKHVjcGQtPmJhc2UpOwo+ICsKPiArCXVjcGQtPm51bV9j
bGtzID0gZGV2bV9jbGtfYnVsa19nZXRfYWxsKGRldiwgJnVjcGQtPmNsa3MpOwo+ICsJaWYgKHVj
cGQtPm51bV9jbGtzIDw9IDApCj4gKwkJcmV0dXJuIHVjcGQtPm51bV9jbGtzID8gOiAtRU5PRU5U
Owo+ICsKPiArCXVjcGQtPnJlc2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUo
ZGV2LCAidWNwZCIpOwo+ICsJaWYgKElTX0VSUih1Y3BkLT5yZXNldCkpCj4gKwkJcmV0dXJuIGRl
dl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHVjcGQtPnJlc2V0KSwgIkZhaWxlZCB0byBnZXQgVUNQ
RCByZXNldFxuIik7Cj4gKwo+ICsJcmV0ID0gc3RtMzJfdWNwZF9nZXRfdHJpbV92YWx1ZXModWNw
ZCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiRmFp
bGVkIHRvIGdldCB0cmltIHZhbHVlc1xuIik7Cj4gKwo+ICsJdWNwZC0+dmNvbm5fY2MxX2dwaW8g
PSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYsICJ2Y29ubi1jYzEiLCBHUElPRF9PVVRfTE9X
KTsKPiArCWlmIChJU19FUlIodWNwZC0+dmNvbm5fY2MxX2dwaW8pKQo+ICsJCXJldHVybiBkZXZf
ZXJyX3Byb2JlKGRldiwgUFRSX0VSUih1Y3BkLT52Y29ubl9jYzFfZ3BpbyksICJ2Y29ubi1jYzEg
Z2V0IGZhaWxlZFxuIik7Cj4gKwo+ICsJdWNwZC0+dmNvbm5fY2MyX2dwaW8gPSBkZXZtX2dwaW9k
X2dldF9vcHRpb25hbChkZXYsICJ2Y29ubi1jYzIiLCBHUElPRF9PVVRfTE9XKTsKPiArCWlmIChJ
U19FUlIodWNwZC0+dmNvbm5fY2MyX2dwaW8pKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRl
diwgUFRSX0VSUih1Y3BkLT52Y29ubl9jYzJfZ3BpbyksICJ2Y29ubi1jYzIgZ2V0IGZhaWxlZFxu
Iik7Cj4gKwo+ICsJdWNwZC0+dWNwZF9pcnEgPSBwbGF0Zm9ybV9nZXRfaXJxX2J5bmFtZShwZGV2
LCAidWNwZCIpOwo+ICsJaWYgKHVjcGQtPnVjcGRfaXJxIDwgMCkKPiArCQlyZXR1cm4gdWNwZC0+
dWNwZF9pcnE7Cj4gKwo+ICsJdWNwZC0+dGNwY19kZXYuZndub2RlID0gZGV2aWNlX2dldF9uYW1l
ZF9jaGlsZF9ub2RlKGRldiwgImNvbm5lY3RvciIpOwo+ICsJaWYgKElTX0VSUih1Y3BkLT50Y3Bj
X2Rldi5md25vZGUpKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUih1Y3Bk
LT50Y3BjX2Rldi5md25vZGUpLCAiY29ubmVjdG9yIG5vdCBmb3VuZCIpOwo+ICsKPiArCXRjcHBf
bnAgPSBvZl9wYXJzZV9waGFuZGxlKGRldi0+b2Zfbm9kZSwgInN0LHRjcHAiLCAwKTsKPiArCWlm
ICghdGNwcF9ucCkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwl0Y3BwX2NsaWVudCA9IG9m
X2ZpbmRfaTJjX2RldmljZV9ieV9ub2RlKHRjcHBfbnApOwo+ICsJb2Zfbm9kZV9wdXQodGNwcF9u
cCk7Cj4gKwo+ICsJLyogdGNwcCBkcml2ZXIgbXVzdCBiZSBwcm9iZWQgc28gdGNwcF9pbml0KCkg
Y2FuIGJlIGNhbGxlZCBmcm9tIHRjcG1fcmVnaXN0ZXJfcG9ydCgpICovCj4gKwlpZiAoIXRjcHBf
Y2xpZW50IHx8ICF0Y3BwX2NsaWVudC0+ZGV2LmRyaXZlcikKPiArCQlyZXR1cm4gLUVQUk9CRV9E
RUZFUjsKPiArCj4gKwl1Y3BkLT50Y3BwX2RldiA9ICZ0Y3BwX2NsaWVudC0+ZGV2Owo+ICsKPiAr
CS8qIE5vIGlycSB1bnRpbCB0Y3BtX3BvcnQgaXMgcmVhZHkgKi8KPiArCWlycV9zZXRfc3RhdHVz
X2ZsYWdzKHVjcGQtPnVjcGRfaXJxLCBJUlFfTk9BVVRPRU4pOwo+ICsJcmV0ID0gZGV2bV9yZXF1
ZXN0X3RocmVhZGVkX2lycShkZXYsIHVjcGQtPnVjcGRfaXJxLCBOVUxMLCB1Y3BkX2lycV9oYW5k
bGVyLCBJUlFGX09ORVNIT1QsCj4gKwkJCQkJZGV2X25hbWUoZGV2KSwgdWNwZCk7Cj4gKwlpZiAo
cmV0KSB7Cj4gKwkJZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgImZhaWxlZCB0byBnZXQgaXJxXG4i
KTsKPiArCQlnb3RvIHB1dF90Y3BwOwo+ICsJfQo+ICsKPiArCWluaXRfdGNwY19kZXYoJnVjcGQt
PnRjcGNfZGV2KTsKPiArCj4gKwlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKHVjcGQtPnZkZCk7Cj4g
KwlpZiAocmV0KSB7Cj4gKwkJZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgImZhaWxlZCB0byBlbmFi
bGUgcmVndWxhdG9yXG4iKTsKPiArCQlnb3RvIHB1dF90Y3BwOwo+ICsJfQo+ICsKPiArCXJldCA9
IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHVjcGQtPm51bV9jbGtzLCB1Y3BkLT5jbGtzKTsKPiAr
CWlmIChyZXQpIHsKPiArCQlkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVkIHRvIGVuYWJs
ZSBjbG9ja3NcbiIpOwo+ICsJCWdvdG8gZGlzYWJsZV9yZWd1bGF0b3I7Cj4gKwl9Cj4gKwo+ICsJ
cmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydCh1Y3BkLT5yZXNldCk7CgpObyByZXNldF9jb250
cm9sX2Fzc2VydCgpIGluIHRoZSBlcnJvciBwYXRoIGFuZCBpbiBzdG0zMl91Y3BkX3JlbW92ZSgp
PwoKcmVnYXJkcwpQaGlsaXBwCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
