Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF96C9832A
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6JHpKosIg34Wqr0PsW06cPk+O9dEGX5IwB1nVMSS/A=; b=xKsyHDXP59Hfn+
	aurKFPQIKzgX35qNZGkFcCC3D/waTAO6xX/l+D2qoC0jvvYnkyO7+kvIQjqcSh6xnB5PLAZE/GSrc
	fwClQybu8KcoZjxXLyoQPuXqmZobJq4viFiSqGs3UGD9v9Jy/LJOMQQNCWdq5uHp0FxzpNJMTpzB6
	8x7iWrLYkJRom7jMmHDyDZGcTRb34gSpU95gYqPgupYIusO9GRsEjSTE+6Ehqc9ubNvqoxnHgWwR1
	A14sxyRKvxzoj+FR3JVk1ufG2EPwOJzUw0ry12lRm54NImdXhEbEwAVL3LqvOO8hVvdy0nR5hbZpE
	7jsxKCERFOFV1bJzhG4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR0e-00000002PMG-1IND;
	Tue, 29 Sep 2026 06:08:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR0c-00000002PMA-27AZ
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:08:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EACDB41774;
	Tue, 29 Sep 2026 06:08:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DBA61F000FF;
	Tue, 29 Sep 2026 06:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790662089;
	bh=U8yCARos4Kw5l0GNkj5myUYQj3i7NVr+92u387TNiUs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aF+O4l2H9DCJvKOpRYyrmm/5DU38HwJKpUgt3enJVDR/oZVYe/HHZchDisw3QGTfO
	 uHxzIvyZnqnjdDvC8OKNspp5tU0Fjf8CIwKNS49O0tqR3PkHY503MA3BpyzJyC5kfa
	 bFK3U2kzITHDDZxJSbYePI2NIGyIDqk7ql9DeN0iIBR56NKbHxxt67r8w0Dfh8xKnl
	 LG3ubPWwVCyNUb36O7aYdh3YiQ6hZCL1ZOC+aL7ekGoebtoEfSMwhBxAh8af1xjz8q
	 2/qHGNYDavziWPZjJUkXK3M8BrJFU1vFBEhTu6RY5vUf2fHCoZ6tkg5CiDfUTYhNXv
	 XblsSbdQZziSw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 02/11] media: dt-bindings: Add CAMSS device for
 Kaanapali
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260928-kaanapali-camss-v17-2-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-2-dcf3fd37f76c@oss.qualcomm.com>
Date: Tue, 29 Sep 2026 06:08:08 +0000
Message-Id: <20260929060809.5DBA61F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gbWVkaWE6IGR0LWJpbmRp
bmdzOiBjb250cmFkaWN0b3J5IHBvcnQgY291bnQgZGVzY3JpcHRpb24gdnMgc2NoZW1hCi0tCgpj
b21taXQgZWFmNjc1YTFhYzI1ZWVhM2NjOTUwZGYwNDMyY2ZlNTlmOTdjMTUxNwpBdXRob3I6IEhh
bmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTogZHQtYmlu
ZGluZ3M6IEFkZCBDQU1TUyBkZXZpY2UgZm9yIEthYW5hcGFsaQoKQWRkIGJpbmRpbmdzIGZvciBD
YW1lcmEgU3Vic3lzdGVtIChDQU1TUykgb24gdGhlIFF1YWxjb21tIEthYW5hcGFsaQpwbGF0Zm9y
bS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9xY29tLGthYW5hcGFsaS1jYW1zcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21lZGlhL3Fjb20sa2FhbmFwYWxpLWNhbXNzLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjFmOGIxODUxN2UxM2EKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3Fjb20sa2Fh
bmFwYWxpLWNhbXNzLnlhbWwKWyAuLi4gXQo+ICsgIHBvd2VyLWRvbWFpbi1uYW1lczoKPiArICAg
IGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBpZmUwCj4gKyAgICAgIC0gY29uc3Q6IGlmZTEKPiAr
ICAgICAgLSBjb25zdDogaWZlMgo+ICsgICAgICAtIGNvbnN0OiB0b3AKPiArCj4gKyAgcG9ydHM6
Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVzL3BvcnRzCj4gKwo+
ICsgICAgZGVzY3JpcHRpb246Cj4gKyAgICAgIENTSSBpbnB1dCBwb3J0cywgb25lIHBlciBDU0lE
LiBFYWNoIHBvcnQgcmVjZWl2ZXMgdGhlIENTSSBkYXRhCj4gKyAgICAgIGRlY29kZWQgYnkgdGhl
IG1hdGNoaW5nIENTSVBIWS4KPiArCj4gKyAgICBwYXR0ZXJuUHJvcGVydGllczoKPiArICAgICAg
Il5wb3J0QFswLTVdJCI6Cj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvJGRl
ZnMvcG9ydC1iYXNlCj4gKyAgICAgICAgdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ICsg
ICAgICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgSW5wdXQgcG9ydCBmb3IgcmVjZWl2aW5n
IENTSSBkYXRhIGZyb20gQ1NJUEhZIDAtNS4KCltTZXZlcml0eTogTG93XQpDb3VsZCB0aGlzIGRl
c2NyaXB0aW9uIGJlIHVwZGF0ZWQgdG8gY2xhcmlmeSB0aGUgcG9ydCBjb3VudD8KClRoZSBjb21t
aXQgbWVzc2FnZSBpbmRpY2F0ZXMgdGhlIHBsYXRmb3JtIGhhcyA1IENTSURzICgzIHJlZ3VsYXIs
IDIgbGl0ZSkKYW5kIDYgQ1NJUEhZcy4gVGhlIHRvcC1sZXZlbCBkZXNjcmlwdGlvbiBmb3IgdGhl
IHBvcnRzIG5vZGUgc3RhdGVzIHRoZXJlIGlzCiJvbmUgcGVyIENTSUQiLCB3aGljaCB3b3VsZCBp
bXBseSA1IHBvcnRzLiBIb3dldmVyLCB0aGUgc2NoZW1hIGFsbG93cyA2IHBvcnRzCigiXnBvcnRA
WzAtNV0kIikgYW5kIHRoZSBuZXN0ZWQgZGVzY3JpcHRpb24gbWVudGlvbnMgcmVjZWl2aW5nIGRh
dGEgZnJvbQpDU0lQSFkgMC01LgoKRG9lcyB0aGUgIm9uZSBwZXIgQ1NJRCIgdGV4dCBuZWVkIHRv
IGJlIHVwZGF0ZWQgdG8gbWF0Y2ggdGhlIGhhcmR3YXJlIGxheW91dAphbGxvd2VkIGJ5IHRoZSBz
Y2hlbWE/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwOTI4LWthYW5hcGFsaS1jYW1zcy12MTctMC1kY2YzZmQzN2Y3NmNAb3NzLnF1
YWxjb21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
