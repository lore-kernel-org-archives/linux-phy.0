Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CB0CCF34DD
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 02:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ega6iwh9J6Ho2PIdVilm6PgeU9LZYzAGCFfNnOwrvfA=; b=kIqCa4VuzB2LS/
	MmXtGwwrWEaJf06lqaJ5JBrwsbQRGjOm9sB2FX57q7+sbnKj/O4A7+lVMpmw15I6ILDOturCDGj6H
	8hUex5VWCYeCIzNGojZF01yn2fzjUoT50wMZ0PEyiy+OMr4scj/BxhqpRbuJ1UDG9BKmzf9DYIV5I
	NJriAwHICDT43CiHUqpbLrBpS8h3bSbL8KkikG+IDQ98TMuK07LZ3+Tx11uJxrCtjpnG46c7A4AG5
	KjLtaVNT50/dp7/2tqnvIkExV9Hg59CUgBwE8vnF0gtAhUhkABnY4es3m+pqKc/6OceKYKTGMSzNn
	PItcxPZAnJWxqXhysJLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swXv6-0000000Arqk-0A7x;
	Fri, 04 Oct 2024 02:19:52 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swXv3-0000000ArqM-3bpc
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 02:19:51 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2fabd2c4ac0so19745421fa.1
        for <linux-phy@lists.infradead.org>; Thu, 03 Oct 2024 19:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728008388; x=1728613188; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Kpa3DwSuusZ/ojSRABiA3m3vD/yFFaWn/vC3z7JZzQ=;
        b=koCkyeh2ZOaSXeUuEJ9z05auhikfdnlwPyRpYS7CGsiGbOkYK+0Gb2lCIDCNazJq1+
         WV9QBfehjeVfZ2oq0WYDdFzCQLT/Whn3tVkpxKDzPL0w72R45bmSJuGqBhIJSJv/uaba
         LVF7MqZgjDClCgnRtziQ/2WhC82KOaOZvM2N+jOioH/GJA6PzXLYJ+ZAIXkuHa0NGB/8
         wBye7HrH7OhHfhxJIoTRcGNoB1NBacE6/MyP3eaHzNx3HlAzK5iXQkUl3vAOlN6Ttun2
         YA6Y6kpXP6wo7Ls5Wh5ngtBL80rua0Qsx4vGXZXAjTX0Nh5u3025C1WcHIc7kKj/04Ym
         54Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728008388; x=1728613188;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Kpa3DwSuusZ/ojSRABiA3m3vD/yFFaWn/vC3z7JZzQ=;
        b=T0NNDOdAB1HNXBQ8Mh+xiYTkdq77Av9qloZ+I4CSC071PDsb3lrLUNYvq82HsAgh/I
         G0IHYdh8IRCtjNqVIgZlNHWr6d1wZLqAfDIMgiOYoE43UNmklKQ5UjvMqa25X8TSP01+
         lnicWAKiCGr2NYKEKCbTZyJGzqXSbx4N4EnSZJSV2DV+oF/cvRf74c9cEcKUZDhZ2chn
         asEMwB7nAQrwG++5Z3/b3dWntHYfa2BwVmNzi/lFKV/lW00qaPnMia6wx2uqHXMqbzaj
         lSPjHtYgTo0TO6YU/P+kKvofPH5zPY9lO23/WE4enDzRhLXQiQcdrSqmQonHkp4W0CFP
         X+Yg==
X-Forwarded-Encrypted: i=1; AJvYcCVwiIBa3lc2ile61eParegIe6sI2PQ48RpJp9eVRra+rMfD+kluxKC7cssmBxV/ouzvJEI+ydCWWA4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKJyA0xGMaSlyMUgOho96s2TaobrO2uc3zvWH7gQ3aIZuNUOoZ
	LGro/7QD64L6Rth/xShmvDLhNULit3R/8QP4gd53ucZ8z1OmxFbFqSWw4xwAx49zy7Bgn8Ohj6z
	zLTJpoNTegWD2EEErCqKaMgPxC/k=
X-Google-Smtp-Source: AGHT+IHF4VPBKIS+sDYmzIH9bctmUXNB3P/PpWHCO+5NhQWj31HI3wo19MO+IB2pjH3uouNm3DUaP1bpq5XK+eSitd0=
X-Received: by 2002:a2e:809:0:b0:2fa:de13:5c18 with SMTP id
 38308e7fff4ca-2faf3da5c06mr4200651fa.42.1728008387530; Thu, 03 Oct 2024
 19:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <20241003211720.1339468-1-CFSworks@gmail.com> <697604f4-ea38-4cfd-a4a8-3a346d4735db@broadcom.com>
In-Reply-To: <697604f4-ea38-4cfd-a4a8-3a346d4735db@broadcom.com>
From: Sam Edwards <cfsworks@gmail.com>
Date: Thu, 3 Oct 2024 19:19:36 -0700
Message-ID: <CAH5Ym4gTtRTAn=rn8Hb1jctcCjuMurLNXjHSA2kQLbfRSDaQnA@mail.gmail.com>
Subject: Re: [PATCH] phy: usb: fix Broadcom driver table indexing error
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Justin Chen <justin.chen@broadcom.com>, Al Cooper <alcooperx@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_191949_922291_13AF6A0A 
X-CRM114-Status: GOOD (  20.08  )
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

