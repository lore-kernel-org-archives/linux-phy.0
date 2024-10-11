Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68831D0EE12
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 16:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBO3q8Tl2S6ktUFfEzmTTQBz9Ha3UIofVfH0Mdr4HZs=; b=GalNaiM8I9KyiH
	U0J4acoOSiexup0NxUgdHwWdR2XiznuMDM/RlyYwBYCJojptwbjjG+pO7AyTd0F3Ioz+b0gzJMS/A
	chPTQZio9h5vEvFlghmdqeyEojcWkTOxqOxgY+VeoIWHdro8ljyxmDZD5wRgU2ndq+Jc5IfRH2Rk5
	MjQVtgXB816OhbwIg9/MmNBILsiw+gduD7k5BoKNNePhJEdi3vEvpGa/FBcYBUoXMuZrdUuTgzZtd
	e+NQ/9iIm54qo0cr+qyD9qny6hrXBTjC7bfA2J6XmjEuWq6k/zCTAUslNy641SBJXpKaGx5pLM6t6
	Nj0LP3UVw5h3HS+fm4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szI3g-0000000Gtbz-0Jym;
	Fri, 11 Oct 2024 16:00:04 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szHvr-0000000GsYp-281q
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 15:52:00 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-71df4620966so1972459b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Oct 2024 08:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728661918; x=1729266718; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6UJ5GfwpBYKShxF2d6ibtYkVLCghlD4ehemd7bRZPRs=;
        b=Zvs5Pyc2ulr9exp/k3DNFOIF4DQFpygahs6/i2iwVO9hD/vTKUAfh02a2cD8rMgVka
         wtDFrfZYk7fgcZTQKg7zRrfwPbMdBQoLoJzl5EScGhhajzaalypwiPdOzA2ONrmut/Gi
         WW5oTNo9tbNsN9NPp5aeT4ydcRpoQL+iknTeyUWWMhi8eDrTdgnAnVQ0l0QR2EbjJ2aa
         u6MxWddoV/OmS3yIVvaDTUcLGxbO+xhYG4b6bJgQIkeHun2ArOeqHztM8R/xleav+yQ9
         XL5gyCpLhkM11S5RiEzvLcijtMQOuf21DcqhGy6YRl2U8yn/iao2aopDZ43zxCET4tNa
         8JIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728661918; x=1729266718;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6UJ5GfwpBYKShxF2d6ibtYkVLCghlD4ehemd7bRZPRs=;
        b=oX4tnFXQfVLgl+YcO5yxnTXKIHq1t3v9bc450yibvHxVlKkC9UgOW9uYXlGgVgmxjE
         9VLMfdve3kfyedyHp7rvOsKlV6vpyyeU941AlLyMTOFzz1GwIOtncJXO+cABWTRzt+wq
         wzrV9hkkle08Mp28bx45Tg0wboUiDuLhV6CggGSg6Fw/F4aTqAR2uUG2pePN7r9qwDNs
         13s63X5g8IwxqZ2n7cDcu0qf0mHh+bnt8XtWmjPXXGjOQse5Pofa/ohYDmrbfJACCDWk
         tCVaSg2Ew+ZsYmOhKSq8RTPg8uVpILbtN5rtxJS27qQWh/nrkTrNlFiiT1kJa4zowCm6
         8XOg==
X-Forwarded-Encrypted: i=1; AJvYcCXe/GL7+Dl+Cgduzk3aWvpd5aS8YY0tiSgYD4wf9COExGfWSEvK7sSabJLQddOjLS2YNR70/UpWgnY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgBfIlAelGbrccZ4a7GuB3iXjeuOxsFfiEJ5iRCWGTfOmI7yTY
	wkNB7awtYsQXuiYxfUtgPkPZznz96BYQktaAq76tXxVSJ1pePzWMslQQb/7sAA==
