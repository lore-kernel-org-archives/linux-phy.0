Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33FFCEB64DD
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jul 2023 11:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Wa0pQH9bjV+EFFZnckIZk3Iy+KSSa7uI4sAcmF+iyo=; b=vNGxnmiiYnkuA3
	yJdf8B65yILJs88b5bSUFR/HRTOHFhVrN09T09X/2lwKamYA58eMxcgrsnzKVF+h+qWJkDjtm2Pci
	xG/n5jXlZKw1AXdzIY/pF9ue2fEyWCBZyCzmx1nFgWepMh2duV6xjGxdJPxR+DiGy8mgiSi2GWj5C
	jgFVh3pzdDX2n/44KGqDE4Kxduts8imMGjvzgjMYy+Gb5RDAHb54NMmIqbU6h9lEE5coehLxJHQeZ
	r/Ch6JJSDCIjEQ02wcSoQMKra3+xrcP69wi934M4kmvPmrT+hDbmU3ZYfOukusPPxPrwhaAQf6lyy
	hnCs5rb+/qYLWLMD2qkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHMy7-001SV7-2l;
	Thu, 06 Jul 2023 11:16:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHMy4-001SUI-1i
	for linux-phy@lists.infradead.org;
	Thu, 06 Jul 2023 11:16:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E8CF961886;
	Thu,  6 Jul 2023 11:16:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2FB5C433C7;
	Thu,  6 Jul 2023 11:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688642171;
	bh=EtLxxaDrtWDWMjtWpF0JDkHpy6Um3KDkSIFd31LcdXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qTkbQ5Njh0DaCBrrXUpooQS8SC9FQDlfJxuXnMuxd5cqSAgydbnIvHWW6sIQaquuS
	 zeFfDDUhIJPkA+oOAnaP6qTJ8HQreaSaWRryZOwCf9OPrtjGrerqRRiZvIUXtxoprp
	 7OtL0YDCmFr8QNiUZSdTzkNUafHgLlkA9y7Of1xNSHhWmV9jkzru1RCyEvGVKH7Y/h
	 /4tolyVGqrMzHw30lYLD5W0hvzFI/QoWxog9ICIpH7U5CITykbfxd3BrjQwj1Kl7fc
	 z88GJMkwcQHJJKBfpIbvEBEQtLP0ssQyGpERWKpwXorJ8kwK0lOHJDlFQqxSkqdZKM
	 eEj6d5u+fb0+A==
Date: Thu, 6 Jul 2023 16:45:53 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 5/6] arm64: dts: qcom: sa8775p: Add pcie0 and pcie1
 nodes
Message-ID: <20230706111553.GB4808@thinkpad>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
 <1688545032-17748-6-git-send-email-quic_msarkar@quicinc.com>
 <e31564e1-31cf-2cda-df6f-6210e6a1c1fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e31564e1-31cf-2cda-df6f-6210e6a1c1fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_041612_624462_5621D6D2 
X-CRM114-Status: GOOD (  12.66  )
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

T24gVGh1LCBKdWwgMDYsIDIwMjMgYXQgMTI6MDE6MzdQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA1LjA3LjIwMjMgMTA6MTcsIE1yaW5tYXkgU2Fya2FyIHdyb3RlOgo+ID4gQWRk
IHBjaWUgZHRzaSBub2RlcyBmb3IgdHdvIGNvbnRyb2xsZXJzIGZvdW5kIG9uIHNhODc3NXAgcGxh
dGZvcm0uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1yaW5tYXkgU2Fya2FyIDxxdWljX21zYXJr
YXJAcXVpY2luYy5jb20+Cj4gPiAtLS1bLi4uXQo+IAo+ID4gKwlwY2llMV9waHk6IHBoeUAxYzE0
MDAwIHsKPiA+ICsJCWNvbXBhdGlibGUgPSAicWNvbSxzYTg3NzVwLXFtcC1nZW40eDQtcGNpZS1w
aHkiOwo+ID4gKwkJcmVnID0gPDB4MCAweDFjMTQwMDAgMHgwIDB4NDAwMD47Cj4gPiArCj4gPiAr
CQljbG9ja3MgPSA8JmdjYyBHQ0NfUENJRV8xX0FVWF9DTEs+LAo+ID4gKwkJCSA8JmdjYyBHQ0Nf
UENJRV8xX0NGR19BSEJfQ0xLPiwKPiA+ICsJCQkgPCZnY2MgR0NDX1BDSUVfQ0xLUkVGX0VOPiwK
PiA+ICsJCQkgPCZnY2MgR0NDX1BDSUVfMV9QSFlfUkNITkdfQ0xLPiwKPiA+ICsJCQkgPCZnY2Mg
R0NDX1BDSUVfMV9QSFlfQVVYX0NMSz4sCj4gPiArCQkJIDwmZ2NjIEdDQ19QQ0lFXzFfUElQRV9D
TEs+LAo+ID4gKwkJCSA8JmdjYyBHQ0NfUENJRV8xX1BJUEVESVYyX0NMSz47Cj4gPiArCj4gPiAr
CQljbG9jay1uYW1lcyA9ICJhdXgiLCAiY2ZnX2FoYiIsICJyZWYiLCAicmNobmciLCAicGh5X2F1
eCIsCj4gPiArCQkJCQkJInBpcGUiLCAicGlwZWRpdjIiOwo+ID4gKwo+ID4gKwkJYXNzaWduZWQt
Y2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfMV9QSFlfUkNITkdfQ0xLPjsKPiA+ICsJCWFzc2lnbmVk
LWNsb2NrLXJhdGVzID0gPDEwMDAwMDAwMD47Cj4gPiArCj4gPiArCQlwb3dlci1kb21haW5zID0g
PCZnY2MgUENJRV8xX0dEU0M+Owo+IFBsZWFzZSBjaGVjayBpZiBpdCdzIHRoZSBjb3JyZWN0IHBv
d2VyIGRvbWFpbi4gSSd2ZSBoZWFyZCB0aGF0IHRoZSBQQ0llIFBIWQo+IG1heSBiZSBob29rZWQg
dXAgdG8gc29tZXRoaW5nIGVsc2UgYnV0IGhhdmUgbm8gd2F5IG9mIGNvbmZpcm1pbmcgbXlzZWxm
Lgo+IAoKUmlnaHQsIEkgbWlzc2VkIGl0IGR1cmluZyBteSByZXZpZXcuIFBIWXMgYXJlIHBvd2Vy
ZWQgYnkgTVggZG9tYWluIG9uIGFsbCB0aGUKcGxhdGZvcm1zIEkgaGF2ZSBzZWVuIHNvIGZhciwg
c28gdGhpcyBzaG91bGQgYmUgY3Jvc3MgY2hlY2tlZC4KCkFuZCBzb21lb25lIHNob3VsZCBmaXgg
dGhlIGV4aXN0aW5nIGR0cy4KCi0gTWFuaQoKPiBLb25yYWQKPiA+ICsKPiA+ICsJCXJlc2V0cyA9
IDwmZ2NjIEdDQ19QQ0lFXzFfUEhZX0JDUj47Cj4gPiArCQlyZXNldC1uYW1lcyA9ICJwaHkiOwo+
ID4gKwo+ID4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ID4gKwkJY2xvY2stb3V0cHV0LW5hbWVz
ID0gInBjaWVfMV9waXBlX2NsayI7Cj4gPiArCj4gPiArCQkjcGh5LWNlbGxzID0gPDA+Owo+ID4g
Kwo+ID4gKwkJc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsKPiA+ICsJfTsKPiA+ICB9OwoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
