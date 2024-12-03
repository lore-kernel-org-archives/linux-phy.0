Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA80E64A84
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AccbxbNImWCNWeaNDiNR6z3ekN11mcoUW03RHiva6k=; b=K7hkLmXX7gM+iy
	yQRB5zdHmEnXsJtRLxKx73f+iuRjhM0mUdVk4RJryDIWs8DSPRKFjC2WzsZNQ/wjpaMso60CIxVn6
	kc28jEESY8l0Im0duZshggWmJFRBkcD0uzqIyFkMak1u0KOv2IjNAQrXk3sgzb3tt7ANSVsPqeIGp
	qHZcEu97nEzsOopCh7N+FzVzWo8BBaX8x4i49WzM3ktQgC2lrd60HvvKJ8QMbXgFN56V8TttXyHWj
	FGHn3XUJDK3XwghGuhN6WhtS0Zm7hRPnhQTwdmmQB7lYNYn4Yf7rqMQVpbjD6xZjo37z5vI1733R2
	c0QYPN8PlAreB401NGUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRns-00000009Nx8-3K47;
	Tue, 03 Dec 2024 12:14:56 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmr-00000009Ndp-3ZKC
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:55 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-aa503cced42so802145466b.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228032; x=1733832832; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mWpaKqqVYEb45LFrVAOE9nPtLWbHCab8i1TbI6jQ3+I=;
        b=SLGj/sjfsfHHDWHLd0GtXzsNkAcoR8XeuVHppQHuUaugujPsbVqx5XXmXfVya4+PnR
         AzuXbxRqwkrp3BNmp5NNES7xuioE6HC2uyqnxJjgYg+XSJY2PUexZtbukLANKAXF8aWG
         Jq9RS1jUiDn4+3K8xdrM5CpFLczE3zroHDbmktgMNcDWsyJjYMlcwpM/DTNgOJodv4PM
         4h5J3jxRbQfbsN1y4bIbT0dwvHhklg6oVJCS+Of89ztLAug3DDhsnGuf1lJwvjvdPrxX
         /b8rnG0RszKSSy1lGC+w46Ve5kdcN/K3hTeF8ktNmMigf5/PrgGjdhO8umrOYAhUjGcW
         P9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228032; x=1733832832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWpaKqqVYEb45LFrVAOE9nPtLWbHCab8i1TbI6jQ3+I=;
        b=poxXSEeADshFQNLylJ3ObO62v6oih4CcwSVy7lvmO3esj9Y0aH4icEgNWpo+mwFgSx
         g9xqGsPN5wBhayyiVWTn8SFLX+msZ6ayredcD57DmjGANj8A1f5rtNsRLREqmohr7dmH
         1d3PRoH5q3xlRk7oA5ATmCVo/vF60bKXJCRZSdkcGU6pmE8XUH58q5RFjZYwP/77JrPi
         4dteXlQnUL74oWDxOGbhUE32WE1n4b0WZ9cE/B8yamfnRKKN6oBW0aFZgrcvc/3wA+xi
         u6QWxyHMJgG6lt+KEXBqgSY4rCU92kAVsVhESJmkTxxWmtVXZtkIL5TT9jeqNFixd9hw
         yw+g==
X-Forwarded-Encrypted: i=1; AJvYcCWtfscU960IvalewDu+b+88BIDt9rA2op51RZwTOF4KDqX0uvzaeobHtTaG530RsNocF6laYg2Szl8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBp7WnNRypFSme7gWC+fAU5HtH9HcdQxNrkOaWmEanCmzt+GH5
	rNG4IKPSPpNodS9L2VXnqEjysiUNxhp3IzZfrKj3xd22uxD54AkUbjbD5nyLCtw=
X-Gm-Gg: ASbGncvhgBngIfBjW0Wt9W8fVDxB/ksVYb/xVm9I8EE6YZQ+RB3eW+VTWK87XAg2Rh4
	nJMxlEXxs8SdjHdf03bxOLnG9XgsBhJRfWejA/ucfmqDqCn0gxtBcUPhCDAFcNj6OkTctKX+Zfk
	35Qrzl0h7/umDakQcEnh3ULJiesplInwaRh0qMt5/dbaeNOyXP3411l+OA2UyUnp0kb2jLnlxBG
	iJ5jCpk/N2LYk9BbGtVFK7X1wa42HpQAzj+RIFzBhABo5jusSMnr0JOjGhej0LrN769Rha5gkMS
	LOf7WMdolWoAOiTP6LxiYYnt8ihTJpwE4w==
X-Google-Smtp-Source: AGHT+IGn4eg/NfZJAVu0hqE9cK2q2j0R5oIme9rHukh+yJlN3vdSnhKD++AzSGAOtBHFlLtbaiKfNw==
X-Received: by 2002:a17:907:7632:b0:a9e:df65:3a81 with SMTP id a640c23a62f3a-aa5f7f4f3bfmr155819366b.59.1733228031882;
        Tue, 03 Dec 2024 04:13:51 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:51 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:50 +0000
Subject: [PATCH v2 2/8] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
MIME-Version: 1.0
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-2-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_041353_888856_FF9C1110 
X-CRM114-Status: GOOD (  11.04  )
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

