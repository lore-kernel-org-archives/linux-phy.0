Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB265CF9C69
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 14:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAMC3Lu3rZvHGK05lbi6pZN5nVMuPE9r7Qbpzs24sV8=; b=sd9kI68KYyeIWP
	VKfOKJHPY3iJm6CUTOXuR91mP7dI5xVb3yonGsMMCxlzAQ9NQlggGiM2EYmRmCez23FU5dd5KxZ86
	r/GyhgyvDW9aHgYFdGURsTuj6jUYamKe8eLV0l4Nna9nrh/oXJ66fqbzRh+vGM0Tski/Kxu+Xba32
	y7zyBf+Om6G5zOhquyo1VjPC7QxltOXX/qLU4cMqf3N1D0G+VZZvV4ZBsYPifxeYXBZQLlswWL737
	ON6522qmtVIwJ6k8Cf2qg5wDY0h15xtvcZ6SwXft3u//QrrmxfZDjGH1b9DdCQewkt/OzTgfMejfQ
	A7baLHdmLaUvDElJQaPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssjc8-0000000HKAb-2UIP;
	Mon, 23 Sep 2024 14:00:32 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssjc6-0000000HKAC-0SbM
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 14:00:31 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-42cde6b5094so39822105e9.3
        for <linux-phy@lists.infradead.org>; Mon, 23 Sep 2024 07:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727100027; x=1727704827; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u8SazwJrWtDCMj4dPgSxXhKdNI4ps1CxW8kM2uCcbug=;
        b=Ng2QtdGsKcEOX1TnzLmgNMpQ5RV45xo9Eirqp0vaO9pN58/6hxsArbN7bVuTAZzzLi
         8pcUZQ+IXjmdjb2/s9CtFtVGUsaYtlQKPpgXV+anp67BOatF0IoWk17u1/0xcPlCAREv
         N73RKLk0+qw7sXNTfT5cHyJpRGywsDn9twzDKp1eWGJFcNEy20EGFF5nKNpbycllDfzu
         oN+sAN5yb/bCiyqrtOFLapJB7WVzDJAp4jg4cW5+qn+L8o7498wuujQIRDXk37jEpk9/
         cDztEFdjnln4izw7zWvUL72sxuCF2evSn7Uo29E/CNSuWxUurp9arjHZVFPCEqWrftSz
         FGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727100027; x=1727704827;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u8SazwJrWtDCMj4dPgSxXhKdNI4ps1CxW8kM2uCcbug=;
        b=MzXYxTYDKu3SVpGpkw6I8uMIS7W78G87fTMI15dBQ9FAqpS9pZhAjFwycBVIZRuMtF
         P/a4w4gD1rT0kye50BrJa7UBHHBkI1xRJZ81ntRl3MUerOkfaSX1nPfhbkACKrdseoFD
         v2SwrRUyXq4+MdMNAvVaosR9g9bV55G1msSonJ7OOl8o29AqqHE/2xoYGZucLKwCSQSu
         tUsUn1CSnhleilrMj7BleZNV900V+AjqT8jJKmZnZQKojMeyk/wjUQHigMDte1IrQ/rr
         2jo33o+fp+spMZ9TgZFNvk8P1DXKEzsftZ9XuqfL5o1/OgxIcYkXxyS/5IyJqdyiRPik
         8T9A==
X-Forwarded-Encrypted: i=1; AJvYcCXwEyhEBPAzjGvb+4P6zOV6m3sUTiwCQsCHQZ18zpsEur30d5bZDhkSFje6Y+81zpcTY5cBT+ECoz8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwtfsaoPl/MRNWxUVbnOGzUGiPcRdCGITAcpBXZZNCvkiyf/imV
	s5VFGV3cknPxMWQNkc3vCM2A9guHj89RnI/Lcw0gn69KslzcriSVC9qQsy8Tdg==
X-Google-Smtp-Source: AGHT+IGd4Jgcl/E/mParjkXqLeUflk39tqcsXEMYyEzYrJhf0HeCTnOsmZo3zvuU483VWuoxuNNxvw==
X-Received: by 2002:a05:600c:4706:b0:42c:c073:412b with SMTP id 5b1f17b1804b1-42e7adb1f0amr80190915e9.30.1727100027393;
        Mon, 23 Sep 2024 07:00:27 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e7affcc6esm103072955e9.47.2024.09.23.07.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 07:00:26 -0700 (PDT)
Date: Mon, 23 Sep 2024 16:00:25 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 5/6] PCI: qcom: Add new cfg and ops without config_sid
 callback for X1E80100
Message-ID: <20240923140025.4qhguusbhiajf3xa@thinkpad>
References: <20240923125713.3411487-1-quic_qianyu@quicinc.com>
 <20240923125713.3411487-6-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923125713.3411487-6-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_070030_210479_E7EC7421 
X-CRM114-Status: GOOD (  20.83  )
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

