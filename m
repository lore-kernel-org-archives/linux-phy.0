Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 861A1C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jan 2022 17:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K0yYtQFo2LB2XNr238FPfonjB9V8Ik41QD2yJV9GCk=; b=4rnmkWfsgdYIF6
	SY4tBtQEA2H3enenheN2yS7KzMuh3DQfRCNCB3tXlnXIIfDsihkvfnz6mVByIRg3zUn45e8DNGvDC
	VxKPofOE0QkEQzmRZBYjcAEb1Bry/HJDQmmm0CvwFSgaGrz8SFPvbTshZpCRWTQj9BHTZzKv6qOlD
	a+jb13aBIQy8tMypYXTbdlVhOys3DKC/0g4gvXOVZSf5ASpRu9ERGjB2J+vSRduiNyZQcJpSYOQUL
	i/g8SjVydGew53CRIH7jcD+1sDCCWHpcQXm1fTryUa5PRHiJuZinv2XHw0sOgyCBxXoX/xmQ4Ra+t
	S3Y6YubHfDDWxbuUJRQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7hQx-003FNV-LR; Wed, 12 Jan 2022 17:29:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7hQq-003FJU-Or
 for linux-phy@lists.infradead.org; Wed, 12 Jan 2022 17:29:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 44B5D615D9;
 Wed, 12 Jan 2022 17:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBF96C36AEA;
 Wed, 12 Jan 2022 17:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642008547;
 bh=WmoSnDqhinKjkewcpUgnfaaSxspJGZbTKcK3e1khB2s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=A+XZRwxhONR1uKqXI/kXd3jARiYRIchjvhJYEHkEPmNndBoLznSDZ9a1oxAOt23hO
 eiNe/F6cWhbWlL8bCV6AuVTd7ssunTf5FK0/DebMc1yb2QW+dML3RPhvN5OmQfl+56
 ngo2YOH44yavegkW0q9DOVbydiDSV6PVP1vXziYBUaIwFEAqz8wdg2KMmK01bRxP8X
 NNTsjuBIXPKIDWZ/YXsJwaGu1F9EwW8UaargoqI9CVzodeU01wkj9a0WPRf+SGBiLF
 PtqDuKin/DWEKaygGcyCbFigLP82jb3kPoA3Wm+PnbC0sq46i142Fp5MsKbMWLWMiE
 PX5FG7+iqYH2g==
Date: Wed, 12 Jan 2022 18:29:00 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>, Holger
 Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Russell King
 <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree 2/2] dt-bindings: phy: Add
 `tx-amplitude-microvolt` property binding
Message-ID: <20220112182900.7054c4d9@thinkpad>
In-Reply-To: <YbplENKCcjCUdwke@robh.at.kernel.org>
References: <20211214233432.22580-1-kabel@kernel.org>
 <20211214233432.22580-3-kabel@kernel.org>
 <YbplENKCcjCUdwke@robh.at.kernel.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220112_092908_922363_FDC843D6 
X-CRM114-Status: GOOD (  24.33  )
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

