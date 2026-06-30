Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1223C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UidYHryU0MjfqiOZPknv9tCqb9ZAAn8tRLd2nlzcwW0=; b=eKt1uQN6bh6W6y
	OIVxVoDuAbPRFYs1jAFbftq0X4VFiM5Q+0Mw0TQXUymfrH7WdD1ybxdrqIE6TA6ieWTFSZV/oJ7Qx
	fGu4obBxd9c1olLiV9cTkZwqcTdt5tvStttFgS1Of8BOepLJ+Ffxi0gO/Ss++6ckSRX5XdGZId2AC
	xUWSdWpPNCGTG8JiQru5mLAyD4yPa/r1JrZh3gPxhNJ9/ESQid1HihHrDkINQmWMPFPKBif/loc9m
	83XSwi4/0u3YSJIAruXA6E/hZRwS5mvttwndW2qZboutoB5Ff8ApMM3xmrZdXBNPdMekdLkLXA3vK
	7b6HgPW7vy4PkoZiTj/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYpS-0000000HCtp-2HOA;
	Tue, 30 Jun 2026 13:48:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYpQ-0000000HCtL-3dUM
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:48:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9CF4540DA2;
	Tue, 30 Jun 2026 13:48:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 113081F000E9;
	Tue, 30 Jun 2026 13:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782827324;
	bh=BOW9nhuhwQ2QWtjxhXj58gSDnVPAgMk8FWORBbZz3Ks=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B4TW4eewik/WUo7jG0TaZuS5i9ee9wqnGTxEYxapryYzOvBDNV2JdsGXOEKpX12ZM
	 LsIwGe327XuieX2p2IceY0r9QaT5ZBI5Y3QHXF9BX4LBM8sBEKy2UvMVRDqQ2f3rFP
	 wi2ST6bM+hT1N2UmFhwSQW/vvlwxn+eacBq3Aj9+3LdM0upNBndLOzHTmg2l26VDI3
	 YbGOLC50iUvYI1GDGbpNHw+nPFw4S5hPiqkTw1gGDBh7xZKA+KimzU1V2cUs13Zkv6
	 GNWgjv3+In1Ll42Po9cs8WvL7Z3W8TxuNvRizb2aMsmfl0fcqah7px5mbhPFWOF4Ld
	 abJn4U954HRjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 net-next 2/2] dt-bindings: phy: cadence-torrent:
 Update property values to support 3 clocks
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260630134324.61085-3-g-praveen@ti.com>
References: <20260630134324.61085-1-g-praveen@ti.com>
 <20260630134324.61085-3-g-praveen@ti.com>
