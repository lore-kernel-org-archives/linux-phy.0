Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A0D9C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxKn7ufrYQXo+DpX8YrUyjcQjCVe/x6fWdqsOAIW2xQ=; b=ooXfvtDloO72d+
	eKbqoHrACcA3ICURvG0UICtRPFNQlG0E/C6eFlaCM21uruuzVW9XCO5RWYqyBmwtFE0uaoyZtcB49
	yB+OF9ZShi4Y8wyioLr3Zvdgs6h05A9PyEiJqihTARihV4sA0NI/RJndDHbg5AycPOlG0eKa3k97i
	ONDLwmjJiYjSv8ICkz4WivW68xAV6r0xCuC2xWlzf7GMUd4AaGF7zZPpOCN9GLSOAMCJiz45Fpbjy
	TM2f8N83UHgsij+2f6K7u9w/KqAt1V0Wocd1rTFzXXju3jOKkQRTH+39yj0aXrcC548G7J8eDga2C
	6GMdHITXVIec1Ga8mQ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4z6-00000003GnQ-3rMw;
	Thu, 02 Jul 2026 00:08:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4z5-00000003Gn3-2vLK
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 00:08:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 27CC8600B0;
	Thu,  2 Jul 2026 00:08:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 415741F000E9;
	Thu,  2 Jul 2026 00:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950930;
	bh=3GBHbnEuUDJymxwYTByZegdVO4PjJ9hGrWr01xx5Pjs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BxUmHHjMF/LOJ/xrpKU5TBbAvvMY2tgDMci47623RlgyOQAea8BURlfofd7mo+QpQ
	 KCKEuj+/gc8hAJ4UTBzHS3oH59aOiw6nIGr0FSqM4SBa6nkUZXW3E/mxvxnaUngJO9
	 r1OKCRVUbyCs9HHxsEWI9Lgv6RgbbnMWZneeRK2UY6WBZnWx4wjtmOyplr+DuYdval
	 zygWVGwbsYUtQf0JcKumaZuBIMTksXIHzFC/pN3EN9VYnVlrM83LzN7ZxXFokqwouQ
	 yQJ37ykkoMs8jHrNi4ZCqTf5OxxunGgrrocNZOj4yyYIN9Kw6/CrIZZvgw7EyItIye
	 amT0JA7Jl+NaA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 36/38] phy: rockchip: usbdp: Rename phy_needs_reinit
 to orientation_changed
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-36-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-36-e31efbb62d2e@collabora.com>
Date: Thu, 02 Jul 2026 00:08:49 +0000
Message-Id: <20260702000850.415741F000E9@smtp.kernel.org>
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
IFtIaWdoXSBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSB3aWxsIHVuZXhwZWN0ZWRseSBw
b3dlciB1cCB0aGUgUEhZIGFuZCBsZWFrIGNsb2NrIHJlZmVyZW5jZXMgaWYgY2FsbGVkIHdoZW4g
c3RhdHVzIGFuZCB0YXJnZXRfbW9kZSBhcmUgYm90aCBVRFBIWV9NT0RFX05PTkUgYnV0IG9yaWVu
dGF0aW9uX2NoYW5nZWQgaXMgdHJ1ZS4gVGhpcyBwcm9ibGVtIHdhc24ndCBpbnRyb2R1Y2VkIGJ5
IHRoaXMgcGF0Y2gsIGJ1dCB3YXMgaW50cm9kdWNlZCBieSBhIHByZWNlZGluZyBwYXRjaCBpbiB0
aGlzIHNlcmllcy4KLS0KCmNvbW1pdCBiOTYzZTA0ZWNkNzM0M2RmMTUxNzBkYjFkMWZlZWZmNzI5
YjBmNjJjCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxh
Ym9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogUmVuYW1lIHBoeV9uZWVkc19yZWluaXQg
dG8gb3JpZW50YXRpb25fY2hhbmdlZAoKVGhpcyBjb21taXQgcmVuYW1lcyBwaHlfbmVlZHNfcmVp
bml0IHRvIG9yaWVudGF0aW9uX2NoYW5nZWQgdG8gYmV0dGVyCnJlZmxlY3QgaXRzIHB1cnBvc2Us
IGFzIG1vZGUgY2hhbmdlcyBhcmUgbm93IHRyYWNrZWQgc2VwYXJhdGVseS4KCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCgpbIC4uLiBdCgo+IEBAIC0xMDIwLDcgKzEwMjAsNyBAQCBzdGF0
aWMgaW50IHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZShzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5
KQo+ICAJdTggdGFyZ2V0X21vZGUgPSB1ZHBoeS0+aHdfbW9kZSAmIHVkcGh5LT5zd19tb2RlOwo+
ICAJaW50IHJldDsKPiAgCj4gLQlpZiAoIXVkcGh5LT5waHlfbmVlZHNfcmVpbml0ICYmIHVkcGh5
LT5zdGF0dXMgPT0gdGFyZ2V0X21vZGUpCj4gKwlpZiAoIXVkcGh5LT5vcmllbnRhdGlvbl9jaGFu
Z2VkICYmIHVkcGh5LT5zdGF0dXMgPT0gdGFyZ2V0X21vZGUpCj4gIAkJcmV0dXJuIDA7Cj4gIAo+
ICAJLyoKWyAuLi4gXQo+ICAJaWYgKHVkcGh5LT5zdGF0dXMgPT0gVURQSFlfTU9ERV9OT05FKSB7
Cj4gIAkJLyogUG93ZXIgdXAgKGluY2wuIGNsb2NrcykgKi8KPiAgCQlyZXQgPSBya191ZHBoeV9z
ZXR1cCh1ZHBoeSwgdGFyZ2V0X21vZGUpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJl
LWV4aXN0aW5nIGlzc3VlLCBidXQgZG9lcyB0aGlzIGxvZ2ljIGxlYWsgY2xvY2sgcmVmZXJlbmNl
cyBpZgpjYWxsZWQgd2hlbiBib3RoIHVkcGh5LT5zdGF0dXMgYW5kIHRhcmdldF9tb2RlIGFyZSBV
RFBIWV9NT0RFX05PTkUgKDApPwoKSWYgYSBUeXBlLUMgY2FibGUgaXMgYXR0YWNoZWQgb3IgdGhl
IG9yaWVudGF0aW9uIGlzIHRvZ2dsZWQgd2hpbGUgdGhlIERQClBIWSBjbGllbnQgaXMgcG93ZXJl
ZCBvZmYgYW5kIHRoZSBwb3J0IG5lZ290aWF0ZXMgYSBEUC1vbmx5IGNvbm5lY3Rpb24sCnVkcGh5
LT5vcmllbnRhdGlvbl9jaGFuZ2VkIGJlY29tZXMgdHJ1ZS4KCldoZW4gcmtfdWRwaHlfdXBkYXRl
X3Bvd2VyX3N0YXRlKCkgaXMgc3Vic2VxdWVudGx5IGNhbGxlZCwgdGhlIGVhcmx5IHJldHVybgph
dCB0aGUgdG9wIG9mIHRoZSBmdW5jdGlvbiBpcyBieXBhc3NlZCBiZWNhdXNlIHVkcGh5LT5vcmll
bnRhdGlvbl9jaGFuZ2VkCmlzIHRydWUuIFNpbmNlIHVkcGh5LT5zdGF0dXMgaXMgVURQSFlfTU9E
RV9OT05FLCB0aGUgY29kZSB0YWtlcyB0aGlzIGJyYW5jaAphbmQgY2FsbHMgcmtfdWRwaHlfc2V0
dXAodWRwaHksIDApLCB3aGljaCB1bmNvbmRpdGlvbmFsbHkgcHJlcGFyZXMgYW5kCmVuYWJsZXMg
dGhlIGNsb2Nrcy4KCkJlY2F1c2UgdGFyZ2V0X21vZGUgaXMgMCwgdWRwaHktPnN0YXR1cyByZW1h
aW5zIFVEUEhZX01PREVfTk9ORSwgbWVhbmluZwpzdWJzZXF1ZW50IGdlbnVpbmUgcG93ZXItb2Zm
cyB3aWxsIGZhaWwgdG8gZGVjcmVtZW50IHRoZSBjbG9jayBjb3VudHMgdmlhCnJrX3VkcGh5X2Rp
c2FibGUoKS4gQ2FuIHRoaXMgZXZlbnR1YWxseSBvdmVyZmxvdyB0aGUgY2xvY2sgcmVmZXJlbmNl
IGNvdW50ZXJzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MDcwMi1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXY5LTAtZTMxZWZiYjYy
ZDJlQGNvbGxhYm9yYS5jb20/cGFydD0zNgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
