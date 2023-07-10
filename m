Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FD2EB64D9
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jul 2023 07:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpoH/Axw3NUUwRtXhxgyZbYjkwczkkywlaTBdVdOEeE=; b=C9Cr/uo9g12N31
	xQ0nMGCBj/F/ZufgINsX6H+xVQ6pW9qJuZUUIogWeoDmNRvS56u/woxwWsczaerc4Ru5fTrUmSbSF
	3o4hOzCe3aOd9QHQ8GM/wmV/vYBle+nHPsSjNzD/eCfqR/NGE5hIAXMLjHcHAeYAWUM0Vrls/po06
	ZmEX0afX+glsxZHbOxCN9E3rHs2PXiCQKaIJC0L+oFgXXXlZVokYvgn0p+twk1L8m27oPAEfXmchc
	qnId6uTiiyp0sSDSNNICmJEJzOKQR/mSjEv1xl4AuTbboEjJQ92ErRf9NllJZaVaaEgSFZDlpeJZf
	IK0nJ/cQWetmSTFNX5GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIlM0-00AhnD-1E;
	Mon, 10 Jul 2023 07:30:40 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIlLw-00AhjQ-2k
	for linux-phy@lists.infradead.org;
	Mon, 10 Jul 2023 07:30:39 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-c4dd264359cso3941839276.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Jul 2023 00:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688974235; x=1691566235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oHl7fngjoZwHTC555h5RUzOAC7pZIoIYa9Mwto78lz8=;
        b=lkrRgScJqf1Nw2g0ZJDW7UYJfVZu6eF+vC1cpqOvcDFGTpKmkaWBV3dSDN6RYDg53L
         /scvszYKpui2Xnk3z6kdhx216eezRZAgLBqt1WW84cGx1aR0lQkUCZFtAnbwYI969D5d
         yOnaXV4anp/NDbt0BrotYiIAKeYLPDqgQOEu4CfuWVQCWiRmoBnd/39g4OV1dYaFFYMZ
         AjW2NGFp8Jn5wizmcI/yY1YdYS0CxKYHMM/ywLppHolPfUw9fMLF00rEQ5J34IL8QfJ+
         UfQfA0nZlNXhn7UMJHoHPkqQ6qmKfwHe6i5biYNoTsa7LY6q8FbPBLu3TPOV1GAvuIWb
         qV/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688974235; x=1691566235;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oHl7fngjoZwHTC555h5RUzOAC7pZIoIYa9Mwto78lz8=;
        b=e7KNYLGRsbddsVbTWX+VNitvnDfQX7lXGppO1tiUnjK6Nt0FACoNB0uG9E1P6Pc+mq
         KyNtzF8ZJDApHoyVCAZqA62llxxyZc0S171ZFyx1nbIqmk9qNvFrG3tfZQ37gZ/ADl8d
         DA8lzvZFfLEr58GmA//xUHKFMfMx2ZlC0XK6kRUNGr/aTUJTib0/pqCCNGo0rmLcFCSM
         VilFV8O1cgWLZnYbxHr7D0iBWDB3IuM1OEdnRABwOzpGqwKPY/py+6Ocs9DGPgvljznD
         Kq2czu05p0l5+8I0dBWOh82tZi6jfFmKZtQtu1yzOHlUoAKB6mLX022nVOR/8ew1Ypsg
         tGHA==
X-Gm-Message-State: ABy/qLbJ90k1aSzsg+WH8+NtCtIE9S+Zvq98GEPgRpGCMDsQFy5L3Xrf
	932eZZTjYhjEErkZaxWoXuy5fQcZYtrWO9xqTpPBpw==
