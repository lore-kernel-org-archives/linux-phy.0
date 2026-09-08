Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A9F0C79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 23:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sy6wHLVdIuKaN192C+Xiwej9S4cZzekgOZgfUmca5g=; b=3zP0FHbMeQrbrt
	hx7MN+6JFOISxySZYfK8ap7NoC3SOaCDoxkeInpqeEcfl6gyd22H4zG6DAQ/XjGH0PHS0h5rpEyUk
	tWvkyuwhhfTsbqZe+rEWydZOSxIHaP+6ytehj71HtKFWEWPscELuxWgiECZxJXaNJOMd4AoagYIvx
	2FNSA0cGAzZg9m0By/meh68XI1744LINfpwDKGwqh/Ceec3Q3uRGLyeloxiZaDx+gWcFJVbDc+0H/
	B0KSIzWhZfZu1Tu2eeqGqOMCk4hOLAwD0TPyykQm6dsoDGKc5azjQ/Zgij2XmCmGS9/kFT/sdamRV
	Kg+cTDWg1k117shCtwxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x45IO-0000000ARzd-3VXp;
	Tue, 08 Sep 2026 23:32:08 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x45IM-0000000ARzB-0AB6
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 23:32:07 +0000
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-4af173320f9so3439741b6e.2
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 16:32:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788910323; cv=none;
        d=google.com; s=arc-20260327;
        b=nogg/VI+1Bl/5EuvQeKNf1YxR7aBtRF5HwgWc9OVGSrZA0YVx7ZXlScn47KGBsdwWm
         r+D4U732Q9/bmTQG8WVSKo8cUjjTO+2uzZ1a+iBBwNiAcfQsTghJmOSd96VG+uuUcnaL
         PmaayaHJTleOYW+VvHuPPlIBCinB2pTKBhUBzGxl8fxd1ir3Lc9rIE6DCD57T7S0/0Ou
         6F2s4RdEFQpvnqJUD74Fvd5iupXTnvWXoqhkyWBwSIuQdOxA16/cKrePITGmfR4cijks
         6wRVdARROIC9z0knkSDYDwP8NUAZat6zjIlbJRGMIAQ/EfzC0itXf3wJO6yceBIdSEOy
         0ywA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7+3nLzSILAYs3qmpLkeoZcGFoXxWf/bBrMplbZ8qrRk=;
        fh=fdeBqqWjYCatQ3a2A1VscljzVHZjrU8EPtEyfSsisHk=;
        b=o08Lx+uIzQ+D0MA0LuX9bqm9L1l8Ob52Nyr3WhRS6rCHpZi7WRR0FUD3j8avtPfto9
         0ge8cjdtXK+cWVXTj8zfldCIrdj9fSkEM5i4RW4RsSQW/krBrRvAYdQWYIWRj3LBusah
         VMgotGhxw/+jGONUkO9on/MRVtthxn6OJFTufgExbsdeyJppoCqKfUfjGiG3g1u1dDcy
         lhw++DKHC8LKbBLRzpv5CL2VY/mibhTgpsfh1Dw4PPcaACaGmwJVb7e/wbYdM4Y8qQKd
         YrfAaqcKL7VIVBGHR//LMrFbzgG1MrFEId6jap+/9i/lj2LKvjbzGNwU7FYMjdKqn+KG
         KycQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1788910323; x=1789515123; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=7+3nLzSILAYs3qmpLkeoZcGFoXxWf/bBrMplbZ8qrRk=;
        b=snm2+vby6pHm29HLCZCju0YklV2H/iYM7aZMFluf715p7DA0OB9t9yoFaEprzGS2bm
         PPmoZKxs98wERKbMGrpRiXLIjLKhseX0/xQPEnotm01OsaVBy1bTh4Wqtw9YmmGOsWx3
         3felZQGEZkM5upFW81y4TBLsx6WV6UF8opGlcd+n9ZgMtbih6DUD96GHSxdWNn39PD4V
         O2Jop6OgMeMzd0kZGHdG4gTsXjn5sgOTtS7Q5FfqzRH7BzyZQZQfUjqWF5JQFiJroXhl
         2s1L/IPcdPf4t2eY3Y2xejKqaUwAEGAA/wZXPGB6UwzSDohfVlqdAX6TdBLmTB3UKiyh
         oDMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788910323; x=1789515123;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7+3nLzSILAYs3qmpLkeoZcGFoXxWf/bBrMplbZ8qrRk=;
        b=fszz95O0NcVs3MR8tEwLxKeAfFhfXB5iK/eCEPldoeaz0bDMZZFvUOiUR8LNXTCGA9
         ltZBH4Gv8PqolDmpnRj5/Og9BLWUYRnEHp5zu4ACQccUo1BcCp434kMaejv2+34l9nVm
         06oBuc2FmAMecHqZdTRnVGDyov9fy8Nq/qrJZ788x8o0Dlb+u3xiG3wLVkTOLnWFCVwG
         y7CEk7mLMr1O9GtkAGCTwZ6ecQn3Ujm9oeNd4cZtfhOzcDw5SbCTLzBEXACvt4UBYIq1
         ZqTSMH7vHHxrUL4j4Br9IJr3tqiNSa1Ze3BW458+WE2eBP271vn4pVcq8V6ZKDsvNqZ4
         rlLw==
