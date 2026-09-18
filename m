Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A83FC982DF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOArz059oV8oUQoNolUA/fZQWA3RuAXGjfAxPl3TEc4=; b=eHq5iNg/9AIpbH
	HV9NoFGGPa5r0L3EuHorp1lagpk3MNWUNgPCaibYJrrvqhyMWnA9jFsWNDOYwso+c49D20Jr8hk6O
	oobm19TnhzbHtbX/n/c4RXSKPknYmvp8e7ExgWHHX+k4DhR5Hhr41KYkzZcH7h4WoAArOVA3nKzCx
	6xGXQUzI6q5rjMy9KGF8JiNYOAA99KeRvB4a2QIMtn/NuGy54nXDLjbibUHHhDPNQHejb5Tu2HGJs
	BOFm0A2+r2balIEEwuIW1zyKP7Qo7ulJkmMDhCNL7webgplHDNwPfbKvxgQKwCEjy/07xs6sGxyHe
	rdf6cJSed+SFOOlR2WTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7fVt-0000000FXBr-03dG;
	Fri, 18 Sep 2026 20:48:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7fVo-0000000FXAY-1gn5
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 20:48:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C0D1E43BA4;
	Fri, 18 Sep 2026 20:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B6441F00898;
	Fri, 18 Sep 2026 20:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789764527;
	bh=OtisZjymYY36XGuS/uxRgwWJQmpSC3oGaySCRIJ7ZK4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qkibi1k0JgABOdhlgVIPnLMoQzTlq81GgIcxZqhm2i3EnuSIgtBmcQG80ay4ceUK5
	 YBEwpgxlXJJ3TMMP6OA98OUKWDqyVnFGV/X4pg3c7Prwbev6nU+/N4JKxuzVdQYxmY
	 1XVGRkwCPboULBm7RfG5B8BQGwG8LRSZpLLVldrrKxsI1EWruRMP1SM0jEY4WN26Ba
	 lfubdS0hTa7RfF1f/P3jeNcrQMfoW93af2MN3drAoVFTXKYfc6sPza5MtIqYmymDLF
	 91VL+GpUUJa3p/iJ69LHc2BDvAAk2w/lAdWuK4J8/5nDL1rsykEO/h9270urRzxd1w
	 Dk8+JxFUdaX1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v7 07/11] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: "Coia Prant" <coiaprant@gmail.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260917204624.2427486-8-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
 <20260917204624.2427486-8-coiaprant@gmail.com>
