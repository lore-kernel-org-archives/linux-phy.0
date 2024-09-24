Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CA48CF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 13:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kUqNUJ05nt/mb+eA5yOl3lSJVMZF/BSfO4aRBR436Y=; b=K7dgLfTyjfHsDY
	ol01cGN49+T5G9pcUuK6Ga2ooCpDL37K6WCOqBoYPxANK3+TMs6U+7ZSsxf5anY9gJiEBLwFPsmUN
	aNmF38pfrIt6DSC56bfOOwnCZfnjWiCGSk8ZF/Sk5ooS4a0RTcdo40KEOS0TPPDHxx3L4aHRPeBu5
	zrXkyMw2uQZ8QDE9CGwaXtBp/bEaWgkD60JHHveqTD8WJtmWeDaguJM03YySLMUdUG/cqx5bIxA/t
	OxX6wonNsgYJXexn3vX5wu/FJjY56Mb8iISYHUrN6/mh+VABwnYim2Eb5i5cAAOOpGct0dE6/F7GA
	IQvGu7HyR/7n7zqREV+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st5vw-00000002TWm-3mMD;
	Tue, 24 Sep 2024 13:50:28 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st5vt-00000002TWL-2gge
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 13:50:26 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5c26815e174so6992091a12.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 06:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727185823; x=1727790623; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U0y2FhLvJlmHV0mTv41RTPjAXO9B+KhA3TIpyOQoJGM=;
        b=XTMs8/VtTaw1lJCzDCnXUNVqamub/XKzTK1zRROgl7WmjntwUBwL6kK74rZ0rRL3gW
         vfZMMBEeFaRo6dw6ZilcH4/GhUqBLv05CyY46BzthVGVcB2XbZsNhOelrK78xnQ0u1jF
         J/TIzeYDXWnNe+hpq9nnFpAaPYyHSPjEWYpXnCCKHMeaNJ+Z+dAod6EtcEfUFmDRrYba
         MYZd0lquDt1cTd4RF4msRHCKxE1TiAsde2HmroEHRPeYDSb7Icfj/n06F0qXrEasz5jj
         jB7pYuZPvTy1TREfxKci/l49274K0NJkiRRk7+Kxo/celGkIEbaVJ/p37tft4WBmevfH
         kXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727185823; x=1727790623;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U0y2FhLvJlmHV0mTv41RTPjAXO9B+KhA3TIpyOQoJGM=;
        b=AesJbr+ZVcvUzyNCH9KMJO0GXCnjzlpDkoGUdtKOrw9ZoaJoFPRvexoSENkNVnnja2
         xWxQ16/z1/1g1xAWm6r8efJL9yg3vA3GaEVrqkNF1ZirbyxW8IzoDHZ4h3ynHqk67ZUg
         nE5JIZkKhD/RigSy4xHFCmarwgb+fc6tS2h2R+nwuKqvM02l808JhlG98P9CZ9pFdJwg
         MR2NO0ruaqgf1gAzHiZUEOUVZ3UiiWBGcH6jlu4vmh0ICB2IgLircs/70ky74vTGsKl4
         5yb9CvcoZzZVn6OgRyUquJPuSD47C55J7BE3VVQXKT1R5pxigazFL81CU3uXLk8YsC63
         b6Mw==
X-Forwarded-Encrypted: i=1; AJvYcCXT+vCIS2+98NKMOf5Pr8pUBFniRaWcd4k76ZMBENCNsfAyZqG1MkVdQMkxAbj6nnKopiEwnUZN+GQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEAQOYMX1H2P0cioLARtKQnQgRqf/mrW3QV3jh6lpcmDA8y19Z
	lXJ0Mc9bSJ44+YDsO3eDgMZx9rM1Tp8axXIVpFX5XCLwEZsM00xC9UnMa8N6zQ==
