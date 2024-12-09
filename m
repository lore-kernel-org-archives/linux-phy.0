Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFCFBE7717D
	for <linux-phy@archiver.kernel.org>; Mon,  9 Dec 2024 10:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCGykUTWhcVcng9yPrHvDYxPCq/cwZoK0lTwUgBenRw=; b=KBySUSMjZv66H+
	dKkwmQ52b4m65Lm7Eb6Gct0OnNaj4IEkATijNqGwhX2T+5ji6s/8gZYQyWs4MmuFTJOa4LsyPZGuo
	gIj02d4HSikAKlKsFwkr2an/o9IqtKYjupbOZ6+MpN0USUN8ZMlGALNbgEtNmfxXD/ZUyLVQx+ckh
	5FuEPMoCnDEI3OO8DCaLi9zr6TUpcC7qbYiKY9t1OXXy5IkUvbH8bOdMykI9hO98t7eHj4P6RwJnZ
	oD4NwUxurx4LAjwui49tUr/pWe964o/a7GllObsVku6I8P8S9+10vb3imtxAlwOAwTJief370UCo9
	7lRUlWPeYPQx4CZdsLEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKb2V-00000007IDm-1kRR;
	Mon, 09 Dec 2024 10:30:55 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKang-00000007FDj-1RT9
	for linux-phy@lists.infradead.org;
	Mon, 09 Dec 2024 10:15:37 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e3988fdb580so3403724276.2
        for <linux-phy@lists.infradead.org>; Mon, 09 Dec 2024 02:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733739335; x=1734344135; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l8vI+mafQJICnkT4ByBE+HuAejFrqMpigPXyZ+V3gfk=;
        b=scahdNtQV1hGM5ot0j7XGZo5oe+wv5gtjjmc3x8k6bcEudEjtWRd/hdNSvyjiY+x6X
         Mp3Z75uKjd1VjKgsB+ROrwPBDtU9Xp7DO7qQHhdcqWUZJF6pBIzlsdRNdObLc+exOy30
         qORwaJgvv9BaHjeA9Bwb+Wt6HnV6vQ2xHzwy1YTEZx/eQXfDM7GvK7tPFPZIi3djUtHX
         FqI1VwnsaYiCD5VMRNg5HYAV0lxyxHUOpmCZFoqWdWgFXizCLKAGKGiz/2Z5dR3ltUi3
         3yNei+CUuiTzhsuI2B3NMsEatAwyf2455b5gFkKMRbGGFY7yjatK4rfZpLb1zm2oX/8V
         vgVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733739335; x=1734344135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l8vI+mafQJICnkT4ByBE+HuAejFrqMpigPXyZ+V3gfk=;
        b=ih1uaaXtDOWbrZ0YnKKmu020HfairFA7n0ddxW9sWg2MEqcsXh8F48pNW1tHRKZNzp
         A392/g8YJFN2A63tabSk3T9OYIDKAYu/+YL9j9XniPYnM1MJF88Ak0txFq8b/ctQbhd9
         ORcXgFtGrEn7+u+05YWLzxnCMvKOol0XpGPRzfHP0lwndKPZ2Agj5tvMP6bU2VJUAP4R
         gdiRaUkwXaxBuZU2NoPPeFzjxekuUNcMmiBRrAe0i9mVMIbvwz4THcKaVRkX0dX/Nhat
         Ug9zfTlbufbpKn732dPstWbdGYoVk8bWei29iKYzCc+Pw5RZkLQP2dBEqk05P8Wc/lqL
         4JxA==
X-Forwarded-Encrypted: i=1; AJvYcCX2aMd0l/hXhMB6ZH19ksDx7RtUzJrYhCeOKVcHQCvBu1FdMnDfQt/mH2LIz7rt9BypX3H/4x29OEc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCu72wWcq8VpRIzMvYpJ5OkSjSsIg5wXsumOK5iVR90DAT5sxa
	ttUv+HV8Bs9V4OuYzVERZYStGXnow3OwuDOg0H3yyrsi81cev5uNJAGbnqi+OmxgRSVChOp90bd
	NZYKsPvj8/OhX81OHuxoQd+9mxft0MolJofcgQA==
X-Gm-Gg: ASbGncsEuI0iV/Cj3QuA7Dlf4RzaFrYkMMxhERcqJpIczOXrZkcy5B6BR7kVWi6h0qg
	5Tmt2MuxtWLAhUR5RX/MPX7rLuLB8FtQ=
