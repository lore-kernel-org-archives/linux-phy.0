Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A2FD3A696
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 20:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3g/bRx8/S7v3doz68c1Y1Afm82yMCWSj65Q7IDyj5dk=; b=IZM80R1bou2ezH
	nK4Qw1j+cI7yrrdLG1sYMfnk3AZ93Heu+f5mpGgv6gr19IQokUSYu94GldQcaEMHHjTNH5WUhkhDl
	Lpg58xYtEfN+Byt8QqCnYbkz3lCpcGb5Ch0uxsCW4J5kkuRnuuiayKROWD2yAnER/kix3VeK2ojd/
	7qBNDILYBDVBAIwaaorJ7XgQOuohnoGcgOVly/TJAmB111UewMH/Z6GaRE3yw+58I5bV2TrI9o0Kj
	6fHbEBpbBrc1cdq7BqdZbkNmaX76eRCSzprhHxgbUHS6tWtdyvWEMfRzBA7jeiA9zDkJqNNFvcCx+
	Y7IguAa7IyIPWxhxNQgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5sVm-0000000Fivw-1sNx;
	Tue, 29 Oct 2024 20:08:18 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5sU7-0000000Fijv-3kJw
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 20:06:37 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e290e857d56so5498308276.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Oct 2024 13:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730232394; x=1730837194; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H3NttoA5WxBHMHxzBK9jMzti32CvvOP6K0PZcY+FhbE=;
        b=nwaq8GEPjzK8xGggG/uA8qwKU6mmeZFXvmsr3rEnyF6YkcJRYHYHgD+XErvrwMI+l5
         7Wa86N/HO3ERHmdDSbO9EeMfMUoquF5KO8clfBHKOgyd/9IKaRx3rsarPQynjEXfyPtO
         D5YUJoQTRbCQu8EGj9NxYHOqf9c2GklZupmhO+hpZqZRavFhuNF8D/MO+lmOovI0TXeQ
         QZtrtqrUtjSuaT72EeH+pSpi9K25m6pXUrfoNUHTdC0M3DZ7wq5njqH9blz5N1ECzD51
         RO8PMJtbYJhm87zj7fBUO4vGnfx/Xp7mF0akZc37GtNHSmFwjG1zNPaOCPhTVNZ8/2cF
         /JQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730232394; x=1730837194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H3NttoA5WxBHMHxzBK9jMzti32CvvOP6K0PZcY+FhbE=;
        b=sHUz1wNQ83zE42aGbKYKUtriMuQV89k7qO4n+QW0w3La184tHLIv7CWeDzCmwd+vgk
         qgle9nD5VOkfV7FNfzsGOH2JJzxPLsP18yInhWphF8pQ+Hs0OUuF/7g2WJzA/PfXUygd
         9PzR6ROja3gpea8/2k831r78CH6eEfAs7/UmDTwv4TTdE9W0tI3OP6PCqSHv+4axnrCA
         v1VQfJXTR5Xs6BBrI240hlihqUnwePz5he9O2okKGsy+fLACPkwX+AfIqKDzteZaGSXC
         zxbf53vyMTTjvltLS8W6kGnZAXd85gl7Ehltm5j938PK1oz56hWg3xYTqqaGaWzxANRN
         gJNw==
X-Forwarded-Encrypted: i=1; AJvYcCWriLycOewX9wKhVCoXqja0m65RNNZxEeiKg4zn4l9mdZNH5cU2691dIzweKVhWMuffmCP9tRU8KTU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFJMmBhpt0PnXG+C2WF868GLXp1dPzR1uvHMwoee5qVyyxZp1g
	HYVLzv7I4ovXj+0s2q9zME76VvVpvflV0fhPo1+tbbVjcx8WSx1aSiQyJz5fRUYsJMpaVcoXYtn
	96p0CuleRcpAAI6IRngh+ZQHo5vUmVmzPs1JS6A==
X-Google-Smtp-Source: AGHT+IHJIZjJm0+Hsxf3gPKdK8yBtqrSRKRjmh10LGyKq5VrJEw8ofGWS0qIV7jYqKH4wMYRbrhheBmDRAEt5XkqPpk=
X-Received: by 2002:a05:6902:1109:b0:e30:6dea:3ab4 with SMTP id
 3f1490d57ef6-e3087a6060fmr12587842276.23.1730232393985; Tue, 29 Oct 2024
 13:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20241029192107.2344279-1-peter.griffin@linaro.org>
In-Reply-To: <20241029192107.2344279-1-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 29 Oct 2024 15:06:23 -0500
Message-ID: <CAPLW+4k7wd4Wix8xEB8+Aeb10_D9XU9jbxhCZ_OMn1fW5OOAtg@mail.gmail.com>
Subject: Re: [PATCH] phy: samsung-ufs: switch back to syscon_regmap_lookup_by_phandle()
To: Peter Griffin <peter.griffin@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski@linaro.org, 
	alim.akhtar@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_130635_947163_FAC701DA 
X-CRM114-Status: GOOD (  17.03  )
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

