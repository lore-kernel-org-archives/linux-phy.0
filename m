Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0311C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg94Ty5kDeMKu+avGxvtpKCfXfN9QwsaoPT/HZLa0f4=; b=hgHhY3F59+dKxp
	Ljq6cm9MggNKs77NNcNbqC6qbSt5GxwjapQXvAbXebnmPsMO+TCXNafgyEwINP0YNpECLQsejt1wg
	rJ1JfdMgGrSiGcONsxJelXAbrJGMs74HWLA+MwTwhmbsFuYXSq3jpjXEfyeL36wJk+/zJdwan0Wqd
	ieht6UfqsCQ1AwCv/jTRZ3qEfan0y+6h9oPs6gMSpt5v/sW7lvEKVGrQAZynp8qT02r2xowZCg9NM
	N3NDLOi+5keWkvElvuKuYFhs2cSxOXVhzcsHB81WP8WSsr++2rqOhg1UsmVokBe073hS9S+PweI4w
	5NkNiBdNBBQEPHDOmCcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2u3-00E647-8s; Wed, 08 Dec 2021 19:46:59 +0000
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2tq-00E62R-Ic; Wed, 08 Dec 2021 19:46:48 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 g11-20020a4a754b000000b002c679a02b18so1163447oof.3; 
 Wed, 08 Dec 2021 11:46:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=0mIPL/+jUI9AdMmYMLz/l/bjBsOiazs5hLLhbsFkikU=;
 b=rM9+UnaziFFh/yslv6+KcsaNuDpgI9wgFx91BQQPm8oSSDu93XuEP+f/IG5VeWLwZ+
 Xz7elGLQlLNJrbwc6aChQVMtfLxSRVZW5RVFZez4WPYnEjctlTK7VhJWRDMmliK15AxN
 p1+0Cp8nfc7aG2Onnjndjvln6lUkg2T/HsCHcg2sKxLeOkvrRiWL4zl9vn3HFrftgvtV
 y4T2hYoR+DcSrUf084/E50z1HCTb70WNz+Tr9/odKTArA4aa1G1ONGUhSxrpbX2m805p
 GEf/0RSLfMklQdbr0KbeB2DJO9cj8sdAx8bnfeCeynxD7txGjWQp6XFqKpWtKW3odOic
 sEmA==
X-Gm-Message-State: AOAM531555YOwH1H8UwVObKbSd/nE6rSGI22bvKQjoGZLj5MfLj1+CWg
 uONIQmd2sWeGMTSw4+0Kdg==
X-Google-Smtp-Source: ABdhPJzteVYfoBLxE3bMuh9WmQQ2c9OPUSwkjEWjuIuhBxHa0QCNvx80ga7y5eiFEbhKeKD0K5P8AA==
X-Received: by 2002:a4a:ae0a:: with SMTP id z10mr1002444oom.34.1638992804224; 
 Wed, 08 Dec 2021 11:46:44 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id j20sm598095ota.76.2021.12.08.11.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:46:43 -0800 (PST)
Received: (nullmailer pid 252850 invoked by uid 1000);
 Wed, 08 Dec 2021 19:46:42 -0000
Date: Wed, 8 Dec 2021 13:46:42 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: devicetree@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 "maintainer:BROADCOM IPROC GBIT ETHERNET DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Doug Berger <opendmb@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 5/8] dt-bindings: net: Convert AMAC to YAML
Message-ID: <YbELog9TiauuK3fE@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-6-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-6-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_114646_649993_12ACD36E 
X-CRM114-Status: GOOD (  22.81  )
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

