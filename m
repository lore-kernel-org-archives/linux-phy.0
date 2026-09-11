Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9128EC88E53
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFfBgHUPK/udi7GlA/WBqiDsG/JYyhpBxQlMfwqoCbc=; b=YfSd9g4K9IhB5j
	9WJJFH2as9hAqKkPk37KxLuzeUl/c77+X4pqdOFdBEEGBj5zi0HiLJQvqW2W7WLiZqi5tcYjWDC9H
	6NFfuBNYBIQ5bGOFMzSgT9FNTOMXg1kV/mRPTHO9VsfBc8cHqknAIgKKQco9d1GcgBZmXW8wAOs8l
	T39ob2QK87ZBkqi5fTha+NDojUD9/iqWvZQrDLG7cu0/pptG9+qyWYllCJKkF21l4Gy2XTB2UwgG4
	IrHqYE4NaLCYtOL8/QD8EeHi/UIRhapUM7deOC405qu9ol3hXM/0Egw2ZmQbUSwDfQsVfcd0yADIS
	q5iA0yBjyVVQyu3+pNcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Zb-0000000H9Ur-18Za;
	Fri, 11 Sep 2026 15:53:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Za-0000000H9Ui-1zB4
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:53:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E354960202;
	Fri, 11 Sep 2026 15:53:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FE901F000FF;
	Fri, 11 Sep 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789142033;
	bh=WplX7OL6orMvmYV8PDzGFduiYKPQWLKUXjRdFEq/V34=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U2aeZfbKlysx2d8nsN+buKhmOlUNduBboJnswNHNXI4yqRDguIwFeB8Y+4azwyYlw
	 9zBgv1dat2m5zUGMNbiA3AkAN0bUgmQmDaICrR7voYOcQmddJgq+im2drY+jFp8x1k
	 /HfWvD4Wm9ktvP+gPc75egPIL+uXh8ak1nJuDXLE6llEW40F7H91hbyo/FOAzC/EAW
	 TXVyj91XHnyx4Y/VsjIPfpYuHvP8JjsCjqKdxkzEwaFLiVpnLn099R89jMfS9pokP4
	 ba8Kz/jYkaZgvQ4j/5PbMMN+Y5kzYibcuIGAvb8UpqgQnGtXTwuI6cunnwkO4RQtbR
	 JvnWCZ/+uEahw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 14/17] phy: qcom: edp: Add Nord PLL configuration
 callback
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: olteanv@gmail.com, dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260911-nord-drv-dt-v1-14-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-14-e25c073cf1b6@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 15:53:52 +0000
Message-Id: <20260911155353.0FE901F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBQTEwgY29uZmln
dXJhdGlvbiBpbmNvcnJlY3RseSB3cml0ZXMgMHgxZCB0byBEUF9RU0VSREVTX1Y4X0NPTV9CSUFT
X0VOX0NMS0JVRkxSX0VOLCBzaWxlbnRseSBvdmVyd3JpdGluZyB0aGUgMHgxZiB2YWx1ZSBzZXQg
ZHVyaW5nIGluaXRpYWxpemF0aW9uLgotLQoKY29tbWl0IDE2MDUyNjM4NjgyNDkyNjU3ODkxZDhh
OTI1NjEwNzNmMWNhMzUzNTgKQXV0aG9yOiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3Mu
cXVhbGNvbW0uY29tPgoKcGh5OiBxY29tOiBlZHA6IEFkZCBOb3JkIFBMTCBjb25maWd1cmF0aW9u
IGNhbGxiYWNrCgpOb3JkIHVzZXMgYSAzOC40IE1IeiBDWE8gcmVmZXJlbmNlIHdpdGggYSBkaWZm
ZXJlbnQgUVNFUkRFUyB2OCBDT00gcmVnaXN0ZXIKbGF5b3V0IGFuZCBQTEwgY29lZmZpY2llbnRz
LiBUaGlzIGNvbW1pdCBhZGRzIGEgY29uZmlndXJhdGlvbiBjYWxsYmFjayB0bwpwcm9ncmFtIHRo
ZSBRU0VSREVTIENPTSBQTEwgcmVnaXN0ZXJzIHdpdGggbGluay1yYXRlLWRlcGVuZGVudCB2YWx1
ZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1lZHAuYyBi
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4gaW5kZXggYTBmNGIxMmU1NjFl
OS4uNGQxYjJjODFkOTU2MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1lZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jClsg
Li4uIF0KPiBAQCAtMTY4OCw2ICsxNjg4LDExOCBAQCBzdGF0aWMgaW50IHFjb21fZWRwX2NvbV9j
b25maWd1cmVfc3NjX25vcmQoY29uc3Qgc3RydWN0IHFjb21fZWRwICplZHApClsgLi4uIF0KPiAr
c3RhdGljIGludCBxY29tX2VkcF9jb21fY29uZmlndXJlX3BsbF9ub3JkKGNvbnN0IHN0cnVjdCBx
Y29tX2VkcCAqZWRwKQo+ICt7ClsgLi4uIF0KPiArCXdyaXRlbCgweDBhLCBlZHAtPnBsbCArIERQ
X1FTRVJERVNfVjhfQ09NX0JHX1RJTUVSKTsKPiArCXdyaXRlbChjb3JlX2Nsa19kaXZfbW9kZTAs
IGVkcC0+cGxsICsgRFBfUVNFUkRFU19WOF9DT01fQ09SRUNMS19ESVZfTU9ERTApOwo+ICsJd3Jp
dGVsKDB4MDAsIGVkcC0+cGxsICsgRFBfUVNFUkRFU19WOF9DT01fVkNPX1RVTkVfQ1RSTCk7Cj4g
Kwl3cml0ZWwoMHgxZCwgZWRwLT5wbGwgKyBEUF9RU0VSREVTX1Y4X0NPTV9CSUFTX0VOX0NMS0JV
RkxSX0VOKTsKCltTZXZlcml0eTogSGlnaF0KV2lsbCB0aGlzIHVuY29uZGl0aW9uYWwgd3JpdGUg
b2YgMHgxZCBzaWxlbnRseSBvdmVyd3JpdGUgdGhlIDB4MWYgYmlhcyBlbmFibGUKdmFsdWUgcmVx
dWlyZWQgYW5kIHNldCBkdXJpbmcgUEhZIGluaXRpYWxpemF0aW9uPwoKSXQgbG9va3MgbGlrZSBx
Y29tX2VkcF9waHlfaW5pdCgpIGNhbGxzIGNvbV9iaWFzX2VuX2Nsa2J1ZmxyX25vcmQoKSB0byBz
ZXQKdGhpcyByZWdpc3RlciB0byAweDFmLiBMYXRlciwgd2hlbiBxY29tX2VkcF9waHlfcG93ZXJf
b24oKSBjYWxscwpjb21fY29uZmlndXJlX3BsbF9ub3JkKCksIHRoaXMgZXhhY3QgcmVnaXN0ZXIg
aXMgb3ZlcndyaXR0ZW4gd2l0aCAweDFkLgoKQ291bGQgY2xlYXJpbmcgdGhpcyBiaXQgKGJpdCAx
KSBwcmV2ZW50IHRoZSBQTEwgZnJvbSBsb2NraW5nIG9yIGNhdXNlIGxpbmsKdHJhaW5pbmcgZmFp
bHVyZXMgcmVzdWx0aW5nIGluIGEgYmxhbmsgZGlzcGxheT8KCj4gKwl3cml0ZWwoMHgwZiwgZWRw
LT5wbGwgKyBEUF9RU0VSREVTX1Y4X0NPTV9DT1JFX0NMS19FTik7Cj4gKwl3cml0ZWwoY29kZTFf
bW9kZTAsIGVkcC0+cGxsICsgRFBfUVNFUkRFU19WOF9DT01fQklOX1ZDT0NBTF9DTVBfQ09ERTFf
TU9ERTApOwo+ICsJd3JpdGVsKGNvZGUyX21vZGUwLCBlZHAtPnBsbCArIERQX1FTRVJERVNfVjhf
Q09NX0JJTl9WQ09DQUxfQ01QX0NPREUyX01PREUwKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQpb
IC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYwOTExLW5vcmQtZHJ2LWR0LXYxLTAtZTI1YzA3M2NmMWI2QG9zcy5xdWFsY29t
bS5jb20/cGFydD0xNAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
