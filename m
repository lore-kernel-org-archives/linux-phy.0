Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1313FD6CFA3
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 19:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ylHuVT8krG1DMCrVPbXXG9D5WZuV57EmlInjRG0QVJQ=; b=kbUrkYD2SYgjLR
	kIiAp3dkhARjtPav4oFeNp+PlCynFPOJhpz2abTBwStrg13U8KQK2zQOZf8qrf+Yl3mymK8oUXscO
	buXmUFWQY+VxadMcXHFGm80q+G7ujajFvVZppfT99B53cshOU5NETqft5rBW8x6zgLVteatfFd2jj
	KTRBTvnvS6yWwIjxWW5xEHaBFRVjUFJMsXT/eCd7ZFI9QX7/KsgWzCtlbbu3/klBpU3hhclaYCM25
	la4BoUpZAcmfU95G7rqbDsjG1dgkCmU0EnXQD0L2vGul6ofa5ZgpUYEOtgb6Owr1r9aV9uanAm0P7
	4R+BOyADYcZ0TLKyz4GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizv8-00000007g2r-22iO;
	Thu, 22 Jan 2026 19:00:42 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizv6-00000007g29-00m6
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 19:00:41 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-11f36012fb2so2283180c88.1
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 11:00:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769108439; cv=none;
        d=google.com; s=arc-20240605;
        b=XAxHMF6SbYtN1elxvf6GPw8cK2sqy4OqNYNQb26mY1VH0Xc52MMPlbQibM8A9i9fdz
         K6lbQZ6CGNatYc9Rn3GyYDG8a2v2ypwEn8/6qnkdeap/DmeuCLwID0Qaqh/+UbXcE1sk
         YJWxvX4C5ZTwAGOwFkIcOdIc8hSpbEZELE4O1s2aKGHAx06y6DdjCxsTwkZB1yj8Ypl4
         DnMlIjg/JIu4JJryU5nlmEhAZiFCK+Cis6ZiSlb+tPFV3npTAn6G6f8ulpPujMOqX8MM
         7ePY3A8laVWr5pbDxhdFXrIp/wzAybmO1iZ7Clso4VGuo+0KCGRN5eS9Q3Cc/MP0diXw
         f7tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QxPJVamFKB6SHYhZQG07QdsmJek+DE77cJ/vff79ukI=;
        fh=3lB2QLgTmZjhT2/lEYuJ6kooleKNSIbLDLQ98sArseg=;
        b=U120FRq2V1m1S/9ymYNUJ6FAgPxTl1coUvOVehMDN+TGnllgfzmPq/j2AmFmMo0RVk
         ZtuKRlx/wdUXaYiDKU85LL00jVzPzsBPsPR1jAr1nBGIyG/2oJWDJFsM3t8aBoLijPZE
         ECSX6EUngum3k2sXXpyvnvbPjm3WaNNMKj3bfHbnWPgH6uNxnDs4Dxg+/ZtS8+OuILzX
         9CMoTwnhQCgQ19peilMi7itnpEhNw5CqkCnzMmeMRVeDt5Q3xv+Z6HWuvUvxo7iYDLKW
         hV97oH+WAYhPrjvExnsXa1fze2Y2m5pxbUsDTUGZ4M4zHu7sL9FW7a6lQEVV44Opmje7
         LZQg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1769108439; x=1769713239; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QxPJVamFKB6SHYhZQG07QdsmJek+DE77cJ/vff79ukI=;
        b=CtV7OO8PR7xN4N5fMZp+XC1rj+H2UcupucAz60mZEU3qRx6iQTppqSjZ794gKHxMxk
         h54YCs6fsXTQclYxbSAEqZZe6MoqxH+rFQ0XTmPjX3ssWhyK0ZjDa0yEN19ORAYpR7Hs
         pSbS/5Fm9cI8GLZyt0b9FyoTq2qBdgyaDsgEBd1oZGMaWGoNY0UIraV3ATii/nWm8+kB
         /YCdx63XYCjpSvl9HCv5nIpGpe3C+Wj6rDJp3nkr5eEbDupxoN9gWrl8J1WWFTlhMWbE
         6XJNcrJTei0+Bdt234ru856C5W8YLem8va1FvkuM2AhKalOqvRw91WpUvBGP1OPRtKDN
         QmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769108439; x=1769713239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QxPJVamFKB6SHYhZQG07QdsmJek+DE77cJ/vff79ukI=;
        b=OP7PSoP2RrjmprQAYf/x+/JpnDreMH5ic6POsTwlQc+Q8X/zRV5wmNZsMIFExMP6ld
         QLkdOQbwp17R+kdRAEXt+SUGVaijvG8QJ0ty2V12FEmd6uB3SbpsFSW0/LAmwUbaFZtU
         Ygr30C7k2ejmaea8bLzs4bqIp5EkZP41wd5b64nokhKnn//lEpA74jU6L/MoobVFrbfV
         eA530M5BeoHszGvepV0JA/q+TEx82E7VRmKY6ZgEH9Uz61f2qqJZavAcyD88DdjNWE+o
         0hVBKURPeXtimacgU8d5lh8ssE1L1LDGkf39vEKd/lS+oXyvnFDwcoVyL8iRNu9iSSEV
         sd+A==
