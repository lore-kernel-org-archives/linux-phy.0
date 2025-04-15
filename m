Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE15C369B8
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 07:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQMTomEloCCkudYUwPygfDnjHnwbclaxD6Q3Bg9h6HY=; b=kGe6+hp2nnf3nM
	D8Ti8Zued3Um9milwIuksH06oynrEUrSXKLekztsnWungLkLNhO57gKReHYxiJvn9HA02dQWKDOFr
	lzi5jIosi3U5iNsiCBulwRRdWHSx+DwjI85UwnaVUKT9z5Z7181p5VOEZMWL3laaQ2FXphddx0hnb
	QIR+0TNM7oy6JNVjKFPLs92tsmtP4O1Rsm/lbGgTt3MdhDmFkUG6UtUjdaZ2KfGKKo0vyZY6ShjVS
	CQmV3hW9KV6mCfR0N/N0QNR4qdJujQ0jDKz9b3GAkDJpCxPegKbCSebvM1sEqzyMBDMHtHLfIeowJ
	x3HI+rR8jYzRiAAEveIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4aXK-00000004lxa-2owA;
	Tue, 15 Apr 2025 07:16:50 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4aJN-00000004jnl-0aj0
	for linux-phy@lists.infradead.org;
	Tue, 15 Apr 2025 07:02:26 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso885461466b.3
        for <linux-phy@lists.infradead.org>; Tue, 15 Apr 2025 00:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744700543; x=1745305343; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2ga1nUM6HtoCk8hWLrk5yxmK9z4M0Ju2AYWLWZGQEvw=;
        b=UmG5nxF2sdq1cslENBokYzCpERksjgi3/jacdx3cOvPZcQx/H1ospvRQDLxCtcNEbq
         EvHXqR0wj4smifSf3f/w80p4GVonfxcW3XtXS7ZlM7h7gepKKIbDNmV/4L9wuNx33Djw
         2lYSrcs1tTTUQvChKLNjmRg+4oJGDvhFYzshbh/jdaQTwdOCdQw0CaJvMokmQo1pHYGI
         MmbfDLWwx1yvLzJuWzQyZTj6ZraiQl1ixHaPB5Vue7IB09SRaywlBPn9+RGkyilEivH7
         DLP8Jg+EiKxtUuWT79oqvyS3Zzo7HOkfvjZHOCzIuwLZHaqNQAs7wq0e+eDu7TAJx4MK
         idhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744700543; x=1745305343;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2ga1nUM6HtoCk8hWLrk5yxmK9z4M0Ju2AYWLWZGQEvw=;
        b=hY5mAIv9/fpJxxZeu00JORP6Kq3Se5iM64bIJfyIiupFkLFFGEKj3JII2HmTUIPaeY
         FmhAgerRAQHOjOOoYOGUZ4/g2QHCfnrKDzRBRuJF+pqpmZu2gXeQvPQ6on3b/jUMYZeT
         hVKVEDfvv1L89HPDcu6lLwuSOKon2DrbL4qHz2ApZUB/bp8/gotrSy358wxiVqT4bGG3
         Ja0fK9VxaZjJ55RHUAh4HzgC8kQxzGyk7eCMgT+YsXpZQ3v3qH6Pab4aNjjIEqHhl4Lo
         4hjnIidumB3UCXYsZlOWSqya1DFDx8zU8MU2YU02Go/1zPx6MYh3vVTn11WwhQpCTMgx
         5PWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuZFrdJazMdiw3u7VoHJCDZ8J9YxGvKWYxvaRKFXaI1SWGBOYBPyoyx30fQMuPRf+8thcfXPiZFk0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWcwsSfSXNJ9GunjLWW7IemueAN2opbUBcl13Uk22U9nO9q0qg
	4kDiyqLRWsRe0a8pg2HtxKFlUYkZ7xB8H0VsjCooqQS/q6nFWjK6
X-Gm-Gg: ASbGncsbGi4GfqkHyzsW+gBcVDhrB0WpDDZQeVjtOwqOd4Ubk4KDVuIqvDMQpc+s/NT
	tQAF1QCdkbcpaI3JMH+t4Nm7AP7p8BbO3xxwPLu+7SgrAf143+dgSC2bpoXQ5rkGiPB0Fwm+/c/
	RFF3LdQK+F+oNwAbmhP7+SJ75dcA6A/27xClUgxDhcbJ85F8gk5G1mFwDiCdC4janFaA1drJD6r
	9QjpZkdSpImCyukXxNduZLITol0zlCdpki5XT91KCE44khDtN7o3qUhVZ12wrDQ0s6gRKlRQ2xB
	uYftWWvTYsmjlw0I9hYrpwzvFpV27SQwVIn4jLFIUGHttTT0zsISjXUzP6o22XUQw22ypf9Djf9
	DYOj5Y55R/Nj7IDs7Ag==
