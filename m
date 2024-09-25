Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16980C369AA
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 08:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/PlPhhej53ptpRhivvTndmeAJzHAffKaR0kk+VuDsk=; b=e8d5qPmK1IjNYj
	xwZWd0JBoyGTrya09usRebRbmGESUwjt9jwE8RlPUQ5lzfR0XtliL010swory61eJl+juzF1Y9VBz
	rSJg2f6VIBIBSJvgx4wmH5a8utmYG0cIINsLR6fuXSpa4npoe+wgrubuIdNGcVTHKwOv3a1ThaFys
	6HrdHVJdb4Si/4esiQahqiErztLJ4eM7kquHVov9GAhXj+05Al1NSwZDSssbStWGcYz8Ua1Oi022V
	GudfNGAZWLW44QUJXVwv2vikIy8Sz1AfnspegEWS5qc7gy2Ulf/Eeqp35yKTHuENM5yYLKcHq0lGH
	vilmDiWIKpQbpvCFPm7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stN5g-00000004Spq-3Ll5;
	Wed, 25 Sep 2024 08:09:40 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stN3Y-00000004SQv-2XGi
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 08:07:29 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-42cb1758e41so52500395e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Sep 2024 01:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727251647; x=1727856447; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YXVU8v0cgzQWSNcs1WDVL/U60/ljsd6Fh51Q9oFrZbQ=;
        b=nSekp2yRaNLniOEgFP7VBKAB63Kb9PiNRkwnZoXlo12RmmtMUJVaYGEgyZdfPQ7Mel
         lPIt6oudgukrP8INdbuYsucAiHIY78u8hIJyOW+/59A5b7gHeIPo1X2vJYbbK6vB5H1G
         3Ny2PMbqEM1UmE6TQgOuXXFA51WBe7ENS6SgX7n/1XV+kLptszuw2yzoBpuz30VFZ+AQ
         Yl6Oa7B/GfehcoILGm7ZxDvPda40kFqk3efu6ZQ1oZymBpMfUBPQCTex17WkI931Pc8O
         KNDDAnLlMq8J9Z98Uj4nz6mBNvOati88E8B+2z9Vx2N2iWGUKhXcQV1B75oRQTfOncSc
         /Yjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727251647; x=1727856447;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YXVU8v0cgzQWSNcs1WDVL/U60/ljsd6Fh51Q9oFrZbQ=;
        b=hz7030WM0yiUpZOWsz1DaTMYl2dg62CVKaiS8Lw83rgFJsHCVS/EWvahjeGAWLmiSm
         R2/2y9H5p22kehwbw5RZkikLEZS17/UcxDWEeAhtNje8SLKCNDoUG17IU3SMrY+SWzUS
         zf98EtdmDh4ZVoGhTWUFv0uOz5FGES0PMcU3NR6hVAjsKzBzmuCIGQwEFKvv3prdKckt
         FWtPpaAeQGApPTtkANvFK7D0vjHxBGmFzMTa07q7I+M8XTo8e16aReRvo6g6zG1GPQzp
         1hOs84lnPCNF1IuojWnNjjOvKOYWaTfd4nk+7YKwZUAdgaxhDo7zwJ/mx4wngI+YEihb
         4Njg==
X-Forwarded-Encrypted: i=1; AJvYcCVAnZ3nFpA5sEXL3dlb2wbgFbSYK5o6bbJRMK1UxImQLqBiq5krLWOounHDIOo5BY4n/nchRe3/blg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJymGIHM7OVpZMe+w+xPTSwVTZiJ/O70OxiE6fpGlsbldVdEtu
	uenebMqxWby2SnqqUm9YLP0E0jgMZPToQNLDoPzcFBvx+ZoRSBIkS9wD9bT5Aw==
X-Google-Smtp-Source: AGHT+IF3d7MLoLPQr09BqD6UIJTxajPOYuaB+UljK19usG1V4QJtMVf1uk6Oji0/gyQV5Qdf5Z5vNg==
X-Received: by 2002:adf:f88c:0:b0:374:bb34:9fd2 with SMTP id ffacd0b85a97d-37cc24ab641mr976949f8f.36.1727251646741;
        Wed, 25 Sep 2024 01:07:26 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cbc31f5c9sm3287058f8f.102.2024.09.25.01.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 01:07:26 -0700 (PDT)
Date: Wed, 25 Sep 2024 10:07:24 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
Message-ID: <20240925080724.vgkgmnqc44aoiarv@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
 <20240924135021.ybpyoahlpuvedma5@thinkpad>
 <ZvLX_wkh7_y7sjPZ@hovoldconsulting.com>
 <4368503f-fb33-4e6a-bef4-517e2b959400@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4368503f-fb33-4e6a-bef4-517e2b959400@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_010728_706406_F65463A1 
X-CRM114-Status: GOOD (  30.06  )
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

