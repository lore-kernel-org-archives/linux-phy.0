Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C433FCD4F26
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 15:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ue5z4eVq4FrhpvI98bN7yYQztGNYC9PPSFLImdk1i7U=; b=F0DLZmYKmg6l0W
	DPFwHfxSzxRkt8QiVpfzWzqsczWMnMLINBSntu8zPnNK9hMK2sA9+Iob8T3kjd3pvHdfoURs4Ioq2
	h69UtMkKGmQ+UfxGDjEMz9GeAnvHIPt5GlQHUUT9VcrxPeysuGqlaOu/fCZpUQVutjX4Im7/hI+xV
	OkJ1U55Q7oZvXBsA/QR/uap8X7FMuH3FILIzPATRCRyC/INCXKxoR0ZeG3ju1xtyRV9l/ITK/gqm2
	5FKXvoqeu/2sei0l5o5VaImRwrjZ4OPrcfWykQ8qkKiWHVKK9hGUsl+/nFyVuFoJQkcLvxtmVPDWv
	AaVGLAWm79+Kohj/3Xxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabR5-00000002ifY-25mi;
	Fri, 19 Jun 2026 15:47:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabR4-00000002if1-0EMH
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 15:47:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 53EAB601E4;
	Fri, 19 Jun 2026 15:47:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E415D1F000E9;
	Fri, 19 Jun 2026 15:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884033;
	bh=LUWQdh1cG7wtvlgGNzJS3V1yUtJw216f7NCqriTE79k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fG1ry8Ztqljdd9rRz8PWU+Zcm5uur9QXebWUVCD9b1rWbyPsKNbEoiQRQjI7gvc48
	 A0Sjr6phxSTGE0FGIUlihN/Mcix/RBxyp/GuBFq5OWiqXsQS/QXRLNDKS3i7qy9Hoi
	 fBg0loOK/TVuTxq600SO2aES7qHFj5BFsOwAeOVvZLWOOd7whJZqSmk3M1u2zg0JxS
	 UK0K4e75JQmJnJh/g++614ycbjHkAd85tHFhBuWKhfZmgyHMfqh7fwXdHuw7CWaMX0
	 CfAoImVjke5VhbRJWafgYkQ7d9Gbr+XNxH2JMEs4JqEZ0j4HVpdKjfC09RnUj7VNsq
	 f1Y9hUKNJ40Nw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 05/23] phy: rockchip: usbdp: Drop seamless DP
 takeover
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-5-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-5-3bb1f54b3f35@collabora.com>
Date: Fri, 19 Jun 2026 15:47:11 +0000
Message-Id: <20260619154711.E415D1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBVbmhhbmRsZWQgZXJyb3IgZnJvbSByZXNldCBkZWFzc2VydGlvbiBsZWFkcyB0byB1
bnNhZmUgTU1JTyBhY2Nlc3MKLS0KCmNvbW1pdCA4ZWVhZTk4YTYzNWVhZjk1MTRhMjEyNWEzODNm
Y2MxNmZlMDNiNTFkCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVs
QGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDogRHJvcCBzZWFtbGVzcyBEUCB0
YWtlb3ZlcgoKVGhpcyBjb21taXQgcmVtb3ZlcyB0aGUgc2VhbWxlc3MgRGlzcGxheVBvcnQgdGFr
ZW92ZXIgZmVhdHVyZSBpZiB0aGUKYm9vdGxvYWRlciBoYWQgYWxyZWFkeSBlbmFibGVkIERQLiBU
aGUgRFJNIHN0YWNrIGN1cnJlbnRseSBkb2VzIG5vdCBzdXBwb3J0CnRoaXMgYW5kIHRoZSBjb2Rl
IHdpbGwgbGVhayBjbG9jayByZXNvdXJjZXMgb24gbW9kdWxlIHJlbW92YWwuCgpDbG9zZXM6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2MDYxMjE2NDEwNy5DN0RCMjFGMDAw
RTlAc210cC5rZXJuZWwub3JnLwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+IGluZGV4IDI4NDVhMDEyZWFmY2MuLmZmZTM5Yzk2OGM3MGMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC05MzYsOSArOTM2LDkg
QEAgc3RhdGljIGludCBya191ZHBoeV9nZXRfaW5pdGlhbF9zdGF0dXMoc3RydWN0IHJrX3VkcGh5
ICp1ZHBoeSkKPiAgCj4gIAlyZWdtYXBfcmVhZCh1ZHBoeS0+cG1hX3JlZ21hcCwgQ01OX0xBTkVf
TVVYX0FORF9FTl9PRkZTRVQsICZ2YWx1ZSk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBw
cmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCBpcyBpdCBzYWZlIHRvIGlnbm9yZSB0aGUgcmV0dXJuIHZh
bHVlIG9mCnJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0X2FsbCgpIHdoaWNoIGlzIGNhbGxlZCBpbW1l
ZGlhdGVseSBiZWZvcmUgdGhpcwpyZWdtYXBfcmVhZCgpIGluIHJrX3VkcGh5X2dldF9pbml0aWFs
X3N0YXR1cygpPwoKSWYgdGhlIHJlc2V0IGRlYXNzZXJ0aW9uIGZhaWxzLCB0aGUgcGVyaXBoZXJh
bCBibG9jayBjb3VsZCBzdGlsbCBiZSBoZWxkCmluIHJlc2V0LiBPbiBBUk0gYXJjaGl0ZWN0dXJl
cywgcGVyZm9ybWluZyBNTUlPIGFjY2VzcyB0byBhIGJsb2NrIHRoYXQgaXMKYWN0aXZlbHkgaGVs
ZCBpbiByZXNldCBjYW4gdHJpZ2dlciBhbiBhc3luY2hyb25vdXMgZXh0ZXJuYWwgYWJvcnQgKFNF
cnJvciksCmxlYWRpbmcgdG8gYW4gaW1tZWRpYXRlIGtlcm5lbCBwYW5pYy4KCkNvdWxkIHRoaXMg
YmUgdXBkYXRlZCB0byB2ZXJpZnkgdGhlIHJldHVybiB2YWx1ZSwgY2xlYW4gdXAgZW5hYmxlZApy
ZXNvdXJjZXMgbGlrZSBjbG9ja3MsIGFuZCBwcm9wYWdhdGUgdGhlIGVycm9yPyBUaGUgc2FtZSBw
YXR0ZXJuIGFwcGVhcnMKaW4gcmtfdWRwaHlfaW5pdCgpIHdoZXJlIHJrX3VkcGh5X3Jlc2V0X2Rl
YXNzZXJ0KCkgaXMgaWdub3JlZCBqdXN0IGJlZm9yZQpjYWxsaW5nIHJlZ21hcF9tdWx0aV9yZWdf
d3JpdGUoKSBmb3IgdGhlIFBNQSBibG9jay4KCj4gIAlpZiAoRklFTERfR0VUKENNTl9EUF9MQU5F
X01VWF9BTEwsIHZhbHVlKSAmJiBGSUVMRF9HRVQoQ01OX0RQX0xBTkVfRU5fQUxMLCB2YWx1ZSkp
Cj4gLQkJdWRwaHktPnN0YXR1cyA9IFVEUEhZX01PREVfRFA7Cj4gLQllbHNlCj4gLQkJcmtfdWRw
aHlfZGlzYWJsZSh1ZHBoeSk7Cj4gKwkJZGV2X2RiZyh1ZHBoeS0+ZGV2LCAiU3RhcnRlZCB3aXRo
IERQIFBIWSBwcmUtZW5hYmxlZDsgc2VhbWxlc3MgdGFrZW92ZXIgdW5zdXBwb3J0ZWRcbiIpOwo+
ICsKPiArCXJrX3VkcGh5X2Rpc2FibGUodWRwaHkpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNjE5LXJvY2tjaGlwLXVzYmRwLWNsZWFudXAtdjYtMC0zYmIxZjU0YjNmMzVAY29sbGFib3Jh
LmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
