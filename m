Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 826E9E64A83
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TqDiPUMtdbvnhBM4PqcYQ70MRn5QYLKfvfg5u1nZR1Q=; b=XMLBn4MnrWOEME
	EmWJacGAWSOmq2AGvb4TpzA93frRhD9bWWO4XREtBWrU+r2ulXURqYb+Gw5WA0Ng4K+IVE6ubMsWV
	OiL0b3Bq7hqJFsRuL+hVLx5y9lFbCplJA6KdZ7n5wkYfZMiYPA8+VuINQ5E7pvmnsADzz6IGib2Hu
	LpecRwcbDOwGTOlqTvxu3FTYHNOHVmC2sIZ0CXws33AF0XwbbFnvLkiVN6I8oclDQaQta7Ow6zFaq
	sFfJCmAF+uGJTUIz1dFVRRi9IuqwRxpVBOIgvMaCFOApbUszKZId/f8Aovkrm3YTtMNQraOeeepTS
	Ox5LKoIuVVz6MkzhYfJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmt-00000009Ngu-2gzX;
	Tue, 03 Dec 2024 12:13:55 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmq-00000009Ndj-3dqH
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:54 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5d0e75dd846so3058537a12.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228031; x=1733832831; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+D27OUR16Cl4TWEJRos/7LAnM8aBb1wRGjF74GArkfA=;
        b=zYQV3xX+q0z/qNWovaXf7XjtzoN86hywiB59k7gf1SUtkIF2JKHc0V7J5HW23PyWgc
         CW87iTkYvgOPwKUUdBom0e+9PpwJ1P5H710JEBuPegIyLWKmH3qUJsG0is3pp96U5lOL
         +RrBqWecoHZOHteSOyY5KNDLFHAaLi0vqqkaayGbeN9+Xq/1Ux4CJJcfN+97j6ARLNhm
         uI5MjqgDzEgjwxy6r41gBMwiA26NJ/DiPF4Rur1DnJtjRUu6ZC0Qfxq0IggLg1a08XZW
         4yEN7XbqtuPn9jNjlLFkb2wa7lcAVr+1JAVk2lpHCAUpeuiGW0N+8rNaJ5Yt39ZE0Dtr
         e+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228031; x=1733832831;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+D27OUR16Cl4TWEJRos/7LAnM8aBb1wRGjF74GArkfA=;
        b=f6/cGhtwXzP3sMLwR9IC5fVNPN5zTCKX98sjjVJQaTNlHPr/rnAiq8l9oYmWrnYbOy
         1ltEcOlUsIaLmPKHnbg3ogNBspcRCkfXbfZchGS5PpzC7p2iTuSlWpvKlMof/wO+WfMB
         CsuBESvYn5UWd6SsHrzqAKWZjngQ50K+v2tj+yUZRmT9tFEc9tyw0YL8GdXKLLLtcrOF
         otdRi3Xb456YwvbpeLJisXesvAA4qE/QVudaDnUTcSA7YlAcT/CY1qfAV3ZYyTz6//Sw
         cCal2w8sFjQExjk2D//brrGDXv8u/DszN1P6OMOhhKK8Res5tK5Hr35SlQcmS3BlSpxS
         bRSw==
X-Forwarded-Encrypted: i=1; AJvYcCWGpov+K0M3T9HrU9tYGnZQvv/ecLbQZlS1Yke/pzeWOEDZqkUVdGxOZDrmoYyfdUa3blVA68uo4Zg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXuNSW/+2oduI+NAHkc9eZjkY/lH9vosc4KXm8OqXlGAKAL088
	FPr2f+tbLFoioJS/M7K5zmG4kqc665rCK3U0i1rikzwzatmQAk6AYvtHil+/Shc=
X-Gm-Gg: ASbGncuSLLK71SooiYAKvSl/L4hSD62ZVbQnNuNr3dnuWDQ9sE+EZ2bTv9kqpRigAiD
	/q1Og6z7f79TZEmsu7tUgi91OOAhjpxtdzUVdr6anQ6KRrwAYiG+DuKgG4NRKaXUo1V6DATAkJy
	vaH62BFsJu5nOXQWfHX1sc/03ZgapdwCdEToYKHANLADZGWs7U4YBjhWS4bEdEjCaEJFHSoxnkb
	UA3Og9LPbdkwAhl++pOm4Tp5w19K8nvmkNVV+Tx7f+5yFCEzxcTjFa2aOpkmzc5Fg0QYZBUqL+E
	4BbotsrtTeyIkfGTFQu4an6RUuVcMboB0w==
