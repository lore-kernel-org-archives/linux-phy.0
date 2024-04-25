Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE5BC4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 16:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vC4VyD9UYF6lpexttqGfckxm4JMD7eieRkJh5C2uUdw=; b=5AmP2lQ3tHkkL6
	kvqX71SNMjrJJu3zZDfW8y4w8jtwCtzgPKm7cXynSCERiz2Q5h025yw6IkT5Nwjca0u6XYp0c7Fbt
	eDoP1hUNRXTU19MxLPRVHerAbQnhp22ztOSRe+wyWGaYX/5mkNWBMKd4BABH9eSWC2xE4WCca+GK0
	yLvyddPbQbZM8Fc7r1i9N5gFVgKJBT5DU98Gb98J7N5RxqFQASp4wUQPtMJvdz1JdWwF6BokwF89J
	o55fKUJGLc8K206sVwTryd81EIWotbbrpQuM/y7hVz47FyATKkRM5GS9yDjzhmWJJ3AmntR4iN+H7
	ADAE5H9RjvMa5ZMnRcbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s024P-00000009P5C-1Mpj;
	Thu, 25 Apr 2024 16:35:37 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s024L-00000009P2R-2taY
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 16:35:35 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5af702072a9so184799eaf.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 09:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714062931; x=1714667731; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8D10nkcOa5R+uHy2/Q7XxV4zDHaJ6w0gsH2wqoomVXQ=;
        b=pUEh85APAytEV2okmtKoPcHm2wRX7HALdZi+b8RHbC4JFPwWZ8lwG2mutUOo8Vfv9u
         E4XAtoK+E+iZlRmRAsQLLuufdwVcW1q4eILhtyjJFl28pt39TSQjWCRjZYQ1+mz+/bIV
         nFCr00nAx9OvJgan7iAxf6WpYskjrXNiElUY2sYFAc5nFzl7DHsfZfddChXsp6nbiDWR
         QNspRn3Z2WMUvZhXkgIb09STi9hKcYDkzDkurJyXf0K9vdUuyTmfh8VWsRdM2qDVUG6h
         eO7Q4SfhGzqjGCGyGdOULvO0DgZ+oTACbbhJXyxjjZeFwDgZkQ/01VjPYVzxJyKi3usp
         MD/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714062931; x=1714667731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8D10nkcOa5R+uHy2/Q7XxV4zDHaJ6w0gsH2wqoomVXQ=;
        b=U63qTXHBhiHEiWrjolcnjg5lCxOq17++BpqRu6sfz86i7UWgnOjdVNqw1McckDHBNa
         M1PjUn2JThETt8gsU0E0tD3FTs3SBnT4zRpx77qlWe+LhYW9igQ0XVK3HU4N8vrpaznD
         aLrpEDhO1bgEQnD/KwkKoLZ2slaKgcJ0rZHW6C+0dSCDAsZqXhiHFvdNsVapLDfDZ9Do
         ULLggmAJTgbotSdXjnTeQLenTcwtsUS/spRIb72sYivtz7/7LVeEktRopSDdaPupm9P/
         IuBMHrSvc8L6vlxj4iKf61UHFkxagWh1R6ns0mqA5CZjhphZ7QO+EtOmh3wOa9jZycqj
         ev0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWzbr8vu4aplPdP2hcaJIRgY5YVJ9jOU7R91mq7b6zkz/bwAL39eniLhlg7casj9ofDuuAIRpLKRjSlq4fAo3zVnG+HOOrk2gGyZmAgWQ==
X-Gm-Message-State: AOJu0YztswPjxRH8vyXA7QNOu+WcPMcDyEL2px0cBnkfRQz8O2tS+GMO
	gWUMeXrYXeiU2fp9mvEZJ+0rj9oQxeqjpqIRvJ/FQ1DS226XMqs8qsqccZPFqZ5JLS3lK47Udu1
	IsQ+8s+PmpVR/PfpBYzfJNkZgv63lhJwQPDz5iQ==
X-Google-Smtp-Source: AGHT+IHjcgDl2gtVr/nZRGKGuh2NquqDXaKs02m0Ke3hafEhPZVueDe1BLxI7k0uWnYn7WyPx11zD8Zk9f2sSWyLcbo=
X-Received: by 2002:a4a:d46:0:b0:5ac:9e7d:576e with SMTP id
 67-20020a4a0d46000000b005ac9e7d576emr185709oob.1.1714062931017; Thu, 25 Apr
 2024 09:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
 <20240423205006.1785138-7-peter.griffin@linaro.org> <52403f522a4f7513c5ee5dae48856988f7141825.camel@linaro.org>
