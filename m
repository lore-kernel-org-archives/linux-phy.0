Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B904CFC52F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 09:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygaMCwdQFkeiDeRG6sV26Jc4mcBZ93XW90+5kM00NsI=; b=F8GVTUrepdhG9z
	3GvB+UZ+gMPcVZ1/ket45ITFSLgETGUT4AKVvhXxDqCgCk43rf2J8+JvugkTqglVA9V8cjo/24KOe
	FiUdryvVJ04l19vIVbHl0BULCw6SNmQIvo1ta/Q1GaASRgJtQR+nDGwWD4oJh7J09sSgJvpnU0lCc
	PQYIzXiXciBVMesWiLADVn/d8rmvwPbd/dDmHn0GjStPLfftczoAUjCU51F6tEjy6e2w2b/avYJ7g
	8qzVGBC4qCGSbH4QyoZfA/lo4o2xzMVUzb7bpTgae68h1lkco+Vn9uJjDZjPSdaAmg83Vop2ZepVq
	Z7F1VsYFfE8+rZ3i9Z2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HpO-00000004cNd-0LmQ;
	Mon, 14 Oct 2024 09:57:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HZq-00000004Z0E-2j4i
	for linux-phy@bombadil.infradead.org;
	Mon, 14 Oct 2024 09:41:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=VGDcajQQA28uSCWg1Uq1p5tTF+iHCeqbkSKa1TTSEnk=; b=X90ny2Dd3B2uT63COhLiM/5fmh
	waGKZXlRyuAy6vszgyeUlVWj5zCjY6/LEnZzjj3OtSHqml7tlAdwJlyLMLhg+rcPyyWSVwJnon4Hi
	nzC6Knoa/nK2i/R1bkP6IdKDe0d0r/1NLrWEMHH4KAgoSPOLmrmyaTVXMUFiqAbppCh5ckpLzSqI3
	fcSFpzlIcqQ9C2L2jUHQ9fBMHD9erqsMdwzeklI9IDsStf+Ay5eVti9kxGlaK4Qqs4fR0122UNYP7
	RmShd4SLIkCzt4eP9mwqK5WkOBKsYtmXESRMWJpW9CCWqfkCcjeL0M8o2rhXCvkY2k/RUXBDAaFyi
	T0tjBjbQ==;
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0HZn-00000006JEG-0UOy
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 09:41:21 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-20c77459558so31067685ad.0
        for <linux-phy@lists.infradead.org>; Mon, 14 Oct 2024 02:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728898876; x=1729503676; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VGDcajQQA28uSCWg1Uq1p5tTF+iHCeqbkSKa1TTSEnk=;
        b=JsjId3tQJ5XzUF2gdHPMBduAaYdoETNQvzDg2xhu+1cjHaAstfHCW5D1jIc/gaEcmp
         /60V9DI4XZv88lgjspb3t06h+nXBsF+acI/5FcGhEI2NvwvwjO7s+Sl2PEWDotY2Jjs6
         Uwnwt6lSTIkBxHn3/mE+PByq13vsifnjD+O0l1GHeOwW3m0LwkeBbwSYDk35xJC+xwyj
         c/tFI5FvrUbIrvALYpUpKBBsGVGYzr8rnzI58nDuUSw6vU+ZxOvd7MTAzxd7ny8icgx/
         J4wiw6KDiLimAPFu/tToGlsEsg9xEE0Be+XBv/GFIute5+DQn6B6n4bd63muRObqOJpz
         Zs5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728898876; x=1729503676;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VGDcajQQA28uSCWg1Uq1p5tTF+iHCeqbkSKa1TTSEnk=;
        b=ehZzLGjMBWft3IhbcEjDIzl/dyYu+N2WOYnYo+99vqVFbDKaoUs2VY5FYxkT/ySzri
         D0Y4qj+HsY4ZmEXBXRhZS1Fh5XIRj6lqEG332seXzpajKQxzc3mhtqU7YCflkam+Wx32
         hchImj8bpUHM5c/njo95qY7Oamf1i0s9orDOVGh6/JHZmnKUCcFjM10T+EAKMgIjvz7E
         GnkKnWiyODkZTRFQJR3Ji7KgV/38IsWg9Pr0UXq9006lMLJKOH+bR+VB7jChWnOtAckz
         fvTQhDdlMJx76DHw5oKqK25AG68wfHVvUhncZ93vbRb5gRwPN9Zpvmp+8h8OY47MuUt8
         JQLg==
X-Forwarded-Encrypted: i=1; AJvYcCUikPbmrO0U5Eip1QfnVvSDmuxGp6zuszqXM4x3IlpL0zUFZmx92us5vt16sEiyRXyzJs8tf1ygLRI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyKP0pdQ3ei3WRcIvCr7/vMRwAzv/wYDIT316UD/eJesq6HfH+9
	Bhm4A673VIaSNGtlzDzqXOsrr0PQdV6sCw7w+Tca6VEEUCa0COnS3AweNbwIGw==