Date: Tue, 30 Jun 2026 13:48:43 +0000
Message-Id: <20260630134844.113081F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGBjbG9jay1u
YW1lc2Agc2NoZW1hIGRlZmluaXRpb24gaW5jb3JyZWN0bHkgcmVzdHJpY3RzIHRoZSBhcnJheSB0
byBhIG1heGltdW0gb2YgMiBpdGVtcyBhbmQgYWxsb3dzIGR1cGxpY2F0ZSBjbG9jayBuYW1lcy4g
V2hpbGUgdGhlIGNvbW1pdCBjb3JyZWN0bHkgdXBkYXRlcyBgY2xvY2tzYCB0byBhbGxvdyBgbWF4
SXRlbXM6IDNgLCBpdCBvbmx5IG1vZGlmaWVzIHRoZSBzZWNvbmQgZWxlbWVudCBvZiB0aGUgYGl0
ZW1zYCBhcnJheSBmb3IgYGNsb2NrLW5hbWVzYC4gSW4gYGR0LXNjaGVtYWAgKGJhc2VkIG9uIEpT
T04gU2NoZW1hKSwgZGVmaW5pbmcgYGl0ZW1zYCBhcyBhbiBhcnJheSBvZiBzY2hlbWFzIGltcGxp
Y2l0bHkgbGltaXRzIHRoZSBtYXhpbXVtIG51bWJlciBvZiBpdGVtcyB0byB0aGUgbGVuZ3RoIG9m
IHRoYXQgYXJyYXkgKGJlY2F1c2UgYGFkZGl0aW9uYWxJdGVtc2AgaXMgaW1wbGljaXRseSBmYWxz
ZSkuIEFzIGEgcmVzdWx0LCBhIGRldmljZSB0cmVlIHNwZWNpZnlpbmcgMyBjbG9ja3Mgd2lsbCBm
YWlsIGBkdF9iaW5kaW5nX2NoZWNrYCB2YWxpZGF0aW9uLiBBZGRpdGlvbmFsbHksIGFkZGluZyBg
cmVmY2xrYCB0byB0aGUgc2Vjb25kIGVsZW1lbnQncyBgZW51bWAgY3JlYXRlcyBhIGxvZ2ljIGVy
cm9yLCBwZXJtaXR0aW5nIHJlZHVuZGFudCBzZXF1ZW5jZXMgc3VjaCBhcyBgY2xvY2stbmFtZXMg
PSAicmVmY2xrIiwgInJlZmNsayI7YC4KLS0KCmNvbW1pdCBkNzM3ZjZiMmY5MTk0OWU4MzllMjFm
NjJjMzljYTlkYjhmMzIyNzc1CkF1dGhvcjogR29rdWwgUHJhdmVlbiA8Zy1wcmF2ZWVuQHRpLmNv
bT4KCmR0LWJpbmRpbmdzOiBwaHk6IGNhZGVuY2UtdG9ycmVudDogVXBkYXRlIHByb3BlcnR5IHZh
bHVlcyB0byBzdXBwb3J0IDMgY2xvY2tzCgpUaGlzIGNvbW1pdCB1cGRhdGVzIHRoZSBDYWRlbmNl
IFRvcnJlbnQgUEhZIGRldmljZSB0cmVlIGJpbmRpbmcgdG8gc3VwcG9ydCB1cAp0byAzIGNsb2Nr
cy4gSXQgaW5jcmVhc2VzIHRoZSBtYXhJdGVtcyBvZiB0aGUgY2xvY2tzIHByb3BlcnR5IGFuZCB1
cGRhdGVzIHRoZQpjbG9jay1uYW1lcyBwcm9wZXJ0eS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LWNhZGVuY2UtdG9ycmVudC55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktY2FkZW5jZS10b3JyZW50
LnlhbWwKPiBpbmRleCA5YWYzOWIzMzY0NmFjLi41NGZlNzhkYTI5N2EyIDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LWNhZGVuY2UtdG9ycmVu
dC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHkt
Y2FkZW5jZS10b3JyZW50LnlhbWwKPiBAQCAtMzQsNyArMzQsNyBAQCBwcm9wZXJ0aWVzOgo+ICAK
PiAgICBjbG9ja3M6Cj4gICAgICBtaW5JdGVtczogMQo+IC0gICAgbWF4SXRlbXM6IDIKPiArICAg
IG1heEl0ZW1zOiAzCj4gICAgICBkZXNjcmlwdGlvbjoKPiAgICAgICAgUEhZIGlucHV0IHJlZmVy
ZW5jZSBjbG9ja3MgLSByZWZjbGsgKGZvciBQTEwwKSAmIHBsbDFfcmVmY2xrIChmb3IgUExMMSku
CgpbIC4uLiBdCgo+IEBAIC00Nyw3ICs0Nyw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICBtaW5JdGVt
czogMQo+ICAgICAgaXRlbXM6Cj4gICAgICAgIC0gY29uc3Q6IHJlZmNsawo+IC0gICAgICAtIGVu
dW06IFsgcGxsMV9yZWZjbGssIHBoeV9lbl9yZWZjbGsgXQo+ICsgICAgICAtIGVudW06IFtyZWZj
bGssIHBsbDFfcmVmY2xrLCBwaHlfZW5fcmVmY2xrIF0KCltTZXZlcml0eTogTWVkaXVtXQpXaWxs
IHRoaXMgZmFpbCBzY2hlbWEgdmFsaWRhdGlvbiB3aGVuIGEgZGV2aWNlIHRyZWUgc3BlY2lmaWVz
IDMgY2xvY2tzPyAKCkJlY2F1c2UgdGhlIGl0ZW1zIHNlcXVlbmNlIGZvciBjbG9jay1uYW1lcyBv
bmx5IGRlZmluZXMgdHdvIGVsZW1lbnRzLCBpdAppbXBsaWNpdGx5IHJlc3RyaWN0cyB0aGUgYXJy
YXkgdG8gYSBtYXhpbXVtIG9mIDIgaXRlbXMuIEV2ZW4gdGhvdWdoIHRoZSBjbG9ja3MKcHJvcGVy
dHkgd2FzIHVwZGF0ZWQgdG8gbWF4SXRlbXM6IDMgYWJvdmUsIHRoZSBjbG9jay1uYW1lcyBhcnJh
eSBpcyBub3cKbWlzbWF0Y2hlZCBhbmQgd2lsbCByZWplY3QgMyBpdGVtcyBkdXJpbmcgZHRfYmlu
ZGluZ19jaGVjay4KCkFsc28sIGRvZXMgdGhpcyB1bmludGVudGlvbmFsbHkgYWxsb3cgZHVwbGlj
YXRlIGNsb2NrIG5hbWVzPyBBZGRpbmcgcmVmY2xrIHRvCnRoZSBzZWNvbmQgZWxlbWVudCdzIGVu
dW0gbWFrZXMgaXQgcG9zc2libGUgdG8gZGVmaW5lIGEgcmVkdW5kYW50IHNlcXVlbmNlCmxpa2Ug
Y2xvY2stbmFtZXMgPSAicmVmY2xrIiwgInJlZmNsayIuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjMwMTM0MzI0LjYxMDg1LTEt
Zy1wcmF2ZWVuQHRpLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
