Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDB5EC88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 15:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLzdYy3PFaC/Bx+hG9cSoszaDV2zRUh4ZST8f/I0Kwk=; b=LHuuAyhU8Cus6c
	TA2sr+UFpiWfQnWxjNh6yuanM50oUMsDo+NvF0Y/CyBReFk+Pp2J3YOt5xMtCKykGXQay+7UabA6X
	kNf8VlivYy5mQY5zFaeQvKziq5aGdsb5n70atkCznM7CzFz/VdiFeYmt8vE7IkZ70VQLn/qurbZWi
	2KIAVsb6hV8hCjTiXncr+e0FhPdX7ashBstvjqKDR43NS99/ph6W7w0atcHEGE3l1n9tqj/9zjiga
	jJ2byhdRZvSeBzNK3xSjmjEWEPOx7c43oD3vZBXcWClFArKaZ0tf6UUnfKVYsbGd/0sXNVAJgpJep
	AHvXq0kMGUbhMDZsEG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5mbp-00000001o1f-0pI0;
	Sun, 13 Sep 2026 15:59:14 +0000
Received: from mail-ej2-x09.google.com ([2a00:1450:4864:34::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5mbi-00000001o0c-1qda
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 15:59:11 +0000
Received: by mail-ej2-x09.google.com with SMTP id a640c23a62f3a-c2630e38cffso154652466b.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 08:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789315144; cv=none;
        d=google.com; s=arc-20260327;
        b=FpF6r9tvH9/WCgRIlozY8oh1YAdV3imonlbKLy02zcXx0GPA9pBQs9mDtqUH19gYNf
         Xxzynby6n5MzQ/gG6tS4K7hvr8aSKRcn+x2ITQ733ffhrrrOz2PIyviTSnWXfRHVpJq1
         WqbwU6YRmdtdcYl4HsDt20XKxjXTYipCow3ZeDrXubA6XssM4SFDD7E8Vh48p4chW3GP
         bacxXrvelEsJtYUZkiZRmsNHRzo5KvKHejychlNi9aRDfWUPokuGCtWAc2R9dh4M3R9C
         g2GD4ONFpCJ3V5uydjAW32cWpGsJ6yE95zXW79zRd2y3WGuUPu0iGJtszNtuLSYeAN0j
         TbGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QtQwQGv8F8oJXhyzp/mmJrRotQmL7KJWiE3zhpMTfrU=;
        fh=DlKiRx7ti+ays0Uj36/QJZ/V8c9Q9PO+7jTBBWWDTSE=;
        b=MQz+eOFVrEfQHm1B4CB1xy59rOy+ARwdiliIaufTfadToQraIExVw7dRp1upusXdfy
         YPpCkbzNzLUvrQ3UohLIfbI/2fxAwhrRfs7tYDHoHmO3EKHcy//zDy34kPwqhki5HcWU
         UoHf+vfh7I966nW9JTXio8HLL5/aAzlDijMq9k7bx5jIeO4LkI2Z2UkyBrVeOzzRZOu9
         IBb9gm36kBk8C/gZbQhFGZoqDoNhd0LgwxeCKKGOAfBjDFn/7vKlMgLDuvy4a7rJ/97+
         dfaF3W3bVlqI3iMVHnfSuZ66QGJPeMroS+Cae/FZd0FRKh+sDG5kyuOCghHF3LOcrW3p
         AZ6w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789315144; x=1789919944; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QtQwQGv8F8oJXhyzp/mmJrRotQmL7KJWiE3zhpMTfrU=;
        b=QLUFSjwwi+1Sk3gcZo6coHrqNWotkU/j60peNYLiQBnHeBajggQBanii5YD7o+4dnS
         JKfNSCYtMMRVBqxPCviGrVN63TtFWZkAjZCsyGVnd11xUWcbhZFVd+ULpW9Qi+Cp7WJU
         eszFfbO0nT8c17HOjpuUdPtZMzze4gGh8QyBY85jHEo4aSltHYrxjN6NjyZoDGwj+MyL
         TtaNRUvx91KhgmLRVx2W3bL2Zk3aL4u+eUO4zvbLgVYdK+76gGTZYS5W5TcG545TTDXJ
         mU/r1zz2L2ec02Trtyfw1TEty1XsZsG/BvJezRSMJOlEZ3ua+8TX3PHchiN7A8MyAZ9V
         hBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789315144; x=1789919944;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QtQwQGv8F8oJXhyzp/mmJrRotQmL7KJWiE3zhpMTfrU=;
        b=rzz9UMmQs0pdOyX1hohHVbNuEMGEFnB52dL/VoHN2781BUTRTkFTVbGEehfvpwhCUJ
         mehYbGa3f4VGXR/Xb0mgMrjlnrqlMfu4nsEqN518YrUlc5/tf1Yze+xYV4+cxpqRxXnP
         E0ZombWZ3kfjo8mBQWfKAjXCfiutjhVuRj9dg9BDUFGyshzz9614R0y+dM4RENkXMR7I
         I/fpH+rPCgm03xBFhoHY/M6Gkct0qJXO/lURLMjff5BalUoYhhAraMwcNwdmLGWudisb
         RObN66Y/o34SsWStSL07MOtD2OutjdeqrC+LnwOshn5aI7djtme19Dameyn6quwpKY3+
         dAEg==
X-Forwarded-Encrypted: i=1; AKwUvBwVYk2uP3AnFymb5fdGj9y0i4Mg62VJbzR9xLhASu8zQpWkOjkKezndo607pX8WfCYGNLQtsFV+Jes=@lists.infradead.org
X-Gm-Message-State: AFuF++nuC5CLIgjtJBlnPOcWwsymGNsA+LGXiCe48y8YmyY2meyjmCh8
	AEgJhopr98YtJZhC34OoDIyYRt59p2lCLZEwXXW6crF6+BAJNxTQnLsHVCTXv6U06Ojy5FOZ7fe
	rvs58Rxb7lnT7cyXOfMsEvHp0NlFmfRE=
X-Gm-Gg: AYBFou1IXbYJNn49aUQFg0TnEs9+0fFxNDHXES/9UWbVhEP9C+yz4tUMHyDDbzcQnLc
	1Qh6axPtxTxeAS4abxjjHS3kI3kkmjHPCKofH05pkm5+PCLB3I9y+Q+QPjHVGqeH16kLRZUrZMc
	8tmpz0GDPb8EzGGCrHJOBq2RmkyNzuEbfQ2KLEpxpFPPsNpSDqwcM5mg+WqRG9ctwT1M71gSDL0
	fw1D7+85V0Kk9y50yZhZXJbRz6wAMcrzpn+WaiGnBi1gH8gl+/54a2swZ3NB6wciQj95cexFamQ
	hYM4PGH5tS/X0u0obkLmULDoHGTX1jQtZhRak1BkZDmBcFWp1Guo78Lb/Q==
X-Received: by 2002:a17:907:1992:b0:c19:6104:e5e4 with SMTP id
 a640c23a62f3a-c2985769204mr414384566b.20.1789315143958; Sun, 13 Sep 2026
 08:59:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260907153713.2572547-8-coiaprant@gmail.com> <20260912201327.127042-1-kuba@kernel.org>
In-Reply-To: <20260912201327.127042-1-kuba@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 13 Sep 2026 23:58:51 +0800
X-Gm-Features: AcwNN1XAulIb65_nNmPJqWeqm6n78LTScmm_BZJth6ooN4ELABvEb2CnyYjxeFw
Message-ID: <CALj3r0gRtJJMzZKW1DAyYJR3WQUX+JsBNH23VULhgLvopyHADQ@mail.gmail.com>
Subject: Re: [PATCH net-next v4 06/10] net: pcs: xpcs: add ANRESTART support
 for SGMII link recovery
To: Jakub Kicinski <kuba@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	heiko@sntech.de, vkoul@kernel.org, maxime.chevallier@bootlin.com, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, romain.gantois@bootlin.com, 
	hkallweit1@gmail.com, neil.armstrong@linaro.org, linux@armlinux.org.uk, 
	shawn.lin@rock-chips.com, david@ixit.cz, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_085910_673866_7A7D1D33 
X-CRM114-Status: GOOD (  40.33  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIgxM+aXpeWRqOaX
pSAwNDoxM+WGmemBk++8mgo+Cj4gVGhpcyBpcyBhbiBBSS1nZW5lcmF0ZWQgcmV2aWV3IG9mIHlv
dXIgcGF0Y2guIFRoZSBodW1hbiBzZW5kaW5nIHRoaXMKPiBlbWFpbCBoYXMgY29uc2lkZXJlZCB0
aGUgQUkgcmV2aWV3IHZhbGlkLCBvciBhdCBsZWFzdCBwbGF1c2libGUuCj4gLS0tCj4gbmV0OiBw
Y3M6IHhwY3M6IGFkZCBBTlJFU1RBUlQgc3VwcG9ydCBmb3IgU0dNSUkgbGluayByZWNvdmVyeQo+
Cj4gVGhlIHBhdGNoIHNldHMgQk1DUl9BTlJFU1RBUlQgdG9nZXRoZXIgd2l0aCBCTUNSX0FORU5B
QkxFIHdoZW4gY29uZmlndXJpbmcKPiBDMzcgU0dNSUkgaW4tYmFuZCBuZWdvdGlhdGlvbiwgYW5k
IGNsZWFycyB0aGUgbGF0Y2hlZCBDTDM3IEFOIGNvbXBsZXRlCj4gc3RhdHVzIGJlZm9yZSBkb2lu
ZyBzby4gIEl0IGFsc28gcmVzdGFydHMgbmVnb3RpYXRpb24gZnJvbQo+IHhwY3NfZ2V0X3N0YXRl
X2MzN19zZ21paSgpIHdoZW4gQU4gY29tcGxldGlvbiBpcyBsYXRjaGVkIGJ1dCB0aGUgbGluayBp
cwo+IHJlcG9ydGVkIGRvd24uCj4KPiA+ICAgICBPbiBzb21lIGhhcmR3YXJlIHVzaW5nIHRoZSBE
ZXNpZ25XYXJlIFhQQ1MgSVAgKGUuZy4sIFJLMzU2OCBNQUMgc2lkZQo+ID4gICAgIFNHTUlJKSwg
dGhlIFBDUyBkb2VzIG5vdCBhdXRvbWF0aWNhbGx5IHJlc3RhcnQgYXV0by1uZWdvdGlhdGlvbiB3
aGVuIHRoZQo+ID4gICAgIGxpbmsgZ29lcyBkb3duIGFuZCBjb21lcyBiYWNrIHVwLiBXaXRob3V0
IGFuIGV4cGxpY2l0IEFOUkVTVEFSVCwgdGhlIGxpbmsKPiA+ICAgICBzdGF5cyBkb3duIGZvcmV2
ZXIuCj4KPiBbU2V2ZXJpdHk6IExvd10KPiBUaGUgY2hhbmdlbG9nIGRlc2NyaWJlcyBhIHVzZXIg
dmlzaWJsZSBmYWlsdXJlICgidGhlIGxpbmsgc3RheXMgZG93bgo+IGZvcmV2ZXIiKSBpbiBsb25n
IHN0YW5kaW5nIHNoYXJlZCBjb2RlLCBidXQgdGhlcmUgaXMgbm8gRml4ZXM6IHRhZyBhbmQgbm8K
PiBzdGF0ZW1lbnQgYWJvdXQgd2hpY2ggaGlzdG9yaWVzIGFyZSBhZmZlY3RlZC4KPgo+IFRoZSBv
bmx5IGhhcmR3YXJlIG5hbWVkIGhlcmUsIFJLMzU2OCBYUENTLCBkb2VzIG5vdCBleGlzdCBpbiB0
aGUgYmFzZWxpbmUKPiB0cmVlOiBzZWFyY2hpbmcgZm9yIHhwY3NfcmssIHJrMzU2OC14cGNzIG9y
IHBjcy14cGNzLXJrIHVuZGVyIGRyaXZlcnMvbmV0IGF0Cj4gODc5ZTI4MGI4NDg2IHJldHVybnMg
bm90aGluZywgYW5kIHRoZSBnbHVlIGRyaXZlciBhcnJpdmVzIGxhdGVyIGluIHRoaXMKPiBzZXJp
ZXMgKCJuZXQ6IHBjczogeHBjczogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0Zm9ybSBnbHVlIGRy
aXZlciIpLgo+Cj4gQ291bGQgdGhlIGNoYW5nZWxvZyBlaXRoZXIgbmFtZSB0aGUgcHJlLWV4aXN0
aW5nIGNvbW1pdCBiZWluZyBmaXhlZCwgb3Igc2F5Cj4gZXhwbGljaXRseSB0aGF0IHRoZSBhZmZl
Y3RlZCBwbGF0Zm9ybSBpcyBpbnRyb2R1Y2VkIGxhdGVyIGluIHRoZSBzYW1lCj4gc2VyaWVzLCBz
byB0aGF0IHN0YWJsZSB0b29saW5nIGRvZXMgbm90IGhhdmUgdG8gZ3Vlc3M/CgpUaGUgYWZmZWN0
ZWQgcGxhdGZvcm0gKFJLMzU2OCBYUENTKSBpcyBpbnRyb2R1Y2VkIGxhdGVyIGluIHRoZSBzYW1l
CnNlcmllcy4gSSdsbCBtYWtlIHRoYXQgZXhwbGljaXQgaW4gdGhlIGNoYW5nZWxvZyBzbyBzdGFi
bGUgdG9vbGluZyBkb2VzCm5vdCBoYXZlIHRvIGd1ZXNzLgoKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9wY3MvcGNzLXhwY3MuYyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5jCj4gPiBp
bmRleCAwMzM3ZTJiY2MwMTI1Li41MGI5Y2RmOTRmZGFhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9uZXQvcGNzL3Bjcy14cGNzLmMKPiA+ICsrKyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy5j
Cj4gPiBAQCAtODE2LDkgKzgxNiwxNCBAQCBzdGF0aWMgaW50IHhwY3NfY29uZmlnX2FuZWdfYzM3
X3NnbWlpKHN0cnVjdCBkd194cGNzICp4cGNzLAo+ID4gICAgICAgaWYgKHJldCA8IDApCj4gPiAg
ICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gPgo+ID4gKyAgICAgLyogQ2xlYXIgQ0wzNyBBTiBj
b21wbGV0ZSBzdGF0dXMgKi8KPiA+ICsgICAgIHJldCA9IHhwY3Nfd3JpdGUoeHBjcywgTURJT19N
TURfVkVORDIsIERXX1ZSX01JSV9BTl9JTlRSX1NUUywgMCk7Cj4gPiArICAgICBpZiAocmV0IDwg
MCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsKPiA+ICAgICAgIGlmIChuZWdf
bW9kZSA9PSBQSFlMSU5LX1BDU19ORUdfSU5CQU5EX0VOQUJMRUQpCj4gPiAgICAgICAgICAgICAg
IHJldCA9IHhwY3Nfd3JpdGUoeHBjcywgTURJT19NTURfVkVORDIsIE1JSV9CTUNSLAo+ID4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1kaW9fY3RybCB8IEJNQ1JfQU5FTkFCTEUpOwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1kaW9fY3RybCB8IEJNQ1JfQU5FTkFC
TEUgfCBCTUNSX0FOUkVTVEFSVCk7Cj4KPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBTaG91bGQgdGhl
IGNvbW1lbnQgYXQgdGhlIHRvcCBvZiB4cGNzX2NvbmZpZ19hbmVnX2MzN19zZ21paSgpIGJlIHVw
ZGF0ZWQKPiBhbG9uZyB3aXRoIHRoaXMgY2hhbmdlPyAgSXQgc3RpbGwgc2F5cyB0aGUgb3Bwb3Np
dGUgb2Ygd2hhdCB0aGUgY29kZSBub3cKPiBkb2VzOgo+Cj4gZHJpdmVycy9uZXQvcGNzL3Bjcy14
cGNzLmM6eHBjc19jb25maWdfYW5lZ19jMzdfc2dtaWkoKSB7Cj4gICAgICAgICAvKiBGb3IgQU4g
Zm9yIEMzNyBTR01JSSBtb2RlLCB0aGUgc2V0dGluZ3MgYXJlIDotCj4gICAgICAgICAgLi4uCj4g
ICAgICAgICAgKiA1KSBWUl9NSUlfTU1EX0NUUkwgQml0KDEyKSBbQU5fRU5BQkxFXSA9IDFiIChF
bmFibGUgU0dNSUkgQU4pCj4gICAgICAgICAgKgo+ICAgICAgICAgICogTm90ZSB0aGF0IFZSX01J
SV9NTURfQ1RSTCBpcyBNSUlfQk1DUi4KPiAgICAgICAgICAqCj4gICAgICAgICAgKiBOb3RlOiBT
aW5jZSBpdCBpcyBNQUMgc2lkZSBTR01JSSwgdGhlcmUgaXMgbm8gbmVlZCB0byBzZXQKPiAgICAg
ICAgICAqICAgICAgIFNSX01JSV9BTl9BRFYuIC4uLiBUaGVyZSBpcyBhbHNvIG5vIG5lZWQgdG8K
PiAgICAgICAgICAqICAgICAgIHRyaWdnZXIgQU4gcmVzdGFydCBmb3IgTUFDLXNpZGUgU0dNSUku
Cj4gICAgICAgICAgKi8KPgo+IE9uIHRoZSBkZWZhdWx0IHBhdGggdGhpcyBzYW1lIGZ1bmN0aW9u
IHNlbGVjdHMgTUFDIHNpZGUgU0dNSUk6Cj4KPiAgICAgICAgIH0gZWxzZSB7Cj4gICAgICAgICAg
ICAgICAgIHR4X2NvbmYgPSBEV19WUl9NSUlfVFhfQ09ORklHX01BQ19TSURFX1NHTUlJOwo+ICAg
ICAgICAgfQo+Cj4gc28gdGhlIHJlc3RhcnQgaXMgbm93IGlzc3VlZCBmb3IgZXhhY3RseSB0aGUg
Y2FzZSB0aGUgY29tbWVudCBzYXlzIGRvZXMgbm90Cj4gbmVlZCBpdC4gIFRoZSBuZXcgRFdfVlJf
TUlJX0FOX0lOVFJfU1RTIHdyaXRlIGlzIGFsc28gYSBzaXh0aCBzdGVwIHRoYXQgdGhlCj4gZW51
bWVyYXRlZCBzZXF1ZW5jZSBkb2VzIG5vdCBtZW50aW9uLgo+Cj4gSWYgdGhlIGRhdGFib29rIHN0
YXRlbWVudCBubyBsb25nZXIgaG9sZHMgZm9yIHRoZXNlIHBhcnRzLCBjb3VsZCB0aGUKPiBjb21t
ZW50IGJlIGNvcnJlY3RlZCwgc28gdGhhdCBhIGxhdGVyIHJlYWRlciBkb2VzIG5vdCByZW1vdmUg
dGhlIEFOUkVTVEFSVAo+IGJpdCBhcyBhIG1pc3Rha2U/CgpZb3UncmUgcmlnaHQuIFRoZSBjb21t
ZW50IHN0aWxsIHN0YXRlcyB0aGF0IEFOIHJlc3RhcnQgaXMgbm90IG5lZWRlZCBmb3IKTUFDIHNp
ZGUgU0dNSUksIHdoaWNoIG5vdyBjb250cmFkaWN0cyB0aGUgY29kZS4gSSdsbCB1cGRhdGUgaXQg
dG8gbm90ZQp0aGF0IG9uIHNvbWUgaGFyZHdhcmUgKGUuZy4gUkszNTY4KSB0aGUgUENTIGRvZXMg
bm90IHJlc3RhcnQgQU4KYXV0b21hdGljYWxseSB3aGVuIHRoZSBsaW5rIGNvbWVzIGJhY2ssIHNv
IGFuIGV4cGxpY2l0IEFOUkVTVEFSVCBpcwpyZXF1aXJlZC4KCj4gPiBAQCAtMTA5MywxMCArMTA5
OCwxNSBAQCBzdGF0aWMgaW50IHhwY3NfZ2V0X3N0YXRlX2MzN19zZ21paShzdHJ1Y3QgZHdfeHBj
cyAqeHBjcywKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiAgICAgICB9Cj4gPgo+ID4g
LSAgICAgLyogQ2xlYXIgQU4gY29tcGxldGUgc3RhdHVzIG9yIGludGVycnVwdCAqLwo+ID4gLSAg
ICAgaWYgKHN0YXRlLT5hbl9jb21wbGV0ZSkKPiA+ICsgICAgIGlmIChzdGF0ZS0+YW5fY29tcGxl
dGUpIHsKPiA+ICsgICAgICAgICAgICAgLyogQ2xlYXIgQU4gY29tcGxldGUgc3RhdHVzIG9yIGlu
dGVycnVwdCAqLwo+ID4gICAgICAgICAgICAgICB4cGNzX3dyaXRlKHhwY3MsIE1ESU9fTU1EX1ZF
TkQyLCBEV19WUl9NSUlfQU5fSU5UUl9TVFMsIDApOwo+ID4KPiA+ICsgICAgICAgICAgICAgLyog
SW5pdGlhdGUgdGhlIG5leHQgcm91bmQgb2YgQU4gKi8KPiA+ICsgICAgICAgICAgICAgeHBjc19t
b2RpZnkoeHBjcywgTURJT19NTURfVkVORDIsIE1JSV9CTUNSLCBCTUNSX0FOUkVTVEFSVCwKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgQk1DUl9BTlJFU1RBUlQpOwo+ID4gKyAgICAgfQo+
ID4gKwo+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiAgfQo+Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4g
Q2FuIHRoaXMgc2VxdWVuY2UgZ2V0IHN0dWNrIGlmIHRoZSB4cGNzX21vZGlmeSgpIGZhaWxzPwo+
Cj4gVGhlIGxhdGNoZWQgc3RhdHVzIGlzIGNsZWFyZWQgZmlyc3QsIGFuZCBEV19WUl9NSUlfQU5f
U1RTX0MzN19BTkNNUExUX0lOVFIKPiBpcyB0aGUgb25seSB0aGluZyB0aGF0IGJyaW5ncyBleGVj
dXRpb24gYmFjayBpbnRvIHRoaXMgYnJhbmNoOgo+Cj4gICAgICAgICBzdGF0ZS0+YW5fY29tcGxl
dGUgPSByZXQgJiBEV19WUl9NSUlfQU5fU1RTX0MzN19BTkNNUExUX0lOVFI7Cj4KPiBTbyBpZiB0
aGUgY2xlYXIgc3VjY2VlZHMgYnV0IHRoZSByZXN0YXJ0IGRvZXMgbm90LCBldmVyeSBsYXRlciBw
b2xsIHJlYWRzCj4gQU5DTVBMVCBhcyAwLCBzdGF0ZS0+YW5fY29tcGxldGUgc3RheXMgZmFsc2Us
IGFuZCB0aGUgcmVzdGFydCBpcyBuZXZlcgo+IHJldHJpZWQsIGxlYXZpbmcgdGhlIHBvcnQgZG93
biB3aXRoIEFOIGlkbGUgdW50aWwgc29tZXRoaW5nIGNhbGxzCj4gcGNzX2NvbmZpZyBhZ2Fpbi4K
Pgo+IG1kaW9kZXZfYzQ1X21vZGlmeSgpIGRvZXMgYSByZWFkIGZvbGxvd2VkIGJ5IGEgd3JpdGUs
IHNvIHRoZXJlIGFyZSB0d28KPiBwbGFjZXMgaXQgY2FuIHJldHVybiBhbiBlcnJvciwgZm9yIGV4
YW1wbGUgYSBidXMgLUVUSU1FRE9VVCwgb3Igd2l0aCB0aGUKPiBSb2NrY2hpcCBnbHVlIGFkZGVk
IGxhdGVyIGluIHRoaXMgc2VyaWVzIHRoZSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KCkKPiBl
cnJvciBwYXRoIGluIHhwY3NfcmtfcmVhZF9yZWcoKSAvIHhwY3Nfcmtfd3JpdGVfcmVnKCkuCj4K
PiBCb3RoIHJldHVybiB2YWx1ZXMgYXJlIGFsc28gZGlzY2FyZGVkIGFuZCB0aGUgZnVuY3Rpb24g
c3RpbGwgZW5kcyB3aXRoCj4gcmV0dXJuIDAsIHNvIHRoZSBkaWFnbm9zdGljIGluIHRoZSBjYWxs
ZXIgY2FuIG5ldmVyIGZpcmUgZm9yIHRoZW06Cj4KPiAgICAgICAgIGNhc2UgRFdfQU5fQzM3X1NH
TUlJOgo+ICAgICAgICAgICAgICAgICByZXQgPSB4cGNzX2dldF9zdGF0ZV9jMzdfc2dtaWkoeHBj
cywgc3RhdGUpOwo+ICAgICAgICAgICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGRldl9lcnIoJnhwY3MtPm1kaW9kZXYtPmRldiwgIiVzIHJldHVybmVkICVwZVxuIiwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ4cGNzX2dldF9zdGF0ZV9jMzdfc2dt
aWkiLCBFUlJfUFRSKHJldCkpOwo+Cj4gV291bGQgaXQgYmUgYmV0dGVyIHRvIGFzc2VydCBCTUNS
X0FOUkVTVEFSVCBiZWZvcmUgY2xlYXJpbmcgdGhlIGxhdGNoZWQKPiBzdGF0dXMsIGFuZCB0byBw
cm9wYWdhdGUgYm90aCByZXR1cm4gY29kZXMgdG8geHBjc19nZXRfc3RhdGUoKT8KClRoZSBjdXJy
ZW50IG9yZGVyIChjbGVhciB0aGUgbGF0Y2hlZCBzdGF0dXMgZmlyc3QsIHRoZW4gcmVzdGFydCBB
TikgaXMKaW50ZW50aW9uYWwuIElmIHRoZSByZXN0YXJ0IGlzIGlzc3VlZCBmaXJzdCwgdGhlIG5l
d2x5IGNvbXBsZXRlZCBBTiBzdGF0dXMKY291bGQgYmUgY2xlYXJlZCBieSB0aGUgc3Vic2VxdWVu
dCB3cml0ZSwgbG9zaW5nIHRoZSBjb21wbGV0aW9uIGV2ZW50LgoKSSdsbCBrZWVwIHRoZSBvcmln
aW5hbCBvcmRlciBhbmQgcHJvcGFnYXRlIHRoZSByZXR1cm4gdmFsdWUgb2YKeHBjc19tb2RpZnko
KSBzbyB0aGUgY2FsbGVyIGNhbiBvYnNlcnZlIGVycm9ycyBvbiB0aGUgcmVzdGFydCBwYXRoLgoK
QmVzdCwKQ29pYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
