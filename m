Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94E10C6FD1C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 10:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SfZzF/QArBbZiqBB2XXqtnLUPA2gUdDm9s1lo9FgDCs=; b=f4ozEzuOLuhmol
	BK8wNZizHfekvnVY7zifhLS1STQGT4T5BJK4I4bF4uE5V+x1oyVvimUSodSv/YEj7vJ1+wnJ+Etea
	CFhTxKIMR3LXXZpTIOI+bLUGLzsFKem6ohWKmw3ZAgaOXjZ6JdqSwfxevfNtvztqmLo1h/0F7Yd6L
	4vRYgBKgBcHOuKuNBHtjcczBvC/5hblsMROaowZi9Ixf+MDtLfAIB3VzsAER2bvkt0tsPTY9oSURQ
	DGdoo8jOwjHltyqWGdCeCg+ICMsiIxonZ+bLRaH8q7CXbxeOwZmON3/n0czUtRX217+Ho5PEoH3kE
	Q4MbcAnNZwa+XxBGPlLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIAB-001Zar-0i;
	Thu, 23 Mar 2023 10:27:19 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIA6-001ZYb-37
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 10:27:17 +0000
Received: (Authenticated sender: herve.codina@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 2138B40002;
	Thu, 23 Mar 2023 10:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679567227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Bb2LaA5oKhmmtAZYLmsiQ/YaU0jciVROXMb0QSlP0Wg=;
	b=VxFDk1btpm3I+lY27gnNS2ZFS9MfFuK69w+dHpGJzWzpWR45gsxG/km5LiGA2wHJLBaLg5
	VK+K97/DL86knDX6Mke46XFjzerXEVRH/Zb93FgpPBaY8F7wk6J1AgSvyMu1tzuk8dHWz6
	xrEgKll+w/M4VK1OG85PKzR2sOgHEFTx9oc+ivV39IX8d7A+Kx1+d0/2wBwB2dPZ3ZQdte
	O+duzsRYbMcdgNBtMQpKLou3uaJu7N2ahGwixQe8z+OWcf1e6cGnb37vdxOxH8ZCklBNVI
	VeYlf21rudf7mc+B1N60Wt0NTfnjRYXw13T+M37jn2YthgvBxNvOGQ6CArHBmg==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [RFC PATCH 0/4] Hi,
Date: Thu, 23 Mar 2023 11:26:51 +0100
Message-Id: <20230323102655.264115-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_032715_393653_B337B4D2 
X-CRM114-Status: GOOD (  16.83  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SSBoYXZlIGEgc3lzdGVtIHdoZXJlIEkgbmVlZCB0byBoYW5kbGUgYW4gSERMQyBpbnRlcmZhY2Uu
CgpUaGUgSERMQyBkYXRhIGFyZSB0cmFuc2ZlcnJlZCB1c2luZyBhIFRETSBidXMgb24gd2hpY2gg
YSBQRUYyMjU2IGlzCnByZXNlbnQuIFRoZSBQRUYyMjU2IHRyYW5zZmVycyBkYXRhIGZyb20vdG8g
dGhlIFRETSBidXMgdG8vZnJvbSBFMSBsaW5lLgpUaGlzIFBFRjIyNTYgaXMgYWxzbyBjb25uZWN0
ZWQgdG8gYSBQb3dlclFVSUNDIFNvQyBmb3IgdGhlIGNvbnRyb2wgcGF0aAphbmQgdGhlIFRETSBp
cyBjb25uZWN0ZWQgdG8gdGhlIFNvQyAoUU1DIGNvbXBvbmVudCkgZm9yIHRoZSBkYXRhIHBhdGgu
CgpGcm9tIHRoZSBIRExDIGRyaXZlciwgSSBuZWVkIHRvIGhhbmRsZSBkYXRhIHVzaW5nIHRoZSBR
TUMgYW5kIGNhcnJpZXIKZGV0ZWN0aW9uIHVzaW5nIHRoZSBQRUYyMjU2IChFMSBsaW5lIGNhcnJp
ZXIpLgoKVGhlIEhETEMgZHJpdmVyIGNvbnNpZGVyIHRoZSBQRUYyMjU2IGFzIGEgZ2VuZXJpYyBQ
SFkuClNvLCB0aGUgZGVzaWduIGlzIHRoZSBmb2xsb3dpbmc6CgorLS0tLS0tLS0tLSsgICAgICAg
ICAgKy0tLS0tLS0tLS0tLS0rICAgICAgICAgICAgICArLS0tLS0tLS0tKwp8IEhETEMgZHJ2IHwg
PC1kYXRhLT4gfCBRTUMgY2hhbm5lbCB8IDwtLSBURE0gLS0+ICB8IFBFRjIyNTYgfAorLS0tLS0t
LS0tLSsgICAgICAgICAgKy0tLS0tLS0tLS0tLS0rICAgICAgICAgICAgICB8ICAgICAgICAgfCA8
LS0+IEUxCiAgIF4gICArLS0tLS0tLS0tKyAgICAgKy0tLS0tLS0tLSsgICAgICAgICAgICAgICAg
IHwgICAgICAgICB8CiAgICstPiB8IEdlbiBQSFkgfCA8LT4gfCBQRUYyMjU2IHwgPC0gbG9jYWwg
YnVzIC0+IHwgICAgICAgICB8CiAgICAgICArLS0tLS0tLS0tKyAgICAgfCBQSFkgZHJ2IHwgICAg
ICAgICAgICAgICAgICstLS0tLS0tLS0rCiAgICAgICAgICAgICAgICAgICAgICAgKy0tLS0tLS0t
LSsKCkluIG9yZGVyIHRvIGltcGxlbWVudCB0aGlzLCBJIGhhZCB0bzoKIDEgLSBFeHRlbmQgdGhl
IGdlbmVyaWMgUEhZIEFQSSB0byBzdXBwb3J0IGdldF9zdGF0dXMoKSBhbmQgbm90aWZpY2F0aW9u
CiAgICAgb24gc3RhdHVzIGNoYW5nZS4KIDIgLSBJbnRyb2R1Y2UgYSBuZXcga2luZCBvZiBnZW5l
cmljIFBIWSBuYW1lZCAiYmFzaWMgcGh5Ii4gVGhpcyBQSFkKICAgICBmYW1pbGx5IGNhbiBwcm92
aWRlIGEgbGluayBzdGF0dXMgaW4gdGhlIGdldF9zdGF0dXMoKSBkYXRhLgogMyAtIFN1cHBvcnQg
dGhlIFBFRjIyNTYgUEhZIGFzIGEgImJhc2ljIHBoeSIKClRoZSBwdXJwb3NlIG9mIHRoaXMgUkZD
IHNlcmllcyBpcyB0byBkaXNjdXNzIHRoaXMgZGVzaWduLgoKVGhlIFFNQyBkcml2ZXIgY29kZSBp
cyBhdmFpbGFibGUgb24gbGludXgtbmV4dC4gSW4gdGhpcyBzZXJpZXM6Ci0gcGF0Y2ggMTogZHJp
dmVyIEhETEMgdXNpbmcgdGhlIFFNQyBjaGFubmVsCi0gcGF0Y2ggMjogRXh0ZW5kIHRoZSBnZW5l
cmljIFBIWSBBUEkKLSBwYXRjaCAzOiBVc2UgdGhlICJiYXNpYyBwaHkiIGluIHRoZSBIRExDIGRy
aXZlcgotIHBhdGNoIDQ6IEltcGxlbWVudCB0aGUgUEVGMjI1NiBQSFkgZHJpdmVyCgpJIGRpZCAy
IHBhdGNoZXMgZm9yIHRoZSBIRExDIGRyaXZlciBpbiBvcmRlciB0byBwb2ludCB0aGUgbmV3IFBI
WSBmYW1pbHkKdXNhZ2UgaW4gdGhlIEhETEMgZHJpdmVyLiBJbiB0aGUgZW5kLCB0aGVzZSB0d28g
cGF0Y2hlcyB3aWxsIGJlIHNxdWFzaGVkCmFuZCB0aGUgYmluZGluZ3Mgd2lsbCBiZSBhZGRlZC4K
CkhvcGUgdG8gaGF2ZSBzb21lIGZlZWRiYWNrIG9uIHRoaXMgcHJvcG9zYWwuCgpCZXN0IHJlZ2Fy
ZHMsCkhlcnbDqQoKSGVydmUgQ29kaW5hICg0KToKICBuZXQ6IHdhbjogQWRkIHN1cHBvcnQgZm9y
IFFNQyBIRExDCiAgcGh5OiBFeHRlbmQgQVBJIHRvIHN1cHBvcnQgJ3N0YXR1cycgZ2V0IGFuZCBu
b3RpZmljYXRpb24KICBuZXQ6IHdhbjogZnNsX3FtY19oZGxjOiBBZGQgUEhZIHN1cHBvcnQKICBw
aHk6IGxhbnRpcTogQWRkIFBFRjIyNTYgUEhZIHN1cHBvcnQKCiBkcml2ZXJzL25ldC93YW4vS2Nv
bmZpZyAgICAgICAgICAgICAgICAgfCAgMTIgKwogZHJpdmVycy9uZXQvd2FuL01ha2VmaWxlICAg
ICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvbmV0L3dhbi9mc2xfcW1jX2hkbGMuYyAgICAg
ICAgICB8IDU1OCArKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvcGh5L2xhbnRpcS9L
Y29uZmlnICAgICAgICAgICAgICB8ICAxNSArCiBkcml2ZXJzL3BoeS9sYW50aXEvTWFrZWZpbGUg
ICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9waHkvbGFudGlxL3BoeS1sYW50aXEtcGVmMjI1
Ni5jIHwgMTMxICsrKysrKwogZHJpdmVycy9waHkvcGh5LWNvcmUuYyAgICAgICAgICAgICAgICAg
IHwgIDg4ICsrKysKIGluY2x1ZGUvbGludXgvcGh5L3BoeS1iYXNpYy5oICAgICAgICAgICB8ICAy
NyArKwogaW5jbHVkZS9saW51eC9waHkvcGh5LmggICAgICAgICAgICAgICAgIHwgIDg5ICsrKy0K
IDkgZmlsZXMgY2hhbmdlZCwgOTIxIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93YW4vZnNsX3FtY19oZGxjLmMKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL3BoeS9sYW50aXEvcGh5LWxhbnRpcS1wZWYyMjU2LmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3BoeS9waHktYmFzaWMuaAoKLS0gCjIuMzkuMgoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
