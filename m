Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC7E6C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1wIH+PbIf3QFfEkn5FgKeaa5RJFUkZFa1LoXoOsuBI=; b=yEQ8bR3RopGaRP
	jUOR3meeGRIyjW7hkw/7y9HXLwE1AoC/hGTzO9ky0QcEBKuQ/Q2CW5OD1WrAqAXAyXinpfmjdmXEs
	oSEhEYtiqV8CSML0WnKJDuCtDcpa3Uzc/KiTJKDxNg9bDW4fzRcTpKHr9vlGkurYjuuvM27um5ci+
	WYbhLy3IgXhvvJBygvBHiOytYVHCrvpd52FQT0P9e3bXdaiDZDP8zzWrXQODUSvvbcUOVK+1gLomj
	K9Ezb7eFJVcDMlEtbO9fFYcCNYKhxDDyHZGnn+mmwIJlp5NLyke5gn4rlafIlbizyVv1D4Zg72Fsr
	LJYQUTsMkRs0la4fwZYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIjj-00000005pK2-22UP;
	Fri, 10 Jul 2026 21:26:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIji-00000005pJk-05JC
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:26:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 36F6260051;
	Fri, 10 Jul 2026 21:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E6181F000E9;
	Fri, 10 Jul 2026 21:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783718776;
	bh=oOBlRc8oXCuipNEM5tX4COdpO+MQ27JUSVb5sLg1x30=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Jp5o+K7exQfCYNqiAH91nIY9YercSfYk0/7l3VsdKAbpFPfcRyjb3u+P703KGUXBx
	 M532dRfiXgWNelYE3OwQRB//QDLzEDcslmBUbr5JikzphWKvRCvfEqCqbIABNFq47i
	 fZdxuk3zB93GYKSymGlBXUMVThJDWfao1h4mb/qlWrRSfbivvARABzDnzbq39abAhK
	 TpTC5OUTpXvy6IXkpHpcVqKgdO9+/lqL6Ec8xC5BJ3Akk4dNPVcraj+sJhEICCx05/
	 KBfwvPwcr72gvgVLOWpnpt7BCApL/6/jhx2kC9uYARmKv+abCjW6GdXEjflE6ol+2u
	 lx6KdinDoDc8w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 28/36] phy: rockchip: usbdp: Only enable USB3 when
 not in high-speed mode
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-28-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-28-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:26:15 +0000
Message-Id: <20260710212616.3E6181F000E9@smtp.kernel.org>
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
IFtIaWdoXSBya191ZHBoeV9wb3dlcl9vbiByZXR1cm5zIDAgKHN1Y2Nlc3MpIGZvciB1bnN1cHBv
cnRlZCBtb2RlcywgdHJpY2tpbmcgY2FsbGVycyBpbnRvIGFjY2Vzc2luZyB1bmNsb2NrZWQgUEhZ
IHJlZ2lzdGVycwotLQoKLS0tIFBhdGNoIFsyOF06IFtQQVRDSCB2MTIgMjgvMzZdIHBoeTogcm9j
a2NoaXA6IHVzYmRwOiBPbmx5IGVuYWJsZSBVU0IzIHdoZW4gbm90IGluIGhpZ2gtc3BlZWQgbW9k
ZSAtLS0KY29tbWl0IGZhYzhkYmE0MDdiNjc5YmE4ZmM3NWQ0MTdkZTk1ODQ1MWQ5MGY0NmYKQXV0
aG9yOiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4K
CnBoeTogcm9ja2NoaXA6IHVzYmRwOiBPbmx5IGVuYWJsZSBVU0IzIHdoZW4gbm90IGluIGhpZ2gt
c3BlZWQgbW9kZQoKRW5zdXJlIHRoYXQgVVNCMyBtb2RlIGlzIG5vdCBhY2NpZGVudGx5IGVuYWJs
ZWQgZHVyaW5nIFBIWSByZS1pbml0CmZvciBzeXN0ZW1zIHRoYXQgYXJlIGNvbmZpZ3VyZWQgYXMg
aGlnaC1zcGVlZCBvbmx5IHZpYSBEVC4KCkNsb3NlczogaHR0cHM6Ly9zYXNoaWtvLmRldi8jL21l
c3NhZ2UvMjAyNjA2MjYyMTI0MjQuQzIxNUUxRjAwMEU5JTQwc210cC5rZXJuZWwub3JnCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2Ry
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggMjA5OWFlMmU1
MWQxYy4uYWY5MTVjYzM3NzI3NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC11c2JkcC5jCj4gQEAgLTEwMDksNyArMTAwOSw3IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlf
cG93ZXJfb24oc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9kZSkKPiAgCQlpZiAocmV0KQo+
ICAJCQlyZXR1cm4gcmV0Owo+ICAKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlz
dGluZyBpc3N1ZSwgYnV0IEkgbm90aWNlZCBhIHBvdGVudGlhbCBwcm9ibGVtIGluIGhvdwpya191
ZHBoeV9wb3dlcl9vbigpIGhhbmRsZXMgdW5zdXBwb3J0ZWQgbW9kZXMuCgpBdCB0aGUgYmVnaW5u
aW5nIG9mIHJrX3VkcGh5X3Bvd2VyX29uKCksIGlmIHRoZSBoYXJkd2FyZSBpc24ndCBjb25maWd1
cmVkCmZvciB0aGUgcmVxdWVzdGVkIG1vZGUsIHRoZSBmdW5jdGlvbiBsb2dzIGFuIGluZm8gbWVz
c2FnZSBhbmQgcmV0dXJucyAwOgoKCWlmICghKHVkcGh5LT5tb2RlICYgbW9kZSkpIHsKCQlkZXZf
aW5mbyh1ZHBoeS0+ZGV2LCAibW9kZSAweCUwMnggaXMgbm90IHN1cHBvcnRcbiIsIG1vZGUpOwoJ
CXJldHVybiAwOwoJfQoKQmVjYXVzZSBpdCByZXR1cm5zIHN1Y2Nlc3MsIGNhbGxlcnMgbWlnaHQg
YXNzdW1lIHRoZSBQSFkgd2FzIHN1Y2Nlc3NmdWxseQpwb3dlcmVkIHVwIGFuZCBjbG9ja2VkLiBG
b3IgZXhhbXBsZSwgaWYgd2UgbG9vayBhdCBya191ZHBoeV9kcF9waHlfcG93ZXJfb24oKToKCgly
ZXQgPSBya191ZHBoeV9wb3dlcl9vbih1ZHBoeSwgVURQSFlfTU9ERV9EUCk7CglpZiAocmV0KQoJ
CXJldHVybiByZXQ7CgoJcmtfdWRwaHlfZHBfbGFuZV9lbmFibGUodWRwaHksIHVkcGh5LT5kcF9s
YW5lcyk7CgpJZiBVRFBIWV9NT0RFX0RQIGlzIHJlcXVlc3RlZCBidXQgbm90IHN1cHBvcnRlZCAo
Zm9yIGluc3RhbmNlLCBpZiB0aGUKZGV2aWNlIHRyZWUgY29uZmlndXJlcyBpdCBhcyBVU0Itb25s
eSksIHJrX3VkcGh5X3Bvd2VyX29uKCkgd2lsbCBza2lwCnRoZSBzZXR1cCBzZXF1ZW5jZSBhbmQg
cmV0dXJuIDAuCgpXb3VsZCB0aGUgY2FsbGVyIHRoZW4gcHJvY2VlZCB0byBhY2Nlc3MgdW5jbG9j
a2VkIG1lbW9yeS1tYXBwZWQgcmVnaXN0ZXJzCmluIHJrX3VkcGh5X2RwX2xhbmVfZW5hYmxlKCkg
YW5kIHRyaWdnZXIgYSBrZXJuZWwgcGFuaWMgKFNFcnJvcik/CgpTaG91bGQgcmtfdWRwaHlfcG93
ZXJfb24oKSByZXR1cm4gYW4gZXJyb3IgY29kZSBsaWtlIC1FT1BOT1RTVVBQIGluc3RlYWQKb2Yg
MCB3aGVuIGFuIHVuc3VwcG9ydGVkIG1vZGUgaXMgcmVxdWVzdGVkPwoKPiAtCQlpZiAodWRwaHkt
Pm1vZGUgJiBVRFBIWV9NT0RFX1VTQikKPiArCQlpZiAoIXVkcGh5LT5ocyAmJiB1ZHBoeS0+bW9k
ZSAmIFVEUEhZX01PREVfVVNCKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHks
IGZhbHNlKTsKPiAgCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IGZhbHNlOwo+ICAJfSBlbHNl
IGlmICh1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCkgewoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxMC1yb2NrY2hpcC11c2JkcC1j
bGVhbnVwLXYxMi0wLThiNDFhOWE5YmVmMEBjb2xsYWJvcmEuY29tP3BhcnQ9MjgKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
