Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FB8C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRp6RuydlYEgwKHRbBo0Pt/G63+kEHEltz9Hd9pFDTo=; b=ENBwRbDbIjhj0F
	FzLeWl2XczY7Jchylgt65MTikYFeN5kl8lGI/YNkhhhtMcC3cYTIU3vENDSbpMiluuJUNHTwyvb5X
	Ke6CQwXzesJLt5xtcdTWNnd6LqhGG++bUQiadhawp5wE7BIpZisINwApi9vVL0ngQMPc22TP2LPi6
	h5u5r/hiKKr7/shme+MRSZP6IsuseIIX/jYzn2/Enx/z2kMS+1SSDVWq2vMSJxoe1VbBtDeykh9+9
	OGcb8miJ9YBvUGJ4ovVUpFWrD0vG6jiycd53jfXhWktbyxboPUdklXqWY+zGbRF883n0guNLu7xL6
	nLFZA0UHd7cWni5Kgy3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHb-00000003Rdg-0f9j;
	Thu, 09 Jul 2026 19:19:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuHZ-00000003Rd5-2ywF
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:19:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6A2D140A86;
	Thu,  9 Jul 2026 19:19:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDFD71F000E9;
	Thu,  9 Jul 2026 19:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624777;
	bh=g5miDljJqao7S4Sh+VBQ1sHdrSY05MvhvMgonTbu7P8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VnH1e6OVvsCqdIrvjEacn/9Q+OD1oP1mTB9MCSMVT5YqIQ8wRsrUD6/TJzzd/wMa8
	 /4HcvEJAlYGqRTxrdm1WW/j16ua1yxqEh7SFLUbwjEJnwcb+fAVbZ2Txyj4SnR5JZE
	 lfRTO0mOyziCx4/PRr2C22QqlFczpW4Y0wpRcrWkzPwpymO2PIYjF/2B4sufaRld1T
	 IoacJakSMdHNOaTlG5yIWj8xEzs3LO8hir2Auj7ox4RRrf4ZcvJaYOKG6An27GA609
	 LYJRHWDvYbMuF4N9PewFx43QVxj1HgHtt+YrpeMabGHBzMPsnxbfuWZLNsaW6bUqdX
	 O6PLUJ9tt13Qw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 11/36] phy: rockchip: usbdp: Support single-lane DP
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-11-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-11-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:19:36 +0000
Message-Id: <20260709191936.CDFD71F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIGJvdW5kcyBjaGVjayBmb3IgcmVxdWVzdGVkIERQIGxhbmVzIGFsbG93
cyBvdXQtb2YtYm91bmRzIHJlZ2lzdGVyIGNvcnJ1cHRpb24uCi0gW0hpZ2hdIERhdGEgcmFjZSBh
bmQgdW5wcm90ZWN0ZWQgcmVnaXN0ZXIgYWNjZXNzIGluIGBya191ZHBoeV9kcF9waHlfY29uZmln
dXJlKClgIGR1ZSB0byBtaXNzaW5nIG11dGV4IGxvY2suCi0tCgotLS0gUGF0Y2ggWzExXTogW1BB
VENIIHYxMSAxMS8zNl0gcGh5OiByb2NrY2hpcDogdXNiZHA6IFN1cHBvcnQgc2luZ2xlLWxhbmUg
RFAgLS0tCmNvbW1pdCA1NDM5NTRjNzRlYWE3MDM0MzBmZTI3YTVmZDJjZmNlMDU5NGE2ZDc4CkF1
dGhvcjogWmhhbmcgWXViaW5nIDx5dWJpbmcuemhhbmdAcm9jay1jaGlwcy5jb20+CgpwaHk6IHJv
Y2tjaGlwOiB1c2JkcDogU3VwcG9ydCBzaW5nbGUtbGFuZSBEUAoKSW1wbGVtZW50IHN1cHBvcnQg
Zm9yIHVzaW5nIGp1c3QgYSBzaW5nbGUgRGlzcGxheVBvcnQgbGluZS4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCA3NTQwYzg5N2RkZTEzLi5jNGQ2
MmIyMzRlYTgwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRw
LmMKPiBAQCAtMTkzLDYgKzE5Myw3IEBAIHN0cnVjdCBya191ZHBoeSB7Cj4gIAlpbnQgaWQ7Cj4g
IAo+ICAJYm9vbCBkcF9pbl91c2U7Cj4gKwlpbnQgZHBfbGFuZXM7CgpbU2V2ZXJpdHk6IEhpZ2hd
ClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlzIHBhdGNoLCBidXQgZG9lcyB0aGUg
cmVxdWVzdGVkIGxhbmUKY291bnQgbmVlZCB0byBiZSBib3VuZGVkIGFnYWluc3QgdGhlIG5ld2x5
IGFkZGVkIHVkcGh5LT5kcF9sYW5lcz8KCklmIGEgRFJNIGJyaWRnZSBjYWxscyBwaHlfY29uZmln
dXJlKCkgd2l0aCBkcC0+bGFuZXMgPSA0IHdoZW4KdWRwaHktPmRwX2xhbmVzID0gMiwgaXQgc2Vl
bXMgcmtfdWRwaHlfZHBfcGh5X3ZlcmlmeV9sYW5lcygpIHdpbGwKYWNjZXB0IGl0OgoKZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X3Zlcmlm
eV9sYW5lcygpIHsKCXN3aXRjaCAoZHAtPmxhbmVzKSB7CgljYXNlIDE6CgljYXNlIDI6CgljYXNl
IDQ6CgkJLyogdmFsaWQgbGFuZSBjb3VudC4gKi8KCQl1ZHBoeS0+bGFuZXMgPSBkcC0+bGFuZXM7
CgkJYnJlYWs7Ci4uLgp9CgpXb3VsZCB0aGlzIGNhdXNlIHJrX3VkcGh5X2RwX3BoeV9jb25maWd1
cmUoKSB0byBpdGVyYXRlIG91dC1vZi1ib3VuZHMgb2YKdGhlIERQLWFzc2lnbmVkIGxhbmVzIGFu
ZCBhcHBseSBEUCB2b2x0YWdlL3ByZS1lbXBoYXNpcyBzZXR0aW5ncyB0byBVU0IKUE1BIGFuYWxv
ZyByZWdpc3RlcnMsIHBvdGVudGlhbGx5IGNvcnJ1cHRpbmcgdGhlIFVTQjMgUEhZIHN0YXRlPwoK
WyAuLi4gXQoKPiBAQCAtMTA1MCwxOCArMTAzOSwxNyBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X2Rw
X3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiAgc3RhdGljIGludCBya191ZHBoeV9kcF9waHlf
cG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+ICB7Cj4gIAlzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5
ID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gLQlpbnQgcmV0LCBkcF9sYW5lczsKPiArCWludCBy
ZXQ7Cj4gIAo+ICAJbXV0ZXhfbG9jaygmdWRwaHktPm11dGV4KTsKCltTZXZlcml0eTogSGlnaF0K
VGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHdoaWxlIHJrX3VkcGh5X2RwX3BoeV9w
b3dlcl9vbigpIGFjcXVpcmVzCnVkcGh5LT5tdXRleCBiZWZvcmUgbW9kaWZ5aW5nIGRyaXZlciBz
dGF0ZSwgcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpCmFwcGVhcnMgdG8gYWNjZXNzIHNoYXJl
ZCBzdGF0ZSBhbmQgaGFyZHdhcmUgcmVnaXN0ZXJzIHdpdGhvdXQgdGhpcyBsb2NrOgoKZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X2NvbmZp
Z3VyZSgpIHsKCXN0cnVjdCBya191ZHBoeSAqdWRwaHkgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsK
CXN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfZHAgKmRwID0gJm9wdHMtPmRwOwogICAgICAgIC4u
LgogICAgICAgIC8qIE5vIG11dGV4X2xvY2soJnVkcGh5LT5tdXRleCkgaGVyZSAqLwogICAgICAg
IC4uLgp9CgpDYW4gYSBUeXBlLUMgZXZlbnQgKGxpa2UgYSBjYWJsZSBmbGlwIG9yIGFsdCBtb2Rl
IGNoYW5nZSkgY29uY3VycmVudGx5CnRyaWdnZXIgcmtfdWRwaHlfdHlwZWNfbXV4X3NldCgpIGFu
ZCByYWNlIHdpdGggcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpPwoKQ291bGQgdGhpcyBkYXRh
IHJhY2Ugb24gdWRwaHktPmxhbmVfbXV4X3NlbCBhbmQgY29uY3VycmVudCB3cml0ZXMgdG8gdGhl
CnBtYV9yZWdtYXAgbGVhZCB0byBoYXJkd2FyZSBjb3JydXB0aW9uIG9yIGxpbmsgdHJhaW5pbmcg
ZmFpbHVyZXM/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNzA5LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjExLTAtYTE0OWFjNjBm
NzZjQGNvbGxhYm9yYS5jb20/cGFydD0xMQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
