Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE791CA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 20:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=do20M3dvt5D7Hyzsk/1ZQI/HrjsknyWosBfe2sfZ+dU=; b=p2iMDD2UGtunvZ
	dp8WGx+2yFNOLHEO4/gpERvtNPEpqbnBCBalOycf2djBxAQvSTliFvLs2KBtWC84tcEtCJsTSh5E/
	Gn4OtVsiB7GkRK0fxHrp8otb4KTEaM2t6aKIhTTPS5THaa3E4XvsVx1mGYiPpOT7f6vqChlQTWAzI
	pEJVPt5u3JnWb5TnRCxCIJYE0cBI35aENt6kirOvyPXppZHoEgKbWn4rklOmntIAqBiEDbqzgtRRA
	W7NDuznA9++JazxuBLktOYn/BtbfKKBoAIWPp0YDwpwn/jQs4a9Vt+SMVV4wBB99mhkrCvJ+3sX5w
	Vz9SzKA3Fm9YAKbT59Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6DZ-0000000E09i-2gp9;
	Sat, 03 Oct 2026 20:20:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6DZ-0000000E09a-123B
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 20:20:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 44E8E43D3B;
	Sat,  3 Oct 2026 20:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45C391F0089B;
	Sat,  3 Oct 2026 20:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791058823;
	bh=0qBoi4a6oIR++oPs2TdrsPznD5Dh3pxdqqWtp0fkXCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CThf2tokWjK3INJLMbYXps8ipGGerD9euCWoE3Fl4ZBwzib5mTEegaxkpAMPsZsAI
	 u9aWnHbchTrQUzMbjD1p4VRC3PPhvHnUcZkw/3cBuOwWYBxbDb1l2cJnEECM7ldG8a
	 fziV1b1tkyfCCvcDzOry2gR+k8/RJCCJXJXd7KYMCq8KYhyIEU/Mdtcj4gfT0fPnyS
	 HzmwZHCDpombbki1tsw8uhRCopE+CIzF5OkX5mhKUfMtF6aY14PAK3kc7GE1r3Up5E
	 p78Kz8qIVH4SPOqBHaABe56rL6tMQRREoTxAz2WTjPwhVC1g3JpgvgGiqygIAC/2/Z
	 IiXuCLFov6vVQ==
Date: Sat, 3 Oct 2026 22:20:19 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: omap-usb2: add explicit PHY comparator API
Message-ID: <asFjg44FteVbJdj2@parshuram>
References: <20260722053618.602702-1-ivo.g.dimitrov.75@gmail.com>
 <apBdFetctMKBH-iT@vaman>
 <16609718-fc04-4e1e-b63f-e54aafd14eb6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16609718-fc04-4e1e-b63f-e54aafd14eb6@gmail.com>
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

