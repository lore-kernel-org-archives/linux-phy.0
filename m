Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FBDCAC598
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 16:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HQhbo8YJybFy+Wx3unSOm6CLRqvuGElWBiENvkLMQQ=; b=pOZsP1gxeKlV88
	sULU4ZoowxFhRkaBc9y/RIiFBvln8HiAR0/Lhz58ZMK4ewu1onzG+Hz9nxqGv2y0fa1f34H7F8KGY
	j86ej3nvWrEb9gw8mp7NEQGWdhbrfxQXTFyL7il+OVBrlvm6JETrnFisxU8ryKmOb3zFT3Hb6Qexu
	kggl/epHx+TIzVkClfGsemAA8Ndtgwynghz5mb0bDy6kbrSEVWgK7eqPSNGxupAMWUbADlAnF6Tsj
	n4xxjvTREamkp+dT1pHuQBGw63M4mwyBa+MI6Vn3GzG2I7UW8LqjHSB6j2hcyE/4USthGtp65z0hq
	UE+04dfKIXZ5cJAtX8Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyYQO-00000008Rlx-3kOI;
	Tue, 16 Sep 2025 16:21:00 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyYQM-00000008Rkq-3EAW
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 16:20:59 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b07e3a77b72so5292166b.0
        for <linux-phy@lists.infradead.org>; Tue, 16 Sep 2025 09:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758039656; x=1758644456; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ulrBpmULpfIvUTZuGDI6k7fL4z+It/qAwTU3sy4JRNA=;
        b=mQcR9j4icUL6ZN/7NmWlNA6Q7ccDLdXg6Um69tGFjxZbAaKxGP/NJUE/ntFOuthtrK
         eaQD/KwZxgSVmFbOFsBYfQLdC+KxjEh4N4QvUc7qt8l6wSaNJ+EiqlHjNw30QfDG2L33
         rFla0Hkoofh+Wj4ffKNx39TJz5LFQUUHFMdtBlCM2nLPTciDPosXO+mqNo7U4xsq2l55
         R25uWmQY04VprsG1W3Sl0UZfxsjpyn6kUnvC41wzpgjtE6U257nHa8GG4cBYgm3mmjbr
         o1m2sDfX4zOj/zoL2LLKSwm1Do+hAjOljNHSpFNbzkSpIy+T/eomo84awt+sXrIGVsIr
         YddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758039656; x=1758644456;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ulrBpmULpfIvUTZuGDI6k7fL4z+It/qAwTU3sy4JRNA=;
        b=dapdMnhBflPLaASbsg2iQ4vNOv11RDDasixzbffzanf/aOHs7hdISV3GZxapBpYQTv
         hrTqk8onQn32mLDa6Q9rGDGHZTP75VG/Gtq0jYDnJqXJ6mxXjAxRqguvXZ2fUVisQ4Wn
         rWDGp4EH0nMkH/kErW6aqmdZWFSWAaHR5ieaE0MQ3PvPwTVfUGTIF84pi0EfUp5hdKls
         wUMN2OL7uFwTTO39ypkNwQDdConKo6O0uAM7hRuJ633X2YWP5dwpixCm7RnV6aml/I+i
         Zft4mbW6glqbW4KXCLpFWzYAsxd22wUl9M60LKxcCDQon3JIKxoGkm6SHKuXAzqHr0zA
         eIxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeCRsFWzz3SQ9mEQbAZQqB2w9AJxd33upUBkreOaEmMQJauepNrFDGfgEagw5YNJg4PVjl9FTtCz4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfSIEupIUcDmSVHEMTf66YtK3f1sgDjvhjOwh5AtBW0OiZJgWl
	D5HVrcoqwtBeRK1VxtOkhSxjnttwA0DS3SVt9QH4X6OaCUQ3MN4Rlz2HM0ggC15laCe27YMSlwh
	DALq970dVe2bxebQUvwkPtQZs8oC9Msg=
X-Gm-Gg: ASbGncu2tTYDTT89VE7cCciTLJ43A962EyAiqTHvhgW65bGbeSywdjnQZqeN/hQe2mC
	LPDjkYuTloV0o4sFC0T2wEhxbgW9McKmY5peECmBph3MQncVfakNHHiOWXtpH/tQnSy7wA0c4PV
	LRNMcpsMLP1cT20Rs8i1XjTJfK8hj17w0qaHaiFO+dv/9ZP+taoC/lnNJcR9SBW4UNni4qYQgBC
	q5FPf2YPyjRGtbKDnZf
X-Google-Smtp-Source: AGHT+IGA8Hqku61GdN0tv82dLQSpehp3yOORqLZ98SpsQ5y7NQFjpoQmHrSdJ6nWYWpl2lgbZa5OwvxQ8sZ190mW4i0=
X-Received: by 2002:a17:907:3ea6:b0:aff:1586:14c2 with SMTP id
 a640c23a62f3a-b167ea602f4mr354112766b.4.1758039656243; Tue, 16 Sep 2025
 09:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com> <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