T24gTW9uLCBTZXAgMjMsIDIwMjQgYXQgMDU6NTc6MTJBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
CgpObyBuZWVkIHRvIG1lbnRpb24gdGhlIG9wcy9jZmcgaW4gc3ViamVjdC4gSXQgaXMgYSBkZXRh
aWwgZm9yIHBhdGNoIGRlc2NyaXB0aW9uLgpTbyB1c2U6CgoiUENJOiBxY29tOiBBZGQgc3VwcG9y
dCBmb3IgWDFFODAxMDAgU29DIgoKQWxzbyBhZGQgc29tZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUg
SVAgY2FwYWJpbGl0eS4gTGlrZSB3aGF0IHNwZWVkL2dlbiB2ZXJzaW9uCml0IHN1cHBvcnRzLCBs
YW5lIHdpZHRoIGV0Yy4uLgoKPiBDdXJyZW50bHkgdGhlIG9wc18xXzlfMCB3aGljaCBpcyBiZWlu
ZyB1c2VkIGZvciBYMUU4MDEwMCBoYXMgY29uZmlnX3NpZAo+IGNhbGxiYWNrIHRvIGNvbmZpZyBC
REYgdG8gU0lEIHRhYmxlLiBIb3dldmVyLCB0aGlzIGNhbGxiYWNrIGlzIG5vdAo+IHJlcXVpcmVk
IGZvciBYMUU4MDEwMCBiZWNhdXNlIGl0IGhhcyBzbW11djMgc3VwcG9ydCBhbmQgQkRGIHRvIFNJ
RCB0YWJsZQo+IHdpbGwgYmUgbm90IHByZXNlbnQuCj4gCj4gSGVuY2UgaW50cm9kdWNlIGNmZ18x
XzM4XzAgYW5kIG9wc18xXzM4XzAgd2l0aCBjb25maWdfc2lkIGNhbGxiYWNrIGJlaW5nCj4gTlVM
TCBzaW5jZSBYMUU4MDEwMCBoYXMgSVAgdmVyc2lvbiAxLjM4LjAuCj4gCgpJJ2QgcmV3cml0ZSB0
aGUgbGFzdCBzZW50ZW5jZSBhcyBiZWxvdzoKCiJIZW5jZSBhZGQgc3VwcG9ydCBmb3IgWDFFODAx
MDAgYnkgaW50cm9kdWNpbmcgYSBuZXcgb3BzIGFuZCBjZmcgc3RydWN0dXJlcyB0aGF0CmRvbid0
IHJlcXVpcmUgdGhlIGNvbmZpZ19zaWQgY2FsbGJhY2suIFRoaXMgY291bGQgYmUgcmV1c2VkIGJ5
IHRoZSBmdXR1cmUKcGxhdGZvcm1zIGJhc2VkIG9uIFNNTVV2My4iCgotIE1hbmkKCj4gU2lnbmVk
LW9mZi1ieTogUWlhbmcgWXUgPHF1aWNfcWlhbnl1QHF1aWNpbmMuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyB8IDE2ICsrKysrKysrKysrKysrKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+IGluZGV4IDg4YTk4YmU5MzBlMy4u
NTZiYThiYzcyZjc4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtcWNvbS5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMK
PiBAQCAtMTM2Nyw2ICsxMzY3LDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX29w
cyBvcHNfMl85XzAgPSB7Cj4gIAkubHRzc21fZW5hYmxlID0gcWNvbV9wY2llXzJfM18yX2x0c3Nt
X2VuYWJsZSwKPiAgfTsKPiAgCj4gKy8qIFFjb20gSVAgcmV2LjogMS4zOC4wICovCj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX29wcyBvcHNfMV8zOF8wID0gewo+ICsJLmdldF9yZXNv
dXJjZXMgPSBxY29tX3BjaWVfZ2V0X3Jlc291cmNlc18yXzdfMCwKPiArCS5pbml0ID0gcWNvbV9w
Y2llX2luaXRfMl83XzAsCj4gKwkucG9zdF9pbml0ID0gcWNvbV9wY2llX3Bvc3RfaW5pdF8yXzdf
MCwKPiArCS5ob3N0X3Bvc3RfaW5pdCA9IHFjb21fcGNpZV9ob3N0X3Bvc3RfaW5pdF8yXzdfMCwK
PiArCS5kZWluaXQgPSBxY29tX3BjaWVfZGVpbml0XzJfN18wLAo+ICsJLmx0c3NtX2VuYWJsZSA9
IHFjb21fcGNpZV8yXzNfMl9sdHNzbV9lbmFibGUsCj4gK307Cj4gKwo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IHFjb21fcGNpZV9jZmcgY2ZnXzFfMF8wID0gewo+ICAJLm9wcyA9ICZvcHNfMV8wXzAs
Cj4gIH07Cj4gQEAgLTE0MDksNiArMTQxOSwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21f
cGNpZV9jZmcgY2ZnX3NjODI4MHhwID0gewo+ICAJLm5vX2wwcyA9IHRydWUsCj4gIH07Cj4gIAo+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFjb21fcGNpZV9jZmcgY2ZnXzFfMzhfMCA9IHsKPiArCS5v
cHMgPSAmb3BzXzFfMzhfMCwKPiArfTsKPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNp
ZV9vcHMgZHdfcGNpZV9vcHMgPSB7Cj4gIAkubGlua191cCA9IHFjb21fcGNpZV9saW5rX3VwLAo+
ICAJLnN0YXJ0X2xpbmsgPSBxY29tX3BjaWVfc3RhcnRfbGluaywKPiBAQCAtMTgzNyw3ICsxODUx
LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcWNvbV9wY2llX21hdGNoW10g
PSB7Cj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1zbTg0NTAtcGNpZTAiLCAuZGF0YSA9
ICZjZmdfMV85XzAgfSwKPiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXNtODQ1MC1wY2ll
MSIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUt
c204NTUwIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0sCj4gLQl7IC5jb21wYXRpYmxlID0gInFjb20s
cGNpZS14MWU4MDEwMCIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+ICsJeyAuY29tcGF0aWJsZSA9
ICJxY29tLHBjaWUteDFlODAxMDAiLCAuZGF0YSA9ICZjZmdfMV8zOF8wIH0sCj4gIAl7IH0KPiAg
fTsKPiAgCj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
