Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCFD3C79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5l1f3qQJ0BXsbjhtI9BxJ1viz212ojAVlFmwD22dMc=; b=rz9k0KJ9K2KG1M
	zChoAsyfClgYGVERQjwHV3pGgGJAXZ/SsfYzWyWUernNfQIqZRnIyHkdkA1UFKf2CRN0McBwdypC5
	TH1G3AQYuqvkpgVke1Vas1ufBnsvE2qvXsqqcbQBI6F9ULvxXiVSPGMzZ/6ojTA8iwCJ3VoIZ2mE+
	B/K6xKYVhA7jykxCkWudKk2Tl2Z4TKkYNVPRlKvXO3ouMTVFIHLW12FLC2dQtjilCEEm2Y8f94rWS
	60WF+/N/zCAsPYcHW0NZciaBzwJ9bqhSGQvnUrVRZ1Vc1mxTetZUret7fkrKUTpW+Ygj0hYqDP7c3
	RBC0wVnFcdFUj1LQMcWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZKy-0000000DeA8-0q9X;
	Thu, 10 Sep 2026 07:36:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZKw-0000000De9g-3pZx
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:36:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1E6DD600CB;
	Thu, 10 Sep 2026 07:36:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E9BD1F00893;
	Thu, 10 Sep 2026 07:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789025805;
	bh=oyXyxwAzCKEjQAFGJxCF4ZG5LZrRIcmWC36sTNkdHBs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A43YdFy61wKlnEfw5kYf6xjULwr2LGtZbxFIfiVe9uvlNEJJ7lZsCNAsqjSmKaZbv
	 N8ZbJAy84wrnhAdaEzTwATPJRBiVRrpufF2HXpfD/LZdfUycfolv+JRegGZdtPHc/S
	 pqas1uisAAM1TCjsEiM6pYDo8OuqZRziMiJ7ey0JM+YyuM/Z3hZGkaa3kQcz54x/La
	 yIJE0UtlEjObDXi6aIg78MpsmH7tt2zq9zKUdpYsm7tOYsWIrjcRdoteDHSGfwJIdv
	 SLgHniBmHlIz1mUpBhYaDm0UUK1ZWCb0HCUO5Dwlw1/DrbY577Gc4a0nv11l18RpYp
	 DVB6jk/3V6uFA==
Date: Thu, 10 Sep 2026 09:36:36 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	shengchao.guo@oss.qualcomm.com
Subject: Re: [PATCH v3 3/5] PCI: qcom: Add CGC disable workaround for Nord
 PCIe
Message-ID: <lkof3a5pamxoveplcw4xffn4dmtgxpqm452ispdydij2g2ouub@4qetlwkngzem>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
 <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
 <smgyk5ray7laj2ltwnmx3r7cfiouj4hyn7tyfmx7rpsrhu7kin@p5pr7wdoprjn>
 <678b6d96-6a61-4689-afc0-363b7a6f209c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <678b6d96-6a61-4689-afc0-363b7a6f209c@oss.qualcomm.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMDk6Mjk6MTBBTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA5LzEwLzI2IDk6MjAgQU0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+IE9uIFdlZCwgU2VwIDA5LCAyMDI2IGF0IDA1OjE4OjE4UE0gKzA1MzAsIEtyaXNobmEgQ2hh
aXRhbnlhIENodW5kcnUgd3JvdGU6Cj4gPj4gTm9yZCByZXF1aXJlcyBhIHdvcmthcm91bmQgdG8g
YWRkcmVzcyBhIHRpbWluZyBjb252ZXJnZW5jZSBpc3N1ZSBpbiB0aGUKPiA+PiBQQ0llIHBvd2Vy
IGRvbWFpbi4gVG8gYXZvaWQgdGhlIGlzc3VlLCBzZXQgdGhlIENPUkVfQ0xLX0NHQ19ESVMgYW5k
Cj4gPj4gQVVYX1BXUl9ERVQgYml0cyBpbiBQQVJGX1NZU19DVFJMIGFmdGVyIGNvbnRyb2xsZXIg
aW5pdGlhbGl6YXRpb24uCj4gCj4gWy4uLl0KPiAKPiA+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBx
Y29tX3BjaWVfY2ZnIGNmZ19ub3JkID0gewo+ID4gCj4gPiBDYW4geW91IHVzZSBEV0MgSVAgdmVy
c2lvbiBpbnN0ZWFkIG9mIFNvQyBuYW1lPwo+IAo+IEknZCBzYXkgaXQncyBmaW5lIGdpdmVuIG90
aGVyIGltcGxlbWVudGF0aW9ucyBvZiB0aGUgc2FtZSBEV0MgSVAgbWF5IG5vdAo+IGhhdmUgdGhp
cyBjbG9jayBnYXRpbmcgcXVpcmsKPiAKCkhtbSwgZmFpciBwb2ludC4KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
