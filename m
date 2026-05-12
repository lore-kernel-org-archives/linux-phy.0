Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5BF6CD4855
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 09:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cocadnvQsFP1kVrij15XxjZFb8ExDaZ+KvbIjHNHW7Q=; b=xBEC1oPlv77GwO
	8f4njEzCUGhYnWugIJugDh21AZJtSIMFkmebFTm4lgK58PYsUWDL0wGvFHwGAeqVz0uHQTLMyGZV0
	/kzJDvfeSyE3FdZVnCs5KgHlpVVSDV7UqegxaAf5OcaZqXbp0Y8SknId9RQm6SviXnQPZEtxVDjBU
	iDia5aPaoYKsjXTJTTHPbro5+xfTwzGyImDQMUjXA1AyCkJx33RqxM8i0bQiMD5WO24qitYPBIj10
	G4cnyK3MDqe88QtWrIYIwaii3M4obZVSMfn2CCihv1mrGlCDi+zNBgzhMCKDWPq23N/J5JTTWFQib
	E1C0XEl3eVUiWpvJoZ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMjBy-0000000GEAP-00Oc;
	Tue, 12 May 2026 09:14:18 +0000
Received: from mail-dy1-x132c.google.com ([2607:f8b0:4864:20::132c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMjBv-0000000GE9l-4515
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 09:14:17 +0000
Received: by mail-dy1-x132c.google.com with SMTP id 5a478bee46e88-2ef2a1cc06dso9394992eec.0
        for <linux-phy@lists.infradead.org>; Tue, 12 May 2026 02:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778577255; cv=none;
        d=google.com; s=arc-20240605;
        b=NBBigTR3iZ3H91Duf7A0wp2fyU7mcS6TcbEq+m0mF1t6nzkW0nsi8XSL8sc+iuaR/j
         VKNrszH1Fyhyfe/1WEGBAWaMGfj7BHkZ3ijna2HAX3wsTjSd26KuWfQ+j0j+K8eJ9CPH
         jr92Zs4yuHm6HWDRHr1+HfNRi2KM+SZqNC7gQWIsTQd8mLcSnP0wAsKkpXxlpj1ihij0
         91u9NXhQlvbfBgFZZwZ7sxKh8+CtI6INiXYeP3KdYki7KuG831C5pSsgcsY7k+iWTCjq
         yQbnQKlxcWcPImUwhzd2ycYj1Jw0nXSKHVwWh1vTtxoabzYCy+iI8heIF/l3AbFqs4Ux
         9ncg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wLpXl5QYagjlZCBE/xNrRjwHqn2mCjrPyJN9NfCIzLY=;
        fh=zB/IDPnTMumCKVj/yyGk2y4/bpZgpNgK68DP2N9LChU=;
        b=FV5UGxWT2J6TSGH4ZBNqna1IiSIUvR4uQ2xVN7ip9D3Z10xkZrbXeAaxNWqGx6RV8s
         hkuDCBzX2eJu3/B2YjPdDytHvXiR5LMUMVeLmK2+drq91k9G+qOJ4zcLcefgdNLKvI+1
         c5DI3jQ749LmRhc6Iks69ClqpPLEKOwFGeFugD36bfk6f3124/GB4xxW+CwClxxYJocr
         Qp4lo3jYs0bYqcz+AcCBN86JHdfJ1DRLpos0MCSAqSzTg5BwQP7M0Fw3GhBCauT89N5v
         hFozSFZF7zvGbIxDGC92Fj8o9aMyuKjxwJMWQu9PihtRdkdc7bEBZ8CKFL9DzK6O/SKX
         s4xA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778577255; x=1779182055; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wLpXl5QYagjlZCBE/xNrRjwHqn2mCjrPyJN9NfCIzLY=;
        b=GWoZBgj+mbhkTysdy/gkmVj8MPKQbazUPnaa6COAJ/cROJunGlVIOrDLFTRfP5ihWl
         /qTSQvFmemCHfo7zAvm9Lx/nLXCFg6fHolfz6gu7hhDiJ2KyI+7mK4bGMteJFBvijDnA
         C3L+M9ZYQOHQLMxkKlSV19cYzQelao7pe7p+LfAvHncLRTLkL1prJIm/i0Y4rjen1jTF
         4r6CszoERoQTA13nGxBymAgcfdA1/GD6DVRN/BeeZvc50XMfc6OFvjgtRJlOPG3jsLVp
         qvQkMB2qIyUD7/6idfFSOqyxKosjiFfZjCpUmGz3MHRatbNOs537mqbz/TIfzhrK5DkT
         j3Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778577255; x=1779182055;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wLpXl5QYagjlZCBE/xNrRjwHqn2mCjrPyJN9NfCIzLY=;
        b=TRo7QV9y26UDT2A+8FXIMjfQUJT7JlWE76f3P6i6EjMvc7lTmDQjVDHneLVGGh/X4O
         eBHpiOkZ1cvxMrVQ2jE8sckf+K4m5bFx5jjT8Zkd5TjCnXZKaDZqHiHqwiYicq3LFDpZ
         B+tM5cEDORAr2QdOgAbhyxILqpRa1Tcp3nGDiUdyB0bErZE/zJ3/DmzJZWDwJYzlQD+t
         EP/oQ7LDKIe2uTCgkqlVe/RHrxUNWas4Wf3UlwU+idEZTe0B41SYTTThCo6voyR/OpL5
         SIXt5cf58JFnlA/5SPXdr5e0f0sGpraTSe96ZTXPmOJv6dx6PJjN7WQtt/IAhhEc5cpS
         ngvA==
X-Forwarded-Encrypted: i=1; AFNElJ8pVNDTqFykNi5eqrllfWPNx2RTKTOSsMh12tOTazIwroUrRSApgSdX9AGVpUOa7Yb9H3VdSWv8eJk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4cTp6i6W78UqsQO8lCWpaExGSaot6gU3cMlAY5qR4A7S7otjw
	jCqGiDWam174FX+k6GZKsczdZaVAXkM7Qqnd7MuNdaKKe2Xc1Ih7Ck6wUejfQ3p1IYL4IwdRaEq
	Wxs1eK2MbPujBTSavsBY31N1Y2vYfmkc=
X-Gm-Gg: Acq92OERoPx2TFq7Riico+SuKz8yYtmBgSLAyl96gJ5dPCfvLHiNaHqliNs6mFs+oj3
	oUTKe/FvjAMns/aWMrnRhIAVMhCrt1j2Vk+HjpA43GCaDG0kDvPwSy7OHN9b2bfuDXkwcE475hm
	7zOQYwgX1BbVyPZ/ri39NZdg7d5ilHHUjgtG6wuSwPEZY6QdV1GRnS7ab3cJxAWMrJpgudu0hTi
	TtL01DHA1dFRt7l5wNLXEZkiDfM26Ln5M924sep403tUqWhSIFPu8jg4YeDju4OEZmRfZsIrsXT
	3ZdW+zaw
X-Received: by 2002:a05:7300:6da2:b0:2c5:50fe:c795 with SMTP id
 5a478bee46e88-2fb4bffa2c9mr6829180eec.29.1778577254951; Tue, 12 May 2026
 02:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260511135703.62470-1-clamor95@gmail.com> <20260511135703.62470-3-clamor95@gmail.com>
 <agJ/T8nBGWEoblmd@nchen-desktop> <CAPVz0n173syW9rXy7Qt_N=mChe6WBRLvjRDypcJEC50hPL4OMQ@mail.gmail.com>
 <agLb6mgP45jHjvNt@nchen-desktop>
In-Reply-To: <agLb6mgP45jHjvNt@nchen-desktop>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 12 May 2026 12:14:03 +0300
X-Gm-Features: AVHnY4Ll14i93n_o4smARXMAmGSl_VWfrjFQ8sVQ8lXsJQoJqBmOJp3dhjRuJ_8
Message-ID: <CAPVz0n1Cgbik1_HvKO9i7ATr4OkS6yE_bwMw__yY_pNi0gQJNw@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init if
 bus is externally controlled
To: "Peter Chen (CIX)" <peter.chen@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_021416_022146_FDDB90CA 
X-CRM114-Status: GOOD (  33.54  )
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

0LLRgiwgMTIg0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTA6NTEgUGV0ZXIgQ2hlbiAoQ0lYKSA8
cGV0ZXIuY2hlbkBrZXJuZWwub3JnPiDQv9C40YjQtToKPgo+IE9uIDI2LTA1LTEyIDA5OjEzOjQw
LCBTdnlhdG9zbGF2IFJ5aGVsIHdyb3RlOgo+ID4g0LLRgiwgMTIg0YLRgNCw0LIuIDIwMjbigK/R
gC4g0L4gMDQ6MTYgUGV0ZXIgQ2hlbiAoQ0lYKSA8cGV0ZXIuY2hlbkBrZXJuZWwub3JnPiDQv9C4
0YjQtToKPiA+ID4KPiA+ID4gT24gMjYtMDUtMTEgMTY6NTY6NTcsIFN2eWF0b3NsYXYgUnloZWwg
d3JvdGU6Cj4gPiA+ID4gSWYgdGhlIFVTQiBjb250cm9sbGVyIGFuZCBQSFkgYXJlIGV4dGVybmFs
bHkgY29udHJvbGxlZCwgdGhlbiB0aGUKPiA+ID4gPiByZWdpc3RyYXRpb24gb2YgdGhlIGNvbnRy
b2xsZXIgYW5kIHRoZSBQSFkgaW5pdGlhbGl6YXRpb24gc2hvdWxkIGJlCj4gPiA+ID4gc2tpcHBl
ZCwgc2luY2UgdGhlc2UgY29uZmlndXJhdGlvbnMgbXVzdCBiZSBkb25lIGJ5IHRoZSBkZXZpY2Ug
dGhhdAo+ID4gPiA+IGNvbnRyb2xzIHRoZSBidXMgdG8gd29yayBjb3JyZWN0bHkuCj4gPiA+ID4K
PiA+ID4KPiA+ID4gSSBmaW5kIHlvdSBvbmx5IGNvbnRyb2wgVVNCIGNvbnRyb2xsZXIgZGV2aWNl
IGFkZCBhdCBQSFkgZHJpdmVyLCBtb3N0IG9mIFVTQiBkcml2ZXJzCj4gPiA+IGhhcyBQSFkgY29u
dHJvbCwgZm9yIGNoaXBpZGVhLCBpdCBoYXMgUEhZIGNvbnRyb2wgYXQgY29yZS5jLCB3b3VsZCBw
bGVhc2UgdHJ5IHRvCj4gPiA+IGFkYXB0IGZvciBpdD8KPiA+ID4KPiA+Cj4gPiBVc3VhbGx5IHll
cywgYnV0IHRoaXMgaXMgbm90IHRoZSBjYXNlIGZvciBUZWdyYSB1bmZvcnR1bmF0ZWx5LiBBcyB5
b3UKPiA+IGNhbiBzZWUgVGVncmEgc3BlY2lmaWMgc2VjdGlvbiBvZiBDaGlwaWRlYSBkcml2ZXIg
c3BlY2lmaWNhbGx5Cj4gPiBkZXNjcmliZXMgd2h5IGl0IGhhcyB0byBzZXQgUEhZIG1hbnVhbGx5
Lgo+ID4KPiA+IC8qCj4gPiAgKiBVU0IgY29udHJvbGxlciByZWdpc3RlcnMgc2hvdWxkbid0IGJl
IHRvdWNoZWQgYmVmb3JlIFBIWSBpcwo+ID4gICogaW5pdGlhbGl6ZWQsIG90aGVyd2lzZSBDUFUg
d2lsbCBoYW5nIGJlY2F1c2UgY2xvY2tzIGFyZSBnYXRlZC4KPiA+ICAqIFBIWSBkcml2ZXIgY29u
dHJvbHMgZ2F0aW5nIG9mIGludGVybmFsIFVTQiBjbG9ja3Mgb24gVGVncmEuCj4gPiAgKi8KPiA+
Cj4gPiBTbyBpbiBvcmRlciB0byBwcm92aWRlIGNvcnJlY3Qgd29yayBvZiBVU0Igd2hlbiBzZXQg
YnkgYW4gZXh0ZXJuYWwKPiA+IGRldmljZSwgYm90aCBQSFkgYW5kIGNvbnRyb2xsZXIgaW5pdC9h
ZGQgbXVzdCBiZSBza2lwcGVkLgo+Cj4gWW91IGNvdWxkIGNhbGwgZ2VuZXJpYyBQSFkgQVBJcyBh
dCBjaV9oZHJjX3RlZ3JhLmMsIGFmdGVyIFBIWSBpbml0IG9yIHBvd2VyIG9uLAo+IGNhbGwgY29u
dHJvbGxlciBpbml0aWFsaXphdGlvbi4KPgoKQW5kIHdoYXQgaXQgd2lsbCBnaXZlPyBNb2RlbSB1
c2VkIGluIFRlZ3JhIGRldmljZXMgZXhwb3NlcyBpdHMgb3V0cHV0CmFzIFVTQiBkZXZpY2Ugb24g
YW4gSFNJQyBsaW5lLiBBdCB0aGUgc2FtZSB0aW1lIG1vZGVtIHJlcXVpcmVzIGEKcHJlY2lzZSBj
b250cm9sIHdoZW4gVVNCIHNob3VsZCBiZSByZWdpc3RlcmVkLCB0byBiZSBhYmxlIHRvIHJlZ2lz
dGVyCmFuZCB1bnJlZ2lzdGVyIGl0LiBUaGlzIGNhbm5vdCBiZSBkb25lIGJ5IGxpbmtpbmcgbW9k
ZW0ncyBwaHkgdG8gdXNiCmNvbnRyb2xsZXIsIHF1aXRlIHRoZSBvcHBvc2l0ZSwgY29udHJvbGxl
ciBtdXN0IGJlIGxpbmtlZCB0byBtb2RlbSdzCnBoeS4KCj4gPgo+ID4gPiBQZXRlcgo+ID4gPgo+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFN2eWF0b3NsYXYgUnloZWwgPGNsYW1vcjk1QGdtYWlsLmNv
bT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy91c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdy
YS5jIHwgMzYgKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ID4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4gPiA+ID4KPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy91c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdyYS5jIGIvZHJpdmVy
cy91c2IvY2hpcGlkZWEvY2lfaGRyY190ZWdyYS5jCj4gPiA+ID4gaW5kZXggMzcyNzg4ZjBmOTcw
Li41OTMzOTBhODE4ZDEgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy91c2IvY2hpcGlkZWEv
Y2lfaGRyY190ZWdyYS5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy91c2IvY2hpcGlkZWEvY2lfaGRy
Y190ZWdyYS5jCj4gPiA+ID4gQEAgLTMyLDYgKzMyLDcgQEAgc3RydWN0IHRlZ3JhX3VzYiB7Cj4g
PiA+ID4gICAgICAgc3RydWN0IGNsayAqY2xrOwo+ID4gPiA+Cj4gPiA+ID4gICAgICAgYm9vbCBu
ZWVkc19kb3VibGVfcmVzZXQ7Cj4gPiA+ID4gKyAgICAgYm9vbCBleHRlcm5hbGx5X2NvbnRyb2xs
ZWQ7Cj4gPiA+ID4gIH07Cj4gPiA+ID4KPiA+ID4gPiAgc3RydWN0IHRlZ3JhX3VzYl9zb2NfaW5m
byB7Cj4gPiA+ID4gQEAgLTMxMiwyMCArMzEzLDI1IEBAIHN0YXRpYyBpbnQgdGVncmFfdXNiX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiA+ID4gICAgICAgaWYgKGRldmlj
ZV9wcm9wZXJ0eV9wcmVzZW50KCZwZGV2LT5kZXYsICJudmlkaWEsbmVlZHMtZG91YmxlLXJlc2V0
IikpCj4gPiA+ID4gICAgICAgICAgICAgICB1c2ItPm5lZWRzX2RvdWJsZV9yZXNldCA9IHRydWU7
Cj4gPiA+ID4KPiA+ID4gPiArICAgICBpZiAoZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoJnBkZXYt
PmRldiwgIm52aWRpYSxleHRlcm5hbC1jb250cm9sIikpCj4gPiA+ID4gKyAgICAgICAgICAgICB1
c2ItPmV4dGVybmFsbHlfY29udHJvbGxlZCA9IHRydWU7Cj4gPiA+ID4gKwo+ID4gPiA+ICAgICAg
IGVyciA9IHRlZ3JhX3VzYl9yZXNldF9jb250cm9sbGVyKCZwZGV2LT5kZXYpOwo+ID4gPiA+ICAg
ICAgIGlmIChlcnIpIHsKPiA+ID4gPiAgICAgICAgICAgICAgIGRldl9lcnJfcHJvYmUoJnBkZXYt
PmRldiwgZXJyLCAiZmFpbGVkIHRvIHJlc2V0IGNvbnRyb2xsZXIiKTsKPiA+ID4gPiAgICAgICAg
ICAgICAgIGdvdG8gZmFpbF9wb3dlcl9vZmY7Cj4gPiA+ID4gICAgICAgfQo+ID4gPiA+Cj4gPiA+
ID4gLSAgICAgLyoKPiA+ID4gPiAtICAgICAgKiBVU0IgY29udHJvbGxlciByZWdpc3RlcnMgc2hv
dWxkbid0IGJlIHRvdWNoZWQgYmVmb3JlIFBIWSBpcwo+ID4gPiA+IC0gICAgICAqIGluaXRpYWxp
emVkLCBvdGhlcndpc2UgQ1BVIHdpbGwgaGFuZyBiZWNhdXNlIGNsb2NrcyBhcmUgZ2F0ZWQuCj4g
PiA+ID4gLSAgICAgICogUEhZIGRyaXZlciBjb250cm9scyBnYXRpbmcgb2YgaW50ZXJuYWwgVVNC
IGNsb2NrcyBvbiBUZWdyYS4KPiA+ID4gPiAtICAgICAgKi8KPiA+ID4gPiAtICAgICBlcnIgPSB1
c2JfcGh5X2luaXQodXNiLT5waHkpOwo+ID4gPiA+IC0gICAgIGlmIChlcnIpCj4gPiA+ID4gLSAg
ICAgICAgICAgICBnb3RvIGZhaWxfcG93ZXJfb2ZmOwo+ID4gPiA+ICsgICAgIGlmICghdXNiLT5l
eHRlcm5hbGx5X2NvbnRyb2xsZWQpIHsKPiA+ID4gPiArICAgICAgICAgICAgIC8qCj4gPiA+ID4g
KyAgICAgICAgICAgICAgKiBVU0IgY29udHJvbGxlciByZWdpc3RlcnMgc2hvdWxkbid0IGJlIHRv
dWNoZWQgYmVmb3JlIFBIWSBpcwo+ID4gPiA+ICsgICAgICAgICAgICAgICogaW5pdGlhbGl6ZWQs
IG90aGVyd2lzZSBDUFUgd2lsbCBoYW5nIGJlY2F1c2UgY2xvY2tzIGFyZSBnYXRlZC4KPiA+ID4g
PiArICAgICAgICAgICAgICAqIFBIWSBkcml2ZXIgY29udHJvbHMgZ2F0aW5nIG9mIGludGVybmFs
IFVTQiBjbG9ja3Mgb24gVGVncmEuCj4gPiA+ID4gKyAgICAgICAgICAgICAgKi8KPiA+ID4gPiAr
ICAgICAgICAgICAgIGVyciA9IHVzYl9waHlfaW5pdCh1c2ItPnBoeSk7Cj4gPiA+ID4gKyAgICAg
ICAgICAgICBpZiAoZXJyKQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIGZhaWxf
cG93ZXJfb2ZmOwo+ID4gPiA+ICsgICAgIH0KPiA+ID4gPgo+ID4gPiA+ICAgICAgIC8qIHNldHVw
IGFuZCByZWdpc3RlciBDaGlwSWRlYSBIRFJDIGRldmljZSAqLwo+ID4gPiA+ICAgICAgIHVzYi0+
c29jID0gc29jOwo+ID4gPiA+IEBAIC0zNDIsMTIgKzM0OCwxNCBAQCBzdGF0aWMgaW50IHRlZ3Jh
X3VzYl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+ICAgICAgIGlm
IChvZl91c2JfZ2V0X3BoeV9tb2RlKHBkZXYtPmRldi5vZl9ub2RlKSA9PSBVU0JQSFlfSU5URVJG
QUNFX01PREVfVUxQSSkKPiA+ID4gPiAgICAgICAgICAgICAgIHVzYi0+ZGF0YS5mbGFncyAmPSB+
Q0lfSERSQ19TVVBQT1JUU19SVU5USU1FX1BNOwo+ID4gPiA+Cj4gPiA+ID4gLSAgICAgdXNiLT5k
ZXYgPSBjaV9oZHJjX2FkZF9kZXZpY2UoJnBkZXYtPmRldiwgcGRldi0+cmVzb3VyY2UsCj4gPiA+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGRldi0+bnVtX3Jlc291cmNl
cywgJnVzYi0+ZGF0YSk7Cj4gPiA+ID4gLSAgICAgaWYgKElTX0VSUih1c2ItPmRldikpIHsKPiA+
ID4gPiAtICAgICAgICAgICAgIGVyciA9IGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VS
Uih1c2ItPmRldiksCj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJm
YWlsZWQgdG8gYWRkIEhEUkMgZGV2aWNlIik7Cj4gPiA+ID4gLSAgICAgICAgICAgICBnb3RvIHBo
eV9zaHV0ZG93bjsKPiA+ID4gPiArICAgICBpZiAoIXVzYi0+ZXh0ZXJuYWxseV9jb250cm9sbGVk
KSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICB1c2ItPmRldiA9IGNpX2hkcmNfYWRkX2RldmljZSgm
cGRldi0+ZGV2LCBwZGV2LT5yZXNvdXJjZSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHBkZXYtPm51bV9yZXNvdXJjZXMsICZ1c2ItPmRhdGEpOwo+
ID4gPiA+ICsgICAgICAgICAgICAgaWYgKElTX0VSUih1c2ItPmRldikpIHsKPiA+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgZXJyID0gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJS
KHVzYi0+ZGV2KSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAiZmFpbGVkIHRvIGFkZCBIRFJDIGRldmljZSIpOwo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBnb3RvIHBoeV9zaHV0ZG93bjsKPiA+ID4gPiArICAgICAgICAgICAgIH0KPiA+ID4g
PiAgICAgICB9Cj4gPiA+ID4KPiA+ID4gPiAgICAgICByZXR1cm4gMDsKPiA+ID4gPiAtLQo+ID4g
PiA+IDIuNTEuMAo+ID4gPiA+Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+Cj4gPiA+IEJlc3QgcmVnYXJk
cywKPiA+ID4gUGV0ZXIKPgo+IC0tCj4KPiBCZXN0IHJlZ2FyZHMsCj4gUGV0ZXIKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
