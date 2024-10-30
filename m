Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA038D6B6B3
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKXuHQUmwYXJkbzy5MJ2/2DaJRB+D/LzU7S0KuMtQHo=; b=Noexuv8Q9jeOiX
	K7hro/VxxOZXIwYhV7VHUQ+Q1oixAzr9c5SIg9HyWmBFn6u0Kw22TX81UhUy1dUsVwTF5Fno5DPu8
	amuHtudWOl3evdey+5L6iPIjoBjWv6wPpul4MmHm0Vm5BLel1WKrPFcD7UDmxCGdmFiy1I7Shv6wj
	RhSeUUJOrXGPuUGFPBGe+rvmia9RrQKQOkPk9fGrh/An2A6zzYWGaNgrCDkvFdx3QEnw9J4XNoykH
	NS2Bwv2GvhC9imaenwxLmNLRy1KN9fTVRdaXYeO6025bIXHhKDzof38XqJQN1VZLFuGKwhmwiN/Uh
	xbvkAurIecLEWO7O1/bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6CWy-00000001HjW-03Sl;
	Wed, 30 Oct 2024 17:30:52 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6CUb-00000001HTY-3hqu;
	Wed, 30 Oct 2024 17:28:27 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-71e983487a1so39132b3a.2;
        Wed, 30 Oct 2024 10:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730309304; x=1730914104; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MnkN8ptr3KGmpx2Uv+pp+uUkuHBCH11BckHc8GqWeDg=;
        b=CYnYsjdEwm8vLAOwuiHYObpL/fN48iQAUnEJ/3p4CG2OT3NNcVMwPIeQDTYGiU1xRk
         6PBbVj51sRcXqRoSeM26R+iwaOqYgJATEQVFY0X0H6OJaOoGJoguhjA1+XFbIA41UxGT
         r+bAQJqUKfHTFc9Wf8hhgx27qc98LcyQGD6HJjHmR4BMD4VjIs/7DbVsMtOyT1zzo9wY
         05g1HkfTz+oAWdzEEYMqk5atv5pyea2S7hcoiULlcDJ5xo0WnnIRIib6hNHKmshMat5V
         mvrcMIntUXx8txLv26A8dI5WgTg6h0krMR0PYS+UHoHxH+70B5SSKDFB1xd1ZSPrvI25
         6zxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730309304; x=1730914104;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MnkN8ptr3KGmpx2Uv+pp+uUkuHBCH11BckHc8GqWeDg=;
        b=edjNnitZ2zXscrW3sfiFu/qGgZFecvqsrFo8jMk1EWQAOeFg1/CYDkrWh3kasRK4Zc
         dicPYeXV/sni8xUAUyfh2pldiygrM6PVyE9zpfOQ4NyGOTDI91tzWDQtBlCI53V/Cg4C
         YiZAbDpqRyUfJpS/7+Lxa1QKjesB+symNPi57Ffnyz7UYqPz4e2qFPk4EV/wneF08Yrv
         AjXbJfvVspYHAXapfZ04qCxOLjjU4xWd8lYYt1pMjmQVuanIMH/QIoTwZI1rBt3hTVsm
         E8f0trF0K9cMRDTe15EZcZ59Yv+p9SJlaGCHw5FvVpFWHnKNzWpwGV1h/Ini6sL7tMJd
         HX0A==
X-Forwarded-Encrypted: i=1; AJvYcCWUuVz2xDsoJNapdwaj2Ie4tHBNZJTeN9XgO/jkoNe5LjeQJtyZ0QcN8pTFmm7b7u1wk37l6gGhqxd4DgAeXLWB@lists.infradead.org, AJvYcCXTM9vbi1J1ZapaGeONy5X7tSBx8iCc4v14hVZuN/C/Cyh1jw7zDXn4SJkRMA+sD7h6szV+yNknPinA@lists.infradead.org
X-Gm-Message-State: AOJu0YwIWDkz7alNODQNL1d8lkXMvulPFKs7Y8aoCVEg2wypBT9/j/1j
	gD09unsX7PXfffhnkNXlETC8dB7c8RrOC5t5s/UUAAghod1ENb4EVWu2U5Rud9YDDiSFnnebgrx
	rnrBCDWzaPhwqM3tRyePLZxRVTkc=
X-Google-Smtp-Source: AGHT+IHW4Ei/MHebO474qYJ4FnNy3KOOcESKnX+HK1imXciZaQOAIYn479DmypH3MHAeRnnMNdgGnRLoV9bhVu1WXCI=
X-Received: by 2002:a05:6a00:3c96:b0:71d:f4ef:6b3a with SMTP id
 d2e1a72fcca58-720b9db22bfmr624360b3a.21.1730309303938; Wed, 30 Oct 2024
 10:28:23 -0700 (PDT)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20241025080544.136280-1-mailinglist1@johanneskirchmair.de>
 <6d039ecf-0e48-415a-afd8-6bfce60081ae@kontron.de>