X-Forwarded-Encrypted: i=1; AJvYcCUj7oRv52ewgv9wf3+6CIVunBM9KeWopT3aDvNfc3VKt40mE2xtUQj/IIOKC9/Jss1G69QyKt8XpeY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJXUIsJMtfOwZ+mFWa9RjiEgrYPXBTKlCAmJQtSaBlJMkr7SBL
	jm72dbRbxpnw7S5nM2zFywqaG3fuHoSBtV4FHboCog3L9gRtyJaCKRzeRUc+sza7OvZ1Ksp7Yq2
	WU27wMCKGNf8piNXayIafOzzR5Z9bLMn0wrOqPNFV
X-Gm-Gg: AZuq6aJz57/vPlEKbqO4pqlWoAKszzUOPsZAsdFqZAhTws67tckzaHzWt/otzKdD9fw
	bcEr3Av0/ayGjjnH3ETHOYm+LMWXhtG2OQ1dX9kcdFNtMT7QDsqWlOGkLvvtJzWhy82+HBPQ1gw
	ee55iGdPZM+2bSyU8fNi2kVUlBwS8Dly+BQGlIKnxZuoyl9D04am+mn1NQsfe3fLoS51woRxONn
	xIWyk34xVtMyjL4tn9ut4fmU9DuI9VFdyBE95NcRAj9lQ5JS8+/s+TErwyteoxvfRZOecPnX9PA
	Gw/uDP6d8arMWUzLv8Rtzc0=
X-Received: by 2002:a05:7022:ea27:b0:123:2d00:1668 with SMTP id
 a92af1059eb24-1247dc1a246mr216084c88.49.1769108438617; Thu, 22 Jan 2026
 11:00:38 -0800 (PST)
MIME-Version: 1.0
References: <20260121-next-v1-1-c18068b091b9@google.com> <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
In-Reply-To: <7c78f9da40022e7bbf850ae8989c617bdc30cc95.camel@linaro.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 22 Jan 2026 11:00:02 -0800
X-Gm-Features: AZwV_QgKOjqTrU5RPHxI7qZYQKJOEiYtHxnQrsaa6v2mT5d6PB9OvOkllt6REWk
Message-ID: <CA+zupgw5H5rumo+DxaTfA_=bcvjbBOivm6R+Pw31jgE-sMyEtw@mail.gmail.com>
Subject: Re: [PATCH next] phy: google: fix build dependency for Google Tensor
 USB PHY
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_110040_044348_112C0EF2 
X-CRM114-Status: GOOD (  20.82  )
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