X-Google-Smtp-Source: AGHT+IG/LNiQRH1H/AD37FJTCdb/ukxG6+4AcIb4aIX7NrDNY7ETqg4yetmoSzQOoqOa1fQIjvYgLw==
X-Received: by 2002:a17:906:1daa:b0:aa5:1661:1949 with SMTP id a640c23a62f3a-aa5f7f2413dmr188219066b.40.1733228030629;
        Tue, 03 Dec 2024 04:13:50 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:50 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/8] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
Date: Tue, 03 Dec 2024 12:13:48 +0000
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPz1TmcC/42NQQqDMBBFryKz7pTMIFq76j2Ki2hGHZBEEpGKe
 PemnqDL9+H9d0CSqJLgWRwQZdOkwWfgWwH9ZP0oqC4zsOGSiGscExnCZdpxtl4Shqz71a7Zu1Z
 uHJu+co/SMeSXJcqgn6vwbjNPmtYQ9yu40W/9/3sjNEhdPfTCZVOZ7jWrtzHcQxyhPc/zC6gJ1
 QTPAAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_041352_905710_5E927752 
X-CRM114-Status: GOOD (  12.30  )
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

SGksCgpUaGlzIHNlcmllcyBlbmFibGVzIFVTQjMgVHlwZS1DIGxhbmUgb3JpZW50YXRpb24gZGV0
ZWN0aW9uIGFuZApjb25maWd1cmF0aW9uIG9uIHBsYXRmb3JtcyB0aGF0IHN1cHBvcnQgdGhpcyAo
R29vZ2xlIGdzMTAxKSwgYW5kIGl0CmFsc28gYWxsb3dzIHRoZSBEV0MzIGNvcmUgdG8gZW50ZXIg
cnVudGltZSBzdXNwZW5kIGV2ZW4gd2hlbiBVREMgaXMKYWN0aXZlLgoKRm9yIGxhbmUgb3JpZW50
YXRpb24sIHRoaXMgZHJpdmVyIG5vdyBvcHRpb25hbGx5IChiYXNlZCBvbiBEVCkKc3Vic2NyaWJl
cyB0byB0aGUgVENQQydzIGxhbmUgb3JpZW50YXRpb24gbm90aWZpZXIgYW5kIHJlbWVtYmVycyB0
aGUKb3JpZW50YXRpb24gdG8gbGF0ZXIgYmUgdXNlZCBkdXJpbmcgcGh5X2luaXQoKS4KClRvIGVu
YWJsZSBEV0MzIHJ1bnRpbWUgc3VzcGVuZCwgdGhlIGdhZGdldCBuZWVkcyB0byBpbmZvcm0gdGhl
IGNvcmUgdmlhCmR3YzNfZ2FkZ2V0X2ludGVycnVwdCgpIHdpdGggZXZlbnQgdHlwZSA9PSBEV0Mz
X0RFVklDRV9FVkVOVF9ESVNDT05ORUNUCm9mIGEgY2FibGUgZGlzY29ubmVjdC4gRm9yIHRoYXQg
dG8gYWxsb3cgdG8gaGFwcGVuLCB0aGlzIGRyaXZlcgp0aGVyZWZvcmUgbmVlZHMgdG8gc3RvcCBm
b3JjaW5nIHRoZSBWYnVzIGFuZCBidmFsaWQgc2lnbmFscyB0byBhY3RpdmUKYW5kIGluc3RlYWQg
Y2hhbmdlIHRoZWlyIHN0YXRlIGJhc2VkIG9uIGFjdHVhbCBjb25kaXRpb25zLiBUaGUgc2FtZQpU
Q1BDIG5vdGlmaWVyIGlzIHVzZWQgdG8gZGV0ZWN0IHRoaXMsIGFuZCBwcm9ncmFtIHRoZSBoYXJk
d2FyZQphY2NvcmRpbmdseS4KClRoYXQgc2lnbmFsIHN0YXRlIGlzIGJhc2VkIG9uIGFkdmljZSBn
aXZlbiBieSBUaGluaCBpbgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDA4MTMyMzA2
MjUuamdrYXRxc3R5aGNtcGV6dkBzeW5vcHN5cy5jb20vCgpCb3RoIGNoYW5nZXMgdG9nZXRoZXIg
bm93IGFsbG93IGNhYmxlIG9yaWVudGF0aW9uIGRldGVjdGlvbiB0byB3b3JrLCBhcwp0aGUgRFdD
MyB3aWxsIG5vdyBjYWxsIHBoeV9leGl0KCkgb24gY2FibGUgZGlzY29ubmVjdCwgYW5kIHdlIGNh
bgpyZXByb2dyYW0gdGhlIGxhbmUgbXV4IGluIHBoeV9pbml0KCkuCgpPbiB0b3Agb2YgdGhhdCwg
dGhlcmUgYXJlIHNvbWUgc21hbGwgcmVsYXRlZCBjbGVhbnVwIHBhdGNoZXMuCgpTaWduZWQtb2Zm
LWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0KQ2hhbmdl
cyBpbiB2MjoKLSBzcXVhc2ggcGF0Y2hlcyAjMiBhbmQgIzMgZnJvbSB2MSB0byBhY3R1YWxseSBk
aXNhbGxvdwogIG9yaWVudGF0aW9uLXN3aXRjaCBvbiAhZ3MxMDEgKG5vdCBqdXN0IG9wdGlvbmFs
KSAoQ29ub3IpCi0gdXBkYXRlIGJpbmRpbmdzIGNvbW1pdCBtZXNzYWdlIHRvIGNsYXJpZnkgdGhh
dCB0aGUgaW50ZW50aW9uIGZvciB0aGUKICBkcml2ZXIgaXMgdG8gd29yayB3aXRoIG9sZCBhbmQg
bmV3IERUUyAoQ29ub3IpCi0gYWRkIGNjLXN0YWJsZSBhbmQgZml4ZXMgdGFncyB0byBwb3dlciBn
YXRpbmcgcGF0Y2ggKEtyenlzenRvZikKLSBmaXggYW4gI2luY2x1ZGUgYW5kIHR5cG8gKFBldGVy
KQotIExpbmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDExMjctZ3MxMDEt
cGh5LWxhbmVzLW9yaWVudGF0aW9uLXBoeS12MS0wLTFiN2ZjZTI0OTYwYkBsaW5hcm8ub3JnCgot
LS0KQW5kcsOpIERyYXN6aWsgKDgpOgogICAgICBkdC1iaW5kaW5nczogcGh5OiBzYW1zdW5nLHVz
YjMtZHJkLXBoeTogYWxpZ24gdG8gdW5pdmVyc2FsIHN0eWxlCiAgICAgIGR0LWJpbmRpbmdzOiBw
aHk6IHNhbXN1bmcsdXNiMy1kcmQtcGh5OiBnczEwMTogcmVxdWlyZSBUeXBlLUMgcHJvcGVydGll
cwogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IHRvIGRldl9lcnJfcHJvYmUKICAg
ICAgcGh5OiBleHlub3M1LXVzYmRyZDogZml4IEVEUyBkaXN0cmlidXRpb24gdHVuaW5nIChnczEw
MSkKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogZ3MxMDE6IGVuc3VyZSBwb3dlciBpcyBnYXRl
ZCB0byBTUyBwaHkgaW4gcGh5X2V4aXQoKQogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBnczEw
MTogY29uZmlndXJlIFNTIGxhbmVzIGJhc2VkIG9uIG9yaWVudGF0aW9uCiAgICAgIHBoeTogZXh5
bm9zNS11c2JkcmQ6IHN1YnNjcmliZSB0byBvcmllbnRhdGlvbiBub3RpZmllciBpZiByZXF1aXJl
ZAogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBhbGxvdyBEV0MzIHJ1bnRpbWUgc3VzcGVuZCB3
aXRoIFVEQyBib3VuZCAoRTg1MCspCgogLi4uL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJk
LXBoeS55YW1sICAgICAgICAgfCAgMjQgKysrCiBkcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jICAgICAgICAgICB8IDIyMyArKysrKysrKysrKysrKysrLS0tLS0KIDMg
ZmlsZXMgY2hhbmdlZCwgMjAyIGluc2VydGlvbnMoKyksIDQ2IGRlbGV0aW9ucygtKQotLS0KYmFz
ZS1jb21taXQ6IGVkOWE0YWQ2ZTViZDNhNDQzZTgxNDQ2NDc2NzE4YWJlYmVlNDdlODIKY2hhbmdl
LWlkOiAyMDI0MTEyNy1nczEwMS1waHktbGFuZXMtb3JpZW50YXRpb24tcGh5LTI5ZDIwYzZkODRk
MgoKQmVzdCByZWdhcmRzLAotLSAKQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJv
Lm9yZz4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
