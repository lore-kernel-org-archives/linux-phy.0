Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2EB2CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVcpUGLm+OMgOl9ylSwiAC+YN7PCW/T9J73dJ6FjZ6g=; b=43ENJhieJQ/388
	2lsX2iwpMIUpWW+3Rr3tDaVJah/5MN/dt32W1WfZod3QH0+QP/t08vPWyfltQQjEc+6wgkcxYHJSR
	vEgFdOMaDhZTY5wbbSig2cng2nQtvR9sDpXB+XTlnlRmuzw3BFvGm7xmycA85VG12iDQjW10d5EhK
	/F2JasjoVJHF/YX7mtPOxGVe+pnv3DBuNzdYwJYlj3/LWjtd/9sEVnuz/JVJB+MflHQ2VZ1qwSCFB
	vp/3ENUUriAuQdeauOuUIYU03oUqwljK1rGuoZyeh1n/3baWHxRUe1oqaYnpH2TEPGHIt38JtIE8e
	RXCxWZVdcl0Kma8p6Y6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGJy-0000000AbkQ-1x3M;
	Mon, 12 Oct 2026 13:44:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGJw-0000000Abjy-2oTN
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:44:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1FA21418A0;
	Mon, 12 Oct 2026 13:44:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 875A01F0089B;
	Mon, 12 Oct 2026 13:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791812644;
	bh=9wQoPvhNfBCFt5eMYidhxwpZ5tIuDmEhDCV+FxI69zM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UYxcdu5A2QHfrps407/SvwJZ6ISMO+lWX5js/3trBOkQG6OFbIQMAy7BSMb8LZ86v
	 0J8PAVwRBD6LdZIirGjMxKRWcewuank+DqVaiBjWr+bhxPswUt5e3dH2UtE6iJw008
	 IcMw7P+qQuoTx5J1ZvG4d364NLLmVv4TgsDMgo1iuVXKnXbQXVhdtkb4ZAtqpeRnl1
	 wlI6PFZkjrM5ICzIxV/AYi49/JR4viepg3eua2AhXqZTxWplpddDKYYnMBJyhEnkEe
	 i8uXbKXMRMA8Ai4gSDttJn4U2u5uozqz1gqxxv7diGHIKQcTKwcjx6i81vJiSn1ttO
	 qmvd4X4jnIFtw==
