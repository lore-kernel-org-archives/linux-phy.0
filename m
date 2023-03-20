Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65DF6C6FD1D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 13:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMSfIfBEEsKaFidaEb3vrZR4BAZGyGRhcbOz++K24jk=; b=vRHpkF2/n/mZZI
	p+tu+mTJwQiR/G3KczYDKajTSggk3CRZ/rbXxnutf3s6lB+hS1huteTFpPRxZxlidAw1/sJDp62i8
	0G8304xrVlOrZmEMx3AbOM+9FrLKrb79aS0/Qr82ynClQR57iFF3BDDQO+Y2hClY8vkkgvPw0oyxr
	VtByuesUoJtKMh5ZIUjHIhOzU/0BxuUmty31AKJmF6U4TtIgw/0JDMHru5lWfx5SqxXZEIeryQIST
	Be6ZdVf94STEZeSRDX1Xef7RtVBNHhCFWJcFIDO3beLFdVOeh0xl36m+CHzjzg/KN9jnm0FRARvRZ
	uS5VgDuMNedf5I15pePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peFet-009CSw-0E;
	Mon, 20 Mar 2023 13:34:43 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peFeq-009CSR-1Q
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 13:34:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CC584B80E8B;
	Mon, 20 Mar 2023 13:34:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55D85C433EF;
	Mon, 20 Mar 2023 13:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679319277;
	bh=cMnOr3tLcRzgkmbSL/WMm9jqyT8XlfB68HNOw/D7CEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LPbiKaokf9U+3YAZ/kZ+XllTOru/gZRM2xIJSrxQtc7VpLO2F21s+5v+cw0fnthhY
	 t+bbf9nw0X4Rp4NWiLdyOEpkX/Th/TeAgS41XDzGlFcN3+M5UIf2ukZptJAkFaI2l5
	 C1K0ucKez2pI+3Ofo84hiDmAbbZ2xYSZDHAuIkGpEb+L4hqO89JmIzSNiuNBv7yTzl
	 Ui+HZDf5W6EBiKiOIebpob7/l7aeZ6b3U64vUBmkNVl+lXe/Jla+RDMwg61TS5VDia
	 mYNX7X/Ac0Eb72jh5ghYDYX69eG/+/TvwSvZm4wDc9RQaQAeFvDirbvw3ANolWNbCn
	 hFCaGYrmRZS9g==
Date: Mon, 20 Mar 2023 13:34:31 +0000
From: Lee Jones <lee@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>,
	Colin Foster <colin.foster@in-advantage.com>,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH v2 net-next 1/9] phy: phy-ocelot-serdes: add ability to
 be used in a non-syscon configuration
Message-ID: <20230320133431.GB2673958@google.com>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_063440_625025_8D73A801 
X-CRM114-Status: GOOD (  19.71  )
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

