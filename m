Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F11B0C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jul 2023 08:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2kJX3XbzyJU6r2GtHddnRZctAf8eQUhRgqMaSKcnCE=; b=jzZRo4Kz+gt58L
	GggjcuhA/JQw60yI6FZ6/5J9nXrXmUkGkyA1iSgzxaIRzx6OoVP0djITvW3XEjotQststkJyonGMk
	FRs9L9mMFenulHLGuFzmff9c5ixoRwlizjexemEmY/nfynVcN7ZSkmX71LHzJOgTyBXkVSrsEQFkk
	SuBuKKwz0xvKsARylgyX9PRrBOMOhTFBzNaYjF3QBAOTofgAgzUqnEGUqS0K84d8K0swboVk6BgBp
	7ZHyCjwslcxrbvPlmtBXvWNB8112IX8SonrIfM7rEEl/Eme//4bZ3Ji4dDU+CroOptw7ePPVejyZ2
	r+gLqt/RnJmdR1+wkVRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJrFv-002M4J-2G;
	Thu, 13 Jul 2023 08:00:55 +0000
Received: from mail-yb1-f173.google.com ([209.85.219.173])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJrFs-002M1U-2z
	for linux-phy@lists.infradead.org;
	Thu, 13 Jul 2023 08:00:54 +0000
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-bff27026cb0so381088276.1
        for <linux-phy@lists.infradead.org>; Thu, 13 Jul 2023 01:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689235251; x=1691827251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y4q6Dp1a5ZPR38LPAzFTuFEyWMCfsyFFquI2ZhIpkvY=;
        b=SacDKYEeZWKZ1aEws1SldC60lDivZzbP33O1B/qw1AcsQjYeLD8qyCKkAF3Uk8LrEd
         0AcOiKNAMiqhml/rS4jbN0FhBXQ2mPhAjwRQz3rVZZfZ4XuWSKk+QXlTiMylYbEb/KMT
         LZVYi31+cEO3+P6rl8X7caLn9HeAxSV/7954iSVOLIemsadpmrnn5u/LskDOksBVeYm7
         +dz93YsPSR5ewlaEegJq/jR9pw8oV+xbxv2WBOZRfvW0Faoez/C+J77sZQDenL1i1a13
         2h9foid5yb7bhL/2UvqhpohHKGOoRrZbfWqQ/eCbjTfutG1XhfifZuP4quFd06S+r6RO
         Emkg==
X-Gm-Message-State: ABy/qLbEJnDVtUzBssxevifsxc8UDSlnA1/Iozc3IUbJNThZbAo7AJWY
	+5OgmNcNeiqHGtAt5uI7xZQB0PNYSvoV0D4Q
X-Google-Smtp-Source: APBJJlHXmMPjR/EzFR5LbwAaPYVWI1DZM6Z7o80l0IQWHLcP7aN/PNfQfeYv4wQTLAbRG1dS2blmSg==
X-Received: by 2002:a25:e30d:0:b0:c92:5f07:2d2c with SMTP id z13-20020a25e30d000000b00c925f072d2cmr756522ybd.12.1689235251514;
        Thu, 13 Jul 2023 01:00:51 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id e3-20020a056902034300b00c3a96009bdfsm1270815ybs.35.2023.07.13.01.00.51
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 01:00:51 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-c84fd44593aso392977276.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Jul 2023 01:00:51 -0700 (PDT)
X-Received: by 2002:a25:2fd5:0:b0:c70:d138:51b2 with SMTP id
 v204-20020a252fd5000000b00c70d13851b2mr778725ybv.25.1689235251043; Thu, 13
 Jul 2023 01:00:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230705081856.13734-1-frank.li@vivo.com> <168909383153.208679.15343948792914219046.b4-ty@kernel.org>
 <c3373ebe-2f52-bed7-7f59-98e1268c9af2@linux-m68k.org> <ZK6O2b88Nz6J2JeN@matsya>
In-Reply-To: <ZK6O2b88Nz6J2JeN@matsya>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Jul 2023 10:00:37 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXiyk6NSGJWwby9VoP98=g0xu-SRAkDtxYqA-DcnOLmrQ@mail.gmail.com>
Message-ID: <CAMuHMdXiyk6NSGJWwby9VoP98=g0xu-SRAkDtxYqA-DcnOLmrQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] dmaengine: qcom: gpi: Use devm_platform_get_and_ioremap_resource()
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Yangtao Li <frank.li@vivo.com>, 
	linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_010052_963254_58CEDD5D 
X-CRM114-Status: GOOD (  21.83  )
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

