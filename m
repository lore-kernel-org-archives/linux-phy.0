Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E84EDC982D0
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 06:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtTaKx+5vMbCfDhjf1EjhgKC4Zt3pCoUUKHUNUgfy08=; b=jziN0d6rjrW2MT
	Ek0ZDA0f75bPE0GeGyeuQNKXsa9WwT3mc6+FghO/taaogIScABfZww21HsKSW96W5avHK7f9/eJ8e
	vle+vJo+BF3axxOG3pBeLO65Py83lnqBbPk4gViTXJtLJ9TU0Q+Zsz8s2U59mL/RVzON2bmF8EjHp
	cYLAXyDfV5ZENHpsOcbCHg+iUEJSiITxc0opiasJIeatqLiQTDBwS3H8LeJMZKcWNAzrR/ZYPrUtd
	A4vQULpNp8Az1Km5zIpeiOSuWO4+7/B6k/pt7yBuCNDcHxSsLXAHzYzWI8x/hvDBou1+T4S/BFCWg
	1lPGoN7+t1XkIoo21taA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRw-0000000H0Qv-2CtR;
	Sun, 20 Sep 2026 06:54:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8BRu-0000000H0QU-3Cxd
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 06:54:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EA3B2419F8;
	Sun, 20 Sep 2026 06:54:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A9481F00893;
	Sun, 20 Sep 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789887293;
	bh=+eJMtG/fsjOAGPGmfMOnSiTd9gZkQ/sNw+3/csrLX1U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EX1lT3A4ryCXEtG5srxol7G8tJP05nzg30hODMwtCkuIgTH4gO5GjIC84RFt/H7yK
	 gn+YQQ7PJI/mbtk5VN8zDb3+1G5mF7nQeHtY6R7z2ODNZ5Kp26gwR3PQbryDMJxE69
	 TmhIpSq7GP5WJMMuizQQti/D8EiGGzNm01aDkTjDdr5dxnd4x1I9qj3dlyJlDlvdGB
	 djPox7hpmSW8Hs5jrR52M8ax1kJ8CyPSDl7nQKQwVgVTPA44nKnXCnJlxDtdQuH4rm
	 lcalii+3w5FXotEmfkQ6nhaKnRns7Lk2VPlX7MLFWmSXvvqE+47sif3pYz2mszNH7f
	 xF4OG6vcLrJew==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v3 03/12] dt-bindings: PCI: nxp,s32g-pcie: Fix
 SerDes PHY phandle in example
To: =?utf-8?b?SmFuIFBldHJvdXMgKE9TUyk=?= <jan.petrous@oss.nxp.com>
Cc: neil.armstrong@linaro.org, wsa+renesas@sang-engineering.com, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260919-s32g_serdes-v3-3-9d68868c1e89@oss.nxp.com>
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-3-9d68868c1e89@oss.nxp.com>
Date: Sun, 20 Sep 2026 06:54:52 +0000
Message-Id: <20260920065453.3A9481F00893@smtp.kernel.org>
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

PiBGcm9tOiAiSmFuIFBldHJvdXMgKE9TUykiIDxqYW4ucGV0cm91c0Bvc3MubnhwLmNvbT4KPiAK
PiBUaGUgZXhhbXBsZSByZWZlcmVuY2VzIHRoZSBTZXJEZXMgUEhZIGFzCj4gCj4gICBwaHlzID0g
PCZzZXJkZXMwIFBIWV9UWVBFX1BDSUUgMCAwPjsKPiAKPiBpLmUuIHRoZSBTZXJEZXMgbm9kZSBp
dHNlbGYgd2l0aCB0aHJlZSBQSFkgY2VsbHMuIFRoYXQgZG9lcyBub3QgbWF0Y2gKPiB0aGUgU2Vy
RGVzIGJpbmRpbmc6IHRoZSBwZXItbGFuZSBjaGlsZCBub2RlIGlzIHRoZSBnZW5lcmljIFBIWQo+
IHByb3ZpZGVyIGFuZCBjYXJyaWVzICcjcGh5LWNlbGxzID0gPDA+Jywgd2hpbGUgdGhlIFNlckRl
cyBub2RlIGl0c2VsZgo+IGhhcyBubyAnI3BoeS1jZWxscycgYXQgYWxsLgo+IAo+IFBvaW50IHRo
ZSBleGFtcGxlIGF0IHRoZSBQQ0llIGxhbmUgY2hpbGQgaW5zdGVhZCwgd2hpY2ggaXMgYWxzbyB3
aGF0Cj4gdGhlIFMzMkczIGJvYXJkIGRldmljZSB0cmVlcyB1c2UuIFRoZSBkdC1iaW5kaW5ncy9w
aHkvcGh5LmggaW5jbHVkZSBpcwo+IGRyb3BwZWQgYWxvbmcgd2l0aCB0aGUgbm93LXVudXNlZCBQ
SFlfVFlQRV9QQ0lFIGNvbnN0YW50Lgo+IAo+IFRoZSBzY2hlbWEgaXRzZWxmIGlzIHVuY2hhbmdl
ZDsgJ3BoeXM6IG1heEl0ZW1zOiAxJyBhbHJlYWR5IGRlc2NyaWJlcwo+IHRoZSBjb3JyZWN0ZWQg
Zm9ybS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW4gUGV0cm91cyAoT1NTKSA8amFuLnBldHJvdXNA
b3NzLm54cC5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBu
byBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkxOS1zMzJnX3NlcmRlcy12My0wLTlkNjg4
NjhjMWU4OUBvc3MubnhwLmNvbT9wYXJ0PTMKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
