Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FAE0C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 10:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctmM1AdAgrlI1P8sKqU7DbsMjLvSFdA4XHQ5zEBHKxw=; b=dlQLoY0igrk0AS
	hvAeEo8Us6bQNdoq0RSSkIaDT+MvCQe1pyy9y7JL0GVLEHlbJ7vLKTei+rmB12dKD1HZukxZCGy9B
	fwOdgnu8Qb4JhMj2aDR2afJjavp66GSQ0ujZS1ZTgn1wOaoe1UuZqb7oFBY2UKJW2PbOFyAu8LRla
	aTef6fS15Yp+kbd3ofxv8JWSt2T4F1sIHdS4/oaNTZSEAH6a0dr89h9T2h+JDqmdgO1FqfDxR1BbO
	XEu7m8PBLm/B+vlE5SyUVIzgcCbpHXeEyGkOJqt1swzV094nuyc2TwH1S1xzOZHgEdjIAO6ie7MsX
	FnbY6ncKo1665Wssx4hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wllNa-00000006VMX-1AlI;
	Mon, 20 Jul 2026 10:37:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wllNZ-00000006VMI-16tq
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 10:37:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F383540602;
	Mon, 20 Jul 2026 10:37:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71DE21F000E9;
	Mon, 20 Jul 2026 10:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784543864;
	bh=5zXzbrMwUejUbMzW5JpHO5ucJIzu4vBKsITMaMIt9rg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EMWwmDeBapJDjjr0gD89d322Z5Hg/A/xku0FPNHeflWr9wFlugzUHET7wa2RYRcAV
	 tNO+9TgsFBy4Zh2xYJIDOBPrLQKQZVwvgjrJa3j7B57d0RBuKgi1IPB/rilh6zGLmQ
	 LQi08aUbU/SaeVAhR6RH+F4P6ZAHW7LjoNJXBnqafHunobHMD2j55ZEFB4KkcmGrbB
	 DxMolyKKcc53E3aZsmxhm2b/HQy78y1HX+08J+pQzvUWCMIhySGUFTwJIu4BiDMjRB
	 lMtao9JCEbeMvcrkoy248a1SvT67b09WY0o1wt2HL33nluVza1sPuspPMiB7b2otQg
	 hVzQIJYYxdAQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260720102222.251179-4-a0987203069@gmail.com>
References: <20260720102222.251179-1-a0987203069@gmail.com>
 <20260720102222.251179-4-a0987203069@gmail.com>