X-Google-Smtp-Source: AGHT+IEyXFVN8yWlZBr2c0QmUeS9Pixk5O8tibvuF7nDhnrYoQ0QURy2zis3HJYVbJUApjUTxl05fQ==
X-Received: by 2002:a17:907:e615:b0:a8d:7046:a1bd with SMTP id a640c23a62f3a-a90d501ad10mr1301633766b.28.1727185822706;
        Tue, 24 Sep 2024 06:50:22 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93931340b5sm85768766b.190.2024.09.24.06.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 06:50:22 -0700 (PDT)
Date: Tue, 24 Sep 2024 15:50:21 +0200
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
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
Message-ID: <20240924135021.ybpyoahlpuvedma5@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240924101444.3933828-6-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_065025_712175_161B4D68 
X-CRM114-Status: GOOD (  23.50  )
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

T24gVHVlLCBTZXAgMjQsIDIwMjQgYXQgMDM6MTQ6NDNBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gWDFFODAxMDAgaGFzIFBDSWUgcG9ydHMgdGhhdCBzdXBwb3J0IHVwIHRvIEdlbjQgeDggYmFz
ZWQgb24gaGFyZHdhcmUgSVAKPiB2ZXJzaW9uIDEuMzguMC4KPiAKPiBDdXJyZW50bHkgdGhlIG9w
c18xXzlfMCB3aGljaCBpcyBiZWluZyB1c2VkIGZvciBYMUU4MDEwMCBoYXMgY29uZmlnX3NpZAo+
IGNhbGxiYWNrIHRvIGNvbmZpZyBCREYgdG8gU0lEIHRhYmxlLiBIb3dldmVyLCB0aGlzIGNhbGxi
YWNrIGlzIG5vdAo+IHJlcXVpcmVkIGZvciBYMUU4MDEwMCBiZWNhdXNlIGl0IGhhcyBzbW11djMg
c3VwcG9ydCBhbmQgQkRGIHRvIFNJRCB0YWJsZQo+IHdpbGwgYmUgbm90IHByZXNlbnQuCj4gCj4g
SGVuY2UgYWRkIHN1cHBvcnQgZm9yIFgxRTgwMTAwIGJ5IGludHJvZHVjaW5nIGEgbmV3IG9wcyBh
bmQgY2ZnIHN0cnVjdHVyZXMKPiB0aGF0IGRvbid0IHJlcXVpcmUgdGhlIGNvbmZpZ19zaWQgY2Fs
bGJhY2suIFRoaXMgY291bGQgYmUgcmV1c2VkIGJ5IHRoZQo+IGZ1dHVyZSBwbGF0Zm9ybXMgYmFz
ZWQgb24gU01NVXYzLgo+IAoKT29wcy4uLiBJIGNvbXBsZXRlbHkgb3Zlcmxvb2tlZCB0aGF0IHlv
dSBhcmUgbm90IGFkZGluZyB0aGUgU29DIHN1cHBvcnQgYnV0CmZpeGluZyB0aGUgZXhpc3Rpbmcg
b25lIDooIFNvcnJ5IGZvciBzdWdnZXN0aW5nIGEgY29tbWl0IG1lc3NhZ2UgdGhhdCBjaGFuZ2Vk
CnRoZSBjb250ZXh0LgoKRm9yIHRoaXMsIHlvdSBjYW4gaGF2ZSBzb21ldGhpbmcgbGlrZToKCiJQ
Q0k6IHFjb206IEZpeCB0aGUgb3BzIGZvciBYMUU4MDEwMCBTb0MKClgxRTgwMTAwIFNvQyBpcyBi
YXNlZCBvbiBTTU1VdjMsIGhlbmNlIGl0IGRvZXNuJ3QgbmVlZCB0aGUgQkRGMlNJRCBtYXBwaW5n
CnByZXNlbnQgaW4gdGhlIGV4aXN0aW5nIGNmZ18xXzlfMCBvcHMuIFRoaXMgaXMgZml4ZWQgYnkg
aW50cm9kdWNpbmcgbmV3IG9wcwonb3BzXzFfMzhfMCcgYW5kIGNmZyAnY2ZnXzFfMzhfMCcgc3Ry
dWN0dXJlcy4gVGhlc2UgYXJlIGV4YWN0bHkgc2FtZSBhcyB0aGUKMV85XzAgb25lcywgYnV0IHRo
ZXkgZG9uJ3QgaGF2ZSB0aGUgJ2NvbmZpZ19zaWQoKScgY2FsbGJhY2sgdGhhdCBoYW5kbGVzIHRo
ZQpCREYyU0lEIG1hcHBpbmcgaW4gdGhlIGhhcmR3YXJlLiBUaGVzZSBuZXcgc3RydWN0dXJlcyBj
b3VsZCBhbHNvIGJlIHVzZWQgYnkgdGhlCmZ1dHVyZSBTb0NzIG1ha2luZyB1c2Ugb2YgU01NVXYz
LiIKCi0gTWFuaQoKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2lu
Yy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIHwg
MTYgKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4g
aW5kZXggODhhOThiZTkzMGUzLi41NmJhOGJjNzJmNzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLXFjb20uYwo+IEBAIC0xMzY3LDYgKzEzNjcsMTYgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBxY29tX3BjaWVfb3BzIG9wc18yXzlfMCA9IHsKPiAgCS5sdHNzbV9lbmFibGUgPSBx
Y29tX3BjaWVfMl8zXzJfbHRzc21fZW5hYmxlLAo+ICB9Owo+ICAKPiArLyogUWNvbSBJUCByZXYu
OiAxLjM4LjAgKi8KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX3BjaWVfb3BzIG9wc18xXzM4
XzAgPSB7Cj4gKwkuZ2V0X3Jlc291cmNlcyA9IHFjb21fcGNpZV9nZXRfcmVzb3VyY2VzXzJfN18w
LAo+ICsJLmluaXQgPSBxY29tX3BjaWVfaW5pdF8yXzdfMCwKPiArCS5wb3N0X2luaXQgPSBxY29t
X3BjaWVfcG9zdF9pbml0XzJfN18wLAo+ICsJLmhvc3RfcG9zdF9pbml0ID0gcWNvbV9wY2llX2hv
c3RfcG9zdF9pbml0XzJfN18wLAo+ICsJLmRlaW5pdCA9IHFjb21fcGNpZV9kZWluaXRfMl83XzAs
Cj4gKwkubHRzc21fZW5hYmxlID0gcWNvbV9wY2llXzJfM18yX2x0c3NtX2VuYWJsZSwKPiArfTsK
PiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBjZmdfMV8wXzAgPSB7Cj4g
IAkub3BzID0gJm9wc18xXzBfMCwKPiAgfTsKPiBAQCAtMTQwOSw2ICsxNDE5LDEwIEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBjZmdfc2M4MjgweHAgPSB7Cj4gIAkubm9fbDBz
ID0gdHJ1ZSwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2NmZyBj
ZmdfMV8zOF8wID0gewo+ICsJLm9wcyA9ICZvcHNfMV8zOF8wLAo+ICt9Owo+ICsKPiAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkd19wY2llX29wcyBkd19wY2llX29wcyA9IHsKPiAgCS5saW5rX3VwID0g
cWNvbV9wY2llX2xpbmtfdXAsCj4gIAkuc3RhcnRfbGluayA9IHFjb21fcGNpZV9zdGFydF9saW5r
LAo+IEBAIC0xODM3LDcgKzE4NTEsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9p
ZCBxY29tX3BjaWVfbWF0Y2hbXSA9IHsKPiAgCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXNt
ODQ1MC1wY2llMCIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJx
Y29tLHBjaWUtc204NDUwLXBjaWUxIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0sCj4gIAl7IC5jb21w
YXRpYmxlID0gInFjb20scGNpZS1zbTg1NTAiLCAuZGF0YSA9ICZjZmdfMV85XzAgfSwKPiAtCXsg
LmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXgxZTgwMTAwIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0s
Cj4gKwl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS14MWU4MDEwMCIsIC5kYXRhID0gJmNmZ18x
XzM4XzAgfSwKPiAgCXsgfQo+ICB9Owo+ICAKPiAtLSAKPiAyLjM0LjEKPiAKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
