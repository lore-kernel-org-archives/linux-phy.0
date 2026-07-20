Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 391ECC44512
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 01:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WavYtnHY4B9cbz23zGGdDlQPuGMzsWF0NLdIqp194LE=; b=tmhqFarLm52a9t
	wZIdeVygbLlIkRxzGz1EnAqDR5bJpxJeDrXdecjDZCxys6IKesIn3vKTQ21YRPvx8g2YPDrOOSumZ
	i9y1Y66MESVX/9tpVJRxHbf/wBpXVTJGNRGvK3KPfJa930uSYAru2q5Bsn76zhh50jf+Dd7ELi9FQ
	49jEMDphjjm0wE/hC2KNvZJTRJe9izQLCLl1lfcrf7rLFfgE0SvxU8RnfJbd6bGnxWW1Pzc+O4yEo
	+MQlY2pyVGPvWPqKlK1clAV8eZxQFJvAfD0qvNkCCsxmYX4QRSR5JwgIovUwFWoQ7DMzjvjQDwGXT
	vCynMoEvw3vyxx9FqlRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlclg-00000005cIR-3Gqh;
	Mon, 20 Jul 2026 01:26:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlclg-00000005cIK-0JLH
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 01:26:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 791D543BA3;
	Mon, 20 Jul 2026 01:26:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFC041F00A3A;
	Mon, 20 Jul 2026 01:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784510763;
	bh=8lR17PS+Su8iOHaA3iQrEy5VgOMzAQMSv3w+U50wEfo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gNoTGlOEcxuieLRgArLhEcNJl0gOUGkQNx64onWWtEna8aV9bvd9bwBrT4k9AO+MA
	 Buunxi9VxqQAD7LX7frJ4FKEy+qRY7jWMBFmMPnSwE8a6K/LfD6kfZ9TrdULZkZ0H1
	 1p0bShqxkXr9FvnXQttMF+Y1HXmzKnBFhQ/j+IybWImb4/okh4SbzzTLs33vqm1i7n
	 Uf/E6uO6eptnomDXwdD+EBCMBWRe4sFmQ2/pk8/V/6mnYcutDqg6q/eoNPPQ6/RSq9
	 dzk9aPzkNeUzbwcp6pXcl9CAmGAIyQ1jQrY0IWrmvmZyAeDSPPJdeKqG+zsNs0wJZP
	 ULYuj75xRCvHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY
 driver
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: media-ci@linuxtv.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260720-x1e-csi2-phy-v13-2-160c31958863@linaro.org>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
 <20260720-x1e-csi2-phy-v13-2-160c31958863@linaro.org>
