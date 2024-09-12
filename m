Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 778D9EED60E
	for <linux-phy@archiver.kernel.org>; Thu, 12 Sep 2024 14:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1gYq4Yw+5dMsBtvldMNHUnc/V0qOER4z7lgMLH7Pec=; b=VOQFlQS7vhwA2U
	pG+7TxG0v5d6MswxeQ8AQxUnIfOqr4CHKx8qtdgE6ya0FhYCFTWohsEJIq/H/9aZJc97sPUZ0j+Rj
	6PVQq157yWG4Am3OhArp9Ca/eQKIMDcqhqavO38vGlEFxnMoh4wKYj8LDsJQLE/myryZCPKEldKp6
	xFxevAhUJ5cCSvOBAttn/wmJdpqu99RLV9iPRwIOsc1H5fgvH2yPixhOkSkiXHXHgUzi+SXeYhvJm
	Yy0j/B84O04SMith2TBxxCw6huwsPOmRaNmsiPI2bMEphIae7/UDkjuwzGfUyji24sorCJU0jVjvk
	2PJPnBLWaxWMUZMNSnNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sol8l-0000000DQpH-408J;
	Thu, 12 Sep 2024 14:49:47 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sol8j-0000000DQnm-1gGB
	for linux-phy@lists.infradead.org;
	Thu, 12 Sep 2024 14:49:46 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-6db9f7969fdso9003897b3.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Sep 2024 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726152583; x=1726757383; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2sYEXediN52kSljXl1Ler+JGcwYjaz8Qt5oRB8w8bhQ=;
        b=rbXZfhf4h461hfmZqvNba3UR93Tl1K7KspsxuF3Ih90Ru4iZw+aNjjMMULvXHcBwS2
         +Imv8G2HS45qTQ13Cqt+sUDHD3Syh6BmLqE9H41F+6kTrvfLF3DfN8kzOqGRwxwBmQ4X
         bM5mEf9x/6dePISEBzbhy1aGjgN0vYk2FrlcQggbsmjyzDGg7Qg6u3gVDA53JvMGXL1s
         blgPMsfrwrt62h0Rg0qqG3zeXcaV8Y+nMnB+6PgVuCZFdK93Kjz3neVJaIbSNc5rz+1V
         stcNGaNHSkgT+r0HBQ2dNf6ZuxBvcxeD1qxWre/wTFFrII95bIjx2Tzm4lxbgXyZvVJT
         IlPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726152583; x=1726757383;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2sYEXediN52kSljXl1Ler+JGcwYjaz8Qt5oRB8w8bhQ=;
        b=u9MXsFvbrndWFKkIcn78trd51tX0lnYPrsGMtGDFugzC5eDBadNYhtptuUEH7iydSH
         CBjnO36AsRdlyYrnlvFX5cdGo1Gjbf5LvPMNBWsN3mryyzPWRV3uBMtJOgH9H3IbhHZV
         hSQPWGFLTrJHqla8C0MaH8ipF3gSCuea4Y3XUxNxbsdM6nE4RHVjvZMfYXHIA3WR95nL
         y9QZ8sbWuMO4Y7IPJu8TFwzXjAE62ICIa8fYz/hlvJkYNL8zNeJo0n53DdjyIelP895D
         6gMBJVGgXdxX0FR4cg6XT61Ftvj+lUeKgO0lo2e7WU5AGVTHHOsyTp2ItAu10xLNt26K
         40WA==
X-Forwarded-Encrypted: i=1; AJvYcCUZxDj7t9KViwWHJL39H9aDMsVHz4eeh6WIATIMwb4+q9NNo8Rdt4F7qPSZHEV2CkoV+p8vaznu9QI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzx+6Amp1Q4PIiSQnz2Zr7Z0FA1xblZmL7l29Kjlv+1o2poHCSo
	ZYHqAnACnyKaK7XyfScURCUV7Q2U5zjT2BlLZwOfDnG/N1JRLYetHZaC9a5zvJfWcJTn9CawsHj
	t0r97uz4PdaABF+Fie6C8eIXod88LLXXCciPH+A==
