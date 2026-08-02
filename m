Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CCDEC55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17mRVpJ23HyeBLWgYfrzYHarOUrzV7LW92bYT7ZlH/s=; b=u5dKqlC4qOobiA
	0lg36uxrHbGYzA/uN/syHteky9n9g/nhDlJ6YjhBO8DkLg3WrP6kpvX7Le6OngDMeneab25warXX3
	HI+KNfKQqDDVms0W8dHWPKawh8Otjvq/ExY7CmSQHwMh3EkXI015HFT7pezCywh4dVgoH3RjqrjDk
	RzpHCNsvY5izIdL1DQPSgDGuR26o7WgAHlFAgJUD8RNXkfR68g+j67I0koelTqzBKgYrWyDAi5t3t
	oIzNtORlcXo+sPMjLXJ9aDdasEGvVITrR/jtG1sjTUU8+/qcMjuWyOwS+GWYHy3R74FEZJ3ADNKrd
	PmMZx+ZqWn6Ysk3DfCXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqd1J-0000000G2w9-1CGR;
	Sun, 02 Aug 2026 20:42:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqd1I-0000000G2w3-1RwU
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:42:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0F120600FF;
	Sun,  2 Aug 2026 20:42:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3716E1F000E9;
	Sun,  2 Aug 2026 20:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785703369;
	bh=05d7tOGLEKQPje/tDKoASPNLvNopohLv9tFUdBtQjlk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PYnYnTn0d2wRkFW1Bv9Eh4zqnIKWiD9UolO+PNai7U6OMibFOCV7UsofSQ5E/09Fu
	 gdr/DTGJIoWoHlcs6ZE6LJrgjgE8OeOwfgGcKE41GG1FrCZZ5auXr8gM/gcD1Ct+6E
	 IxDkRlrlszHs5WWsd8KZiQqOJUBJWwndXheVwnQQR3mWCfAngh8gTS/C6RqbZVrvAU
	 EuIddC1/3oBGN+QSE4G78wToSZNKCzWOJhP9beo05fr1rMA2X0XtP4TVG6Tu4SSUdx
	 oKAXgmVuljNLEqVfc/6s8sxAFjyn86wCHbbtpW9Dge6WBjUrZwppRt1egUnSKDRTNa
	 EkZ8KASpwmPGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 01/12] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: mfd@lists.linux.dev, lee@kernel.org, vkoul@kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260802-zx29clk-v9-1-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-1-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:42:48 +0000
Message-Id: <20260802204249.3716E1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHNjaGVtYSBv
bWl0cyB0aGUgYHJlc2V0c2AgcHJvcGVydHkgd2hpbGUgcmVzdHJpY3RpbmcgYWRkaXRpb25hbCBw
cm9wZXJ0aWVzLCB3aGljaCB3aWxsIGNhdXNlIERUIHZhbGlkYXRpb24gZmFpbHVyZXMuCi0tCgot
LS0gUGF0Y2ggWzFdOiBbUEFUQ0ggdjkgMDEvMTJdIGR0LWJpbmRpbmdzOiBjbGs6IHp0ZTogQWRk
IHp4Mjk3NTIwdjMgdG9wIGNsb2NrIGFuZCByZXNldCBjb250cm9sbGVyIC0tLQpjb21taXQgYWFj
ODkwOTRkZDcxZDY0OTllMDZjNjJmM2UxNGE2ZGY2ZDVlZmFjNQpBdXRob3I6IFN0ZWZhbiBEw7Zz
aW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogY2xrOiB6dGU6
IEFkZCB6eDI5NzUyMHYzIHRvcCBjbG9jayBhbmQgcmVzZXQgY29udHJvbGxlcgoKVGhpcyBjb21t
aXQgYWRkcyB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBzY2hlbWEgZm9yIHRoZSBaVEUgengyOTc1
MjB2MyB0b3AKY2xvY2sgYW5kIHJlc2V0IGNvbnRyb2xsZXIuIEl0IGRlZmluZXMgY2xvY2tzLCBy
ZXNldHMsIGFuZCBQSFkgcHJvcGVydGllcwpmb3IgdGhlIHRvcGNybSBub2RlLCBhcyB3ZWxsIGFz
IGEgc3lzY29uIHJlYm9vdCBjaGlsZCBub2RlLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLXRvcGNybS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLXRv
cGNybS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLXRv
cGNybS55YW1sClsgLi4uIF0KPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAg
aXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IHp0ZSx6eDI5NzUyMHYzLXRvcGNybQo+ICsgICAgICAt
IGNvbnN0OiBzeXNjb24KWyAuLi4gXQo+ICsgICIjcmVzZXQtY2VsbHMiOgo+ICsgICAgY29uc3Q6
IDEKPiArCj4gKyAgcmVib290Ogo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKyAgICAkcmVmOiAvc2No
ZW1hcy9wb3dlci9yZXNldC9zeXNjb24tcmVib290LnlhbWwjCj4gKyAgICB1bmV2YWx1YXRlZFBy
b3BlcnRpZXM6IGZhbHNlCj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgUmVib290IG1ldGhv
ZCBmb3IgdGhlIFNvQy4KPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0g
cmVnCj4gKyAgLSBjbG9ja3MKPiArICAtIGNsb2NrLW5hbWVzCj4gKyAgLSBpbnRlcnJ1cHRzCj4g
KyAgLSBpbnRlcnJ1cHQtbmFtZXMKPiArICAtIHJlYm9vdAo+ICsgIC0gIiNjbG9jay1jZWxscyIK
PiArICAtICIjcGh5LWNlbGxzIgo+ICsgIC0gIiNyZXNldC1jZWxscyIKPiArCj4gK2FkZGl0aW9u
YWxQcm9wZXJ0aWVzOiBmYWxzZQoKW1NldmVyaXR5OiBNZWRpdW1dClNob3VsZCB0aGUgcmVzZXRz
IHByb3BlcnR5IGJlIGV4cGxpY2l0bHkgYWRkZWQgdG8gdGhlIHByb3BlcnRpZXMgYmxvY2s/CgpU
aGUgY29tbWl0IG1lc3NhZ2UgbWVudGlvbnMgYSBzZWxmLXJlZmVyZW5jaW5nIHJlc2V0IHByb3Bl
cnR5IGJlaW5nIHVzZWQgb24KdGhpcyBub2RlLCBidXQgYmVjYXVzZSBhZGRpdGlvbmFsUHJvcGVy
dGllcyBpcyBzZXQgdG8gZmFsc2UsIG9taXR0aW5nIHJlc2V0cwpmcm9tIHRoZSBzY2hlbWEgd2ls
bCBjYXVzZSBkdGJzX2NoZWNrIHRvIGZhaWwgd2hlbiB2YWxpZGF0aW5nIGRldmljZSB0cmVlcwp0
aGF0IGluY2x1ZGUgaXQuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwODAyLXp4MjljbGstdjktMC1kMDU1MzBkODVkMjhAZ21haWwu
Y29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
