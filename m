Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C981C0218D
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jan 2025 21:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XI4v8Pmzm+d74dQmcpe7LQO34YY6hBjE7DE4jxina0c=; b=2uEjbJ82++Sv6u
	ycAXXzmj6pPCv5lF+bNvo5egGdrvL+ZTeYeiDXW9A2R5DRcH0QZ08b3eS0WJXpxZ3Inx8/K9jTUTZ
	41hIulPOojY1d8Me1vil3oIR3fhS84EfHZ3/DHxANl7j2zBVUNU7DvN9+kv5tKXIYsg/he/iGOiRm
	ugr9F5v5kanrZKpZbXSLDnGHZ6i18bYBzghwSKJOjpNbj41XvV8TKOonfsVyhxxweUVbJCIUHpG4d
	HngAMgv/M87pxVEKv3LAYkkvQB0ADnJ0sFPTkOv0Cdlelq3cqZHzLslEFTplK7cMGQ6x8wfregwaa
	cdOdrdqvucUHHCykIe9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcAQ3-000000017mw-2X7Z;
	Sun, 26 Jan 2025 21:43:51 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcAQ0-000000017mZ-2FpZ
	for linux-phy@lists.infradead.org;
	Sun, 26 Jan 2025 21:43:49 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e46ebe19368so5342445276.0
        for <linux-phy@lists.infradead.org>; Sun, 26 Jan 2025 13:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737927827; x=1738532627; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xpMRXpe3m5PVKuKjzBgshZO9KI7/GnFo9rP4PGbVZNA=;
        b=VswxVf1QR02L8ZQPM/vOoDoK5cOBBGMq5P5VYdJJpIU7A3qE0DV7BWA66hrYfi7dko
         KeZzHnCFT+40zEBtQ2rkgI7O2eDzrx8opKdgUIz58HnQqT5q0Sh1O23/iXIP82TsgP7x
         3yaRSF3wxA+C/nnZ8sbDH6OpEA6MHZApTAHN6PqEzmSn+N6fliintp0VZFTk9vT+tzPv
         SMW+6vp5wUOrSeMs69PgWotxUMBe3z9Iz0oY388HuR1CmOC3emcfPRlDwBE3nQ8HBhJX
         yjuoe7zvq2Mkbr+05sWUmVWLmXyhOkWrxYiJ4MIyNvriujnN/Bd03DL8f0Fhdx3tbamW
         546w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737927827; x=1738532627;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xpMRXpe3m5PVKuKjzBgshZO9KI7/GnFo9rP4PGbVZNA=;
        b=TwW6ihu9eboKm35Xe36LlMSd4G5A/hPdvyAQxLg5P3ZfkYNkzyzgtcFD9qEAfWt9mZ
         HCW+/zz5HD2uX8hir19hd+NkR0CQTUS2+3+AjMLR25ATdu5Of/S402u1iVJVA7lnHJui
         VU5SeJJVhqd2j9scNZDeBH0B1xto7jurUjnKqJ2fbjDD9KVE4I7j0BybjUNBRClNKVEe
         PcUwgy+UTz5YdISFMh/1d6ggdtwbEcTtvIo9pCwbYoDRRtar0UKf6d6ecFgF9jXus+ON
         IEl1j8P8rsxcpF6q29bnuXU/ZD41d+zwCy6lnL0O2DDhAKOfR39J/KTWEv3quSmJUfM9
         Yupg==
X-Forwarded-Encrypted: i=1; AJvYcCVas1WfdNE5S0W+VSTThwKERY6cFwIY8/MgiFq3XLZzBdZeoBGvD9Fnr4a2ji8CGznEqv+adefmrwo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7O00hBTktBH6CZZyJM7TAoo9J8F+mvqZVJ0ZZ4FMHwbvdlUjL
	nO+CgykE5zPR4Tbl5pm+Fw6defhji2gymu9DEIc7B3HjI9Q4IkRCiTqcU1AhRpikTjdibmnLhrz
	AhxFfrw1hLkke4C0HLiJRxrsnRUuMOkqA0iEq+Q==
