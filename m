Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FF9CC7EE23
	for <linux-phy@archiver.kernel.org>; Fri, 19 May 2023 11:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GA5RcYfK6B3F5h4yMfsT7VLCTXdk/X8TrqF6BbPGKMI=; b=lYTrtLwagegp2V
	TZU27bLo0Lah4APtjXFYyMTPkh4aEVeKUYd6JgXrPxmrNZfGDEVFcO3m269Po9wYkSkAWFfBGaeUq
	+5+daXfmE4VH/gnRF3GyZl1Fot5QPbgA7t/NC3NprYwGbqkighYoDl3NI86qWKL2W4vDKmNj1B3yt
	ebYGadYOjLo0PEVYy81wUSHvXSfPaZN7AggQ8ZxiHsw4S7gAeg8+zmKxqxh4BtaJ+QKXbXsb9DW7U
	q2aZdzKbra4lB3cVWNIth2LpvByFWj5uCS+bEZOO+ugK0giZz9Iln0wkJow8lZwo+Qs/sfPNMioWH
	+U7T+f3EIZOMjeeK36/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzxsy-00G2fo-2j;
	Fri, 19 May 2023 11:03:00 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzxsv-00G2ex-3C
	for linux-phy@lists.infradead.org;
	Fri, 19 May 2023 11:02:59 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id D343A5C00E3;
	Fri, 19 May 2023 07:02:56 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Fri, 19 May 2023 07:02:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1684494176; x=1684580576; bh=gV73rdtQgxipqFYPyr3Q/D+7HTlx1vCuwWY
	Zk9rvHV0=; b=cHyg654mmAsroWePFnZ4kSZFalqsGFUxLofrdI2FilESWopT1gF
	9WDo3dFq+m1KF0E8Cn9aitPx9WUpDVN81x9kAXAKqKyVz2Mbx0mBxDd1uAJlGNWN
	X1exX1FSeo3eqYNWnw/VYtsUi/hYXApTZjKMTelAdYPxoldKg97AD3OMexQO+CX/
	ovxURSu7yXoPeQmh6zvxmuE2YUcK+enznzzjudTOpe+zWEOwc2F7CsnUDTpvqeJa
	MW7+wSbFZ0IoWm6ALbf33tJQYpd/sDhs9Zwe+lCXLF3wI5BHxRQLaUhrB2v5KyL/
	2++FHFYrxtWY173DXSPXEOJoUk/kkrxLdSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1684494176; x=1684580576; bh=gV73rdtQgxipqFYPyr3Q/D+7HTlx1vCuwWY
	Zk9rvHV0=; b=ar8m4LrRthd6WGP71fd/XRn6S0kUGl+1IKGZ9kFDGlbl+IJpExg
	w51qsJwcarK2nosxYsFe1r2W1BprUsvUftc8bB4PNuvpChqCUpvjI/9bUp3A2J9K
	8SRi7xXoRPhaBuxqmcVh8A9rYIq9TnYnHDconSLB8Sys/zwbGDIyT7gNA9rqTVpd
	HSwUHJNQsTgBO/kH9cWyvt2GvvVyYB6kc+zoHlC8w8gUl6ytpK95+rsZjtdsSm0c
	etUPqLda/TS7Js9NCFce8Cv+VX3TD7Vh0LHIzX+/LYCWT3A/D7IZTAqbVdbtYru+
	YndQqJECqnX5TYrLU4iEGQ6rgLGqjNOZxrA==
X-ME-Sender: <xms:XldnZGmSsdjYFrdAmDUF_egWsB5Ix4xTX2zZNbPMxYdje0KfgI2NJA>
    <xme:XldnZN3I5xtCZ5Z7W8MHJX_QkGFstAGSJazP94JUB1fSCb0BDr5fNnnMoY3aS7iAG
    _g2WEpa9CkrGdJKylc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeihedgfeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeegfeejhedvledvffeijeeijeeivddvhfeliedvleevheejleetgedukedt
    gfejveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:XldnZEpsQ-lwiW8sq8jV0ndfTGWpQTavssQ8RIj6aTQRdsOd7SBmjQ>
    <xmx:XldnZKkDGyrajy25oCrceVR0m0gL9mXTv9btSFFVMD_NA9qZ9FheWg>
    <xmx:XldnZE0p2ly206V0K_-_EfCtc5SStU6s_ty6kSyDLz0utv9DhHtODg>
    <xmx:YFdnZF65EvsJldBBS3b8yrM0B-ENKp_u5YodP-WIbzSvz6Fs921SCQ>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 66707B60086; Fri, 19 May 2023 07:02:54 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-431-g1d6a3ebb56-fm-20230511.001-g1d6a3ebb