X-Google-Smtp-Source: AGHT+IG5QpPcViQF4f0Xw3WtPhXc81C6M52HaQ2+YsN4SPnIJxZOkXsW8b58YYaVxfzSsSpYyoxERA==
X-Received: by 2002:a17:902:d510:b0:20c:b0c7:92c9 with SMTP id d9443c01a7336-20cb0c79859mr120943595ad.34.1728898875836;
        Mon, 14 Oct 2024 02:41:15 -0700 (PDT)
Received: from [127.0.0.1] ([220.158.156.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8c21d953sm62321315ad.214.2024.10.14.02.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 02:41:15 -0700 (PDT)
Date: Mon, 14 Oct 2024 15:11:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
 quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, kw@linux.com,
 lpieralisi@kernel.org, neil.armstrong@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v6_3/8=5D_dt-bindings=3A_PCI=3A_qc?=
 =?US-ASCII?Q?om=2Cpcie-x1e80100=3A_Add_=27global=27_interrupt?=
User-Agent: K-9 Mail for Android
In-Reply-To: <ea7c1390-7ead-4c17-9ae3-cdcc9866332a@kernel.org>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com> <20241011104142.1181773-4-quic_qianyu@quicinc.com> <eyxkgcmgv5mejjifzsevkzm2yqdknilizrvhwryd745pkfalgk@kau4lq4cd7g3> <4802B12B-BAC1-4E99-BDFE-A2340F4A8F24@linaro.org> <3d1d0822-da66-44c8-a328-69804210123c@kernel.org> <65B34B14-76C3-491D-8A58-6D0887889018@linaro.org> <df6379c6-662a-4b35-a919-13c695a869c7@kernel.org> <20241014090251.r4sfaaxtasokv4oi@thinkpad> <ea7c1390-7ead-4c17-9ae3-cdcc9866332a@kernel.org>
Message-ID: <B716D0B8-2B9C-4FA2-94F3-038F1C634244@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_104119_257681_31D73677 
X-CRM114-Status: GOOD (  14.38  )
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

CgpPbiBPY3RvYmVyIDE0LCAyMDI0IDI6NTY6NTggUE0gR01UKzA1OjMwLCBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+T24gMTQvMTAvMjAyNCAxMTowMiwgTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+PiBPbiBGcmksIE9jdCAxMSwgMjAyNCBhdCAwNjow
NjowMlBNICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4gT24gMTEvMTAvMjAy
NCAxNzo1MSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+Pj4+Cj4+Pj4KPj4+PiBPbiBP
Y3RvYmVyIDExLCAyMDI0IDk6MTQ6MzEgUE0gR01UKzA1OjMwLCBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Pj4+PiBPbiAxMS8xMC8yMDI0IDE3OjQyLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IE9uIE9jdG9iZXIg
MTEsIDIwMjQgODowMzo1OCBQTSBHTVQrMDU6MzAsIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtA
a2VybmVsLm9yZz4gd3JvdGU6Cj4+Pj4+Pj4gT24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDM6NDE6
MzdBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6Cj4+Pj4+Pj4+IERvY3VtZW50ICdnbG9iYWwnIFNQ
SSBpbnRlcnJ1cHQgYWxvbmcgd2l0aCB0aGUgZXhpc3RpbmcgTVNJIGludGVycnVwdHMgc28KPj4+
Pj4+Pj4gdGhhdCBRQ09NIFBDSWUgUkMgZHJpdmVyIGNhbiBtYWtlIHVzZSBvZiBpdCB0byBnZXQg
ZXZlbnRzIHN1Y2ggYXMgUENJZQo+Pj4+Pj4+PiBsaW5rIHNwZWNpZmljIGV2ZW50cywgc2FmZXR5
IGV2ZW50cywgZXRjLgo+Pj4+Pj4+Cj4+Pj4+Pj4gRGVzY3JpYmUgdGhlIGhhcmR3YXJlLCBub3Qg
d2hhdCB0aGUgZHJpdmVyIHdpbGwgZG8uCj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhvdWdo
IGFkZGluZyBhIG5ldyBpbnRlcnJ1cHQgd2lsbCBicmVhayB0aGUgQUJJLCBpdCBpcyByZXF1aXJl
ZCB0bwo+Pj4+Pj4+PiBhY2N1cmF0ZWx5IGRlc2NyaWJlIHRoZSBoYXJkd2FyZS4KPj4+Pj4+Pgo+
Pj4+Pj4+IFRoYXQncyBwb29yIHJlYXNvbi4gSGFyZHdhcmUgd2FzIGRlc2NyaWJlZCBhbmQgbWlz
c2luZyBvcHRpb25hbCBwaWVjZQo+Pj4+Pj4+IChiZWNhdXNlIGFjY29yZGluZyB0byB5b3VyIGRl
c2NyaXB0aW9uIGFib3ZlIGV2ZXJ5dGhpbmcgd2FzIHdvcmtpbmcKPj4+Pj4+PiBmaW5lKSBpcyBu
b3QgbmVlZGVkIHRvIGJyZWFrIEFCSS4KPj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEhhcmR3YXJlIHdh
cyBkZXNjcmliZWQgYnV0IG5vdCBjb21wbGV0ZWx5LiAnZ2xvYmFsJyBJUlEgbGV0J3MgdGhlIGNv
bnRyb2xsZXIgZHJpdmVyIHRvIGhhbmRsZSBQQ0llIGxpbmsgc3BlY2lmaWMgZXZlbnRzIGxpa2Ug
TGluayB1cCwgTGluayBkb3duIGV0Yy4uLiBUaGV5IGltcHJvdmUgdXNlciBleHBlcmllbmNlIGxp
a2UgdGhlIGRyaXZlciBjYW4gdXNlIHRob3NlIGludGVycnVwdHMgdG8gc3RhcnQgYnVzIGVudW1l
cmF0aW9uIG9uIGl0cyBvd24uIFNvIGJyZWFraW5nIHRoZSBBQkkgZm9yIGdvb2QgaW4gdGhpcyBj
YXNlLgo+Pj4+Pj4KPj4+Pj4+PiBTb3JyeSwgaWYgeW91ciBkcml2ZXIgY2hhbmdlcyB0aGUgQUJJ
IGZvciB0aGlzIHBvb3IgcmVhc29uLgo+Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gSXMgdGhlIGFib3Zl
IHJlYXNvbmluZyBzdWZmaWNpZW50PyAKPj4+Pj4KPj4+Pj4gSSB0cmllZCB0byBsb29rIGZvciBj
b3JyZXNwb25kaW5nIGRyaXZlciBjaGFuZ2UsIGJ1dCBjb3VsZCBub3QsIHNvIG1heWJlCj4+Pj4+
IHRoZXJlIGlzIG5vIEFCSSBicmVhayBpbiB0aGUgZmlyc3QgcGxhY2UuCj4+Pj4KPj4+PiBIZXJl
IGl0IGlzOgo+Pj4+Cj4+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9NDU4MTQwM2Y2NzkyOWQwMmMx
OTdjYjE4N2M0ZTFlODExYzllNzYyYQo+Pj4+Cj4+Pj4gIEFib3ZlIGV4cGxhbmF0aW9uIGlzIGdv
b2QsIGJ1dAo+Pj4+PiBzdGlsbCBmZWVscyBsaWtlIGltcHJvdmVtZW50IGFuZCBkZXZpY2UgY291
bGQgd29yayB3aXRob3V0IGdsb2JhbCBjbG9jay4KPj4+Cj4+PiBTbyB0aGVyZSBpcyBubyBBQkkg
YnJlYWsgaW4gdGhlIGZpcnN0IHBsYWNlLi4uIENvbW1pdCBpcyBtaXNsZWFkaW5nLgo+Pj4KPj4g
Cj4+IEl0IGluY3JlYXNlcyB0aGUgJ21pbkl0ZW1zJyB0byA5IGZyb20gOCwgaG93IGNvbWUgaXQg
aXMgbm90IGFuIEFCSSBicmVhaz8KPgo+SW50ZXJmYWNlIGNoYW5nZWQgYnV0IGFsbCBrbm93biB1
c2VycyBhcmUgc3RpbGwgd29ya2luZywgcmlnaHQ/ICJCcmVhayIKPm1lYW5zIHNvbWV0aGluZyBk
b2VzIG5vdCB3b3JrLCBzb21ldGhpbmcgaXMgYWZmZWN0ZWQuIAoKSG1tLiBJIHRob3VnaHQgeW91
IHdlcmUgcmVmZXJyaW5nIHRvIHRoZSBEVFMgd2FybmluZ3MgKGZvciBvbGQgRFRTKSB0aGF0IGNv
bWUgb3V0IG9mIHRoZXNlIGNoYW5nZXMuIEJ1dCBmb3Iga2VybmVsIEFCSSwgeWVzIHRoZXJlIGlz
IG5vIGJyZWFrYWdlLgoKU29ycnkgZm9yIHRoZSBjb25mdXNpb24uCgotIE1hbmkKCj4gSSBtaWdo
dCBiZSBtaXNzaW5nCj5oZXJlIHNvbWV0aGluZywgb2YgY291cnNlLCBidXQgSSBzaW1wbHkgZG8g
bm90IHNlZSBhbnkgYWZmZWN0ZWQgdXNlciBoZXJlLgo+Cj5CZXN0IHJlZ2FyZHMsCj5Lcnp5c3p0
b2YKPgo+Cgrgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
