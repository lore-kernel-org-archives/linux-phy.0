Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F6DC43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 13:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqYwKS86/cBpHtSatB1Ysnhtx+te+aB4JERzE556lw4=; b=Gzgmr/3SjOl4mF
	IsaL7R+iyo6655pk3JTPUTmBRz3XCUJzNB4UmvOXA126CkWI60z+1zQ1giU0qGTgIbcRj/ZTqlM4r
	g2AhpAhmwaYLnMJ3vcUZISM+VWG//7kAVMXYZunnRPdO2JocgyLlFETt4iL6AfIE1LAqf6hfHBK7X
	hvSMz+ARfqt28h9CBbStyYE1o8qealogeibGHdCjzkEkBKTlZsjJ4WTiinQgIhfBaM/jF7T2SFVBC
	MfuvEWmKRhz1U/RdZEiiIwY0mlTt4EUkh0GhITpljGavyuMTLtDE4gD8F/SBcgkJc+WyJvr97YY3m
	U1r2nyj0Dcxr98BYzxtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjdYf-0000000CF8P-04TC;
	Tue, 14 Jul 2026 13:52:25 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjdYa-0000000CF6n-3eIV
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 13:52:23 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-6986287534eso7842196a12.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 06:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784037139; cv=none;
        d=google.com; s=arc-20260327;
        b=so4da5x554EYXnTgLpZ1VfAUstWOcAwTmgG+p28f1gE81f8J4TJs3vtTDhAjTzhQ+9
         FnH1lsxTC1ZgBLI/3lunGqYfqmnsDNNXER6M893QxVirgV0V1kdp8UHMbT6mh9C0+L3F
         +9iB++CZTEJh/183Su7Cci5vYuZ14oYHg/iPF5rN7Egt9qKNBQuEw2qojylS9o/mq5Yk
         x0ff1btGDHyCkxt7IbMWugQe0vsDpJ7QM+r8T0YBYArrBBODmb4IWENXnrxvEKXGXCT5
         HlbIa7XjHiAY8EFHTi1y0vQ1RZDUh1gAukeP6jrxtRKIDMAysm36fIOUPv5pIkY4pSn8
         UndQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xzEyIZnJ5i9yoA4AQ2U+oB8c8Dp6VZi2kI7cVkVCc/Q=;
        fh=RvJ3mS2V6r21LzecQeMASwDRwHJbA6lsgn9GB2wy3Gw=;
        b=bVwRDn59gHzEmWoQ2LmzpwxfpEgEBYHjlI6FhFm4Ow5TCbDk8fOD+CHnlTO0AU3JoO
         RNKcA4euHSEVn2Sn3YxplRYc8t0zC2NwPbyNvK4hajjfkBmmHfI9Whp0pu2tzZ/VNglx
         W3av/4q43cRJzwwnNXFKJMBLac/ZmXDmJ7YVoQ6gXuKkJps4QdXUVAi2/9+T7VwGnIhj
         ro/1Qps5Mr0KR2nAe0O18dwPl/uTNdmh3xFITIEQQ7vJD7AT3Ym42ahroEXKPJbHsJCI
         pHjf/XR2rsPwbb/N/5UFKqtm2mn7KigEopWV7aDZ6BznBWC+S0eq4pioGRBzZkvXv5Ow
         Kr3Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1784037139; x=1784641939; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xzEyIZnJ5i9yoA4AQ2U+oB8c8Dp6VZi2kI7cVkVCc/Q=;
        b=IOq5rhrcpwIR7k3oZjgsBtJptEme1kObNCAbMxD8vSxKK/43REBkiVlA5xn2ZLfF3l
         vIIPylrm/iHVBS92XlVr6TBfGIKH6WcOpyPFeidTiuVabAo6Z595nSlhQMmMg4VL0WEJ
         FbJkiS+gS4BrjWxSu7wmL5ZG9yQR92xSnYE/crIr16yGEIkBPI/6oYQ+vqXdth4s+E0N
         hhiKSaqS1iDbHUJjJHSF6PDnOfj7fCkqvoxwcuSR1ezLZ9Vv12AjjDA9d97j4K68eGBf
         kbxoi9i5EKpsVB6sIQQl8pMbBIH7GIGqkP0ZnTUbz1Ci5nrK4dVDlt4nsED/l3Fm0hgw
         8Abw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784037139; x=1784641939;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xzEyIZnJ5i9yoA4AQ2U+oB8c8Dp6VZi2kI7cVkVCc/Q=;
        b=MmLH++jLg7JotMSK7QXES94qTZxLvZq+ZrvP74B4FBMhL4x7efXxdgax8RbF31iq1N
         eFIkok/R4AGQLYU9VWgY8XDUX3fPLdcJkchjz1LpyWWDinsc0m5Z9wRIbJCIKHonIOMZ
         pDN7/KtmPXnh+RQ2QSzXubi/CYUs+RSKMx3T8NhvNQj4OAQFl9iirxsxTjQIgqBPENWK
         a0pNNZl96ccprKVkQVWywHY+7CJtTsQAKOP51fatHYmVe5la9eZg+kkEOr/obdxZ5R2W
         hYhVbbXBE7bvGG/t1cHnJ3oOf7A7vEovLQRJF3yAZKXUdWTif+PDcIUv25BahKBgy2a+
         IXvQ==