T24gTW9uLCAyMCBNYXIgMjAyMywgUnVzc2VsbCBLaW5nIChPcmFjbGUpIHdyb3RlOgoKPiBPbiBN
b24sIE1hciAyMCwgMjAyMyBhdCAwMjoxOTo0NFBNICswNTMwLCBWaW5vZCBLb3VsIHdyb3RlOgo+
ID4gT24gMTctMDMtMjMsIDExOjU0LCBDb2xpbiBGb3N0ZXIgd3JvdGU6Cj4gPiA+IFRoZSBwaHkt
b2NlbG90LXNlcmRlcyBtb2R1bGUgaGFzIGV4Y2x1c2l2ZWx5IGJlZW4gdXNlZCBpbiBhIHN5c2Nv
biBzZXR1cCwKPiA+ID4gZnJvbSBhbiBpbnRlcm5hbCBDUFUuIFRoZSBhZGRpdGlvbiBvZiBleHRl
cm5hbCBjb250cm9sIG9mIG9jZWxvdCBzd2l0Y2hlcwo+ID4gPiB2aWEgYW4gZXhpc3RpbmcgTUZE
IGltcGxlbWVudGF0aW9uIG1lYW5zIHRoYXQgc3lzY29uIGlzIG5vIGxvbmdlciB0aGUgb25seQo+
ID4gPiBpbnRlcmZhY2UgdGhhdCBwaHktb2NlbG90LXNlcmRlcyB3aWxsIHNlZS4KPiA+ID4KPiA+
ID4gSW4gdGhlIE1GRCBjb25maWd1cmF0aW9uLCBhbiBJT1JFU09VUkNFX1JFRyByZXNvdXJjZSB3
aWxsIGV4aXN0IGZvciB0aGUKPiA+ID4gZGV2aWNlLiBVdGlsaXplIHRoaXMgcmVzb3VyY2UgdG8g
YmUgYWJsZSB0byBmdW5jdGlvbiBpbiBib3RoIHN5c2NvbiBhbmQKPiA+ID4gbm9uLXN5c2NvbiBj
b25maWd1cmF0aW9ucy4KPiA+Cj4gPiBBcHBsaWVkIHRvIHBoeS9uZXh0LCB0aGFua3MKPgo+IFBs
ZWFzZSByZWFkIHRoZSBuZXRkZXYgRkFRLiBQYXRjaGVzIHNlbnQgdG8gbmV0ZGV2IGNvbnRhaW4g
dGhlIHRyZWUgdGhhdAo+IHRoZSBzdWJtaXR0ZXIgd2lzaGVzIHRoZSBwYXRjaGVzIHRvIGJlIGFw
cGxpZWQgdG8uCj4KPiBBcyBhIHJlc3VsdCwgSSBzZWUgZGF2ZW0gaGFzIGp1c3QgcGlja2VkIHVw
IHRoZSAqZW50aXJlKiBzZXJpZXMgd2hpY2gKPiBtZWFucyB0aGF0IGFsbCBwYXRjaGVzIGFyZSBp
biBuZXQtbmV4dCBub3cuIG5ldC1uZXh0IGlzIGltbXV0YWJsZS4KPgo+IEluIGFueSBjYXNlLCBJ
TUhPIGlmIHRoaXMga2luZCBvZiBmbHktYnkgY2hlcnJ5LXBpY2tpbmcgZnJvbSBwYXRjaAo+IHNl
cmllcyBpcyBpbnRlbmRlZCwgaXQgc2hvdWxkIGJlIG1lbnRpb25lZCBkdXJpbmcgcmV2aWV3IHRv
IGdpdmUgYQo+IGNoYW5jZSBmb3Igb3RoZXIgbWFpbnRhaW5lcnMgdG8gcmVzcG9uZCBhbmQgZ2l2
ZSBmZWVkYmFjay4gTm90IGFsbAo+IHN1Ym1pdHRlcnMgd2lsbCBrbm93IGhvdyBpbmRpdmlkdWFs
IG1haW50YWluZXJzIHdvcmsuIE5vdCBhbGwKPiBtYWludGFpbmVycyBrbm93IGhvdyBvdGhlciBt
YWludGFpbmVycyB3b3JrLgoKT25jZSBhZ2FpbiBuZXRkZXYgc2VlbXMgdG8gaGF2ZSBhcHBsaWVk
IHBhdGNoZXMgZnJvbSBvdGhlciBzdWJzeXN0ZW1zCndpdGhvdXQgcmV2aWV3L2Fjay4gIFdoYXQg
bWFrZXMgbmV0ZGV2IGRpZmZlcmVudCB0byBhbnkgb3RoZXIga2VybmVsCnN1YnN5c3RlbT8gIFdo
YXQgd291bGQgaGFwcGVuIGlmIG90aGVyIHJhbmRvbSBtYWludGFpbmVycyBzdGFydGVkCmFwcGx5
aW5nIG5ldGRldiBwYXRjaGVzIHdpdGhvdXQgYXBwcm9wcmlhdGUgcmV2aWV3PyAgSSBzdXNwZWN0
IHNvbWVvbmUKd291bGQgYmVjb21lIHVuZGVyc3RhbmRhYmx5IGdydW1weS4KCi0tCkxlZSBKb25l
cyBb5p2O55C85pavXQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