T24gVHVlLCBPY3QgMjksIDIwMjQgYXQgMjoyMeKAr1BNIFBldGVyIEdyaWZmaW4gPHBldGVyLmdy
aWZmaW5AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBOb3cgZXh5bm9zLXBtdSBjYW4gcmVnaXN0ZXIg
aXRzIGN1c3RvbSByZWdtYXAgZm9yIGdzMTAxIHZpYQo+IG9mX3N5c2Nvbl9yZWdpc3Rlcl9yZWdt
YXAoKSB3ZSBjYW4gc3dpdGNoIGJhY2sgdG8gdGhlIHN0YW5kYXJkCj4gc3lzY29uX3JlZ21hcF9s
b29rdXBfYnlfcGhhbmRsZSgpIGFwaSBmb3Igb2J0YWluaW5nIHRoZSByZWdtYXAuCj4KPiBBZGRp
dGlvbmFsbHkgYWRkIGEgS2NvbmZpZyBkZXBlbmRlbmN5IGZvciBNRkRfU1lTQ09OLgo+Cj4gU2ln
bmVkLW9mZi1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgo+IC0t
LQoKUmV2aWV3ZWQtYnk6IFNhbSBQcm90c2Vua28gPHNlbWVuLnByb3RzZW5rb0BsaW5hcm8ub3Jn
PgoKPiAgZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnICAgICAgICAgICB8IDEgKwo+ICBkcml2
ZXJzL3BoeS9zYW1zdW5nL3BoeS1zYW1zdW5nLXVmcy5jIHwgNiArKystLS0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmln
Cj4gaW5kZXggZjEwYWZhM2Q3ZmY1Li5lMjMzMGIwODk0ZDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waHkvc2Ftc3VuZy9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmln
Cj4gQEAgLTMzLDYgKzMzLDcgQEAgY29uZmlnIFBIWV9TQU1TVU5HX1VGUwo+ICAgICAgICAgdHJp
c3RhdGUgIkV4eW5vcyBTb0Mgc2VyaWVzIFVGUyBQSFkgZHJpdmVyIgo+ICAgICAgICAgZGVwZW5k
cyBvbiBPRiAmJiAoQVJDSF9FWFlOT1MgfHwgQ09NUElMRV9URVNUKQo+ICAgICAgICAgc2VsZWN0
IEdFTkVSSUNfUEhZCj4gKyAgICAgICBzZWxlY3QgTUZEX1NZU0NPTgo+ICAgICAgICAgaGVscAo+
ICAgICAgICAgICBFbmFibGUgdGhpcyB0byBzdXBwb3J0IHRoZSBTYW1zdW5nIEV4eW5vcyBTb0Mg
VUZTIFBIWSBkcml2ZXIgZm9yCj4gICAgICAgICAgIFNhbXN1bmcgRXh5bm9zIFNvQ3MuIFRoaXMg
ZHJpdmVyIHByb3ZpZGVzIHRoZSBpbnRlcmZhY2UgZm9yIFVGUyBob3N0Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmMgYi9kcml2ZXJzL3BoeS9zYW1z
dW5nL3BoeS1zYW1zdW5nLXVmcy5jCj4gaW5kZXggNmM1ZDQxNTUyNjQ5Li44ZTljY2QzOWY5N2Ug
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktc2Ftc3VuZy11ZnMuYwo+ICsr
KyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LXNhbXN1bmctdWZzLmMKPiBAQCAtMTMsMTEgKzEz
LDExIEBACj4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4K
PiAgI2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nv
bi5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9waHkv
cGh5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUg
PGxpbnV4L3JlZ21hcC5oPgo+IC0jaW5jbHVkZSA8bGludXgvc29jL3NhbXN1bmcvZXh5bm9zLXBt
dS5oPgo+Cj4gICNpbmNsdWRlICJwaHktc2Ftc3VuZy11ZnMuaCIKPgo+IEBAIC0yNjgsOCArMjY4
LDggQEAgc3RhdGljIGludCBzYW1zdW5nX3Vmc19waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gICAgICAgICB9Cj4KPiAt
ICAgICAgIHBoeS0+cmVnX3BtdSA9IGV4eW5vc19nZXRfcG11X3JlZ21hcF9ieV9waGFuZGxlKGRl
di0+b2Zfbm9kZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICJzYW1zdW5nLHBtdS1zeXNjb24iKTsKPiArICAgICAgIHBoeS0+cmVnX3Bt
dSA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUoZGV2LT5vZl9ub2RlLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAic2Ftc3Vu
ZyxwbXUtc3lzY29uIik7Cj4gICAgICAgICBpZiAoSVNfRVJSKHBoeS0+cmVnX3BtdSkpIHsKPiAg
ICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihwaHktPnJlZ19wbXUpOwo+ICAgICAgICAgICAg
ICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCBzeXNjb24gcmVtYXAgZm9yIHBtdVxuIik7Cj4gLS0K
PiAyLjQ3LjAuMTYzLmcxMjI2ZjZkOGZhLWdvb2cKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