In-Reply-To: <6d039ecf-0e48-415a-afd8-6bfce60081ae@kontron.de>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 30 Oct 2024 12:28:12 -0500
Message-ID: <CAHCN7xKevGWipBSch6gKVeJRT9Zb8QTchhxg3c=96XhnAvnjZw@mail.gmail.com>
Subject: Re: imx8mp: HDMI display blank/black problems
To: Frieder Schrempf <frieder.schrempf@kontron.de>
Cc: mailinglist1@johanneskirchmair.de, johannes.kirchmair@skidata.com, 
	Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	alexander.stein@ew.tq-group.com, andrzej.hajda@intel.com, 
	catalin.marinas@arm.com, conor+dt@kernel.org, daniel@ffwll.ch, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	festevam@gmail.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	kernel@pengutronix.de, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	l.stach@pengutronix.de, linux-arm-kernel@lists.infradead.org, 
	linux-imx@nxp.com, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	maarten.lankhorst@linux.intel.com, marex@denx.de, mripard@kernel.org, 
	neil.armstrong@linaro.org, p.zabel@pengutronix.de, rfoss@kernel.org, 
	robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, 
	tzimmermann@suse.de, ulf.hansson@linaro.org, victor.liu@nxp.com, 
	vkoul@kernel.org, will@kernel.org, Saravana Kannan <saravanak@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_102825_976230_67699404 
X-CRM114-Status: GOOD (  25.80  )
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