X-Google-Smtp-Source: APBJJlEC1ydkMDnqyBVzJGdir+OwRhrUWZ1vDb1g7pXtOn40Y5bgDJbUUwUb1y7kb1Ggfujl5HeIIubX3iiGnia+ngw=
X-Received: by 2002:a25:9904:0:b0:c60:c70d:b4de with SMTP id
 z4-20020a259904000000b00c60c70db4demr10948008ybn.39.1688974235384; Mon, 10
 Jul 2023 00:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1686729444.git.Sandor.yu@nxp.com> <cec469206a166c4b070fd7d7bbf89a8df656ccc6.1686729444.git.Sandor.yu@nxp.com>
 <6f590bb6-7d17-3ae8-684d-2d4403d6ff55@linaro.org> <PAXPR04MB9448598256524162A74F0311F430A@PAXPR04MB9448.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB9448598256524162A74F0311F430A@PAXPR04MB9448.eurprd04.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 10 Jul 2023 10:30:24 +0300
Message-ID: <CAA8EJpoNTvaMKcn7ben=Ai7CkGcUnZ2g7UiH7Oy4zTX2zzKAxg@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH v6 4/8] phy: Add HDMI configuration options
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	"robert.foss@linaro.org" <robert.foss@linaro.org>, 
	"Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, 
	Oliver Brown <oliver.brown@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_003036_901789_1C87E05E 
X-CRM114-Status: GOOD (  31.53  )
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

