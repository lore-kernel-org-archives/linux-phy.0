Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A07C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 10:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPREUnz8QEJ+xLbkpQBiSvPgXBEXNMkdAERmayuilK0=; b=XnvI9ZJCvpMQYg
	3rGf5NjgG+zXXG9BvzPaEmNnPqEx1FDMUZVYtS0vfKjUljL6JDWH31wTtF0kAqPreLunxNNyTB0HG
	z+0mjIrM9ZDxkeOFWDBInH6m+WvsTV1URdXdenWwWVoi/h5xvQRwScmzuZEsyxLWkCGvKZOl2+FbX
	Thiwo14zIygBpAIlpsM7QWGVwF7mnIyqOwvEd/ax/0WYNy9mrZgYMn6stDWX/FoWxiJMCGlXM57m0
	F6v3/E5mFBpWWW8TaC0xOzPX20xR3WkfhgccFZgZAPSXhTR6Qpy10OAjXBGZfryxVWwV/SqZFaXT1
	IMHLferpVct40qwj+sKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPqC-0000000GwdD-0zZk;
	Wed, 08 Jul 2026 10:49:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPqA-0000000Gwd1-3iuI
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 10:49:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 944684189B;
	Wed,  8 Jul 2026 10:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29EEB1F000E9;
	Wed,  8 Jul 2026 10:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783507758;
	bh=bXtnWV6AXMg+r7nfQP8aBPtClw5Ev15iRgabAYJ42cw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NETAA+i52DhKUy6mPaPSpiJlqFp5AJr8UCvbk0pTNKE3e2CzewEp0WDMQWe+le9HM
	 6QIKZ1dKgYBTgxh8Tpi2H+RGv/lp0Y8gQmouawdQTPIiRp3IYIVjVSyScgunzrgcZa
	 mxlZAXp7dJC8RtpZHms6jGSXhNyIEKKkpzoF5nTjoBZZ8715SwPkwcymE5dt0L2xXz
	 hafwB8MdPNlUZ/BvDfOWUeo6WKMDj4anj/9nuYvPHSmSy4mR3bkgHnwnLvr3qrxFBr
	 0coDFc6eCEHNFxmg6uFB5xsdG1GqNQncxQB1tiTzVB5eExVbblFsXYWzTgxHv5Xv0H
	 LjOKsK+zkscnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
To: "Joey Lu" <a0987203069@gmail.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260708103606.1462960-4-a0987203069@gmail.com>
References: <20260708103606.1462960-1-a0987203069@gmail.com>
 <20260708103606.1462960-4-a0987203069@gmail.com>
