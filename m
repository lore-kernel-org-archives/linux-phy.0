Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434FFC5AD5A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 10:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sBNIeDo+065WVEWcxwaZvvisayH644Wv1XVwuJ1Cq48=; b=tmkMhyF1phIQsj
	b0LKci29GiyUpvLmFt7CZls7f8wf+/OwoW+h3QiPC6Zk2eBjPP1YVMQ2vv1EzhGjdNKYqbk9bfOvb
	LhB1+KIKrwEHYv8bdshMKpWa4/yHav+bpJ3dNkYoqRpD3+zoJlocV29ZpUHItT/goClyIkFsTyVvH
	c1Gt5MLo0ZpxOXWj5d7cEBjxL7eDm87ne9jaGodRd1qalchcvDOHacouWhkTN+0PytzNLmRfE3qHI
	b5lLIhZ2Lz2JfO0oLndOHSZej7jSrSMW3QInIvkwEUmr8bMhZxei6iSXmmehYwS9In8aKkngAUpNE
	0tjowg8QE0oDZaI8NLNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5zs-0000000FrVz-2CGP;
	Wed, 12 Aug 2026 10:15:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5zm-0000000FrTA-0o2H;
	Wed, 12 Aug 2026 10:15:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AE03F406FC;
	Wed, 12 Aug 2026 10:15:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B95B31F000E9;
	Wed, 12 Aug 2026 10:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786529737;
	bh=km+FWImsIUFl8aBPViX6Zfp+UQcG2kTKxjWPuJ893Cc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jBANmAl+tkrKwU6nUQz+XEl8WMrZu06odcl5Ygsah2atea2o3pSK5M0u2+Cb5dtxf
	 CszY8HrUw5NMtAls7C3C22W0YPyC1CA0nJKdZUcpz7FAA5jPVo/Q0m+DtWULMhObmk
	 l+U3I5N2ktZz5sC97a6ZDW5tkJ4nC1cvwezLr8g8hsFUxrhmlZiDmiD/TuiPL6gETq
	 29lyz01++9kQ8c8J0lKgi5dg3FD9nUdJp1fGXHTswa5W49MzHFx1LoMu8dAjoNQeyU
	 rf7AgbttoHEku/UruTDEAVbWBJDu1EDPe2V7WWiqzqV5orD6YUJnnC/hIm0+i5Dhnb
	 OSUpU2Op6AKIw==
Date: Wed, 12 Aug 2026 12:15:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Vasut <marex@nabladev.com>
Cc: linux-usb@vger.kernel.org, Pankaj Dev <pankaj.dev@st.com>, 
	=?utf-8?Q?Cl=C3=A9ment?= Le Goffic <clement.legoffic@foss.st.com>, Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
	Rahul Kumar <rahul.kumar05@st.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Christian Bruel <christian.bruel@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Rosen Penev <rosenp@gmail.com>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
	kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/8] dt-bindings: phy: Document ST STM32MP25 USB2-FEMTO
 PHY
Message-ID: <20260812-silky-omniscient-dalmatian-b268cb@quoll>
References: <20260812010157.1772849-1-marex@nabladev.com>
 <20260812010157.1772849-2-marex@nabladev.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812010157.1772849-2-marex@nabladev.com>
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

