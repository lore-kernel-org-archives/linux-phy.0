Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18975C369C2
	for <linux-phy@archiver.kernel.org>; Mon,  5 May 2025 07:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fca9cIQovclAt/DeTEerBZDPwuE7lAZ0U48EsJdDI8=; b=2u13BgcPRhH80n
	x1ZGhB1Ng2cTT7apxZ6ZYTagajkxIdgtTZNSo9Sg0h+89eW6b6z5syknzl//QlJkvmrRemcicc/kf
	teycf3+0YiL9+bThrHTmToTuAhqF474YMz6QkdbHg8EtHwiMnNTfUAGhXMzXo24yYXmhB5MtFWcty
	QVuKDDVgQryOVnAVT8RqNaUegJUMhooWs1mf5IuKfTLaTG/aiEHoZYrexS8xHvQm3R9GDGUXnLd1W
	3zQw2bJ5m4hePLH0t8zf+7mdT9C0XaZMSyzOWzLBtCBunWNFucj79iO3Fi0d1mLsi0WyDNspDh726
	L+RNtslLBriJAXyPQGBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqUr-00000006fud-2wG4;
	Mon, 05 May 2025 07:44:17 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqUp-00000006fuD-2a9V
	for linux-phy@lists.infradead.org;
	Mon, 05 May 2025 07:44:16 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-549b116321aso5170984e87.3
        for <linux-phy@lists.infradead.org>; Mon, 05 May 2025 00:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746431053; x=1747035853; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+YfZlMj5L1rIXbKZqZyMAiXs3rNL2+v0csZ4Sk0W44A=;
        b=epyJSGGC3NWdFeVx80473urOjXJ473AlPz5bsrfSHlxH1d8uZx8s52a9MHqxtCjhX8
         i3zUPPan+WPyoc6Y+LMey3jjAtn7A8LOd/KVHMnRowz0kIPQUaeh0giIvsQi49pEfq85
         Tu4Jo2y4pWtlqesDczGHEaEBsK9PesPBe9RPeC01fAVdLyR/tDU8qAe0ES487DFHx+7q
         /6i2HHcc7O2GTilCgoKff/aaMemgEZTIWVFN9rB16tJ4E3DVYj4KI/Lsj4X8hIRKOYHE
         QWRrHYU+QQ2dGVz7inihVzITz7YHUacC50F4L0SL9WAS4eZWbJOAk/5TTpPrHu7l5rLW
         kTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746431053; x=1747035853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YfZlMj5L1rIXbKZqZyMAiXs3rNL2+v0csZ4Sk0W44A=;
        b=XFeKsR3Jg403nb+TNYSlL962L38Acf9Cw52v3R8WZ0tC7Qyi3HRQp0a4niCJQ+3H/4
         9InoRAJFq0ue/prPAWdfLfn8MXF7vhr2+4t5sCGLznhnTDEoKCrpOlniOZT/eS8iUWl6
         JmDhE1Wj5XSDugqDjzU2FKgeFk9lrP+T+Y+xyFHzUFvUi4tM5WQz9skekDR4W20HGlOv
         B3UhSlSsxESArSqxBiFQKTWyof63XViXqVBIG1j7iyH7GiIu/e33G3NRef03sAMq5Iwl
         Y27lRjEuQRxqx94Utkz58+URh4h9LElMzpZBj018HAY1283z9MR8eRTQh/GEdXgjG2mo
         rwUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWU6wgHoGoGe18l3AcW7VeZubL5zJyOhdFY3drxSTjZqPISGZPtp8hMzw1ywNqmUn+xObBOOHN1adc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJGDbjdoZhPTOgtK/QjxDjGJtwJgFXsTfuYjW4JFEz+1eUAweZ
	rNux8bKFPUlD+RZ5BwsfYg670VrTvb2X5gYKgMBXX0tUbUZrsCLSS5rNtQTlBrRpg5re50j1ZHX
	ipWs5Dx9JaZjF5lxexxD7NL56ous=
X-Gm-Gg: ASbGnct2vkT9oMF+sVpDk3sTF3iUR/JhOpctWRiYy5PDzPIIUEeCETbPNvs5bcdXN0x
	eGGTreJRJx6+o8Tpu/d0C5ZPYrDQggwHKKWaSdMlx+M01Fm1eB1QuVijktq/z3hb66+oJrNxDO6
	8eBlSzZkvUs0SDqGikYMDvdA==
