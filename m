Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABFC8D25050
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 08:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zinEkUQ6jTKtrWLK0UfJ50AvxkFgHhEN07AVFL7+uxk=; b=tyWD+uucc72DWZ
	5xns+ztK4p5S0y8XYBEF0LVi7e0ZhuFpAFmydwFmY4QfeZTolBjf1bG0gZ1JhkUYhzrd1ZvUyVuxf
	EVTypcl3D49KTTpBycZEnuU558O6J544shV1ZHiLxG2Il9yzs0xCo6gV7oKCWK4YLHckGGVFaND5v
	T5WVZ9c8KXxDvWNBb/2UwhQrmUjXvQXtPJBpg2B3e1ZHmMpuiB1YmrzVi8P4RkCdTxnynQNebamh5
	xx/3SkUqyxi8lRuzcnlFPQv1AT2sQs4Jj0MncgN1b5Mb4fdb8iJa5jVfGZXX3afucDcg8D+PQP/wj
	JU4m3KE4x9lC1oRAhE0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDXv-000000050u8-3IvX;
	Mon, 12 Jan 2026 08:45:07 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDXs-000000050t3-0leB
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 08:45:05 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b87018f11e3so185532166b.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 00:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768207502; x=1768812302; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zG33qFZy8JznR/XKQTux3df5oiRWiq1GjUuErjUR0fA=;
        b=NbLQc1V52TGRgVl/zLmGX3zF4AJqcNICFNAQtqL43ldCDd429FBrgO4avRxIZ6c1vr
         heV1BPxUQyeqw6tU6X0NQY9JmX13n832dqg+ytzxpgvS5v31fRhgkFqPqHq+pP7q5VtF
         VXZttdiXeZy7BiOiJztXxa+2l9pPIH99LNI04JmemLDqEE2Wmi78K8E67ikcUaV1K38E
         rsTamfpMIcMHbMWLrxMpwtUYBJyvPxEHgqCSoyQy0ldTivr970RBt5NMV5LetjEmRBfs
         MPEPIXTCyOVgAkRTXxHJDjwWIGDJ4Q0xa7nVdt9xNN/T+ollGRWzj9pTCT6mucz0nwpT
         WZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768207502; x=1768812302;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zG33qFZy8JznR/XKQTux3df5oiRWiq1GjUuErjUR0fA=;
        b=tK4Ys3Da3X8Bchi3riN/BvciJ4GPTIYFi47VDuGz8l5uCBmKOoJKwSjF4RsovDm74E
         Kgx77aWD8kTuJl3I9DeDr+twWnhQHA9+LOFDSoqK07BGZuQ7gaBvIcCSCZGb3S3P+ACZ
         ZrjARdWDXvoLpIE4BDJEdg7sMU1qAJnTwRmH7+YumGlAE8tUou8NsB6V7O5ROJeKmXdo
         guf09mhicLYpYkDMHjhMng01lDrEPcxPxRPuYgpENjYdVnby7hg2jqDL2BlWcF5WtzDB
         9sQxLgHVTRCjgz6xUtp+CwRJ955hYrZgabZIV9WhGsg1DnoKO6ippxWIEVTonORtEBhr
         Nbhw==
X-Forwarded-Encrypted: i=1; AJvYcCXyfgznp4jWNt5U91zdMwkIa6lImnvrax1YAdSV6Hgc8JQKVVCLJ2CixHFWBvIS4VtrpbLeAgY5l6s=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywy5AQmGKvoAMYLaKLGIGYXiUcCYGPs8Y22CwM+nulDl/Me6zJ3
	qY6RwmT71pg/Hnw3ceWMmKDxbNwgXmm9bcqwrEwVsVB6US0matX6qGHqPRhWna2Eu7g=