T24gV2VkLCBTZXAgMjUsIDIwMjQgYXQgMTE6NDc6MDJBTSArMDgwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gCj4gT24gOS8yNC8yMDI0IDExOjE3IFBNLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4gPiBPbiBU
dWUsIFNlcCAyNCwgMjAyNCBhdCAwMzo1MDoyMVBNICswMjAwLCBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgU2VwIDI0LCAyMDI0IGF0IDAzOjE0OjQzQU0gLTA3MDAs
IFFpYW5nIFl1IHdyb3RlOgo+ID4gPiA+IFgxRTgwMTAwIGhhcyBQQ0llIHBvcnRzIHRoYXQgc3Vw
cG9ydCB1cCB0byBHZW40IHg4IGJhc2VkIG9uIGhhcmR3YXJlIElQCj4gPiA+ID4gdmVyc2lvbiAx
LjM4LjAuCj4gPiA+ID4gCj4gPiA+ID4gQ3VycmVudGx5IHRoZSBvcHNfMV85XzAgd2hpY2ggaXMg
YmVpbmcgdXNlZCBmb3IgWDFFODAxMDAgaGFzIGNvbmZpZ19zaWQKPiA+ID4gPiBjYWxsYmFjayB0
byBjb25maWcgQkRGIHRvIFNJRCB0YWJsZS4gSG93ZXZlciwgdGhpcyBjYWxsYmFjayBpcyBub3QK
PiA+ID4gPiByZXF1aXJlZCBmb3IgWDFFODAxMDAgYmVjYXVzZSBpdCBoYXMgc21tdXYzIHN1cHBv
cnQgYW5kIEJERiB0byBTSUQgdGFibGUKPiA+ID4gPiB3aWxsIGJlIG5vdCBwcmVzZW50Lgo+ID4g
PiA+IAo+ID4gPiA+IEhlbmNlIGFkZCBzdXBwb3J0IGZvciBYMUU4MDEwMCBieSBpbnRyb2R1Y2lu
ZyBhIG5ldyBvcHMgYW5kIGNmZyBzdHJ1Y3R1cmVzCj4gPiA+ID4gdGhhdCBkb24ndCByZXF1aXJl
IHRoZSBjb25maWdfc2lkIGNhbGxiYWNrLiBUaGlzIGNvdWxkIGJlIHJldXNlZCBieSB0aGUKPiA+
ID4gPiBmdXR1cmUgcGxhdGZvcm1zIGJhc2VkIG9uIFNNTVV2My4KPiA+ID4gPiAKPiA+ID4gT29w
cy4uLiBJIGNvbXBsZXRlbHkgb3Zlcmxvb2tlZCB0aGF0IHlvdSBhcmUgbm90IGFkZGluZyB0aGUg
U29DIHN1cHBvcnQgYnV0Cj4gPiA+IGZpeGluZyB0aGUgZXhpc3Rpbmcgb25lIDooIFNvcnJ5IGZv
ciBzdWdnZXN0aW5nIGEgY29tbWl0IG1lc3NhZ2UgdGhhdCBjaGFuZ2VkCj4gPiA+IHRoZSBjb250
ZXh0Lgo+ID4gPiAKPiA+ID4gRm9yIHRoaXMsIHlvdSBjYW4gaGF2ZSBzb21ldGhpbmcgbGlrZToK
PiA+ID4gCj4gPiA+ICJQQ0k6IHFjb206IEZpeCB0aGUgb3BzIGZvciBYMUU4MDEwMCBTb0MKPiA+
ID4gCj4gPiA+IFgxRTgwMTAwIFNvQyBpcyBiYXNlZCBvbiBTTU1VdjMsIGhlbmNlIGl0IGRvZXNu
J3QgbmVlZCB0aGUgQkRGMlNJRCBtYXBwaW5nCj4gPiA+IHByZXNlbnQgaW4gdGhlIGV4aXN0aW5n
IGNmZ18xXzlfMCBvcHMuIFRoaXMgaXMgZml4ZWQgYnkgaW50cm9kdWNpbmcgbmV3IG9wcwo+ID4g
PiAnb3BzXzFfMzhfMCcgYW5kIGNmZyAnY2ZnXzFfMzhfMCcgc3RydWN0dXJlcy4gVGhlc2UgYXJl
IGV4YWN0bHkgc2FtZSBhcyB0aGUKPiA+ID4gMV85XzAgb25lcywgYnV0IHRoZXkgZG9uJ3QgaGF2
ZSB0aGUgJ2NvbmZpZ19zaWQoKScgY2FsbGJhY2sgdGhhdCBoYW5kbGVzIHRoZQo+ID4gPiBCREYy
U0lEIG1hcHBpbmcgaW4gdGhlIGhhcmR3YXJlLiBUaGVzZSBuZXcgc3RydWN0dXJlcyBjb3VsZCBh
bHNvIGJlIHVzZWQgYnkgdGhlCj4gPiA+IGZ1dHVyZSBTb0NzIG1ha2luZyB1c2Ugb2YgU01NVXYz
LiIKPiA+IERvbid0IHdlIG5lZWQgc29tZXRoaW5nIGxpa2UgdGhpcyBmb3Igc2M4MjgweHAgYW5k
IG90aGVyIHBsYXRmb3JtcyB1c2luZwo+ID4gU01NVXYzIGFzIHdlbGw/Cj4gRnJvbSB3aGF0IEkg
a25vdywgc2M4MjgweHAgYW5kIG90aGVyIHFjb20gcGxhdGZvcm1zIGFyZSBub3QgdXNpbmcgU01N
VXYzLgoKc2M4MjgweHAgaW5kZWVkIGhhcyBTTU1VdjMgZm9yIFBDSWUsIGJ1dCBJJ20gbm90IHN1
cmUgaG93IGl0IGlzIGNvbmZpZ3VyZWQuIFNvCm5vdCBjb21wbGV0ZWx5IHN1cmUgd2hldGhlciB3
ZSBjYW4gYXZvaWQgdGhlIG1hcHBpbmcgdGFibGUgb3Igbm90LgoKUWlhbmcsIHBsZWFzZSBjaGVj
ayB3aXRoIHRoZSBodyB0ZWFtIGFuZCBsZXQgdXMga25vdy4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
