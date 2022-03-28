Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC8A0C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 18:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxcfeKlwiLeCQsN+fRTB3ssrpzddyyfr48iTvmdkxeQ=; b=cqUDjzajgpMbDg
	XfSIZMxQ/XNkkzOnBzOdszygwYJxsBKSOhCjmun7g+7MgUgEkkSEfOjnKswZevdxaKQQ01DIsLo63
	4LBBilJmSK45uLzCs2bU5ykBTdcl3Jizsik/B2ptSg0Y2aEsC00xlAieXC6M9ktOwZ2hcUGXBJrHr
	DSzadADE9WgeUQrs7IdoF+SUHNM3XSl2SVuH8OV1RJ9iF/dmkIqE/8ShIlUn8fFB+lRjs1QHAR4Xc
	Ucf2u86JMGoH0T6yjfVVpxLSOVxnqaPP8FL26euH2iixRatOpSsubMnTxiLY+VVc+gK2gX0RertMQ
	0OKp9sQTYBH4b42r9x8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYuJf-009oTP-8A; Mon, 28 Mar 2022 18:42:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYuJc-009oSA-Nl
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 18:42:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E36C76121C;
 Mon, 28 Mar 2022 18:42:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40793C004DD;
 Mon, 28 Mar 2022 18:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648492923;
 bh=dZqPQ2evpGDvdU03aILrgKFbB/jCtqkJy9n0EhmsaPE=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=sBQIKt34fkvZofByJo6dJc4pu/Ex63J5X107Tjkda3aJ7DhpBIJrBZWYnXUj/9oke
 iP1ZMqF1fV1ET1S0T6ou/47yj8OgsrbUiiGq+1V8W7+ZGiIPRkZsHel2wWvukr+fAU
 oxNd1i0c9vHEPe+rpHFcZKOPTDImrOOCgcw8G6C3okTqFlqtojqX7r7DZijjzf4udK
 GPdoCoH60mo6AbV2DjKkJdbli5RaQknMIOBGTyj4SZBaBDC6VAXH/Udpc9x1AJiYNp
 yE52st+gUXGeU52b8HYy4bnNN771x4JQ+1kM190TgQPpP8kCQGnwyAd0jmXoHsUlWS
 DoGBOQQ4uHtSA==
Message-ID: <047cec5c-b9e4-5480-be96-01bae8610078@kernel.org>
Date: Mon, 28 Mar 2022 20:41:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/5] dt-bindings: pci: Add ARTPEC-8 PCIe controller
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>
Cc: "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
References: <CGME20220328014857epcms2p7d8cfd98d60f059916ef35ccc385bc004@epcms2p7>
 <20220328014857epcms2p7d8cfd98d60f059916ef35ccc385bc004@epcms2p7>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220328014857epcms2p7d8cfd98d60f059916ef35ccc385bc004@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_114208_859881_D6243EEE 
X-CRM114-Status: GOOD (  18.01  )
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