b3JpZW50YXRpb24tc3dpdGNoIGlzIHRoZSBzdGFuZGFyZCBkZWNsYXJhdGlvbiB0byBpbmZvcm0g
dGhlIFR5cGUtQyBtdXgKbGF5ZXIgdGhhdCBhIHJlbW90ZS1lbmRwb2ludCBpcyBjYXBhYmxlIG9m
IHByb2Nlc3Npbmcgb3JpZW50YXRpb24KY2hhbmdlIG1lc3NhZ2VzLgoKVGhlIFVTQiBQSFkgb24g
Z3MxMDEgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBiYXNlZCBvbiB0aGUgb3JpZW50YXRpb24gb2YK
dGhlIGNvbm5lY3Rvci4gRm9yIHRoYXQgdGhlIERUUyBuZWVkcyBhIGxpbmsgYmV0d2VlbiB0aGUg
cGh5J3MgcG9ydCBhbmQKYSBUQ1BDaSwgYW5kIHdlJ2xsIG5lZWQgdG8gaW5mb3JtIHRoZSBwaHkg
ZHJpdmVyIHRoYXQgaXQgc2hvdWxkIGhhbmRsZQp0aGUgb3JpZW50YXRpb24gKHJlZ2lzdGVyIGEg
aGFuZGxlcikuCgpVcGRhdGUgdGhlIHNjaGVtYSB0byBlbmZvcmNlIHRoYXQgYnkgcmVxdWlyaW5n
IHRoZSBvcmllbnRhdGlvbi1zd2l0Y2gKYW5kIHBvcnQgcHJvcGVydGllcyBvbiBnczEwMSAob25s
eSkuIFdlIGRpc2FsbG93IG9yaWVudGF0aW9uLXN3aXRjaCBvbgphbGwgb3RoZXIgc3VwcG9ydGVk
IHBsYXRmb3Jtcywgc2luY2Ugb3RoZXIgdmVyc2lvbnMgb2YgdGhpcyBwaHkgKG9yIGl0cwpzeXN0
ZW0gaW50ZWdyYXRpb24pIGRvbid0IGN1cnJlbnRseSBzdXBwb3J0IG9yIGV2ZW4gbmVlZCBpdC4K
CkV2ZW4gdGhvdWdoIHRoaXMgbmV3IHJlcXVpcmVkIGdzMTAxIHByb3BlcnR5IGlzIGFuIEFCSSBi
cmVhaywgdGhlCmludGVudGlvbiBmb3IgdGhlIGRyaXZlciBpcyB0byBiZWhhdmUgYXMgYmVmb3Jl
IGlmIGl0J3MgbWlzc2luZwoobWVhbmluZyBmb3IgZ3MxMDEgaXQgd2lsbCB3b3JrIGluIFNTIG1v
ZGUgaW4gb25lIG9yaWVudGF0aW9uIG9ubHkpLgpPdGhlciBwbGF0Zm9ybXMgYXJlIG5vdCBhZmZl
Y3RlZC4KClJldmlld2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5v
cmc+ClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5v
cmc+CgotLS0KdjI6Ciogc3F1YXNoIG9yaWdpbmFsIHBhdGNoZXMgIzIgYW5kICMzCiogYWN0dWFs
bHkgZGlzYWxsb3cgb3JpZW50YXRpb24tc3dpdGNoIG9uICFnczEwMSAobm90IGp1c3Qgb3B0aW9u
YWwpIChDb25vcikKKiB1cGRhdGUgY29tbWl0IG1lc3NhZ2UgdG8gY2xhcmlmeSB0aGF0IHRoZSBp
bnRlbnRpb24gZm9yIHRoZSBkcml2ZXIgaXMKICB0byB3b3JrIHdpdGggb2xkIGFuZCBuZXcgRFRT
IChDb25vcikKKiBjb2xsZWN0IHRhZ3MKLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgfCA5ICsrKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbApp
bmRleCAxZjhiMzU5MTdiMTEuLmMxZDE2MjU0YWVlYyAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCisrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1w
aHkueWFtbApAQCAtNTEsNiArNTEsOSBAQCBwcm9wZXJ0aWVzOgogICAiI3BoeS1jZWxscyI6CiAg
ICAgY29uc3Q6IDEKIAorICBvcmllbnRhdGlvbi1zd2l0Y2g6CisgICAgJHJlZjogL3NjaGVtYXMv
dXNiL3VzYi1zd2l0Y2gueWFtbCMvcHJvcGVydGllcy9vcmllbnRhdGlvbi1zd2l0Y2gKKwogICBw
b3J0OgogICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydAogICAg
IGRlc2NyaXB0aW9uOgpAQCAtMTM5LDYgKzE0Miw4IEBAIGFsbE9mOgogCiAgICAgICByZXF1aXJl
ZDoKICAgICAgICAgLSByZWctbmFtZXMKKyAgICAgICAgLSBvcmllbnRhdGlvbi1zd2l0Y2gKKyAg
ICAgICAgLSBwb3J0CiAgICAgICAgIC0gcGxsLXN1cHBseQogICAgICAgICAtIGR2ZGQtdXNiMjAt
c3VwcGx5CiAgICAgICAgIC0gdmRkaC11c2IyMC1zdXBwbHkKQEAgLTE0Niw2ICsxNTEsMTAgQEAg
YWxsT2Y6CiAgICAgICAgIC0gdmRkYS11c2JkcC1zdXBwbHkKICAgICAgICAgLSB2ZGRoLXVzYmRw
LXN1cHBseQogCisgICAgZWxzZToKKyAgICAgIHByb3BlcnRpZXM6CisgICAgICAgIG9yaWVudGF0
aW9uLXN3aXRjaDogZmFsc2UKKwogICAtIGlmOgogICAgICAgcHJvcGVydGllczoKICAgICAgICAg
Y29tcGF0aWJsZToKCi0tIAoyLjQ3LjAuMzM4Lmc2MGNjYTE1ODE5LWdvb2cKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