X-Google-Smtp-Source: AGHT+IHc0fOmjO83nNf2FMWszElkKLmBS+1uX4Zwc0i7HMD+sMy5SEc7Qd7c1xzbkVCLpvs9dxwi5C+lK1UiNofdkpU=
X-Received: by 2002:a05:6512:39c3:b0:545:1082:918d with SMTP id
 2adb3069b0e04-54fa4f911d7mr1882118e87.41.1746431052827; Mon, 05 May 2025
 00:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com>
 <CALHNRZ_QUY7NPH87RYqFWEy4PkTgV5uZVZ6hh3sbe=U_8ga2jQ@mail.gmail.com> <CALHNRZ9s5EdL3vapyJS4TdT=v5v_QG-=n8ABNJDLU4B-7w+wRw@mail.gmail.com>
In-Reply-To: <CALHNRZ9s5EdL3vapyJS4TdT=v5v_QG-=n8ABNJDLU4B-7w+wRw@mail.gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 5 May 2025 02:44:00 -0500
X-Gm-Features: ATxdqUG8e1J7-Xz2G1fIUZsrs4RbLP9uMITH__FF3GvRP5n93247IAapcHKUjXY
Message-ID: <CALHNRZ96Cs8+gyyb=_jTpvCq--uF3P1s8_m7t25nN_vPx0ELXA@mail.gmail.com>
Subject: Re: [PATCH] phy: tegra: xusb: Default otg mode to peripheral
To: webgeek1234@gmail.com
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_004415_652248_87BAD41E 
X-CRM114-Status: GOOD (  25.54  )
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