Date: Mon, 20 Jul 2026 01:26:02 +0000
Message-Id: <20260720012602.DFC041F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFZhbGlkIGNhbGN1bGF0
ZWQgc2V0dGxlX2NudCBvZiAwIGlzIHRyZWF0ZWQgYXMgYW4gZXJyb3IKLSBbTWVkaXVtXSBQb2xh
cml0eSBjb25maWd1cmF0aW9uIG92ZXJ3cml0ZXMgdGhlIGVudGlyZSBDVFJMOSByZWdpc3RlciBp
bnN0ZWFkIG9mIHVzaW5nIHJlYWQtbW9kaWZ5LXdyaXRlCi0tCgotLS0gUGF0Y2ggWzJdOiBbUEFU
Q0ggdjEzIDIvMl0gcGh5OiBxY29tLW1pcGktY3NpMjogQWRkIGEgQ1NJMiBNSVBJIERQSFkgZHJp
dmVyIC0tLQpjb21taXQgMWQyMWYwYjIzNjgwOGVjNjkwY2E0YmJkNWFjNjE5MGUyYzJjODczYgpB
dXRob3I6IEJyeWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgpTdWJq
ZWN0OiBwaHk6IHFjb20tbWlwaS1jc2kyOiBBZGQgYSBDU0kyIE1JUEkgRFBIWSBkcml2ZXIKCkFk
ZCBhIG5ldyBNSVBJIENTSTIgZHJpdmVyIGluIERQSFkgbW9kZSBpbml0aWFsbHkuIFRoZSBlbnRp
cmUgc2V0IG9mCmV4aXN0aW5nIENBTVNTIENTSSBQSFkgaW5pdCBzZXF1ZW5jZXMgYXJlIGltcG9y
dGVkIGluIG9yZGVyIHRvIHNhdmUgdGltZQphbmQgZWZmb3J0IGluIGxhdGVyIHBhdGNoZXMuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1taXBpLWNzaTItM3Bo
LWRwaHkuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBo
eS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVy
cy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5LmMKWyAuLi4gXQo+ICtz
dGF0aWMgaW50IHBoeV9xY29tX21pcGlfY3NpMl9sYW5lc19lbmFibGUoc3RydWN0IG1pcGlfY3Np
MnBoeV9kZXZpY2UgKmNzaTJwaHksCj4gKwkJCQkJICAgc3RydWN0IG1pcGlfY3NpMnBoeV9zdHJl
YW1fY2ZnICpjZmcpCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBtaXBpX2NzaTJwaHlfZGV2aWNlX3Jl
Z3MgKnJlZ3MgPSBjc2kycGh5X2Rldl90b19yZWdzKGNzaTJwaHkpOwo+ICsJc3RydWN0IG1pcGlf
Y3NpMnBoeV9sYW5lc19jZmcgKmxhbmVfY2ZnID0gJmNmZy0+bGFuZV9jZmc7Cj4gKwl1OCBzZXR0
bGVfY250Owo+ICsJdTggdmFsOwo+ICsJaW50IGk7Cj4gKwo+ICsJaWYgKGNmZy0+bGlua19mcmVx
IDw9IDApCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJc2V0dGxlX2NudCA9IHBoeV9xY29t
X21pcGlfY3NpMl9zZXR0bGVfY250X2NhbGMoY2ZnLT5saW5rX2ZyZXEsIGNzaTJwaHktPnRpbWVy
X2Nsa19yYXRlKTsKPiArCWlmICghc2V0dGxlX2NudCkKPiArCQlyZXR1cm4gLUVOT0RFVjsKCltT
ZXZlcml0eTogSGlnaF0KU2hvdWxkIGEgcmV0dXJuIHZhbHVlIG9mIDAgZnJvbSBwaHlfcWNvbV9t
aXBpX2NzaTJfc2V0dGxlX2NudF9jYWxjKCkgYmUKY29uc2lkZXJlZCB2YWxpZD8KCklmIHRoZSB0
aW1pbmcgcGFyYW1ldGVycyB5aWVsZCBleGFjdGx5IDYgZm9yIHRfaHNfc2V0dGxlX3BzIC8gdGlt
ZXJfcGVyaW9kX3BzLAp0aGUgY2FsY3VsYXRpb24gZXZhbHVhdGVzIHRvIDAuIFRoaXMgdGhlbiBj
YXVzZXMgdGhlIGxhbmUgZW5hYmxlIHNlcXVlbmNlIHRvCmZhaWwgaGVyZSB3aXRoIC1FTk9ERVYu
CgpDb3VsZCBwaHlfcWNvbV9taXBpX2NzaTJfc2V0dGxlX2NudF9jYWxjKCkgcmV0dXJuIGEgbmVn
YXRpdmUgZXJyb3IgY29kZSBmb3IKaW52YWxpZCB0aW1pbmdzIGluc3RlYWQgb2Ygb3ZlcmxvYWRp
bmcgMCBhcyBhbiBlcnJvciB2YWx1ZT8KCj4gKwo+ICsJLyoKPiArCSAqIENTSV9DT01NT05fQ1RS
TDUgaXMgYSBwaHlzaWNhbCBsYW5lIHBvd2VyLXVwIGJpdG1hcDoKPiArCSAqIC0gQml0cyBbMCwy
LDQsNl0g4oaSIEQtUEhZIGRhdGEgbGFuZXMoTE4wLCBMTjIsIExONCwgTE42KQo+ICsJICogLSBC
aXRzIFsxLDMsNV0g4oaSIEMtUEhZIHRyaW8gbGFuZXMoTE4xLCBMTjMsIExONSkKPiArCSAqIC0g
Qml0IFs3XSDihpIgRC1QSFkgY2xvY2sgbGFuZShMTkNLKSBkZWRpY2F0ZWQgY2xvY2sgZW5hYmxl
Cj4gKwkgKi8KPiArCXZhbCA9IEJJVChsYW5lX2NmZy0+Y2xrLnBvcyk7Cj4gKwlmb3IgKGkgPSAw
OyBpIDwgY2ZnLT5udW1fZGF0YV9sYW5lczsgaSsrKQo+ICsJCXZhbCB8PSBCSVQobGFuZV9jZmct
PmRhdGFbaV0ucG9zICogMik7Cj4gKwo+ICsJd3JpdGVsKHZhbCwgY3NpMnBoeS0+YmFzZSArCj4g
KwkgICAgICAgQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1PTl9DVFJMbihyZWdzLT5jb21tb25fcmVn
c19vZmZzZXQsIDUpKTsKPiArCj4gKwkvKiBMYW5lIGNvbmZpZ3VyYXRpb24gZm9yIHBvbGFyaXR5
IEAgQ1NJUEhZLWJhc2UgKyBDVFJMOSAqLwo+ICsJZm9yIChpID0gMDsgaSA8IGNmZy0+bnVtX2Rh
dGFfbGFuZXM7IGkrKykgewo+ICsJCWlmIChsYW5lX2NmZy0+ZGF0YVtpXS5wb2wpIHsKPiArCQkJ
dTggcG9zID0gbGFuZV9jZmctPmRhdGFbaV0ucG9zOwo+ICsKPiArCQkJd3JpdGVsKEJJVCgyKSwg
Y3NpMnBoeS0+YmFzZSArIENTSVBIWV8yUEhfTE5fQ1NJXzJQSEFTRV9DVFJMOW4ocG9zICogMikp
OwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyB3cml0ZWwoKSB1bmludGVudGlvbmFsbHkg
Y2xvYmJlciBvdGhlciBiaXRzIGluIHRoZQpDU0lQSFlfMlBIX0xOX0NTSV8yUEhBU0VfQ1RSTDlu
IHJlZ2lzdGVyPwoKQSBkaXJlY3Qgd3JpdGUgb2YgQklUKDIpIHdpbGwgemVybyBvdXQgYWxsIG90
aGVyIGJpdHMgaW4gdGhlIHJlZ2lzdGVyLiBTaG91bGQKdGhpcyBiZSBhIHJlYWQtbW9kaWZ5LXdy
aXRlIHNlcXVlbmNlIHRvIHByZXNlcnZlIGhhcmR3YXJlIGRlZmF1bHRzIG9yCmNhbGlicmF0aW9u
cz8KCkFkZGl0aW9uYWxseSwgaWYgcG9sYXJpdHkgY29uZmlndXJhdGlvbiBpcyBkaXNhYmxlZCwg
dGhlIHJlZ2lzdGVyIGlzIG5vdAp3cml0dGVuIGF0IGFsbCwgd2hpY2ggbWlnaHQgbGVhdmUgaXQg
aW4gYW4gaW5jb25zaXN0ZW50IHN0YXRlIGlmIGl0IHdhcwpwcmV2aW91c2x5IG1vZGlmaWVkLgoK
PiArCQl9Cj4gKwl9Cj4gKwo+ICsJaWYgKGxhbmVfY2ZnLT5jbGsucG9sKQo+ICsJCXdyaXRlbChC
SVQoMiksIGNzaTJwaHktPmJhc2UgKyBDU0lQSFlfMlBIX0xOX0NTSV8yUEhBU0VfQ1RSTDluKGxh
bmVfY2ZnLT5jbGsucG9zKSk7Cj4gKwo+ICsJdmFsID0gQ1NJUEhZXzNQSF9DTU5fQ1NJX0NPTU1P
Tl9DVFJMNl9DT01NT05fUFdSRE5fQjsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjAteDFlLWNzaTItcGh5LXYxMy0wLTE2MGMz
MTk1ODg2M0BsaW5hcm8ub3JnP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