X-Gm-Gg: ASbGncvxWJCoP8VupoId5IlIrXjoUEqeXVYMdqcPuYVqQUKRTHNc/v8Pf6CKzDolwuN
	OB9bbc6xukTqEB2BMYMZiMNO2YvjkZbygg/ACLBVeWswanYsdJR5r5HIhB2n4S3KQgkv0CYsFlQ
	ZFAw9KCAD4VCcPu6KU7Jc=
X-Google-Smtp-Source: AGHT+IED1fOe+VPdEMF1l8voPxPWe0ESJkMKTkKmUiZ4jzWziPmagBg1bn3j8UK591ZwCsArMWcAfvtOn2xjwmIhMAs=
X-Received: by 2002:a05:690c:6a04:b0:6ef:4a1f:36b7 with SMTP id
 00721157ae682-6f6eb908ed8mr286092907b3.25.1737927826972; Sun, 26 Jan 2025
 13:43:46 -0800 (PST)
MIME-Version: 1.0
References: <20250125-topic-x1p4_dts-v1-0-02659a08b044@oss.qualcomm.com>
 <20250125-topic-x1p4_dts-v1-3-02659a08b044@oss.qualcomm.com>
 <h6zfhxkc4dj2ueaxipha6prbvmv7pnqglghtjs7vkhlc2s7ndi@vhbj4uojlzwd>
 <A64B8332-78F2-4B76-908E-4119E4A54BAE@linaro.org> <cy3x35h4id3gegwb23j6rwblx2pecpw7ffjpri5ddqdd35kzrt@bxdmaumb6bbp>
 <20250126163222.nhcxvr4m2vncwi23@thinkpad>
In-Reply-To: <20250126163222.nhcxvr4m2vncwi23@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 26 Jan 2025 23:43:38 +0200
X-Gm-Features: AWEUYZnvKJ4Ll6Bi_q1ledtl7hY-Y2l5gnW9ImWZn2oAiWKheStXl7ROs8IdqJs
Message-ID: <CAA8EJpq-aNVhSc0fTf4zD63VgrzDokR5uvdGiPvecaBHXYtd+Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add X1P42100 Gen4x4 PHY
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_134348_607373_C5A78467 
X-CRM114-Status: GOOD (  24.54  )
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