Mime-Version: 1.0
Message-Id: <f7edea0c-dbfe-4c16-8134-0656411a837d@app.fastmail.com>
In-Reply-To: <0ee8a26205a041cab9a787ec29201a9f@realtek.com>
References: <20230519045825.28369-1-stanley_chang@realtek.com>
 <20230519045825.28369-2-stanley_chang@realtek.com>
 <0d165c7efbb71a65803abddc364e1c5252b8b939.camel@crapouillou.net>
 <0ee8a26205a041cab9a787ec29201a9f@realtek.com>
Date: Fri, 19 May 2023 13:01:34 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Stanley Chang" <stanley_chang@realtek.com>,
 "Paul Cercueil" <paul@crapouillou.net>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Cc: "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>,
 "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 "Conor Dooley" <conor+dt@kernel.org>,
 "Alan Stern" <stern@rowland.harvard.edu>, "Ray Chi" <raychi@google.com>,
 "Bagas Sanjaya" <bagasdotme@gmail.com>,
 "Eugeniu Rosca" <erosca@de.adit-jv.com>,
 "Michael Grzeschik" <m.grzeschik@pengutronix.de>,
 "Matthias Kaehlcke" <mka@chromium.org>, "Flavio Suligoi" <f.suligoi@asem.it>,
 "Mathias Nyman" <mathias.nyman@linux.intel.com>,
 "Bhuvanesh Surachari" <Bhuvanesh_Surachari@mentor.com>,
 "Linus Walleij" <linus.walleij@linaro.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v1 2/3] usb: phy: Add driver for the Realtek SoC USB 2.0/3.0 PHY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_040258_097651_2803FF51 
X-CRM114-Status: GOOD (  13.73  )
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

T24gRnJpLCBNYXkgMTksIDIwMjMsIGF0IDEyOjU4LCBTdGFubGV5IENoYW5nW+aYjOiCsuW+t10g
d3JvdGU6Cj4+IAo+PiBJJ20gcHJldHR5IHN1cmUgdGhhdCBkcml2ZXJzL3VzYi9waHkvIGlzIGRl
cHJlY2F0ZWQgbm93Li4uCj4+IAo+PiBOZXcgZHJpdmVycyBzaG91bGQgYmUgd3JpdHRlbiBmb3Ig
dGhlIGdlbmVyaWMgUEhZIHN1YnN5c3RlbSBpbgo+PiBkcml2ZXJzL3BoeS8uCgpJbmRlZWQsIEkg
bWlzc2VkIHRoYXQgaW4gbXkgcmV2aWV3LgoKPiBUaGFua3MgZm9yIHlvdXIgcmVtaW5kZXIuCj4g
V2lsbCBkcml2ZXJzL3VzYi9waHkgYmUgcmVtb3ZlZD8KPiBJcyBpdCBub3QgYWxsb3dlZCB0byBh
ZGQgbmV3IGRyaXZlcnM/Cj4KPiBJbiBvdXIgYXBwbGljYXRpb24sIGRyaXZlci9waHkgaXMgbm90
IHN1aXRhYmxlLgo+IFdlIG5lZWQgdG8gbm90aWZ5IHRoZSBwaHkgZHJpdmVyIHdoZW4gdGhlIFVT
QiBodWIgcG9ydCBzdGF0dXMgY2hhbmdlcy4KPiBIb3dldmVyLCBnZW5lcmljIFBIWSBkcml2ZXJz
IGFyZSBkZXNpZ25lZCBmb3IgdmFyaW91cyBkZXZpY2UncyBQSFkuCj4gQW5kIGl0IHNlZW1zIGlu
YXBwcm9wcmlhdGUgdG8gYWRkIHRoaXMgZnVuY3Rpb24uIFNvIHdlIGNob29zZSB0byB1c2UgCj4g
ZHJpdmVyL3VzYi9waHkuIAoKSWYgeW91IHJ1biBpbnRvIHNvbWV0aGluZyB0aGF0IHdvcmtzIGlu
IHRoZSBvbGQgdXNicGh5IGxheWVyCmJ1dCBjYW4ndCBiZSBkb25lIGluIGRyaXZlcnMvcGh5LCBJ
IHRoaW5rIHRoZSBiZXR0ZXIgc29sdXRpb24Kd291bGQgYmUgdG8gY2hhbmdlIHRoZSBkcml2ZXJz
L3BoeS8gY29kZSB0byBhZGQgdGhpcy4KCiAgICAgIEFybmQKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
