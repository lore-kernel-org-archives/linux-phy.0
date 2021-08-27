Return-Path: <SRS0=0dgd=NS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C54C4320E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 19:02:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FF4760FE6
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 19:02:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7FF4760FE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDGYqV3SP1FaSgY0qT4TqwJtip9ai30xq5Fe46LRLrU=; b=qQTW2L2pWIH4dw
	dTjqwAUybsMEvSJFIYulnhc1HhLlTWEBEEJP6S6lg12vVNNR7qK49SwHIPT33IFyZ7bYu4RbjclX5
	m0Lf8SJTYQyV1ERtjypzFK4QmrPt6fC5Zmc1TBCbpJ4eZ+OEjmFaMf92aWS5d+/uWEAPP1M6fm0o5
	L2GR/9j6qR9q11JqyJMKWZYO+uK6ILBHmWIN5vYXtNMv1+uWpB170yEfzGw5jrtA0c54SUdv5j3G2
	PLpdAvWpZbGJR/u5zecrm16cxvb+E6YwK1YoDg2J3mHj7Wh2SkIe1mvl6GNJfrzGhZW/u+eOkD/uU
	8lDUzP0mAxECaKmNvf6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJh7g-00D13d-1i; Fri, 27 Aug 2021 19:02:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJh7d-00D136-Bm
 for linux-phy@lists.infradead.org; Fri, 27 Aug 2021 19:02:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BAAAC60F25;
 Fri, 27 Aug 2021 19:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630090957;
 bh=NzSwgKgn3cMFs00vJFkDHQ4CGur+xCzPrHqpLXwNq4o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XaduGQD9sUqmYwfR9FRRI5gYz2UeMk7rlL/66/M2L09pd1RjBvvFuOoftfkX2awGS
 UW9JYvEo4s7cvNfDoxTEUok7iBPpUu2tGGZL/qDwmkESXc+1WP9ftdjf6IRdPx5d9r
 0bWQIgm5l3m+eaMiji+qgk6eCdYZU3PuKXkC+zwPbzSvHmJOsYFa0z6WT93MnCh3a2
 VllCKm9W3471ibsSB00fb7wExZ9UIWTtbZ8TUlOr3oyA6L2HD8fkXLKbc+8l7fdW/g
 IrCpVDUCDW4de9oxj4BO7cZw5NnJdIDkOloDTmofJKJbNJ6drE3IYXQQwKdDQA9JX9
 k/Uqp9bA18uKQ==
Received: by pali.im (Postfix)
 id 63999617; Fri, 27 Aug 2021 21:02:34 +0200 (CEST)
Date: Fri, 27 Aug 2021 21:02:34 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: marvell: phy-mvebu-a3700-comphy: Remove
 unsupported modes
Message-ID: <20210827190234.72eakdvbgojscpkm@pali>
References: <20210827092753.2359-1-pali@kernel.org>
 <20210827092753.2359-3-pali@kernel.org>
 <20210827132713.61ef86f0@thinkpad>
 <20210827182502.vdapjcqimq4ulkg2@pali>
 <20210827183355.GV22278@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210827183355.GV22278@shell.armlinux.org.uk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210827_120237_494271_0A2B60E0 
X-CRM114-Status: GOOD (  35.05  )
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

