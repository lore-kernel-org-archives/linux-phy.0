Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 833A9E77173
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 10:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/HwJBX5/pHYbdFmBjH+67EgAuC5qI58E532SnfpQL4=; b=fnfssO2F8WiJK3
	xrNvtwWak4zH4H6NS+9zSD7ioL5fU/tugTc4MqMkGHW3dr20q2Wr/MLzWlcw7BVcw+XTAI5jy+Rw9
	GFIQUY0lO0Dtt1vSfnd8yROGG8eSZxnEMBOB4tAyIuU5l2TMix0VsoeYwrsJvtzZJvwZXcNgURYe6
	SHbO1PdEye4a2xoFz4Vkks/xEfTN3FmBXg/+fuJSdlnW8qXw6tuOl0NOI8EhplZ823NmoP3PlAfcV
	yZ10CVfIfxtCORuh7OSqFDFWmTdfbl8o2i9q/cfiw/PRigYdBNs1Ob3uCKXQrA2tfJLmN0M6yJMui
	V8I5Au3t3EYPwMc4UGPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKb0T-00000007Hlp-19Ke;
	Mon, 09 Dec 2024 10:28:49 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKalY-00000007EYM-3czE
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 10:13:26 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-e396e33d47dso3401874276.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Dec 2024 02:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733739203; x=1734344003; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qcha0zHynfu3Ub0724lpoIRWfmwOKO+r/oksIEeJ2RY=;
        b=Ai85RkTkJQnRcj1zLwoCVE2fc7wLkI+q2IURgASAMfvNnt3m+8mZHePC2XHnre/0w2
         FGMcjBvapSmr786/31oBsTk1VRenGDlfAEf5I1moX0d7TTt48qcSi4piXn6LudfbqZmc
         GoN7CRiRNzXJVTgiF53EHB8Zb+kMLKDFCrdiyxh6bT+cn4YMC8tjC4j+C6JE+6Y4jAEd
         LQz6PE8mX6mUM8Pr3c2Kdkb6tQIFvPWHGuE7L+EkRJqmlf63l01n8d9pAzKw3+pLysZi
         6HwpfGAp/9KleldO+QtFRDSWmYeOAjcvMsIybHMdJJu5fJJoSWsrh7OO+w8yVb4QvzP1
         Ygww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733739204; x=1734344004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qcha0zHynfu3Ub0724lpoIRWfmwOKO+r/oksIEeJ2RY=;
        b=ZMYZj2IUSHUSni+mO6Ns47eAaG+ZnJgKBj4puyeE4hTEH3B75c3OLBiac73EWm8Ifs
         Q+p3xwyA2JrAhs66j+b88OEKnLDWV77KMURPwr/bX8asajabFukSP3C1rnD1zIx1X9Ki
         5EaNYSGZQlZOsN+Vy0f9UhmbTi9wlrtJens6flMBZdgLhWuz9LblCGEhTsxDws98Lu4I
         MYR6NC0wq9OdFBJ+sTJvnfqYNUnOZH6Onjx0bF28nFDaDzsuDbdQDQ6fWj1746bZRjOZ
         dYpBV9jnajtEMnoRPNHVhfO+kg0MHS8UfaCWkIKy/f8dwt5T6cWEsFNiULPZLhV3TF8u
         QcJA==
X-Forwarded-Encrypted: i=1; AJvYcCU79vdPmULf/kscn4fFQxRuUSRqdwADFMxwxkmiATF+6pK3u6nMaqWZD6Cvfq9JLtV7HHpudMXhrr8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfqGEnZzQBYS6ixZiJDaB8EQv2LK6PtbFJ5kk8BscIVRYQCrDs
	cLrRA3E7f+hBXHb2B5rDvehg6GOMI8aGCdsw14vBDGImDtw1cpOrvN9uBRxU8pWKDpBuBPttWfY
	P2S9eQmpRqtxB73KiLdO7jf8D2xvHhIqDAboQQw==
X-Gm-Gg: ASbGnctpFkVSHbkQc8lpoY+SznHoy5KN4HBORi5xyQ/N971gSVE+8NieqIieUUXTIRw
	oBdmgPWlWnQQPmys8ftvGHcTXCgOu0lY=
