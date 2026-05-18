Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73961CD4F52
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 11:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fzex2UBbcSRiJ9wPPy1XdbglK4mbqsh/ephVx+xoRlw=; b=YQ+Z39GjWeyLxs
	0ldtEf0CgpSWlanW12VvP+j5wqmGazHIqBKNSKrxAg3Fw/NO7t9hTXIRKRGAE7DY20HJCZQ7NeNWY
	ZVV7SAp6ZGHLsATRBUwoWorANsU0N8phqJi94PqHx5iQ1rGwZLRIMXulqV+iKCcCK2uuSpIebSN50
	CUe1skEXnSMCdrQdSNCDyx/4A+2puqxOUpq9Ow+2rFyPRZ4GCEPDkvFf8q3epp+JwBJJPZm6ieYBp
	06V+ceRpZInKzNWw3sNrokU01NrLYs77fgXcgVEZRNqJm6vslrta3BoxNul5HTzAmj9sZ+M7QOYrK
	l1BKCkF0MraPvUZYoZBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvkq-0000000FMe4-05YN;
	Mon, 18 May 2026 11:03:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOvko-0000000FMdj-28eG
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 11:03:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9A1F760055;
	Mon, 18 May 2026 11:03:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1C39C2BCB8;
	Mon, 18 May 2026 11:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779102201;
	bh=RC+EB6AGqYPaOpeRYcttsp5h/6sH2zJN0L9kROF4HRU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=XWZhN6x0RQcRVf6MWIXcbqcjAKAebH1ThNb1XrDU59wyjlmBjgkKA/Bdwt9mlHxYH
	 ysTE6ZnpfyAOP8HwRdGs53d3P1xeHbhgpakRoZLSSulPebjb+dLq9CWmXdwmCGVmpu
	 Karo4wzXgPtHvsRlCBKYUHd78hti6hxkkzmgFNEab7iStYWutqwBfhTcKWlyduRhwS
	 qA8uKGb24PgkpshnYeYSeaQnVt5QU6/hHhjPWpi13HE1oJvO5eenb/6rHyhQIlsLZd
	 h+qCT/lTU8R2BdQBZoRYpCAfRbU69Rt83g0X4QFkNYw+8tp+xnVAnzql0JTiEk7mzN
	 cDr7kfOJm9kVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] phy: core: Define TBT phy_mode
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
References: <20260518-topic-usb4phy-v1-2-71d827c49dca@oss.qualcomm.com>
Date: Mon, 18 May 2026 11:03:20 +0000
Message-Id: <20260518110320.F1C39C2BCB8@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHRidF9waHlf
c3VibW9kZSBlbnVtIGltcGxpY2l0bHkgc2V0cyBQSFlfU1VCTU9ERV9UQlQzIHRvIDAsIG1ha2lu
ZyBpdCB0aGUgaGlkZGVuIGRlZmF1bHQgc3VibW9kZSBmb3IgcGh5X3NldF9tb2RlKCkuCi0gW0xv
d10gVXNpbmcgUEhZX01PREVfVEJUIGFzIHRoZSBnZW5lcmljIG1vZGUgd2l0aCBVU0I0IGFzIGEg
c3VibW9kZSBjb25jZXB0dWFsbHkgaW52ZXJ0cyB0aGUgaW5kdXN0cnkgc3RhbmRhcmQgaGllcmFy
Y2h5LgotLQoKY29tbWl0IGYxYWQzM2NhMWVkNjJhYThkNGFiODA2Y2VkMDk5MDhkNGU5ZjM2MjUK
QXV0aG9yOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cgpw
aHk6IGNvcmU6IERlZmluZSBUQlQgcGh5X21vZGUKClRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBu
ZXcgUEhZIG1vZGUgZm9yIFRodW5kZXJib2x0IChUQlQpIGFuZCBVU0I0IFBIWXMKdGhhdCByZXF1
aXJlIHNwZWNpZmljIGVsZWN0cmljYWwgYW5kIGFuYWxvZyBjb25maWd1cmF0aW9ucy4gSXQgZGVm
aW5lcwpQSFlfTU9ERV9UQlQgYWxvbmcgd2l0aCBQSFlfU1VCTU9ERV9UQlQzIGFuZCBQSFlfU1VC
TU9ERV9VU0I0IHN1Ym1vZGVzLgoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9waHkvcGh5
LXRidC5oIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LXRidC5oCj4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi41ZjQ4MDU5ODE0ZTE5Cj4gLS0tIC9kZXYvbnVsbAo+
ICsrKyBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS10YnQuaAo+IEBAIC0wLDAgKzEsMTQgQEAKPiAr
LyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KPiArLyoKPiArICogQ29weXJp
Z2h0IChjKSBRdWFsY29tbSBUZWNobm9sb2dpZXMsIEluYy4gYW5kL29yIGl0cyBzdWJzaWRpYXJp
ZXMuCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX1BIWV9UQlRfSF8KPiArI2RlZmluZSBfX1BIWV9U
QlRfSF8KPiArCj4gK2VudW0gdGJ0X3BoeV9zdWJtb2RlIHsKPiArCVBIWV9TVUJNT0RFX1RCVDMs
CgpTaW5jZSBQSFlfU1VCTU9ERV9UQlQzIGlzIHRoZSBmaXJzdCBlbGVtZW50LCBpdCBpbXBsaWNp
dGx5IGV2YWx1YXRlcyB0byAwLgoKVGhlIGdlbmVyaWMgcGh5X3NldF9tb2RlKHBoeSwgbW9kZSkg
bWFjcm8gaW4gaW5jbHVkZS9saW51eC9waHkvcGh5Lmggd3JhcHMKcGh5X3NldF9tb2RlX2V4dChw
aHksIG1vZGUsIDApLgoKRG9lcyB0aGlzIG1lYW4gYW55IGRyaXZlciBjYWxsaW5nIHBoeV9zZXRf
bW9kZShwaHksIFBIWV9NT0RFX1RCVCkgd2lsbApzaWxlbnRseSBkZWZhdWx0IHRvIHJlcXVlc3Rp
bmcgdGhlIGxlZ2FjeSBUQlQzIGVsZWN0cmljYWwvdGltaW5nCmNvbmZpZ3VyYXRpb24gaW5zdGVh
ZCBvZiBVU0I0PwoKV291bGQgaXQgYmUgc2FmZXIgdG8gcmVzZXJ2ZSAwIGZvciBhbiB1bnNwZWNp
ZmllZCBzdGF0ZSAoZS5nLiwKUEhZX1NVQk1PREVfVU5TUEVDSUZJRUQgPSAwKSB0byBmb3JjZSBl
eHBsaWNpdCBzdWJtb2RlIHNlbGVjdGlvbiwgb3IgdG8KbWFrZSB0aGUgbW9kZXJuIHN0YW5kYXJk
IChVU0I0KSB0aGUgZGVmYXVsdD8KCj4gKwlQSFlfU1VCTU9ERV9VU0I0LAo+ICt9Owo+ICsKPiAr
I2VuZGlmCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaCBiL2luY2x1ZGUv
bGludXgvcGh5L3BoeS5oCj4gaW5kZXggZWE0Nzk3NWUyODhhZS4uMjZhOTFjMDcwZjhjZSAxMDA2
NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3BoeS9waHkuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgv
cGh5L3BoeS5oCgpbIC4uLiBdCgo+IEBAIC00NSw2ICs0Niw3IEBAIGVudW0gcGh5X21vZGUgewo+
ICAJUEhZX01PREVfTFZEUywKPiAgCVBIWV9NT0RFX0RQLAo+ICAJUEhZX01PREVfSERNSSwKPiAr
CVBIWV9NT0RFX1RCVCwKCklzIHVzaW5nIFBIWV9NT0RFX1RCVCBhcyB0aGUgZ2VuZXJpYyBtb2Rl
IHdpdGggVVNCNCBhcyBhIHN1Ym1vZGUgdGhlIGJlc3QKaGllcmFyY2h5IGhlcmU/CgpVU0I0IGlz
IHRoZSBmb3VuZGF0aW9uYWwgb3BlbiBzdGFuZGFyZCBlc3RhYmxpc2hlZCBieSB0aGUgVVNCLUlG
LCBhbmQgdGhlCkxpbnV4IGtlcm5lbCBVU0IgYW5kIFR5cGUtQyBzdWJzeXN0ZW1zIG5hdGl2ZWx5
IHRyZWF0IFVTQjQgYXMgdGhlIHByaW1hcnkKbW9kZSAoZS5nLiwgVFlQRUNfTU9ERV9VU0I0KS4K
CkNvdWxkIGdyb3VwaW5nIFVTQjQgdW5kZXIgYSBUaHVuZGVyYm9sdCBQSFkgbW9kZSBjYXVzZSBz
ZW1hbnRpYyBjb25mdXNpb24KYW5kIGNvbnRyYWRpY3QgZXhpc3Rpbmcga2VybmVsIFVTQiBub21l
bmNsYXR1cmU/IE1pZ2h0IGl0IGJlIG1vcmUKY29uc2lzdGVudCB0byB1c2UgUEhZX01PREVfVVNC
NCBhcyB0aGUgcHJpbWFyeSBtb2RlLCB3aXRoIFRCVDMgYXMgYQpsZWdhY3kgZmFsbGJhY2sgc3Vi
bW9kZT8KCj4gIH07Cj4gIAo+ICBlbnVtIHBoeV9tZWRpYSB7CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTE4LXRvcGljLXVzYjRw
aHktdjEtMC03MWQ4MjdjNDlkY2FAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