T24gVGh1LCBKYW4gMjIsIDIwMjYgYXQgMjozOeKAr0FNIEFuZHLDqSBEcmFzemlrIDxhbmRyZS5k
cmFzemlrQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gSGkgUm95LAo+Cj4gT24gV2VkLCAyMDI2LTAx
LTIxIGF0IDIyOjIxICswMDAwLCBSb3kgTHVvIHdyb3RlOgo+ID4gVGhlIEdvb2dsZSBUZW5zb3Ig
VVNCIFBIWSBkcml2ZXIgdXNlcyB0aGUgVHlwZS1DIHN3aXRjaCBmcmFtZXdvcmsgdG8KPiA+IGhh
bmRsZSBvcmllbnRhdGlvbiBjaGFuZ2VzLiBIb3dldmVyLCB0aGUgS2NvbmZpZyBkaWQgbm90IHNw
ZWNpZnkgYQo+ID4gZGVwZW5kZW5jeSBvbiB0aGUgVFlQRUMgZnJhbWV3b3JrLCBsZWFkaW5nIHRv
IHVuZGVmaW5lZCByZWZlcmVuY2UKPiA+IGVycm9ycyB3aGVuIGJ1aWxkaW5nIGZvciBhcmNoaXRl
Y3R1cmVzIG9yIGNvbmZpZ3VyYXRpb25zIHdoZXJlCj4gPiBDT05GSUdfVFlQRUMgaXMgZGlzYWJs
ZWQgb3IgY29uZmlndXJlZCBhcyBhIG1vZHVsZS4KPiA+Cj4gPiBBZGQgJ2RlcGVuZHMgb24gVFlQ
RUMnIHRvIHRoZSBQSFlfR09PR0xFX1VTQiBlbnRyeSB0byBlbnN1cmUgYWxsCj4gPiByZXF1aXJl
ZCBzeW1ib2xzIGFyZSBhdmFpbGFibGUgZHVyaW5nIGxpbmtpbmcuCj4gPgo+ID4gRml4ZXM6IGNi
Y2U2NjY2OWM4MiAoInBoeTogQWRkIEdvb2dsZSBUZW5zb3IgU29DIFVTQiBQSFkgZHJpdmVyIikK
PiA+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiA+IENs
b3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDI2MDEyMTA4MjUu
RUxycFFlRUQtbGtwQGludGVsLmNvbS8KPiA+IFNpZ25lZC1vZmYtYnk6IFJveSBMdW8gPHJveWx1
b0Bnb29nbGUuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9waHkvS2NvbmZpZyB8IDEgKwo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9LY29uZmlnIGIvZHJpdmVycy9waHkvS2NvbmZpZwo+ID4gaW5kZXggMTQyZTdiMGVm
MmVmYjkyMDk3ODE4MDBlZTQ3YjgyMGE5MWIxMTVhZS4uNTUzMWZmMzFkODE1NmNiMTY0YzMyZTNl
NTJkNGE1N2IyNmE2MmQ4ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L0tjb25maWcKPiA+
ICsrKyBiL2RyaXZlcnMvcGh5L0tjb25maWcKPiA+IEBAIC00OSw2ICs0OSw3IEBAIGNvbmZpZyBH
RU5FUklDX1BIWV9NSVBJX0RQSFkKPiA+Cj4gPiAgY29uZmlnIFBIWV9HT09HTEVfVVNCCj4gPiAg
IHRyaXN0YXRlICJHb29nbGUgVGVuc29yIFNvQyBVU0IgUEhZIGRyaXZlciIKPiA+ICsgZGVwZW5k
cyBvbiBUWVBFQwo+Cj4gQ2FuIHlvdSBtYWtlIHRoaXMKPgo+IGRlcGVuZHMgb24gVFlQRUMgfHwg
Q09NUElMRV9URVNUCj4KPiB0byBhbGxvdyBzb21lIGJldHRlciB0ZXN0IGNvdmVyYWdlPwo+Cj4g
Q2hlZXJzLAo+IEFuZHJlCgpIaSBBbmRyZSwKCldoZXRoZXIgdG8gYWRkIENPTVBJTEVfVEVTVCBm
b3IgYnVpbGQgY292ZXJhZ2Ugd2FzIGRpc2N1c3NlZCBpbgphbm90aGVyIHRocmVhZCBbMV0uIE15
IHRha2Vhd2F5IGZyb20gdGhhdCBkaXNjdXNzaW9uIGlzIHRoYXQKQ09NUElMRV9URVNUIGlzIGlu
dGVuZGVkIHRvIHN1YnN0aXR1dGUgZm9yIEFSQ0hfWFhYIGluIGJ1aWxkCnRlc3RpbmcgYW5kIHNo
b3VsZCBub3QgYmUgdXNlZCB3aXRob3V0IGl0LiBPbmNlIEFSQ0hfR09PR0xFIGlzCnByZXNlbnQs
IHdlIGNhbiBhZGQgImRlcGVuZHMgb24gKEFSQ0hfR09PR0xFIHx8IENPTVBJTFRFX1RFU1QpIi4K
ClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0ErenVwZ3dnZkt3UFlxajhHMnROZjRw
RVhORVdBK3ZMMldZSlBoSjE2eEV4Z2tvN0R3QG1haWwuZ21haWwuY29tLwoKUmVnYXJkcywKUm95
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