X-Google-Smtp-Source: AGHT+IH2bT+gKDdOGRSmqtWgH0YUH5W9D5gi5OgCuogw+kN6ib1DMYcXSnWkxS48FLs9InNsXTrt1JIXrBK8w04Q03w=
X-Received: by 2002:a05:6902:983:b0:e30:b98e:b111 with SMTP id
 3f1490d57ef6-e3a0b0c4f08mr8343409276.17.1733739203685; Mon, 09 Dec 2024
 02:13:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.1730172244.git.Sandor.yu@nxp.com> <411e42c70e71dce33a80059f663fb6c58fb2ac8c.1730172244.git.Sandor.yu@nxp.com>
 <efciuvoptv7qxwauswfseb6zlt5w4fmjdbm3huxfsn63a6bm7u@kfgkkvqoz5x4>
 <PAXPR04MB9448F638D47B5495CF78007AF4522@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <z6p6bewmykmufsghdojr4lvziurmmfpnrr5m4w3pfjlqzobpwr@zq2d2ukjvtac>
 <PAXPR04MB9448D68A5CA9755036E9B23DF42F2@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <foi2sizfkppmunq4yqt4pex47alsvsjyqi3rk32fwyz4f5xepn@zdsx74bzzda4> <PAXPR04MB94488E0A549E519CEB8AA40EF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB94488E0A549E519CEB8AA40EF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 9 Dec 2024 12:13:15 +0200
Message-ID: <CAA8EJprUKXxGbtP6M95Ep=2Lj2NSiUN31QNaysNJAzvO5g2LdQ@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH v18 6/8] phy: freescale: Add DisplayPort/HDMI
 Combo-PHY driver for i.MX8MQ
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, 
	Oliver Brown <oliver.brown@nxp.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, "sam@ravnborg.org" <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_021324_917065_D74B520B 
X-CRM114-Status: GOOD (  34.96  )
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

