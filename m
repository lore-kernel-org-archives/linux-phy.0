Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27124E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pa680i32O38LfXbwxmbju+GUtdlT0rOxYGlDp8+zL+4=; b=WMApfX5HTmxN9R
	SW6saVf+WbmW51gWEFi5KzZx5n6patTlPpZZA9Vd9kOZUuIh7/23QmAUk2xthgBSpmGavmZCm4nvy
	dOnPWH7o1KULxDIbDwUD8cCivdrgWFRZZaDc+iE+n/w2F6YEVPezpXs6vyeUq/XzLHAndUuHu0aRx
	y89resgsq80V2F+6sqy9HKrEKduzA4wVf/OUVGicd44llniAsw0/xt1b0Zf0NDRfSkj2CuD8fmxnW
	6ksMq0ON8f2s64In2dZRFzEmdwZqhQU6wiJ279oXx3x30XqxYHnuX87ElLtS/MDSwa4kurA9WGnG8
	sZpZAhbG9rSP5GcfKrcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1rc-0000000BtvO-3fA1;
	Tue, 10 Dec 2024 15:09:28 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1rZ-0000000Btub-0Yl8
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:09:27 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-30033e07ef3so42566871fa.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733843363; x=1734448163; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ONPoAWCr/z6lJfjDFKtgqfFAw1BGCZer+GCPiaXmPhw=;
        b=wjR62j8fTwgUQysv96LKaOsmAnXWT54MWKSAkXwe7Mc4G7insJAzlsbQdgWE4RKnuM
         VXy1WmvrAU3JeMgPrjZ4fbNFRdcoGFULRb1C7hTDsE/GwfvAFxxdbAnplAdxFUnfjrE2
         0nTvHy2Uf60AbiAl75NW3IQbcXS1shGYkOQ8oA1yr+3gk8K0o9R7zKQBSRKWCV+FZ3Od
         YWF1LuSgBBJhUH/dXfo6eYaEirqfd8Nnn0wV3/MAkpe6FqLEP4LJIB5G1r7QFJh3hrzA
         M1J9YlZNH4lxAWlQzwdbg2qBBw321jR2EAaeXqFkUHdcgceKJQNP4YT5E/ph7V2Xq4pM
         vsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733843363; x=1734448163;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ONPoAWCr/z6lJfjDFKtgqfFAw1BGCZer+GCPiaXmPhw=;
        b=bupc13gn+hzDSBrsqp29lZewqkQ39IKKLBGdOuw4XOTtajeyAkVtlZfMm1mQOl+6SJ
         JAmz7bFG/PoutVKs1DBkddEshCfuyRAYVcOt9OTUGn71/MgJd78nhszWdq1HLiZ+ECjo
         XV5rQ9Vcy8mBovA0D3FTK9S3elNnp3waACJpLDuI/89RXtc9k0JnmMd4CaF1dyhodHjy
         nMbKvb1thi+VlrBAhvxbn99pNDQl8XV7m/O1CMKqYAwXf/FprcWZU488UjRa72tk+hm+
         rWUtZUxocbG9Ta3WBoKcpyypO6xShwLaCsnUT7HAfj27Z00ZvQcwpb4BhjtQUsQBBKup
         cotA==
X-Forwarded-Encrypted: i=1; AJvYcCWAZOjPf+hWC4pDKBV51QGTEe1ze13F/pCYcXR5K3dG11UStgSIvAJKhvATMMILLfxn32u8ToJWbY0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr6Om/2sl3XZn2BPcNP9JBo83njoxOcxmEUIre5pB13nlFJ3M/
	IE981hs5E11PLfXh/jvoAev0iFyKvZ8hrMMW67OA2mqut7q/yBtQtpS/9lnHiTY=
X-Gm-Gg: ASbGncuKF0gethtG4M4f8y+HGCIzzf8RhpehlxYGaAcCkY4AysbRKmJffh4OaGGibQx
	PZfUcEj1rGGB/xeP+6ZabutwAAFUMy7wyC+x8v0X5ej+d333pN6L9XULW5xbOtjUROTB2VzLrTn
	ImP/nHXw6mIsNdYWoosx7ognhTrfJ+BL5jTJCUImbMlcBXKy+bVtSVCrCZ6gVlErK6ZO+/4+8BO
	LW9ZW/yc2TXtXaQrqEqJBADhxWEq1GuyNpfo/P9XuWmWEuXVhRjlLJdmJj4bG9dBsvFJNYZcWI6
	MDUCWu4gmyUS656c0p1N6inFn6uJ+p+RFg==
