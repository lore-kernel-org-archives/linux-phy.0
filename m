Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B196FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 10:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwsDL93Jl6cYCiLec8/yZLSsDrBhrAzBHPurYcdJQeQ=; b=SFMT3atvbhyKVW
	7Cc6GfQZ7hfcvpCGPoZQ+w5ZJ5fr1cnEtJLfOaXvecBjy0Jk7YR/q+OPqcUHDUivmR1KO39MOy2vv
	7SyNjQQlgHDhl69o12VWrFeYrZw2+jDGEdKjpp+6iI2GcPu0H2DuOOpHH5GvgEGV5vFLNXCpowEbN
	SMtpPuLNioVPoScU5O1nokGaFxoso2kOslZAoOX5QrzkB1aJC/WSCkTuG0A86194ti7u5IQ1WC8ri
	0sQmKsziL8vxPBKwD9DEZss+wfvT4iE3sxsqIE0iJmqqB1elbg75ruS4lhbw8sf7qd+BFMor+KW06
	nDcEOESUuokuwbHI13nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNY6k-004V9Y-2X; Fri, 25 Feb 2022 10:45:54 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNY6b-004V5c-MQ
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 10:45:48 +0000
Received: by mail-oi1-x235.google.com with SMTP id y7so6921995oih.5
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 02:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=9W7E1hMeG1GpPjzQeVUD/1vCh2scmLIMnbP1N8G+QsU=;
 b=a78eb+VOcuOTmv4bOMBCpo7vJLQy9FCHM/1qiKiR7NWjdkaaGpEheJtqR/k9YsTPrY
 H1hfhI0UGkzflpg6UoZIcrmOmH62XVa/0pRdkVWK0co1ELJvTSAYxRnVmtgGsLhQOSqq
 38DtnhPvdqltYNrOjAu41gmCWprvbnXkXHkrriTgzna054kb9OIAo9LV/Wg1EYiT90NT
 d/0cgDiY2iIFsxqgzYrLQFo0fDOyX7sVmj5wj1TH467Et6ftpdH7dFxdSfzSK3WdTu+o
 uH3mKU7NT9iEQKy3sYAUUiqBjtU4rK5/VyO10uQ0pHZSSz/KmCe8bjpipL1HyxRmed2f
 3/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=9W7E1hMeG1GpPjzQeVUD/1vCh2scmLIMnbP1N8G+QsU=;
 b=MBHlhu3UkjbPfFnIzDc6/RGdQelj1S+Ec86KqD2xW+cKDrLv5gsEUv62cX23nu2EYH
 3sy1WuS29WFHCSTfYTSYKbiRXC7duRmrTR/3tagwVbqp8kF3ntui90XSsUmKk0ALccRs
 57Iq4ber5ox7pS52n95Fwo7WiCkdhuIkYqfZ4PBo5r+YEtjSIeEOP7s+CI4sU3wou7D5
 DSetwbuDPMiKe/RkSHHU8cNA7e+LsRw700R0g/10YBDjs+eIN0Mu3P4V0mPmGMNk81UH
 j4kIfExvXPVe/NIv394BlW187T3AZPdBX1RF+zqS8brR0HeMNymeG5Ig7F5EpKPvjBxa
 vtwg==
X-Gm-Message-State: AOAM530kLzgDe3br+zDyho35KfQQjPcdD5WhkLkf6VABemShqeAj6tXw
 E2Lg//VSEFj+iBzOnYqmOMB01apwefbj5Uy/dRpcdw==
X-Google-Smtp-Source: ABdhPJxu3WAp8h43vtzTLY42//zgoS97B9OhbkZL3NmzaJ4HkMHPMXQTZzR34BelzCKWImB746hqT4H0VxqEaQANrdg=
X-Received: by 2002:a05:6808:114e:b0:2d5:4101:844e with SMTP id
 u14-20020a056808114e00b002d54101844emr1171890oiu.169.1645785943634; Fri, 25
 Feb 2022 02:45:43 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 25 Feb 2022 02:45:43 -0800