T24gVGh1LCBPY3QgMywgMjAyNCBhdCAzOjQ34oCvUE0gRmxvcmlhbiBGYWluZWxsaQo8Zmxvcmlh
bi5mYWluZWxsaUBicm9hZGNvbS5jb20+IHdyb3RlOgo+Cj4gT24gMTAvMy8yNCAxNDoxNywgU2Ft
IEVkd2FyZHMgd3JvdGU6Cj4gPiBUaGUgQnJvYWRjb20gVVNCIFBIWSBkcml2ZXIgY29udGFpbnMg
YSBsb29rdXAgdGFibGUKPiA+IChgcmVnX2JpdHNfbWFwX3RhYmxlc2ApIHRvIHJlc29sdmUgcmVn
aXN0ZXIgYml0bWFwcyB1bmlxdWUgdG8gY2VydGFpbgo+ID4gdmVyc2lvbnMgb2YgdGhlIFVTQiBQ
SFkgYXMgZm91bmQgaW4gdmFyaW91cyBCcm9hZGNvbSBjaGlwIGZhbWlsaWVzLgo+ID4gSGlzdG9y
aWNhbGx5LCB0aGlzIHRhYmxlIHdhcyBqdXN0IGtlcHQgY2FyZWZ1bGx5IGluIHN5bmMgd2l0aCB0
aGUKPiA+ICJzZWxlY3RvciIgZW51bSBldmVyeSB0aW1lIHRoZSBsYXR0ZXIgY2hhbmdlZCB0byBl
bnN1cmUgY29uc2lzdGVuY3kuCj4gPiBIb3dldmVyLCBhIHJlY2VudCBjb21taXQgKHNlZSAnZml4
ZXMnIHRhZykgaW50cm9kdWNlZCB0d28gbmV3Cj4gPiBlbnVtZXJhdG9ycyBidXQgZGlkIG5vdCBh
ZGp1c3QgdGhlIGFycmF5IGZvciBCQ000OTA4LCB0aHVzIGJyZWFraW5nIHRoZQo+ID4geEhDSSBj
b250cm9sbGVyIChhbmQgYm9vdCBwcm9jZXNzKSBvbiB0aGlzIHBsYXRmb3JtIGFuZCByZXZlYWxp
bmcgdGhlCj4gPiBmcmFnaWxpdHkgb2YgdGhpcyBhcHByb2FjaC4KPiA+Cj4gPiBTaW5jZSB0aGVz
ZSBhcnJheXMgYXJlIGEgbGl0dGxlIHNwYXJzZSAobWFueSBlbGVtZW50cyBhcmUgemVybykgYW5k
IHRoZQo+ID4gcG9zaXRpb24gb2YgdGhlIGFycmF5IGVsZW1lbnRzIGlzIHNpZ25pZmljYW50IG9u
bHkgaW5zb2ZhciBhcyB0aGV5IGFncmVlCj4gPiB3aXRoIHRoZSBlbnVtZXJhdG9ycywgZGVzaWdu
YXRlZCBpbml0aWFsaXplcnMgYXJlIGEgYmV0dGVyIGZpdCB0aGFuCj4gPiBwb3NpdGlvbmFsIGlu
aXRpYWxpemVycyBoZXJlLiBDb252ZXJ0IHRoaXMgdGFibGUgYWNjb3JkaW5nbHksIGZpeGluZyB0
aGUKPiA+IGJvb3QtdGltZSBjcmFzaCBvbiBCQ000OTA4IGluIHRoZSBwcm9jZXNzLgo+ID4KPiA+
IEZpeGVzOiA0NTM2ZmU5NjQwYjYgKCJwaHk6IHVzYjogc3VwcHJlc3MgT0MgY29uZGl0aW9uIGZv
ciA3NDM5YjIiKQo+ID4gU2lnbmVkLW9mZi1ieTogU2FtIEVkd2FyZHMgPENGU3dvcmtzQGdtYWls
LmNvbT4KCkhpIEZsb3JpYW4sCgo+Cj4gVGhhbmtzIGEgYnVuY2ggZm9yIHRoZSBmaXgsIGdvb2Qg
Y2F0Y2ghIFNvcnJ5IHRvIGFzayB5b3UgdGhpcywgYnV0IHNpbmNlCj4gdGhpcyBpcyBpbnRlbmRl
ZCB0byBiZSBiYWNrcG9ydGVkIHRvIHN0YWJsZSB0cmVlcyBhdCBzb21lIHBvaW50LCB3b3VsZAo+
IHlvdSBtaW5kIGJyZWFraW5nIHRoaXMgdXAgaW4gdHdvIGNvbW1pdHM6Cj4KPiAtIG9uZSB3aGlj
aCBpcyBlYXN5IHRvIHJldmlldyBhbmQgYXVkaXQgYW5kIHdoaWNoIGFkanVzdHMgdGhlIEJDTTQ5
MDggZW50cnkKPiAtIGFub3RoZXIgb25lIHdoaWNoIGNvbnZlcnRzIHRvIHVzaW5nIGRlc2lnbmF0
ZWQgaW5kZXggY29uc3RhbnRzPwoKTm90IGEgcHJvYmxlbSBhdCBhbGwhIEknZCBtdWNoIHJhdGhl
ciBhZGRyZXNzIGZlZWRiYWNrIGxpa2UgdGhpcwpteXNlbGYgc28gSSBjYW4gcHJhY3RpY2UgdGhl
IHByb3BlciBmb3JtYXR0aW5nIHRoYW4gaGF2ZSB5b3UgdGFrZSBjYXJlCm9mIGl0LiBJJ2xsIHNl
bmQgYSBzcGxpdC11cCB2MiBpbiBhIG1vbWVudC4gOikKCktpbmQgcmVnYXJkcywKU2FtCgo+Cj4g
VGhhbmtzIQo+IC0tCj4gRmxvcmlhbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