X-Google-Smtp-Source: AGHT+IEYOHT/dGfysgHNg+sIyk39rFclVXASjoPiptGYgkI+v6pr5kBeW++F6mbWR9LBKnALmvDk24OJ2+AqS/tovSY=
X-Received: by 2002:a05:6902:727:b0:e3a:4f3f:af41 with SMTP id
 3f1490d57ef6-e3a4f3fb32fmr656889276.17.1733739335239; Mon, 09 Dec 2024
 02:15:35 -0800 (PST)
MIME-Version: 1.0
References: <cover.1732627815.git.Sandor.yu@nxp.com> <4ef8252825d7a962b440519fb17fdcd5dd817672.1732627815.git.Sandor.yu@nxp.com>
 <slkpvbemsrz5jv4cafp7k4pdj3smpl575w2dtmjoheoqqrh32j@2wi5564jzawg> <PAXPR04MB94488CEFA54F8AA193DC2BBDF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB94488CEFA54F8AA193DC2BBDF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 9 Dec 2024 12:15:26 +0200
Message-ID: <CAA8EJpoKkOj2pBxi4QcVAVOwzaW=yVAyomOFv7-oAxPYamfa-A@mail.gmail.com>
Subject: Re: [PATCH v19 6/8] phy: freescale: Add DisplayPort/HDMI Combo-PHY
 driver for i.MX8MQ
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
X-CRM114-CacheID: sfid-20241209_021536_396760_BDBD3455 
X-CRM114-Status: GOOD (  35.20  )
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