X-Google-Smtp-Source: AGHT+IFb/WvyaRMShqXmEGsLHBs2VTsKNp0rNR0kfAcGtsbKVyXl57PvKN1tBQlqoyjWIvu4rRgAGw==
X-Received: by 2002:a17:907:3fa2:b0:ac7:edc4:3d42 with SMTP id a640c23a62f3a-acad349a039mr1313249166b.24.1744700542673;
        Tue, 15 Apr 2025 00:02:22 -0700 (PDT)
Received: from dominikat-nb.corp.toradex.com (31-10-206-125.static.upc.ch. [31.10.206.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1c0227bsm1035369466b.82.2025.04.15.00.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 00:02:22 -0700 (PDT)
Message-ID: <cb035f597291488e45d36c3b37a0559d6c80ea26.camel@gmail.com>
Subject: Re: [PATCH v3 00/17] drm/bridge: cdns-dsi: Make it work a bit better
From: Parth Panchoil <parth105105@gmail.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Jyri Sarha
 <jyri.sarha@iki.fi>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
  Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,  Simona Vetter
 <simona@ffwll.ch>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Andrzej Hajda <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,  Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Jayesh
 Choudhary <j-choudhary@ti.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, Devarsh Thakkar <devarsht@ti.com>
Date: Tue, 15 Apr 2025 09:02:20 +0200
In-Reply-To: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
References: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_000225_185121_D5394E31 
X-CRM114-Status: GOOD (  25.87  )
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

T24gTW9uLCAyMDI1LTA0LTE0IGF0IDE0OjExICswMzAwLCBUb21pIFZhbGtlaW5lbiB3cm90ZToK
PiBXaGlsZSB0cnlpbmcgdG8gZ2V0IHRoZSBjZG5zLWRzaSB0byB3b3JrIG9uIFRvcmFkZXgncyBB
TTY5IEFxdWlsYQo+IHBsYXRmb3JtLCBJIGhpdCBtdWx0aXBsZSBpc3N1ZXMgaW4gdGhlIGRyaXZl
ci4gQmFzaWNhbHkgbm90aGluZwo+IHdvcmtlZAo+IGZvciB3aXRoIHRoZSBib2FyZC4KPiAKPiBU
aGlzIHNlcmllcyBmaXhlcyB0aG9zZSBpc3N1ZXMuIFdoaWxlIEkgaXRjaCB0byBtYWtlIG11Y2gg
bGFyZ2VyCj4gY2hhbmdlcwo+IHRvIHRoZSBjZG5zLWRzaSBkcml2ZXIsIEkgb3B0ZWQgdG8ga2Vl
cCB0aGlzIHNlcmllcyByZWxhdGl2ZWx5IHNpbXBsZQo+IHRvCj4gbWFrZSB0aGUgZml4ZXMgbW9y
ZSBjbGVhciBhbmQgcG9zc2libHkgaGVscCB3aXRoIGJhY2twb3J0aW5nLgo+IAo+IFRoZSBzZXJp
ZXMgYWxzbyB0b3VjaGVzIHRpZHNzLCBidXQgdGhvc2UgY2hhbmdlcyBhcmUgbm90IHN0cmljdGx5
Cj4gbmVlZGVkLCBhbmQgY2FuIGJlIG1lcmdlZCBzZXBhcmF0ZWx5LiBBbmQgdGhlIHNlcmllcyBh
bHNvIHRvdWNoZXMKPiBjZG5zLWRwaHksIGFuZCB0aG9zZSBjaGFuZ2VzIGFyZSBuZWVkZWQuCj4g
Cj4gVGhpcyBoYXMgYmVlbiB0ZXN0ZWQgb24gVG9yYWRleCBBTTY5IEFxdWlsYSAodXBzdHJlYW0p
IGFuZCBBTTYyUAo+IFZlcmRpbgo+IChUb3JhZGV4J3MgQlNQKSwgd2l0aDoKPiAtIEhETUkgb3V0
cHV0IHVzaW5nIGxvbnRpdW0gbHQ4OTEyYgo+IC0gTFZEUyBwYW5lbCAoc242NWRzaTg0ICsgcGFu
ZWwtbHZkcykKPiAKPiDCoFRvbWkKPiAKPiAKKEZvciB0aGUgZW50aXJlIHNlcmllcykKClRlc3Rl
ZC1ieTogUGFydGggUGFuY2hvbGkgPHBhcnRoLnBhbmNob2xpQHRvcmFkZXguY29tPgoKPiBTaWdu
ZWQtb2ZmLWJ5OiBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNv
bT4KPiAtLS0KPiBDaGFuZ2VzIGluIHYzOgo+IC0gQWRkIEFyYWRoeWEncyAiZHJtL2JyaWRnZTog
Y2Rucy1kc2k6IEZpeCB0aGUgX2F0b21pY19jaGVjaygpIiB0bwo+IHRoZQo+IMKgIGRlcGVuZGVu
Y2llcwo+IC0gVGhlIGFib3ZlIHBhdGNoIGZyb20gQXJhZGh5YSBhbGxvd2VkIGFkZGluZyAiZHJt
L2JyaWRnZTogY2Rucy1kc2k6Cj4gwqAgRHJvcCBjcnRjXyogY29kZSIsIHdoaWNoIHJlc3VsdGVk
IGluIHF1aXRlIGxhcmdlIGNoYW5nZXMgaW4gdGhlCj4gwqAgY29tbWl0cywgZXZlbiBpZiB0aGUg
ZW5kIHJlc3VsdCBkb2Vzbid0IHJlYWxseSBkaWZmZXIuCj4gLSBSZW9yZGVyZWQgY29tbWl0cyB0
byBkZWNyZWFzZSBiYWNrLWFuZC1mb3J0aCAoZS5nLiBmaXhpbmcgc29tZXRoaW5nCj4gaW4KPiDC
oCBhIGEgY29kZSB0aGF0IHdpbGwgYmUgcmVtb3ZlZCBpbiB0aGUgbmV4dCBjb21taXRzKQo+IC0g
VGhlIHJlb3JkZXJpbmcgY2F1c2VkIHF1aXRlIGJpZyBjaGFuZ2VzIGluIHRoZSBjb21taXRzIChl
dmVuIGlmIHRoZQo+IMKgIGZpbmFsIGVuZCByZXN1bHQgaXMgbW9yZSBvciBsZXNzIHRoZSBzYW1l
KSwgc28gSSBjaG9zZSBub3QgdG8gYWRkCj4gwqAgdGVzdGVkLWJ5IHRhZ3MuCj4gLSBSZW5hbWUg
J2NkbnNfZ2V0X2RwaHlfcGxsX2NmZycgdG8gJ2NkbnNfZHBoeV9nZXRfcGxsX2NmZycKPiAtIFVz
ZSBkaXZfdTY0KCkgaW5zdGVhZCBvZiBkaXY2NF91NjQoKQo+IC0gRHJvcCAiRmFpbCBpZiBIUyBy
YXRlIGNoYW5nZWQgd2hlbiB2YWxpZGF0aW5nIFBIWSBjb25maWciLiBUaGlzIHdhcwo+IMKgIHRv
byBzdHJpY3QsIGFzIGNsb2NrIHJvdW5kaW5nIChlc3BlY2lhbGx5IHdpdGggRFJNJ3MgMWtIego+
IMKgIHJlc29sdXRpb24uLi4pIGxlYWRzIHRvIGNsb2NrIHJhdGVzIHRoYXQgZG8gbm90IG1hdGNo
IGV4YWN0bHkuCj4gwqAgSG93ZXZlciwgdGhlIHJhdGUgbWlzbWF0Y2ggc2hvdWxkIGJlIGZpbmUg
YXMgdGhlIGNvbW1pdHMgYWRqdXN0IHRoZQo+IMKgIHBpeGVsIGNsb2NrLCBhbmQgdGhlIHJlc3Vs
dGluZyBkaWZmZXJlbmNlcyBzaG91bGQgYmUgc28gc21hbGwgdGhhdAo+IHdlCj4gwqAgY2FuJ3Qg
ZXZlbiBpbXByb3ZlIHRoZSB0aW1pbmdzIG1hdGNoIGJ5IGFkanVzdGluZyB0aGUgRFNJIEhGUCwg
YXMKPiB0aGUKPiDCoCBhZGp1c3RtZW50IHJvdW5kcyB0byAwLgo+IC0gTGluayB0byB2MjoKPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwNDAyLWNkbnMtZHNpLWltcHJvLXYyLTAtNGEw
OTNlYWE1ZTI3QGlkZWFzb25ib2FyZC5jb20KPiAKPiBDaGFuZ2VzIGluIHYyOgo+IC0gQ2hhbmdl
IHRoZSB0aWRzcyBjbG9jayBhZGp1c3RtZW50IGZyb20gbW9kZV9maXh1cCgpIHRvCj4gYXRvbWlj
X2NoZWNrKCkKPiAtIExpbmsgdG8gdjE6Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1
MDMyMC1jZG5zLWRzaS1pbXByby12MS0wLTcyNTI3N2M1ZjQzYkBpZGVhc29uYm9hcmQuY29tCj4g
Cj4gLS0tCj4gVG9taSBWYWxrZWluZW4gKDE3KToKPiDCoMKgwqDCoMKgIGRybS90aWRzczogRml4
IG1pc3NpbmcgaW5jbHVkZXMgYW5kIHN0cnVjdCBkZWNscwo+IMKgwqDCoMKgwqAgZHJtL3RpZHNz
OiBVc2UgdGhlIGNydGNfKiB0aW1pbmdzIHdoZW4gcHJvZ3JhbW1pbmcgdGhlIEhXCj4gwqDCoMKg
wqDCoCBkcm0vdGlkc3M6IEFkanVzdCB0aGUgcGNsayBiYXNlZCBvbiB0aGUgSFcgY2FwYWJpbGl0
aWVzCj4gwqDCoMKgwqDCoCBwaHk6IGNkbnMtZHBoeTogU3RvcmUgaHNfY2xrX3JhdGUgYW5kIHJl
dHVybiBpdAo+IMKgwqDCoMKgwqAgcGh5OiBjZG5zLWRwaHk6IFJlbW92ZSBsZWZ0b3ZlciBjb2Rl
Cj4gwqDCoMKgwqDCoCBkcm0vYnJpZGdlOiBjZG5zLWRzaTogUmVtb3ZlIGV4dHJhIGxpbmUgYXQg
dGhlIGVuZCBvZiB0aGUgZmlsZQo+IMKgwqDCoMKgwqAgZHJtL2JyaWRnZTogY2Rucy1kc2k6IERy
b3AgY3J0Y18qIGNvZGUKPiDCoMKgwqDCoMKgIGRybS9icmlkZ2U6IGNkbnMtZHNpOiBSZW1vdmUg
YnJva2VuIGZpZm8gZW1wdHlpbmcgY2hlY2sKPiDCoMKgwqDCoMKgIGRybS9icmlkZ2U6IGNkbnMt
ZHNpOiBEcm9wIGNoZWNrcyB0aGF0IHNob3VsZG4ndCBiZSBpbgo+IC5tb2RlX3ZhbGlkKCkKPiDC
oMKgwqDCoMKgIGRybS9icmlkZ2U6IGNkbnMtZHNpOiBVcGRhdGUgaHRvdGFsIGluIGNkbnNfZHNp
X21vZGUyY2ZnKCkKPiDCoMKgwqDCoMKgIGRybS9icmlkZ2U6IGNkbnMtZHNpOiBEcm9wIGNkbnNf
ZHNpX2FkanVzdF9waHlfY29uZmlnKCkKPiDCoMKgwqDCoMKgIGRybS9icmlkZ2U6IGNkbnMtZHNp
OiBBZGp1c3QgbW9kZSB0byBuZWdhdGl2ZSBzeW5jcwo+IMKgwqDCoMKgwqAgZHJtL2JyaWRnZTog
Y2Rucy1kc2k6IEZpeCBSRUdfV0FLRVVQX1RJTUUgdmFsdWUKPiDCoMKgwqDCoMKgIGRybS9icmlk
Z2U6IGNkbnMtZHNpOiBVc2UgdmlkZW8gbW9kZSBhbmQgY2xlYW4gdXAKPiBjZG5zX2RzaV9tb2Rl
MmNmZygpCj4gwqDCoMKgwqDCoCBkcm0vYnJpZGdlOiBjZG5zLWRzaTogRml4IGV2ZW50IG1vZGUK
PiDCoMKgwqDCoMKgIGRybS9icmlkZ2U6IGNkbnMtZHNpOiBUdW5lIGFkanVzdGVkX21vZGUtPmNs
b2NrIGFjY29yZGluZyB0bwo+IGRzaSBuZWVkcwo+IMKgwqDCoMKgwqAgZHJtL2JyaWRnZTogY2Ru
cy1kc2k6IERvbid0IGZhaWwgb24gTUlQSV9EU0lfTU9ERV9WSURFT19CVVJTVAo+IAo+IMKgZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9jYWRlbmNlL2NkbnMtZHNpLWNvcmUuYyB8IDIxMSArKysrKysr
KysrKy0tLS0KPiAtLS0tLS0tLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vdGlkc3MvdGlkc3NfY3J0
Yy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyNSArKy0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS90aWRzcy90aWRzc19kaXNwYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMjIgKystCj4g
wqBkcml2ZXJzL2dwdS9kcm0vdGlkc3MvdGlkc3NfZGlzcGMuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqAgNSArCj4gwqBkcml2ZXJzL2dwdS9kcm0vdGlkc3MvdGlkc3NfZHJ2LmjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICsKPiDCoGRyaXZlcnMvZ3B1L2RybS90aWRzcy90
aWRzc19wbGFuZS5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAyICsKPiDCoGRyaXZlcnMv
Z3B1L2RybS90aWRzcy90aWRzc19zY2FsZV9jb2Vmcy5owqDCoMKgwqDCoCB8wqDCoCAyICsKPiDC
oGRyaXZlcnMvcGh5L2NhZGVuY2UvY2Rucy1kcGh5LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDI0ICsrLQo+IMKgOCBmaWxlcyBjaGFuZ2VkLCAxNDIgaW5zZXJ0aW9ucygrKSwg
MTUxIGRlbGV0aW9ucygtKQo+IC0tLQo+IGJhc2UtY29tbWl0OiAxMDY0NmRkYWMyOTE3YjMxYzk4
NWNlZmYwZTQ5ODJjNDJhOWM5MjRiCj4gY2hhbmdlLWlkOiAyMDI1MDMyMC1jZG5zLWRzaS1pbXBy
by0zZDhmYmQ3ODQ4ZDEKPiBwcmVyZXF1aXNpdGUtbWVzc2FnZS1pZDoKPiAyMDI1MDIyNjE1NTIy
OC41NjQyODktMS1hcmFkaHlhLmJoYXRpYUBsaW51eC5kZXYKPiBwcmVyZXF1aXNpdGUtcGF0Y2gt
aWQ6IDQ2ODQ1YThkMTUwNDJkZDM0M2EyOWExN2ZjMGI5ZDBlZWMyNjA1ZjUKPiBwcmVyZXF1aXNp
dGUtcGF0Y2gtaWQ6IDdjZTgyYzI2Y2I5ZTE4ODg0NDkyZDIyODJhNzJmZjJhNzYwYWVmZGEKPiBw
cmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IGVjMjA3MTQyNWNhYjgxZGE3MmUwODA1YWQ5MmZjNTI3MzFk
N2EyNGQKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDMyY2RlMDIyODhlMGMzNmVkNjg3ZjY3Nzc4
OTM3YTYxZjc4YjJkOTAKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDVmMzAyZTJiZWFkODk5NDc2
MzY5OWE5MDlhZDBiNTUwMWYwOWVkOWYKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDMwNjExZGY2
ZWYzOGM3ODcyMTA3ZDZiZjZkZGU0NTA0ZDQ2YWIyMjQKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6
IDk5ODMxYmNhYTEzZTI1Yjk1N2Q4M2E2MzIwZjM0YmNlYzIyM2I5MzkKPiBwcmVyZXF1aXNpdGUt
cGF0Y2gtaWQ6IGIwYWQzOGJjNmIzMjNjZWVhN2ExZDIyNjZiMGZhYjhkZWFhNmIwNWUKPiBwcmVy
ZXF1aXNpdGUtcGF0Y2gtaWQ6IDM4ZGJjZTJiOTMwMmE3NjRiZTlkYmRjNTUxNTc4ZjAyZDc5N2Rm
Y2MKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDEzM2Y4YjFkYWI0ZjQ3ZDQyOWIxOTI0ZGY5ODE1
NjRjZTM3MzYyMzMKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDg3OWM1NDY2OTNhNTNlNGI3MmMx
ZWUyNTk1NGM4OTRhZTU3YTQ0MWYKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDNlN2VkYzgxOGFj
MDc4YTEzOGYwZTQyZTNmNDdmZDY4NWZmZmI4NGYKPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IDY3
M2I5ZjBiMTkzNmI1YTQ5OTczYjcxY2FiNWQxMzc3NDU4M2RlMzgKPiBwcmVyZXF1aXNpdGUtbWVz
c2FnZS1pZDoKPiAyMDI1MDQxMDEzNDY0Ni45NjgxMS0xLWFyYWRoeWEuYmhhdGlhQGxpbnV4LmRl
dgo+IHByZXJlcXVpc2l0ZS1wYXRjaC1pZDogMDRmOWEyNDQwY2ViYzg3ODkxYjUxZDNmNzc5OTZj
ODhmNzUyNWQxYwo+IAo+IEJlc3QgcmVnYXJkcywKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
