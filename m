Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C9FEC531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 19:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6oa6PYeSmaSlBoRA0nVupmfxtjKhG2bKkXlQzeUbW4=; b=GAGKazirx+5PG9
	GAnIob9i+e/qFxE2WmNT7DqHoACFpzj3M5DhhomfKmAOprOHuBeDefz8sY6qqqNryj+chc5N6+oNW
	eXYKvkIPh9oAXt6cq8Qp69dij30PmMEpbPk42dgm4SAh5pSWJHEXWvj24fQLkRPO2bbYs9bzN+duD
	vGzlMjIIPqtuSoBL439BdRrRV5M+56Xy4pq7ikoM1bNMrVf0M28hHzcwDsl/JuLCa5NoC2yJ9402x
	K7WvXPUIRgKSMFCiKynMje9lZlGsLrvsHf5+dNd1EQWLI/C9eBKf2jmmHFK595oRZo0xz4qAluoKN
	vMu1z6fsgEVaOm6sL6vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQnE-00000003jwE-0jJf;
	Mon, 27 Jul 2026 19:15:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woQnD-00000003jw7-1P60
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 19:15:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B7A740E05;
	Mon, 27 Jul 2026 19:15:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC7EE1F000E9;
	Mon, 27 Jul 2026 19:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785179714;
	bh=54z6X8nhUXT7ZsQi253DU+1CQTthZ+Xv5SDBK/KCXa0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R01GptURH2m23jAe5EjNasCjeCVN8i7IgIU6/Skc54D61Jg1KnJSew6mlT53DDyYi
	 IOoAD+I8+HYOpc920dJT2JhrPtr1zau7MLNnoROPqr/XI/htthWgeszCbLcftp8/DC
	 xsJ8Tz4PytXWI2m8GkDrIQwn1nm0PqYDLwXqqoAfIP21mI73EmuiCOi3bsUv0IAT/e
	 bwuPHxawdlrLlFsIHUPdfzad4+Ilw154YV4PsdeinyeAT9cEFkrZhsCVCqYazohIFi
	 S8F8+uyW+MwcYQ0tDplnImc+12OdKGlXIXSXschv/N6jpS9zRajA/Ez61/XwU3rvfg
	 LjGSELBtPWbOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 07/12] clk: zte: Add zx PLL support infrastructure
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: lee@kernel.org, robh@kernel.org, mfd@lists.linux.dev, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260727-zx29clk-v8-7-7a107b00f1dd@gmail.com>
References: <20260727-zx29clk-v8-0-7a107b00f1dd@gmail.com>
 <20260727-zx29clk-v8-7-7a107b00f1dd@gmail.com>