In-Reply-To: <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 16 Sep 2025 19:20:20 +0300
X-Gm-Features: AS18NWDRlilzMzu6AWDLe7t6r54-DCtwvznfQrFZlMZ-V39YV0OjdaouC0GJw1E
Message-ID: <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to devm_spmi_subdevice_alloc_and_add()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, sboyd@kernel.org, 
	jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, 
	arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, sre@kernel.org, krzysztof.kozlowski@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com, wenst@chromium.org, 
	casey.connolly@linaro.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_092058_821592_C5E8A41B 
X-CRM114-Status: GOOD (  20.15  )
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

T24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgNjoxMeKAr1BNIFV3ZSBLbGVpbmUtS8O2bmlnCjx1Lmts
ZWluZS1rb2VuaWdAYmF5bGlicmUuY29tPiB3cm90ZToKPiBPbiBUdWUsIFNlcCAxNiwgMjAyNSBh
dCAwNDozNTozNVBNICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBPbiBUdWUsIFNl
cCAxNiwgMjAyNSBhdCAwMzoyNDo1NlBNICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToK
PiA+ID4gT24gVHVlLCBTZXAgMTYsIDIwMjUgYXQgMTA6NDQ6NDBBTSArMDIwMCwgQW5nZWxvR2lv
YWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6CgouLi4KCj4gPiA+ID4gK01PRFVMRV9JTVBPUlRfTlMo
IlNQTUkiKTsKPiA+ID4KPiA+ID4gSWYgaXQncyBleGFjdGx5IHRoZSBmaWxlcyB0aGF0ICNpbmNs
dWRlIDxsaW51eC9zcG1pLmg+IHNob3VsZCBoYXZlIHRoYXQKPiA+ID4gbmFtZXNwYWNlIGltcG9y
dCwgeW91IGNhbiBwdXQgdGhlIE1PRFVMRV9JTVBPUlRfTlMgaW50byB0aGF0IGhlYWRlci4KPiA+
Cj4gPiBXaGljaCBtYWtlcyBhbnlvbmUgdG8gaW1wb3J0IG5hbWVzcGFjZSBldmVuIGlmIHRoZXkg
anVzdCB3YW50IHRvIHVzZSBzb21lIHR5cGVzCj4gPiBvdXQgb2YgdGhlIGhlYWRlci4KPgo+IE5v
dGljZSB0aGF0IEkgY2FyZWZ1bGx5IGZvcm11bGF0ZWQgbXkgc3VnZ2VzdGlvbiB0byBjb3BlIGZv
ciB0aGlzIGNhc2UuCgpBbmQgSSBjYXJlZnVsbHkgYW5zd2VyZWQuIFlvdXIgcHJvcG9zYWwgd29u
J3QgcHJldmVudCBfb3RoZXJfIGZpbGVzIHRvCnVzZSB0aGUgc2FtZSBoZWFkZXIgaW4gdGhlIGZ1
dHVyZSB3aXRob3V0IG5lZWRpbmcgYSBuYW1lc3BhY2UgdG8gYmUKaW1wb3J0ZWQuCgo+ID4gVGhp
cyBpcyBub3QgZ29vZCBzb2x1dGlvbiBnZW5lcmFsbHkgc3BlYWtpbmcuIEFsc28gdGhpcyB3aWxs
Cj4gPiBkaW1pbmlzaCBvbmUgb2YgdGhlIHB1cnBvc2VzIG9mIF9OUyB2YXJpYW50cyBvZiBNT0RV
TEUqL0VYUE9SVCosIGkuZS4gbWFrZSBpdAo+ID4gaW52aXNpYmxlIHRoYXQgc29tZSBvZiB0aGUg
Y29kZSBtYXkgYmVjb21lIGFuIGFidXNlciBvZiB0aGUgQVBJIGp1c3QgYnkgc29tZW9uZQo+ID4g
aW5jbHVkZSB0aGUgaGVhZGVyIChmb3IgYSByZWFzb24gb3IgYnkgYSBtaXN0YWtlKS4KPgo+IFll
YWgsIG9waW5pb25zIGRpZmZlci4gSW4gbXkgZXllcyBpdCdzIHF1aXRlIGVsZWdhbnQuCgpJdCdz
IG5vdCBhIHB1cmUgb3BpbmlvbiwgaXQgaGFzIGEgdGVjaG5pY2FsIGJhY2tncm91bmQgdGhhdCBJ
CmV4cGxhaW5lZC4gVGhlIGV4cGxpY2l0IHVzYWdlIG9mIE1PRFVMRV9JTVBPUlRfTlMoKSBpcyBi
ZXR0ZXIgdGhhbgpzb21lIGhlYWRlciBzb21ld2hlcmUgdGhhdCBtaWdodCBldmVuIGJlIGluY2x1
ZGVkIGJ5IGFub3RoZXIgYW5kIGJlCnByb3hpZWQgdG8gdGhlIGNvZGUgdGhhdCBkb2Vzbid0IG5l
ZWQgLyB3YW50IHRvIGhhdmUgdGhpcyBuYW1lc3BhY2UgdG8KYmUgcHJlc2VudC4gUHV0aW5nIE1P
RFVMRV9JTVBPUlRfTlMoKSBpbnRvIGEgX2hlYWRlcl8gaXMgYSBtaW5lZmllbGQKZm9yIHRoZSBm
dXR1cmUuCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