X-Forwarded-Encrypted: i=1; AHgh+Rru3pS80CI8v1DAg6uNiPMT0bzBNJBOP/rSBp3EajNkIUkWcglqkHYF4/pEWUcOQMD4qMPYY3Sxuxg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVWKIJJeYZ3opRRiEJoCAKOih6mDZS6MAUiD8/xQwxMvoZtXj6
	3umhnRCVW+x04zrxUb5agMgazEZGR9rgU/U713bGtL4TUhDCxovVJFO+BZ7SkehFw7Lo8VOcMd+
	Md/v6tw8PjgaFDfGHPRhRnPgM2GXdDo9y05ilSZ/5tQ==
X-Gm-Gg: AfdE7cl6dbTt8ojVrCtTaaY3Xd0VNwUMkcYqy3XgVju6SzQp0GHGn/mCdV3m6+3nF2J
	qFWWLYHsP0Os42h2B0aeRjp/os9S29OdSoy0mGnNQ74ClbA5cGaCMnNyTNmjfp6sVqwNhPkgjq0
	pyGul7LQnzVTyCFZom7BjQWQVgWYwJmUXjb0ctE+eKRYh/8C7ZcEhlgGg4xz9iO/Kr1AIuoTcvz
	I+KyQQNZZOhEuap1W3XAT80jrhJYoY/splgKPcwtxTBSjU/2KCJ3h0idntINMByPMWmGp5utw==
X-Received: by 2002:a17:907:7b82:b0:c15:a444:5cf8 with SMTP id
 a640c23a62f3a-c1661879325mr186086066b.33.1784037138931; Tue, 14 Jul 2026
 06:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com>
 <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
 <CAKTNdwH_ZMQa-97h+tqdsWqXKtorkFF9wHAMn60-8ZGKuze_Mg@mail.gmail.com> <alY8y15JA0T5hoaY@vaman>
In-Reply-To: <alY8y15JA0T5hoaY@vaman>
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 14 Jul 2026 17:52:11 +0400
X-Gm-Features: AUfX_mwiN6qvZivfU0aMwyaQ7pYC-yePqVNsvly9oLdaKe_ucaolpG6uxpjwmfY
Message-ID: <CAKTNdwHq0eVO+r8GfSd+ULLQYMv8kHbgt7bQin=SLhx9QEqHLA@mail.gmail.com>
Subject: Re: [PATCH v3] phy: rockchip: naneng-combphy: Consolidate SSC configuration
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	linux-phy@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_065220_948522_13163136 
X-CRM114-Status: GOOD (  20.60  )
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

