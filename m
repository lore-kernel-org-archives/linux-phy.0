Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB827CD4851
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 05:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWsGvn3U+XIeWWXW5owlQ4q2mQh/InQsKnS+UBixCuY=; b=WqIxEIsNYRMDKC
	yR3fBNp0jx+P636GhcOqNlZ5XZhZl9wcbMQxbIv9a8vQZZ5wqljLeN/b/KsvDUiC/NmW4NH/szqQi
	SDQmLq1UL83czNOsi/Vdggdvn9WeNvVOQZUjphvfwEXogYUZ4re3/J9lQjFvDS3sd5QetuP7RmqlH
	zbYZFXjMyUgF4rf1opoWWvp/THiVq0WsEqPjtGIaMdWEnl5/DM8//AmsMdgnmp6I0KV0eVlkRpoEx
	Hz+lN5pdwahSfFLxXh/XgSFNzvpjfUrC3v4PvhX0y9dAcmxHfWp2sMtbx3n0Jts59gEYdA35woWv0
	JWARWugV5rj3nqEYq5WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNOS8-00000004bsf-0koW;
	Thu, 14 May 2026 05:17:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNOS5-00000004bs6-1wO4
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 05:17:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A6E0C41A94;
	Thu, 14 May 2026 05:17:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2D32C2BCB7;
	Thu, 14 May 2026 05:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778735860;
	bh=1IjWY3llMBWroCpaBTuqeax5xUPoC9qv+OlS/SMKqbo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AcDRgA+twluLPyZUuv21hm/rqwCUxj2Ll+XUJ38/VHkGTEcEA9CgPI3/0y2Zm/JY+
	 ZLkaI5zQN/9nXfvneRt6Lt584J9gXWM8AAwqQ2Bl6IRBO8p3Xo7gu3sAxsA8Vn5KNe
	 EraDKdfm4FjQKybFcJgLf1Px2DlS8gzf88e0wjyC6QlGUAi9moe57QvJZQE/aBDUeL
	 D+xFufRnVAlEme/ttJnMjSKkyZSa1Z/jyamjOaMuojfyKg0NbwbYRBfU4+I1Tou48g
	 i+0mGuzGjw2AcHoJJ1uzs3qsOEhIC9IcTptWuYtcR/MC4IRiM1LJNnKk+w+M+UGsWn
	 n6brldqqHR94w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add support for NXPs TJA1145
 CAN transceiver
To: "Dimitri Fedrau via B4 Relay" <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org
In-Reply-To: <20260513-tja1145-support-v5-1-38720a7ee63e@liebherr.com>
References: <20260513-tja1145-support-v5-1-38720a7ee63e@liebherr.com>
Date: Thu, 14 May 2026 05:17:38 +0000
Message-Id: <20260514051738.B2D32C2BCB7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_221741_531398_86CFEE2C 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGR0LWJpbmRp
bmcgb21pdHMgc3VwcG9ydCBmb3IgdGhlIGBtYXgtYml0cmF0ZWAgcHJvcGVydHkuCi0gW01lZGl1
bV0gVGhlIGR0LWJpbmRpbmcgb21pdHMgc3VwcG9ydCBmb3IgdGhlIGBpbnRlcnJ1cHRzYCBwcm9w
ZXJ0eSBmb3Igd2FrZS11cCByb3V0aW5nLgotLQoKY29tbWl0IDg1M2FkN2M5M2ViZTFjMmE2MjVk
ZGRkZGU0MDFjNGFhYWQ0OTZhOGUKQXV0aG9yOiBEaW1pdHJpIEZlZHJhdSA8ZGltaXRyaS5mZWRy
YXVAbGllYmhlcnIuY29tPgoKZHQtYmluZGluZ3M6IHBoeTogYWRkIHN1cHBvcnQgZm9yIE5YUHMg
VEpBMTE0NSBDQU4gdHJhbnNjZWl2ZXIKClRoaXMgY29tbWl0IGFkZHMgZG9jdW1lbnRhdGlvbiBm
b3IgdGhlIE5YUCBUSkExMTQ1IENBTiB0cmFuc2NlaXZlciwgcmVzaWRpbmcKaW4gdGhlIGdlbmVy
aWMgUEhZIHN1YnN5c3RlbSBiaW5kaW5ncy4gSXQgZGVzY3JpYmVzIHRoZSByZXF1aXJlZCBTUEkK
Y29uZmlndXJhdGlvbnMgYW5kIHN1cHBseSBwcm9wZXJ0aWVzIGZvciB0aGUgZGV2aWNlLgoKPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAsdGph
MTE0NS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAsdGph
MTE0NS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9ueHAsdGphMTE0NS55YW1sCgpb
IC4uLiBdCgo+ICsgIHZiYXQtc3VwcGx5Ogo+ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIEJh
dHRlcnkgc3VwcGx5IHZvbHRhZ2UKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+
ICsgIC0gcmVnCj4gKyAgLSAiI3BoeS1jZWxscyIKPiArICAtIHNwaS1jcGhhCj4gKwo+ICthZGRp
dGlvbmFsUHJvcGVydGllczogZmFsc2UKCkRvZXMgdGhpcyBiaW5kaW5nIG5lZWQgdG8gaW5jbHVk
ZSB0aGUgbWF4LWJpdHJhdGUgcHJvcGVydHk/CgpUaGlzIHByb3BlcnR5IGlzIHN0YW5kYXJkIGZv
ciBDQU4gdHJhbnNjZWl2ZXJzIHRvIGRlc2NyaWJlIGJvYXJkLWxldmVsCmNhcGFiaWxpdHkgY29u
c3RyYWludHMgd2hlcmUgdGhlIGxheW91dCBjYW5ub3Qgc3VwcG9ydCB0aGUgY2hpcCdzIHRoZW9y
ZXRpY2FsCm1heGltdW0gc3BlZWQuIFNpbmNlIGFkZGl0aW9uYWxQcm9wZXJ0aWVzIGlzIHNldCB0
byBmYWxzZSwgdmFsaWQgZGV2aWNlIHRyZWVzCnNwZWNpZnlpbmcgYSBtYXhpbXVtIGJpdHJhdGUg
d2lsbCBmYWlsIHZhbGlkYXRpb24uCgpBbHNvLCBkb2VzIHRoaXMgZGV2aWNlIHRyZWUgYmluZGlu
ZyBuZWVkIHN1cHBvcnQgZm9yIHRoZSBpbnRlcnJ1cHRzIHByb3BlcnR5PwoKVGhlIFRKQTExNDUg
c3VwcG9ydHMgcGFydGlhbCBuZXR3b3JraW5nIGFuZCB3YWtlLXVwIGZ1bmN0aW9uYWxpdHksIHdo
aWNoIGNhbgpyb3V0ZSBhIHdha2UtdXAgc2lnbmFsIHRvIGFuIGludGVycnVwdCBsaW5lIG9uIHRo
ZSBob3N0IHByb2Nlc3Nvci4gV2l0aAphZGRpdGlvbmFsUHJvcGVydGllcyBzZXQgdG8gZmFsc2Us
IGl0IGlzIGltcG9zc2libGUgdG8gZGVzY3JpYmUgdGhpcyBoYXJkd2FyZQppbnRlcnJ1cHQgcm91
dGluZyBpbiB0aGUgZGV2aWNlIHRyZWUuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTEzLXRqYTExNDUtc3VwcG9ydC12NS0wLTM4
NzIwYTdlZTYzZUBsaWViaGVyci5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
