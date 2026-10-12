Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 672DCCA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 07:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGRJ4HdUhIYv/Y6w/DRvYlk2MqQmBe27eoQaXMeq1k4=; b=rIPkjMv2moPC2o
	BlM5ZHvSfG5rSnqRPQG7i+Y6n/EZV8dMeCv7LrlDfRi7dSZruAGZgPMlAzOoCEeeANEzVc/AlmHQv
	10AALH5vArgPHu6S23c4poOW6MyqVzrM8kFb/6HYJn2TeCCpnuQ2X3+A+axArxuT2M7CyqDpj8R7f
	2Lxq7d9qJ8KBZkWpeCmMJq97ge9/beVGeZR71iH50nTT4WDooSpDxm8bOrRFcknLjM7Ys/T3m4Y3N
	+HDM6BiZAA5f6iQ+4lAjGwYOL7xXn11/mhAHT2Hg4TH0vwqXh2aU1Icmcjyl4xPIPZ0VfxJ0pVvv6
	77DeeAyiYTI78NDzRARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA1e-00000009nTp-0SqV;
	Mon, 12 Oct 2026 07:00:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGA1c-00000009nTg-3cOK
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 07:00:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9C55740AD1;
	Mon, 12 Oct 2026 07:00:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 257E41F0089B;
	Mon, 12 Oct 2026 07:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791788444;
	bh=r19Im8HO0VMd/LtZn9fpu+F06N9cUU5a2NFzYpKq+GA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Lwb9+lqIMoBPxopNffzr76/GdktcJ6JLy55t1ss9ESuXbW4EGzexC04uYmdeaBeN/
	 nxB/bkx9TLySzo++456GGkHNi0bzv9bJsJq5OJ/oP7qWZNp/fihuMv6UWExJ4WLq6J
	 ikEBz0KqrltWJv8fLiCyKVFgn1mcMBknlotQWFsf2LZ0EygvR8o0mQIhj6cLz/TlGm
	 RDobx+UcFxwFX4kErg1H2ffoQVFvN8V4RnKBBHYx/PvypvH2Ka7x+2DYmme0t9S8bs
	 7oTKnuDJYa56eIdAiMaMbcjxzKbKpePn8UQyfvAf9/MIbyd0GxXs0VNoz8mfdcFNhZ
	 t3owfYy6Uhf6Q==