T24gVHVlLCBKdWwgMTQsIDIwMjYgYXQgNTo0MuKAr1BNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gMTQtMDctMjYsIDE2OjU4LCBBbGV4ZXkgQ2hhcmtvdiB3cm90
ZToKPiA+IE9uIFR1ZSwgTWF5IDE5LCAyMDI2IGF0IDI6NDjigK9QTSBWaW5vZCBLb3VsIDx2a291
bEBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4gT24gTW9uLCAyNyBBcHIgMjAy
NiAwODo1NzoxMyArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+ID4gPiA+IFRoZSBQQ0llIFNTQyBj
b25maWd1cmF0aW9uIGZvciB0aGUgUkszNTg4IGFuZCBSSzM1NzYgU29DcyByZXF1aXJlZAo+ID4g
PiA+IGFkZGl0aW9uYWwgdHVuaW5nIHdoaWNoIGlzIG1pc3NpbmcuIFdoZW4gYWRkaW5nIHRoZXNl
IHNhbWUgU1NDCj4gPiA+ID4gY29uZmlndXJhdGlvbnMgZm9yIGJvdGggb2YgdGhlc2UgdHdvIFNv
Q3MsIGFzIHdlbGwgYXMgdXBjb21pbmcKPiA+ID4gPiBwbGF0Zm9ybXMsIGl0J3Mgb2J2aW91cyB0
aGUgU1NDIHNldHVwIGNvZGUgd2FzIGxhcmdlbHkgZHVwbGljYXRlZAo+ID4gPiA+IGFjcm9zcyB0
aGUgcGxhdGZvcm0tc3BlY2lmaWMgY29uZmlndXJhdGlvbiBmdW5jdGlvbnMuIFRoaXMgYmVjb21l
cwo+ID4gPiA+IGhhcmRlciB0byBtYWludGFpbiBhcyBtb3JlIHBsYXRmb3JtcyBhcmUgYWRkZWQu
Cj4gPiA+ID4KPiA+ID4gPiBbLi4uXQo+ID4gPgo+ID4gPiBBcHBsaWVkLCB0aGFua3MhCj4gPiA+
Cj4gPiA+IFsxLzFdIHBoeTogcm9ja2NoaXA6IG5hbmVuZy1jb21icGh5OiBDb25zb2xpZGF0ZSBT
U0MgY29uZmlndXJhdGlvbgo+ID4gPiAgICAgICBjb21taXQ6IDBiMzFmMjk3NTU3ZmZmMDk0MTc2
OWU4MjU3MTk4MTUxYTBmYmU4YmYKPiA+Cj4gPiBUaGlzIGNvbW1pdCBicmVha3MgVVNCMyBvcGVy
YXRpb24gb24gUkszNTc2IChhdCBsZWFzdCBpbiBob3N0IG1vZGUpLAo+ID4gY2F1c2luZyBhbiBl
bmRsZXNzIGZsb29kIG9mIG1lc3NhZ2VzIGxpa2UgdGhpcyBldmVyeSBzZWNvbmQgaW4gZG1lc2c6
Cj4gPgo+ID4gdXNiIHVzYjItcG9ydDE6IENhbm5vdCBlbmFibGUuIE1heWJlIHRoZSBVU0IgY2Fi
bGUgaXMgYmFkPwo+ID4KPiA+IFVTQiAyLjAgcGFydCBlbnVtZXJhdGVzLCBidXQgVVNCIDMuMCBk
b2Vzbid0LiBUZXN0ZWQgb24gdHdvIGRpZmZlcmVudAo+ID4gZGV2aWNlcyBoYXZpbmcgYSBDb3Jl
Q2hpcHMgU0w2MzQxIFVTQiAyLjAvVVNCIDMuMCBodWIgb25ib2FyZAo+ID4gY29ubmVjdGVkIHRv
ICZ1c2JfZHJkMV9kd2MzLCBiaXNlY3RlZCB0byB0aGlzIGNvbW1pdC4KPiA+Cj4gPiBIYXMgdGhp
cyBiZWVuIHJlcG9ydGVkIHlldCwgb3Igc2hhbGwgSSBpbnZlc3RpZ2F0ZSBmdXJ0aGVyIHdoaWNo
IHBhcnQKPiA+IG9mIHRoZSBwYXRjaCBjYXVzZXMgdGhlIGJyZWFrYWdlPwo+Cj4gRmlyc3QgSSBo
ZWFyZCwgd291bGQgYmUgZ29vZCB0byBpbnZlc3RpZ2F0ZS4KPiBJIGNhbiByZXZlcnQgaWYgd2Ug
ZG9udCBmaW5kIGEgZml4IHNvb24uLi4KClRoYW5rcyBmb3IgY29uZmlybWluZyBWaW5vZC4gSSd2
ZSBwcmVsaW1pbmFyaWx5IGlkZW50aWZpZWQgdGhlIFNTQwpkaXJlY3Rpb24gc2V0dGluZyBhcyB0
aGUgY3VscHJpdDogYmVmb3JlIHRoZSByZWZhY3RvciBpdCB3YXMKdW5jb25kaXRpb25hbGx5IHNl
dCB0byBkb3dud2FyZCwgYWZ0ZXIgdGhlIHJlZmFjdG9yIGl0J3Mgb25seSBzZXQgd2hlbgoocHJp
di0+ZW5hYmxlX3NzYyksIHdoaWNoIGlzIG5vdCB0aGUgY2FzZSBmb3IgVVNCMyBvbiBSSzM1NzYg
KGhhdmVuJ3QKY2hlY2tlZCB0aGUgb3RoZXJzKS4KCldpbGwgZG91YmxlIGNoZWNrIGV2ZXJ5dGhp
bmcgYW5kIHNlbmQgYSBmaXggKGl0J3MganVzdCBtb3ZpbmcgdGhlCnByaXYtPmVuYWJsZV9zc2Mg
Y2hlY2sgMTAgbGluZXMgZG93biwgYmVmb3JlIGVuYWJsaW5nIFNTQyBidXQgYWZ0ZXIKc2V0dGlu
ZyB0aGUgZGlyZWN0aW9uKS4KCkJlc3QgcmVnYXJkcywKQWxleGV5CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
