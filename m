Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E081C43458
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jun 2026 21:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnUmh6xAresra78/ThQj2mdLLpqc283ILWunWyh9N00=; b=Y2WGoDWPca89TC
	c/GqtzaQSifiXUvWfEK0ISM2FhHyUJH4qaRGOFFUqI8qpmWlWEsi/SdbtkRbuzXF3IdeKAphEn6ny
	AtPEd88VH9AhHbAqIQ1waKn8PhgrBOwYEHHyIBQmPtigfDOeJRaeHmyVSHqbHsHawLpwLrZnQPLx7
	KLp0YYd8B8evd+70DufacNwaSewtPLhRnGN+xtwRei9DnacjLZRMC6dYG2N0maLIqmjZXPPwPo+La
	dVT/3jM49tJewnIIhIRj30BSn0xxurUKf33/rqdPlZJ2opTmVNLzpeAyMN/6akEvjXioN9tKyND2b
	1AMNkLbbmLbjLmM3jK/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdEJ9-0000000Bw7Z-0C1A;
	Fri, 26 Jun 2026 21:41:55 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdEJ6-0000000Bw7E-2iCr
	for linux-phy@lists.infradead.org;
	Fri, 26 Jun 2026 21:41:53 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-492046a3313so1217497b6e.2
        for <linux-phy@lists.infradead.org>; Fri, 26 Jun 2026 14:41:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782510110; cv=none;
        d=google.com; s=arc-20260327;
        b=HoEjBRYLZMI9TCnlxeByrC3l53YgXlCV6dP8CinnPHogWPhoSSssJElu1lUKgjs7/e
         uTzkrOFrC3PL9STWWT6TM/s4fB19nHT5HWO0cYSVU3dwZx6sMnCM4Add1+DmjKBfCo+D
         R3qhaCNpYVr/6jARW64KoFiY/TawO+GmuIVS1uhauSdAVZj3Wk44lCCQz64C12NUyH8s
         BEpapJpt5naqiUTMFJNzKnA29JqPiv93ebPOwIjfVgprBMYEAcjfoDNcHL/GEt/7IW6f
         Tg+tpuJL3+X0xixpU0g+9QLWIFZeLjM+ZPnuwfMEG7CRCsdH/L/DHPp0R8D5AzpBVwlb
         94Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=x7PB+0Ueeud2XUqGwdJkK6s91VXJCVlyy1dN5TWJ7sg=;
        fh=Q2rYdReUlGYpO8A5KWTDDfBRNpKyngq7WO0if3UVjy4=;
        b=sUYUGf8LMBwcRP+qV6ObCRLSYkhyTHfu/R1ugZEeMmCLt5jiWo61eSIq/OJx8jlhDU
         UXokh3Drg/3R/8PQV02jRV/hBnheLErwuqC6muA9fIzk1PxF7wcGrezJzhiy4rxSgIu9
         ZM87wDZkaYmi8axju+Xvytn0YZ3rC6UuKRbjT4NQbbkDiC1qvpVbyUFUoWyr8uAUUCUJ
         B9zPaWxoGBbk9V5IrkvODZh+YHrBVAwYmoq/X0w30KLepziYEIjGmdnwAFQ3rojTWHy1
         PPF6o7eTzDyZANufJ9NMP3yesE4lL3HfNyDStZTTBSZNpbvNsVDhKv73IlpDXugOl9/q
         j3mA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1782510110; x=1783114910; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=x7PB+0Ueeud2XUqGwdJkK6s91VXJCVlyy1dN5TWJ7sg=;
        b=sm42hnYnioZp6GM0MxyC1BLSmXtJ8Djs41gYR7+QD5xJc7nGZ1lvgDmwYGelU2YsiI
         iZYTQ0j9xtzRom38OO2j3kDa82JcL9gjA0VDN0xZWLzv2R6fB2u4HgYSEYIaGx44vKFy
         EYb5JwIp+5mNjAUhhd11wQzo1k/Y3DF4dXTzsZfI6kBw05ic2+1Wrvmk9MK14O58F9ZG
         oa7h5Pb5UqnJ0kt17OtdiOTPIBCTXwaa8MSt6cqcuI7Tly1iUWA1Fh2LLLSyAJ98YOLH
         oBqFpC1rcnfkSmxYU/e76evJtrWqKDm2F+DNoLW9uqxJcMbHhhYr5DjYfVGYmfv+zT9M
         1Bvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782510110; x=1783114910;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=x7PB+0Ueeud2XUqGwdJkK6s91VXJCVlyy1dN5TWJ7sg=;
        b=kAuzhmgFMVPTjlB9IB/23kMkUJfAJ2VxtK+Eh7yOjjC0izpUk8DgT4+IOybL5wgeiF
         JHNxO8V4BUxf9DvL5X3ibtnK1n9itV7x2XDAal6kfLbWsIdbXozBk6Vms/ctPuaN93hc
         woJ6ec76f0oNzK6lQGiNNUyu82jZw16Fn8hphPlyFvqnc8/kfwKgVbBr3KDuFWTGeAq+
         8gPKB/0U58YHkCsk9YFDesHP/oMuzlsL5I/txJPa9cbz91lfjm1zSrQaC6yv5CuYaivw
         Iu+qVrQ3TpHBgsKGlTQaW7QlCy9xO2XJ3uunvx4MI4KcX7aMe5DsQMn+nECVnWrUkO3e
         +kLg==