In-Reply-To: <52403f522a4f7513c5ee5dae48856988f7141825.camel@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 25 Apr 2024 17:35:19 +0100
Message-ID: <CADrjBPrpsTFns8o+H=SvqdgmKFrkuGEJ2QphL7BpRfy9kifxJQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/14] arm64: dts: exynos: gs101: Add ufs, ufs-phy and
 ufs regulator dt nodes
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com, 
	ebiggers@kernel.org, linux-scsi@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	tudor.ambarus@linaro.org, saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_093533_744941_984C6432 
X-CRM114-Status: GOOD (  11.23  )
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

SGkgQW5kcsOpLAoKT24gVGh1LCAyNSBBcHIgMjAyNCBhdCAxMzowMiwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIDIwMjQtMDQtMjMg
YXQgMjE6NDkgKzAxMDAsIFBldGVyIEdyaWZmaW4gd3JvdGU6Cj4gPiBFbmFibGUgdGhlIHVmcyBj
b250cm9sbGVyLCB1ZnMgcGh5IGFuZCB1ZnMgcmVndWxhdG9yIGluIGRldmljZSB0cmVlLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9y
Zz4KPiA+IC0tLQo+ID4gIC4uLi9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLW9yaW9sZS5k
dHMgICB8IDE4ICsrKysrKysrKysKPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9nb29n
bGUvZ3MxMDEuZHRzaSAgfCAzNiArKysrKysrKysrKysrKysrKysrCj4gPiAgMiBmaWxlcyBjaGFu
Z2VkLCA1NCBpbnNlcnRpb25zKCspCj4gPgo+Cj4gWy4uLl0KPgo+ID4gKwo+ID4gKyAgICAgICAg
ICAgICB1ZnNfMDogdWZzQDE0NzAwMDAwIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb21w
YXRpYmxlID0gImdvb2dsZSxnczEwMS11ZnMiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJl
ZyA9IDwweDE0NzAwMDAwIDB4MjAwPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICA8
MHgxNDcwMTEwMCAweDIwMD4sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MTQ3
ODAwMDAgMHhhMDAwPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICA8MHgxNDYwMDAw
MCAweDEwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmVnLW5hbWVzID0gImhjaSIsICJ2
c19oY2kiLCAidW5pcHJvIiwgInVmc3AiOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGludGVy
cnVwdHMgPSA8R0lDX1NQSSA1MzIgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNtdV9oc2kyIENMS19HT1VUX0hTSTJfVUZTX0VNQkRf
SV9BQ0xLPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNtdV9oc2kyIENM
S19HT1VUX0hTSTJfVUZTX0VNQkRfSV9DTEtfVU5JUFJPPiwKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8JmNtdV9oc2kyIENMS19HT1VUX0hTSTJfVUZTX0VNQkRfSV9GTVBfQ0xL
PiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNtdV9oc2kyIENMS19HT1VU
X0hTSTJfUUVfVUZTX0VNQkRfSFNJMl9BQ0xLPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmNtdV9oc2kyIENMS19HT1VUX0hTSTJfUUVfVUZTX0VNQkRfSFNJMl9QQ0xLPiwK
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmNtdV9oc2kyIENMS19HT1VUX0hT
STJfU1lTUkVHX0hTSTJfUENMSz47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFt
ZXMgPSAiY29yZV9jbGsiLCAic2Nsa191bmlwcm9fbWFpbiIsICJmbXAiLAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgInVmc19hY2xrIiwgInVmc19wY2xrIiwgInN5c3Jl
ZyI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZnJlcS10YWJsZS1oeiA9IDwwIDA+LCA8MCAw
PiwgPDAgMD4sIDwwIDA+LCA8MCAwPiwgPDAgMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBwaW5j
dHJsLTAgPSA8JnVmc19yc3RfbiAmdWZzX3JlZmNsa19vdXQ+Owo+Cj4gVGhlIHByZWZlcnJlZCBv
cmRlciBpcyBwaW5jdHJsLTAgYmVmb3JlIHBpbmN0cmwtbmFtZXMgKHNpbWlsYXIgdG8gY2xvY2st
bmFtZXMgYW5kIHJlZy1uYW1lcykuCgpXaWxsIGZpeAo+Cj4gT3RoZXIgdGhhbiB0aGF0LAo+Cj4g
QWNrZWQtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cgp0aGFu
a3MsCgpQZXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
