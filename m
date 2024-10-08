Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C5FBCEF174
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGeutLJT02xYh3IbRhmDbz7GsspWif8+6inIeGetM8I=; b=rXD+che6sW7B/a
	sdKfXybUhh4e8/3TzBXKe+t3UeIbN+9VhMEhLS46LhSq7poOtbOaZ8wJJLOogKxUdFjgJPiaCkpg+
	vIQYGx3wwPSojM/NUOX0Jv2PIO1fJSL6Fk5fhifQ6wj7vZktFPJSesf4nF0GwhZt0uQpBurzSs03d
	JPalRs2iV4Fq2uTqfB7Y44YkY6XmcWEMuqTPd4cICXH9+TC4YR4FMbV9LcvMWiGUeZxoq6ybXvEbu
	HXPjtKvGemTAYELWEwnIH1a9zEOLBL9gvY8061pT/RL3rTXfBwuFV+C6gXz25UKgDLUZeLEWg3PtQ
	3aqtDXTSFHUj7MmrWqjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syAKq-000000060Or-1Q5M;
	Tue, 08 Oct 2024 13:33:08 +0000
Received: from mail-yw1-f174.google.com ([209.85.128.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syABk-00000005y1u-2B0Z;
	Tue, 08 Oct 2024 13:23:47 +0000
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6e2b9e945b9so47241567b3.0;
        Tue, 08 Oct 2024 06:23:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728393821; x=1728998621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nCY3NIx/eYd1xSXTQBGOOuko+7cH0vhvxDiWRgqK6Zw=;
        b=BuNLDWPm4kcXrrekX161cypK76IMWj9k2gdlJrJF9/+kBN2dXLJ70hNocT8qr9tia5
         XtQ797Ck5UMNpb21SjUju8FU40hKKnnH5mpNU6n95Yb65Yve0zHJELlYWfaXiyti6dnU
         xyVNM4GDsLK4/ZVnEn2D8iOq+5gwheJZ9kFUKZzRL9BuSglpkaLoqwpfdWTGFOyC6TeP
         cL7+mwzOUQKb00nhAOXJ0Gsr9tzfmn3u3QH87MDEWhBYZgQkMHSVCsKJOGWnV2AYLw2p
         8LwQL4Y8gLAi53aalzVgTMEAcdK1POggZKB6CXI2L8e/QHlFur8QoaxSG6/468FZLrXh
         EtYQ==
X-Forwarded-Encrypted: i=1; AJvYcCV17hebaFuzUButQwbOAgen5Ez82CaXAAU1Q/6lGpmwEoYUrHsQbeeBp4StKADnK0Xwu0qWA41MrWdysD5bxxiM@lists.infradead.org, AJvYcCXwt6Q/6l01mDVdX8OxcLuN0k6qogtmaqxMa5PFAlnLcmFsPT22bCDd5YTFB5uGTN4hLYojr9nvJH42@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7RRrAZNSlqmbaVvxs8P378Zt8Ah8/dFV4pc3Ll7FdqwhMQd6m
	VPxnscnDpdSxe0OxYtZgKiAuISJyBzguRm8kh21ctwbvg0yujqWJLP5qN7BY
X-Google-Smtp-Source: AGHT+IH4Bl1Yp8+R3zQ5GVOQsCAFJ/eQ+MC8fp0bssUWjjZHWBhoii/a82YFGFkMdG2rcX6WcQ1iwg==
X-Received: by 2002:a05:690c:81:b0:6e2:f61e:c52 with SMTP id 00721157ae682-6e2f61e3ec4mr64528007b3.34.1728393821270;
        Tue, 08 Oct 2024 06:23:41 -0700 (PDT)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com. [209.85.128.176])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d93f8801sm14140137b3.141.2024.10.08.06.23.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 06:23:40 -0700 (PDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6dde476d3dfso44521337b3.3;
        Tue, 08 Oct 2024 06:23:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWG79VnA+zS4pQ+I5tlpLDnxF/f3xL/EwM16a9PMYy8qpCsBt3bkcZDanHl2UTK1Cto7jKCAW70G6qB@lists.infradead.org, AJvYcCXNO5XXYzVix0OoUuZak9uXYm0qtaMF/5LCWn8uStcyN8eJ/ogn6YK0TFAsAi/I1QRllM2v0muyLXhJNNlUeokw@lists.infradead.org
X-Received: by 2002:a05:690c:fc2:b0:6e2:1090:af31 with SMTP id
 00721157ae682-6e2c6fc7e31mr116307267b3.3.1728393819734; Tue, 08 Oct 2024
 06:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-6-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-6-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 15:23:26 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU_kyPb9VAosStrwmQg9vOMgyogQu==u1XQEBWFQLbSdQ@mail.gmail.com>
Message-ID: <CAMuHMdU_kyPb9VAosStrwmQg9vOMgyogQu==u1XQEBWFQLbSdQ@mail.gmail.com>
Subject: Re: [PATCH 05/16] soc: renesas: sysc: Move RZ/G3S SoC detection on
 SYSC driver
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	ulf.hansson@linaro.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_062344_586528_E9913819 
X-CRM114-Status: GOOD (  24.08  )
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

SGkgQ2xhdWRpdSwKCk9uIFRodSwgQXVnIDIyLCAyMDI0IGF0IDU6MjjigK9QTSBDbGF1ZGl1IDxj
bGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxj
bGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPgo+IE5vdyB0aGF0IHdlIGhhdmUgYSBk
cml2ZXIgZm9yIFNZU0MgZHJpdmVyIGZvciBSWi9HM1MgbW92ZSB0aGUgU29DIGRldGVjdGlvbgo+
IGZvciBSWi9HM1MgaW4gU1lTQyBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1ZGl1IEJl
em5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+CgpUaGFua3MgZm9yIHlvdXIg
cGF0Y2ghCgo+IC0tLSBhL2RyaXZlcnMvc29jL3JlbmVzYXMvcnpnM3Mtc3lzYy5jCj4gKysrIGIv
ZHJpdmVycy9zb2MvcmVuZXNhcy9yemczcy1zeXNjLmMKPiBAQCAtODUsNiArOTcsMzkgQEAgc3Rh
dGljIGludCByemczc19zeXNjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
ICAgICAgICBzeXNjLT5kZXYgPSBkZXY7Cj4gICAgICAgICBzcGluX2xvY2tfaW5pdCgmc3lzYy0+
bG9jayk7Cj4KPiArICAgICAgIGNvbXBhdGlibGUgPSBvZl9nZXRfcHJvcGVydHkoZGV2LT5vZl9u
b2RlLCAiY29tcGF0aWJsZSIsIE5VTEwpOwo+ICsgICAgICAgaWYgKCFjb21wYXRpYmxlKQo+ICsg
ICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKClBsZWFzZSB1c2Ugb2ZfbWF0Y2hfZGV2aWNl
KCkgYW5kIG9mX2RldmljZV9pZC5jb21wYXRpYmxlIGluc3RlYWQuCgo+ICsKPiArICAgICAgIHNv
Y19pZF9zdGFydCA9IHN0cmNocihjb21wYXRpYmxlLCAnLCcpICsgMTsKPiArICAgICAgIHNvY19p
ZF9lbmQgPSBzdHJjaHIoY29tcGF0aWJsZSwgJy0nKTsKPiArICAgICAgIHNpemUgPSBzb2NfaWRf
ZW5kIC0gc29jX2lkX3N0YXJ0Owo+ICsgICAgICAgaWYgKHNpemUgPiAzMikKPiArICAgICAgICAg
ICAgICAgc2l6ZSA9IDMyOwo+ICsgICAgICAgc3Ryc2NweShzb2NfaWQsIHNvY19pZF9zdGFydCwg
c2l6ZSk7Cj4gKwo+ICsgICAgICAgc29jX2Rldl9hdHRyID0gZGV2bV9remFsbG9jKGRldiwgc2l6
ZW9mKCpzb2NfZGV2X2F0dHIpLCBHRlBfS0VSTkVMKTsKPiArICAgICAgIGlmICghc29jX2Rldl9h
dHRyKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiArCj4gKyAgICAgICBzb2Nf
ZGV2X2F0dHItPmZhbWlseSA9ICJSWi9HM1MiOwo+ICsgICAgICAgc29jX2Rldl9hdHRyLT5zb2Nf
aWQgPSBkZXZtX2tzdHJkdXAoZGV2LCBzb2NfaWQsIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYg
KCFzb2NfZGV2X2F0dHItPnNvY19pZCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07
Cj4gKwo+ICsgICAgICAgZGV2aWQgPSByZWFkbChzeXNjLT5iYXNlICsgUlpHM1NfU1lTX0xTSV9E
RVZJRCk7Cj4gKyAgICAgICByZXZpc2lvbiA9IEZJRUxEX0dFVChSWkczU19TWVNfTFNJX0RFVklE
X1JFViwgZGV2aWQpOwo+ICsgICAgICAgc29jX2Rldl9hdHRyLT5yZXZpc2lvbiA9IGRldm1fa2Fz
cHJpbnRmKGRldiwgR0ZQX0tFUk5FTCwgIiV1IiwgcmV2aXNpb24pOwo+ICsgICAgICAgaWYgKCFz
b2NfZGV2X2F0dHItPnJldmlzaW9uKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsK
PiArCj4gKyAgICAgICBkZXZfaW5mbyhkZXYsICJEZXRlY3RlZCBSZW5lc2FzICVzICVzIFJldiAl
c1xuIiwgc29jX2Rldl9hdHRyLT5mYW1pbHksCj4gKyAgICAgICAgICAgICAgICBzb2NfZGV2X2F0
dHItPnNvY19pZCwgc29jX2Rldl9hdHRyLT5yZXZpc2lvbik7Cj4gKwo+ICsgICAgICAgc29jX2Rl
diA9IHNvY19kZXZpY2VfcmVnaXN0ZXIoc29jX2Rldl9hdHRyKTsKPiArICAgICAgIGlmIChJU19F
UlIoc29jX2RldikpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKHNvY19kZXYpOwo+
ICsKPiAgICAgICAgIHJldHVybiByemczc19zeXNjX3Jlc2V0X3Byb2JlKHN5c2MsICJyZXNldCIs
IDApOwo+ICB9CgpNeSBmaXJzdCB0aG91Z2h0IHdhcyAib2ggbm8sIG5vdyB0aGlzIGlzIGhhbmRs
ZWQvZHVwbGljYXRlZCBpbiB0d28KcGxhY2VzIiwgYnV0IGlmIHlvdSBsYXRlciBtaWdyYXRlIHRo
ZSBjaGlwIGlkZW50aWZpY2F0aW9uIHN1cHBvcnQgZm9yCnRoZSByZXN0IG9mIFJaL0cyTCBkZXZp
Y2VzIHRvIGhlcmUsIGl0IG1heSBzdGFydCB0byBsb29rIGJldHRlciA7LSkKCk9uZSBjYXZlYXQg
aXMgdGhhdCBzb2NfZGV2aWNlX21hdGNoKCkgY2FuIGJlIGNhbGxlZCBxdWl0ZSBlYXJseSBpbgp0
aGUgYm9vdCBwcm9jZXNzLCBoZW5jZSByZW5lc2FzX3NvY19pbml0KCkgaXMgYW4gZWFybHlfaW5p
dGNhbGwoKS4KU28gcmVnaXN0ZXJpbmcgdGhlIHNvY19kZXZpY2UgZnJvbSBhIHBsYXRmb3JtX2Ry
aXZlciBtaWdodCBiZSB0b28gbGF0ZSwKZXNwZWNpYWxseSBzaW5jZSBmd19kZXZsaW5rcyB3b24n
dCBoZWxwIHlvdSBpbiB0aGlzIHBhcnRpY3VsYXIgY2FzZS4KSG93ZXZlciwgSSB0aGluayBhbGwg
cmVhbCBlYXJseSBjYWxscyB0byBzb2NfZGV2aWNlX21hdGNoKCkgYXJlIGdvbmUKc2luY2UgdGhl
IHJlbW92YWwgb2YgdGhlIHN1cHBvcnQgZm9yIFItQ2FyIEgzIEVTMS54LCBhbmQgYWxsIHJlbWFp
bmluZwpjYWxscyBpbXBhY3Qgb25seSBSLUNhciBhbmQgUlovR3ggKG5vdCBHMkwpIFNvQ3MuCgpH
cntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2Vl
cnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBn
ZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2hu
aWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5n
IHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtl
IHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