MIME-Version: 1.0
In-Reply-To: <CAAOTY__u8R-WkTmnKkey5p7_fVuy2mgoRY4Fx_kqb5kb4hnqmQ@mail.gmail.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
 <20220218145437.18563-6-granquet@baylibre.com>
 <CAAOTY__u8R-WkTmnKkey5p7_fVuy2mgoRY4Fx_kqb5kb4hnqmQ@mail.gmail.com>
From: Guillaume Ranquet <granquet@baylibre.com>
User-Agent: alot/0.10
Date: Fri, 25 Feb 2022 02:45:43 -0800
Message-ID: <CABnWg9t0x4GC_V+t9wkMJYjNnU0OYSaVdXi2sQD34dCNVHyVeQ@mail.gmail.com>
Subject: Re: [PATCH v8 05/19] drm/mediatek: dpi: move dpi limits to board
 config
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 deller@gmx.de, CK Hu <ck.hu@mediatek.com>, Jitao Shi <jitao.shi@mediatek.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 DRI Development <dri-devel@lists.freedesktop.org>, 
 "ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 DTML <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_024545_743863_936CF536 
X-CRM114-Status: GOOD (  17.80  )
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

UXVvdGluZyBDaHVuLUt1YW5nIEh1ICgyMDIyLTAyLTIxIDAyOjQ2OjE1KQo+IEhpLCBHdWlsbGF1
bWU6Cj4KPiBHdWlsbGF1bWUgUmFucXVldCA8Z3JhbnF1ZXRAYmF5bGlicmUuY29tPiDmlrwgMjAy
MuW5tDLmnIgxOOaXpSDpgLHkupQg5LiL5Y2IMTA6NTblr6vpgZPvvJoKPiA+Cj4gPiBBZGQgZmxl
eGliaWxpdHkgYnkgbW92aW5nIHRoZSBkcGkgbGltaXRzIHRvIHRoZSBib2FyZCBjb25maWcKPgo+
IFRoaXMgcGF0Y2ggbG9va3MgZ29vZCB0byBtZS4gQnV0IEkgd291bGQgbGlrZSB0byBrbm93IHdo
YXQncyB0aGlzCj4gbGltaXQgYW5kIHdoeSBpdCB2YXJ5IGluIGRpZmZlcmVudCBTb0MuIElmIHBv
c3NpYmxlLCB3b3VsZCB5b3UgcGxlYXNlCj4gcHJvdmlkZSBtb3JlIGRlc2NyaXB0aW9uIGZvciB0
aGlzPwo+Cj4gUmVnYXJkcywKPiBDaHVuLUt1YW5nLgo+CgpIaSBDaHVuLUt1YW5nLAoKWW91IGFy
ZSByaWdodCwgdGhlIGNvbW1pdCBtZXNzYWdlIGlzIHJhdGhlciB2YWd1ZSBhbmQgZGVzZXJ2ZXMg
bW9yZSBkZXRhaWxzLgpJJ2xsIGhhdmUgdG8gZGlnIGludG8gdGhlIGRvY3VtZW50YXRpb25zIEkg
aGF2ZSBhY2Nlc3MgdG8gYW5kIGFzayBtYXliZSBhc2sKdGhlIGVuZ2luZWVycyBhdCBtZWRpYXRl
ayBmb3IgYSBkZXRhaWxlZCBkZXNjcmlwdGlvbi4KClRoeCwKR3VpbGxhdW1lLgoKPiA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgUmFucXVldCA8Z3JhbnF1ZXRAYmF5bGlicmUuY29tPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcGkuYyB8IDI1ICsrKysr
KysrKysrKysrKystLS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19kcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHBpLmMKPiA+
IGluZGV4IDQ1NTRlMmRlMTQzMDkuLjQ3NDZlYjM0MjU2NzQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RwaS5jCj4gPiBAQCAtMTI1LDYgKzEyNSw3IEBAIHN0cnVjdCBtdGtfZHBp
X2NvbmYgewo+ID4gICAgICAgICBib29sIGVkZ2Vfc2VsX2VuOwo+ID4gICAgICAgICBjb25zdCB1
MzIgKm91dHB1dF9mbXRzOwo+ID4gICAgICAgICB1MzIgbnVtX291dHB1dF9mbXRzOwo+ID4gKyAg
ICAgICBjb25zdCBzdHJ1Y3QgbXRrX2RwaV95Y19saW1pdCAqbGltaXQ7Cj4gPiAgfTsKPiA+Cj4g
PiAgc3RhdGljIHZvaWQgbXRrX2RwaV9tYXNrKHN0cnVjdCBtdGtfZHBpICpkcGksIHUzMiBvZmZz
ZXQsIHUzMiB2YWwsIHUzMiBtYXNrKQo+ID4gQEAgLTIzNSw5ICsyMzYsMTAgQEAgc3RhdGljIHZv
aWQgbXRrX2RwaV9jb25maWdfZmJfc2l6ZShzdHJ1Y3QgbXRrX2RwaSAqZHBpLCB1MzIgd2lkdGgs
IHUzMiBoZWlnaHQpCj4gPiAgICAgICAgIG10a19kcGlfbWFzayhkcGksIERQSV9TSVpFLCBoZWln
aHQgPDwgVlNJWkUsIFZTSVpFX01BU0spOwo+ID4gIH0KPiA+Cj4gPiAtc3RhdGljIHZvaWQgbXRr
X2RwaV9jb25maWdfY2hhbm5lbF9saW1pdChzdHJ1Y3QgbXRrX2RwaSAqZHBpLAo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgbXRrX2RwaV95Y19saW1p
dCAqbGltaXQpCj4gPiArc3RhdGljIHZvaWQgbXRrX2RwaV9jb25maWdfY2hhbm5lbF9saW1pdChz
dHJ1Y3QgbXRrX2RwaSAqZHBpKQo+ID4gIHsKPiA+ICsgICAgICAgY29uc3Qgc3RydWN0IG10a19k
cGlfeWNfbGltaXQgKmxpbWl0ID0gZHBpLT5jb25mLT5saW1pdDsKPiA+ICsKPiA+ICAgICAgICAg
bXRrX2RwaV9tYXNrKGRwaSwgRFBJX1lfTElNSVQsIGxpbWl0LT55X2JvdHRvbSA8PCBZX0xJTUlO
VF9CT1QsCj4gPiAgICAgICAgICAgICAgICAgICAgICBZX0xJTUlOVF9CT1RfTUFTSyk7Cj4gPiAg
ICAgICAgIG10a19kcGlfbWFzayhkcGksIERQSV9ZX0xJTUlULCBsaW1pdC0+eV90b3AgPDwgWV9M
SU1JTlRfVE9QLAo+ID4gQEAgLTQ0OSw3ICs0NTEsNiBAQCBzdGF0aWMgaW50IG10a19kcGlfcG93
ZXJfb24oc3RydWN0IG10a19kcGkgKmRwaSkKPiA+ICBzdGF0aWMgaW50IG10a19kcGlfc2V0X2Rp
c3BsYXlfbW9kZShzdHJ1Y3QgbXRrX2RwaSAqZHBpLAo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCj4gPiAgewo+ID4g
LSAgICAgICBzdHJ1Y3QgbXRrX2RwaV95Y19saW1pdCBsaW1pdDsKPiA+ICAgICAgICAgc3RydWN0
IG10a19kcGlfcG9sYXJpdGllcyBkcGlfcG9sOwo+ID4gICAgICAgICBzdHJ1Y3QgbXRrX2RwaV9z
eW5jX3BhcmFtIGhzeW5jOwo+ID4gICAgICAgICBzdHJ1Y3QgbXRrX2RwaV9zeW5jX3BhcmFtIHZz
eW5jX2xvZGQgPSB7IDAgfTsKPiA+IEBAIC00ODQsMTEgKzQ4NSw2IEBAIHN0YXRpYyBpbnQgbXRr
X2RwaV9zZXRfZGlzcGxheV9tb2RlKHN0cnVjdCBtdGtfZHBpICpkcGksCj4gPiAgICAgICAgIGRl
dl9kYmcoZHBpLT5kZXYsICJHb3QgIFBMTCAlbHUgSHosIHBpeGVsIGNsb2NrICVsdSBIelxuIiwK
PiA+ICAgICAgICAgICAgICAgICBwbGxfcmF0ZSwgdm0ucGl4ZWxjbG9jayk7Cj4gPgo+ID4gLSAg
ICAgICBsaW1pdC5jX2JvdHRvbSA9IDB4MDAxMDsKPiA+IC0gICAgICAgbGltaXQuY190b3AgPSAw
eDBGRTA7Cj4gPiAtICAgICAgIGxpbWl0LnlfYm90dG9tID0gMHgwMDEwOwo+ID4gLSAgICAgICBs
aW1pdC55X3RvcCA9IDB4MEZFMDsKPiA+IC0KPiA+ICAgICAgICAgZHBpX3BvbC5ja19wb2wgPSBN
VEtfRFBJX1BPTEFSSVRZX0ZBTExJTkc7Cj4gPiAgICAgICAgIGRwaV9wb2wuZGVfcG9sID0gTVRL
X0RQSV9QT0xBUklUWV9SSVNJTkc7Cj4gPiAgICAgICAgIGRwaV9wb2wuaHN5bmNfcG9sID0gdm0u
ZmxhZ3MgJiBESVNQTEFZX0ZMQUdTX0hTWU5DX0hJR0ggPwo+ID4gQEAgLTUzNiw3ICs1MzIsNyBA
QCBzdGF0aWMgaW50IG10a19kcGlfc2V0X2Rpc3BsYXlfbW9kZShzdHJ1Y3QgbXRrX2RwaSAqZHBp
LAo+ID4gICAgICAgICBlbHNlCj4gPiAgICAgICAgICAgICAgICAgbXRrX2RwaV9jb25maWdfZmJf
c2l6ZShkcGksIHZtLmhhY3RpdmUsIHZtLnZhY3RpdmUpOwo+ID4KPiA+IC0gICAgICAgbXRrX2Rw
aV9jb25maWdfY2hhbm5lbF9saW1pdChkcGksICZsaW1pdCk7Cj4gPiArICAgICAgIG10a19kcGlf
Y29uZmlnX2NoYW5uZWxfbGltaXQoZHBpKTsKPiA+ICAgICAgICAgbXRrX2RwaV9jb25maWdfYml0
X251bShkcGksIGRwaS0+Yml0X251bSk7Cj4gPiAgICAgICAgIG10a19kcGlfY29uZmlnX2NoYW5u
ZWxfc3dhcChkcGksIGRwaS0+Y2hhbm5lbF9zd2FwKTsKPiA+ICAgICAgICAgbXRrX2RwaV9jb25m
aWdfeWNfbWFwKGRwaSwgZHBpLT55Y19tYXApOwo+ID4gQEAgLTc5MCwxMiArNzg2LDIwIEBAIHN0
YXRpYyBjb25zdCB1MzIgbXQ4MTgzX291dHB1dF9mbXRzW10gPSB7Cj4gPiAgICAgICAgIE1FRElB
X0JVU19GTVRfUkdCODg4XzJYMTJfQkUsCj4gPiAgfTsKPiA+Cj4gPiArc3RhdGljIGNvbnN0IHN0
cnVjdCBtdGtfZHBpX3ljX2xpbWl0IG10a19kcGlfbGltaXQgPSB7Cj4gPiArICAgICAgIC5jX2Jv
dHRvbSA9IDB4MDAxMCwKPiA+ICsgICAgICAgLmNfdG9wID0gMHgwRkUwLAo+ID4gKyAgICAgICAu
eV9ib3R0b20gPSAweDAwMTAsCj4gPiArICAgICAgIC55X3RvcCA9IDB4MEZFMCwKPiA+ICt9Owo+
ID4gKwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2RwaV9jb25mIG10ODE3M19jb25mID0g
ewo+ID4gICAgICAgICAuY2FsX2ZhY3RvciA9IG10ODE3M19jYWxjdWxhdGVfZmFjdG9yLAo+ID4g
ICAgICAgICAucmVnX2hfZnJlX2NvbiA9IDB4ZTAsCj4gPiAgICAgICAgIC5tYXhfY2xvY2tfa2h6
ID0gMzAwMDAwLAo+ID4gICAgICAgICAub3V0cHV0X2ZtdHMgPSBtdDgxNzNfb3V0cHV0X2ZtdHMs
Cj4gPiAgICAgICAgIC5udW1fb3V0cHV0X2ZtdHMgPSBBUlJBWV9TSVpFKG10ODE3M19vdXRwdXRf
Zm10cyksCj4gPiArICAgICAgIC5saW1pdCA9ICZtdGtfZHBpX2xpbWl0LAo+ID4gIH07Cj4gPgo+
ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2RwaV9jb25mIG10MjcwMV9jb25mID0gewo+ID4g
QEAgLTgwNSw2ICs4MDksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19kcGlfY29uZiBtdDI3
MDFfY29uZiA9IHsKPiA+ICAgICAgICAgLm1heF9jbG9ja19raHogPSAxNTAwMDAsCj4gPiAgICAg
ICAgIC5vdXRwdXRfZm10cyA9IG10ODE3M19vdXRwdXRfZm10cywKPiA+ICAgICAgICAgLm51bV9v
dXRwdXRfZm10cyA9IEFSUkFZX1NJWkUobXQ4MTczX291dHB1dF9mbXRzKSwKPiA+ICsgICAgICAg
LmxpbWl0ID0gJm10a19kcGlfbGltaXQsCj4gPiAgfTsKPiA+Cj4gPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBtdGtfZHBpX2NvbmYgbXQ4MTgzX2NvbmYgPSB7Cj4gPiBAQCAtODEzLDYgKzgxOCw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX2RwaV9jb25mIG10ODE4M19jb25mID0gewo+ID4gICAg
ICAgICAubWF4X2Nsb2NrX2toeiA9IDEwMDAwMCwKPiA+ICAgICAgICAgLm91dHB1dF9mbXRzID0g
bXQ4MTgzX291dHB1dF9mbXRzLAo+ID4gICAgICAgICAubnVtX291dHB1dF9mbXRzID0gQVJSQVlf
U0laRShtdDgxODNfb3V0cHV0X2ZtdHMpLAo+ID4gKyAgICAgICAubGltaXQgPSAmbXRrX2RwaV9s
aW1pdCwKPiA+ICB9Owo+ID4KPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19kcGlfY29uZiBt
dDgxOTJfY29uZiA9IHsKPiA+IEBAIC04MjEsNiArODI3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBtdGtfZHBpX2NvbmYgbXQ4MTkyX2NvbmYgPSB7Cj4gPiAgICAgICAgIC5tYXhfY2xvY2tfa2h6
ID0gMTUwMDAwLAo+ID4gICAgICAgICAub3V0cHV0X2ZtdHMgPSBtdDgxNzNfb3V0cHV0X2ZtdHMs
Cj4gPiAgICAgICAgIC5udW1fb3V0cHV0X2ZtdHMgPSBBUlJBWV9TSVpFKG10ODE3M19vdXRwdXRf
Zm10cyksCj4gPiArICAgICAgIC5saW1pdCA9ICZtdGtfZHBpX2xpbWl0LAo+ID4gIH07Cj4gPgo+
ID4gIHN0YXRpYyBpbnQgbXRrX2RwaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ID4gLS0KPiA+IDIuMzQuMQo+ID4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