X-Gm-Gg: AY/fxX5nZoff/a9HM9adzePIVx5+mgQQd5Tinlo3ood09OFar3ox49VuoqNITsIyge8
	ikD27Ti1jJrEGSm7vK7VuKYl5/5bdc0eJ4R6SdRerlROACLELfvjX43pQcuXba4rcwyGoJAORdL
	RitL1HLflX6j42pi8UpXlXlMgvIFbOa3cCpBEMst07Li1AVYrWepca77u4FKhPnhS3ImF3iGBIy
	qqLNRB65/zzDnxyBj71LA18JPw4FPrcjI7tuEzmdW9ZRg9jGjZUDcWL7eOZ1ha+OF58gtjfQM0t
	d+cmDYaPO+Uy0M14LUu1zcPdYpzBiyFG9wb7RDrs/mu10JqOXCKHKZrQKzJ4ZJDQfqqeakfTiog
	tMuLOh4LrFNWOSmDLKg3rFRT9jE7ZNf5WytYI5ZJDG55bp+iYdDDtlBeMtj2w/EyzRzk4WIwOyg
	pxDmsZ6u36cPFUuwfmdIIZOngIAc6HaOMQX+XAxOSGPRdSJUlgpZgj2W6Y
X-Google-Smtp-Source: AGHT+IGkp8lDjqeILjtMZ5LR+GI7r23/qVs+xlIeG79Zdksfi1ggdUWAo2X+W6SgmX5SlFgujBUWTQ==
X-Received: by 2002:a17:907:1c25:b0:b7b:e754:b5ba with SMTP id a640c23a62f3a-b8445033422mr1833442366b.56.1768207502041;
        Mon, 12 Jan 2026 00:45:02 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5187afsm1834263166b.58.2026.01.12.00.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 00:45:01 -0800 (PST)
Mime-Version: 1.0
Date: Mon, 12 Jan 2026 09:45:01 +0100
Message-Id: <DFMH8W40TCJ0.XCTHNRJFJE4T@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-crypto@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH 5/6] arm64: dts: qcom: milos: Add UFS nodes
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Neil Armstrong" <neil.armstrong@linaro.org>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Herbert Xu" <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>, "Alim
 Akhtar" <alim.akhtar@samsung.com>, "Avri Altman" <avri.altman@wdc.com>,
 "Bart Van Assche" <bvanassche@acm.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-5-6982ab20d0ac@fairphone.com>
 <2486dc4b-71f3-4cd9-8139-b397407d7e4d@linaro.org>
 <543d9e55-c858-40f9-8785-c9f636850120@linaro.org>
In-Reply-To: <543d9e55-c858-40f9-8785-c9f636850120@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_004504_679729_75B59105 
X-CRM114-Status: GOOD (  15.15  )
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