X-Google-Smtp-Source: AGHT+IH4LG5o5SbyEh1Vovj71WLwSfFbBGhk7NJh/k58qLpSj2p2TBBGrOFSDDq9rnPlmsaGShNmLg==
X-Received: by 2002:a2e:be0b:0:b0:2ff:b8f5:5a17 with SMTP id 38308e7fff4ca-3023282c1femr12568441fa.5.1733843363188;
        Tue, 10 Dec 2024 07:09:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-302259416c5sm5907321fa.6.2024.12.10.07.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 07:09:22 -0800 (PST)
Date: Tue, 10 Dec 2024 17:09:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 3/8] phy: qcom: qmp-usbc: Add DP phy mode support on
 QCS615
Message-ID: <iqcofcntirmlwcpyfr4yabymqfcgyrij57bibf337tmxpa73t6@npkt6wquenf6>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-3-09a4338d93ef@quicinc.com>
 <CAA8EJppOR_UXoVpMt-dhfWdCz3UNfsXGdz8X9NqpaSmYj3AZDg@mail.gmail.com>
 <5ea14162-567b-462d-be02-b73b954b7507@quicinc.com>
 <5whv4z7u6fkfwlv5muox5dmv6fow4mga76ammapw7wph7vwv3f@xibcjdfqorgf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5whv4z7u6fkfwlv5muox5dmv6fow4mga76ammapw7wph7vwv3f@xibcjdfqorgf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_070926_000173_94AB6AA6 
X-CRM114-Status: GOOD (  30.15  )
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