Date: Mon, 20 Jul 2026 10:37:43 +0000
Message-Id: <20260720103744.71DE21F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgZmFp
bHMgdG8gY2xlYXIgdGhlIE1JU0NGQ1IwX1VIT1ZSQ1VSSCBoYXJkd2FyZSBiaXQgd2hlbiB0aGUg
YG51dm90b24sb2MtYWN0aXZlLWhpZ2hgIGRldmljZSB0cmVlIHByb3BlcnR5IGlzIGFic2VudCwg
aW5oZXJpdGluZyBwb3RlbnRpYWxseSBpbmNvcnJlY3QgYm9vdGxvYWRlciBzdGF0ZS4KLSBbTWVk
aXVtXSBUaGUgZHJpdmVyIGlnbm9yZXMgdGhlIHJldHVybiB2YWx1ZSBvZiByZWdtYXBfcmVhZCgp
LCBwb3RlbnRpYWxseSBldmFsdWF0aW5nIHVuaW5pdGlhbGl6ZWQgc3RhY2sgbWVtb3J5IGlmIHRo
ZSByZWFkIGZhaWxzLgotLQoKLS0tIFBhdGNoIFszXTogW1BBVENIIHY0IDMvM10gcGh5OiBudXZv
dG9uOiBwaHktbWEzNWQxLXVzYjI6IGV4dGVuZCB0byBkdWFsLXBvcnQgd2l0aCBPVEcgc3VwcG9y
dCAtLS0KTm90ZTogVGhlIGZvcm1hdCBvZiB0aGlzIHJldmlldyBpcyBhbHRlcmVkIGR1ZSB0byBz
dHJpY3QgcmVjaXRhdGlvbiByZXN0cmljdGlvbnMuIEluc3RlYWQgb2YgaW5saW5lIHBhdGNoIHF1
b3RpbmcsIGEgZnJlZS1mb3JtIHN1bW1hcnkgb2YgdGhlIGZpbmRpbmdzIGlzIHByb3ZpZGVkIGJl
bG93LgoKQ29tbWl0OiA2NzhlNjU2NzhjOGZiNWUyMzYzZWIxZDUxZTdhOWEyMTU5Y2E4ZGQ5CkF1
dGhvcjogSm9leSBMdSA8YTA5ODcyMDMwNjlAZ21haWwuY29tPgpTdWJqZWN0OiBwaHk6IG51dm90
b246IHBoeS1tYTM1ZDEtdXNiMjogZXh0ZW5kIHRvIGR1YWwtcG9ydCB3aXRoIE9URyBzdXBwb3J0
CgpUaGlzIGNvbW1pdCBleHRlbmRzIHRoZSBkcml2ZXIgdG8gbWFuYWdlIGJvdGggVVNCIHBvcnRz
IGFuZCB1cGRhdGVzIHRoZSBpbml0CnBvbGxpbmcgbG9naWMgdG8gaGFuZGxlIGhvc3QtbW9kZSBh
bmQgZGV2aWNlLW1vZGUgY2xvY2sgc3RhYmlsaXR5LiBJdCBhbHNvCnJlZ2lzdGVycyBhIHJlYWQt
b25seSBVU0Igcm9sZSBzd2l0Y2ggYW5kIGFkZHMgc3VwcG9ydCBmb3IgdGhlIHJjYWxjb2RlIGFu
ZApvYy1hY3RpdmUtaGlnaCBkZXZpY2UgdHJlZSBwcm9wZXJ0aWVzLgoKW1NldmVyaXR5OiBNZWRp
dW1dCkluIG1hMzVfdXNiX3BoeV9pbml0KCkgYW5kIG1hMzVfcm9sZV9zd19nZXQoKSwgdGhlIHJl
dHVybiB2YWx1ZSBvZgpyZWdtYXBfcmVhZCgpIGlzIG5vdCBjaGVja2VkIGJlZm9yZSBldmFsdWF0
aW5nIHRoZSAndmFsJyBzdGFjayB2YXJpYWJsZS4gSWYKdGhlIHJlZ2lzdGVyIHJlYWQgZmFpbHMs
IG1pZ2h0IHRoZSBkcml2ZXIgZXZhbHVhdGUgdW5pbml0aWFsaXplZCBtZW1vcnksCmNhdXNpbmcg
aXQgdG8gcmV0dXJuIGFuIHVucHJlZGljdGFibGUgVVNCIHJvbGUgb3IgZmFsc2VseSBieXBhc3Mg
dGhlIFBIWQppbml0aWFsaXphdGlvbj8KCltTZXZlcml0eTogSGlnaF0KSW4gbWEzNV91c2JfcGh5
X3Byb2JlKCksIHRoZSBkcml2ZXIgc2V0cyB0aGUgTUlTQ0ZDUjBfVUhPVlJDVVJIIGJpdCBpZiB0
aGUKIm51dm90b24sb2MtYWN0aXZlLWhpZ2giIHByb3BlcnR5IGlzIHByZXNlbnQsIGJ1dCBsYWNr
cyBhbiBlbHNlIHBhdGggdG8gY2xlYXIKaXQgaWYgdGhlIHByb3BlcnR5IGlzIGFic2VudC4gRG9l
cyB0aGlzIGFsbG93IHRoZSBoYXJkd2FyZSB0byBpbmNvcnJlY3RseQppbmhlcml0IGFuIGludmVy
dGVkIG92ZXItY3VycmVudCBwb2xhcml0eSBmcm9tIHRoZSBib290bG9hZGVyIG9yIGEgcHJpb3IK
a2VybmVsIGluc3RhbmNlPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcyMDEwMjIyMi4yNTExNzktMS1hMDk4NzIwMzA2OUBnbWFp
bC5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
