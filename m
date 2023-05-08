Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C46CC77B73
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 11:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mg8ATWlqwufse3CWqiZBCNdHn0NDwQUfxj5Umqgm1fw=; b=CsLo/bqZg+6auL
	UCC5+xxiH6RpOjzNFc+sDNAfsW8rLcktqlVaoNagBHVzkn3VLMDqI/5bql4om9wJ1noXRgqPDPpoe
	av8zmZPmPcafb0E+GuDRl1WUP3xowVKG/r2fS8tNh3aWBEFb4J3AopNPxHXf70mDmX9fh+0x4HbjY
	xaRq8FnP7Fi6qMDHO+l3W7gUp8J6IU27e0kxFb9kGRbVeCSgyjP6v9e3iB6659g9ooS1O/tsU2UVc
	FcX9rVmYsgsss7VzYE3QFjzA6LzvS4JKgxfVPjD6EFBlWxADzpMsj6J644pVWIFzzI8Ub++U0BVgC
	pHek7IPFagu6GSZ0Fb9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvzDp-000QDz-35;
	Mon, 08 May 2023 11:40:05 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvzDn-000QDC-2A
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 11:40:05 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2502346bea0so2412318a91.2
        for <linux-phy@lists.infradead.org>; Mon, 08 May 2023 04:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683545999; x=1686137999;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kmAYIf46oy/MCRbmsdr/75KTlDluVcR5KB1IRJNuPTE=;
        b=DLhswwcXJUtMfYkQWkUrkyw7G+tNOTzprdPxpN6YrJZ43FC6nNElcPg7rz/1j4rNNY
         ChijJg/BYsrYJr7c50w//eZNmFouHs8k18Qkh/EeO2Eu1xA5shzxrMdDwympLd294yja
         36Kc2bZv4faPtMSdv0rt2h+dAZYaCp5Sk89OGw7GRkVJQWhA/pFIUXM8w23CpVU2Bm0b
         U31YQLKnHBQ2KZXXEMSE79f/VZkpslMCHaVlL0yZvA2aoqmdMY+P8GZumkIb8mYZ0VfV
         bRYFnqT7Tg4FQMTIpzpMybja7bBK6iEhFFv7Zmy8QNxK2/dwsoqmToYGW6tiNYkbCb0f
         bnyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683545999; x=1686137999;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kmAYIf46oy/MCRbmsdr/75KTlDluVcR5KB1IRJNuPTE=;
        b=TguCE2TGPDH+dgSEx0D/JWlj7PG107yeca1F7J9Stn+Tg/E/iYvSCfi7S8zsWYeHA8
         gBqMqVtfWWm36lz+yf5PL17qf3aS5ZmKIXos2pvLLkgtPqpejAtq+TwPtdYkgrQnKXGk
         RaNpX+JT67RzW00U16F6kCkxEVppd/vGOxSlmV+a8fm/Ie4Pi11HZOHe3oHefeEn4bjr
         uwpv6f0JKMRtMX3vc2N4vaARUWC1EUfAxatZYD6L+4e7antdk21mum11VxaQK+Sbfpdl
         GClYm6NTZ4kJdUcxzR+D3SgugB7Kt3Ol5Y410QqNinwfgwcCgc8zw8H+F24o4U3sIRV1
         MuJw==
X-Gm-Message-State: AC+VfDzEie/np8svULksjasGY3a1Tp2FWF62LM3+S5aaNzX30UNBjKY6
	Kt09Pp2lbvZpgnn9tf9fMe8lb+mSCWk3g0j6hQg=
X-Google-Smtp-Source: ACHHUZ59zLfpKIouF6UsmRef0qI79/2OLMkLOJFCZGj7vb0eEAJTU31HUMiKoCG1IuM5GeB7IjB1Bhck1UsFKDrpnoc=
X-Received: by 2002:a17:90a:6b4e:b0:24e:4dad:d8ab with SMTP id
 x14-20020a17090a6b4e00b0024e4dadd8abmr10184245pjl.0.1683545999370; Mon, 08
 May 2023 04:39:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230507154615.793942-1-mmyangfl@gmail.com> <ZFinwhFphe71VeLk@matsya>
In-Reply-To: <ZFinwhFphe71VeLk@matsya>
From: Yangfl <mmyangfl@gmail.com>
Date: Mon, 8 May 2023 19:39:22 +0800
Message-ID: <CAAXyoMN2CvVkL+=wT=Q4zJZJa-qUiyiVS4SZquVQ1LUfDmoM5Q@mail.gmail.com>
Subject: Re: [PATCH] phy: hisilicon: Adopt phy-hisi-inno-usb2 to Hi3798MV100
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_044003_735905_365AEC93 
X-CRM114-Status: GOOD (  15.64  )
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

Vmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4g5LqOMjAyM+W5tDXmnIg45pel5ZGo5LiAIDE1
OjQx5YaZ6YGT77yaCj4KPiBPbiAwNy0wNS0yMywgMjM6NDYsIERhdmlkIFlhbmcgd3JvdGU6Cj4g
PiBIaXNpbGljb24gYWxzbyB1c2VzIHBoeS1oaXNpLWlubm8tdXNiMiBvbiBIaTM3OThNVjEwMCwg
d2l0aCBhIHNsaWdodGx5Cj4gPiBkaWZmZXJlbnQgcmVnaXN0ZXIgY29udmVudGlvbi4KPgo+IE9L
LCBzbyB3aGF0IHNob3VsZCBJIGV4cGVjdCBmcm9tIHRoaXMgcGF0Y2gsIHBscyBkb2N1bWVudCB0
aGF0IGhlcmUuLi4KCkhpMzc5OE1WMTAwIHVzYjIgcGh5LiBXaGljaCBraW5kIG9mIGRvY3VtZW50
IHNob3VsZCBJIHB1dCBoZXJlPwoKPgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFlhbmcg
PG1teWFuZ2ZsQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvcGh5L2hpc2lsaWNvbi9L
Y29uZmlnICAgICAgICAgICAgICB8ICAyICstCj4gPiAgZHJpdmVycy9waHkvaGlzaWxpY29uL3Bo
eS1oaXNpLWlubm8tdXNiMi5jIHwgNjcgKysrKysrKysrKysrKysrKy0tLS0tLQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2hpc2lsaWNvbi9LY29uZmlnIGIvZHJpdmVycy9waHkvaGlz
aWxpY29uL0tjb25maWcKPiA+IGluZGV4IGQzYjkyYzI4ODU1NC4uNmM4OTEzNmZjOGMyIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvaGlzaWxpY29uL0tjb25maWcKPiA+ICsrKyBiL2RyaXZl
cnMvcGh5L2hpc2lsaWNvbi9LY29uZmlnCj4gPiBAQCAtNTQsNyArNTQsNyBAQCBjb25maWcgUEhZ
X0hJU1RCX0NPTUJQSFkKPiA+Cj4gPiAgY29uZmlnIFBIWV9ISVNJX0lOTk9fVVNCMgo+ID4gICAg
ICAgdHJpc3RhdGUgIkhpU2lsaWNvbiBJTk5PIFVTQjIgUEhZIHN1cHBvcnQiCj4gPiAtICAgICBk
ZXBlbmRzIG9uIChBUkNIX0hJU0kgJiYgQVJNNjQpIHx8IENPTVBJTEVfVEVTVAo+ID4gKyAgICAg
ZGVwZW5kcyBvbiBBUkNIX0hJU0kgfHwgQ09NUElMRV9URVNUCj4KPiB3aHkgdGhpcyBjaGFuZ2U/
CgpIaTM3OThNVjEwMCBpcyBhIEE5IEFSTTMyIG9ubHkgc29jLgoKPgo+ID4gICAgICAgc2VsZWN0
IEdFTkVSSUNfUEhZCj4gPiAgICAgICBzZWxlY3QgTUZEX1NZU0NPTgo+ID4gICAgICAgaGVscAo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2hpc2lsaWNvbi9waHktaGlzaS1pbm5vLXVzYjIu
YyBiL2RyaXZlcnMvcGh5L2hpc2lsaWNvbi9waHktaGlzaS1pbm5vLXVzYjIuYwo+ID4gaW5kZXgg
YjEzM2FlMDY3NTdhLi5iNWQwMDZmMzg5MzQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BoeS9o
aXNpbGljb24vcGh5LWhpc2ktaW5uby11c2IyLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGh5L2hpc2ls
aWNvbi9waHktaGlzaS1pbm5vLXVzYjIuYwo+ID4gQEAgLTksNyArOSw3IEBACj4gPiAgI2luY2x1
ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4L2lvLmg+Cj4gPiAgI2luY2x1
ZGUgPGxpbnV4L21vZHVsZS5oPgo+ID4gLSNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZpY2Uu
aD4KPiA+ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4
L3BoeS9waHkuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPiA+Cj4gPiBAQCAtMjAs
MTIgKzIwLDI4IEBACj4gPiAgI2RlZmluZSBQSFlfQ0xLX1NUQUJMRV9USU1FICAyICAgICAgIC8q
IHVuaXQ6bXMgKi8KPiA+ICAjZGVmaW5lIFVUTUlfUlNUX0NPTVBMRVRFX1RJTUUgICAgICAgMiAg
ICAgICAvKiB1bml0Om1zICovCj4gPiAgI2RlZmluZSBQT1JfUlNUX0NPTVBMRVRFX1RJTUUgICAg
ICAgIDMwMCAgICAgLyogdW5pdDp1cyAqLwo+ID4gLSNkZWZpbmUgUEhZX1RFU1RfREFUQSAgICAg
ICAgICAgICAgICBHRU5NQVNLKDcsIDApCj4gPiAtI2RlZmluZSBQSFlfVEVTVF9BRERSICAgICAg
ICAgICAgICAgIEdFTk1BU0soMTUsIDgpCj4gPiAtI2RlZmluZSBQSFlfVEVTVF9QT1JUICAgICAg
ICAgICAgICAgIEdFTk1BU0soMTgsIDE2KQo+ID4gLSNkZWZpbmUgUEhZX1RFU1RfV1JFTiAgICAg
ICAgICAgICAgICBCSVQoMjEpCj4gPiAtI2RlZmluZSBQSFlfVEVTVF9DTEsgICAgICAgICBCSVQo
MjIpIC8qIHJpc2luZyBlZGdlIGFjdGl2ZSAqLwo+ID4gLSNkZWZpbmUgUEhZX1RFU1RfUlNUICAg
ICAgICAgQklUKDIzKSAvKiBsb3cgYWN0aXZlICovCj4gPiArCj4gPiArI2RlZmluZSBQSFlfVFlQ
RV8wICAgMAo+ID4gKyNkZWZpbmUgUEhZX1RZUEVfMSAgIDEKPiA+ICsKPiA+ICsjZGVmaW5lIFBI
WTBfVEVTVF9EQVRBICAgICAgICAgICAgICAgR0VOTUFTSyg3LCAwKQo+Cj4gc2FtZSBhcyBwcmV2
aW91cyB3aGF0IGNoYW5nZWQ/PwoKUmVnaXN0ZXIgY29udmVudGlvbiBmb3IgUEhZMSBiZWxvdywg
YXMgbWVudGlvbmVkIGluIGNvbW1pdCBtZXNzYWdlLgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
