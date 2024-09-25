Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A333C369D9
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 12:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RkgCowc8klt814lE+1R2xQ1NzQOmhCtJjB/vNTN85Zg=; b=Sxmt9lHcRSUUqx
	PbDmV+uHFl+Vfu2KInnEzkPMKOTmDAus5YgMbL9K1C5tfqpBsLCrmPIybL8I9k3GWDuHENNGeON61
	SDXaxFCWBq7ofevrdRVbQCHvumLgZWEaLGsKwwnYrrGItECP93ZghW1PWVyNsNSbj6kk7EiQJ0DGR
	Hdhu3j4c15FqrY2a6zIBiwd7T2xYsv555AEV7N3fvHPYkm8WGD86UhFBKizpfzGm/0Knlvrv5uty7
	iX+g6YIn76De4rPkSb2rFuT2aDU9GxJK10DbU0Zi/oeGLM3W0roylkVm4WOKC8yOFz0G7nlUSP6nG
	0m2n3/MqrV40/O56VoOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stRXC-00000005FML-2nbG;
	Wed, 25 Sep 2024 12:54:22 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stRVN-00000005Eoq-1tJC
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 12:52:30 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-42cae4eb026so66009195e9.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Sep 2024 05:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727268747; x=1727873547; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PsYnTiQnoLJmTLqLligtuj1TznoQqpggCMnS36XtOaI=;
        b=aMjUqOz7T9BgKX5PTOyEf+hjhUMhavA/lC3IsFjCHxvjp2LcJrQNGgWGQsdjq/ne35
         i2jhhTfJxF3M8/osT8XUVAqjleXQXbXoXY6TW2fZ32hfBGiiaEXZfgfa6uz8GJ6r56vN
         elCylb9pWbtOPFFWC/94Ekkru4vhOrEi5ApcNMXHE6JX/E6c4rvItKhLU3Dc7rSfSlvG
         JLtUqKH2umwddeQJF/E8MLqziFTUSKDO7N858o0wrSpPFyTg1RKMteYWXMgiqpm54zlu
         ZuZF4OCrvafsgDSa7JY90ryYShmtUwA0hQbZyutgtRTJJTxQ2Qm8Oe6TTlIzxTcilbUa
         gqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727268747; x=1727873547;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PsYnTiQnoLJmTLqLligtuj1TznoQqpggCMnS36XtOaI=;
        b=sHFfA3BJe6Gcvw1B8FRemWV4WgT1mqHU5xK/MJUxXhGHKx3n9poP5nkAFyw76Ca9ac
         DfoPQQl6kw+sJIAmRyb+/2E+B8Y1y5dlEqVJ4khKCEGMWpZXrHQfWydWwAYXyT6cdU98
         jqFNNuKPNlSKVK1dIkoKsUat8tEcvVEUqC2gqfs038bsH/Fk0wTEZTpey8TXOzjHFU/V
         EZOTVL47GMhTo1La7WWDAliLOncZi3jPtsGtrD2Ov3jX2fh8lcs1zI6yQSW60ahjAQKM
         jDf0I8B15MNAQcXNS4DTaIWsu81ky038lBAxYqpfCS3exAlFyPXJWoXq9CLiGxMJcw/R
         kmGg==
X-Forwarded-Encrypted: i=1; AJvYcCVQxkcdJrAowqK6bvCRShELGiQBAJEhdpAmJVUgeCciqv8ir7FfCWGIdDFr2CLjkZwFBhI+6Ym2QkI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6j/H2T3G23i0fU47fvHUBTf6R2i9i7Pk14amwiVS1Zt4+vNTV
	Hbrrk9+UkczE2R5q+hkjqOG2xAXW9qSTOhqHombkHX0zJuNl/J/4nt7ihxQuuQ==
X-Google-Smtp-Source: AGHT+IG4lPaaPhhTrY0nQowUBPj7qZopeTwFGYzQZG1u0Frm/UegncIuXWSeBUCFGZpQxJONnfZ1dw==
X-Received: by 2002:a05:600c:3581:b0:426:602d:a246 with SMTP id 5b1f17b1804b1-42e962456cbmr18604785e9.32.1727268747527;
        Wed, 25 Sep 2024 05:52:27 -0700 (PDT)
Received: from thinkpad ([62.67.186.33])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e969a8bd5sm18569155e9.0.2024.09.25.05.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 05:52:26 -0700 (PDT)
Date: Wed, 25 Sep 2024 14:52:24 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <20240925125224.53g6rw46qufxsw6m@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
 <20240925080522.qwjeyrpjtz64pccx@thinkpad>
 <4ee4d016-9d68-4925-9f49-e73a4e7fa794@kernel.org>
 <2731e17d-c1ad-4fb4-ab60-82ceafeffbaf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2731e17d-c1ad-4fb4-ab60-82ceafeffbaf@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_055229_516006_3DAA82AA 
X-CRM114-Status: GOOD (  28.03  )
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

