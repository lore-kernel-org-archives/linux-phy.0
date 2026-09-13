Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20078C88E5C
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 17:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVN6EuI39s+J54uJgE7PuQbl3B/ZEWlP6nWWIbetIvQ=; b=RGKQhIGE3rHka8
	YlqJMla/39b2r448yWGChxEF5nIP0pM+5r7qMAqDDsi8HTLrWKjcuS6y1MXrCFDDN517UL9CUH3bm
	I4MQ9j63us4kJpkN1sXgADhmHSIl7vdqI6nI3BpicMCfez4es5O3ENxt9fGUYO7/sg2Ul2tOY/F1A
	nofdSTQIc6IvaWa9Q+fYgceL7Vq1WCANNQvh42czLvO64xiKRXz9u7f9lYjVWzAfDYeMlqNul91yn
	xM3WsHXAbw5x37MIMTF38MqKNu1jReos6eBrsQcNfNtVWtUeRWYXkGmMrk4xUDgCzXh5MtTylSwm0
	VfWDOTUiFFp9tfEJXKEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5nb1-00000001qQY-1llW;
	Sun, 13 Sep 2026 17:02:27 +0000
Received: from mail-ej2-x08.google.com ([2a00:1450:4864:34::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5nax-00000001qPx-26aQ
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 17:02:26 +0000
Received: by mail-ej2-x08.google.com with SMTP id a640c23a62f3a-c2532688fceso119484666b.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 10:02:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789318942; cv=none;
        d=google.com; s=arc-20260327;
        b=bP8wCpq4EootS7sqO0Ty7z1eujZDj0Smz53rkGCgidSrzPKmJi/rqKQcFWbtIr9FNQ
         QrJcjhCWMTg1etlUoN6Fb1auuLwAlncpw+svj55p/l2TLlldw4txPsio1DQ3gNYEG56S
         wHOwYARrh/x72mz6cVt410RfIgk7PrvQnOpTi9a+i9qaT6XTnD5WdmJPYk9i/qhroNwm
         H2M5yPzHNbMs/UJscmoA0KWzlkXpe4KpRhBC2VYdphWERVwX7POUJx7ORLRdhVF5g369
         P69aL4GGhpJggzgrKAzHTXz3WoIy2iaoRbbdGPtY2f5S8PNHYHR3dEEpCwm0UzFpO24Z
         qkfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=u3r0lTRDt7dv1B8F+vm9KqEdZJPwpZEhR6NU+5nIfvc=;
        fh=M3qWkH+EKFKYvje4hQpRM/UXGMSViE/HHSVwQjJK1XA=;
        b=csFOYVEgHUCBuw4AnlunrRXBx11YLki61u8SMdXVgTod3s6E33JGo0fl04vb+feEtp
         7y2NolbqHjtBIvV8U5Opr7Ov/3FjVbfeKsan3Zfablq3NeH96/dXOci1adIlamnYYQiC
         GbCDDz8EMA0cifs40SFTxmBbu2kVtukC0KDf+I9tS9UJoOxM0tq3N3aq4oN9ss3MvRpv
         Z0rE+BwfOJ/Wl7yI8tV01FEcBCwx/RhyIoFPZXM4whTKfAxtUWlk6S+Z/wNlpz31xjqO
         FR1RXFIhvzFAX43+a5b2xNQ2oazjCNYHLHWJwRdWzCpHgw6+3K7m1M0Ep6RUq+8h1xDs
         F0Sg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789318942; x=1789923742; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=u3r0lTRDt7dv1B8F+vm9KqEdZJPwpZEhR6NU+5nIfvc=;
        b=oaU3D5AW6XmcKAvR4Xq55WWjyPSeVILVp9h1w73NbX6nm9osVZCnLL3K2ZhhhZDfts
         uqx4Xh5ZPO3ztPZtflX15gEcKEGTwIuzpIWkZfOeqvwaSukwCsD8OfRK8aeb/wnl3sJr
         PC094EafeETswc/zzZclPR3mC7AbOlY+KGa4lJB8EMFM2+VpQg++wS73GOZwP12KQIkb
         oUanFgbr3PEQJkspIlSxeZoFo74oaSc0iSBx/IBMZkQkvcIVVFR8UHUsuxNKtf6G0iwl
         pu8nMBq7s7/1Jtj+Rq9vcVz1uPhECkeXAskKkVnJeUa69Ydn+a3A6AvbhJEGwSu3vTwW
         vTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789318942; x=1789923742;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u3r0lTRDt7dv1B8F+vm9KqEdZJPwpZEhR6NU+5nIfvc=;
        b=EKrllSXjfoTc4BEoM6gSsK3wsF/M4K1FCyXfD2kfVR8FvfASKiA0CZwAyj2tbTlcc0
         Mfy16tlSAz9nuukA3qH09Jyy6DOkif6NJQ60SS+jOf3VQbgDl8Ihx/Q0upmfkFNiOKgs
         6lXUnlcPPvykW6zdT/TIDEi2hqdD5XTCJAnSUKw1pU7WYOYdm55W7r8o3i6AyaW7GCfP
         mTPvcWHeHfM2EcM7h9LLXWj1zriOMJkViqNWhGo79iN2mm3+9x2w7fUn1s0ueLfrQU3j
         x0U3SW/oZGzo9WkQQEbXRvI91ThEIpKDYvT9Qf5T1JQuFEPqIBImrAlosBlkzD3aTQml
         ZG4Q==
X-Forwarded-Encrypted: i=1; AKwUvBykNkbkjQrTDPWavbFmuRY+boZm94SdWEpg09VqyQvwLUr5QoDi294guHtp2MNKxYZcLTsvBXjJL0Y=@lists.infradead.org
X-Gm-Message-State: AFuF++l0aNtoKleYzHBqpuQxO7uuvedHx9glc/77h37Fdt1+V0/sR+6Q
	B7a7J4qPbMjKY0p2Rie6lufjsXCaQXN5a682dMjrm4rhGyyJeUemkIefd2rWBSc48S/lqjRuxTH
	mi6mX2DNx+TrclVqVcJHTDP8jdfHhEnY=
X-Gm-Gg: AYBFou0eeJF5/8la3KYl8shezE72XvHaC2Zm/sc59YUkw+oSUMqVZiLtvjTlVhZYp6P
	zpJj+V9l9BYcBnymNif0ZEmVMBG/QRtxPsvHuuYFRQJJDFzjTsZ55XvFblnaF0fpVw1HVf/WZsF
	gYTe6BiWESAnSbycbZ2bvJrWccWQhgFIFegCpqqZQdMDPjhgKa+CjhoWyq4JPe/KEYk6g7K+cUB
	k6CDq0IucbZurD+x7nT/FAC54bjxcpQKMkuuMoEf6ITRlUY6dDzK2hV2Co7DQKDGywjcLhLan/V
	HWTUtIsoALqhF2HNPakZZCpIPRltPENa1OBXYYtDQfovyF8fPVL1l0H17g==
X-Received: by 2002:a17:907:72cb:b0:c25:8c74:71e6 with SMTP id
 a640c23a62f3a-c2966537005mr646354966b.10.1789318941762; Sun, 13 Sep 2026
 10:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260907153713.2572547-2-coiaprant@gmail.com> <20260907153713.2572547-9-coiaprant@gmail.com>
 <20260908154108.6864E1F00A3A@smtp.kernel.org>
In-Reply-To: <20260908154108.6864E1F00A3A@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 14 Sep 2026 01:02:10 +0800
X-Gm-Features: AcwNN1XgtcPUOC2eP2OxkBkMdRnvIa2R9l1DdLogBuRgiStmD3sxsfDlmW79idI
Message-ID: <CALj3r0i79sWnhyQU2xmECexi8G2VaznVOHWnuzdw+h9AzeKNSQ@mail.gmail.com>
Subject: Re: [PATCH net-next v4 07/10] net: pcs: xpcs: add Rockchip RK3568
 platform glue driver
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, 
	neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, 
	vkoul@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_100223_556816_EDC98C03 
X-CRM114-Status: GOOD (  16.54  )
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

PHNhc2hpa28tYm90QGtlcm5lbC5vcmc+IOS6jjIwMjblubQ55pyIOOaXpeWRqOS6jCAyMzo0MeWG
memBk++8mgo+Cj4gVGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSBy
ZXZpZXcgZm91bmQgMiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Cj4gLSBbSGlnaF0g
QSBUaW1lLW9mLUNoZWNrIHRvIFRpbWUtb2YtVXNlIChUT0NUT1UpIHJhY2UgY29uZGl0aW9uIGlu
IHhwY3NfcmtfY3JlYXRlIGFsbG93cyBhIGNvbmN1cnJlbnQgdW5iaW5kIG9mIHRoZSBzdXBwbGll
ciB0byBmcmVlIHRoZSBNRElPIGJ1cywgbGVhZGluZyB0byBhIFVzZS1BZnRlci1GcmVlLgo+IC0g
W01lZGl1bV0gSW5jb3JyZWN0IExJRk8gdGVhcmRvd24gb3JkZXJpbmcgaW4gZGV2cmVzIGNsb2Nr
IGNsZWFudXAgYWN0aW9uIHZpb2xhdGVzIHByb3BlciBkZXZpY2UgaW5pdGlhbGl6YXRpb24gYW5k
IFBNIGhpZXJhcmNoeSBydWxlcy4KPiAtLQo+Cj4gY29tbWl0IDcxNDJkYmY2YjI4YjVlZTk0ZDBl
ZGM5NjliY2YxNmQxMTgzYTVmNDEKPiBBdXRob3I6IENvaWEgUHJhbnQgPGNvaWFwcmFudEBnbWFp
bC5jb20+Cj4KPiBuZXQ6IHBjczogeHBjczogYWRkIFJvY2tjaGlwIFJLMzU2OCBwbGF0Zm9ybSBn
bHVlIGRyaXZlcgo+Cj4gVGhpcyBjb21taXQgYWRkcyBhIHBsYXRmb3JtIGdsdWUgZHJpdmVyIGZv
ciB0aGUgU3lub3BzeXMgRGVzaWduV2FyZSB4cGNzCj4gaW50ZWdyYXRlZCBpbiB0aGUgUm9ja2No
aXAgUkszNTY4IFNvQy4gSXQgY3JlYXRlcyBhIHZpcnR1YWwgbWRpbyBidXMgdG8KPiB0cmFuc2xh
dGUgbWRpbyBvcGVyYXRpb25zIHRvIGFwYjMgbWVtb3J5LW1hcHBlZCByZWdpc3RlciBhY2Nlc3Nl
cy4KPgo+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0
L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDIlMjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFn
ZSAyMDc4KQo+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLXJrLmMg
Yi9kcml2ZXJzL25ldC9wY3MvcGNzLXhwY3MtcmsuYwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiA+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjY4YmNhYTFhNWNiYmYKPiA+IC0tLSAvZGV2L251bGwK
PiA+ICsrKyBiL2RyaXZlcnMvbmV0L3Bjcy9wY3MteHBjcy1yay5jCj4gWyAuLi4gXQo+ID4gK3N0
YXRpYyB2b2lkIHhwY3NfcmtfZXhpdF9jbGsodm9pZCAqZGF0YSkKPiA+ICt7Cj4gPiArICAgICBz
dHJ1Y3QgZHdfeHBjc19yayAqcHhwY3MgPSBkYXRhOwo+ID4gKyAgICAgc3RydWN0IGRldmljZSAq
ZGV2ID0gJnB4cGNzLT5wZGV2LT5kZXY7Cj4gPiArCj4gPiArICAgICBjbGtfZGlzYWJsZV91bnBy
ZXBhcmUocHhwY3MtPmVlZV9jbGspOwo+ID4gKwo+ID4gKyAgICAgcG1fcnVudGltZV9mb3JjZV9z
dXNwZW5kKGRldik7Cj4KPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBEb2VzIHRoaXMgc2VxdWVuY2Ug
cmVzdWx0IGluIHRoZSBjbG9jayBiZWluZyBkaXNhYmxlZCBiZWZvcmUgdGhlIGRldmljZSBpcwo+
IHN1c3BlbmRlZD8KPgo+IEluIHhwY3NfcmtfaW5pdF9jbGsoKSwgZWVlX2NsayBpcyBlbmFibGVk
IGZpcnN0LCBmb2xsb3dlZCBieSBhIGNhbGwgdG8KPiBwbV9ydW50aW1lX2VuYWJsZSgpLCBhbGxv
d2luZyB0aGUgZGV2aWNlIHRvIGJlY29tZSBydW50aW1lIGFjdGl2ZS4gRHVyaW5nCj4gdGVhcmRv
d24sIHBtX3J1bnRpbWVfZm9yY2Vfc3VzcGVuZCgpIGludm9rZXMgeHBjc19ya19wbV9ydW50aW1l
X3N1c3BlbmQoKQo+IHRvIGRpc2FibGUgY3NyX2Nsay4KPgo+IENhbGxpbmcgY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKCkgZm9yIGVlZV9jbGsgYmVmb3JlIHBtX3J1bnRpbWVfZm9yY2Vfc3VzcGVuZCgp
Cj4gdmlvbGF0ZXMgbGFzdC1pbiwgZmlyc3Qtb3V0IG9yZGVyaW5nLCBkaXNhYmxpbmcgdGhlIHBy
ZXJlcXVpc2l0ZSBjbG9jayB3aGlsZQo+IHRoZSBkZXZpY2UgaXMgc3RpbGwgY29uc2lkZXJlZCBh
Y3RpdmUuIFNob3VsZCBwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoKSBiZQo+IGNhbGxlZCBwcmlv
ciB0byBkaXNhYmxpbmcgdGhlIGVlZV9jbGs/CgpTdXJlLCBJIHdpbGwgcmVvcmRlciBpdC4KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