T24gV2VkLCBPY3QgMzAsIDIwMjQgYXQgNDowMeKAr0FNIEZyaWVkZXIgU2NocmVtcGYKPGZyaWVk
ZXIuc2NocmVtcGZAa29udHJvbi5kZT4gd3JvdGU6Cj4KPiBIaSBKb2hhbm5lcywKPgo+IE9uIDI1
LjEwLjI0IDEwOjA1IEFNLCBtYWlsaW5nbGlzdDFAam9oYW5uZXNraXJjaG1haXIuZGUgd3JvdGU6
Cj4gPiBbU2llIGVyaGFsdGVuIG5pY2h0IGjDpHVmaWcgRS1NYWlscyB2b24gbWFpbGluZ2xpc3Qx
QGpvaGFubmVza2lyY2htYWlyLmRlLiBXZWl0ZXJlIEluZm9ybWF0aW9uZW4sIHdhcnVtIGRpZXMg
d2ljaHRpZyBpc3QsIGZpbmRlbiBTaWUgdW50ZXIgaHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNl
bmRlcklkZW50aWZpY2F0aW9uIF0KPiA+Cj4gPiBIZXksCj4gPiBXZSBoYWQgc29tZSBwcm9ibGVt
cyB3aXRoIHRoZSBoZG1pIG9uIHRoZSBpbXg4bXAgYW5kIHdhbnRlZCB0byBsZWF2ZSwgd2hhdCB3
ZSBmb3VuZCBvdXQgYWJvdXQgaXQsIHNvbWV3aGVyZSBmb3Igb3RoZXJzIHRvIGZpbmQgaXQuCj4g
Pgo+ID4gVGhlIHByb2JsZW0gd2FzIHRoYXQgb3VyIGhkbWkgZGlzcGxheSBzb21ldGltZXMgc3Rh
eWVkIGJsYW5rIGFmdGVyIGhvdCBwbHVnZ2luZyBhbmQgc29tZXRpbWVzIGF0IHN0YXJ0dXAuIE9u
IG9sZGVyIGtlcm5lbCB2ZXJzaW9ucyA2LjYgd2UgZGlkIG5vdCBoYXZlIHRoZSBwcm9ibGVtIHdp
dGggdGhlIG5vdCBtYWlubGluZWQgaGRtaSBwYXRjaGVzLgo+ID4gV2UgdHJhY2tlZCB0aGUgY29t
bWl0IGRvd24gdGhhdCBpbnRyb2R1Y2VkIHRoZSBwcm9ibGVtIGZvciB1cy4gSXQgd2FzIHRoZSBm
b2xsb3dpbmcg4oCcZHJpdmVyIGNvcmU6IEVuYWJsZSBmd19kZXZsaW5rPXJwbSBieSBkZWZhdWx0
4oCdICBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjMxMTEzMjIwOTQ4LjgwMDg5LTEt
c2FyYXZhbmFrQGdvb2dsZS5jb20vCj4gPiBTbyB3ZSBzd2l0Y2hlZCBiYWNrIHRvIEZXX0RFVkxJ
TktfRkxBR1NfT04gdmlhIGtlcm5lbCBwYXJhbWV0ZXIuIERvbuKAmXQgcmVhbGx5IHVuZGVyc3Rh
bmQgd2hhdCB0aGUgcHJvYmxlbSB3aXRoIFJQTSBpcy4KPiA+Cj4gPiBTbywgdGhpcyBpbmZvcm1h
dGlvbiBpcyBqdXN0IGZvciByZWZlcmVuY2UuIE1heWJlIHNvbWVvbmUgaGFzIGFuIGlkZWEgd2hh
dCBpcyBnb2luZyBvbiBoZXJlLiBBbmQgaG93IHRvIGZpeCB0aGUgcHJvYmxlbSBpbiBhIG1vcmUg
cHJvcGVyIHdheS4KPgo+IFRoYW5rcyBmb3IgaW52ZXN0aWdhdGluZyBhbmQgc2hhcmluZyB5b3Vy
IHJlc3VsdHMhCj4KPiBJJ20gc2VlaW5nIHRoZSBzYW1lIHN5bXB0b21zIGFuZCBwcmV2aW91c2x5
IGZvdW5kIG91dCB0aGF0IHRoaXMgaXMKPiByZWxhdGVkIHRvIExDRElGIHVuZGVycnVuIGVycm9y
cy4gU2VlIFsxXSBmb3IgbW9yZSBpbmZvcm1hdGlvbi4KPgo+IEFkYW0gaGFzIGFsc28gc3RhcnRl
ZCB0aGlzIHRocmVhZDogWzJdLgo+Cj4gQW55d2F5LCBrbm93aW5nIHRoYXQgdGhpcyBpcyByZWxh
dGVkIHRvIGZ3X2Rldmxpbms9cnBtIGlzIHJlYWxseQo+IGhlbHBmdWwuIEkganVzdCB0cmllZCB3
aXRoIGZ3X2Rldmxpbms9b24gYW5kIHdhc24ndCBhYmxlIHRvIHNlZSBhbnkKPiBpc3N1ZXMgYW55
bW9yZS4gU28gdGhpcyBjb25maXJtcyB5b3VyIGZpbmRpbmdzLgoKSSB3YXMgb2ZmIGluIHRoZSB3
ZWVkcyB0aGlua2luZyB0aGVyZSB3YXMgc29tZXRoaW5nIHdyb25nIGluIHRpbWluZwphbmQvb3Ig
YSByYWNlIGNvbmRpdGlvbiBhcm91bmQgdGhlIFBMTCBvciBzb21ldGhpbmcuICBUaGlzIGlzIGdv
b2QKbmV3cy4KUGxlYXNlIGZvcmdpdmUgbXkgaWdub3JhbmNlLCB3aGF0IGRvZXMgZndfZGV2bGlu
ayBkbz8gIElzIHRoZXJlCnNvbWV0aGluZyB3ZSBjYW4gZG8gaW4gdGhlIGRyaXZlciBpdHNlbGYg
dG8gZm9yY2UgaXRzIGJlaGF2aW9yPwoKYWRhbQo+Cj4gSSBob3BlIHRoYXQgc29tZSBvZiB0aGUg
ZHJpdmVyIGZyYW1ld29yayBhbmQgcnVudGltZSBQTSBleHBlcnRzIGNhbiBoZWxwCj4gdG8gZmlu
ZCBvdXQgd2hhdCBpcyBhY3R1YWxseSB3cm9uZyBhbmQgaG93IHRoZSBjb3JyZWN0IGZpeCBtaWdo
dCBsb29rIGxpa2UuCj4KPiBJJ20gYWxzbyBDQy1pbmcgU2FyYXZhbmEgd2hvIGF1dGhvcmVkIHRo
ZSBjaGFuZ2UgZnJvbSBmd19kZXZsaW5rPW9uIHRvCj4gZndfZGV2bGluaz1ycG0gdG8gc2VlIGlm
IHRoZXkgaGF2ZSBhbnl0aGluZyB0byBhZGQuCj4KPiBUaGFua3MKPiBGcmllZGVyCj4KPiBbMV0K
PiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcGh5L2NvdmVyLzIw
MjQwOTA0MjMzMTAwLjExNDYxMS0xLWFmb3JkMTczQGdtYWlsLmNvbS8jMjYwMTQwNTcKPiBbMl0K
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbXgvOGNmZDMwNTItYzg1YS00MjM1LWI5YjgtNmQy
OTI5ZTllNDU1QGtvbnRyb24uZGUvVC8KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
