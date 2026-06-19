Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF79CD98F2
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 09:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7clTp07WGaAS1rr+sgILJNjHGEKR3ydzzJajy+I7qSI=; b=Ub2L+0kClz4u7+
	SwTUjWKcmrHJr2HLGIN0Do84ZuZYYcgyzAo8S3TNBKpIkWzdH4+XqGQuI2vhznfr3Ti9oG4hFyac/
	kZzYGna72JkP/sXvUy0v9si4lYvSvdlX4GIDk0Q+t0KzYvr7HehwU7k7quQE5DYWFZ0DHA9t6wTZe
	jIGRdaA6IuE9JKkt8dng55VcgdTMKhP1yoNXp7SZelZCPBTtRDjHGtNvgq0q0vBdNuaxVJkgmdoL0
	0E2Zhpk7NjRTYUyDWM7l5nalfCfhRysqqRDvuBKSlT4iS3xxtj1k4dHNRrf5c/6ME1maRnjQ6P9Rd
	m+gsj2VfY+hSxPfYp2mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waVUS-00000002E1T-3S7Y;
	Fri, 19 Jun 2026 09:26:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waVUR-00000002E1N-1Nnf
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 09:26:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AB7B7601E3;
	Fri, 19 Jun 2026 09:26:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 084AF1F000E9;
	Fri, 19 Jun 2026 09:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781861178;
	bh=+P5p9k72S8q+YTzkrLgiEcs+pVCG5sNbfVoh3h/B56c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jNdSu98C1x0HvIJSeJ26o++JVVgWwxLIgJTZg1NnFWadxjNEBeE0AR+F11T39sdIl
	 OM1OEXkEknmql6qQIsm4CzlJ3S7zH1a98+CyG0dbBFphYIagF0VoyY2XpNsHMLwvaW
	 +JhigQ3+JwUyQF2/hGhzTnLctLCp4CbeK728MjU339js2Pk4vnIYXJDk1bxwljYCFv
	 tZwUf80VJeZKRfvmOFN1JF6iTSVo/emNmVBmq0PEnPWX8wMLWwkeNr6ztpCkiW5gaX
	 FVJ4p2pxfbWPp7ue+BmLjNb6nn5gAI+nz+KmEVEntvHrbAm1Gng0mUqn3pl3n3Czba
	 pBn5CP59M/7yQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] phy: rockchip: phy-rockchip-inno-csidphy: add
 clock lane phase tuning
To: "Gerald Loacker" <gerald.loacker@wolfvision.net>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260619-feature-mipi-csi-dphy-4k60-v2-3-323356c2cc2e@wolfvision.net>
References: <20260619-feature-mipi-csi-dphy-4k60-v2-0-323356c2cc2e@wolfvision.net>
 <20260619-feature-mipi-csi-dphy-4k60-v2-3-323356c2cc2e@wolfvision.net>
Date: Fri, 19 Jun 2026 09:26:17 +0000
Message-Id: <20260619092618.084AF1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG1hY3JvIGBDU0lE
UEhZX0NMS19QSEFTRV9ERUZBVUxUYCBpcyBkZWZpbmVkIGJ1dCBuZXZlciB1c2VkLgotLQoKY29t
bWl0IDQ3NTcxYzIwODJjMDE2NTUzN2RiOTYzMTI4NjVmM2E5ODA1ZTc2OGQKQXV0aG9yOiBHZXJh
bGQgTG9hY2tlciA8Z2VyYWxkLmxvYWNrZXJAd29sZnZpc2lvbi5uZXQ+CgpwaHk6IHJvY2tjaGlw
OiBwaHktcm9ja2NoaXAtaW5uby1jc2lkcGh5OiBhZGQgY2xvY2sgbGFuZSBwaGFzZSB0dW5pbmcK
ClRoaXMgY29tbWl0IGFkZHMgc3VwcG9ydCBmb3IgcGFyc2luZyB0aGUgJ3JvY2tjaGlwLGNsay1s
YW5lLXBoYXNlJyBkZXZpY2UKdHJlZSBwcm9wZXJ0eSB0byBhZGp1c3QgdGhlIGNsb2NrIGxhbmUg
c2FtcGxpbmcgcGhhc2UuIEl0IGVuYWJsZXMKYm9hcmQtc3BlY2lmaWMgdHVuaW5nIHRvIG9wdGlt
aXplIGxpbmsgc3RhYmlsaXR5IGF0IGhpZ2ggZGF0YSByYXRlcywgZmFsbGluZwpiYWNrIHRvIGhh
cmR3YXJlIGRlZmF1bHRzIGlmIHRoZSBwcm9wZXJ0eSBpcyBhYnNlbnQuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKPiBpbmRleCA1Mjgx
ZjhkZWEwYWQzLi4zYTE1ODQwZTg2Y2FkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkuYwo+IEBAIC02OSw2ICs2OSwxMCBAQAo+ICAj
ZGVmaW5lIFJLMTgwOF9DU0lEUEhZX0NMS19DQUxJQl9FTgkJMHgxNjgKPiAgI2RlZmluZSBSSzM1
NjhfQ1NJRFBIWV9DTEtfQ0FMSUJfRU4JCTB4MTY4Cj4gIAo+ICsjZGVmaW5lIENTSURQSFlfTEFO
RV9DTEtfM19QSEFTRQkJMHgzOAo+ICsjZGVmaW5lIENTSURQSFlfQ0xLX1BIQVNFX01BU0sJCQlH
RU5NQVNLKDYsIDQpCj4gKyNkZWZpbmUgQ1NJRFBIWV9DTEtfUEhBU0VfREVGQVVMVAkJMwoKW1Nl
dmVyaXR5OiBMb3ddCklzIHRoaXMgbWFjcm8gaW50ZW5kZWQgdG8gYmUgdXNlZCBzb21ld2hlcmU/
IAoKSXQgYXBwZWFycyB0byBiZSBkZWZpbmVkIGJ1dCBuZXZlciB1c2VkLCBzaW5jZSB0aGUgZHJp
dmVyIGZhbGxzIGJhY2sgdG8gdGhlCmhhcmR3YXJlIGRlZmF1bHQgYnkgaW5pdGlhbGl6aW5nIHBy
aXYtPmNsa19waGFzZSB0byAtMSBpbgpyb2NrY2hpcF9pbm5vX2NzaWRwaHlfcHJvYmUoKSBhbmQg
Y29uZGl0aW9uYWxseSBza2lwcGluZyB0aGUgcmVnaXN0ZXIgd3JpdGUgaW4Kcm9ja2NoaXBfaW5u
b19jc2lkcGh5X3Bvd2VyX29uKCk6CgoJaWYgKHByaXYtPmNsa19waGFzZSA+PSAwKSB7CgkJdmFs
ID0gcmVhZGwocHJpdi0+cGh5X2Jhc2UgKyBDU0lEUEhZX0xBTkVfQ0xLXzNfUEhBU0UpOwoJCS4u
LgoJfQoKQ2FuIENTSURQSFlfQ0xLX1BIQVNFX0RFRkFVTFQgYmUgc2FmZWx5IHJlbW92ZWQ/Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNjE5LWZlYXR1cmUtbWlwaS1jc2ktZHBoeS00azYwLXYyLTAtMzIzMzU2YzJjYzJlQHdvbGZ2
aXNpb24ubmV0P3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
