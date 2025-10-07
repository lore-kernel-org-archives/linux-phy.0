Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A47CCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 19:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSQHiuabzyNBPDSaL5xzcwbzTCo4daKhXi5OPBMldXU=; b=o4WD48AlFmZa2d
	CE+9GUwBKG55vN4Nz1Iol9siOj9hmimIsyuflqVSUMIOyFs22CT8zslFib90i4cajhTFtaGSQj9bE
	eCJF6o+8K9uyZieUI6hYy1pxdCxsuOFJBaczAGuA7kESpxyyuiKrESyHUrk6kzRXzhbCHddUsbHQN
	R9VeVnA6T3ns6gPMVHkssDtNxvqwAMScV2rqijRM+0T33XUgOEU478k406gaEdVOUkRXPDiC6w50K
	s3U6SEmU7b2trrn906QbnHr+SZhtdK+TOxjO7+qhgKKo+uDHESAgYk0ijb2oAo4mEE4J1kXJv2vhX
	zd3QoUYFMs7MDudCVY4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6DEQ-00000002fT4-2uB7;
	Tue, 07 Oct 2025 19:20:18 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6DEO-00000002fSP-369L
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 19:20:17 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-71d60157747so74390197b3.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 12:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759864815; x=1760469615; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fyvVzqRAZ+jJPuuow0tWhdGCSI6e0A8fiu8e4y33sz4=;
        b=V8Et1FXiEHgUaiqXOgyTQfGhw/Qi/MbJvolAetFDOZZrCmJWUxQN25a5ypX8Kotpfg
         qrLXgBoIPCPwarjMi4CbzJ5f8Y7H/bVMgjL8r/5Pt4ZZVk1FHC6XcEuuFiEzHxJyqfvY
         t/fneKniSVJAU1P34WZprj7JHeZPG8wojozQI6KWk62g+FF78q4euqh4tSNatJTxQ8SO
         0qbsuUZl5K8vTLBCKZD+1biE0jrYrHUUhECqq8EMhDADYna3UpCMIYW4Rbx7EtQafOvi
         iUvRMItlzA8FeTeN3Q8kEerRO+O7L/O4uYilI2JjP7i0UoqXWgTdwLYKTWYj2mU1dhST
         HkCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759864815; x=1760469615;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fyvVzqRAZ+jJPuuow0tWhdGCSI6e0A8fiu8e4y33sz4=;
        b=uIkl9fuTmew6maZ4ai5ga6cazYddTbBe3ToGGp0Dk56l2omh8xT53dTyx3JTQXx0WU
         +we1w24csqjOi5RiWfkf2A5V5dc2cp1YsS+dPzoJzAbvxYYNwauslzF5nmszB+fzrSTu
         wz6iS9uJ41PatFvrD/LLjOQxfkEiWOdMDoUXlBb/Yc3d9X6t99Hb7TyCgEBtDwlniXkp
         VZN3Q3e8cCgI1ztcjQfDdGZq/GYeiqTf+icmIi7Hc68JqUa1zDLtT27QfTq65CVoq48/
         OkNE9OdF6fSo/aftcRALHHOADL7wfVkrbuWLZC8/KNz1JPcTPBulPMCVq3ddxaeNhcGR
         26ag==
X-Forwarded-Encrypted: i=1; AJvYcCW1256h475mzbSK/EcA23HFhIPcQTtLnAPm1eLy1p8xX4hFyFAS+z2gOf58O7IrL0USW5Z8Sep8iy8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBNGESSipoq9Wlxq8wKYWW1dR9iCQTt+YI+UtCEqO095LiscUg
	MtUH6z8Ls2SoBSbGqtar8XikdXTvpDPow8hzj/FPlxwBUXYVlI409b8WuI4s/2idr3eBqa2x61g
	zFIE1R5Q0fr6o5n++00AGSTTwhB6MFJqtXObqN1KKAA==
X-Gm-Gg: ASbGncv/p0CopMmOuLyZn7uuZLUwdA/9vvwrTVMkEwgi6Giio21fx4fe6PIFvREPfkI
	ei6hVnC20rTST3PraaeWgshrmC8UethreYbRXBbIX214qrcg2CFihyoG+7rSoFP82vWwrKhJgzN
	X2f4Q7Di3nt+LeK5C3cS8BcbKebH+s8+GZPpx0zi+mPujxClZWJpsFvQl3MwINZxY2DjmlPeeWk
	DVlXauCqYFRRh7URULAF8htI0WU+yN6E0Tpd0BCY3Rg