T24gMjgvMDMvMjAyMiAwMzo0OCwg7J207JmV7ISdIHdyb3RlOgo+IEFkZCBkZXNjcmlwdGlvbiB0
byBzdXBwb3J0IEF4aXMsIEFSVFBFQy04IFNvQy4KPiBBUlRQRUMtOCBpcyB0aGUgU29DIHBsYXRm
b3JtIG9mIEF4aXMgQ29tbXVuaWNhdGlvbnMKPiBhbmQgUENJZSBjb250cm9sbGVyIGlzIGRlc2ln
bmVkIGJhc2VkIG9uIERlc2lnbi1XYXJlIFBDSWUgY29udHJvbGxlci4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBXYW5nc2VvayBMZWUgPHdhbmdzZW9rLmxlZUBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgLi4u
L2JpbmRpbmdzL3BjaS9heGlzLGFydHBlYzgtcGNpZS1lcC55YW1sICAgICAgICAgfCAxMTAgKysr
KysrKysrKysrKysrKysrKwo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvYXhpcyxhcnRw
ZWM4LXBjaWUueWFtbCB8IDExNyArKysrKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFu
Z2VkLCAyMjcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9heGlzLGFydHBlYzgtcGNpZS1lcC55YW1sCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2F4
aXMsYXJ0cGVjOC1wY2llLnlhbWwKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BjaS9heGlzLGFydHBlYzgtcGNpZS1lcC55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9heGlzLGFydHBlYzgtcGNpZS1lcC55YW1sCj4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwLi5kYzY2OTY1Cj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvYXhpcyxh
cnRwZWM4LXBjaWUtZXAueWFtbAo+IEBAIC0wLDAgKzEsMTEwIEBACj4gKyMgU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIK
PiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGNpL2F4aXMsYXJ0
cGVjOC1wY2llLWVwLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IEFSVFBFQy04IFNvQyBQQ0llIENvbnRy
b2xsZXIgRGV2aWNlIFRyZWUgQmluZGluZ3MKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gSmVz
cGVyIE5pbHNzb24gPGplc3Blci5uaWxzc29uQGF4aXMuY29tPgo+ICsKPiArZGVzY3JpcHRpb246
IHwrCj4gKyAgVGhpcyBQQ0llIGVuZC1wb2ludCBjb250cm9sbGVyIGlzIGJhc2VkIG9uIHRoZSBT
eW5vcHN5cyBEZXNpZ25XYXJlIFBDSWUgSVAKPiArICBhbmQgdGh1cyBpbmhlcml0cyBhbGwgdGhl
IGNvbW1vbiBwcm9wZXJ0aWVzIGRlZmluZWQgaW4gc25wcyxkdy1wY2llLWVwLnlhbWwuCj4gKwo+
ICthbGxPZjoKPiArICAtICRyZWY6IC9zY2hlbWFzL3BjaS9zbnBzLGR3LXBjaWUtZXAueWFtbCMK
PiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiBheGlzLGFy
dHBlYzgtcGNpZS1lcAo+ICsKPiArICByZWc6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNj
cmlwdGlvbjogRGF0YSBCdXMgSW50ZXJmYWNlIChEQkkpIHJlZ2lzdGVycy4KPiArICAgICAgLSBk
ZXNjcmlwdGlvbjogRGF0YSBCdXMgSW50ZXJmYWNlIChEQkkyKSByZWdpc3RlcnMuCj4gKyAgICAg
IC0gZGVzY3JpcHRpb246IFBDSWUgYWRkcmVzcyBzcGFjZSByZWdpb24uCj4gKwo+ICsgIHJlZy1u
YW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBkYmkKPiArICAgICAgLSBjb25z
dDogZGJpMgo+ICsgICAgICAtIGNvbnN0OiBhZGRyX3NwYWNlCj4gKwo+ICsgIGludGVycnVwdHM6
Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBpdGVtczoKPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogUElQRSBjbG9jaywgdXNlZCBieSB0aGUgY29udHJvbGxlciB0byBj
bG9jayB0aGUgUElQRQo+ICsgICAgICAtIGRlc2NyaXB0aW9uOiBQQ0llIGRiaSBjbG9jaywgdW5n
YXRlZCB2ZXJzaW9uCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IFBDSWUgbWFzdGVyIGNsb2NrLCB1
bmdhdGVkIHZlcnNpb24KPiArICAgICAgLSBkZXNjcmlwdGlvbjogUENJZSBzbGF2ZSBjbG9jaywg
dW5nYXRlZCB2ZXJzaW9uCj4gKwo+ICsgIGNsb2NrLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAg
ICAgIC0gY29uc3Q6IHBpcGVfY2xrCj4gKyAgICAgIC0gY29uc3Q6IGRiaV9jbGsKPiArICAgICAg
LSBjb25zdDogbXN0cl9jbGsKPiArICAgICAgLSBjb25zdDogc2x2X2Nsawo+ICsKPiArICBwaHlz
Ogo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgbnVtLWxhbmVzOgo+ICsgICAgY29uc3Q6IDIK
PiArCj4gK3JlcXVpcmVkOgoKY29tcGF0aWJsZQoKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2st
bmFtZXMKPiArICAtIHJlZwo+ICsgIC0gcmVnLW5hbWVzCj4gKyAgLSBudW0tbGFuZXMKPiArICAt
IGJ1cy1yYW5nZQo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gaW50ZXJydXB0LW5hbWVzCj4gKyAg
LSBzYW1zdW5nLGZzeXMtc3lzcmVnCj4gKyAgLSBzYW1zdW5nLHN5c2Nvbi1waGFuZGxlCj4gKyAg
LSBzYW1zdW5nLHN5c2Nvbi1idXMtcy1mc3lzCj4gKyAgLSBzYW1zdW5nLHN5c2Nvbi1idXMtcC1m
c3lzCgpXaHkgYXJlIHRoZXkgaGVyZSBidXQgbm90IGluIHByb3BlcnRpZXM/IE90aGVyIHByb3Bl
cnRpZXMgYXJlIGFsc28KcHJlc2VudCBoZXJlIGJ1dCBub3QgaW4gcHJvcGVydGllcy4KCj4gKyAg
LSBwaHlzCj4gKyAgLSBwaHktbmFtZXMKPiArCj4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFs
c2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiArCj4gKyAgICBhcnRlYzggewo+ICsg
ICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDI+
Owo+ICsgICAgICAgIHBjaWVfZXA6IHBjaWUtZXBAMTcyMDAwMDAgewo+ICsgICAgICAgICAgICBj
b21wYXRpYmxlID0gImF4aXMsYXJ0cGVjOC1wY2llLWVwIjsKPiArICAgICAgICAgICAgY2xvY2tz
ID0gPCZjbG9ja19jbXVfZnN5cyAzOT4sCj4gKyAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xv
Y2tfY211X2ZzeXMgMzg+LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICA8JmNsb2NrX2NtdV9m
c3lzIDM3PiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgPCZjbG9ja19jbXVfZnN5cyAzNj47
CgpBbGlnbiB0aGUgaW5kZW50YXRpb24gb2YgY29udGludWVkIGxpbmVzL2VudHJpZXMuCgo+ICsg
ICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJwaXBlX2NsayIsICJkYmlfY2xrIiwgIm1zdHJfY2xr
IiwgInNsdl9jbGsiOwo+ICsgICAgICAgICAgICByZWcgPSA8MHgwIDB4MTcyMDAwMDAgMHgwIDB4
MTAwMD4sCgpQdXQgcmVnIGFmdGVyIGNvbXBhdGlibGUuCgo+ICsgICAgICAgICAgICAgICAgICAg
IDwweDAgMHgxNzIwMTAwMCAweDAgMHgxMDAwPiwKPiArICAgICAgICAgICAgICAgICAgICA8MHgy
IDB4MDAwMDAwMDAgMHg2IDB4MDAwMDAwMDA+Owo+ICsgICAgICAgICAgICByZWctbmFtZXMgPSAi
ZGJpIiwgImRiaTIiLCAiYWRkcl9zcGFjZSI7Cj4gKyAgICAgICAgICAgIG51bS1sYW5lcyA9IDwy
PjsKPiArICAgICAgICAgICAgYnVzLXJhbmdlID0gPDB4MDAgMHhmZj47Cj4gKyAgICAgICAgICAg
IGludGVycnVwdHMgPSA8R0lDX1NQSSAxMTUgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKyAgICAg
ICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJpbnRyIjsKPiArICAgICAgICAgICAgI2ludGVycnVw
dC1jZWxscyA9IDwxPjsKPiArICAgICAgICAgICAgbnVtLWliLXdpbmRvd3MgPSA8MTY+Owo+ICsg
ICAgICAgICAgICBudW0tb2Itd2luZG93cyA9IDwxNj47CgpEaWQgeW91IHRlc3QgdGhlIGJpbmRp
bmdzIHdpdGggYG1ha2UgZHRfYmluZGluZ19jaGVja2A/CgpBbGwgY29tbWVudHMgYXBwbHkgYWxz
byB0byB5b3VyIHNlY29uZCBmaWxlLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