X-Forwarded-Encrypted: i=1; AKwUvBzAkQNh07iNkuGWxjRTfrTJWGR830TZcEVdmM5CEtxv5Ek/SS9Ilq2Z29FCaRgDAq8WI5IT6YeM/dE=@lists.infradead.org
X-Gm-Message-State: AFuF++lDfoztJNqB4McXuO/N9ey1c18rWbPDXNv3+PTxzh3mIxCAgrGm
	IyzZqyHM7aoKlwb2VIymdkgQH9qs2SXmzmX53Ohj9I162Roem4mfMfcGNhsvesJ52q09KD4OV8n
	FjasWRQlETPVXLUSG4wD8Of6pnF1yePjtAqhWTqTj
X-Gm-Gg: AYBFou06VPdkZfS8f/LdtMotMds5cMEolJ9LRigjf765bM1+qBqQtFpg+cJA1oXAmyg
	/oTAmQQzGsFkDG4KVxoTzjhjmTCpR5BqK4YWPJYTkHVwtyedASAIHmWEzex94+bz8N1VzFSBVk2
	rkzqJ7TpRH0i5UHI0Ovl/mYwxzTqgNP9kJNZNW/0hkFlnIDdSiXYNetTbUNY4vE9zLK7698hxrG
	82nu23C4XRKuT/bdHSFHfuW9QBgvFLryX4EuHzc6jsZ/wf9VIBoY3twlKadkod6wlVt4rkQO3gQ
	qKl0hyqxBnvskChaBga9GeOpTs5QaOj0brUW982RROtoTIRhGMM/4ztIg1eni5OfUPIgiLePWW3
	v1xrntwYLzSo=
X-Received: by 2002:a05:6820:4b85:b0:6b8:319b:9e1f with SMTP id
 006d021491bc7-6b8319b9e9cmr15317381eaf.5.1788910322806; Tue, 08 Sep 2026
 16:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260710172946.15633-2-rdbabiera@google.com> <ao3d2TlIRqxbz4WP@google.com>
In-Reply-To: <ao3d2TlIRqxbz4WP@google.com>
From: RD Babiera <rdbabiera@google.com>
Date: Tue, 8 Sep 2026 16:31:51 -0700
X-Gm-Features: AcwNN1Xw1Y5ryO3wQ35hV6_NmfuyHI7Zbl4nz0Z-Sqsiz6v2x3IDE9LAtXts248
Message-ID: <CALzBnUF14HuRhAObW+HXbaWYpPYzqG_Tt0rrm1nF2OW1T1OSqg@mail.gmail.com>
Subject: Re: [PATCH v6] phy: Add USB3 PHY support to Google Tensor SoC USB PHY driver
To: Neill Kapron <nkapron@google.com>
Cc: vkoul@kernel.org, peter.griffin@linaro.org, andre.draszik@linaro.org, 
	tudor.ambarus@linaro.org, p.zabel@pengutronix.de, neil.armstrong@linaro.org, 
	badhri@google.com, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_163206_083888_635E34A1 
X-CRM114-Status: GOOD (  19.06  )
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

