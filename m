Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49F8BD1A43A
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 04:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFSq4Yb2+idYX0hnzdDYVEl//WxjzmfWLSn8HFYxbUw=; b=s28MUh4N7BHfvj
	dmQhkp75kBT6IR0Xkug1G/3TvRYT6I3+L9OQn3AHYMVWNq4K+7bm7bBOdtR51DrK4rwJNBnBJXcoI
	GceL4y67Va2F/lrgJHYzgD90c+drCs5oC6osP45NciUzpmfOeaAp7QYw4jjoc1JoLmVIsKsfr6Mok
	CXW3wBf4yfzAEBQjOO7RxOo9NdyaaKIuShb8VgED+TZu6vxQWZzCHKCV3oiSZQAs+6spqaGvwDiYQ
	q8IA3thvvvwHMAzKFnoYT1AqWXobDsLvFVBiUEclt2NyffWafvqlt2iowCLKd04tfLBlUfyMZDopz
	AEwWK5ssEnmSsYmg4+ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szTfV-00000000VqI-3zxY;
	Sat, 12 Oct 2024 04:23:53 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szTfT-00000000Vpx-1cb5
	for linux-phy@lists.infradead.org;
	Sat, 12 Oct 2024 04:23:52 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-71e49ef3b2bso605857b3a.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Oct 2024 21:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728707030; x=1729311830; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=puYHk9n2Vwdgm2oCgJfF1Sai1mpX68QX9Cn76m96df4=;
        b=vJsESbDyT3XZ5iwM4jkRU8X8ly6WS9fwRLKYIuVI0YJ7CX7xfU+wYr5ZvgSM8cGI1n
         cPQE9oyx3qTRAImKVrccVoXxe7fLbH9ePT8uFXrFwzg4xM8cae1ppbC4lX05yJ61gfP3
         dS7Aip9m6TP3DqMcmexCXm0KqUMB0Obf3IB+2mMnnVFaay3Dzthxq3LsKF7j0po38gsD
         dI70ws63BLNWB1UD/ZWzqz1GkrjM6p52QQzL35MF5dt202Isw0xg28ExsooZlfyR6abs
         P+b2MolVLPZat7Xp42y12hzte6QqFqcX+IHeMccKvn2GR8FFUzoZ+lQPa625KP3WJJyE
         YRfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728707030; x=1729311830;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=puYHk9n2Vwdgm2oCgJfF1Sai1mpX68QX9Cn76m96df4=;
        b=VclBPfEw6nU+NLZW91kLuRn/ELx1YxL8ynbNWydns+8/S60vvM4rqmI7lb1w8yx79m
         l/WXGnHjB0T097bmdjp0egNYyfRACFXfLtZ1bX16qOD8E8oPq9cmqDWSaSqUQmoSai5K
         j7/PvHHPu0rYtziswFnsjs+614/L1Rw/TLjskbK/QiPxn54DVAaX/HZ7YnSgNAmbZ50k
         P1ICMM0uWwJ+R77Vwl+qFGJK47ThpqR9wV380wKQbVSCc0eBkyspQCv9OhhIP8iBoghH
         pu0a6Rekk2f8ucKVye54vSlTHu7Vh8g6SfbiQC2MvRQLpQCSEFI8ZXaPbUBtbR9IZphK
         RG1A==
X-Forwarded-Encrypted: i=1; AJvYcCWeoQjWUIcBl/g4KcMva7Mj3ZOXs0/qgcRwrVygHzsBDOlBA6g1ANZ1cAb7375OqmzIMBlg9WHk3Qo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3mUvWXYrl4OXE5TLtjBKBjo7A0WQbdKyxsZxPLjo0Dq0i6Feg
	hh6doXQKYeyiUbA5BE9Y8zE3mtsSSnWjQXCQNIm5rxaQlk4qKa3hBYSwLwidbGILdCTgcGbffzE
	=
X-Google-Smtp-Source: AGHT+IHxOL7Syd/cGt2BqV95e4Kdw1tNZz3+9j9/FIOE1zxN0smZKiOoLQJ5RmgWDoO3/JTFDgCGEA==
X-Received: by 2002:a05:6a21:3998:b0:1d7:1277:8d12 with SMTP id adf61e73a8af0-1d8bcf5c061mr6324102637.29.1728707030426;
        Fri, 11 Oct 2024 21:23:50 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e3ba69fdasm1926423b3a.205.2024.10.11.21.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 21:23:50 -0700 (PDT)