Date: Fri, 18 Sep 2026 20:48:46 +0000
Message-Id: <20260918204847.2B6441F00898@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG5ldDogcGNzOiB1c2Ut
YWZ0ZXItZnJlZSBpbiB4cGNzX3JrX2NyZWF0ZSgpIGR1cmluZyBjb25jdXJyZW50IHN1cHBsaWVy
IHVuYmluZAotIFtMb3ddIGtjb25maWc6IHVubWV0IGRlcGVuZGVuY3kgd2FybmluZyBkdWUgdG8g
UE1fR0VORVJJQ19ET01BSU5TIHNlbGVjdCB3aXRob3V0IFBNCi0tCgpjb21taXQgN2UyZDY3NTM1
Y2U2ZjMxNzNmMjk4NDY4MGIwYTc3YjYxY2FhZjk2NApBdXRob3I6IENvaWEgUHJhbnQgPGNvaWFw
cmFudEBnbWFpbC5jb20+CgpuZXQ6IHBjczogeHBjczogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0
Zm9ybSBnbHVlIGRyaXZlcgoKVGhpcyBjb21taXQgYWRkcyBhIHBsYXRmb3JtIGdsdWUgZHJpdmVy
IGZvciB0aGUgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTCm9uIFJvY2tjaGlwIFJLMzU2OCBTb0Nz
LiBJdCBpbXBsZW1lbnRzIGEgdmlydHVhbCBNRElPIGJ1cyB0byB0cmFuc2xhdGUKTURJTyBvcGVy
YXRpb25zIGludG8gQVBCMyBtZW1vcnktbWFwcGVkIHJlZ2lzdGVyIGFjY2Vzc2VzLgoKTGluazog
aHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazMvZG9jcy9ody9kYXRhc2hlZXQvUm9ja2NoaXAlMjBS
SzM1NjglMjBUUk0lMjBQYXJ0MSUyMFYxLjEtMjAyMTAzMDEucGRmIChQYWdlIDU5LCBDUlVfQ0xL
U0VMX0NPTjI5KQpMaW5rOiBodHRwczovL2RsLnJhZHhhLmNvbS9yb2NrMy9kb2NzL2h3L2RhdGFz
aGVldC9Sb2NrY2hpcCUyMFJLMzU2OCUyMFRSTSUyMFBhcnQyJTIwVjEuMS0yMDIxMDMwMS5wZGYg
KFBhZ2UgMjA3OCkKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3Bjcy9LY29uZmlnIGIvZHJp
dmVycy9uZXQvcGNzL0tjb25maWcKPiAtLS0gYS9kcml2ZXJzL25ldC9wY3MvS2NvbmZpZwo+ICsr
KyBiL2RyaXZlcnMvbmV0L3Bjcy9LY29uZmlnClsgLi4uIF0KPiArY29uZmlnIFBDU19YUENTX1JP
Q0tDSElQCj4gKwl0cmlzdGF0ZSAiUm9ja2NoaXAgWFBDUyBjb250cm9sbGVyIHN1cHBvcnQiCj4g
KwlkZWZhdWx0IEFSQ0hfUk9DS0NISVAKPiArCWRlcGVuZHMgb24gT0YgJiYgKEFSQ0hfUk9DS0NI
SVAgfHwgQ09NUElMRV9URVNUKQo+ICsJc2VsZWN0IEdFTkVSSUNfUEhZCj4gKwlzZWxlY3QgUE1f
R0VORVJJQ19ET01BSU5TCgpbU2V2ZXJpdHk6IExvd10KV2lsbCB0aGlzIGNhdXNlIGEgS2NvbmZp
ZyB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jeSB3YXJuaW5nIGR1cmluZyBjb21waWxhdGlvbgp3aGVu
IFBNIGlzIG5vdCBlbmFibGVkPwoKQmVjYXVzZSBQQ1NfWFBDU19ST0NLQ0hJUCBoYXMgYSBDT01Q
SUxFX1RFU1QgZmFsbGJhY2sgaW4gaXRzIGRlcGVuZHMgb24KbGlzdCwgaXQgY2FuIGJlIGVuYWJs
ZWQgb24gYXJjaGl0ZWN0dXJlcyB3aXRob3V0IENPTkZJR19QTS4gRm9yY2VmdWxseQpzZWxlY3Rp
bmcgUE1fR0VORVJJQ19ET01BSU5TICh3aGljaCBkZXBlbmRzIG9uIFBNKSB3aXRob3V0IGluaGVy
aXRpbmcKdGhhdCBkZXBlbmRlbmN5IGNvdWxkIGxlYWQgdG8gYSBjb25maWd1cmF0aW9uIG1pc21h
dGNoLgoKQ291bGQgdGhpcyBLY29uZmlnIGVudHJ5IGFkZCBhIGRlcGVuZGVuY3kgb24gUE0sIG9y
IG9ubHkgY29uZGl0aW9uYWxseQpzZWxlY3QgUE1fR0VORVJJQ19ET01BSU5TPwoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMgYi9kcml2ZXJzL25ldC9wY3MvcGNz
LXhwY3MtcmsuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jClsgLi4uIF0KPiArCS8qCj4gKwkgKiBQaW4g
dGhlIHN1cHBsaWVyIGJlZm9yZSByZWFkaW5nIGl0cyBkcnZkYXRhOiBkZXZpY2VfbGlua19hZGQo
KQo+ICsJICogcmVmdXNlcyB0byBjcmVhdGUgYSBtYW5hZ2VkIGxpbmsgd2hpbGUgdGhlIHN1cHBs
aWVyIGlzIGJlaW5nCj4gKwkgKiB1bmJvdW5kLCBzbyBpZiBpdCBzdWNjZWVkcyB0aGUgZHJ2ZGF0
YSBjYW5ub3QgYmUgZnJlZWQgdW5kZXIgdXMuCj4gKwkgKiBUaGUgbGluayBpcyByZWxlYXNlZCBh
dXRvbWF0aWNhbGx5IHdoZW4gdGhlIGNvbnN1bWVyIGRldmljZSBpcwo+ICsJICogZGVzdHJveWVk
IChETF9GTEFHX0FVVE9SRU1PVkVfQ09OU1VNRVIpLCB3aGljaCBjb3ZlcnMgYWxsIHByb2JlCj4g
KwkgKiBmYWlsdXJlIHBhdGhzLCBzbyBubyBleHBsaWNpdCBkZXZpY2VfbGlua19yZW1vdmUoKSBp
cyBuZWVkZWQuCj4gKwkgKi8KPiArCWlmICghZGV2aWNlX2xpbmtfYWRkKGRldiwgJnBkZXYtPmRl
diwgRExfRkxBR19BVVRPUkVNT1ZFX0NPTlNVTUVSKSkgewo+ICsJCXB1dF9kZXZpY2UoJnBkZXYt
PmRldik7Cj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVQUk9CRV9ERUZFUik7Cj4gKwl9Cj4gKwo+ICsJ
cHhwY3MgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiArCWlmICghcHhwY3MgfHwgIXB4
cGNzLT5idXMpIHsKCltTZXZlcml0eTogSGlnaF0KSXMgdGhpcyBzZXF1ZW5jZSBpbiB4cGNzX3Jr
X2NyZWF0ZSgpIHNhZmUgYWdhaW5zdCBhIGNvbmN1cnJlbnQgc3VwcGxpZXIKdW5iaW5kPwoKVGhl
IGNvbW1lbnQgYXNzdW1lcyBkZXZpY2VfbGlua19hZGQoKSByZXR1cm5zIE5VTEwgaWYgdGhlIHN1
cHBsaWVyIGlzCnVuYmluZGluZywgYnV0IGl0IGFjdHVhbGx5IHN1Y2NlZWRzIGFuZCBjcmVhdGVz
IGEgbGluayB3aXRoIGEgc3RhdGUgbGlrZQpETF9TVEFURV9TVVBQTElFUl9VTkJJTkQgb3IgRExf
U1RBVEVfRE9STUFOVC4gCgpJZiB1c2Vyc3BhY2UgY29uY3VycmVudGx5IHVuYmluZHMgdGhlIFhQ
Q1Mgc3VwcGxpZXIgZGV2aWNlIHdoaWxlIHRoaXMKY29uc3VtZXIgTUFDIGRyaXZlciBpcyBwcm9i
aW5nLCByZWFkaW5nIHRoZSBkcnZkYXRhIHZpYQpwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KSBt
aWdodCB5aWVsZCBhIHBvaW50ZXIgdG8gZGV2cmVzIG1lbW9yeSB0aGF0CmhhcyBhbHJlYWR5IGJl
ZW4gZnJlZWQgYnkgdGhlIHN1cHBsaWVyJ3MgcmVtb3ZlIHBhdGguCgpTaG91bGQgdGhpcyBjb2Rl
IGFjcXVpcmUgdGhlIGRldmljZSBsb2NrIG9uIHRoZSBzdXBwbGllciwgb3Igb3RoZXJ3aXNlCnZl
cmlmeSB0aGUgZGV2aWNlIGlzIGZ1bGx5IGJvdW5kIGJlZm9yZSBkZXJlZmVyZW5jaW5nIGl0cyBk
cnZkYXRhPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDkxNzIwNDYyNC4yNDI3NDg2LTEtY29pYXByYW50QGdtYWlsLmNvbT9wYXJ0
PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