T24gTW9uLCAxMCBKdWwgMjAyMyBhdCAxMDoyOCwgU2FuZG9yIFl1IDxzYW5kb3IueXVAbnhwLmNv
bT4gd3JvdGU6Cj4KPiBIaSBEbWl0cnksCj4KPiBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMsCj4K
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBEbWl0cnkgQmFyeXNoa292
IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4gPiBTZW50OiAyMDIz5bm0NuaciDI15pel
IDI6MDIKPiA+IFRvOiBTYW5kb3IgWXUgPHNhbmRvci55dUBueHAuY29tPjsgYW5kcnplai5oYWpk
YUBpbnRlbC5jb207Cj4gPiBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnOyByb2JlcnQuZm9zc0Bs
aW5hcm8ub3JnOwo+ID4gTGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tOyBqb25hc0Br
d2lib28uc2U7Cj4gPiBqZXJuZWouc2tyYWJlY0BnbWFpbC5jb207IGFpcmxpZWRAZ21haWwuY29t
OyBkYW5pZWxAZmZ3bGwuY2g7Cj4gPiByb2JoK2R0QGtlcm5lbC5vcmc7IGtyenlzenRvZi5rb3ps
b3dza2krZHRAbGluYXJvLm9yZzsKPiA+IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU7IGZlc3RldmFtQGdtYWlsLmNvbTsKPiA+IHZrb3VsQGtlcm5lbC5vcmc7IGRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7Cj4gPiBkZXZpY2V0cmVlQHZnZXIua2VybmVs
Lm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+ID4gbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IENj
OiBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+
OyBPbGl2ZXIgQnJvd24KPiA+IDxvbGl2ZXIuYnJvd25AbnhwLmNvbT4KPiA+IFN1YmplY3Q6IFtF
WFRdIFJlOiBbUEFUQ0ggdjYgNC84XSBwaHk6IEFkZCBIRE1JIGNvbmZpZ3VyYXRpb24gb3B0aW9u
cwoKSXMgdGhpcyBwYXJ0IG5lY2Vzc2FyeT8KCj4gPgo+ID4gQ2F1dGlvbjogVGhpcyBpcyBhbiBl
eHRlcm5hbCBlbWFpbC4gUGxlYXNlIHRha2UgY2FyZSB3aGVuIGNsaWNraW5nIGxpbmtzIG9yCj4g
PiBvcGVuaW5nIGF0dGFjaG1lbnRzLiBXaGVuIGluIGRvdWJ0LCByZXBvcnQgdGhlIG1lc3NhZ2Ug
dXNpbmcgdGhlICdSZXBvcnQKPiA+IHRoaXMgZW1haWwnIGJ1dHRvbgo+ID4KPiA+Cj4gPiBPbiAx
NS8wNi8yMDIzIDA0OjM4LCBTYW5kb3IgWXUgd3JvdGU6Cj4gPiA+IEFsbG93IEhETUkgUEhZcyB0
byBiZSBjb25maWd1cmVkIHRocm91Z2ggdGhlIGdlbmVyaWMgZnVuY3Rpb25zIHRocm91Z2gKPiA+
ID4gYSBjdXN0b20gc3RydWN0dXJlIGFkZGVkIHRvIHRoZSBnZW5lcmljIHVuaW9uLgo+ID4gPgo+
ID4gPiBUaGUgcGFyYW1ldGVycyBhZGRlZCBoZXJlIGFyZSBiYXNlZCBvbiBIRE1JIFBIWSBpbXBs
ZW1lbnRhdGlvbgo+ID4gPiBwcmFjdGljZXMuICBUaGUgY3VycmVudCBzZXQgb2YgcGFyYW1ldGVy
cyBzaG91bGQgY292ZXIgdGhlIHBvdGVudGlhbAo+ID4gPiB1c2Vycy4KPiA+ID4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogU2FuZG9yIFl1IDxTYW5kb3IueXVAbnhwLmNvbT4KPiA+ID4gLS0tCj4gPiA+
ICAgaW5jbHVkZS9saW51eC9waHkvcGh5LWhkbWkuaCB8IDM4Cj4gPiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKPiA+ID4gICBpbmNsdWRlL2xpbnV4L3BoeS9waHkuaCAgICAg
IHwgIDcgKysrKysrLQo+ID4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3Bo
eS9waHktaGRtaS5oCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BoeS9w
aHktaGRtaS5oCj4gPiA+IGIvaW5jbHVkZS9saW51eC9waHkvcGh5LWhkbWkuaCBuZXcgZmlsZSBt
b2RlIDEwMDY0NCBpbmRleAo+ID4gPiAwMDAwMDAwMDAwMDAuLjU3NjVhYTViYzE3NQo+ID4gPiAt
LS0gL2Rldi9udWxsCj4gPiA+ICsrKyBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS1oZG1pLmgKPiA+
ID4gQEAgLTAsMCArMSwzOCBAQAo+ID4gPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAgKi8KPiA+ID4gKy8qCj4gPiA+ICsgKiBDb3B5cmlnaHQgMjAyMiBOWFAKPiA+ID4gKyAq
Lwo+ID4gPiArCj4gPiA+ICsjaWZuZGVmIF9fUEhZX0hETUlfSF8KPiA+ID4gKyNkZWZpbmUgX19Q
SFlfSERNSV9IXwo+ID4gPiArCj4gPiA+ICsvKioKPiA+ID4gKyAqIFBpeGVsIEVuY29kaW5nIGFz
IEhETUkgU3BlY2lmaWNhdGlvbgo+ID4gPiArICogUkdCLCBZVVY0MjIsIFlVVjQ0NDpIRE1JIFNw
ZWNpZmljYXRpb24gMS40YSBTZWN0aW9uIDYuNQo+ID4gPiArICogWVVWNDIwOiBIRE1JIFNwZWNp
ZmljYXRpb24gMi5hIFNlY3Rpb24gNy4xICAqLyBlbnVtCj4gPiA+ICtoZG1pX3BoeV9jb2xvcnNw
YWNlIHsKPiA+ID4gKyAgICAgSERNSV9QSFlfQ09MT1JTUEFDRV9SR0IsICAgICAgICAvKiBSR0Ig
NDo0OjQgKi8KPiA+ID4gKyAgICAgSERNSV9QSFlfQ09MT1JTUEFDRV9ZVVY0MjIsICAgICAvKiBZ
Q2JDciA0OjI6MiAqLwo+ID4gPiArICAgICBIRE1JX1BIWV9DT0xPUlNQQUNFX1lVVjQ0NCwgICAg
IC8qIFlDYkNyIDQ6NDo0ICovCj4gPiA+ICsgICAgIEhETUlfUEhZX0NPTE9SU1BBQ0VfWVVWNDIw
LCAgICAgLyogWUNiQ3IgNDoyOjAgKi8KPiA+ID4gKyAgICAgSERNSV9QSFlfQ09MT1JTUEFDRV9S
RVNFUlZFRDQsCj4gPiA+ICsgICAgIEhETUlfUEhZX0NPTE9SU1BBQ0VfUkVTRVJWRUQ1LAo+ID4g
PiArICAgICBIRE1JX1BIWV9DT0xPUlNQQUNFX1JFU0VSVkVENiwKPiA+ID4gK307Cj4gPgo+ID4g
VGhpcyBlbnVtIGR1cGxpY2F0ZXMgZW51bSBoZG1pX2NvbG9yc3BhY2UgZnJvbSA8bGludXgvaGRt
aS5oPiBIRE1JIDIuMAo+ID4gZGVmaW5lcyAnNycgdG8gYmUgSURPLWRlZmluZWQuCj4gPgo+ID4g
V291bGQgaXQgYmUgYmV0dGVyIHRvIHVzZSB0aGF0IGVudW0gaW5zdGVhZD8KPiBBY2NlcHQuIEkg
d2lsbCBjcmVhdGUgaGVhZCBmaWxlIGhkbWlfY29sb3JzcGFjZS5oIHRvIHJldXNlIGVudW0gaGRt
aV9jb2xvcnNwYWNlIGluIDxsaW51eC9oZG1pLmg+LgoKSG1tLCB5b3UgbmVlZCBhbm90aGVyIGhl
YWRlciBmaWxlIHRvIHJldXNlIHRoaXMgZW51bS4KCj4KPiBCLlIKPiBTYW5kb3IKPiA+Cj4gPiA+
ICsKPiA+ID4gKy8qKgo+ID4gPiArICogc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19oZG1pIC0g
SERNSSBjb25maWd1cmF0aW9uIHNldAo+ID4gPiArICogQHBpeGVsX2Nsa19yYXRlOiAgUGl4ZWwg
Y2xvY2sgb2YgdmlkZW8gbW9kZXMgaW4gS0h6Lgo+ID4gPiArICogQGJwYzogTWF4aW11bSBiaXRz
IHBlciBjb2xvciBjaGFubmVsLgo+ID4gPiArICogQGNvbG9yX3NwYWNlOiBDb2xvcnNwYWNlIGlu
IGVudW0gaGRtaV9waHlfY29sb3JzcGFjZS4KPiA+ID4gKyAqCj4gPiA+ICsgKiBUaGlzIHN0cnVj
dHVyZSBpcyB1c2VkIHRvIHJlcHJlc2VudCB0aGUgY29uZmlndXJhdGlvbiBzdGF0ZSBvZiBhIEhE
TUkgcGh5Lgo+ID4gPiArICovCj4gPiA+ICtzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2hkbWkg
ewo+ID4gPiArICAgICB1bnNpZ25lZCBpbnQgcGl4ZWxfY2xrX3JhdGU7Cj4gPiA+ICsgICAgIHVu
c2lnbmVkIGludCBicGM7Cj4gPiA+ICsgICAgIGVudW0gaGRtaV9waHlfY29sb3JzcGFjZSBjb2xv
cl9zcGFjZTsgfTsKPiA+ID4gKwo+ID4gPiArI2VuZGlmIC8qIF9fUEhZX0hETUlfSF8gKi8KPiA+
Cj4gPiBbc2tpcHBlZCB0aGUgcmVzdF0KPiA+Cj4gPiAtLQo+ID4gV2l0aCBiZXN0IHdpc2hlcwo+
ID4gRG1pdHJ5Cj4KCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