T24gU3VuLCAyNiBKYW4gMjAyNSBhdCAxODozMiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtCjxtYW5p
dmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiBTdW4sIEphbiAyNiwg
MjAyNSBhdCAwMTozOTowNVBNICswMjAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gT24g
U3VuLCBKYW4gMjYsIDIwMjUgYXQgMTI6NTk6NTJQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRoYXNp
dmFtIHdyb3RlOgo+ID4gPgo+ID4gPgo+ID4gPiBPbiBKYW51YXJ5IDI1LCAyMDI1IDExOjAwOjIz
IFBNIEdNVCswNTozMCwgRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8u
b3JnPiB3cm90ZToKPiA+ID4gPk9uIFNhdCwgSmFuIDI1LCAyMDI1IGF0IDA0OjMxOjE5QU0gKzAx
MDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gPiA+ID4+IEZyb206IEtvbnJhZCBEeWJjaW8gPGtv
bnJhZC5keWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KPiA+ID4gPj4KPiA+ID4gPj4gQWRkIGEgbmV3
LCBjb21tb24gY29uZmlndXJhdGlvbiBmb3IgR2VuNHg0IFY2IFBIWXMgd2l0aG91dCBhbiBpbml0
Cj4gPiA+ID4+IHNlcXVlbmNlLgo+ID4gPiA+Pgo+ID4gPiA+PiBUaGUgYm9vdGxvYWRlciBjb25m
aWd1cmVzIHRoZSBoYXJkd2FyZSBvbmNlIGFuZCB0aGUgT1MgcmV0YWlucyB0aGF0Cj4gPiA+ID4+
IGNvbmZpZ3VyYXRpb24gYnkgdXNpbmcgdGhlIE5PQ1NSIHJlc2V0IGxpbmUgKHdoaWNoIGRvZXNu
J3QgZHJvcAo+ID4gPiA+PiByZWdpc3RlciBzdGF0ZSBvbiBhc3NlcnQpIGluIHBsYWNlIG9mIHRo
ZSAiZnVsbCByZXNldCIgb25lLgo+ID4gPiA+Cj4gPiA+ID5JIGtub3cgeW91ciBvcGluaW9uLCBi
dXQgbXkgMmMgd291bGQgc3RpbGwgYmUgZm9yIG5vdCBkZXBlbmRpbmcgb24gdGhlCj4gPiA+ID5i
b290bG9hZGVyLiBJIHRoaW5rIHRoYXQgd2FzIHRoZSBydWxlIGZvciBhZ2VzIGZvciBtYW55IHBv
c3NpYmxlCj4gPiA+ID5yZWFzb25zLgo+ID4gPiA+Cj4gPiA+Cj4gPiA+IEJ1dCBpZiBMaW51eCBv
ciBvdGhlciBPUyBjYW4gdHJ1c3QgdGhlIGJvb3Rsb2FkZXIsIHRoZW4gaXQgbWFrZXMgcGVyZmVj
dCBzZW5zZSB0byByZWx5IG9uIHRoZW0uIE9idmlvdXNseSwgdGhlIHF1ZXN0aW9uIGhlcmUgaXMg
dGhhdCBvbiB3aGljaCBwbGF0Zm9ybXMgdGhpcyBsZXZlbCBvZiB0cnVzdCBzaG91bGQgYmUgZXN0
YWJsaXNoZWQuIEFuZCB0aGUgYW5zd2VyIEkgZ290IHdhcyBzdGFydGluZyBmcm9tIHRoZSBjb21w
dXRlIHBsYXRmb3JtcyAoYXRsZWFzdCBYMUUpLgo+ID4KPiA+IElzIHRoZXJlIGFueSB3YXkgaG93
IHRob3NlIHZhbHVlcyBjYW4gYmUgbG9zdCB0aGF0IHdlIHN0aWxsIG1pZ2h0IHdhbnQKPiA+IHRv
IHN1cHBvcnQgPyBUaGUgR0RTQyBnb2luZyB0byB0aGUgT0ZGIHN0YXRlPyBTb21lIGRlZXAgc2xl
ZXAgc3RhdGUgb3IgYQo+ID4gcG93ZXIgY29sbGFwc2U/IEFjdHVhbCBzdXNwZW5kIHRvIFJBTSAo
aW5zdGVhZCBvZiBjdXJyZW50IFMySWRsZSk/Cj4gPgo+Cj4gQXMgcGVyIEtvbnJhZCdzIHJlcGx5
IHRvIG15IGlkZW50aWNhbCBxdWVzdGlvbiwgUEhZIHJlZ2lzdGVyIHN0YXRlIGlzIHN1cHBvc2Vk
Cj4gdG8gYmUgbWFpbnRhaW5lZCBieSBNWCBkb21haW4gZXZlbiBkdXJpbmcgQ1ggUEMuIFRoaXMg
c2VlbSB0byBiZSBjYXNlIG9uIFgxRQo+IGJhc2VkIHBsYXRmb3JtcyAoY29tcHV0ZSkuCgpJcyBN
WCBvbiBkdXJpbmcgUzJSQU0/Cgo+Cj4gPiA+Cj4gPiA+IFNvIGxldCdzIHRha2UgaXQgb24gYW4g
ZXhwZXJpbWVudGFsIGJhc2lzIGFuZCBzZWUgaG93IGl0IGdvZXM/IElmIGF0IGFsbCBhbnkgcHJv
YmxlbSBhcmlzZXMsIHdlIGNhbiBhbHdheXMgcmVzb3J0IHRvIGluIGtlcm5lbCBzZXF1ZW5jZXMu
Cj4gPgo+ID4gU291bmRzIGxpa2UgYSBnb29kIHByb3Bvc2FsLiBDYW4gcG9zc2libHkgaGF2ZSBh
IGNvcnJlc3BvbmRpbmcgJ2RvIG5vdAo+ID4gbWVyZ2UnIHBhdGNoIHdpdGggYWN0dWFsIGluaXQg
dGFibGVzPwo+ID4KPgo+IEkgZG9uJ3QgZmluZCBpdCByZWFsbHkgcmVxdWlyZWQuIElmIHRoZSBp
bml0IHNlcXVlbmNlcyBhcmUgcmVhbGx5IG5lZWRlZCwgd2UKPiBrbm93IHdoZXJlIHRvIGZpbmQg
dGhlbS4KPgo+IC0gTWFuaQo+Cj4gLS0KPiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgoKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