T24gV2VkLCBTZXAgMjUsIDIwMjQgYXQgMTE6NDY6MzVBTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAyNS4wOS4yMDI0IDExOjMwIEFNLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+ID4g
T24gMjUuMDkuMjAyNCAxMDowNSBBTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4+
IE9uIFR1ZSwgU2VwIDI0LCAyMDI0IGF0IDA0OjI2OjM0UE0gKzAyMDAsIEtvbnJhZCBEeWJjaW8g
d3JvdGU6Cj4gPj4+IE9uIDI0LjA5LjIwMjQgMTI6MTQgUE0sIFFpYW5nIFl1IHdyb3RlOgo+ID4+
Pj4gRGVzY3JpYmUgUENJZTMgY29udHJvbGxlciBhbmQgUEhZLiBBbHNvIGFkZCByZXF1aXJlZCBz
eXN0ZW0gcmVzb3VyY2VzIGxpa2UKPiA+Pj4+IHJlZ3VsYXRvcnMsIGNsb2NrcywgaW50ZXJydXB0
cyBhbmQgcmVnaXN0ZXJzIGNvbmZpZ3VyYXRpb24gZm9yIFBDSWUzLgo+ID4+Pj4KPiA+Pj4+IFNp
Z25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxdWljX3FpYW55dUBxdWljaW5jLmNvbT4KPiA+Pj4+IFJl
dmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+
Cj4gPj4+PiAtLS0KPiA+Pj4KPiA+Pj4gUWlhbmcsIE1hbmkKPiA+Pj4KPiA+Pj4gSSBoYXZlIGEg
UlRTNTI2MSBtbWMgY2hpcCBvbiBQQ0llMyBvbiB0aGUgU3VyZmFjZSBMYXB0b3AuCj4gPj4KPiA+
PiBJcyBpdCBiYXNlZCBvbiB4MWU4MDEwMD8KPiA+IAo+ID4gWW91IHdvdWxkIHRoaW5rIHNvIDpQ
Cj4gPiAKPiA+Pgo+ID4+PiBBZGRpbmcgdGhlIGdsb2JhbCBpcnEgYnJlYWtzIHNkY2FyZCBkZXRl
Y3Rpb24gKHRoZSBjaGlwIHN0aWxsIGNvbWVzCj4gPj4+IHVwIGZpbmUpIHNvbWVob3cuIFJlbW92
aW5nIHRoZSBpcnEgbWFrZXMgaXQgd29yayBhZ2FpbiA6fAo+ID4+Pgo+ID4+PiBJJ3ZlIGNvbmZp
cm1lZCB0aGF0IHRoZSBpcnEgbnVtYmVyIGlzIGNvcnJlY3QKPiA+Pj4KPiA+Pgo+ID4+IFllYWgs
IEkgZGlkIHNlZSBzb21lIGlzc3VlcyB3aXRoIE1TSSBvbiBTTTgyNTAgKFJCNSkgd2hlbiBnbG9i
YWwgaW50ZXJydXB0cyBhcmUKPiA+PiBlbmFibGVkIGFuZCBJJ20gd29ya2luZyB3aXRoIHRoZSBo
dyBmb2xrcyB0byB1bmRlcnN0YW5kIHdoYXQgaXMgZ29pbmcgb24uIEJ1dAo+ID4+IEkgZGlkbid0
IHNlZSB0aGUgc2FtZSBpc3N1ZXMgb24gbmV3ZXIgcGxhdGZvcm1zIChzYTg3NzVwIGV0Yy4uLiku
Cj4gPj4KPiA+PiBDYW4geW91IHBsZWFzZSBjb25maXJtIGlmIHRoZSBpc3N1ZSBpcyBkdWUgdG8g
TVNJIG5vdCBiZWluZyByZWNlaXZlZCBmcm9tIHRoZQo+ID4+IGRldmljZT8gQ2hlY2tpbmcgdGhl
IC9wcm9jL2ludGVycnV0cHMgaXMgZW5vdWdoLgo+ID4gCj4gPiBUaGVyZSdzIG5vIG1zaS1tYXAg
Zm9yIFBDSWUzLiBJIHJlY2FsbCArSm9oYW4gdGFsa2luZyBhYm91dCBzb21lIHNvcnQgb2YKPiA+
IGEgYnVnIHRoYXQgcHJldmVudHMgdXMgZnJvbSBhZGRpbmcgaXQ/Cj4gCgpZZWFoLCB0aGF0J3Mg
Zm9yIHVzaW5nIEdJQy1JVFMgdG8gcmVjZWl2ZSBNU0lzLiBCdXQgdGhlIGRlZmF1bHQgb25lIGlz
IHRoZQppbnRlcm5hbCBNU0kgY29udHJvbGxlciBpbiBEV0MuCgo+IFVubGVzcyB5b3UganVzdCBt
ZWFudCB0aGUgbXNpMC4uPTcgaW50ZXJydXB0cywgdGhlbiB5ZWFoLCBJIG9ubHkgZ2V0IG9uZSBp
cnEKPiBldmVudCB3aXRoICJnbG9iYWwiIGluIHBsYWNlIGFuZCBpdCBzZWVtcyB0byBuZXZlciBn
ZXQgbW9yZQo+IAoKT2suIFRoZW4gbW9zdCBsaWtlbHkgdGhlIHNhbWUgaXNzdWUgSSBzYXcgb24g
U004MjUwIGFzIHdlbGwuIEJ1dCBJJ20gY29uZnVzZWQKd2h5IFFpYW5nIGRpZG4ndCBzZWUgdGhl
IGlzc3VlLiBJIHNwZWNpZmljYWxseSBhc2tlZCBoaW0gdG8gYWRkIHRoZSBnbG9iYWwKaW50ZXJy
dXB0IGFuZCB0ZXN0IGl0IHdpdGggdGhlIGVuZHBvaW50IHRvIGNoZWNrIGlmIHRoZSBpc3N1ZSBh
cmlzZXMgb3Igbm90LgoKUWlhbmcsIGNhbiB5b3UgcGxlYXNlIGNvbmZpcm0/CgotIE1hbmkKCi0t
IArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