Message-ID: <sashiko-outbox-168204@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 13/13] phy: qcom: edp: Add Nord phy_cfg, ops and OF
 compatible
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20261012-nord-drv-dt-v2-13-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-13-a2ab9af954d2@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 13:44:03 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcWNvbS1lZHA6
IGxlZ2FjeSBUWG5fVFhfQkFORCB3cml0ZXMgY29ycnVwdCBOb3JkIGhhcmR3YXJlIHN0YXRlCi0g
W0hpZ2hdIHBoeTogcWNvbS1lZHA6IGhhcmRjb2RlZCBUWG5fVFhfRFJWX0xWTCB3cml0ZXMgYnJl
YWsgdm9sdGFnZSB1cGRhdGVzIG9uIE5vcmQgUEhZCi0tCgpjb21taXQgMTM5M2M3OWYyOWJkNzg4
YTgzY2UyM2M0NTM3M2JhMzllNjkxMzJkMApBdXRob3I6IFJpdGVzaCBLdW1hciA8cml0ZXNoLmt1
bWFyQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFjb206IGVkcDogQWRkIE5vcmQgcGh5X2NmZywg
b3BzIGFuZCBPRiBjb21wYXRpYmxlCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBjb25maWd1cmF0aW9u
IHN0cnVjdHVyZXMsIG9wZXJhdGlvbnMsIGFuZCBkZXZpY2UgdHJlZQptYXRjaGluZyBmb3IgdGhl
IE5vcmQgRFAgUEhZLiBJdCBkZWZpbmVzIHRoZSBOb3JkLXNwZWNpZmljIHRhYmxlcyBmb3IgQVVY
LApWQ08sIHN3aW5nLCBhbmQgcHJlLWVtcGhhc2lzLCBhbG9uZyB3aXRoIHVwZGF0ZWQgc3RhdHVz
IHJlZ2lzdGVyIG9mZnNldHMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1lZHAuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWVkcC5jCj4gaW5k
ZXggY2I1ZjZlMGFlNjA3Yi4uODc0MDBkNjEzMjNhNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1lZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLWVkcC5jCgpbIC4uLiBdCgo+IEBAIC0xNzc0LDYgKzE3NzQsMzAgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBxY29tX2VkcF90eF9yZXNfZW50cnkgdHhfcmVzX2NmZ19ub3JkW10gPSB7Cj4g
IAlRQ09NX0VEUF9UWF9SRVNfRU5UUllfRU5ELAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0
cnVjdCBwaHlfdmVyX29wcyBxY29tX2VkcF9waHlfb3BzX25vcmQgPSB7Cj4gKwkuY29tX3Bvd2Vy
X29uCQk9IHFjb21fZWRwX3BoeV9wb3dlcl9vbl92OCwKPiArCS5jb21fcmVzZXRzbV9jbnRybAk9
IHFjb21fZWRwX3BoeV9jb21fcmVzZXRzbV9jbnRybF92OCwKPiArCS5jb21fYmlhc19lbl9jbGti
dWZscgk9IHFjb21fZWRwX2NvbV9iaWFzX2VuX2Nsa2J1ZmxyX3Y4LAo+ICsJLmNvbV9jb25maWd1
cmVfcGxsCT0gcWNvbV9lZHBfY29tX2NvbmZpZ3VyZV9wbGxfbm9yZCwKPiArCS5jb21fY29uZmln
dXJlX3NzYwk9IHFjb21fZWRwX2NvbV9jb25maWd1cmVfc3NjX25vcmQsCj4gKwkuY29tX2xkb19j
b25maWcJCT0gcWNvbV9lZHBfbGRvX2NvbmZpZ19ub3JkLAo+ICt9Owo+ICsKPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBxY29tX2VkcF9waHlfY2ZnIG5vcmRfZWRwX3BoeV9jZmcgPSB7Cj4gKwkuaXNf
ZWRwCQkJPSBmYWxzZSwKPiArCS5hdXhfY2ZnCQk9IGVkcF9waHlfYXV4X2NmZ19ub3JkLAo+ICsJ
LnZjb19kaXZfY2ZnCQk9IGVkcF9waHlfdmNvX2Rpdl9jZmdfbm9yZCwKPiArCS5kcF9zd2luZ19w
cmVfZW1waF9jZmcJPSAmbm9yZF9kcF9zd2luZ19wcmVfZW1waF9jZmcsCj4gKwkuZWRwX3N3aW5n
X3ByZV9lbXBoX2NmZwk9ICZub3JkX2VkcF9zd2luZ19wcmVfZW1waF9jZmcsCj4gKwkudmVyX29w
cwkJPSAmcWNvbV9lZHBfcGh5X29wc19ub3JkLAo+ICsJLnBoeV9zdGF0dXNfcmVnCQk9IERQX1BI
WV9TVEFUVVNfTk9SRCwKPiArCS5iaWFzMV9lbl8ybGFuZQkJPSAweDAzLAo+ICsJLnR4Ml90eDNf
bGFuZV9jdGwJPSBEUF9QSFlfVFgyX1RYM19MQU5FX0NUTF9OT1JELAo+ICsJLnR4X3Jlc19jZmcJ
CT0gdHhfcmVzX2NmZ19ub3JkLAoKW1NldmVyaXR5OiBIaWdoXQpUaGUgdHhfcmVzX2NmZ19ub3Jk
IHRhYmxlIGNvcnJlY3RseSBjb25maWd1cmVzIHRoZSByZWxvY2F0ZWQgb2Zmc2V0IGZvcgpUWF9C
QU5EICgweDAwMjQpLiBIb3dldmVyLCBkb2VzIHFjb21fZWRwX3BoeV9wb3dlcl9vbigpIHN0aWxs
IHVuY29uZGl0aW9uYWxseQp3cml0ZSB0byB0aGUgbGVnYWN5IFRYX0JBTkQgb2Zmc2V0ICgweDAw
MjgpIGJlZm9yZSBhcHBseWluZyB0aGUgdHhfcmVzX2NmZwp0YWJsZT8KCnFjb21fZWRwX3BoeV9w
b3dlcl9vbigpIHsKICAgIC4uLgogICAgd3JpdGVsKDB4MDQsIGVkcC0+dHgwICsgVFhuX1RYX0JB
TkQpOwogICAgLi4uCiAgICB3cml0ZWwoMHgwNCwgZWRwLT50eDEgKyBUWG5fVFhfQkFORCk7CiAg
ICAuLi4KfQoKQ291bGQgdGhpcyBjYXVzZSBhIHdyaXRlIHRvIHRoZSB3cm9uZyBvZmZzZXQgb24g
Tm9yZCBoYXJkd2FyZSwgcG90ZW50aWFsbHkKY29ycnVwdGluZyB3aGF0ZXZlciB1bnJlbGF0ZWQg
cmVnaXN0ZXIgbm93IGV4aXN0cyBhdCAweDAwMjg/CgpTaG91bGQgdGhpcyByZWdpc3RlciBvZmZz
ZXQgYmUgcGFyYW1ldGVyaXplZCBvciBtb3ZlZCBlbnRpcmVseSB0byB0eF9yZXNfY2ZnPwoKW1Nl
dmVyaXR5OiBIaWdoXQpTaW1pbGFybHksIHR4X3Jlc19jZmdfbm9yZCBpbml0aWFsaXplcyBEUF9Q
SFlfVFhfTE4wX0RSVl9MVkxfTk9SRCAob2Zmc2V0CjB4MDBlNCksIGluZGljYXRpbmcgdGhlIGRy
aXZlIGxldmVsIHJlZ2lzdGVycyB3ZXJlIGFsc28gcmVsb2NhdGVkLgoKSG93ZXZlciwgZG9lc24n
dCBxY29tX2VkcF9zZXRfdm9sdGFnZXMoKSBzdGlsbCBkeW5hbWljYWxseSB3cml0ZSB0aGUgdm9s
dGFnZQpzd2luZyB2YWx1ZXMgdG8gdGhlIGxlZ2FjeSBUWG5fVFhfRFJWX0xWTCBvZmZzZXQgKDB4
MDAxNCkgZHVyaW5nIERQIGxpbmsKdHJhaW5pbmc/CgpxY29tX2VkcF9zZXRfdm9sdGFnZXMoKSB7
CiAgICAuLi4KICAgIHdyaXRlbChzd2luZywgZWRwLT50eDAgKyBUWG5fVFhfRFJWX0xWTCk7CiAg
ICAuLi4KICAgIHdyaXRlbChzd2luZywgZWRwLT50eDEgKyBUWG5fVFhfRFJWX0xWTCk7CiAgICAu
Li4KfQoKV2lsbCBEUCBsaW5rIHRyYWluaW5nIGZhaWwgb24gTm9yZCBQSFlzIGJlY2F1c2UgdGhl
IGFjdHVhbCBkcml2ZSBsZXZlbApyZWdpc3RlciBhdCAweDAwZTQgaXMgbmV2ZXIgdXBkYXRlZCB3
aXRoIHRoZSBkeW5hbWljIHZvbHRhZ2UgbGV2ZWxzPwoKPiArCS5jbW5fc3RhdHVzX3JlZwkJPSBE
UF9RU0VSREVTX1Y4X0NPTV9DTU5fU1RBVFVTX05PUkQsCj4gKwkuY19yZWFkeV9zdGF0dXNfcmVn
CT0gRFBfUVNFUkRFU19WOF9DT01fQ19SRUFEWV9TVEFUVVNfTk9SRCwKPiArfTsKCi0tIApTYXNo
aWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEwMTIt
bm9yZC1kcnYtZHQtdjItMC1hMmFiOWFmOTU0ZDJAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEzCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