X-Google-Smtp-Source: AGHT+IHXvP/nKJu6nisjXBaSGstPi/m/Ba9L/ypRCiSYdHmZq63iI93hDiL09yEy4Wy2zLj7/L28Xg==
X-Received: by 2002:a05:6a00:2d9b:b0:714:1ca1:7134 with SMTP id d2e1a72fcca58-71e37f4eefdmr4698954b3a.18.1728661918079;
        Fri, 11 Oct 2024 08:51:58 -0700 (PDT)
Received: from [127.0.0.1] ([36.255.17.48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e3ad716d4sm1248518b3a.200.2024.10.11.08.51.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2024 08:51:57 -0700 (PDT)
Date: Fri, 11 Oct 2024 21:21:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Qiang Yu <quic_qianyu@quicinc.com>
CC: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com,
 dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v6_3/8=5D_dt-bindings=3A_PCI=3A_qc?=
 =?US-ASCII?Q?om=2Cpcie-x1e80100=3A_Add_=27global=27_interrupt?=
User-Agent: K-9 Mail for Android
In-Reply-To: <3d1d0822-da66-44c8-a328-69804210123c@kernel.org>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com> <20241011104142.1181773-4-quic_qianyu@quicinc.com> <eyxkgcmgv5mejjifzsevkzm2yqdknilizrvhwryd745pkfalgk@kau4lq4cd7g3> <4802B12B-BAC1-4E99-BDFE-A2340F4A8F24@linaro.org> <3d1d0822-da66-44c8-a328-69804210123c@kernel.org>
Message-ID: <65B34B14-76C3-491D-8A58-6D0887889018@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_085159_574048_FBEAAFBB 
X-CRM114-Status: GOOD (  12.54  )
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

CgpPbiBPY3RvYmVyIDExLCAyMDI0IDk6MTQ6MzEgUE0gR01UKzA1OjMwLCBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+T24gMTEvMTAvMjAyNCAxNzo0MiwgTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+PiAKPj4gCj4+IE9uIE9jdG9iZXIgMTEsIDIwMjQg
ODowMzo1OCBQTSBHTVQrMDU6MzAsIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9y
Zz4gd3JvdGU6Cj4+PiBPbiBGcmksIE9jdCAxMSwgMjAyNCBhdCAwMzo0MTozN0FNIC0wNzAwLCBR
aWFuZyBZdSB3cm90ZToKPj4+PiBEb2N1bWVudCAnZ2xvYmFsJyBTUEkgaW50ZXJydXB0IGFsb25n
IHdpdGggdGhlIGV4aXN0aW5nIE1TSSBpbnRlcnJ1cHRzIHNvCj4+Pj4gdGhhdCBRQ09NIFBDSWUg
UkMgZHJpdmVyIGNhbiBtYWtlIHVzZSBvZiBpdCB0byBnZXQgZXZlbnRzIHN1Y2ggYXMgUENJZQo+
Pj4+IGxpbmsgc3BlY2lmaWMgZXZlbnRzLCBzYWZldHkgZXZlbnRzLCBldGMuCj4+Pgo+Pj4gRGVz
Y3JpYmUgdGhlIGhhcmR3YXJlLCBub3Qgd2hhdCB0aGUgZHJpdmVyIHdpbGwgZG8uCj4+Pgo+Pj4+
Cj4+Pj4gVGhvdWdoIGFkZGluZyBhIG5ldyBpbnRlcnJ1cHQgd2lsbCBicmVhayB0aGUgQUJJLCBp
dCBpcyByZXF1aXJlZCB0bwo+Pj4+IGFjY3VyYXRlbHkgZGVzY3JpYmUgdGhlIGhhcmR3YXJlLgo+
Pj4KPj4+IFRoYXQncyBwb29yIHJlYXNvbi4gSGFyZHdhcmUgd2FzIGRlc2NyaWJlZCBhbmQgbWlz
c2luZyBvcHRpb25hbCBwaWVjZQo+Pj4gKGJlY2F1c2UgYWNjb3JkaW5nIHRvIHlvdXIgZGVzY3Jp
cHRpb24gYWJvdmUgZXZlcnl0aGluZyB3YXMgd29ya2luZwo+Pj4gZmluZSkgaXMgbm90IG5lZWRl
ZCB0byBicmVhayBBQkkuCj4+Pgo+PiAKPj4gSGFyZHdhcmUgd2FzIGRlc2NyaWJlZCBidXQgbm90
IGNvbXBsZXRlbHkuICdnbG9iYWwnIElSUSBsZXQncyB0aGUgY29udHJvbGxlciBkcml2ZXIgdG8g
aGFuZGxlIFBDSWUgbGluayBzcGVjaWZpYyBldmVudHMgbGlrZSBMaW5rIHVwLCBMaW5rIGRvd24g
ZXRjLi4uIFRoZXkgaW1wcm92ZSB1c2VyIGV4cGVyaWVuY2UgbGlrZSB0aGUgZHJpdmVyIGNhbiB1
c2UgdGhvc2UgaW50ZXJydXB0cyB0byBzdGFydCBidXMgZW51bWVyYXRpb24gb24gaXRzIG93bi4g
U28gYnJlYWtpbmcgdGhlIEFCSSBmb3IgZ29vZCBpbiB0aGlzIGNhc2UuCj4+IAo+Pj4gU29ycnks
IGlmIHlvdXIgZHJpdmVyIGNoYW5nZXMgdGhlIEFCSSBmb3IgdGhpcyBwb29yIHJlYXNvbi4KPj4+
Cj4+IAo+PiBJcyB0aGUgYWJvdmUgcmVhc29uaW5nIHN1ZmZpY2llbnQ/IAo+Cj5JIHRyaWVkIHRv
IGxvb2sgZm9yIGNvcnJlc3BvbmRpbmcgZHJpdmVyIGNoYW5nZSwgYnV0IGNvdWxkIG5vdCwgc28g
bWF5YmUKPnRoZXJlIGlzIG5vIEFCSSBicmVhayBpbiB0aGUgZmlyc3QgcGxhY2UuCgpIZXJlIGl0
IGlzOgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9y
dmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9NDU4MTQwM2Y2NzkyOWQwMmMxOTdjYjE4N2M0ZTFl
ODExYzllNzYyYQoKIEFib3ZlIGV4cGxhbmF0aW9uIGlzIGdvb2QsIGJ1dAo+c3RpbGwgZmVlbHMg
bGlrZSBpbXByb3ZlbWVudCBhbmQgZGV2aWNlIGNvdWxkIHdvcmsgd2l0aG91dCBnbG9iYWwgY2xv
Y2suCj4KCkl0IGlzIGNlcnRhaW5seSBhbiBpbXByb3ZlbWVudCBidXQgcHJvdmlkZXMgYSBuaWNl
IHVzZXIgZXhwZXJpZW5jZSBhcyB0aGUgZGV2aWNlcyB3aWxsIGJlIGVudW1lcmF0ZWQgd2hlbiB0
aGV5IGdldCBwbHVnZ2VkIGludG8gdGhlIHNsb3QgKGxpa2UgaG90cGx1ZykuIE90aGVyd2lzZSwg
dXNlcnMgaGF2ZSB0byByZXNjYW4gdGhlIGJ1cyBldmVyeSB0aW1lIHRoZXkgcGx1ZyBhIGRldmlj
ZS4gQWxzbyB3aGVuIHRoZSBkZXZpY2UgZ2V0cyByZW1vdmVkLCBkcml2ZXIgY291bGQgcmV0cmFp
biB0aGUgbGluayBpZiBsaW5rIHdlbnQgdG8gYSBiYWQgc3RhdGUuIE90aGVyd2lzZSwgbGluayB3
aWxsIHJlbWFpbiBpbiB0aGUgYnJva2VuIHN0YXRlIHJlcXVpcmluZyB1c2VycyB0byB1bmxvYWQv
bG9hZCB0aGUgZHJpdmVyIGFnYWluLgoKLSBNYW5pCgrgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