SGkgVmlub2QsCgpPbiBXZWQsIEp1bCAxMiwgMjAyMyBhdCAxOjMw4oCvUE0gVmlub2QgS291bCA8
dmtvdWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4gT24gMTItMDctMjMsIDExOjMzLCBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gPiBPbiBUdWUsIDExIEp1bCAyMDIzLCBWaW5vZCBLb3VsIHdyb3Rl
Ogo+ID4gPiBPbiBXZWQsIDA1IEp1bCAyMDIzIDE2OjE4OjUyICswODAwLCBZYW5ndGFvIExpIHdy
b3RlOgo+ID4gPiA+IENvbnZlcnQgcGxhdGZvcm1fZ2V0X3Jlc291cmNlKCksIGRldm1faW9yZW1h
cF9yZXNvdXJjZSgpIHRvIGEgc2luZ2xlCj4gPiA+ID4gY2FsbCB0byBkZXZtX3BsYXRmb3JtX2dl
dF9hbmRfaW9yZW1hcF9yZXNvdXJjZSgpLCBhcyB0aGlzIGlzIGV4YWN0bHkKPiA+ID4gPiB3aGF0
IHRoaXMgZnVuY3Rpb24gZG9lcy4KPiA+ID4KPiA+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4gPgo+
ID4gPiBbMS81XSBkbWFlbmdpbmU6IHFjb206IGdwaTogVXNlIGRldm1fcGxhdGZvcm1fZ2V0X2Fu
ZF9pb3JlbWFwX3Jlc291cmNlKCkKPiA+ID4gICAgICBjb21taXQ6IGQ5MzEzZDlmMWZiYzE0Y2Fl
NTE0N2M1MTMwYmVhNTRhYTc2YWQ2NWYKPiA+ID4gWzIvNV0gZG1hZW5naW5lOiBxY29tX2hpZG1h
OiBVc2UgZGV2bV9wbGF0Zm9ybV9nZXRfYW5kX2lvcmVtYXBfcmVzb3VyY2UoKQo+ID4gPiAgICAg
IGNvbW1pdDogYTE4OTEwN2RlYjU3NGZkMDgwMThiYmYyZmU1Y2Q4NjQ1MGE1NGIxMwo+ID4gPiBb
My81XSBkbWFlbmdpbmU6IHFjb206IGhpZG1hX21nbXQ6IFVzZSBkZXZtX3BsYXRmb3JtX2dldF9h
bmRfaW9yZW1hcF9yZXNvdXJjZSgpCj4gPiA+ICAgICAgY29tbWl0OiBmZTZjMjYyMjQ3M2YzNzU2
YTA5YmQ2YzQyY2ZmY2E2ZmJkY2UzOTFjCj4gPiA+IFs0LzVdIGRtYWVuZ2luZTogc2hkbWFjOiBD
b252ZXJ0IHRvIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpCj4gPiA+ICAgICAgY29t
bWl0OiAwOTc2NDIxYzVhMzM5YjFiMWE4OWNmYmE0NDcxYTZkZTc2MTEzMGVkCj4gPiA+IFs1LzVd
IGRtYWVuZ2luZTogc3RtMzItZG1hOiBVc2UgZGV2bV9wbGF0Zm9ybV9nZXRfYW5kX2lvcmVtYXBf
cmVzb3VyY2UoKQo+ID4gPiAgICAgIGNvbW1pdDogYjQwMmE3ZWVhYTM1YWFhMzMwMGE0YmE2YmQ1
YjM4MTExMmFlMTgzYwo+ID4KPiA+IEkgbm90aWNlZCBhbGwgeW91ciBuZXcgZG1hZW5naW5lWzFd
IGFuZCBwaHlbMl0gY29tbWl0cyBjb250YWluIGEKPiA+ICJNZXNzYWdlLUlEOiIgdGFnLiAgUHJl
c3VtYWJsZSB5b3UgYWRkZWQgYSBnaXQgaG9vayBmb3IgdGhhdD8KPgo+IFRoYW5rcyBmb3IgcG9p
bnRpbmcgdGhhdCBvdXQsIHllcyBzb21ldGhpbmcgaXMgbWVzc2VkIHVwIGZvciBtZS4KPgo+ID4g
SG93ZXZlciwgdGhlIHN0YW5kYXJkIHdheSBpcyB0byBhZGQgYSBMaW5rOiB0YWcgcG9pbnRpbmcg
dG8gbG9yZQo+ID4gaW5zdGVhZCwgY2ZyLiBbM10uCj4KPiBZZXAgYW5kIGlmIHlvdSBsb29rIGF0
IHRoZSBkbWFlbmdpbmUgYW5kIHBoeSBjb21taXRzIGZvciA2LjQgdGhleSBoYXZlCj4gIkxpbmsi
IGluIHRoZW0sIHNvIHNvbWV0aGluZyBpcyBub3Qgd29ya2luZywgbGV0IG1lIGZpeCB0aGF0IHVw
LgoKU29ycnksIGhhZG4ndCBub3RpY2VkIHRoYXQsIHNvIEkgYXNzdW1lZCB5b3Ugd2VyZSBhIG5l
dyB1c2VyIDstKQoKSSBzYXcgeW91IGhhdmUgYWxyZWFkeSB1cGRhdGVkIHlvdXIgYnJhbmNoZXMs
IGJ1dCBGVFIsIHRoZSBpc3N1ZQp3YXMgY2F1c2VkIGJ5IGEgbmV3IHZlcnNpb24gb2YgZ2l0LCB3
aGljaCBicm9rZSB0aGUgaG9vaywgY2ZyLiBjb21taXQKMmJiMTllNzQwZTliM2ViNCAoIkRvY3Vt
ZW50YXRpb246IHVwZGF0ZSBnaXQgY29uZmlndXJhdGlvbiBmb3IgTGluazoKdGFnIikgaW4gdjYu
NS1yYzEuCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0
CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQg
aWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3
aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEkn
bSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0
aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMg
VG9ydmFsZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
