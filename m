Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D6CBCDE000
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 18:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymoImjwNaG4EGaqblag307lRenOJc5ho28m3pN7EjLs=; b=oU5sZF41EbXR6a
	brk0mK6TUfIDSptmaU0wlGEA0FgNmvaPkd9VSYx4jowYpf0ws7dYZNcC+YrK47+VxXA93R3MldeP0
	+TssTAe9+7aBTo8xyUopuJwK7faE8hy6lGsvyMPH5QC4qIJ97rtJAsOzoKkwbudJ+WRfdxqoi5OSh
	Ji9MlJh8tLMqiAN9xYtCtvzWlKLXkQQYLPSpiyLs2pHfWiDJ419CgP1JKfDtFaUhioRgo2sB0xCa1
	MSH2Bv1y2fDkHRa9XFoNdSTYwoOfK4btEvCBsdsLJaclqCTcdvQ5ZSO88vg0Mrm/GKz/v/vqpQTUk
	RUEf+cOBTl0f8pIO+I7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoMu-00000009eVR-0EGY;
	Thu, 25 Jun 2026 18:00:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoMs-00000009eVC-0vWX
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 18:00:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A7A7D60098;
	Thu, 25 Jun 2026 18:00:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD5371F00A3D;
	Thu, 25 Jun 2026 18:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410401;
	bh=7lPt1KiJ4zmpA0sseVXVB44Nt3j6qKXPo1V0g8v808I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oaLobpGkInkadCnM1IevKpQucfDvby3iPeBXqhqVv/Z2uNO4sBaNpkoj/GkiCXI34
	 due+Nied42wh8/gt5tud4X1GqKn8PYLGltTTTcb6gYYdKwJhV0M1vxFNaLnFY/sPhO
	 q9v/8GD2OFEKFwhdne/3W38DSWpdizhPaF3Qaml+iVDCo0hF9X3TaJ07XHP4BNoDal
	 APDKyQFca82Ws/piaiwoW0thcfTHM492NCZH75KPj3mzX1VQAQXF+1KoLT3/Hs3gm5
	 V2qHFmrM8cnMEhp1XorbN8TQ0qPMNiQaY0/088IjpqBCFuhkENXBp0Fve+P53lT/jE
	 0An97/0b5Qcfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 02/27] phy: rockchip: usbdp: Update mode_change after
 error handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-2-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-2-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 18:00:00 +0000