SGkgTmVpbGwsIHRoYW5rcyBmb3IgdGFraW5nIGEgbG9vay4gU29ycnkgZm9yIHRoZSBkZWxheSBo
ZXJlLCB0aGUgZmVlZGJhY2sKYXJyaXZlZCByaWdodCBiZWZvcmUgSSBoYWQgbGVmdCBmb3IgdmFj
YXRpb24gc28gSSB3YW50ZWQgdG8gbWFrZSBzdXJlIEkgaGFkCnByb3BlciB0aW1lIHRvIGxvb2sg
YXQgaXQ6CgpPbiBUdWUsIEF1ZyAyNSwgMjAyNiBhdCAxMToyNOKAr0FNIE5laWxsIEthcHJvbiA8
bmthcHJvbkBnb29nbGUuY29tPiB3cm90ZToKCj4gRG8gd2UgcmVhbGx5IG5lZWQgYSAyLjVzIHRp
bWVvdXQ/CgoyLjVzIGlzIGFjdHVhbGx5IHRoZSBoYXJkd2FyZSBkZWZhdWx0IGZvciB0aGlzIHRy
YW5zYWN0aW9uLCB3aGljaCBJIGFncmVlIGlzCnVubmVjZXNzYXJpbHkgbG9uZ+KAlEkgc2V0IGl0
IGhlcmUgZm9yIGNvcnJlY3RuZXNzLiBXZSB1c2Ugc29mdHdhcmUgcG9sbGluZwppbnN0ZWFkIG9m
IHRoZSBoYXJkd2FyZSBpbnRlcnJ1cHQsIGFuZCBpbiB0aGUgcHJvZHVjdCdzIGxpZmV0aW1lIDEw
MG1zIGlzCm1vcmUgdGhhbiBlbm91Z2ggdGltZSBmb3IgdGhlIEFDSyBzaWduYWwgdG8gYXJyaXZl
LiBJJ2xsIHVwZGF0ZSB0aGUgbmV4dApwYXRjaCB2ZXJzaW9uIHRvIHVzZSB0aGlzIHZhbHVlLiBJ
J2xsIGFsc28gcHJvZ3JhbQpUQ0FfQ1RSTFNZTkNNT0RFX0NGRzEueGFfdGltZW91dF92YWwgdG8g
bWF0Y2ggdGhlIFNXCnBvbGwgdGltZW91dCBzbyB3ZSBkb24ndCBsZXQgdGhlIG9wZXJhdGlvbiBo
YW5nIG9uIHRoZSBQSFkgd2hlbiBTVwpmaW5pc2hlcyBpdHMgcG9sbC4KCj4gVGhlIGRldl8qIGNh
bGxzIHRocm91Z2hvdXQgdGhpcyBwYXRjaCBzaG91bGQgaGF2ZSB0cmFpbGluZyBuZXdsaW5lCj4g
Y2hhcmFjdGVycy4KClRoYW5rcyBmb3IgdGhlIGhlYWRzLXVwLCBJIHdpbGwgYWRkIHRoZW0uCgo+
ID4gKwo+ID4gKyAgICAgcG1fcnVudGltZV9wdXRfYXV0b3N1c3BlbmQoZ3BoeS0+ZGV2KTsKPgo+
IEhlcmUgeW91IGFyZSB1c2luZyB0aGUgX2F1dG9zdXNwZW5kIHZhcmlhbnQsIGJ1dCBhdXRvc3Vz
cGVuZCBpcyBuZXZlcgo+IGNvbmZpZ3VyZWQgaW4gcHJvYmUoKS4gU2hvdWxkIHRoaXMgYmUgY2hh
bmdlZCB0byB0aGUgcGxhaW4KPiBwbV9ydW50aW1lX3B1dCgpLCBvciBhY3R1YWxseSBlbmFibGUg
YXV0b3N1c3BlbmQgaW4gdGhlIHByb2JlIGZ1bmN0aW9uPwo+Cj4gPiArCj4gPiArICAgICByZXR1
cm4gcmV0Owo+ID4gIH0KClRoYXQncyBmYWlyLCBJJ2xsIGNvbW1pdCB0byBwbV9ydW50aW1lX3B1
dCgpIGhlcmUgZ2l2ZW4gd2UgZG9uJ3QgaW1wbGVtZW50CnN1c3BlbmQvcmVzdW1lIG9uIHRoZSBQ
SFkgaXRzZWxmLgoKPiBJIHRoaW5rIHByaW9yIHRvIHRoaXMgd2Ugc2hvdWxkIGFkZCBhIGNoZWNr
IGlmIHBoeV9zdGF0ZSBpcwo+IENPTUJPX1BIWV9JRExFLCByZXR1cm4gYW4gZXJyb3IgYW5kIGNo
YW5nZSB0aGlzIGNoZWNrIHRvIHBoeV9zdGF0ZSA9PQo+IENPTUJPX1BIWV9JTklUX0RPTkUgdG8g
bWFrZSBzdXJlIHdlIGFyZSBleHBsaWNpdCBpbiBvdXIgc3RhdGUgaGFuZGxpbmcKPiB0byBwcmV2
ZW50IGlzc3VlcyB3aXRoIGFueSBwb3RlbnRpYWwgcmVmYWN0b3JpbmcuCgpNYWtlcyBzZW5zZSB0
byBtZSwgdGhpcyB3aWxsIGFsc28gYWxsb3cgcG93ZXJfb24gdG8gb25seSBydW4gb25jZSBpbiB0
aGUKUEhZIGluaXQvZXhpdCBsaWZldGltZSBhcyB3ZWxsLgoKQmVzdCwKUkQKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