T24gMzEtMDgtMjYsIDE5OjE0LCBJdmF5bG8gRGltaXRyb3Ygd3JvdGU6Cj4gCj4gCj4gT24gMjcu
MDguMjYg0LMuIDE4OjUxINGHLiwgVmlub2QgS291bCB3cm90ZToKPiA+IE9uIDIyLTA3LTI2LCAw
ODozNiwgSXZheWxvIERpbWl0cm92IHdyb3RlOgo+ID4gPiBUaGUgZXhpc3Rpbmcgb21hcF91c2Iy
X3NldF9jb21wYXJhdG9yKCkgQVBJIGxvY2F0ZXMgdGhlIE9NQVAgVVNCMiBQSFkKPiA+ID4gaW5z
dGFuY2UgYnkgY2FsbGluZyB1c2JfZ2V0X3BoeShVU0JfUEhZX1RZUEVfVVNCMiksIGFzc3VtaW5n
IHRoZXJlIGlzIGEKPiA+ID4gc2luZ2xlIFVTQjIgUEhZIHJlZ2lzdGVyZWQgaW4gdGhlIHN5c3Rl
bS4KPiA+ID4gCj4gPiA+IFRoaXMgYXNzdW1wdGlvbiBubyBsb25nZXIgaG9sZHMgb24gc3lzdGVt
cyB3aXRoIG11bHRpcGxlIFVTQjIgUEhZCj4gPiA+IHByb3ZpZGVycy4gSW4gc3VjaCBjYXNlcywg
dGhlIGdsb2JhbCBsb29rdXAgbWF5IHJldHVybiBhIGRpZmZlcmVudCBVU0IyCj4gPiA+IFBIWSBp
bnN0YW5jZSwgY2F1c2luZyB0aGUgT01BUCBkcml2ZXIgdG8gcGVyZm9ybSBhbiBpbnZhbGlkIGNv
bnRhaW5lcl9vZigpCj4gPiA+IGNvbnZlcnNpb24gd2hlbiBhY2Nlc3NpbmcgaXRzIHByaXZhdGUg
ZGF0YS4KPiA+ID4gCj4gPiA+IEludHJvZHVjZSBvbWFwX3VzYjJfc2V0X3BoeV9jb21wYXJhdG9y
KCksIGFsbG93aW5nIGNhbGxlcnMgdG8gZXhwbGljaXRseQo+ID4gPiBzcGVjaWZ5IHRoZSBPTUFQ
IFVTQjIgUEhZIGluc3RhbmNlIHRvIGFzc29jaWF0ZSB3aXRoIGEgcGh5X2NvbXBhbmlvbi4KPiA+
ID4gVGhlIG5ldyBoZWxwZXIgdmFsaWRhdGVzIHRoYXQgdGhlIHN1cHBsaWVkIFVTQiBQSFkgaXMg
YW4gT01BUCBVU0IyIFBIWQo+ID4gPiBiZWZvcmUgYWNjZXNzaW5nIGl0cyBwcml2YXRlIGRhdGEu
Cj4gPiAKPiA+IFdlbGwgdGhlIG5hbWUgY2FuIGNhdXNlIGFtYmlndWl0eSB3aXRoIG9sZCBBUEku
IFNlY29uZCBJIHdvdWxkIGxpa2UgdG8KPiA+IHNlZSB1c2VycyBvZiB0aGlzIEFQSSBhcyB3ZWxs
Cj4gPiAKPiAKPiBXb3VsZCBgb21hcF91c2IyX3NldF9jb21wYXJhdG9yX2Zvcl9waHkoKWAgYmUg
Y2xlYXJlcj8gT3IgY291bGQgeW91Cj4gc3VnZ2VzdCBhIGJldHRlciBuYW1lPwoKWWVzIHRoYXQg
d291bGQgYmUgb2theQoKPiBSZWdhcmRpbmcgdGhlIHVzZXIgb2YgdGhlIEFQSSwgbGV0IG1lIHBy
b3ZpZGUgc29tZSBiYWNrZ3JvdW5kLgo+IAo+IEN1cnJlbnRseSwgdGhlIGNwY2FwLWNoYXJnZXIg
ZHJpdmVyIHVzZXMgdGhlIG9sZCBvbWFwX3VzYjJfc2V0X2NvbXBhcmF0b3IoKQo+IEFQSS4gT24g
bWFwcGhvbmUgZGV2aWNlcyB0aGVyZSBhcmUgdHdvCj4gVVNCLVBIWSBkZXZpY2VzLCBwaHlfb21h
cF91c2IyIGFuZCBwaHlfY3BjYXBfdXNiLiBUaGUgb2xkIEFQSSBzZWxlY3RzCj4gdGhlIGZpcnN0
IFVTQjIgUEhZIHByb2JlZCwgd2hpY2ggaXMgbm90IGd1YXJhbnRlZWQgdG8gYmUgdGhlIE9NQVAg
UEhZLgo+IAo+IEkgaGF2ZSBhbHNvIGFkZGVkIERDUCBkZXRlY3Rpb24gYW5kIGV4dGNvbiBzdXBw
b3J0IHRvIHRoZSBDUENBUCBQSFksIGFuZAo+IEknbSB3b3JraW5nIG9uIHByb3BlciBjaGFyZ2lu
ZyBjdXJyZW50IGxpbWl0aW5nIGluIGNwY2FwLWNoYXJnZXIuIEZvciB0aGF0LAo+IHRoZSBjaGFy
Z2VyIGRyaXZlciBuZWVkcyB0byBiZSBhYmxlIHRvIGV4cGxpY2l0bHkgc2VsZWN0IHRoZSBPTUFQ
Cj4gUEhZIGZyb20gRFQgYW5kIHJlZ2lzdGVyIGZvciBpdHMgUEhZIGV2ZW50cywgaW4gb3JkZXIg
dG8gcHJvcGVybHkgbGltaXQKPiB0aGUgY3VycmVudCBpbiBjYXNlIG9mIERDUC9nYWRnZXQvT1RH
IGNvbm5lY3Rpb24uCj4gCj4gV2l0aCB0aGUgRFQgY29uZmlndXJhdGlvbiwgY3BjYXAtY2hhcmdl
ciBoYXMgdGhlIHNwZWNpZmljIFBIWSBpbnN0YW5jZQo+IGF2YWlsYWJsZSBhbmQgY2FuIHVzZSB0
aGUgbmV3IEFQSS4gRm9yIGxlZ2FjeSBjb25maWd1cmF0aW9ucyB3aXRob3V0IGEKPiBQSFkgc3Bl
Y2lmaWVkIGluIERULCBpdCB3aWxsIGNvbnRpbnVlIHRvIHVzZSB0aGUgZXhpc3RpbmcgQVBJLgo+
IAo+IFRoZSByZWxldmFudCBjaGFuZ2VzIGFyZToKPiAKPiBEQ1AgZGV0ZWN0aW9uL2V4dGNvbiBz
dXBwb3J0IGluIHRoZSBDUENBUCBQSFk6Cj4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjYvNy8x
MS82MDAKPiAKPiBgY3BjYXAtY2hhcmdlcmAgY2hhbmdlcyAoY3VycmVudGx5IG91dC1vZi10cmVl
KToKPiBodHRwczovL2dpdC5tYWVtby5vcmcvbGVzdGUtdXBzdHJlYW0tZm9ya3MvZHJvaWQ0LWxp
bnV4L2NvbW1pdC8wMjYxY2JiNzI0ZDg3NWVlNGFhMmU1YWYzNGNhZWFkMzllNWU0N2ZiCj4gCj4g
SSBpbml0aWFsbHkga2VwdCB0aGUgY3BjYXAtY2hhcmdlciBjaGFuZ2Ugc2VwYXJhdGUgc2luY2Ug
dGhlIHR3bwo+IHBhdGNoZXMgbG9vayBzb21ld2hhdCB1bnJlbGF0ZWQuIEkgYWxzbyB3YW50ZWQg
dG8gc2VlIHdoZXRoZXIgdGhlCj4gYXBwcm9hY2ggaW4gdGhpcyBwYXRjaCBpcyBhY2NlcHRhYmxl
IGluIHByaW5jaXBsZSBiZWZvcmUgcHJlcGFyaW5nIHRoZQo+IGNwY2FwLWNoYXJnZXIgY2hhbmdl
cyBmb3IgdXBzdHJlYW1pbmcuCj4gCj4gV291bGQgeW91IHByZWZlciBtZSB0byBzZW5kIGEgc2Vy
aWVzIHdpdGggdGhlICRzdWJqZWN0IHBhdGNoIGFuZCB0aGUKPiBjcGNhcC1jaGFyZ2VyIGNoYW5n
ZXMsIGluY2x1ZGluZyB0aGUgcmVxdWlyZWQgRFQgc2NoZW1hIGNoYW5nZXM/Cj4gCj4gVGhhbmtz
IGFuZCByZWdhcmRzLAo+IEl2bwo+IAoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