Message-ID: <sashiko-outbox-167764@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v21 09/14] media: qcom: camss: vfe: Add support for VFE
 1080
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, media-ci@linuxtv.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20261011-kaanapali-camss-v21-9-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-9-04fd28d815c6@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 07:00:43 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG1lZGlhOiBjYW1zczog
aGFyZGNvZGVkIEFVUF9VUERBVEUgY291bnQgdmlvbGF0ZXMgaGFyZHdhcmUgY29uc3RyYWludAot
IFtIaWdoXSBtZWRpYTogY2Ftc3M6IGRhdGEgcmFjZSBvbiBjc2lkLT5hdXBfdXBkYXRlIGFuZCBy
dXBfdXBkYXRlCi0tCgpjb21taXQgYmFiNTU4MTQyMmU4YzMzNzI4YTM3YWJlMzI2NDg0MjA1MDNm
YzYwYwpBdXRob3I6IEhhbmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+
CgptZWRpYTogcWNvbTogY2Ftc3M6IHZmZTogQWRkIHN1cHBvcnQgZm9yIFZGRSAxMDgwCgpBZGQg
c3VwcG9ydCBmb3IgdGhlIFZGRSAoVmlkZW8gRnJvbnQgRW5kKSAxMDgwIGZvdW5kIG9uIEthYW5h
cGFsaSBTb0MuCgo+IEthYW5hcGFsaSByZXF1aXJlcyBSRUdfVVBEQVRFIGFuZCBBVVBfVVBEQVRF
IHRvIGJlIGlzc3VlZCBvbmx5IGFmdGVyIGFsbAo+IENTSUQgY29uZmlndXJhdGlvbiBoYXMgY29t
cGxldGVkLiBJbiBhZGRpdGlvbiwgdGhlIG51bWJlciBvZiBBVVBfVVBEQVRFCj4gcmVxdWVzdHMg
bXVzdCBtYXRjaCB0aGUgbnVtYmVyIG9mIGJ1ZmZlcnMgcXVldWVkIHRvIHRoZSB3cml0ZSBtYXN0
ZXIKPiB3aGlsZSBpdCBpcyBiZWluZyBlbmFibGVkLgoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
ZSBjdXJyZW50IGltcGxlbWVudGF0aW9uIGFjdHVhbGx5IGVuZm9yY2UgdGhpcyByZXF1aXJlbWVu
dD8KCklmIHVzZXJzcGFjZSBxdWV1ZXMgMSBidWZmZXIgdmlhIFY0TDIgYW5kIGNhbGxzIFNUUkVB
TU9OLCB0aGUgdmIyX3F1ZXVlCmxhY2tzIGEgbWluX3F1ZXVlZF9idWZmZXJzIGxpbWl0IGluIG1z
bV92aWRlb19yZWdpc3RlcigpLiBDb25zZXF1ZW50bHksCnZmZV9lbmFibGVfb3V0cHV0X3YyKCkg
ZHluYW1pY2FsbHkgcXVldWVzIG9ubHkgMSBidWZmZXIgdG8gdGhlIGhhcmR3YXJlLApidXQgY3Np
ZF9jb25maWd1cmVfc3RyZWFtKCkgaW4gY2Ftc3MtY3NpZC0xMDgwLmMgdW5jb25kaXRpb25hbGx5
IGlzc3VlcwpDQU1TU19JTklUX0JVRl9DT1VOVCAoMikgQVVQX1VQREFURSBjb21tYW5kcy4KCkNh
biB0aGlzIG1pc21hdGNoIGxlYWQgdG8gd3JpdGUgbWFzdGVyIHN0YXRlIGNvcnJ1cHRpb24gb3Ig
SU9NTVUgZmF1bHRzCmR1ZSB0byBoYXJkd2FyZSBkZXN5bmNocm9uaXphdGlvbj8KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUtMTA4MC5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS0xMDgwLmMKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjAxNjg1N2NkMTAyNTEK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L2NhbXNzLXZmZS0xMDgwLmMKWyAuLi4gXQo+ICtzdGF0aWMgdm9pZCB2ZmVfcmVnX3VwZGF0ZShz
dHJ1Y3QgdmZlX2RldmljZSAqdmZlLCBlbnVtIHZmZV9saW5lX2lkIGxpbmVfaWQpCj4gK3sKPiAr
CWludCBwb3J0X2lkID0gbGluZV9pZDsKPiArCj4gKwljYW1zc19yZWdfdXBkYXRlKHZmZS0+Y2Ft
c3MsIHZmZS0+aWQsIHBvcnRfaWQsIGZhbHNlKTsKPiArfQoKW1NldmVyaXR5OiBIaWdoXQpEb2Vz
IHRoaXMgaW50cm9kdWNlIGEgZGF0YSByYWNlIG9uIGNzaWQtPmF1cF91cGRhdGUgYW5kIHJ1cF91
cGRhdGU/CgpUaGlzIGNhbGwgcmVhY2hlcyBfX2NzaWRfYXVwX3VwZGF0ZSgpIGluIHByb2Nlc3Mg
Y29udGV4dC4gV2hpbGUgbG9jYWwKaW50ZXJydXB0cyBhcmUgZGlzYWJsZWQgdmlhIHZmZS0+b3V0
cHV0X2xvY2ssIHRoZXJlIGlzIG5vIGNyb3NzLUNQVQpzeW5jaHJvbml6YXRpb24uCgpDb25jdXJy
ZW50bHksIGNzaWRfaXNyKCkgZmlyZXMgaW4gaGFyZGlycSBjb250ZXh0IChwb3RlbnRpYWxseSBv
biBhbm90aGVyIENQVSkKYW5kIGNhbGxzIF9fY3NpZF9hdXBfcnVwX2NsZWFyKCksIHdoaWNoIHBl
cmZvcm1zIGEgYml0d2lzZSBjbGVhciBvbiB0aGUgc2FtZQpzdGF0ZSB2YXJpYWJsZXMgd2l0aG91
dCBob2xkaW5nIGEgc2hhcmVkIGxvY2s6CgogICAgY3NpZC0+YXVwX3VwZGF0ZSAmPSB+Q1NJRF9S
VVBfQVVQX1JESShwb3J0X2lkKTsKICAgIGNzaWQtPnJ1cF91cGRhdGUgJj0gfkNTSURfUlVQX0FV
UF9SREkocG9ydF9pZCk7CgpDYW4gdGhlc2UgY29uY3VycmVudCBub24tYXRvbWljIGJpdHdpc2Ug
b3BlcmF0aW9ucyBjYXVzZSBsb3N0IHVwZGF0ZXMKYW5kIGNvcnJ1cHQgdGhlIENTSURfQVVQX0NN
RCBhbmQgQ1NJRF9SVVBfQ01EIHJlZ2lzdGVyIHN0YXRlcywgbGVhZGluZwp0byBzdHJlYW0gc3Rh
bGxzIG9yIGhhcmR3YXJlIG1pc2NvbmZpZ3VyYXRpb24/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDExLWthYW5hcGFsaS1jYW1z
cy12MjEtMC0wNGZkMjhkODE1YzZAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTkKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
