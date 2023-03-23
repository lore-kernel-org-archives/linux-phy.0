Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCCFFC6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 10:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJNF/a56AvufJ//EXAbxyOqDqMRaMCNv3/o71Ov/CM4=; b=jGrVGQwm90VKyt
	v+LsKj+HMKr7x0Mrb1dZuqiOvsuOx9SecXTRqjdr2MHhLVWa8r4HSAUBIt9qB/2kTwGgcLH9zXy8j
	8kVmB+pehAtum2Kgn6rkHpCYwJAVyQRYmKM8kiQjChTlaAWAEVrY7USHx7voP4GKPh0V3PbhENZaL
	d2yNJ5M2DcBCIfCyU6++nJqZCNmnlMxNG1qGtm8RAICO9fV2fdO9izzSr9qUU2dlP3478fQXl2r3x
	5VqulF9RFIPH68+mVVfsZ9Y4Ol9TF0mICkVo3MrxqX9DOXXrczVPNU4XOX4G6//ffoOcQ+s5/0quh
	WCJK3qU/sezE/hDT5xuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIEx-001aKM-1M;
	Thu, 23 Mar 2023 10:32:15 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfIEt-001aHc-2M
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 10:32:13 +0000
Received: (Authenticated sender: herve.codina@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 3705E20011;
	Thu, 23 Mar 2023 10:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679567526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=En1dwiDW/nnta459jp55SHmclo/QOWmQxsSNcw/FvxU=;
	b=dhqqOVVb41Em6WHFrbOqQ4Eqg9sBnbqbDXsnbyYjQehXUbpP9A769e6ODNsqGKwO8tAMPQ
	mY26w6DciCiCiN0xJsRdirMMjc/zTluHn2SiXP/6RGqGWGl1IFEmh+uZ2KqLcSGG31Stm1
	Gbc5XUaTBHF3w1vY3AqZUDMiaAWXb6NkjuMteblY/5XIBGxtGXr0WDGWBki50P7LPtFB/n
	xfGAfdU46HACaBDFRuO0PUCoJwX7SVwcGE7kI0y7I2QuP+zPXUDjg+pUP+kMzOIB8gOqjg
	Hd/tm4SBMXIT4p3QKydSVaX4zEZiDjfwXfCu2WWNsj2EoMzzUiytDD6HvWUevA==
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
Subject: [RFC PATCH 0/4] Add support for QMC HDLC and PHY
Date: Thu, 23 Mar 2023 11:31:50 +0100
Message-Id: <20230323103154.264546-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_033212_067175_A3C7DA50 
X-CRM114-Status: GOOD (  17.78  )
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

SGksCgpJIGhhdmUgYSBzeXN0ZW0gd2hlcmUgSSBuZWVkIHRvIGhhbmRsZSBhbiBIRExDIGludGVy
ZmFjZS4KClRoZSBIRExDIGRhdGEgYXJlIHRyYW5zZmVycmVkIHVzaW5nIGEgVERNIGJ1cyBvbiB3
aGljaCBhIFBFRjIyNTYgaXMKcHJlc2VudC4gVGhlIFBFRjIyNTYgdHJhbnNmZXJzIGRhdGEgZnJv
bS90byB0aGUgVERNIGJ1cyB0by9mcm9tIEUxIGxpbmUuClRoaXMgUEVGMjI1NiBpcyBhbHNvIGNv
bm5lY3RlZCB0byBhIFBvd2VyUVVJQ0MgU29DIGZvciB0aGUgY29udHJvbCBwYXRoCmFuZCB0aGUg
VERNIGlzIGNvbm5lY3RlZCB0byB0aGUgU29DIChRTUMgY29tcG9uZW50KSBmb3IgdGhlIGRhdGEg
cGF0aC4KCkZyb20gdGhlIEhETEMgZHJpdmVyLCBJIG5lZWQgdG8gaGFuZGxlIGRhdGEgdXNpbmcg
dGhlIFFNQyBhbmQgY2FycmllcgpkZXRlY3Rpb24gdXNpbmcgdGhlIFBFRjIyNTYgKEUxIGxpbmUg
Y2FycmllcikuCgpUaGUgSERMQyBkcml2ZXIgY29uc2lkZXIgdGhlIFBFRjIyNTYgYXMgYSBnZW5l
cmljIFBIWS4KU28sIHRoZSBkZXNpZ24gaXMgdGhlIGZvbGxvd2luZzoKCistLS0tLS0tLS0tKyAg
ICAgICAgICArLS0tLS0tLS0tLS0tLSsgICAgICAgICAgICAgICstLS0tLS0tLS0rCnwgSERMQyBk
cnYgfCA8LWRhdGEtPiB8IFFNQyBjaGFubmVsIHwgPC0tIFRETSAtLT4gIHwgUEVGMjI1NiB8Cist
LS0tLS0tLS0tKyAgICAgICAgICArLS0tLS0tLS0tLS0tLSsgICAgICAgICAgICAgIHwgICAgICAg
ICB8IDwtLT4gRTEKICAgXiAgICstLS0tLS0tLS0rICAgICArLS0tLS0tLS0tKyAgICAgICAgICAg
ICAgICAgfCAgICAgICAgIHwKICAgKy0+IHwgR2VuIFBIWSB8IDwtPiB8IFBFRjIyNTYgfCA8LSBs
b2NhbCBidXMgLT4gfCAgICAgICAgIHwKICAgICAgICstLS0tLS0tLS0rICAgICB8IFBIWSBkcnYg
fCAgICAgICAgICAgICAgICAgKy0tLS0tLS0tLSsKICAgICAgICAgICAgICAgICAgICAgICArLS0t
LS0tLS0tKwoKSW4gb3JkZXIgdG8gaW1wbGVtZW50IHRoaXMsIEkgaGFkIHRvOgogMSAtIEV4dGVu
ZCB0aGUgZ2VuZXJpYyBQSFkgQVBJIHRvIHN1cHBvcnQgZ2V0X3N0YXR1cygpIGFuZCBub3RpZmlj
YXRpb24KICAgICBvbiBzdGF0dXMgY2hhbmdlLgogMiAtIEludHJvZHVjZSBhIG5ldyBraW5kIG9m
IGdlbmVyaWMgUEhZIG5hbWVkICJiYXNpYyBwaHkiLiBUaGlzIFBIWQogICAgIGZhbWlsbHkgY2Fu
IHByb3ZpZGUgYSBsaW5rIHN0YXR1cyBpbiB0aGUgZ2V0X3N0YXR1cygpIGRhdGEuCiAzIC0gU3Vw
cG9ydCB0aGUgUEVGMjI1NiBQSFkgYXMgYSAiYmFzaWMgcGh5IgoKVGhlIHB1cnBvc2Ugb2YgdGhp
cyBSRkMgc2VyaWVzIGlzIHRvIGRpc2N1c3MgdGhpcyBkZXNpZ24uCgpUaGUgUU1DIGRyaXZlciBj
b2RlIGlzIGF2YWlsYWJsZSBvbiBsaW51eC1uZXh0LiBJbiB0aGlzIHNlcmllczoKLSBwYXRjaCAx
OiBkcml2ZXIgSERMQyB1c2luZyB0aGUgUU1DIGNoYW5uZWwKLSBwYXRjaCAyOiBFeHRlbmQgdGhl
IGdlbmVyaWMgUEhZIEFQSQotIHBhdGNoIDM6IFVzZSB0aGUgImJhc2ljIHBoeSIgaW4gdGhlIEhE
TEMgZHJpdmVyCi0gcGF0Y2ggNDogSW1wbGVtZW50IHRoZSBQRUYyMjU2IFBIWSBkcml2ZXIKCkkg
ZGlkIDIgcGF0Y2hlcyBmb3IgdGhlIEhETEMgZHJpdmVyIGluIG9yZGVyIHRvIHBvaW50IHRoZSBu
ZXcgUEhZIGZhbWlseQp1c2FnZSBpbiB0aGUgSERMQyBkcml2ZXIuIEluIHRoZSBlbmQsIHRoZXNl
IHR3byBwYXRjaGVzIHdpbGwgYmUgc3F1YXNoZWQKYW5kIHRoZSBiaW5kaW5ncyB3aWxsIGJlIGFk
ZGVkLgoKSG9wZSB0byBoYXZlIHNvbWUgZmVlZGJhY2sgb24gdGhpcyBwcm9wb3NhbC4KCkJlc3Qg
cmVnYXJkcywKSGVydsOpCgpIZXJ2ZSBDb2RpbmEgKDQpOgogIG5ldDogd2FuOiBBZGQgc3VwcG9y
dCBmb3IgUU1DIEhETEMKICBwaHk6IEV4dGVuZCBBUEkgdG8gc3VwcG9ydCAnc3RhdHVzJyBnZXQg
YW5kIG5vdGlmaWNhdGlvbgogIG5ldDogd2FuOiBmc2xfcW1jX2hkbGM6IEFkZCBQSFkgc3VwcG9y
dAogIHBoeTogbGFudGlxOiBBZGQgUEVGMjI1NiBQSFkgc3VwcG9ydAoKIGRyaXZlcnMvbmV0L3dh
bi9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAxMiArCiBkcml2ZXJzL25ldC93YW4vTWFrZWZp
bGUgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9uZXQvd2FuL2ZzbF9xbWNfaGRsYy5j
ICAgICAgICAgIHwgNTU4ICsrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9waHkvbGFu
dGlxL0tjb25maWcgICAgICAgICAgICAgIHwgIDE1ICsKIGRyaXZlcnMvcGh5L2xhbnRpcS9NYWtl
ZmlsZSAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3BoeS9sYW50aXEvcGh5LWxhbnRpcS1w
ZWYyMjU2LmMgfCAxMzEgKysrKysrCiBkcml2ZXJzL3BoeS9waHktY29yZS5jICAgICAgICAgICAg
ICAgICAgfCAgODggKysrKwogaW5jbHVkZS9saW51eC9waHkvcGh5LWJhc2ljLmggICAgICAgICAg
IHwgIDI3ICsrCiBpbmNsdWRlL2xpbnV4L3BoeS9waHkuaCAgICAgICAgICAgICAgICAgfCAgODkg
KysrLQogOSBmaWxlcyBjaGFuZ2VkLCA5MjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dhbi9mc2xfcW1jX2hkbGMuYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L2xhbnRpcS9waHktbGFudGlxLXBlZjIyNTYuYwogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvcGh5L3BoeS1iYXNpYy5oCgotLSAKMi4zOS4y
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