T24gU3VuLCBBcHIgMjAsIDIwMjUgYXQgODo0NOKAr1BNIEFhcm9uIEtsaW5nIDx3ZWJnZWVrMTIz
NEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gU3VuLCBBcHIgMTMsIDIwMjUgYXQgMTE6NDXigK9Q
TSBBYXJvbiBLbGluZyA8d2ViZ2VlazEyMzRAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBG
cmksIEFwciA0LCAyMDI1IGF0IDM6MTjigK9BTSBBYXJvbiBLbGluZyB2aWEgQjQgUmVsYXkKPiA+
IDxkZXZudWxsK3dlYmdlZWsxMjM0LmdtYWlsLmNvbUBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4K
PiA+ID4gRnJvbTogQWFyb24gS2xpbmcgPHdlYmdlZWsxMjM0QGdtYWlsLmNvbT4KPiA+ID4KPiA+
ID4gQ3VycmVudGx5LCBpZiB1c2Itcm9sZS1zd2l0Y2ggaXMgc2V0IGFuZCByb2xlLXN3aXRjaC1k
ZWZhdWx0LW1vZGUgaXMKPiA+ID4gbm90LCBhIHh1c2IgcG9ydCB3aWxsIGJlIGlub3BlcmFibGUg
dW50aWwgdGhhdCBwb3J0IGlzIGhvdHBsdWdnZWQsCj4gPiA+IGJlY2F1c2UgdGhlIGRyaXZlciBk
ZWZhdWx0cyB0byByb2xlIG5vbmUuIEluc3RlYWQgb2YgcmVxdWlyaW5nIGFsbAo+ID4gPiBkZXZp
Y2VzIHRvIHNldCB0aGUgZGVmYXVsdCBtb2RlLCBhc3N1bWUgdGhhdCB0aGUgcG9ydCBpcyBwcmlt
YXJpbHkKPiA+ID4gaW50ZW5kZWQgZm9yIHVzZSBpbiBkZXZpY2UgbW9kZS4gVGhpcyBhc3N1bXB0
aW9uIGFscmVhZHkgaGFzIHByZWNlZGVuY2UKPiA+ID4gaW4gdGhlIHN5bm9wc3lzIGR3YzMgZHJp
dmVyLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBYXJvbiBLbGluZyA8d2ViZ2VlazEyMzRA
Z21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyB8IDgg
KysrLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMg
Yi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPiA+ID4gaW5kZXggNzlkNDgxNGQ3NThkNWUxZjBl
ODIwMGQ2MWUxMzE2MDZhZGJiMGUyZC4uYzU2ZTgzMjE2ZDBmNTY2YTA5YjY3Mzc3MTcyZmIwNGM4
NDA2ZjRjZiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCj4gPiA+
ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwo+ID4gPiBAQCAtNzMxLDEzICs3MzEsMTEg
QEAgc3RhdGljIHZvaWQgdGVncmFfeHVzYl9wYXJzZV91c2Jfcm9sZV9kZWZhdWx0X21vZGUoc3Ry
dWN0IHRlZ3JhX3h1c2JfcG9ydCAqcG9ydCkKPiA+ID4KPiA+ID4gICAgICAgICBpZiAobW9kZSA9
PSBVU0JfRFJfTU9ERV9IT1NUKQo+ID4gPiAgICAgICAgICAgICAgICAgcm9sZSA9IFVTQl9ST0xF
X0hPU1Q7Cj4gPiA+IC0gICAgICAgZWxzZSBpZiAobW9kZSA9PSBVU0JfRFJfTU9ERV9QRVJJUEhF
UkFMKQo+ID4gPiArICAgICAgIGVsc2UKPiA+ID4gICAgICAgICAgICAgICAgIHJvbGUgPSBVU0Jf
Uk9MRV9ERVZJQ0U7Cj4gPiA+Cj4gPiA+IC0gICAgICAgaWYgKHJvbGUgIT0gVVNCX1JPTEVfTk9O
RSkgewo+ID4gPiAtICAgICAgICAgICAgICAgdXNiX3JvbGVfc3dpdGNoX3NldF9yb2xlKHBvcnQt
PnVzYl9yb2xlX3N3LCByb2xlKTsKPiA+ID4gLSAgICAgICAgICAgICAgIGRldl9kYmcoJnBvcnQt
PmRldiwgInVzYiByb2xlIGRlZmF1bHQgbW9kZSBpcyAlcyIsIG1vZGVzW21vZGVdKTsKPiA+ID4g
LSAgICAgICB9Cj4gPiA+ICsgICAgICAgdXNiX3JvbGVfc3dpdGNoX3NldF9yb2xlKHBvcnQtPnVz
Yl9yb2xlX3N3LCByb2xlKTsKPiA+ID4gKyAgICAgICBkZXZfZGJnKCZwb3J0LT5kZXYsICJ1c2Ig
cm9sZSBkZWZhdWx0IG1vZGUgaXMgJXMiLCBtb2Rlc1ttb2RlXSk7Cj4gPiA+ICB9Cj4gPiA+Cj4g
PiA+ICBzdGF0aWMgaW50IHRlZ3JhX3h1c2JfdXNiMl9wb3J0X3BhcnNlX2R0KHN0cnVjdCB0ZWdy
YV94dXNiX3VzYjJfcG9ydCAqdXNiMikKPiA+ID4KPiA+ID4gLS0tCj4gPiA+IGJhc2UtY29tbWl0
OiA5MWU1YmZlMzE3ZDhmODQ3MWZiYWEzZTcwY2Y2NmNhZTEzMTRhNTE2Cj4gPiA+IGNoYW5nZS1p
ZDogMjAyNTA0MDQteHVzYi1wZXJpcGhlcmFsLWM0NWIxNjM3ZjMzYgo+ID4gPgo+ID4gPiBCZXN0
IHJlZ2FyZHMsCj4gPiA+IC0tCj4gPiA+IEFhcm9uIEtsaW5nIDx3ZWJnZWVrMTIzNEBnbWFpbC5j
b20+Cj4gPiA+Cj4gPiA+Cj4gPgo+ID4gRnJpZW5kbHkgcmVtaW5kZXIgYWJvdXQgdGhpcyBwYXRj
aC4KPiA+Cj4gPiBTaW5jZXJlbHksCj4gPiBBYXJvbgo+Cj4gRnJpZW5kbHkgcmUtcmVtaW5kZXIg
YWJvdXQgdGhpcyBzZXJpZXMuCj4KPiBTaW5jZXJlbHksCj4gQWFyb24gS2xpbmcKCkl0IGhhcyBi
ZWVuIG92ZXIgYSBtb250aCBzaW5jZSB0aGlzIHBhdGNoIHdhcyBzdWJtaXR0ZWQuIEFuZCBuZWl0
aGVyCnRoaXMgbm9yIGFueSBvdGhlciBwYXRjaCBJJ3ZlIHN1Ym1pdHRlZCBzaW5jZSBoYXZlIGJl
ZW4gcmV2aWV3ZWQgb3IKcmVzcG9uZGVkIHRvIGJ5IGFueSBUZWdyYSBzdWJzeXN0ZW0gbWFpbnRh
aW5lci4gSXMgdGhlcmUgYW55b25lIGVsc2UKdGhhdCBjYW4gcmV2aWV3IHRoZXNlIGFuZCBwaWNr
IHRoZW0gdXA/IE9yIGlzIHRoZXJlIGFueSBvdGhlciBwYXRoCmZvcndhcmQgZm9yIHNlcmllcyB0
aGF0IGdldCBpZ25vcmVkIGJ5IHRoZSBzdWJzeXN0ZW0gbWFpbnRhaW5lcnM/CgpTaW5jZXJlbHks
CkFhcm9uIEtsaW5nCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
