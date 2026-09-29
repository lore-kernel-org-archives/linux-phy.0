Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7220CA5FA5
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 02:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NA0QmtsolUo6gB2GU0GCy6kSebVzmv+RRyY8jE6s28I=; b=DMBizEQGKEAPsq
	SdT+H+HAehMbNgIxY3+fmBsSUWhwDoaZtDua5Mw4JNavAk1losEc5lGA6IIElN5B/i5ggJu8ork9O
	5sMAxzDJ7I8AH1TjnwPht2EbFavwQWtR/d9XKCiGXeCVnDofmo7IUzAO7Cp7HfBY7ashhz+smu5WT
	ELqfSRt8dihvc5sTRTFKmxNwxMJFRJZr3Ht97stGfbrtePGcHh76vZ3BeBTOBZoW/HWa8i+LlU+pg
	bLCFByQfoy+jyZGGL5sjM89xlsrG1vYSb6pWJNJfWmWtyJdHGJtooloVq52XrkfVVF194JuVza1SG
	qZN/E/zqfIAMBNUXCgJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNOB-000000027BZ-1pH3;
	Tue, 29 Sep 2026 02:16:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNOA-000000027B7-0aOA
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 02:16:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3B7C760008;
	Tue, 29 Sep 2026 02:16:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EB891F000FF;
	Tue, 29 Sep 2026 02:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790648172;
	bh=zwl3tTzOXIR9Std1UeTK2RA1IHFZWaJIg+6cKzNqwAA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H8i3f/v3qxfYK+6vAShGxs93raIuac5bE6cIUbsN1uzYGl93AWRBVP0fb+y0uuTGZ
	 jVgHzPDHqxakogDsoDnE4iAtn3xbI/ODAseUwNvPnq6TMDYcLpiPawTdsrnaDjVLOO
	 PKDpRS9FHVLOEpx46zKE5yIJFYNnGOerQUmPByz1AR5sYeB0q2AnmSWhq/7Tm5uCUO
	 zLrV6vZcYLiZ8UiNze8sVVIX1dP2DO0ObKyxkXrbYsrHIthX6luKzqwF9aQkkvZ8ze
	 vmyCUUXTpQ7NTLPJWT/+nI4W7ICjAEdAUkm3VDmtHvPZc4s9XxGF+zwHInzYeWmtlF
	 2bPD7BmUE+Dzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260929020854.1282339-4-a0987203069@gmail.com>
References: <20260929020854.1282339-1-a0987203069@gmail.com>
 <20260929020854.1282339-4-a0987203069@gmail.com>
Date: Tue, 29 Sep 2026 02:16:12 +0000
Message-Id: <20260929021612.7EB891F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBudXZvdG9u
OiB1bmluaXRpYWxpemVkIHN0YWNrIHZhcmlhYmxlIHVzYWdlIGluIG1hMzVfcm9sZV9zd19nZXQo
KQotLQoKY29tbWl0IDgwMWExMjM0NjZhNTcyYWEwNzBmZDdhODg1YmIyN2FkZjNmODMxMTAKQXV0
aG9yOiBKb2V5IEx1IDxhMDk4NzIwMzA2OUBnbWFpbC5jb20+CgpwaHk6IG51dm90b246IHBoeS1t
YTM1ZDEtdXNiMjogZXh0ZW5kIHRvIGR1YWwtcG9ydCB3aXRoIE9URyBzdXBwb3J0CgpUaGlzIGNv
bW1pdCBleHRlbmRzIHRoZSBOdXZvdG9uIE1BMzVEMSBVU0IgMi4wIFBIWSBkcml2ZXIgdG8gbWFu
YWdlIGJvdGgKUEhZMCBhbmQgUEhZMSwgaGFuZGxpbmcgaG9zdCBhbmQgZGV2aWNlIG1vZGVzLiBJ
dCBpbnRyb2R1Y2VzIGEgc2luZ2xlIGluaXQKY2FsbGJhY2sgaW5zdGVhZCBvZiBzZXBhcmF0ZSBw
b3dlcl9vbi9wb3dlcl9vZmYgY2FsbGJhY2tzIGFuZCBhZGRzIGEgVVNCCnJvbGUgc3dpdGNoIGZv
ciBQSFkwLiBOZXcgZGV2aWNlLXRyZWUgcHJvcGVydGllcyBmb3IgcmVzaXN0b3IgY2FsaWJyYXRp
b24KYW5kIG92ZXItY3VycmVudCBwb2xhcml0eSBhcmUgYWxzbyBzdXBwb3J0ZWQuCgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9udXZvdG9uL3BoeS1tYTM1ZDEtdXNiMi5jIGIvZHJpdmVycy9w
aHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYwo+IGluZGV4IDlhNDU5YjcwMGVkNDguLjU0N2M3
ZDU1ZDhmZjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVz
YjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L251dm90b24vcGh5LW1hMzVkMS11c2IyLmMKWyAuLi4g
XQo+ICtzdGF0aWMgZW51bSB1c2Jfcm9sZSBtYTM1X3JvbGVfc3dfZ2V0KHN0cnVjdCB1c2Jfcm9s
ZV9zd2l0Y2ggKnN3KQo+ICt7Cj4gKwlzdHJ1Y3QgbWEzNV91c2JfcGh5ICpwID0gdXNiX3JvbGVf
c3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKPiArCXUzMiB2YWw7Cj4gKwo+ICsJcmVnbWFwX3JlYWQo
cC0+c3lzcmVnLCBNQTM1X1NZU19QV1JPTk9UUCwgJnZhbCk7Cj4gKwo+ICsJcmV0dXJuICh2YWwg
JiBQV1JPTk9UUF9VU0JQMElEKSA/IFVTQl9ST0xFX0hPU1QgOiBVU0JfUk9MRV9ERVZJQ0U7Cj4g
K30KCltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHRoaXMgY29kZSB1c2UgYW4gdW5pbml0aWFsaXpl
ZCBzdGFjayB2YXJpYWJsZSBpZiByZWdtYXBfcmVhZCgpIGZhaWxzPwoKSWYgcmVnbWFwX3JlYWQo
KSByZXR1cm5zIGEgbmVnYXRpdmUgZXJyb3IgY29kZSwgdGhlIG91dC1wYXJhbWV0ZXIgdmFsIHdp
bGwKcmVtYWluIHVuaW5pdGlhbGl6ZWQuIFRoZSBzdWJzZXF1ZW50IGNoZWNrIG9mIHZhbCAmIFBX
Uk9OT1RQX1VTQlAwSUQgd291bGQKdGhlbiBldmFsdWF0ZSB1bmluaXRpYWxpemVkIGtlcm5lbCBz
dGFjayBtZW1vcnkuCgpUaGlzIGNvdWxkIHJlcG9ydCBhbiB1bnJlbGlhYmxlIGhhcmR3YXJlIHN0
YXRlIHRvIHRoZSBVU0Igcm9sZSBmcmFtZXdvcmsgYW5kCmxlYWsgYSBiaXQgb2Yga2VybmVsIHN0
YWNrIG1lbW9yeSB0byB1c2Vyc3BhY2UgdmlhIHRoZSBzeXNmcyBpbnRlcmZhY2UuCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTI5
MDIwODU0LjEyODIzMzktMS1hMDk4NzIwMzA2OUBnbWFpbC5jb20/cGFydD0zCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