Date: Wed, 08 Jul 2026 10:49:16 +0000
Message-Id: <20260708104917.29EEB1F000E9@smtp.kernel.org>
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
NCBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEtjb25maWcgRGVwZW5k
ZW5jeSAvIEJ1aWxkIGFuZCBQcm9iZSBSZWdyZXNzaW9uCi0gW0hpZ2hdIE1pc3NpbmcgV2FpdCBm
b3IgQ2xvY2sgU3RhYmlsaXR5IG9uIEFscmVhZHktT3BlcmF0aW5nIFBIWSAoU3VzcGVuZC9SZXN1
bWUgUmVncmVzc2lvbikKLSBbTWVkaXVtXSBVbmluaXRpYWxpemVkIHZhcmlhYmxlIHVzYWdlIGR1
ZSB0byBpZ25vcmVkIHJlZ21hcF9yZWFkIHJldHVybiB2YWx1ZQotIFtMb3ddIFVuZG9jdW1lbnRl
ZCBGdW5jdGlvbmFsIENoYW5nZXMgaW4gSGFyZHdhcmUgQ29uZmlndXJhdGlvbgotLQoKLS0tIFBh
dGNoIFszXTogW1BBVENIIHYzIDMvM10gcGh5OiBudXZvdG9uOiBwaHktbWEzNWQxLXVzYjI6IGV4
dGVuZCB0byBkdWFsLXBvcnQgd2l0aCBPVEcgc3VwcG9ydCAtLS0KTm90ZTogVGhlIGZvcm1hdCBv
ZiB0aGlzIHJlcG9ydCBpcyBhbHRlcmVkIGR1ZSB0byByZWNpdGF0aW9uIHJlc3RyaWN0aW9ucy4g
SSBhbSBwcm92aWRpbmcgYSBmcmVlLWZvcm0gc3VtbWFyeSBvZiB0aGUgZmluZGluZ3Mgd2l0aG91
dCBxdW90aW5nIHRoZSBvcmlnaW5hbCBwYXRjaCBjb2RlLgoKY29tbWl0IDBmN2M5ODExNzgyMzM1
YmFiODZlY2M0YzA4ZjdmNmExNzgzOWU4YzMKQXV0aG9yOiBKb2V5IEx1IDxhMDk4NzIwMzA2OUBn
bWFpbC5jb20+ClN1YmplY3Q6IHBoeTogbnV2b3RvbjogcGh5LW1hMzVkMS11c2IyOiBleHRlbmQg
dG8gZHVhbC1wb3J0IHdpdGggT1RHIHN1cHBvcnQKClN1bW1hcnk6IFRoaXMgY29tbWl0IGV4dGVu
ZHMgdGhlIGV4aXN0aW5nIE1BMzVEMSBVU0IgMi4wIFBIWSBkcml2ZXIgdG8gbWFuYWdlCmJvdGgg
UEhZMCBhbmQgUEhZMS4gSXQgdXBkYXRlcyB0aGUgaW5pdGlhbGl6YXRpb24gbG9naWMgdG8gc3Vw
cG9ydCBob3N0LW1vZGUKY2xvY2sgc3RhYmlsaXR5IHBvbGxpbmcgYW5kIHJlZ2lzdGVycyBhIHJl
YWQtb25seSBVU0Igcm9sZSBzd2l0Y2ggZm9yIFBIWTAuCgpbU2V2ZXJpdHk6IEhpZ2hdCkluIG1h
MzVfcm9sZV9zd2l0Y2hfaW5pdCgpLCB0aGUgZHJpdmVyIGZhaWxzIHRoZSBwcm9iZSBpZiB0aGUg
cm9sZSBzd2l0Y2gKcmVnaXN0cmF0aW9uIHJldHVybnMgYW4gZXJyb3IuIERvZXMgdGhpcyBicmVh
ayB0aGUgZHJpdmVyIHdoZW4gdGhlIHJvbGUKc3dpdGNoIGZyYW1ld29yayBpcyBkaXNhYmxlZD8K
CklmIENPTkZJR19VU0JfUk9MRV9TV0lUQ0ggaXMgbm90IGVuYWJsZWQsIHRoZSByZWdpc3RlciBm
dW5jdGlvbiByZXR1cm5zCi1FTk9ERVYsIGNhdXNpbmcgbWEzNV9yb2xlX3N3aXRjaF9pbml0KCkg
dG8gdHJlYXQgaXQgYXMgYSBmYXRhbCBlcnJvciBhbmQKdW5jb25kaXRpb25hbGx5IGZhaWwgdGhl
IFBIWSBwcm9iZS4gCgpGdXJ0aGVybW9yZSwgc2hvdWxkbid0IHRoZSBkcml2ZXIgZGVjbGFyZSBh
IEtjb25maWcgZGVwZW5kZW5jeSBvbgpVU0JfUk9MRV9TV0lUQ0ggb3IgaGFuZGxlIHRoZSAtRU5P
REVWIHJldHVybiBjYXNlIGdyYWNlZnVsbHk/CgpbU2V2ZXJpdHk6IEhpZ2hdCkluIG1hMzVfdXNi
X3BoeV9pbml0KCksIHRoZSBkcml2ZXIgcmV0dXJucyBlYXJseSBpZiB0aGUgc3VzcGVuZCBiaXQg
aXMKYWxyZWFkeSBzZXQuIERvZXMgdGhpcyBza2lwIHdhaXRpbmcgZm9yIGNsb2NrIHN0YWJpbGl0
eSBkdXJpbmcgc3lzdGVtIHJlc3VtZT8KCk9uIHN5c3RlbSBzdXNwZW5kLCB0aGUgc3VzcGVuZCBi
aXQgcmVtYWlucyBzZXQuIER1cmluZyByZXN1bWUsIHRoZSBQSFkKY3J5c3RhbCBtaWdodCBoYXZl
IGJlZW4gc3RvcHBlZCBhbmQgcmVxdWlyZXMgdGltZSB0byByZXN0YWJpbGl6ZS4gUmV0dXJuaW5n
CmVhcmx5IHNraXBzIHRoZSBob3N0L2RldmljZSBjbG9jayBzdGFiaWxpdHkgcG9sbGluZy4gCgpU
aGUgb3JpZ2luYWwgY29kZSBleHBsaWNpdGx5IGhhbmRsZWQgdGhpcyBieSBjaGVja2luZyBmb3Ig
Y2xvY2sgc3RhYmlsaXR5CmV2ZW4gd2hlbiB0aGUgc3VzcGVuZCBiaXQgd2FzIGFscmVhZHkgc2V0
LiBDb3VsZCB0aGlzIGxlYWQgdG8gY29udHJvbGxlcgpoYW5ncyB3aGVuIHRoZSBjb250cm9sbGVy
IHByb2NlZWRzIGJlZm9yZSB0aGUgUEhZIGNsb2NrcyBhcmUgc3RhYmxlPwoKW1NldmVyaXR5OiBN
ZWRpdW1dCkluIG1hMzVfcm9sZV9zd19nZXQoKSwgdGhlIHJldHVybiB2YWx1ZSBvZiByZWdtYXBf
cmVhZCgpIGlzIGlnbm9yZWQgYmVmb3JlCmV2YWx1YXRpbmcgdGhlIHZhbCB2YXJpYWJsZS4gQ2Fu
IHRoaXMgZXhwb3NlIHVuaW5pdGlhbGl6ZWQga2VybmVsIHN0YWNrCm1lbW9yeT8KCklmIHRoZSBz
eXNjb24gcmVhZCBmYWlscywgdmFsIHdpbGwgY29udGFpbiB1bmluaXRpYWxpemVkIG1lbW9yeSwg
d2hpY2ggaXMKdGhlbiBldmFsdWF0ZWQgYW5kIHJldHVybmVkIHRvIHVzZXJzcGFjZSB2aWEgdGhl
IHJvbGUgc3lzZnMgYXR0cmlidXRlLgoKVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0
IHRoZSBzYW1lIHBhdHRlcm4gb2YgaWdub3JpbmcgdGhlCnJlZ21hcF9yZWFkKCkgcmV0dXJuIHZh
bHVlIGFsc28gYXBwZWFycyBpbiBtYTM1X3VzYl9waHlfaW5pdCgpLiBTaG91bGQgdGhlCnJldHVy
biB2YWx1ZXMgYmUgY2hlY2tlZCBpbiBib3RoIGxvY2F0aW9ucz8KCltTZXZlcml0eTogTG93XQpJ
biBtYTM1X3VzYl9waHlfcHJvYmUoKSwgbmV3IGxvZ2ljIGlzIGludHJvZHVjZWQgdG8gcGFyc2Ug
bnV2b3RvbixyY2FsY29kZQphbmQgbnV2b3RvbixvYy1hY3RpdmUtaGlnaCBmcm9tIHRoZSBkZXZp
Y2UgdHJlZSBhbmQgYXBwbHkgdGhlbSB0byB0aGUKcmVzaXN0b3IgdHJpbSBhbmQgb3Zlci1jdXJy
ZW50IHBvbGFyaXR5IHJlZ2lzdGVycy4KCkNvdWxkIHRoZSBjb21taXQgbWVzc2FnZSBiZSB1cGRh
dGVkIHRvIGRvY3VtZW50IHRoZXNlIGZ1bmN0aW9uYWwgaGFyZHdhcmUKY29uZmlndXJhdGlvbiBj
aGFuZ2VzPyBUaGV5IGFyZSBjdXJyZW50bHkgY29tcGxldGVseSBvbWl0dGVkIGZyb20gdGhlCmNv
bW1pdCBoaXN0b3J5LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDcwODEwMzYwNi4xNDYyOTYwLTEtYTA5ODcyMDMwNjlAZ21haWwu
Y29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
