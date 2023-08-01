Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CE78C04A6A
	for <linux-phy@archiver.kernel.org>; Tue,  1 Aug 2023 20:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HiwAsXyFV3lRW9C5rhTvnaf/cnp8oXd3LjuH96qEHT8=; b=A+jnPbf/lngaEz
	SWaMgEaOH9ggkpzb0xe5OFsJBWE/987S3gSqDElhDtgZb4vWK3mhq1rITxqxFy5bf5tVVJnfkG+27
	g0CPR1mZ1J9oozVLLxS7GMw5stNCwFKxJsLB+url1prMgPDQa/N3/V/PTu4GTAPay44QlUyL8Au40
	2Kjl75WU/WtWNuUem8FFZZ5uoOKEH1v1NSGvgqEBQPiT7ZQxfWj8/8dSzbIHuYLYqQrYpBBWCkh7g
	I0/eqR8uViNtMZLLYDL3L01FX1JkkUt5TmnqRYF9udrxsA6VQTnrHjnltbewNLRQnl/AxONMaOGQo
	FPwaAWzPvP6+G2VLIZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQwLE-003IHV-0Y;
	Tue, 01 Aug 2023 20:51:40 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQwLB-003IGa-1K
	for linux-phy@lists.infradead.org;
	Tue, 01 Aug 2023 20:51:39 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3090d3e9c92so6203659f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 01 Aug 2023 13:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690923094; x=1691527894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9IES0zos/bI6j0U8igIT/6JUvKE2fcDpLlO5bVCh6r0=;
        b=oCB4w+Gl+D2t7lRzLVAUJXr4f6u1jnWPnypk++jST37wqxR5pxyBb70GVGYfhMWU1D
         j7VguKVgdlpCzx1w9Bl/pDLq/2P3eSuaqTPzG2ec33opLTBdGw36aK17xyPIwBUh6dXc
         sf7knAsqpCbLjHoguX0F1rA48/YIZvB89S+dzF00qPBEIkD07142tbmOGSbSRITR6FdM
         c4fmD4uy+RBueRcghpX6n8xRGpNMoqcqdgSlqY3SLEKtcOTY+qeQvd4r+SLQAUgSzzvL
         xON6UFP6vjTcJa0MRLve/tS9t4E6mTilvWMQRayTz5gKqqZ1D2TWJil/d8a7aTbia2KU
         LySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690923094; x=1691527894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9IES0zos/bI6j0U8igIT/6JUvKE2fcDpLlO5bVCh6r0=;
        b=erLGpNWpu0ZUzzquOQGd+fBcbVfxBn5r/XgCjPDS9k7j5qO49CVhrFfEvuPJbTuwEC
         ksiaaL1Gu9803voRcjKCMafaHgc6LzWaZ8QgVPe93lH7ABgdn4CcXhtDp6RalsIFKVbn
         UcOUR2QEBWulWOc0kKGH7SExNpiFdkVxxs+iGSj+4s+ez0bpiytzbuOMNZm5oGkq961m
         IDRgasm4WPK1zOznODX1ZB4SnigOIeL+mUm+5p+XISGUmmhlm1mbO3BRfImgMQ+m/l0H
         R1cgF8YUL/8HeoXYT34SFNSGiyNYxUlzDdfpnr2BreCYF78gqSU9vyeXh4+tFCPBE9Lw
         kzvg==
X-Gm-Message-State: ABy/qLZQllXDf0bELt5TWgDAvrqhgxY9j66vKFc7QixEu/KnvA4hYGx1
	0aoZZvKDFoutY2VXcLGE7mw=
X-Google-Smtp-Source: APBJJlE6PiNkJjq87PuqQnLz5kv7YUnoIM9/dLb51bSe5wbM6tc0xUXBV6T/v2ZhGYPKxog9mdqxvw==
X-Received: by 2002:a5d:428e:0:b0:314:2d71:1f7a with SMTP id k14-20020a5d428e000000b003142d711f7amr3325273wrq.32.1690923094053;
        Tue, 01 Aug 2023 13:51:34 -0700 (PDT)
Received: from localhost ([2a01:e0a:32f:1f0:c25b:89f6:3b46:6d1e])
        by smtp.gmail.com with ESMTPSA id f13-20020adfdb4d000000b003141e9e2f81sm17162490wrj.4.2023.08.01.13.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 13:51:33 -0700 (PDT)
From: Raphael Gallais-Pou <rgallaispou@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rapha=C3=ABl=20Gallais-Pou?= <raphael.gallais.pou@gmail.com>
Subject: [PATCH] dt-bindings: phy: st: convert phy-stih407-usb to DT schema
Date: Tue,  1 Aug 2023 22:55:10 +0200
Message-ID: <20230801205510.15713-1-rgallaispou@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_135137_462556_CD8D9D01 
X-CRM114-Status: GOOD (  16.38  )
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