T24gTW9uLCBEZWMgMDYsIDIwMjEgYXQgMTA6MDA6NDZBTSAtMDgwMCwgRmxvcmlhbiBGYWluZWxs
aSB3cm90ZToKPiBDb252ZXJ0IHRoZSBCcm9hZGNvbSBBTUFDIERldmljZSBUcmVlIGJpbmRpbmcg
dG8gWUFNTCB0byBoZWxwIHdpdGgKPiBzY2hlbWEgYW5kIGR0YnMgY2hlY2tpbmcuCj4gCj4gU2ln
bmVkLW9mZi1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Cj4gLS0t
Cj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9icmNtLGFtYWMudHh0ICAgICB8IDMwIC0t
LS0tLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYW1hYy55YW1sICAgIHwg
ODggKysrKysrKysrKysrKysrKysrKwo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgMiArLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDg5IGluc2VydGlvbnMo
KyksIDMxIGRlbGV0aW9ucygtKQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9icmNtLGFtYWMudHh0Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2JyY20sYW1hYy55YW1sCj4g
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJj
bSxhbWFjLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxh
bWFjLnR4dAo+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAxMjBlYmU5MzI2Mi4u
MDAwMDAwMDAwMDAwCj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9icmNtLGFtYWMudHh0Cj4gKysrIC9kZXYvbnVsbAo+IEBAIC0xLDMwICswLDAgQEAKPiAtQnJv
YWRjb20gQU1BQyBFdGhlcm5ldCBDb250cm9sbGVyIERldmljZSBUcmVlIEJpbmRpbmdzCj4gLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiAtCj4gLVJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gLSAtIGNvbXBhdGlibGU6CSJicmNtLGFt
YWMiCj4gLQkJImJyY20sbnNwLWFtYWMiCj4gLQkJImJyY20sbnMyLWFtYWMiCj4gLSAtIHJlZzoJ
CUFkZHJlc3MgYW5kIGxlbmd0aCBvZiB0aGUgcmVnaXN0ZXIgc2V0IGZvciB0aGUgZGV2aWNlLiBJ
dAo+IC0JCWNvbnRhaW5zIHRoZSBpbmZvcm1hdGlvbiBvZiByZWdpc3RlcnMgaW4gdGhlIHNhbWUg
b3JkZXIgYXMKPiAtCQlkZXNjcmliZWQgYnkgcmVnLW5hbWVzCj4gLSAtIHJlZy1uYW1lczoJTmFt
ZXMgb2YgdGhlIHJlZ2lzdGVycy4KPiAtCQkiYW1hY19iYXNlIjoJQWRkcmVzcyBhbmQgbGVuZ3Ro
IG9mIHRoZSBHTUFDIHJlZ2lzdGVycwo+IC0JCSJpZG1fYmFzZSI6CUFkZHJlc3MgYW5kIGxlbmd0
aCBvZiB0aGUgR01BQyBJRE0gcmVnaXN0ZXJzCj4gLQkJCQkocmVxdWlyZWQgZm9yIE5TUCBhbmQg
Tm9ydGhzdGFyMikKPiAtCQkibmljcG1fYmFzZSI6CUFkZHJlc3MgYW5kIGxlbmd0aCBvZiB0aGUg
TklDIFBvcnQgTWFuYWdlcgo+IC0JCQkJcmVnaXN0ZXJzIChyZXF1aXJlZCBmb3IgTm9ydGhzdGFy
MikKPiAtIC0gaW50ZXJydXB0czoJSW50ZXJydXB0IG51bWJlcgo+IC0KPiAtVGhlIE1BQyBhZGRy
ZXNzIHdpbGwgYmUgZGV0ZXJtaW5lZCB1c2luZyB0aGUgb3B0aW9uYWwgcHJvcGVydGllcwo+IC1k
ZWZpbmVkIGluIGV0aGVybmV0LnR4dC4KPiAtCj4gLUV4YW1wbGVzOgo+IC0KPiAtYW1hYzA6IGV0
aGVybmV0QDE4MDIyMDAwIHsKPiAtCWNvbXBhdGlibGUgPSAiYnJjbSxuc3AtYW1hYyI7Cj4gLQly
ZWcgPSA8MHgxODAyMjAwMCAweDEwMDA+LAo+IC0JICAgICAgPDB4MTgxMTAwMDAgMHgxMDAwPjsK
PiAtCXJlZy1uYW1lcyA9ICJhbWFjX2Jhc2UiLCAiaWRtX2Jhc2UiOwo+IC0JaW50ZXJydXB0cyA9
IDxHSUNfU1BJIDE0NyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiAtfTsKPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9icmNtLGFtYWMueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnlhbWwKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZDlkZTY4YWJhN2QzCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
YnJjbSxhbWFjLnlhbWwKPiBAQCAtMCwwICsxLDg4IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UKPiArJVlBTUwgMS4yCj4gKy0tLQo+
ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25ldC9icmNtLGFtYWMueWFtbCMK
PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwj
Cj4gKwo+ICt0aXRsZTogQnJvYWRjb20gQU1BQyBFdGhlcm5ldCBDb250cm9sbGVyIERldmljZSBU
cmVlIEJpbmRpbmdzCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIEZsb3JpYW4gRmFpbmVsbGkg
PGYuZmFpbmVsbGlAZ21haWwuY29tPgo+ICsKPiArYWxsT2Y6Cj4gKyAgLSAkcmVmOiAiZXRoZXJu
ZXQtY29udHJvbGxlci55YW1sIyIKPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsg
ICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250YWluczoKPiArICAgICAgICAgICAg
ZW51bToKPiArICAgICAgICAgICAgICAtIGJyY20sYW1hYwo+ICsgICAgdGhlbjoKPiArICAgICAg
cHJvcGVydGllczoKPiArICAgICAgICByZWc6Cj4gKyAgICAgICAgICBtaW5JdGVtczogMQo+ICsg
ICAgICAgICAgbWF4SXRlbXM6IDIKPiArICAgICAgICByZWctbmFtZXM6Cj4gKyAgICAgICAgICBt
aW5JdGVtczogMQo+ICsgICAgICAgICAgbWF4SXRlbXM6IDIKPiArICAgICAgICAgIGl0ZW1zOgo+
ICsgICAgICAgICAgICAtIGNvbnN0OiBhbWFjX2Jhc2UKPiArICAgICAgICAgICAgLSBjb25zdDog
aWRtX2Jhc2UKPiArCj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICBj
b21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06Cj4g
KyAgICAgICAgICAgICAgLSBicmNtLG5zcC1hbWFjCj4gKyAgICB0aGVuOgo+ICsgICAgICBwcm9w
ZXJ0aWVzOgo+ICsgICAgICAgIHJlZzoKPiArICAgICAgICAgIG1pbkl0ZW1zOiAyCj4gKyAgICAg
ICAgICBtYXhJdGVtczogMgo+ICsgICAgICAgIHJlZy1uYW1lczoKPiArICAgICAgICAgIGl0ZW1z
Ogo+ICsgICAgICAgICAgICAtIGNvbnN0OiBhbWFjX2Jhc2UKPiArICAgICAgICAgICAgLSBjb25z
dDogaWRtX2Jhc2UKPiArCj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAg
ICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVudW06
Cj4gKyAgICAgICAgICAgICAgLSBicmNtLG5zMi1hbWFjCj4gKyAgICB0aGVuOgo+ICsgICAgICBw
cm9wZXJ0aWVzOgoKPiArICAgICAgICByZWc6Cj4gKyAgICAgICAgICBtaW5JdGVtczogMwo+ICsg
ICAgICAgICAgbWF4SXRlbXM6IDMKPiArICAgICAgICByZWctbmFtZXM6Cj4gKyAgICAgICAgICBp
dGVtczoKPiArICAgICAgICAgICAgLSBjb25zdDogYW1hY19iYXNlCj4gKyAgICAgICAgICAgIC0g
Y29uc3Q6IGlkbV9iYXNlCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IG5pY3BtX2Jhc2UKCk1vdmUg
dGhpcyB0byB0aGUgbWFpbiBzZWN0aW9uIHNvIHRoYXQgdGhlIG5hbWVzIGFyZSBvbmx5IGRlZmlu
ZWQgb25jZS4gClRoZW4gaGVyZSB5b3UgY2FuIGp1c3Qgc2V0IHRoZSBudW1iZXIgb2YgaXRlbXMu
Cgo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgZW51bToKPiArICAg
ICAgLSBicmNtLGFtYWMKPiArICAgICAgLSBicmNtLG5zcC1hbWFjCj4gKyAgICAgIC0gYnJjbSxu
czItYW1hYwo+ICsKPiArICBpbnRlcnJ1cHRzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKwo+
ICt1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtleGFtcGxlczoKPiArICAtIHwK
PiArICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMu
aD4KPiArCj4gKyAgIGFtYWMwOiBldGhlcm5ldEAxODAyMjAwMCB7Cj4gKyAgICAgIGNvbXBhdGli
bGUgPSAiYnJjbSxuc3AtYW1hYyI7Cj4gKyAgICAgIHJlZyA9IDwweDE4MDIyMDAwIDB4MTAwMD4s
Cj4gKyAgICAgICAgICAgIDwweDE4MTEwMDAwIDB4MTAwMD47Cj4gKyAgICAgIHJlZy1uYW1lcyA9
ICJhbWFjX2Jhc2UiLCAiaWRtX2Jhc2UiOwo+ICsgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
MTQ3IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsgICB9Owo+IGRpZmYgLS1naXQgYS9NQUlOVEFJ
TkVSUyBiL01BSU5UQUlORVJTCj4gaW5kZXggNWUxMDY0YzIzZjQxLi40MDRlNzZkNjI1ZjEgMTAw
NjQ0Cj4gLS0tIGEvTUFJTlRBSU5FUlMKPiArKysgYi9NQUlOVEFJTkVSUwo+IEBAIC0zODYxLDcg
KzM4NjEsNyBAQCBNOglSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gIE06CWJj
bS1rZXJuZWwtZmVlZGJhY2stbGlzdEBicm9hZGNvbS5jb20KPiAgTDoJbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZwo+ICBTOglNYWludGFpbmVkCj4gLUY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9uZXQvYnJjbSxhbWFjLnR4dAo+ICtGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L2JyY20sYW1hYy55YW1sCj4gIEY6CWRyaXZlcnMvbmV0L2V0aGVybmV0L2Jy
b2FkY29tL2JnbWFjKgo+ICBGOglkcml2ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS91bmltYWMu
aAo+ICAKPiAtLSAKPiAyLjI1LjEKPiAKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