T24gTW9uLCA5IERlYyAyMDI0IGF0IDEwOjE2LCBTYW5kb3IgWXUgPHNhbmRvci55dUBueHAuY29t
PiB3cm90ZToKPgo+Cj4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBE
bWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4gPiBTZW50OiAy
MDI05bm0MTHmnIgzMOaXpSAxNjozMAo+ID4gVG86IFNhbmRvciBZdSA8c2FuZG9yLnl1QG54cC5j
b20+Cj4gPiBDYzogYW5kcnplai5oYWpkYUBpbnRlbC5jb207IG5laWwuYXJtc3Ryb25nQGxpbmFy
by5vcmc7IExhdXJlbnQgUGluY2hhcnQKPiA+IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2Fy
ZC5jb20+OyBqb25hc0Brd2lib28uc2U7Cj4gPiBqZXJuZWouc2tyYWJlY0BnbWFpbC5jb207IGFp
cmxpZWRAZ21haWwuY29tOyBkYW5pZWxAZmZ3bGwuY2g7Cj4gPiByb2JoK2R0QGtlcm5lbC5vcmc7
IGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZzsKPiA+IHNoYXduZ3VvQGtlcm5lbC5v
cmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7IGZlc3RldmFtQGdtYWlsLmNvbTsKPiA+IHZrb3Vs
QGtlcm5lbC5vcmc7IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7Cj4gPiBkZXZpY2V0
cmVlQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Owo+ID4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmc7Cj4gPiBtcmlwYXJkQGtlcm5lbC5vcmc7IGtlcm5lbEBwZW5ndXRyb25peC5kZTsg
ZGwtbGludXgtaW14Cj4gPiA8bGludXgtaW14QG54cC5jb20+OyBPbGl2ZXIgQnJvd24gPG9saXZl
ci5icm93bkBueHAuY29tPjsKPiA+IGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91cC5jb207IHNh
bUByYXZuYm9yZy5vcmcKPiA+IFN1YmplY3Q6IFJlOiBbRVhUXSBSZTogW1BBVENIIHYxOCA2Lzhd
IHBoeTogZnJlZXNjYWxlOiBBZGQgRGlzcGxheVBvcnQvSERNSQo+ID4gQ29tYm8tUEhZIGRyaXZl
ciBmb3IgaS5NWDhNUQo+ID4KPiA+IENhdXRpb246IFRoaXMgaXMgYW4gZXh0ZXJuYWwgZW1haWwu
IFBsZWFzZSB0YWtlIGNhcmUgd2hlbiBjbGlja2luZyBsaW5rcyBvcgo+ID4gb3BlbmluZyBhdHRh
Y2htZW50cy4gV2hlbiBpbiBkb3VidCwgcmVwb3J0IHRoZSBtZXNzYWdlIHVzaW5nIHRoZSAnUmVw
b3J0Cj4gPiB0aGlzIGVtYWlsJyBidXR0b24KPiA+Cj4gPgo+ID4gT24gVHVlLCBOb3YgMjYsIDIw
MjQgYXQgMDI6MTI6MTlQTSArMDAwMCwgU2FuZG9yIFl1IHdyb3RlOgo+ID4gPgo+ID4gPiA+Cj4g
PiA+ID4gT24gVHVlLCBOb3YgMDUsIDIwMjQgYXQgMDI6MDU6NTFQTSArMDAwMCwgU2FuZG9yIFl1
IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBPbiBUdWUsIE9jdCAyOSwgMjAyNCBhdCAw
MjowMjoxNFBNICswODAwLCBTYW5kb3IgWXUgd3JvdGU6Cj4gPiA+ID4gPiA+ID4gQWRkIENhZGVu
Y2UgSERQLVRYIERpc3BsYXlQb3J0IGFuZCBIRE1JIFBIWSBkcml2ZXIgZm9yCj4gPiBpLk1YOE1R
Lgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gQ2FkZW5jZSBIRFAtVFggUEhZIGNvdWxkIGJl
IHB1dCBpbiBlaXRoZXIgRFAgbW9kZSBvciBIRE1JIG1vZGUKPiA+ID4gPiA+ID4gPiBiYXNlIG9u
IHRoZSBjb25maWd1cmF0aW9uIGNob3Nlbi4KPiA+ID4gPiA+ID4gPiBEaXNwbGF5UG9ydCBvciBI
RE1JIFBIWSBtb2RlIGlzIGNvbmZpZ3VyZWQgaW4gdGhlIGRyaXZlci4KPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFNhbmRvciBZdSA8U2FuZG9yLnl1QG54cC5jb20+
Cj4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGFuZGVyIFN0ZWluCj4gPiA+ID4gPiA+
ID4gPGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91cC5jb20+Cj4gPiA+ID4gPiA+ID4gLS0tCj4g
PiA+ID4gPiA+ID4gdjE3LT52MTg6Cj4gPiA+ID4gPiA+ID4gLSBmaXggYnVpbGQgZXJyb3IgYXMg
Y29kZSByZWJhc2UgdG8gbGF0ZXN0IGtlcm5lbCB2ZXJzaW9uLgo+ID4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnICAgICAgICAgICAgICAgIHwg
ICAxMCArCj4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9NYWtlZmlsZSAgICAg
ICAgICAgICAgIHwgICAgMSArCj4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9w
aHktZnNsLWlteDhtcS1oZHB0eC5jIHwgMTMzNwo+ID4gPiA+ID4gPiArKysrKysrKysrKysrKysr
KysKPiA+ID4gPiA+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMzQ4IGluc2VydGlvbnMoKykgIGNy
ZWF0ZSBtb2RlIDEwMDY0NAo+ID4gPiA+ID4gPiA+IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHkt
ZnNsLWlteDhtcS1oZHB0eC5jCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25maWcKPiA+ID4gPiA+ID4gPiBiL2RyaXZlcnMv
cGh5L2ZyZWVzY2FsZS9LY29uZmlnIGluZGV4Cj4gPiA+ID4gPiA+ID4gZGNkOWFjZmY2ZDAxYS4u
MmIxMjEwMzY3YjMxYwo+ID4gPiA+ID4gPiA+IDEwMDY0NAo+ID4gPiA+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnCj4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9w
aHkvZnJlZXNjYWxlL0tjb25maWcKPiA+ID4gPgo+ID4gPiA+IFsuLi5dCj4gPiA+ID4KPiA+ID4g
PiBJJ20gc29ycnksIG15IGVtYWlsIGNsaWVudCBjdXQgdGhlIGVtYWlsLgo+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gK3N0YXRpYyBpbnQgY2Ruc19oZHB0eF9kcF9jb25maWd1cmUoc3RydWN0IHBoeSAq
cGh5LAo+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuaW9u
IHBoeV9jb25maWd1cmVfb3B0cwo+ID4gPiA+ICpvcHRzKSB7Cj4gPiA+ID4gPiA+ID4gKyAgICAg
c3RydWN0IGNkbnNfaGRwdHhfcGh5ICpjZG5zX3BoeSA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+
ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiArICAgICBjZG5zX3BoeS0+ZHAubGlua19yYXRl
ID0gb3B0cy0+ZHAubGlua19yYXRlOwo+ID4gPiA+ID4gPiA+ICsgICAgIGNkbnNfcGh5LT5kcC5s
YW5lcyA9IG9wdHMtPmRwLmxhbmVzOwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTaG91bGRuJ3Qg
dGhpcyBiZSBjb25kaXRpb25hbCBvbiBzZXRfcmF0ZSAvIHNldF9sYW5lcyA/Cj4gPiA+ID4gPgo+
ID4gPiA+ID4gUEhZIGRvIG5vdCBzdXBwb3J0IHJlY29uZmlndXJlIGxpbmsgcmF0ZSBhbmQgbGFu
ZSBjb3VudC4KPiA+ID4gPgo+ID4gPiA+IFNvLCB5b3UgZG9uJ3Qgc3VwcG9ydCByZWNvbmZpZ3Vy
aW5nIHRoZSByYXRlIC8gY291bnQsIGJ1dCB5b3Ugc3RpbGwKPiA+ID4gPiBjb3B5IHRoZSBuZXcg
cmF0ZSBhbmQgbGFuZXMgaW50byB5b3VyIGRyaXZlciBkYXRhLiBUaGF0IHNvdW5kcyBzdHJhbmdl
Lgo+ID4gPgo+ID4gPiBUaGUgUEhZIHdpbGwgdXNlIGxpbmsgcmF0ZSBhbmQgbGFuZSBjb3VudCB0
byBjb25maWd1cmUgaXRzIHJlZ2lzdGVycwo+ID4KPiA+IEknbSBub3Qgc3VyZSBpZiBJIGZvbGxv
dyBpdC4gRG8geW91IG1lYW4gdGhhdCByYXRlIC8gY291bnQgY29uZmlndXJhdGlvbiBpcyBzdGF0
aWM/Cj4KPiBJbiBEUCBjb250cm9sbGVyIGRyaXZlciwgcmF0ZSBhbmQgbGFuZSBjb3VudCBhcmUg
ZGV0ZXJtaW5lZCBkdXJpbmcgbGluayB0cmFpbmluZy4KPiBUaGVzZSB0d28gcGFyYW1ldGVycyBh
cmUgZml4ZWQgaW4gdGhlIERQIFBIWSBkcml2ZXIgYW5kIGNhbm5vdCBiZSBtb2RpZmllZC4KClll
cywgbGxhbmUgY291bnQsIHJhdGUgYW5kIHN3aW5nIGFyZSBkZXRlcm1pbmVkIGR1cmluZyBsaW5r
IHRyYWluaW5nLgpIb3dldmVyIGl0J3Mgbm90IGEgcGFydCBvZiB0aGUgUEhZJ3Mgam9iIHRvIHNl
dHRsZSBvbiB0aGF0LiBVc3VhbGx5IGl0CmlzIHRoZSBEUCBkcml2ZXIgd2hvIGRldGVybWluZXMg
dGhlc2UgcGFyYW1zIGFuZCB0aGVuIGNhbGxzCnBoeV9jb25maWd1cmUoKSB0byBzZXQgbmVjZXNz
YXJ5IHBhcmFtcyBmb3IgdGhlIG5leHQgaXRlcmF0aW9uIG9mCmNsb2NrIHJlY292ZXJ5IGF0dGVt
cHQgb3IgbGluayB0cmFpbmluZyBzdGVwLiBBcyBhIHBhcnQgb2YgdGhlIGNhbGxpbmcKQVBJIHRo
ZSBEUCBkcml2ZXIgZG9lc24ndCBoYXZlIHRvIHBhc3MgZnVsbCBjb25maWd1cmF0aW9uLiBJbnN0
ZWFkIERQCmRyaXZlciBzZXRzIG9ubHkgcmVxdWlyZWQgcGFydHMgb2YgdGhlIFBIWSBjb25maWd1
cmF0aW9uIGFuZCB1c2VzCnRoZXNlIGZsYWdzIHRvIHNwZWNpZnkgd2hpY2ggcGFydCBvZiB0aGUg
UEhZIGNvbmZpZ3VyYXRpb24gc2hvdWxkIGJlCnVwZGF0ZWQgYW5kIHdoaWNoIHBhcnRzIHdlcmUg
bm90IHNldCBhbmQgbXVzdCBiZSBpZ25vcmVkLgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