X-Google-Smtp-Source: AGHT+IE2KRM0NoVbC2puhshNbVNwKJPWz+ICZnqayewbZXPGTeWmAxNTUENEBP7DBBZHS7uwEyDNePXQxVX5eOsi/TM=
X-Received: by 2002:a05:690c:4483:b0:6d5:e768:4779 with SMTP id
 00721157ae682-6db9542f7cbmr78436847b3.22.1726152582673; Thu, 12 Sep 2024
 07:49:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
 <20240827063631.3932971-9-quic_qianyu@quicinc.com> <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
 <20240827165826.moe6cnemeheos6jn@thinkpad> <26f2845f-2e29-4887-9f33-0b5b2a06adb6@quicinc.com>
 <20240911153228.7ajcqicxnu2afhbp@thinkpad> <9222ef18-2eef-4ba3-95aa-fae540c06925@quicinc.com>
 <d5468dd2-0f81-4d89-a3bd-a546b2395ca6@kernel.org> <20240912144439.fnne4x7qvggveve2@thinkpad>
In-Reply-To: <20240912144439.fnne4x7qvggveve2@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 12 Sep 2024 17:49:31 +0300
Message-ID: <CAA8EJppSFb+Me6w5vUpmbogQ4DS2=15FmHu4nzGz2POWQPouwA@mail.gmail.com>
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, andersson@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	abel.vesa@linaro.org, quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, 
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_074945_464859_7B04E25E 
X-CRM114-Status: GOOD (  26.42  )
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