SGVsbG8gUm9iLAoKT24gV2VkLCAxNSBEZWMgMjAyMSAxNTo1ODo0MCAtMDYwMApSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPiB3cm90ZToKCj4gT24gV2VkLCBEZWMgMTUsIDIwMjEgYXQgMTI6
MzQ6MzJBTSArMDEwMCwgTWFyZWsgQmVow7puIHdyb3RlOgo+ID4gQ29tbW9uIFBIWXMgb2Z0ZW4g
aGF2ZSB0aGUgcG9zc2liaWxpdHkgdG8gc3BlY2lmeSBwZWFrLXRvLXBlYWsgdm9sdGFnZQo+ID4g
b24gdGhlIGRpZmZlcmVudGlhbCBwYWlyIC0gdGhlIGRlZmF1bHQgdm9sdGFnZSBzb21ldGltZXMg
bmVlZHMgdG8gYmUKPiA+IGNoYW5nZWQgZm9yIGEgcGFydGljdWxhciBib2FyZC4gIAo+IAo+IEkg
Y2FuIGVudmlzaW9uIG5lZWRpbmcgdGhpcywgYnV0IEkgY2FuJ3Qgc2F5IHRoYXQgSSd2ZSBzZWVu
IGN1c3RvbSAKPiBwcm9wZXJ0aWVzIGJlaW5nIHByb3Bvc2VkIGZvciB0aGlzIHB1cnBvc2UuCj4g
Cj4gPiAKPiA+IEFkZCBwcm9wZXJ0aWVzIGB0eC1hbXBsaXR1ZGUtbWljcm92b2x0YCBhbmQKPiA+
IGB0eC1hbXBsaXR1ZGUtbWljcm92b2x0LW5hbWVzYCBmb3IgdGhpcyBwdXJwb3NlLiBUaGUgc2Vj
b25kIHByb3BlcnR5IGlzCj4gPiBuZWVkZWQgdG8gc3BlY2lmeSAgCj4gCj4gSXMgdGhlIGFtcGxp
dHVkZSBwZWFrIHRvIHBlYWs/IFlvdSBqdXN0IHNhaWQgaXQgd2FzLCBidXQgcGVyaGFwcyBtYWtl
IAo+IHRoZSBwcm9wZXJ0eSBuYW1lIG1vcmUgY2xlYXJseSBkZWZpbmVkOiB0eC1wMnAtbWljcm92
b2x0CgpZZXMsIGl0IGlzIHBlYWsgdG8gcGVhay4KCj4gPiAKPiA+IEV4YW1wbGUgdXNhZ2Ugd2l0
aCBvbmx5IG9uZSB2b2x0YWdlIChpdCB3aWxsIGJlIHVzZWQgZm9yIGFsbCBzdXBwb3J0ZWQKPiA+
IFBIWSBtb2RlcywgdGhlIGB0eC1hbXBsaXR1ZGUtbWljcm92b2x0LW5hbWVzYCBwcm9wZXJ0eSBp
cyBub3QgbmVlZGVkIGluCj4gPiB0aGlzIGNhc2UpOgo+ID4gCj4gPiAgIHR4LWFtcGxpdHVkZS1t
aWNyb3ZvbHQgPSA8OTE1MDAwPjsKPiA+IAo+ID4gRXhhbXBsZSB1c2FnZSB3aXRoIHZvbHRhZ2Vz
IGZvciBtdWx0aXBsZSBtb2RlczoKPiA+IAo+ID4gICB0eC1hbXBsaXR1ZGUtbWljcm92b2x0ID0g
PDkxNTAwMD4sIDwxMTAwMDAwPiwgPDEyMDAwMDA+Owo+ID4gICB0eC1hbXBsaXR1ZGUtbWljcm92
b2x0LW5hbWVzID0gIjI1MDBiYXNlLXgiLCAidXNiIiwgInBjaWUiOyAgCj4gCj4gSSdtIG5vdCB3
aWxkIGFib3V0IHRoZSAtbmFtZXMsIGJ1dCBJIHRoaW5rIG91dHNpZGUgb2YgZXRoZXJuZXQgbW9z
dCAKPiBjYXNlcyB3aWxsIG9ubHkgYmUgMSBlbnRyeS4KPiAKPiBGb3IgYSBwaHkgcHJvdmlkZXIg
d2l0aCBtdWx0aXBsZSBwaHlzLCB3aGF0IGlmIGVhY2ggb25lIG5lZWRzIGEgCj4gZGlmZmVyZW50
IHZvbHRhZ2UgKGZvciB0aGUgc2FtZSBtb2RlKT8KCkZvciBzdWNoIGEgcHJvdmlkZXIgSSB0aGlu
ayB0aGUgYmVzdCB3YXkgd291bGQgYmUgdG8gaGF2ZSB0aGUgZGlmZmVyZW50ClBIWXMgZWFjaCBo
YXZlIGEgc3Vibm9kZToKICBwaHktcHJvdmlkZXIgewogICAgcGh5QDAgewogICAgICB0eC1wMnAt
bWljcm92b2x0ID0gLi4uOwogICAgfTsKICB9Cj4gCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1h
cmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9yZz4KPiA+IC0tLQo+ID4gCj4gPiBJIHdhbnRlZCB0
byBjb25zdHJhaW4gdGhlIHZhbHVlcyBhbGxvd2VkIGluIHRoZQo+ID4gYHR4LWFtcGxpdHVkZS1t
aWNyb3ZvbHQtbmFtZXNgIHByb3BlcnR5IHRvOgo+ID4gLSBldGhlcm5ldCBTZXJEZXMgbW9kZXMg
KHNnbWlpLCBxc2dtaWksIDEwZ2Jhc2UtciwgMjUwMGJhc2UteCwgLi4uKQo+ID4gLSBQQ0llIG1v
ZGVzIChwYXR0ZXJuOiBecGNpZVsxLTZdPyQpCj4gPiAtIFVTQiBtb2RlcyAocGF0dGVybjogXnVz
YigoLWhvc3R8LWRldmljZXwtb3RnKT8tKGxzfGZzfGhzfHNzfHNzXCt8NCkpPyQpCj4gPiAtIERp
c3BsYXlQb3J0IG1vZGVzIChwYXR0ZXJuOiBeZHAoLXJicnwtaGJyWzIzXT98LXVoYnItKDEwfDEz
LjV8MjApKT8kKQo+ID4gLSBDYW1lcmEgbW9kZXMgKG1pcGktZHBoeSwgbWlwaS1kcGh5LXVuaXYs
IG1pcGktZHBoeS12Mi41LXVuaXYpCj4gPiAtIFN0b3JhZ2UgbW9kZXMgKHNhdGEsIHVmcy1ocywg
dWZzLWhzLWEsIHVmcy1ocy1iKQo+ID4gCj4gPiBCdXQgd2FzIHVuYWJsZSB0by4gVGhlICctbmFt
ZXMnIHN1ZmZpeCBpbXBsaWVzIHN0cmluZy1hcnJheSB0eXBlLCBhbmQKPiA+IHN0cmluZy1hcnJh
eSB0eXBlIGRvZXMgbm90IGFsbG93IHRvIHNwZWNpZnkgYSB0eXBlIGZvciBhbGwgaXRlbXMgaW4g
YQo+ID4gc2ltcGxlIHdheSwgaS5lLjoKPiA+ICAgaXRlbXM6Cj4gPiAgICAgZW51bToKPiA+ICAg
ICAgIC0gc2dtaWkKPiA+ICAgICAgIC0gc2F0YQo+ID4gICAgICAgLSB1c2IKPiA+ICAgICAgIC4u
LiAgCj4gCj4gV29ya3MgaGVyZTogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9zYW1zdW5nL3BtdS55YW1sOjU2Cj4gCj4gVGhlIHJlcXVpcmVtZW50IGlzIHlvdSBuZWVkIHRv
IGNvbnN0cmFpbiB0aGUgc2l6ZSB3aXRoIG1heEl0ZW1zLiBJdCBjYW4gCj4gYmUgYSAnc2hvdWxk
IGJlIGVub3VnaCBmb3IgYW55b25lJyB2YWx1ZS4KClRoeC4KCk1hcmVrCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