Date: Mon, 27 Jul 2026 19:15:13 +0000
Message-Id: <20260727191513.EC7EE1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gengyOV9wbGxfZGV0
ZXJtaW5lX3JhdGUgaWdub3JlcyB0aGUgcmVxLT5taW5fcmF0ZSBhbmQgcmVxLT5tYXhfcmF0ZSBj
b25zdHJhaW50cyBwcm92aWRlZCBieSB0aGUgY2xvY2sgZnJhbWV3b3JrLCBwb3RlbnRpYWxseSB2
aW9sYXRpbmcgYm91bmRzLgotLQoKLS0tIFBhdGNoIFs3XTogW1BBVENIIHY4IDA3LzEyXSBjbGs6
IHp0ZTogQWRkIHp4IFBMTCBzdXBwb3J0IGluZnJhc3RydWN0dXJlIC0tLQpjb21taXQgYjIyODE0
Mzk0NjkzNjhhZDQxY2RmYzJlM2IxY2I5MTc4ODQwZDg1OApBdXRob3I6IFN0ZWZhbiBEw7ZzaW5n
ZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpjbGs6IHp0ZTogQWRkIHp4IFBMTCBzdXBw
b3J0IGluZnJhc3RydWN0dXJlCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIHRoZSBaWCBQTEwgc3Vw
cG9ydCBpbmZyYXN0cnVjdHVyZSBmb3IgWlRFIHBsYXRmb3JtcywKYWRkaW5nIHJhdGUgY2FsY3Vs
YXRpb24sIHByZXBhcmUvZW5hYmxlIG9wZXJhdGlvbnMsIGFuZCByZWdpc3RyYXRpb24gbG9naWMu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay96dGUvcGxsLXp4LmMgYi9kcml2ZXJzL2Nsay96
dGUvcGxsLXp4LmMKPiBpbmRleCBmOGRkYjRjN2RmZjY2Li42ZTNhMjBjYjU4MzlhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvY2xrL3p0ZS9wbGwtenguYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3p0ZS9w
bGwtenguYwpbIC4uLiBdCj4gK3N0YXRpYyB1MzIgengyOV9wbGxfY2FsY192YWx1ZXMoY29uc3Qg
c3RydWN0IHp4MjlfY2xrX3BsbCAqcGxsLCB1bnNpZ25lZCBsb25nIHBhcmVudF9yYXRlLAo+ICsJ
CQkJdW5zaWduZWQgbG9uZyByYXRlKQo+ICt7ClsgLi4uIF0KPiArCQkJc2V0dGluZyA9IGZiZGl2
IDw8IFpYMjlfUExMX0ZCRElWX1NISUZUOwo+ICsJCQlzZXR0aW5nIHw9IHJlZmRpdiA8PCBaWDI5
X1BMTF9SRUZESVZfU0hJRlQ7Cj4gKwkJCXNldHRpbmcgfD0gaSA8PCBaWDI5X1BMTF9QT1NURElW
MV9TSElGVDsKPiArCQkJc2V0dGluZyB8PSBqIDw8IFpYMjlfUExMX1BPU1RESVYyX1NISUZUOwo+
ICsJCQlvdXQgPSB6eDI5X3BsbF9nZXRfcmF0ZShwbGwsIHBhcmVudF9yYXRlLCBzZXR0aW5nKTsK
PiArCj4gKwkJCWlmIChhYnNfZGlmZihvdXQsIHJhdGUpID4gYmVzdCkKPiArCQkJCWNvbnRpbnVl
Owo+ICsKPiArCQkJaWYgKGFic19kaWZmKG91dCwgcmF0ZSkgPCBiZXN0KSB7Cj4gKwkJCQlwb3N0
ZGl2MSA9IGk7Cj4gKwkJCQlwb3N0ZGl2MiA9IGo7Cj4gKwkJCQliZXN0X2ZiZGl2ID0gZmJkaXY7
CgpbU2V2ZXJpdHk6IE1lZGl1bV0KU2luY2UgdGhpcyBsb29wIHVuY29uZGl0aW9uYWxseSBwaWNr
cyB0aGUgY2xvc2VzdCBoYXJkd2FyZSBmcmVxdWVuY3kgdG8gdGhlCnJlcXVlc3RlZCByYXRlLCBp
cyBpdCBwb3NzaWJsZSB0aGF0IGl0IHNlbGVjdHMgYSBmcmVxdWVuY3kgb3V0c2lkZSBvZiB0aGUg
Q0NGCmJvdW5kYXJpZXM/IAoKSWYgYSBkcml2ZXIgc2V0cyBzdHJpY3QgY29uc3RyYWludHMgdmlh
IGNsa19zZXRfcmF0ZV9yYW5nZSgpLCBhbmQgdGhlIG5lYXJlc3QKUExMIGFwcHJveGltYXRpb24g
ZmFsbHMgb3V0c2lkZSB0aGF0IHJhbmdlIHdoaWxlIGEgdmFsaWQgYWx0ZXJuYXRpdmUgZXhpc3Rz
Cmluc2lkZSBpdCwgY2xrX2NhbGNfbmV3X3JhdGVzKCkgbWlnaHQgcmVqZWN0IHRoZSBvdXQtb2Yt
Ym91bmRzIHJhdGUuIAoKWyAuLi4gXQo+ICtzdGF0aWMgaW50IHp4MjlfcGxsX2RldGVybWluZV9y
YXRlKHN0cnVjdCBjbGtfaHcgKmh3LCBzdHJ1Y3QgY2xrX3JhdGVfcmVxdWVzdCAqcmVxKQo+ICt7
Cj4gKwlzdHJ1Y3QgengyOV9jbGtfcGxsICpwbGwgPSB0b196eDI5X2Nsa19wbGwoaHcpOwo+ICsJ
dW5zaWduZWQgbG9uZyBuZXdfcmF0ZTsKPiArCXUzMiBzZXR0aW5nOwo+ICsKPiArCS8qIFRPRE86
IERQTEwgY2FuIHN3aXRjaCBiZXR3ZWVuIHR3byBwYXJlbnRzLCBvbmUgb2Ygd2hpY2ggaXMgYW5v
dGhlciBQTEwuIFRha2UgdGhpcyBpbnRvCj4gKwkgKiBhY2NvdW50IHdoZW4gc2VhcmNoaW5nIHRo
ZSBjb25maWcgc3BhY2UgYW5kIHNldCByZXEtPmJlc3RfcGFyZW50X3JhdGUuCj4gKwkgKgo+ICsJ
ICogSW4gcHJhY3RpY2UgaXQgc2hvdWxkbid0IG1hdHRlciB0aG91Z2guIERwbGwgaXMgYWx3YXlz
IGNvbmZpZ3VyZWQgdG8gYSBmaXhlZCBmcmVxdWVuY3kKPiArCSAqIGFuZCBpcyB0aGUgb25seSBj
bG9jayB3aXRoIGEgc3dpdGNoYWJsZSBwYXJlbnQuCj4gKwkgKi8KPiArCWlmICghcmVxLT5iZXN0
X3BhcmVudF9yYXRlKSB7Cj4gKwkJZGV2X2VycihwbGwtPmRldiwgIkRpZCBub3QgZXhwZWN0IGJl
c3RfcGFyZW50X3JhdGU9MFxuIik7Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gKwo+ICsJ
c2V0dGluZyA9IHp4MjlfcGxsX2NhbGNfdmFsdWVzKHBsbCwgcmVxLT5iZXN0X3BhcmVudF9yYXRl
LCByZXEtPnJhdGUpOwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBjb2RlIG5lZWQgdG8g
Y29uc2lkZXIgcmVxLT5taW5fcmF0ZSBhbmQgcmVxLT5tYXhfcmF0ZSBiZWZvcmUKY2FsY3VsYXRp
bmcgdGhlIG5ldyByYXRlPyBUaGUgbWluaW11bSBhbmQgbWF4aW11bSBib3VuZGFyaWVzIHBhc3Nl
ZCBieSB0aGUKY2xvY2sgZnJhbWV3b3JrIHRvIHJlc3RyaWN0IHRoZSBzZWFyY2ggYXBwZWFyIHRv
IGJlIGlnbm9yZWQgaGVyZS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjctengyOWNsay12OC0wLTdhMTA3YjAwZjFkZEBnbWFp
bC5jb20/cGFydD03CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