RnJvbTogUmFwaGHDq2wgR2FsbGFpcy1Qb3UgPHJhcGhhZWwuZ2FsbGFpcy5wb3VAZ21haWwuY29t
PgoKQ29udmVydCB0aGUgc3Qsc3RpaDQwNy11c2IyLXBoeSBiaW5kaW5nIHRvIERUIHNjaGVtYSBm
b3JtYXQuCgpTaWduZWQtb2ZmLWJ5OiBSYXBoYcOrbCBHYWxsYWlzLVBvdSA8cmFwaGFlbC5nYWxs
YWlzLnBvdUBnbWFpbC5jb20+Ci0tLQogLi4uL2JpbmRpbmdzL3BoeS9waHktc3RpaDQwNy11c2Iu
dHh0ICAgICAgICAgIHwgMjQgLS0tLS0tLQogLi4uL2JpbmRpbmdzL3BoeS9zdCxzdGloNDA3LXVz
YjItcGh5LnlhbWwgICAgIHwgNjMgKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCA2MyBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1zdGloNDA3LXVzYi50eHQK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3N0LHN0aWg0MDctdXNiMi1waHkueWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXN0aWg0MDctdXNiLnR4dCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXN0aWg0MDctdXNiLnR4dApkZWxldGVkIGZpbGUg
bW9kZSAxMDA2NDQKaW5kZXggMzVmMDNkZjAwMTMwLi4wMDAwMDAwMDAwMDAKLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktc3RpaDQwNy11c2IudHh0CisrKyAv
ZGV2L251bGwKQEAgLTEsMjQgKzAsMCBAQAotU1QgU1RpSDQwNyBVU0IgUEhZIGNvbnRyb2xsZXIK
LQotVGhpcyBmaWxlIGRvY3VtZW50cyB0aGUgZHQgYmluZGluZ3MgZm9yIHRoZSB1c2IgcGljb1BI
WSBkcml2ZXIgd2hpY2ggaXMgdGhlIFBIWSBmb3IgYm90aCBVU0IyIGFuZCBVU0IzCi1ob3N0IGNv
bnRyb2xsZXJzICh3aGVuIGNvbnRyb2xsaW5nIHVzYjIvMS4xIGRldmljZXMpIGF2YWlsYWJsZSBv
biBTVGlINDA3IFNvQyBmYW1pbHkgZnJvbSBTVE1pY3JvZWxlY3Ryb25pY3MuCi0KLVJlcXVpcmVk
IHByb3BlcnRpZXM6Ci0tIGNvbXBhdGlibGUJCTogc2hvdWxkIGJlICJzdCxzdGloNDA3LXVzYjIt
cGh5IgotLSBzdCxzeXNjZmcJCTogcGhhbmRsZSBvZiBzeXNjb25maWcgYmFuayBwbHVzIGludGVn
ZXIgYXJyYXkgY29udGFpbmluZyBwaHlwYXJhbSBhbmQgcGh5Y3RybCByZWdpc3RlciBvZmZzZXRz
Ci0tIHJlc2V0cwkJOiBsaXN0IG9mIHBoYW5kbGUgYW5kIHJlc2V0IHNwZWNpZmllciBwYWlycy4g
VGhlcmUgc2hvdWxkIGJlIHR3byBlbnRyaWVzLCBvbmUKLQkJCSAgZm9yIHRoZSB3aG9sZSBwaHkg
YW5kIG9uZSBmb3IgdGhlIHBvcnQKLS0gcmVzZXQtbmFtZXMJCTogbGlzdCBvZiByZXNldCBzaWdu
YWwgbmFtZXMuIFNob3VsZCBiZSAiZ2xvYmFsIiBhbmQgInBvcnQiCi1TZWU6IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9zdCxzdGloNDA3LXBvd2VyZG93bi55YW1sCi1T
ZWU6IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9yZXNldC50eHQKLQot
RXhhbXBsZToKLQotdXNiMl9waWNvcGh5MDogdXNicGljb3BoeUBmOCB7Ci0JY29tcGF0aWJsZQk9
ICJzdCxzdGloNDA3LXVzYjItcGh5IjsKLQkjcGh5LWNlbGxzCT0gPDA+OwotCXN0LHN5c2NmZwk9
IDwmc3lzY2ZnX2NvcmUgMHgxMDAgMHhmND47Ci0JcmVzZXRzCQk9IDwmc29mdHJlc2V0IFNUSUg0
MDdfUElDT1BIWV9TT0ZUUkVTRVQ+LAotCQkJICA8JnBpY29waHlyZXNldCBTVElINDA3X1BJQ09Q
SFkwX1JFU0VUPjsKLQlyZXNldC1uYW1lcwk9ICJnbG9iYWwiLCAicG9ydCI7Ci19OwpkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zdCxzdGloNDA3LXVz
YjItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0
aWg0MDctdXNiMi1waHkueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAw
MDAuLjFmNjZjZWRkYmY4MQotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvc3Qsc3RpaDQwNy11c2IyLXBoeS55YW1sCkBAIC0wLDAgKzEsNjMg
QEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xh
dXNlKQorJVlBTUwgMS4yCistLS0KKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMv
cGh5L3N0LHN0aWg0MDctdXNiMi1waHkueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTogU1RNaWNyb2VsZWN0cm9uaWNz
IFNUaUg0MDcgVVNCIFBIWSBjb250cm9sbGVyCisKK21haW50YWluZXJzOgorICAtIFBhdHJpY2Ug
Q2hvdGFyZCA8cGF0cmljZS5jaG90YXJkQGZvc3Muc3QuY29tPgorCitkZXNjcmlwdGlvbjoKKyAg
VGhlIFVTQiBwaWNvUEhZIGRyaXZlciBpcyB0aGUgUEhZIGZvciBib3RoIFVTQjIgYW5kIFVTQjMg
aG9zdCBjb250cm9sbGVycworICAod2hlbiBjb250cm9sbGluZyB1c2IyLzEuMSBkZXZpY2VzKSBh
dmFpbGFibGUgb24gU1RpSDQwNyBTb0MgZmFtaWx5IGZyb20KKyAgU1RNaWNyb2VsZWN0cm9uaWNz
LgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGNvbnN0OiBzdCxzdGloNDA3LXVz
YjItcGh5CisKKyAgc3Qsc3lzY2ZnOgorICAgIGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIHRoZSBz
eXNjZmcgYmFuaworICAgICRyZWY6ICIvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91
aW50MzItYXJyYXkiCisgICAgaXRlbXM6CisgICAgICAtIGRlc2NyaXB0aW9uOiBwaGFuZGxlIHRv
IHN5c2NmZworICAgICAgLSBkZXNjcmlwdGlvbjogcGh5cGFyYW0gcmVnaXN0ZXIgb2Zmc2V0Cisg
ICAgICAtIGRlc2NyaXB0aW9uOiBwaHljdHJsIHJlZ2lzdGVyIG9mZnNldAorCisgIHJlc2V0czoK
KyAgICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IFBoYW5kbGUgYW5kIHJlc2V0IHNwZWNp
ZmllciBwYWlyIGZvciB0aGUgd2hvbGUgcGh5LgorICAgICAgLSBkZXNjcmlwdGlvbjogUGhhbmRs
ZSBhbmQgcmVzZXQgc3BlY2lmaWVyIHBhaXIgZm9yIHRoZSBwb3J0LgorCisgIHJlc2V0LW5hbWVz
OgorICAgIGRlc2NyaXB0aW9uOiBMaXN0IG9mIHJlc2V0IHNpZ25hbCBuYW1lcy4KKyAgICBpdGVt
czoKKyAgICAgIC0gY29uc3Q6ICJnbG9iYWwiCisgICAgICAtIGNvbnN0OiAicG9ydCIKKworICAi
I3BoeS1jZWxscyI6CisgICAgY29uc3Q6IDAKKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQor
ICAtIHN0LHN5c2NmZworICAtIHJlc2V0cworICAtIHJlc2V0LW5hbWVzCisgIC0gIiNwaHktY2Vs
bHMiCisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitleGFtcGxlczoKKyAgLSB8Cisg
ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3N0aWg0MDctcmVzZXRzLmg+CisgICAgdXNi
Ml9waWNvcGh5MDogdXNicGljb3BoeSB7CisgICAgCWNvbXBhdGlibGUJPSAic3Qsc3RpaDQwNy11
c2IyLXBoeSI7CisgICAgCSNwaHktY2VsbHMJPSA8MD47CisgICAgCXN0LHN5c2NmZwk9IDwmc3lz
Y2ZnX2NvcmUgMHgxMDAgMHhmND47CisgICAgCXJlc2V0cwkJPSA8JnNvZnRyZXNldCBTVElINDA3
X1BJQ09QSFlfU09GVFJFU0VUPiwKKyAgICAJCQkgIDwmcGljb3BoeXJlc2V0IFNUSUg0MDdfUElD
T1BIWTBfUkVTRVQ+OworICAgIAlyZXNldC1uYW1lcwk9ICJnbG9iYWwiLCAicG9ydCI7CisgICAg
fTsKKy4uLgotLSAKMi40MS4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