Message-Id: <20260625180000.CD5371F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBBc3luY2hyb25vdXMgbW9kZSBjaGFuZ2VzIG9ycGhhbiBQSFkgc3RhdHVzIGJpdHMg
Y2F1c2luZyBwZXJtYW5lbnQgY2xvY2sgYW5kIFBIWSBwb3dlciBsZWFrcy4KLS0KCmNvbW1pdCAx
NzA2ODIzYmY5MmM3YWFlNzI4MDFlZjdhMWYzYzQyNThlMDllNzllCkF1dGhvcjogU2ViYXN0aWFu
IFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlw
OiB1c2JkcDogVXBkYXRlIG1vZGVfY2hhbmdlIGFmdGVyIGVycm9yIGhhbmRsaW5nCgpUaGlzIGNv
bW1pdCB1cGRhdGVzIHJrX3VkcGh5X3Bvd2VyX29uKCkgdG8gY2xlYXIgdGhlIG1vZGVfY2hhbmdl
IGZsYWcKb25seSBhZnRlciBhbGwgcG90ZW50aWFsIGVycm9ycyBoYXZlIGJlZW4gaGFuZGxlZC4g
VGhpcyBlbnN1cmVzIHRoYXQKaWYgaW5pdGlhbGl6YXRpb24gZmFpbHMsIHRoZSBkcml2ZXIgd2ls
bCBjb3JyZWN0bHkgYXR0ZW1wdCB0bwpyZWluaXRpYWxpemUgb24gdGhlIG5leHQgdHJ5LgoKQ2xv
c2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA2MTIxNjM4MzUuOEQ1
NDcxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMKPiBpbmRleCBmYmEzNTUxMGQ4OGNlLi5hNWZmZGY3YTZlNzZiIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysr
IGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtMTAwMCwx
NSArMTAwMCwxNCBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X3Bvd2VyX29uKHN0cnVjdCBya191ZHBo
eSAqdWRwaHksIHU4IG1vZGUpCj4gIAl9Cj4gIAo+ICAJaWYgKHVkcGh5LT5zdGF0dXMgPT0gVURQ
SFlfTU9ERV9OT05FKSB7Cj4gLQkJdWRwaHktPm1vZGVfY2hhbmdlID0gZmFsc2U7Cj4gIAkJcmV0
ID0gcmtfdWRwaHlfc2V0dXAodWRwaHkpOwo+ICAJCWlmIChyZXQpCj4gIAkJCXJldHVybiByZXQ7
Cj4gIAo+ICAJCWlmICh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKQo+ICAJCQlya191ZHBo
eV91M19wb3J0X2Rpc2FibGUodWRwaHksIGZhbHNlKTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBp
c24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBjb3VsZCBhc3luY2hyb25v
dXMgbW9kZQpjaGFuZ2VzIG9ycGhhbiBQSFkgc3RhdHVzIGJpdHMgaGVyZSBhbmQgY2F1c2UgcGVy
bWFuZW50IGNsb2NrIGFuZCBwb3dlcgpsZWFrcz8KCklmIGEgVHlwZS1DIEFsdE1vZGUgaXMgbmVn
b3RpYXRlZCB0aGF0IGRyb3BzIGEgcHJldmlvdXNseSBhdmFpbGFibGUgbW9kZQooZm9yIGV4YW1w
bGUsIGRyb3BwaW5nIFVTQiB3aGVuIHRyYW5zaXRpb25pbmcgdG8gVFlQRUNfRFBfU1RBVEVfQyks
IHRoZQpUeXBlLUMgbXV4IGNhbGxiYWNrIGluIHJrX3VkcGh5X3R5cGVjX211eF9zZXQoKSB1cGRh
dGVzIHRoZSB2b2xhdGlsZQp1ZHBoeS0+bW9kZSBhc3luY2hyb25vdXNseToKCiAgICBya191ZHBo
eV9zZXRfdHlwZWNfc3RhdGUodWRwaHksIHN0YXRlLT5tb2RlKTsKCldoZW4gdGhlIFVTQiBmcmFt
ZXdvcmsgcmVhY3RzIGFuZCBjYWxscyBwaHlfZXhpdCgpLCBya191ZHBoeV91c2IzX3BoeV9leGl0
KCkKY2hlY2tzIHRoZSBuZXdseSB1cGRhdGVkIG1vZGUgaW5zdGVhZCBvZiB0aGUgYWN0aXZlIHN0
YXR1czoKCiAgICBpZiAoISh1ZHBoeS0+bW9kZSAmIFVEUEhZX01PREVfVVNCKSB8fCB1ZHBoeS0+
aHMpCiAgICAgICAgcmV0dXJuIDA7CgogICAgcmtfdWRwaHlfcG93ZXJfb2ZmKHVkcGh5LCBVRFBI
WV9NT0RFX1VTQik7CgpCZWNhdXNlIHVkcGh5LT5tb2RlIG5vIGxvbmdlciBjb250YWlucyB0aGUg
VVNCIGJpdCwgdGhlIGRyaXZlciBhYm9ydHMgZWFybHkKd2l0aG91dCBhY3R1YWxseSBwb3dlcmlu
ZyBvZmYgdGhlIGhhcmR3YXJlLgoKQWRkaXRpb25hbGx5LCBya191ZHBoeV9wb3dlcl9vZmYoKSBp
dHNlbGYgcmVkdW5kYW50bHkgY2hlY2tzIHVkcGh5LT5tb2RlOgoKICAgIGlmICghKHVkcGh5LT5t
b2RlICYgbW9kZSkpIHsKICAgICAgICBkZXZfaW5mbyh1ZHBoeS0+ZGV2LCAibW9kZSAweCUwMngg
aXMgbm90IHN1cHBvcnRcbiIsIG1vZGUpOwogICAgICAgIHJldHVybjsKICAgIH0KClRoaXMgbGVh
dmVzIHRoZSBhY3RpdmUgbW9kZSBiaXQgcGVybWFuZW50bHkgb3JwaGFuZWQgaW4gdWRwaHktPnN0
YXR1cywKd2hpY2ggcHJldmVudHMgcmtfdWRwaHlfZGlzYWJsZSgpIGZyb20gZXZlciBleGVjdXRp
bmcuIFNob3VsZCB0aGUgdGVhcmRvd24KcGF0aHMgYmUgdmFsaWRhdGluZyBhZ2FpbnN0IHVkcGh5
LT5zdGF0dXMgaW5zdGVhZCBvZiB1ZHBoeS0+bW9kZSB0byBhdm9pZAp0aGlzIGRlc3luY2hyb25p
emF0aW9uPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDYyNS1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY3LTAtMzhlYjNjZjY1NGZk
QGNvbGxhYm9yYS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