X-Gm-Message-State: AOJu0Ywt701aS48FnSHHAHbWBpm0P8Zcrizf+6npjAHjzU1B4IxMfYcr
	zulhBCN8Wd3KGyqM2yMbvnGvTyWZhezXeB1e56Fjh1xMnGrsDHBaG6jUUt1kVsc7BFlI09WLipd
	1Tyh2+62c14ZGRfy0D7XawkqdM5yz3xmEv1407eMIt1rU1GungFmzPsnqECQ=
X-Gm-Gg: AfdE7ck5FfVAOX9gHYyEO2/Opc2Qqa/yui3d91Z7q4WQVTngRONnZemiaXk9RuRJ+PZ
	G9RPW4s6xj15Cd+Jtd0qYhqe5DI92oxisuoUc1zFR6/hmwSNmz43SLaYw6zAMt0XNlsqQzY91bx
	BDSWbJBMlyr1SadeCgBV3EA/NAt9CnGs7GSGhVcHpoD5lff/J8s/8I9HaZcPxUgAwglL8e3sopA
	JxUT406nTUME6fC8QhOF/LekY1Db6uyMyPFASzEZ0k6m6qp8R0eCLFIRyTqqUJXFo8DgppTSM6r
	ISLGJTVkyjwxTWdZVhpWjeLl
X-Received: by 2002:a05:6808:5092:b0:493:b22c:9fb4 with SMTP id
 5614622812f47-493b22ca525mr2850504b6e.6.1782510110141; Fri, 26 Jun 2026
 14:41:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260622175240.2469937-2-rdbabiera@google.com> <20260622180542.4108F1F000E9@smtp.kernel.org>
In-Reply-To: <20260622180542.4108F1F000E9@smtp.kernel.org>
From: RD Babiera <rdbabiera@google.com>
Date: Fri, 26 Jun 2026 14:41:39 -0700
X-Gm-Features: AVVi8CcBZcAcce4t_Wky9bz5ABzcI-X4PWP4fhnPGIDoicCEsJdYHcJCDjh6NO8
Message-ID: <CALzBnUFomBMRANaYEO_eri3hW4N74wSLjEqiBneatLGgu2wckw@mail.gmail.com>
Subject: Re: [PATCH v2] phy: Add USB3 PHY support to Google Tensor SoC USB PHY driver
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, 
	olteanv@gmail.com, vkoul@kernel.org, 
	Badhri Jagan Sridharan <badhri@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_144152_715057_C299F0BE 
X-CRM114-Status: GOOD (  20.62  )
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