T24gVGh1LCBEZWMgMDUsIDIwMjQgYXQgMDg6MzE6MjRQTSArMDIwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBUaHUsIERlYyAwNSwgMjAyNCBhdCAwOToyNjo0N1BNICswODAwLCBYaWFu
Z3h1IFlpbiB3cm90ZToKPiA+IAo+ID4gCj4gPiBPbiAxMS8yOS8yMDI0IDEwOjMzIFBNLCBEbWl0
cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gPiBPbiBGcmksIDI5IE5vdiAyMDI0IGF0IDA5OjU5LCBY
aWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBxdWljaW5jLmNvbT4gd3JvdGU6Cj4gPiA+Pgo+ID4g
Pj4gRXh0ZW5kZWQgRFAgc3VwcG9ydCBmb3IgUUNTNjE1IFVTQiBvciBEUCBwaHkuIERpZmZlcmVu
dGlhdGVkIGJldHdlZW4KPiA+ID4+IFVTQkMgYW5kIERQIFBIWSB1c2luZyB0aGUgbWF0Y2ggdGFi
bGXigJlzIHR5cGUsIGR5bmFtaWNhbGx5IGdlbmVyYXRpbmcKPiA+ID4+IGRpZmZlcmVudCB0eXBl
cyBvZiBjZmcgYW5kIGxheW91dCBhdHRyaWJ1dGVzIGR1cmluZyBpbml0aWFsaXphdGlvbiBiYXNl
ZAo+ID4gPj4gb24gdGhpcyB0eXBlLiBTdGF0aWMgdmFyaWFibGVzIGFyZSBzdG9yZWQgaW4gY2Zn
LCB3aGlsZSBwYXJzZWQgdmFsdWVzCj4gPiA+PiBhcmUgb3JnYW5pemVkIGludG8gdGhlIGxheW91
dCBzdHJ1Y3R1cmUuCj4gPiA+IAo+ID4gPiBXZSBkaWRuJ3QgaGF2ZSBhbiB1bmRlcnN0YW5kaW5n
IC8gY29uY2x1c2lvbiB3aGV0aGVyCj4gPiA+IHFjb20sdXNiLXNzcGh5LXFtcC11c2IzLW9yLWRw
IFBIWXMgYXJlIGFjdHVhbGx5IGEgc2luZ2xlIGRldmljZSAvIFBIWQo+ID4gPiBvciB0d28gUEhZ
cyBiZWluZyBwbGFjZWQgbmV4dCB0byBlYWNoIG90aGVyLiBDb3VsZCB5b3UgcGxlYXNlIHN0YXJ0
Cj4gPiA+IHlvdXIgY29tbWl0IG1lc3NhZ2UgYnkgZXhwbGFpbmluZyBpdD8gT3IgZXZlbiBiZXR0
ZXIsIG1ha2UgdGhhdCBhIHBhcnQKPiA+ID4gb2YgdGhlIGNvdmVyIGxldHRlciBmb3IgYSBuZXcg
c2VyaWVzIHRvdWNoaW5nIGp1c3QgdGhlIFVTQkMgUEhZCj4gPiA+IGRyaXZlci4gRFAgY2hhbmdl
cyBkb24ndCBoYXZlIGFueXRoaW5nIGluIGNvbW1vbiB3aXRoIHRoZSBQSFkgY2hhbmdlcywKPiA+
ID4gc28geW91IGNhbiBzcGxpdCB0aGUgc2VyaWVzIGludG8gdHdvLgo+ID4gPiAKPiA+IEJlZm9y
ZSBpbXBsZW1lbnQgRFAgZXh0ZW5zaW9uLCB3ZSBoYXZlIGRpc2N1c3NlZCB3aXRoIGFiaGluYXYg
YW5kIGtyaXNobmEgYWJvdXQgd2hldGhlciB1c2UgY29tYm8sIHVzYmMgb3Igc2VwYXJhdGUgcGh5
Lgo+IAo+IFdoYXQgaXMgIkRQIGV4dGVuc2lvbiI/Cj4gCj4gPiAKPiA+IFdlIGlkZW50aWZpZWQg
dGhhdCBEUCBhbmQgVVNCIHNoYXJlIHNvbWUgY29tbW9uIGNvbnRyb2xzIGZvciBwaHlfbW9kZSBh
bmQgb3JpZW50YXRpb24uCj4gPiBTcGVjaWZpY2FsbHksICdUQ1NSX1VTQjNfMF9EUF9QSFlNT0RF
JyBjb250cm9scyB3aG8gbXVzdCB1c2UgdGhlIGxhbmVzIC0gVVNCIG9yIERQLAo+ID4gd2hpbGUg
UEVSSVBIX1NTX1VTQjBfVVNCM1BIWV9QQ1NfTUlTQ19UWVBFQ19DVFJMIGNvbnRyb2xzIHRoZSBv
cmllbnRhdGlvbi4KPiA+IEl0IHdvdWxkIGJlIG1vcmUgZWZmaWNpZW50IGZvciBhIHNpbmdsZSBk
cml2ZXIgdG8gbWFuYWdlIHRoZXNlIGNvbnRyb2xzLiAKPiAKPiBUaGUgcXVlc3Rpb24gaXMgYWJv
dXQgdGhlIGhhcmR3YXJlLCBub3QgYWJvdXQgdGhlIGRyaXZlci4KPiAKPiA+IEFkZGl0aW9uYWxs
eSwgdGhpcyBQSFkgZG9lcyBub3Qgc3VwcG9ydCBBbHQgTW9kZSwgYW5kIHRoZSB0d28gY29udHJv
bCByZWdpc3RlcnMgYXJlIGxvY2F0ZWQgaW4gc2VwYXJhdGUgYWRkcmVzcyBzcGFjZXMuIAo+ID4g
VGhlcmVmb3JlLCBldmVuIHRob3VnaCB0aGUgb3JpZW50YXRpb24gZm9yIERQIG9uIHRoaXMgcGxh
dGZvcm0gaXMgYWx3YXlzIG5vcm1hbCBhbmQgY29ubmVjdGVkIHRvIHRoZSB2aWRlbyBvdXRwdXQg
Ym9hcmQsIAo+ID4gd2Ugc3RpbGwgZGVjaWRlZCB0byBiYXNlIGl0IG9uIHRoZSBVU0JDIGV4dGVu
c2lvbi4KPiAKPiBDb3VsZCB5b3UgcGxlYXNlIGNsYXJpZnksIGRvIHVzYjMtb3ItZHAgUEhZcyBz
dXBwb3J0IERQLW92ZXItVVNCLUM/IEkKPiB0aG91Z2h0IHRoYXQgdXNiYy1vci1kcCBwbGF0Zm9y
bXMgc3VwcG9ydCB0aGF0LCBidXQgdGhleSBkb24ndAo+IHN1cHBvcnQgRFArVVNCIHBpbiBjb25m
aWd1cmF0aW9uLiBOb3RlLCB0aGUgcXVlc3Rpb24gaXMgYnJvYWRlciB0aGFuCj4ganVzdCBRQ1M2
MTUsIGl0IGNvdmVycyB0aGUgUEhZIHR5cGUgaXRzZWxmLgo+IAo+IEFsc28sIGlzIFRDU1IgY29u
ZmlndXJhdGlvbiByZWFkL3dyaXRlIG9yIHJlYWQtb25seT8gQXJlIHdlIHN1cHBvc2VkIHRvCj4g
c2V0IHRoZSByZWdpc3RlciBmcm9tIE9TIG9yIGFyZSB3ZSBzdXBwb3NlZCB0byByZWFkIGl0IGFu
ZCB0aHVzIGRldGVtaW5lCj4gdGhlIFBIWSBtb2RlPwoKQW55IHVwZGF0ZXMgb24gdGhlc2UgdHdv
IHRvcGljcz8KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