T24gTW9uLCA5IERlYyAyMDI0IGF0IDEwOjM4LCBTYW5kb3IgWXUgPHNhbmRvci55dUBueHAuY29t
PiB3cm90ZToKPgo+Cj4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBE
bWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4gPiBTZW50OiAy
MDI05bm0MTHmnIgyNuaXpSAyMjo0Mwo+ID4gVG86IFNhbmRvciBZdSA8c2FuZG9yLnl1QG54cC5j
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
bUByYXZuYm9yZy5vcmcKPiA+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFUQ0ggdjE5IDYvOF0gcGh5
OiBmcmVlc2NhbGU6IEFkZCBEaXNwbGF5UG9ydC9IRE1JCj4gPiBDb21iby1QSFkgZHJpdmVyIGZv
ciBpLk1YOE1RCj4gPgo+ID4gQ2F1dGlvbjogVGhpcyBpcyBhbiBleHRlcm5hbCBlbWFpbC4gUGxl
YXNlIHRha2UgY2FyZSB3aGVuIGNsaWNraW5nIGxpbmtzIG9yCj4gPiBvcGVuaW5nIGF0dGFjaG1l
bnRzLiBXaGVuIGluIGRvdWJ0LCByZXBvcnQgdGhlIG1lc3NhZ2UgdXNpbmcgdGhlICdSZXBvcnQK
PiA+IHRoaXMgZW1haWwnIGJ1dHRvbgo+ID4KPiA+Cj4gPiBPbiBUdWUsIE5vdiAyNiwgMjAyNCBh
dCAxMDoxMTo1MVBNICswODAwLCBTYW5kb3IgWXUgd3JvdGU6Cj4gPiA+IEFkZCBDYWRlbmNlIEhE
UC1UWCBEaXNwbGF5UG9ydCBhbmQgSERNSSBQSFkgZHJpdmVyIGZvciBpLk1YOE1RLgo+ID4gPgo+
ID4gPiBDYWRlbmNlIEhEUC1UWCBQSFkgY291bGQgYmUgcHV0IGluIGVpdGhlciBEUCBtb2RlIG9y
Cj4gPiA+IEhETUkgbW9kZSBiYXNlIG9uIHRoZSBjb25maWd1cmF0aW9uIGNob3Nlbi4KPiA+ID4g
RGlzcGxheVBvcnQgb3IgSERNSSBQSFkgbW9kZSBpcyBjb25maWd1cmVkIGluIHRoZSBkcml2ZXIu
Cj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFNhbmRvciBZdSA8U2FuZG9yLnl1QG54cC5jb20+
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBTdGVpbiA8YWxleGFuZGVyLnN0ZWluQGV3
LnRxLWdyb3VwLmNvbT4KPiA+ID4gLS0tCj4gPiA+IHYxOC0+djE5Ogo+ID4gPiAtIFNpbXBsaWZ5
IHRoZSBQTEwgdGFibGVzIGJ5IHJlbW92aW5nIHVudXNlZCBhbmQgY29uc3RhbnQgZGF0YQo+ID4g
PiAtIFJlbW92ZSBQSFkgcG93ZXIgbWFuYWdlbWVudCwgY29udHJvbGxlciBkcml2ZXIgd2lsbCBo
YW5kbGUgdGhlbS4KPiA+ID4gLSBSZW1vdmUgZW51bSBkcF9saW5rX3JhdGUKPiA+ID4gLSBJbnRy
b2R1Y2UgcmVhZF9wbGxfdGltZW91dC4KPiA+ID4gLSBVcGRhdGUgY2xvY2sgbWFuYWdlbWVudCBh
cyBkZXZtX2Nsa19nZXRfZW5hYmxlZCgpIGludHJvZHVjZWQuCj4gPiA+IC0gUmVtb3ZlIGNkbnNf
aGRwdHhfcGh5X2luaXQoKSBhbmQgY2Ruc19oZHB0eF9waHlfcmVtb3ZlKCkuCj4gPiA+Cj4gPiA+
IHYxNy0+djE4Ogo+ID4gPiAtIGZpeCBidWlsZCBlcnJvciBhcyBjb2RlIHJlYmFzZSB0byBsYXRl
c3Qga2VybmVsIHZlcnNpb24uCj4gPiA+Cj4gPiA+ICBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvS2Nv
bmZpZyAgICAgICAgICAgICAgICB8ICAgMTAgKwo+ID4gPiAgZHJpdmVycy9waHkvZnJlZXNjYWxl
L01ha2VmaWxlICAgICAgICAgICAgICAgfCAgICAxICsKPiA+ID4gIGRyaXZlcnMvcGh5L2ZyZWVz
Y2FsZS9waHktZnNsLWlteDhtcS1oZHB0eC5jIHwgMTIzNwo+ID4gKysrKysrKysrKysrKysrKysr
Cj4gPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDEyNDggaW5zZXJ0aW9ucygrKQo+ID4gPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS1oZHB0eC5j
Cj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvS2NvbmZpZyBi
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnCj4gPiA+IGluZGV4IGRjZDlhY2ZmNmQwMWEu
LmJiZDE3ZTk1NTZjYzMgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9L
Y29uZmlnCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9LY29uZmlnCj4gPiA+IEBA
IC0zNSw2ICszNSwxNiBAQCBjb25maWcgUEhZX0ZTTF9JTVg4TV9QQ0lFCj4gPiA+ICAgICAgICAg
RW5hYmxlIHRoaXMgdG8gYWRkIHN1cHBvcnQgZm9yIHRoZSBQQ0lFIFBIWSBhcyBmb3VuZCBvbgo+
ID4gPiAgICAgICAgIGkuTVg4TSBmYW1pbHkgb2YgU09Dcy4KPiA+ID4KPiA+ID4gK2NvbmZpZyBQ
SFlfRlNMX0lNWDhNUV9IRFBUWAo+ID4gPiArICAgICB0cmlzdGF0ZSAiRnJlZXNjYWxlIGkuTVg4
TVEgRFAvSERNSSBQSFkgc3VwcG9ydCIKPiA+ID4gKyAgICAgZGVwZW5kcyBvbiBPRiAmJiBIQVNf
SU9NRU0KPiA+ID4gKyAgICAgZGVwZW5kcyBvbiBDT01NT05fQ0xLCj4gPiA+ICsgICAgIGRlcGVu
ZHMgb24gQ0ROU19NSERQX0hFTFBFUgo+ID4KPiA+IFlvdSBzaG91bGQgbm90IGJlIGRlcGVuZGlu
ZyBvbiB0aGUgc3ltYm9sIHRoYXQgY2FuIG5vdCBiZSBzZWxlY3RlZCBieQo+ID4gdGhlIHVzZXIu
Cj4KPiBPSy4KPgo+ID4KPiA+ID4gKyAgICAgc2VsZWN0IEdFTkVSSUNfUEhZCj4gPiA+ICsgICAg
IGhlbHAKPiA+ID4gKyAgICAgICBFbmFibGUgdGhpcyB0byBzdXBwb3J0IHRoZSBDYWRlbmNlIEhE
UFRYIERQL0hETUkgUEhZIGRyaXZlcgo+ID4gPiArICAgICAgIG9uIGkuTVg4TVEgU09DLgo+ID4g
PiArCj4gPiA+ICBjb25maWcgUEhZX0ZTTF9JTVg4UU1fSFNJTwo+ID4gPiAgICAgICB0cmlzdGF0
ZSAiRnJlZXNjYWxlIGkuTVg4UU0gSFNJTyBQSFkiCj4gPiA+ICAgICAgIGRlcGVuZHMgb24gT0Yg
JiYgSEFTX0lPTUVNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFr
ZWZpbGUgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvTWFrZWZpbGUKPiA+ID4gaW5kZXggNjU4ZWFj
N2QwYTYyMi4uYTk0NmI4NzkwNTQ5OCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvZnJl
ZXNjYWxlL01ha2VmaWxlCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9NYWtlZmls
ZQo+ID4gPiBAQCAtMSw0ICsxLDUgQEAKPiA+ID4gICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAtb25seQo+ID4gPiArb2JqLSQoQ09ORklHX1BIWV9GU0xfSU1YOE1RX0hEUFRYKSAg
ICs9IHBoeS1mc2wtaW14OG1xLWhkcHR4Lm8KPiA+ID4gIG9iai0kKENPTkZJR19QSFlfRlNMX0lN
WDhNUV9VU0IpICAgICArPSBwaHktZnNsLWlteDhtcS11c2Iubwo+ID4gPiAgb2JqLSQoQ09ORklH
X1BIWV9NSVhFTF9MVkRTX1BIWSkgICAgICs9Cj4gPiBwaHktZnNsLWlteDhxbS1sdmRzLXBoeS5v
Cj4gPiA+ICBvYmotJChDT05GSUdfUEhZX01JWEVMX01JUElfRFBIWSkgICAgKz0gcGh5LWZzbC1p
bXg4LW1pcGktZHBoeS5vCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUv
cGh5LWZzbC1pbXg4bXEtaGRwdHguYwo+ID4gYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1pbXg4bXEtaGRwdHguYwo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAw
MDAwMDAwMDAwMDAwLi5lOTk0ODc2MjJkNDNjCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysr
IGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLWhkcHR4LmMKPiA+ID4gQEAg
LTAsMCArMSwxMjM3IEBACj4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MC1vbmx5Cj4gPiA+ICsvKgo+ID4gPiArICogQ2FkZW5jZSBEUC9IRE1JIFBIWSBkcml2ZXIKPiA+
ID4gKyAqCj4gPiA+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjItMjAyNCBOWFAgU2VtaWNvbmR1Y3Rv
ciwgSW5jLgo+ID4gPiArICovCj4gPiA+ICsjaW5jbHVkZSA8ZHJtL2JyaWRnZS9jZG5zLW1oZHAt
aGVscGVyLmg+Cj4gPgo+ID4gU3RpbGwsIEknZCBhc2sgZm9yIGRyaXZlcnMvc29jIGluc3RlYWQu
Cj4KPiBJZiBwdXQgaXQgaW4gZHJpdmVycy9zb2MsIHNob3VsZCBJIGNyZWF0ZSBhIG5ldyBkaXJl
Y3RvcnkgY2FsbGVkIGRyaXZlcnMvc29jL2NhZGVuY2Ugb3IgcHV0IGl0IGluIGRyaXZlcnMvc29j
L2lteD8KPgo+IFRoZSBtaGRwIGhlbHBlcnMgd2lsbCBzaGFyZSBjb2RlIGJldHdlZW4gY2Rucy1t
aGRwODUwMSBhbmQgY2Rucy1taGRwODU0Ni4KPiBJIHByZWZlciBjcmVhdGluZyBhIG5ldyBkaXJl
Y3RvcnksIGRyaXZlcnMvc29jL2NhZGVuY2UsIGJ1dCB0aGUgcHJvYmxlbSBpcyB0aGF0IGNhZGVu
Y2Ugbm90IGEgcmVhbCBTb0MuCgpJIHRoaW5rIGRyaXZlcnMvc29jL2NhZGVuY2UgaXMgZmluZS4g
UGxlYXNlIGV4cGxhaW4geW91ciBkZWNpc2lvbiBpbgp0aGUgY292ZXIgbGV0dGVyIGFuZCBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UsIHRoaXMgd2lsbCBoZWxwIG90aGVyCm1haW50YWluZXJzIHRvIHVu
ZGVyc3RhbmQgeW91LgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