T24gTW9uLCBKdW4gMjIsIDIwMjYgYXQgMTE6MDXigK9BTSA8c2FzaGlrby1ib3RAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4gW1NldmVyaXR5OiBIaWdoXQo+IFdpbGwgdGhpcyBlcnJvciBwYXRoIGxlYWsg
dGhlIHJlZmVyZW5jZSBjbG9jayByZXF1ZXN0Pwo+Cj4gU2luY2Ugc2V0X3BtZ3RfcmVmX2Nsa19y
ZXFfbihncGh5LCB0cnVlKSB3YXMgY2FsbGVkIGVhcmxpZXIsIGlmCj4gY2xrX2J1bGtfcHJlcGFy
ZV9lbmFibGUoKSBmYWlscyB3ZSByZXR1cm4gd2l0aG91dCBkZWFzc2VydGluZyB0aGUgY2xvY2sK
PiByZXF1ZXN0Lgo+Cj4gVGhlIGRyaXZlciBjb3JlIGRvZXNuJ3QgaW52b2tlIHBoeV9leGl0KCkg
aWYgcGh5X2luaXQoKSBmYWlscywgc28gdGhlCj4gcmVxdWVzdCB3aWxsIHJlbWFpbiBwZXJtYW5l
bnRseSBhc3NlcnRlZC4KPgo+IFtTZXZlcml0eTogSGlnaF0KPiBEb2VzIHRoaXMgZXJyb3IgcGF0
aCBhbHNvIGxlYWsgdGhlIHJlZmVyZW5jZSBjbG9jayByZXF1ZXN0Pwo+Cj4gSXQgcHJvcGVybHkg
dW53aW5kcyB0aGUgY2xvY2tzIGFuZCByZXNldHMsIGJ1dCBpdCBtaXNzZXMgY2FsbGluZwo+IHNl
dF9wbWd0X3JlZl9jbGtfcmVxX24oZ3BoeSwgZmFsc2UpIGJlZm9yZSByZXR1cm5pbmcuCgpJIGFk
ZHJlc3NlZCB0aGlzIGluIFYxIHdoZXJlIGEgcGh5X2luaXQgZmFpbHVyZSB3b3VsZCBsaWtlbHkg
cmVzdWx0CmluIHRoZSBoYXJkd2FyZSBwb3dlcmluZyBvZmYgYW5kIG9uIGFnYWluIGFuZCB0aGUg
cmVxdWVzdCB3b3VsZApjbGVhciwgYnV0IEknbGwgY2hhbmdlIGl0IGZvciB0aGUgbmV4dCB2ZXJz
aW9uIGZvciBjb3JyZWN0bmVzcy4KCj4gW1NldmVyaXR5OiBIaWdoXQo+IElmIHByb2dyYW1fdGNh
X2xvY2tlZCgpIGZhaWxzLCB3aWxsIGhhcmR3YXJlIHByb2dyYW1taW5nIHJldHJpZXMgZmFpbAo+
IGJlY2F1c2UgdGhlIHNvZnR3YXJlIHN0YXRlIHdhcyBwcmVtYXR1cmVseSB1cGRhdGVkPwo+Cj4g
SWYgdGhlIFVTQiBzdWJzeXN0ZW0gcmV0cmllcyBwb3dlcmluZyBvbiB0aGUgUEhZIGFmdGVyIGFu
IGVycm9yLCB0aGUgZWFybHkKPiBzdWNjZXNzIGNoZWNrIGF0IHRoZSB0b3Agb2YgZ29vZ2xlX3Vz
YjNfcGh5X3Bvd2VyX29uKCkgd2lsbCBoaXQgYW5kIHJldHVybiAwCj4gd2l0aG91dCBhY3R1YWxs
eSByZS1hdHRlbXB0aW5nIHRoZSBoYXJkd2FyZSBjb25maWd1cmF0aW9uLgoKSSdsbCBjaGFuZ2Ug
dGhpcyBzbyB0aGF0IENPTUJPX1BIWV9UQ0FfUkVBRFkgaXMgc2V0IHdoZW4gdGhlIGluaXRpYWwK
UG9SID0+IE5DIGNoZWNrIHBhc3NlcywgYnV0IHN1YnNlcXVlbnQgcG93ZXJfb24gY2FsbHMgc2tp
cCB3YWl0aW5nCmZvciB0aGUgUG9SID0+IE5DIHJlcXVlc3QgYW5kIGFsbG93IHRoZSBwcm9ncmFt
X3RjYV9sb2NrZWQoKSBjYWxsCnRvIGJlIG1hZGUgd2hpbGUgdGhlIGludGVybmFsIFBIWSBzdGF0
ZSBpcyBDT01CT19QSFlfVENBX1JFQURZLgoKPiBbU2V2ZXJpdHk6IEhpZ2hdCj4gSXMgdGhlIG1p
c3NpbmcgLnBvd2VyX29mZiBjYWxsYmFjayBnb2luZyB0byBjYXVzZSB0aGUgc3RhdGUgbWFjaGlu
ZSB0bwo+IGRlc3luYyBvbiBzdXNwZW5kIGFuZCByZXN1bWU/Cj4KPiBEdXJpbmcgc3VzcGVuZCwg
d2l0aG91dCBhIHBvd2VyIG9mZiBob29rLCBncGh5LT5waHlfc3RhdGUgcmVtYWlucwo+IENPTUJP
X1BIWV9UQ0FfUkVBRFkuIE9uIHJlc3VtZSwgZ29vZ2xlX3VzYjNfcGh5X3Bvd2VyX29uKCkgY2hl
Y2tzIHRoaXMKPiBzdGF0ZSBhbmQgcmV0dXJucyAwIHdpdGhvdXQgcmVwcm9ncmFtbWluZyB0aGUg
VENBIGhhcmR3YXJlLCB3aGljaCBjb3VsZAo+IHBlcm1hbmVudGx5IGJyZWFrIHRoZSBsaW5rLgoK
VGhlIGNoYW5nZSBhYm92ZSBzaG91bGQgY292ZXIgdGhpcyBjYXNlLgoKPiBbU2V2ZXJpdHk6IENy
aXRpY2FsXQo+IFdpbGwgdW5jb25kaXRpb25hbGx5IHJlcXVlc3RpbmcgdGhlIHVzYjMgY2xvY2tz
IGJyZWFrIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5Cj4gb24gc3lzdGVtcyB1c2luZyBvbGRlciBk
ZXZpY2UgdHJlZXM/Cj4KPiBJZiBhbiBvbGRlciBkZXZpY2UgdHJlZSBvbmx5IHByb3ZpZGVzIFVT
QjIgcmVzb3VyY2VzLCBkZXZtX2Nsa19idWxrX2dldCgpCj4gd2lsbCBmYWlsIGhlcmUgYW5kIGFi
b3J0IHRoZSBlbnRpcmUgcHJvYmUgc2VxdWVuY2UuCj4KPiBbU2V2ZXJpdHk6IENyaXRpY2FsXQo+
IFNpbWlsYXJseSwgd2lsbCB1bmNvbmRpdGlvbmFsbHkgcmVxdWlyaW5nIHRoZSB1c2IzX3RjYSBy
ZXNvdXJjZSBicmVhayBwcm9iZQo+IGZvciBvbGRlciBkZXZpY2UgdHJlZXMgdGhhdCBvbmx5IGRl
ZmluZSBVU0IyIHJlc291cmNlcz8KPgo+IElmIHRoZSBtZW1vcnkgcmVnaW9uIGlzIG1pc3Npbmcg
ZnJvbSB0aGUgRFQsIHRoaXMgd2lsbCByZXR1cm4gYW4gZXJyb3IgYW5kCj4gcHJldmVudCB0aGUg
VVNCMiBQSFkgZnJvbSB3b3JraW5nIG9uIHRob3NlIGRldmljZXMuCgpUaGUgUEhZIElQIHN1cHBv
cnRzIHRoZSBVU0IzIHJlc291cmNlcyBieSBkZWZhdWx0LCBzbyBpdCBtYWtlcyBzZW5zZQp0byBi
YWtlIGluIHRoZSByZXF1aXJlbWVudHMuCgpCZXN0LApSRAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
