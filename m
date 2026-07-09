Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F59AC44501
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 08:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnzOxd2X67zbCD6RL2TZlWfTN5cHjtP3Kv3gO9cEA64=; b=4REadzN/my1B85
	LC+Rn0jaSdhItqXwDZDnhUj1PWxl+ZBECIl3itOliFY1OePZCqT11Q/InK12lPhp9/pIdtnSH1qUp
	FpoqdHPQ3Ttv2D7fZubaF6Wm/cSBnE6pD207vhDlMSRRVEnrSnsyUsJDrXLHOWfj2J9V+ChxmedPz
	jw3GlerQsOMihIN/EfrjZtdWupcZ4tiTAz7omd06s5JJ/Xo96w/dDAgC6yDzUmAxTNnHgkIffvm91
	nE9Kb9ViN5b0/nus1CXH99hDLeKIzlGUURHdeWJe2/JS/CYhcobja0q1qBETq8MEp1NtI7PTTsyNr
	SMtEGw8FUwtg5D6ee05g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkWn-00000001eOy-3cji;
	Thu, 09 Jul 2026 08:54:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkSU-00000001ZLy-3taz
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 08:50:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4B1216001A;
	Thu,  9 Jul 2026 08:50:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 824831F00A3A;
	Thu,  9 Jul 2026 08:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783587014;
	bh=SnB7NBJvkB6Lwc+UsNdNTbksNkeyE6wuDODerJjvkB8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P6x4YwKZMxKAWiY+f0SJsAaXwr4FB7+MfztDg3QWyIjSiNETYoCl/h5nwT/xuBji8
	 XftpEBv5E7g/94mnq2+gCoOjbH7stzQgt47fioJcJmiz8ideuapSW2X6yU6Jhb9QGc
	 BDKf+qU+rJUKssoeNxqzyWU7QHd33ushM5KgxIU16iCdVvv9qoCDpf1sxKcQBf2HA3
	 4XnUr/5SHcX+0koLt4c4Iz+DqwmYliegW4/71ryd/G0J/MG+ewQl0CnD0EuTlwE0fv
	 rDpmaO2WN8Jd598pclXB9rKdoIMVVlzjQ8nLV9S3giqqKBf/5iQTpyACYNlXkci88f
	 QacZ+usvHCAmQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/9] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G3L PHY bindings
To: Biju <biju.das.au@gmail.com>
Cc: vkoul@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260709083108.108370-6-biju.das.jz@bp.renesas.com>
References: <20260709083108.108370-1-biju.das.jz@bp.renesas.com>
 <20260709083108.108370-6-biju.das.jz@bp.renesas.com>
Date: Thu, 09 Jul 2026 08:50:13 +0000
Message-Id: <20260709085013.824831F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gTWlzc2luZyByZWxhdGVk
IGRldmljZSB0cmVlIGJpbmRpbmcgdXBkYXRlIGZvciB0aGUgUlovRzNMIFVTQkhTIChPVEcpIGNv
bnRyb2xsZXIuCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggdjQgNS85XSBkdC1iaW5kaW5nczog
cGh5OiByZW5lc2FzLHVzYjItcGh5OiBEb2N1bWVudCBSWi9HM0wgUEhZIGJpbmRpbmdzIC0tLQpj
b21taXQgYzRkMDViOWEyMTI4MjY0Y2FlZDdlODA4OTNhM2U0Y2I3Mjk3YjMyZgpBdXRob3I6IEJp
anUgRGFzIDxiaWp1LmRhcy5qekBicC5yZW5lc2FzLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6IHJl
bmVzYXMsdXNiMi1waHk6IERvY3VtZW50IFJaL0czTCBQSFkgYmluZGluZ3MKClRoaXMgcGF0Y2gg
YWRkcyBkZXZpY2UgdHJlZSBiaW5kaW5nIHN1cHBvcnQgZm9yIHRoZSBSWi9HM0wgKHI5YTA4ZzA0
NikgVVNCMgpQSFkuIFRoZSBjb21taXQgbWVzc2FnZSBub3RlcyB0aGUgUlovRzNMIGlzIGFsbW9z
dCBpZGVudGljYWwgdG8gdGhlIFJaL0czUwpVU0IgUEhZLCBidXQgd2l0aCAyIE9URyBibG9ja3Mg
aW5zdGVhZCBvZiAxLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9yZW5lc2FzLHVzYjItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3JlbmVzYXMsdXNiMi1waHkueWFtbAo+IGluZGV4IDk3NDBlNWIzMzVm
OTMuLmQ2YjlkMDhjZWVjNmQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9yZW5lc2FzLHVzYjItcGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JlbmVzYXMsdXNiMi1waHkueWFtbAo+IEBAIC0xNiw2
ICsxNiw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAg
ICAgLSByZW5lc2FzLHVzYjItcGh5LXI4YTc3NDcwICAjIFJaL0cxQwo+ICAgICAgICAgICAgICAg
IC0gcmVuZXNhcyx1c2IyLXBoeS1yOWEwOGcwNDUgIyBSWi9HM1MKPiArICAgICAgICAgICAgICAt
IHJlbmVzYXMsdXNiMi1waHktcjlhMDhnMDQ2ICMgUlovRzNMCgpbU2V2ZXJpdHk6IExvd10KRG9l
cyBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3JlbmVzYXMsdXNiaHMueWFt
bCBhbHNvIG5lZWQgdG8gYmUKdXBkYXRlZCB0byBpbmNsdWRlIHRoZSAicmVuZXNhcyx1c2Jocy1y
OWEwOGcwNDYiIGNvbXBhdGlibGUgc3RyaW5nIGZvciB0aGUKUlovRzNMIE9URyBibG9ja3MgbWVu
dGlvbmVkIGluIHRoZSBjb21taXQgbWVzc2FnZT8KCkN1cnJlbnRseSwgcmVuZXNhcyx1c2Jocy55
YW1sIGVudW1lcmF0ZXMgcmVsYXRlZCBTb0NzIGxpa2UgUlovRzNTCihyZW5lc2FzLHVzYmhzLXI5
YTA4ZzA0NSkgdW5kZXIgdGhlIHJlbmVzYXMscnpnMmwtdXNiaHMgZmFsbGJhY2ssIGJ1dCBpcwpt
aXNzaW5nIFJaL0czTC4gVGhpcyBtaWdodCBjYXVzZSBkZXZpY2UgdHJlZSBub2RlcyBmb3IgdGhl
c2UgT1RHIGJsb2NrcyB0bwpmYWlsIHNjaGVtYSB2YWxpZGF0aW9uLgoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwOTA4MzEwOC4x
MDgzNzAtMS1iaWp1LmRhcy5qekBicC5yZW5lc2FzLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