SGkgTmVpbCwKCk9uIE1vbiBKYW4gMTIsIDIwMjYgYXQgOToyNiBBTSBDRVQsIE5laWwgQXJtc3Ry
b25nIHdyb3RlOgo+IE9uIDEvNy8yNiAxNDo1MywgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+IEhp
LAo+PiAKPj4gT24gMS83LzI2IDA5OjA1LCBMdWNhIFdlaXNzIHdyb3RlOgo+Pj4gQWRkIHRoZSBu
b2RlcyBmb3IgdGhlIFVGUyBQSFkgYW5kIFVGUyBob3N0IGNvbnRyb2xsZXIsIGFsb25nIHdpdGgg
dGhlCj4+PiBJQ0UgdXNlZCBmb3IgVUZTLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgV2Vp
c3MgPGx1Y2Eud2Vpc3NAZmFpcnBob25lLmNvbT4KPj4+IC0tLQo+Pj4gwqAgYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL21pbG9zLmR0c2kgfCAxMjcgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystCj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMTI0IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9t
aWxvcy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21pbG9zLmR0c2kKPj4+IGluZGV4
IGUxYTUxZDQzOTQzZi4uMGY2OWRlYWJiNjBjIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL21pbG9zLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS9taWxvcy5kdHNpCj4+PiBAQCAtNzk3LDkgKzc5Nyw5IEBAIGdjYzogY2xvY2stY29udHJvbGxl
ckAxMDAwMDAgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmc2xl
ZXBfY2xrPiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MD4sIC8q
IHBjaWVfMF9waXBlX2NsayAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwwPiwgLyogcGNpZV8xX3BpcGVfY2xrICovCj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPDA+LCAvKiB1ZnNfcGh5X3J4X3N5bWJvbF8wX2NsayAqLwo+Pj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwPiwgLyogdWZzX3BoeV9yeF9zeW1ib2xfMV9j
bGsgKi8KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MD4sIC8qIHVmc19w
aHlfdHhfc3ltYm9sXzBfY2xrICovCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPCZ1ZnNfbWVtX3BoeSAwPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8JnVmc19tZW1fcGh5IDE+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDwmdWZzX21lbV9waHkgMj4sCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPDA+OyAvKiB1c2IzX3BoeV93cmFwcGVyX2djY191c2IzMF9waXBlX2NsayAqLwo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+Pj4gQEAgLTExNTEs
NiArMTE1MSwxMjcgQEAgYWdncmUyX25vYzogaW50ZXJjb25uZWN0QDE3MDAwMDAgewo+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcWNvbSxiY20tdm90ZXJzID0gPCZhcHBzX2JjbV92b3Rl
cj47Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICvCoMKgwqDCoMKgwqDCoCB1ZnNfbWVt
X3BoeTogcGh5QDFkODAwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJxY29tLG1pbG9zLXFtcC11ZnMtcGh5IjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJlZyA9IDwweDAgMHgwMWQ4MDAwMCAweDAgMHgyMDAwPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmcnBtaGNjIFJQTUhfQ1hPX0NMSz4sCj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfUEhZX0FVWF9DTEs+
LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmdGNzciBUQ1NSX1VGU19D
TEtSRUZfRU4+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAicmVm
IiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInJlZl9h
dXgiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicXJl
ZiI7Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldHMgPSA8JnVmc19tZW1f
aGMgMD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldC1uYW1lcyA9ICJ1ZnNwaHki
Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWlucyA9IDwmZ2Nj
IFVGU19NRU1fUEhZX0dEU0M+Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI2Ns
b2NrLWNlbGxzID0gPDE+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgI3BoeS1jZWxscyA9
IDwwPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfTsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoCB1ZnNf
bWVtX2hjOiB1ZnNoY0AxZDg0MDAwIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBh
dGlibGUgPSAicWNvbSxtaWxvcy11ZnNoYyIsICJxY29tLHVmc2hjIiwgImplZGVjLHVmcy0yLjAi
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MCAweDAxZDg0MDAwIDB4MCAw
eDMwMDA+Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxH
SUNfU1BJIDI2NSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY2xvY2tzID0gPCZnY2MgR0NDX1VGU19QSFlfQVhJX0NMSz4sCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX0FHR1JFX1VGU19QSFlfQVhJ
X0NMSz4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VG
U19QSFlfQUhCX0NMSz4sCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZn
Y2MgR0NDX1VGU19QSFlfVU5JUFJPX0NPUkVfQ0xLPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JnRjc3IgVENTUl9VRlNfUEFEX0NMS1JFRl9FTj4sCj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfVFhfU1lNQk9MXzBf
Q0xLPiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVUZT
X1BIWV9SWF9TWU1CT0xfMF9DTEs+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwmZ2NjIEdDQ19VRlNfUEhZX1JYX1NZTUJPTF8xX0NMSz47Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJjb3JlX2NsayIsCj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJidXNfYWdncl9jbGsiLAo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiaWZhY2VfY2xrIiwKPj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImNvcmVfY2xrX3VuaXBybyIs
Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyZWZfY2xr
IiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInR4X2xh
bmUwX3N5bmNfY2xrIiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgInJ4X2xhbmUwX3N5bmNfY2xrIiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgInJ4X2xhbmUxX3N5bmNfY2xrIjsKPj4+ICsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwmZ2NjIEdDQ19VRlNfUEhZX0JDUj47Cj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldC1uYW1lcyA9ICJyc3QiOwo+Pj4gKwo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJjb25uZWN0cyA9IDwmYWdncmUxX25vYyBNQVNURVJfVUZT
X01FTSBRQ09NX0lDQ19UQUdfQUxXQVlTCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAmbWNfdmlydCBTTEFWRV9FQkkxIFFDT01fSUNDX1RBR19BTFdBWVM+LAo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2VtX25vYyBNQVNU
RVJfQVBQU1NfUFJPQyBRQ09NX0lDQ19UQUdfQUNUSVZFX09OTFkKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZjbm9jX2NmZyBTTEFWRV9VRlNfTUVNX0NGRyBR
Q09NX0lDQ19UQUdfQUNUSVZFX09OTFk+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50
ZXJjb25uZWN0LW5hbWVzID0gInVmcy1kZHIiLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY3B1LXVmcyI7Cj4+PiArCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBwb3dlci1kb21haW5zID0gPCZnY2MgVUZTX1BIWV9HRFNDPjsKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlcXVpcmVkLW9wcHMgPSA8JnJwbWhwZF9vcHBfbm9tPjsK
Pj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8
JnVmc19vcHBfdGFibGU+Owo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW9tbXVz
ID0gPCZhcHBzX3NtbXUgMHg2MCAwPjsKPj4gCj4+IGRtYS1jb2hlcmVudCA/CgoKR2l2ZW4gdGhh
dCBkb3duc3RyZWFtIHZvbGNhbm8uZHRzaSBoYXMgZG1hLWNvaGVyZW50IGluIHRoZSB1ZnNoY0Ax
ZDg0MDAwCm5vZGUsIGxvb2tzIGxpa2UgdGhpcyBpcyBtaXNzaW5nIGluIG15IHBhdGNoLgoKPj4g
Cj4+IGFuZCBubyBNQ1Egc3VwcG9ydCA/CgpOb3Qgc3VyZSwgSSBjb3VsZCBvbmx5IGZpbmQgb25l
IHJlZmVyZW5jZSB0byBNQ1Egb24gY3JlYXRlcG9pbnQgZm9yCm1pbG9zLCBidXQgZ2l2ZW4gdGhl
cmUncyBubyBtY3Ffc3FkL21jcV92cyByZWcgZGVmaW5lZCBkb3duc3RyZWFtLCBhbmQgSQpjb3Vs
ZG4ndCBmaW5kIGFueXRoaW5nIGZvciB0aGUgc2FtZSByZWdpc3RlciB2YWx1ZXMgaW4gdGhlIC5G
TEFUIGZpbGUsIEkKZG9uJ3QgdGhpbmsgTWlsb3MgaGFzIE1DUT8gRmVlbCBmcmVlIHRvIHByb3Zl
IG1lIHdyb25nIHRob3VnaC4KCj4KPiBTbywgcGVvcGxlIGp1c3QgaWdub3JlIG15IGNvbW1lbnQg
Pwo+Cj4gTWlsb3MgaXMgYmFzZWQgb24gU004NTUwLCBzbyBpdCBzaG91bGQgaGF2ZSBkbWEtY29o
ZXJlbnQsIGZvciB0aGUgTUNRCj4gSSBob3BlIHRoZXkgdXNlZCB0aGUgZml4ZWQgYWRkZWQgdG8g
dGhlIFNNODY1MCBVRlMgY29udHJvbGxlciBmb3IgTUNRLgoKTm90IHN1cmUgd2hhdCB0aGlzIHNo
b3VsZCBtZWFuIHJlZ2FyZGluZyBNQ1EuLi4KClJlZ2FyZHMKTHVjYQoKPgo+IE5laWwKPgo+PiAK
Pj4gPHNuaXA+Cj4+IAo+PiBUaGFua3MsCj4+IE5laWwKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