T24gVGh1LCAxMiBTZXB0IDIwMjQgYXQgMTc6NDUsIE1hbml2YW5uYW4gU2FkaGFzaXZhbQo8bWFu
aXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBTZXAgMTIs
IDIwMjQgYXQgMDQ6MTU6NTZQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3cm90ZToKPiA+IE9uIDEy
LjA5LjIwMjQgMzozOSBQTSwgUWlhbmcgWXUgd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIDkvMTEvMjAy
NCAxMTozMiBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gPj4gT24gV2VkLCBT
ZXAgMTEsIDIwMjQgYXQgMDQ6MTc6NDFQTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6Cj4gPiA+Pj4g
T24gOC8yOC8yMDI0IDEyOjU4IEFNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+
Pj4+IE9uIFR1ZSwgQXVnIDI3LCAyMDI0IGF0IDAyOjQ0OjA5UE0gKzAzMDAsIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4gPiA+Pj4+PiBPbiBUdWUsIDI3IEF1ZyAyMDI0IGF0IDA5OjM2LCBRaWFu
ZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+IHdyb3RlOgo+ID4gPj4+Pj4+IE9uIHBsYXRm
b3JtIHgxZTgwMTAwIFFDUCwgUENJZTMgaXMgYSBzdGFuZGFyZCB4OCBmb3JtIGZhY3Rvci4gSGVu
Y2UsIGFkZAo+ID4gPj4+Pj4+IHN1cHBvcnQgdG8gdXNlIDMuM3YsIDMuM3YgYXV4IGFuZCAxMnYg
cmVndWxhdG9ycy4KPiA+ID4+Pj4+IEZpcnN0IG9mIGFsbCwgSSBkb24ndCBzZWUgY29ycmVzcG9u
ZGluZyBiaW5kaW5ncyBjaGFuZ2UuCj4gPiA+Pj4+Pgo+ID4gPj4+Pj4gU2Vjb25kLCB0aGVzZSBz
dXBwbGllcyBwb3dlciB1cCB0aGUgc2xvdCwgbm90IHRoZSBob3N0IGNvbnRyb2xsZXIKPiA+ID4+
Pj4+IGl0c2VsZi4gQXMgc3VjaCB0aGVzZSBzdXBwbGllcyBkbyBub3QgYmVsb25nIHRvIHRoZSBo
b3N0IGNvbnRyb2xsZXIKPiA+ID4+Pj4+IGVudHJ5LiBQbGVhc2UgY29uc2lkZXIgdXNpbmcgdGhl
IHB3cnNlcSBmcmFtZXdvcmsgaW5zdGVhZC4KPiA+ID4+Pj4+Cj4gPiA+Pj4+IEluZGVlZC4gRm9y
IGxlZ2FjeSByZWFzb25zLCBzbG90IHBvd2VyIHN1cHBsaWVzIHdlcmUgcG9wdWxhdGVkIGluIHRo
ZSBob3N0Cj4gPiA+Pj4+IGJyaWRnZSBub2RlIGl0c2VsZiB1bnRpbCByZWNlbnRseSBSb2Igc3Rh
cnRlZCBvYmplY3RpbmcgaXQgWzFdLiBBbmQgaXQgbWFrZXMKPiA+ID4+Pj4gcmVhbCBzZW5zZSB0
byBwdXQgdGhlc2Ugc3VwcGxpZXMgaW4gdGhlIHJvb3QgcG9ydCBub2RlIGFuZCBoYW5kbGUgdGhl
bSBpbiB0aGUKPiA+ID4+Pj4gcmVsZXZhbnQgZHJpdmVyLgo+ID4gPj4+Pgo+ID4gPj4+PiBJJ20g
c3RpbGwgZXZhbHVhdGluZyB3aGV0aGVyIHRoZSBoYW5kbGluZyBzaG91bGQgYmUgZG9uZSBpbiB0
aGUgcG9ydGRydiBvcgo+ID4gPj4+PiBwd3JjdGwgZHJpdmVyLCBidXQgaGF2ZW4ndCByZWFjaGVk
IHRoZSBjb25jbHVzaW9uLiBQd3JjdGwgc2VlbXMgdG8gYmUgdGhlIGlkZWFsCj4gPiA+Pj4+IGNo
b2ljZSwgYnV0IEkgc2VlIGEgZmV3IGlzc3VlcyByZWxhdGVkIHRvIGhhbmRsaW5nIHRoZSBPRiBu
b2RlIGZvciB0aGUgcm9vdAo+ID4gPj4+PiBwb3J0Lgo+ID4gPj4+Pgo+ID4gPj4+PiBIb3BlIEkn
bGwgY29tZSB0byBhIGNvbmNsdXNpb24gaW4gdGhlIG5leHQgZmV3IGRheXMgYW5kIHdpbGwgdXBk
YXRlIHRoaXMgdGhyZWFkLgo+ID4gPj4+Pgo+ID4gPj4+PiAtIE1hbmkKPiA+ID4+Pj4KPiA+ID4+
Pj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNDA2MDQyMzU4MDYuR0ExOTAz
NDkzLXJvYmhAa2VybmVsLm9yZy8KPiA+ID4+PiBIaSBNYW5pLCBkbyB5b3UgaGF2ZSBhbnkgdXBk
YXRlcz8KPiA+ID4+Pgo+ID4gPj4gSSdtIHdvcmtpbmcgd2l0aCBCYXJ0b3N6IHRvIGFkZCBhIG5l
dyBwd3JjdGwgZHJpdmVyIGZvciByb290cG9ydHMuIEFuZCB3ZSBhcmUKPiA+ID4+IGRlYnVnZ2lu
ZyBhbiBpc3N1ZSBjdXJyZW50bHkuIFVuZm9ydHVuYXRlbHksIHRoZSBwcm9ncmVzcyBpcyB2ZXJ5
IHNsb3cgYXMgSSdtIG9uCj4gPiA+PiB2YWNhdGlvbiBzdGlsbC4KPiA+ID4+Cj4gPiA+PiBXaWxs
IHBvc3QgdGhlIHBhdGNoZXMgb25jZSBpdCBnb3QgcmVzb2x2ZWQuCj4gPiA+Pgo+ID4gPj4gLSBN
YW5pCj4gPiA+IE9LLCB0aGFua3MgZm9yIHlvdXIgdXBkYXRlLgo+ID4KPiA+IFFpYW5nLCB5b3Ug
Y2FuIHN0aWxsIHJlc3VibWl0IHRoZSByZXN0IG9mIHRoZSBwYXRjaGVzIHdpdGhvdXQgaGF2aW5n
Cj4gPiB0byB3YWl0IG9uIHRoYXQgdG8gYmUgcmVzb2x2ZWQKPiA+Cj4KPiBJbiB0aGF0IGNhc2Us
IHRoZSBzbG90IHN1cHBsaWVzIHNob3VsZCBiZSBkZXNjcmliZWQgaW4gdGhlIFBDSWUgYnJpZGdl
LgoKUGF0Y2hlcyAxLTYgZG9uJ3Qgc2VlbSB0byBkZXBlbmQgb24gc2xvdCBzdXBwbGllcywgc28g
dGhleSBjYW4gYmUKc3VibWl0dGVkIHNlcGFyYXRlbHkuCgo+Cj4gLSBNYW5pCj4KPiA+IEtvbnJh
ZAo+Cj4gLS0KPiDgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgoKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