T24gRnJpZGF5IDI3IEF1Z3VzdCAyMDIxIDE5OjMzOjU1IFJ1c3NlbGwgS2luZyAoT3JhY2xlKSB3
cm90ZToKPiBPbiBGcmksIEF1ZyAyNywgMjAyMSBhdCAwODoyNTowMlBNICswMjAwLCBQYWxpIFJv
aMOhciB3cm90ZToKPiA+IGNwMTEwLWNvbXBoeSBhbmQgYTM3MDAtY29tcGh5IGFyZSBqdXN0IFJQ
QyBkcml2ZXJzIHdoaWNoIGNhbGxzIFNNQyBhbmQKPiA+IHJlbGF5IG9uIGZpcm13YXJlIHN1cHBv
cnQgd2hpY2ggaW1wbGVtZW50cyByZWFsIHdvcmsuIEFuZCBib3RoIHVzZXMgc2FtZQo+ID4gUlBD
IC8gU01DIEFQSS4gU28gbWVyZ2luZyBkcml2ZXJzIGludG8gb25lIGlzIHBvc3NpYmxlLgo+ID4g
Cj4gPiBCdXQgSSBkbyBub3QgdGhpbmsgdGhhdCBpdCBpcyBhIGdvb2QgaWRlYSB0aGF0IExpbnV4
IGtlcm5lbCBkZXBlbmRzIG9uCj4gPiBzb21lIGV4dGVybmFsIGZpcm13YXJlIHdoaWNoIGltcGxl
bWVudHMgUlBDIEFQSSBmb3IgY29uZmlndXJpbmcgSFcuCj4gPiAKPiA+IFJhdGhlciBrZXJuZWwg
c2hvdWxkIGltcGxlbWVudHMgaXRzIG5hdGl2ZSBkcml2ZXJzIHdpdGhvdXQgZGVwZW5kZW5jeSBv
bgo+ID4gZXh0ZXJuYWwgZmlybXdhcmUuCj4gPiAKPiA+IFdlIGtub3cgZnJvbSBoaXN0b3J5IHRo
YXQga2VybmVsIHRyaWVkIHRvIGF2b2lkIHVzaW5nIHg4NiBCSU9TL2Zpcm13YXJlCj4gPiBkdWUg
dG8gYnVncyBhbmQgYWxsIGZ1bmN0aW9uYWxpdHkgKHJlKS1pbXBsZW1lbnRlZCBpdHNlbGYgd2l0
aG91dCB1c2luZwo+ID4gZmlybXdhcmUgUlBDIGZ1bmN0aW9uYWxpdHkuCj4gCj4gTm90IHJlYWxs
eSBhbiBhcmd1bWVudCBpbiB0aGlzIGNhc2UuIFdlJ3JlIG5vdCB0YWxraW5nIGFib3V0IGNsb3Nl
ZAo+IHNvdXJjZSBmaXJtd2FyZS4KPiAKPiA+IEtlcm5lbCBoYXMgYWxyZWFkeSAiaGFja3MiIGlu
IG90aGVyIGRyaXZlcnMgd2hpY2ggYXJlIHVzaW5nIHRoZXNlIGNvbXBoeQo+ID4gZHJpdmVycywg
anVzdCBiZWNhdXNlIG9sZGVyIHZlcnNpb25zIG9mIGZpcm13YXJlIGRvIG5vdCBzdXBwb3J0IGFs
bAo+ID4gbmVjZXNzYXJ5IGZ1bmN0aW9uYWxpdHkgYW5kIHVwZ3JhZGluZyB0aGlzIGZpcm13YXJl
IGlzIG5vdCBlYXN5IHN0ZXAKPiA+IChhbmQgc29tZXRpbWVzIGV2ZW4gbm90IHBvc3NpYmxlOyBl
LmcuIHdoZW4gaXMgY3J5cHRvZ3JhcGhpY2FsbHkKPiA+IHNpZ25lZCkuCj4gCj4gVGhlIGtlcm5l
bCB1c2VkIHRvIChhbmQgcHJvYmFibHkgc3RpbGwgZG9lcykgY29udGFpbiBjb2RlIHRvIGNvbmZp
Z3VyZQo+IHRoZSBjb21waHlzLgoKS2VybmVsIGRvZXMgbm90IGhhdmUgY29kZSBmb3IgQTM3MDAu
IEhlbmNlIHJlYXNvbiB3aHkgdGhlcmUgYXJlIGhhY2tzIGluCm90aGVyIGRyaXZlcnMsIGxpa2Ug
bGliYXRhL2FoY2kgb3IgdXNiL3hoY2kuCgo+IEhhdmluZyB3b3JrZWQgb24gdHJ5aW5nIHRvIGdl
dCB0aGUgMTBHIGxhbmVzIHN0YWJsZSBvbgo+IE1hY2NoaWF0b2JpbiwgSSBtdWNoIHByZWZlciB0
aGUgZXhpc3Rpbmcgc29sdXRpb24gd2hlcmUgaXQncyBpbiB0aGUKPiBBVEYgZmlybXdhcmUuIEkn
dmUgcmVidWlsdCB0aGUgZmlybXdhcmUgc2V2ZXJhbCB0aW1lcyBkdXJpbmcgdGhlIGNvdXJzZQo+
IG9mIHRoYXQuCgpJbiBzb21lIGNhc2VzIHJlYnVpbHQgb2YgZmlybXdhcmUgZG9lcyBub3QgaGF2
ZSB0byBiZSBwb3NzaWJsZSAoZS5nLgp3aGVuIGl0IGl0IHNpZ25lZCkuCgo+IFRoZSBhZHZhbnRh
Z2UgaXMgdGhhdCBmaXhpbmcgdGhlIHNldHVwIG9mIHRoZSBDT01QSFkgaXMgZG9uZSBpbiBvbmUK
PiBwbGFjZSwgYW5kIGl0IGZpeGVzIGl0IG5vdCBvbmx5IGZvciB0aGUga2VybmVsLCBidXQgYWxz
byBmb3IgdS1ib290CgpVLUJvb3QgZm9yIEEzNzIwIGhhcyBpdHMgb3duIGltcGxlbWVudGF0aW9u
IGFuZCBkb2VzIG5vdCB1c2UgZmlybXdhcmUKaW1wbGVtZW50YXRpb24gKHlldCkuIFNvIGN1cnJl
bnRseSB0aGUgb25seSBjb25zdW1lciBvZiBmaXJtd2FyZQppbXBsZW1lbnRhdGlvbiBpcyBqdXN0
IExpbnV4IGtlcm5lbC4KCj4gYW5kIFVFRkkgdG9vLiBTbyByYXRoZXIgdGhhbiBoYXZpbmcgdG8g
bWFpbnRhaW4gdGhyZWUgZGlmZmVyZW50Cj4gcGxhY2VzIGZvciBhIHBhcnRpY3VsYXIgYm9hcmQs
IHdlIGNhbiBtYWludGFpbiB0aGUgcGFyYW1ldGVycyBpbiBvbmUKPiBwbGFjZSAtIGluIHRoZSBB
VEYgZmlybXdhcmUuCgpTYW1lIGFyZ3VtZW50IGNhbiBiZSB1c2VkIGZvciBhbnkgb3RoZXIgZHJp
dmVyIHdoaWNoIGlzIGltcGxlbWVudGVkIGluCmJvdGggYm9vdGxvYWRlciBhbmQga2VybmVsLi4u
IEJ1dCBJIHVuZGVyc3RhbmQgYWxzbyB5b3VyIGFyZ3VtZW50LgoKPiBUaGUgcHJvYmxlbSB3aXRo
IHRoZSBwYXN0IGhhcyBiZWVuIHRoYXQgc3R1ZmYgZ2V0cyBhY2NlcHRlZCBpbnRvIHRoZQo+IGtl
cm5lbCB3aXRob3V0IHRoZSAiZnVsbCBzeXN0ZW0iIHZpZXcgYW5kIHdpdGhvdXQgcmVnYXJkIGZv
ciAic2hvdWxkCj4gdGhpcyBhY3R1YWxseSBiZSBkb25lIGluIHRoZSBmaXJtd2FyZSIuIFRoZW4s
IHdoZW4gaXQncyBkZWNpZGVkIHRoYXQKPiBpdCByZWFsbHkgc2hvdWxkIGJlIGRvbmUgaW4gdGhl
IGZpcm13YXJlLCB3ZSBlbmQgdXAgbmVlZGluZyB0byBrZWVwCj4gdGhlIG9sZCBzdHVmZiBpbiB0
aGUga2VybmVsIGZvciBjb21wYXRpYmlsaXR5IHdpdGggb2xkZXIgZmlybXdhcmUsCj4gd2hpY2gg
aW5jaWRlbnRhbGx5IG1heSBub3QgYmUgdXAgdG8gZGF0ZS4KPiAKPiBJZiB3ZSB3ZXJlIHRvIGRy
b3AgdGhlIGNvbXBoeSBzZXR1cCBmcm9tIGZpcm13YXJlLCB0aGVuIHdlIHdpbGwgbmVlZAo+IGEg
bG90IG9mIGFkZGl0aW9uYWwgcHJvcGVydGllcyBpbiB0aGUga2VybmVsJ3MgRFQgYW5kIHUtYm9v
dCBEVCBmb3IKPiB0aGUgY29tcGh5IHRvIGNvbmZpZ3VyZSBpdCBhcHByb3ByaWF0ZWx5LiBBbmQg
QUNQSS4gSSBkb24ndCB0aGluawo+IHRoYXQgc2NhbGVzIHZlcnkgd2VsbCwgYW5kIGlzIGEgcmVj
aXBlIGZvciB0aGluZ3MgZ2V0dGluZyBvdXQgb2YKPiBzdGVwLgoKSSB0aGluayB0aGF0IHdoYXRl
dmVyIGlzIHVzZWQgKGZpcm13YXJlIGNvZGUsIGtlcm5lbCBjb2RlLCAuLi4pLCBEVApzaG91bGQg
YWx3YXlzIGNvbnRhaW5zIGZ1bGwgSFcgZGVzY3JpcHRpb24gd2l0aCBhbGwgbm9kZXMsIGFuZCBu
b3Qgb25seQpzb21lICJzdWJzZXQiLiBEVCBzaG91bGQgYmUgaW5kZXBlbmRlbnQgb2YgY3VycmVu
dCBkcml2ZXIgLyBmaXJtd2FyZQppbXBsZW1lbnRhdGlvbi4KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
