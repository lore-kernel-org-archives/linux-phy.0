Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4D3BC61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 23:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoWHIX3dea4DRkfCvJkoW/WAfJPqoe1IqoL9RMKSbYM=; b=imPS+7wzJ+1F/+
	I2E3ZLBt/gZTzd3Gc/3SMsbB2KrGHmqD2priyw6eZ8BJTq/59wYJij0BC982dG7heZbVqEUMjtQ/M
	SL7A7nYp8pYYDVKjVw4DaKUqWUE+MjvMNzzLHzEvv7MPPXgRKO/KcANtjM8wcby8motA2K+KMCy5y
	ZX8CZOMQ+/O5ZqcSaxMk+r9ql8nyUno9eumt13aRGckiTMcIjC8noPSKyuLYnMdo6VWh0D0aISCtW
	Zbkz37iuFGsawbNg9bSwNRgw7OT1UTHtR7gZnyOf3MqDjZvk/QXH9SpfWtBo8/NBQaSutAgPgbTaX
	yreJfdBwGTpqaN/CKYUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYEOm-007lA8-28; Fri, 03 Mar 2023 23:01:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYDOz-007dM4-8r
	for linux-phy@lists.infradead.org; Fri, 03 Mar 2023 21:57:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E9ADF618F1;
	Fri,  3 Mar 2023 21:57:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 589BDC433EF;
	Fri,  3 Mar 2023 21:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677880639;
	bh=XKPieicA8mxBgDHfafnbiUGOdRZZfzDp6nuSYj8/TMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uuw5J8gjl41jr3mJnjjeTHOf1wXLwDIe/tZButxgwNzM8tFPfkvKtsALhVyVpuZKr
	 glridIdCQFjEt3otGwoxDtSpdkF6oCcp0cVHTN6W4z2KhwPT+wJLH/49bwm7r2N8dH
	 vb+xF+EIqYM7q1ctW5Y6K6luz+UM7GZWXdyxL2aXegPF99VjzZwUjrxHcnnLwBCEoD
	 D4WHJtmPowDlzs4J/oMYs2u72QEHX4zOFnp8Oy8XlGF9FDnfzprPxEH1JGjlJ1AepY
	 pgKjzzpDCMTvARReHXB49XgkQ9aUuOhIjl/VAFa0L5+aToGC/4nER7Y+VrfVXENwkO
	 jZHL0VwKjfgDA==
Date: Fri, 3 Mar 2023 21:57:11 +0000
From: Lee Jones <lee@kernel.org>
To: Colin Foster <colin.foster@in-advantage.com>
Cc: linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [RFC v1 net-next 2/7] mfd: ocelot: add ocelot-serdes capability
Message-ID: <20230303215711.GR2420672@google.com>
References: <20230216075321.2898003-1-colin.foster@in-advantage.com>
 <20230216075321.2898003-3-colin.foster@in-advantage.com>
 <20230303104807.GW2303077@google.com>
 <ZAIOddFw//0VDoyw@MSI.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZAIOddFw//0VDoyw@MSI.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_135721_420010_BDEBCC9E 
X-CRM114-Status: GOOD (  17.42  )
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

T24gRnJpLCAwMyBNYXIgMjAyMywgQ29saW4gRm9zdGVyIHdyb3RlOgoKPiBPbiBGcmksIE1hciAw
MywgMjAyMyBhdCAxMDo0ODowN0FNICswMDAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBXZWQs
IDE1IEZlYiAyMDIzLCBDb2xpbiBGb3N0ZXIgd3JvdGU6Cj4gPiAKPiA+ID4gQWRkIHN1cHBvcnQg
Zm9yIHRoZSBPY2Vsb3QgU0VSREVTIG1vZHVsZSB0byBzdXBwb3J0IGZ1bmN0aW9uYWxpdHkgb2Yg
YWxsCj4gPiA+IG5vbi1pbnRlcm5hbCBwaHkgcG9ydHMuCj4gPiAKPiA+IExvb2tzIG5vbi1jb250
cm92ZXJzaWFsLgo+ID4gCj4gPiBQbGVhc2UgcHJvdmlkZSBzb21lIGV4cGxhbmF0aW9uIG9mIHdo
YXQgU0VSREVTIG1lYW5zIC8gaXMuCj4gCj4gV2lsbCBkby4KPiAKPiA+ICAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogQ29saW4gRm9zdGVyIDxjb2xpbi5mb3N0ZXJAaW4tYWR2YW50YWdlLmNvbT4KPiA+
ID4gLS0tCj4gPiA+ICBkcml2ZXJzL21mZC9vY2Vsb3QtY29yZS5jIHwgMTMgKysrKysrKysrKysr
Kwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKPiA+IAo+ID4gSSdkIGV4
cGVjdCB0aGlzIHRvIGdvIGluIHZpYSBNRkQgb25jZSBpdCBjb21lcyBvdXQgb2YgUkZDLgo+IAo+
IFVuZGVyc3Rvb2QuIEknbGwgYmUgc3VyZSB0byBtYWtlIGl0IGNsZWFyIHRoYXQgc29tZSBzeW5j
IHdpbGwgYmUgbmVlZGVkCj4gYmV0d2VlbiBNRkQgYW5kIG5ldC1uZXh0IGluIHRoZSBjb3ZlciBs
ZXR0ZXIgdGhpcyB0aW1lLgoKVG8gYmUgaG9uZXN0LCBJIGRvbid0IHRoaW5rIHRoYXQncyByZXF1
aXJlZCB0aGlzIHRpbWUuCgpUaGlzIHBhdGNoIGxvb2tzIG9ydGhvZ29uYWwsIHVubGVzcyB0aGVy
ZSdzIHNvbWV0aGluZyBJJ20gbWlzc2luZy4KIAo+IFRoYW5rcyBMZWUhCgpOUAoKLS0gCkxlZSBK
b25lcyBb5p2O55C85pavXQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
