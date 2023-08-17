Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 872A2C27C7A
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 07:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBEK2c1k+aEgvJcn93mf80US3TbseDRb2z+7Y0v/X1A=; b=3/QxgdfC5yqlKu
	w44IQSxbkM3GxM4DxvgmrBKqzWC5M1SviDeV2BDlAxQKb6VEZFoKWjpthcfs3VFI2WmERQ+xm1s6s
	Ezuoq4c0N6YF1LPVir9Ub+dDpsNUg1eza/O0TGUd77cT1TTQDEI64yCOetbiiLOAmHgRVHhTaAQz7
	mTtpXHC8y/FmuhbCbbs39vYPO7iCQ1/m8a637Cq4GDJDtry8A8rIzlEOH3jIHiY57lT52tfKuNL0I
	RzkZwnhXYx1BThIenvWO02oLLSQ1iYi5w+cXLMgGv0+KeQumcvMWcF4DaeTPX8+zbytWH+TFozdDN
	NiYPv/X3tCu9hsvR55Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXTa-005ix1-0Z;
	Thu, 17 Aug 2023 07:31:26 +0000
Received: from mail-oo1-f54.google.com ([209.85.161.54])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXTX-005iw9-0Y
	for linux-phy@lists.infradead.org;
	Thu, 17 Aug 2023 07:31:24 +0000
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-56c74961e0cso5339758eaf.3
        for <linux-phy@lists.infradead.org>; Thu, 17 Aug 2023 00:31:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692257481; x=1692862281;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FOaqzuTKKoZ2nsOmaiM8FLeS8uIMuj6AgXRnSyVBWl0=;
        b=ENa/HVBWxaqHdD9GYMoovuCf11Su2XcOuqWCnX/+S5FMLqPRgWRmqEZ0lEkegReedy
         1Ft0iW99/WUU9hOGTy7KqZ5UBfH1zAffLZ9uFnRV3PQCCn7/3HQ2hLP7HcKTGxDrA5lT
         qPyzbGYdjJtD8fN7QiEsRAflDDnPv4ovC8gd4BKCOKC+c59rqMJf7zmibN35g4R7hl3B
         KS7CAXZFAfK+Gb0jOBg4G6clgIyZzeGB2ckHLuTRQpkR5e4iEYdgntba/kw6LQTXCzLc
         cb2n5XS9Vmagb9L5qFP/DaLgow71xkMR4dr5DjhWRd9jpi8QK3yPdw4oYg8bUFEwo/yI
         +coA==
X-Gm-Message-State: AOJu0YzHcmw+epsOs3h9esrhVaznW6TzFKHJnSTy3KXjOekOjUf9OL3N
	HPB/RIDw5X0b0siIR9ZgDI80yg4nO8lvVA==
X-Google-Smtp-Source: AGHT+IE7s+tQsvRE1g3dlQZz1uoeFLAv2uPUS56pUH2QkuWYKPrDqO36x6tATiHfMPsPu9pdTWKrgg==
X-Received: by 2002:a05:6358:5281:b0:134:c785:5932 with SMTP id g1-20020a056358528100b00134c7855932mr4249963rwa.32.1692257481057;
        Thu, 17 Aug 2023 00:31:21 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id k6-20020a0dfa06000000b005731dbd4928sm4435652ywf.69.2023.08.17.00.31.20
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Aug 2023 00:31:20 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-c5f98fc4237so5714037276.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Aug 2023 00:31:20 -0700 (PDT)
X-Received: by 2002:a25:ae58:0:b0:d4f:7f64:df19 with SMTP id
 g24-20020a25ae58000000b00d4f7f64df19mr3834941ybe.14.1692257480593; Thu, 17
 Aug 2023 00:31:20 -0700 (PDT)
MIME-Version: 1.0
References: <202308161422.37GEMlZkA018197@rtits1.realtek.com.tw>
 <6c02765f89eb4455806b895a6e0cb763@realtek.com> <ZN3CQ1Y3yC9p/01Y@matsya>