T24gV2VkLCBBdWcgMTIsIDIwMjYgYXQgMDI6NTU6NDFBTSArMDIwMCwgTWFyZWsgVmFzdXQgd3Jv
dGU6Cj4gRnJvbTogUGFua2FqIERldiA8cGFua2FqLmRldkBzdC5jb20+Cj4gCj4gRG9jdW1lbnQg
VVNCMiBQSFkgZm9yIFNUTTMyTVAyNSBVU0IyIGNvbnRyb2xsZXJzLCB3aGljaCBpbmNsdWRlcyB0
aGUKPiBVU0IyLjAgaG9zdC1vbmx5IGNvbnRyb2xsZXIgYW5kIFVTQiAyLjAgcGFydCBvZiB0aGUg
RFdDMyBjb250cm9sbGVyLgo+IFR3byBzdWNoIFBIWXMgaW4gdG90YWwgYXJlIHByZXNlbnQgaW4g
U1RNMzJNUDI1IFNvQywgdGhleSBib3RoIGFyZQo+IHNsaWdodGx5IGRpZmZlcmVudCwgdGhlcmVm
b3JlIHRoZXkgdXNlIGRpZmZlcmVudCBjb21wYXRpYmxlIHN0cmluZwoKV2hhdCBpcyBzbGlnaHRs
eSBkaWZmZXJlbnQ/IFRoaXMgc2hvdWxkIGJlIGVpdGhlciBoZXJlLCBvciBiZXR0ZXIsIGluCiJk
ZXNjcmlwdGlvbiIgcGFydC4KCj4gdG8gZGlzY2VybiB0aGVtLgo+IAo+IFNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IExlIEdvZmZpYyA8Y2xlbWVudC5sZWdvZmZpY0Bmb3NzLnN0LmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBmb3NzLnN0LmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBWYXN1dCA8bWFyZXhAbmFibGFkZXYuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IFJhaHVsIEt1bWFyIDxyYWh1bC5rdW1hcjA1QHN0LmNvbT4KCkluY29tcGxldGUvaW5jb3JyZWN0
IERDTyBjaGFpbi4gV2hvIHNlbmRzIGl0PyBSYWh1bD8KCgo+IC0tLQo+IENjOiBBbGV4YW5kcmUg
VG9yZ3VlIDxhbGV4YW5kcmUudG9yZ3VlQGZvc3Muc3QuY29tPgo+IENjOiBDaHJpc3RpYW4gQnJ1
ZWwgPGNocmlzdGlhbi5icnVlbEBmb3NzLnN0LmNvbT4KPiBDYzogQ29ub3IgRG9vbGV5IDxjb25v
citkdEBrZXJuZWwub3JnPgo+IENjOiBGYWJyaWNlIEdhc25pZXIgPGZhYnJpY2UuZ2FzbmllckBm
b3NzLnN0LmNvbT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0
aW9uLm9yZz4KPiBDYzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6aytkdEBrZXJuZWwub3JnPgo+
IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4gQ2M6IE5l
aWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+IENjOiBQYW5rYWogRGV2
IDxwYW5rYWouZGV2QHN0LmNvbT4KPiBDYzogUmFodWwgS3VtYXIgPHJhaHVsLmt1bWFyMDVAc3Qu
Y29tPgo+IENjOiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+IENjOiBSb3NlbiBQZW5l
diA8cm9zZW5wQGdtYWlsLmNvbT4KPiBDYzogVGhpbmggTmd1eWVuIDxUaGluaC5OZ3V5ZW5Ac3lu
b3BzeXMuY29tPgo+IENjOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+IENjOiBkZXZp
Y2V0cmVlQHZnZXIua2VybmVsLm9yZwo+IENjOiBrZXJuZWxAZGgtZWxlY3Ryb25pY3MuY29tCj4g
Q2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
Q2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPiBDYzogbGludXgt
dXNiQHZnZXIua2VybmVsLm9yZwo+IC0tLQo+ICAuLi4vYmluZGluZ3MvcGh5L3N0LHN0bTMyLXVz
YjJwaHkueWFtbCAgICAgICAgfCA3MiArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCA3MiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0bTMyLXVzYjJwaHkueWFtbAo+IAo+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0bTMyLXVz
YjJwaHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3Qsc3Rt
MzItdXNiMnBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
MDAwLi5jYTlmYzNiODczODNjCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RtMzItdXNiMnBoeS55YW1sCj4gQEAgLTAsMCAr
MSw3MiBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJT
RC0yLUNsYXVzZSkKPiArJVlBTUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL3BoeS9zdCxzdG0zMi11c2IycGh5LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFNU
TWljcm9lbGVjdHJvbmljcyBTVE0zMiBNUFUgSGlnaC1TcGVlZCBVU0IgUEhZCj4gKwo+ICtkZXNj
cmlwdGlvbjoKPiArICBVU0IyIFBIWSBibG9jayBpbiBTVE0zMiBpcyBhdHRhY2hlZCB0byBVU0Ig
Mi4wIEhvc3QgY29udHJvbGxlciBhbmQKPiArICBVU0IgMi4wIHNpZGUgb2YgRFdDMyBEUkQgY29u
dHJvbGxlciwgYW5kIHByb3ZpZGVzIHRoZSBVU0IgTFMvRlMvSFMKPiArICBjb25uZWN0aXZpdHku
Cj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEZhYnJpY2UgR2FzbmllciA8ZmFicmljZS5nYXNu
aWVyQGZvc3Muc3QuY29tPgo+ICsgIC0gTWFyZWsgVmFzdXQgPG1hcmV4QG5hYmxhZGV2LmNvbT4K
PiArICAtIFBhbmthaiBEZXYgPHBhbmthai5kZXZAc3QuY29tPgo+ICsKPiArcHJvcGVydGllczoK
PiArICBjb21wYXRpYmxlOgo+ICsgICAgZW51bToKPiArICAgICAgLSBzdCxzdG0zMm1wMjUtdXNi
MnBoeTEKPiArICAgICAgLSBzdCxzdG0zMm1wMjUtdXNiMnBoeTIKPiArCj4gKyAgIiNwaHktY2Vs
bHMiOgo+ICsgICAgY29uc3Q6IDAKPiArCj4gKyAgY2xvY2tzOgo+ICsgICAgbWF4SXRlbXM6IDEK
PiArCj4gKyAgcmVzZXRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgdmRkMzMtc3VwcGx5
Ogo+ICsgICAgZGVzY3JpcHRpb246IFBoYW5kbGUgdG8gcmVndWxhdG9yIHByb3ZpZGluZyAzVjMg
cG93ZXIgc3VwcGx5IHRvIHRoZSBVU0IyIEhTIFBIWQo+ICsKPiArICBzdCxzeXNjZmc6Cj4gKyAg
ICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlLWFycmF5Cj4g
KyAgICBkZXNjcmlwdGlvbjogUGhhbmRsZSB0byBzeXN0ZW0gY29uZmlndXJhdGlvbiBjb250cm9s
bGVyLgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gaXRlbXM6Cj4gKyAgICAgICAgICAtIGRlc2Ny
aXB0aW9uOiBwaGFuZGxlIHRvIHN5c2NmZwo+ICsgICAgICAgICAgLSBkZXNjcmlwdGlvbjogVVNC
MlBIWSBjb250cm9sIG9mZnNldCB3aXRoaW4gc3lzY2ZnCj4gKwo+ICsgICIjY2xvY2stY2VsbHMi
Ogo+ICsgICAgY29uc3Q6IDAKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsg
IC0gIiNjbG9jay1jZWxscyIKPiArICAtICIjcGh5LWNlbGxzIgo+ICsgIC0gY2xvY2tzCj4gKyAg
LSByZXNldHMKPiArICAtIHN0LHN5c2NmZwo+ICsgIC0gdmRkMzMtc3VwcGx5Cj4gKwo+ICt1bmV2
YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCgphZGRpdGlvbmFsUHJvcGVydGllcy4KCkJlc3QgcmVn
YXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