X-Google-Smtp-Source: AGHT+IEcS4H3ART7XbkyRLcIVlRN9ttSIKXOMErrDhYI7itdbz36cK6980ngyigAxI0SbIW7DumJI/JYvN83SQijQyM=
X-Received: by 2002:a05:690e:c8:b0:622:7517:af78 with SMTP id
 956f58d0204a3-63ccb85338fmr715381d50.13.1759864815549; Tue, 07 Oct 2025
 12:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
In-Reply-To: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 7 Oct 2025 14:20:03 -0500
X-Gm-Features: AS18NWCtEcLGJeO6dNMCbDSRSbiDXW6f_hsYoSbqLJrQg-Tj2Vl72UtnnpoTtMI
Message-ID: <CAPLW+4mT+BcK+sLTenaNP7T3iFF1yXj4kziSYiJx2gOYV2NSWg@mail.gmail.com>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix clock prepare imbalance
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_122016_789792_1C410E59 
X-CRM114-Status: GOOD (  16.28  )
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

T24gTW9uLCBPY3QgNiwgMjAyNSBhdCAzOjA34oCvQU0gQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRy
YXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBDb21taXQgZjRmYjljNGQ3Zjk0ICgicGh5OiBl
eHlub3M1LXVzYmRyZDogYWxsb3cgRFdDMyBydW50aW1lIHN1c3BlbmQKPiB3aXRoIFVEQyBib3Vu
ZCAoRTg1MCspIikgaW5jb3JyZWN0bHkgYWRkZWQgY2xrX2J1bGtfZGlzYWJsZSgpIGFzIHRoZQo+
IGludmVyc2Ugb2YgY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUoKSB3aGlsZSBpdCBzaG91bGQgaGF2
ZSBvZiBjb3Vyc2UKPiB1c2VkIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKCkuIFRoaXMgbWVh
bnMgaW5jb3JyZWN0IHJlZmVyZW5jZQo+IGNvdW50cyB0byB0aGUgQ01VIGRyaXZlciByZW1haW4u
Cj4KPiBVcGRhdGUgdGhlIGNvZGUgYWNjb3JkaW5nbHkuCj4KPiBGaXhlczogZjRmYjljNGQ3Zjk0
ICgicGh5OiBleHlub3M1LXVzYmRyZDogYWxsb3cgRFdDMyBydW50aW1lIHN1c3BlbmQgd2l0aCBV
REMgYm91bmQgKEU4NTArKSIpCj4gQ0M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQt
b2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+IC0tLQoK
UmV2aWV3ZWQtYnk6IFNhbSBQcm90c2Vua28gPHNlbWVuLnByb3RzZW5rb0BsaW5hcm8ub3JnPgoK
PiAgZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDIgKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKPiBpbmRleCBhODhiYTk1YmRjOGY1MzlkZDhk
OTA4OTYwZWUyMDc5OTA1Njg4NjIyLi4xYzhiZjgwMTE5ZjExZTJjZDJmMDdjODI5OTg2OTA4YzE1
MDY4OGFjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNi
ZHJkLmMKPiArKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCj4g
QEAgLTE4MjMsNyArMTgyMyw3IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfb3JpZW5fc3df
c2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKPiAgICAgICAgICAgICAgICAgcGh5X2Ry
ZC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsKPiAgICAgICAgIH0KPgo+IC0gICAgICAgY2xr
X2J1bGtfZGlzYWJsZShwaHlfZHJkLT5kcnZfZGF0YS0+bl9jbGtzLCBwaHlfZHJkLT5jbGtzKTsK
PiArICAgICAgIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeV9kcmQtPmRydl9kYXRhLT5u
X2Nsa3MsIHBoeV9kcmQtPmNsa3MpOwo+Cj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gLS0t
Cj4gYmFzZS1jb21taXQ6IDNiOWIxZjhkZjQ1NGNhYTQ1M2M3ZmIwNzY4OTA2NGVkYjJlZGE5MGEK
PiBjaGFuZ2UtaWQ6IDIwMjUxMDA2LWdzMTAxLXVzYi1waHktY2xrLWltYmFsYW5jZS02MmViNGU3
NjFkNTUKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFz
emlrQGxpbmFyby5vcmc+Cj4KPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