In-Reply-To: <ZN3CQ1Y3yC9p/01Y@matsya>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 17 Aug 2023 09:31:07 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWF2nts19vEuPeaRGWJBgGyS591aWizspbiLgmuCvphbQ@mail.gmail.com>
Message-ID: <CAMuHMdWF2nts19vEuPeaRGWJBgGyS591aWizspbiLgmuCvphbQ@mail.gmail.com>
Subject: Re: [PATCH] phy: realtek: Realtek PHYs should depend on ARCH_REALTEK
To: Vinod Koul <vkoul@kernel.org>
Cc: =?UTF-8?B?U3RhbmxleSBDaGFuZ1vmmIzogrLlvrdd?= <stanley_chang@realtek.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_003123_206395_84DBFA29 
X-CRM114-Status: GOOD (  23.20  )
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

SGkgVmlub2QsCgpPbiBUaHUsIEF1ZyAxNywgMjAyMyBhdCA4OjQ24oCvQU0gVmlub2QgS291bCA8
dmtvdWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gMTctMDgtMjMsIDAyOjA2LCBTdGFubGV5IENo
YW5nW+aYjOiCsuW+t10gd3JvdGU6Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yZWFs
dGVrL0tjb25maWcgYi9kcml2ZXJzL3BoeS9yZWFsdGVrL0tjb25maWcgaW5kZXgKPiA+ID4gNjUw
ZTIwZWQ2OWFmNDFkMi4uNzVhYzdlN2MzMWFlYzZmMiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVy
cy9waHkvcmVhbHRlay9LY29uZmlnCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvS2Nv
bmZpZwo+ID4gPiBAQCAtMiw2ICsyLDkgQEAKPiA+ID4gICMKPiA+ID4gICMgUGh5IGRyaXZlcnMg
Zm9yIFJlYWx0ZWsgcGxhdGZvcm1zCj4gPiA+ICAjCj4gPiA+ICsKPiA+ID4gK2lmIEFSQ0hfUkVB
TFRFSyB8fCBDT01QSUxFX1RFU1QKPiA+ID4gKwo+ID4gPiAgY29uZmlnIFBIWV9SVEtfUlREX1VT
QjJQSFkKPiA+ID4gICAgICAgICB0cmlzdGF0ZSAiUmVhbHRlayBSVEQgVVNCMiBQSFkgVHJhbnNj
ZWl2ZXIgRHJpdmVyIgo+ID4gPiAgICAgICAgIGRlcGVuZHMgb24gVVNCX1NVUFBPUlQKPiA+ID4g
QEAgLTI1LDMgKzI4LDUgQEAgY29uZmlnIFBIWV9SVEtfUlREX1VTQjNQSFkKPiA+ID4gICAgICAg
ICAgIFRoZSBESEMgKGRpZ2l0YWwgaG9tZSBjZW50ZXIpIFJURCBzZXJpZXMgU29DcyB1c2VkIHRo
ZSBTeW5vcHN5cwo+ID4gPiAgICAgICAgICAgRFdDMyBVU0IgSVAuIFRoaXMgZHJpdmVyIHdpbGwg
ZG8gdGhlIFBIWSBpbml0aWFsaXphdGlvbgo+ID4gPiAgICAgICAgICAgb2YgdGhlIHBhcmFtZXRl
cnMuCj4gPiA+ICsKPiA+ID4gK2VuZGlmICMgQVJDSF9SRUFMVEVLIHx8IENPTVBJTEVfVEVTVAo+
ID4KPiA+IFRoYW5rcyBmb3IgeW91ciBwYXRjaC4KPiA+IFdoeSBub3QgdXNlICJkZXBlbmRzIG9u
Ij8KPiA+IGRlcGVuZHMgb24gQVJDSF9NRURJQVRFSyB8fCBDT01QSUxFX1RFU1QKPgo+IEkgdGhp
bmsgdGhpcyBwYXRjaCBpcyBiZXR0ZXIsIHRoaXMgd2F5IGFsbCBmdXR1cmUgcnRlayBkcml2ZXJz
IHdpbGwgYmUKPiBmaXhlZCBhcyB3ZWxsLCBubyBuZWVkIHRvIGFkZCBmb3IgZWFjaCBkcml2ZXIK
CkluZGVlZC4KClRoZSBvbmx5IGNhdmVhdCBpcyBmdXR1cmUgbm9uLW9uLVNvQyBSZWFsdGVrIFBI
WSBkcml2ZXJzOiB0aGV5CnNob3VsZCBiZSBhZGRlZCBvdXRzaWRlIHRoZSBpZi9lbmRpZiBibG9j
ay4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0t
IApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMy
IC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGgg
dGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRh
bGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5n
IGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2
YWxkcwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