Date: Sat, 12 Oct 2024 09:53:42 +0530
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
Subject: Re: [PATCH v6 6/8] PCI: qcom: Fix the ops for SC8280X family SoC
Message-ID: <20241012041734.y6nwumij27dkbcra@thinkpad>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-7-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_212351_457925_A4CF1A2F 
X-CRM114-Status: GOOD (  16.79  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDM6NDE6NDBBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gT24gU0M4MjgwWCBmYW1pbHkgU29DLCBQQ0llIGNvbnRyb2xsZXJzIGFyZSBjb25uZWN0ZWQg
dG8gU01NVXYzLCBoZW5jZQo+IHRoZXkgZG9uJ3QgbmVlZCB0aGUgY29uZmlnX3NpZCgpIGNhbGxi
YWNrIGluIG9wc18xXzlfMCBzdHJ1Y3QuIEZpeCBpdCBieQo+IGludHJvZHVjaW5nIGEgbmV3IG9w
cyBzdHJ1Y3QsIG5hbWVseSBvcHNfMV8yMV8wLCBzbyB0aGF0IEJERjJTSUQgbWFwcGluZwoKJy4u
Lm5hbWVseSBvcHNfMV8yMV8wIHdoaWNoIGlzIHNhbWUgYXMgb3BzXzFfOV8wIHdpdGhvdXQgY29u
ZmlnX3NpZCgpIGNhbGxiYWNrJwoKPiB3b24ndCBiZSBjb25maWd1cmVkIGR1cmluZyBpbml0Lgo+
IAo+IEZpeGVzOiBkMTk5N2M5ODc4MTQgKCJQQ0k6IHFjb206IERpc2FibGUgQVNQTSBMMHMgZm9y
IHNjODI4MHhwLCBzYTg1NDBwIGFuZCBzYTgyOTVwIikKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZ
dSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0K
PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAxMiArKysrKysrKysr
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+IGluZGV4IDg4YTk4YmU5MzBl
My4uNDY4YmQ0MjQyZTYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtcWNvbS5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29t
LmMKPiBAQCAtMTM2Nyw2ICsxMzY3LDE2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2ll
X29wcyBvcHNfMl85XzAgPSB7Cj4gIAkubHRzc21fZW5hYmxlID0gcWNvbV9wY2llXzJfM18yX2x0
c3NtX2VuYWJsZSwKPiAgfTsKPiAgCj4gKy8qIFFjb20gSVAgcmV2LjogMS4yMS4wICovCj4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX29wcyBvcHNfMV8yMV8wID0gewo+ICsJLmdldF9y
ZXNvdXJjZXMgPSBxY29tX3BjaWVfZ2V0X3Jlc291cmNlc18yXzdfMCwKPiArCS5pbml0ID0gcWNv
bV9wY2llX2luaXRfMl83XzAsCj4gKwkucG9zdF9pbml0ID0gcWNvbV9wY2llX3Bvc3RfaW5pdF8y
XzdfMCwKPiArCS5ob3N0X3Bvc3RfaW5pdCA9IHFjb21fcGNpZV9ob3N0X3Bvc3RfaW5pdF8yXzdf
MCwKPiArCS5kZWluaXQgPSBxY29tX3BjaWVfZGVpbml0XzJfN18wLAo+ICsJLmx0c3NtX2VuYWJs
ZSA9IHFjb21fcGNpZV8yXzNfMl9sdHNzbV9lbmFibGUsCj4gK307Cj4gKwo+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IHFjb21fcGNpZV9jZmcgY2ZnXzFfMF8wID0gewo+ICAJLm9wcyA9ICZvcHNfMV8w
XzAsCj4gIH07Cj4gQEAgLTE0MDUsNyArMTQxNSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcWNv
bV9wY2llX2NmZyBjZmdfMl85XzAgPSB7Cj4gIH07Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0
IHFjb21fcGNpZV9jZmcgY2ZnX3NjODI4MHhwID0gewo+IC0JLm9wcyA9ICZvcHNfMV85XzAsCj4g
Kwkub3BzID0gJm9wc18xXzIxXzAsCj4gIAkubm9fbDBzID0gdHJ1ZSwKPiAgfTsKPiAgCj4gLS0g
Cj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
