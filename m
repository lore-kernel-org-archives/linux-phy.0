Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC674C369A8
	for <linux-phy@archiver.kernel.org>; Wed, 25 Sep 2024 08:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESobimXaFtSfcW6KdF8UFY1JmERrFnns9gfWmXr6C7E=; b=j0dSG7zkByINXk
	9rvi0GP3RdZi1ZSMvOhWazdtgQDph+Q61XVv1IWcgVbbPr5nhrSNDtucDrbvGejbB6zBJadRjhSs2
	gmw2eLPyaCsL/8DrRKpDd1gNNa6zjKdX7K/Q5YzNVKl1eUDMLBMMrOW+s3ZVh94xDBGiWpmaW2I0b
	dJhfBues3lmJ2CDAm7KNhJokHoiy+J3Rgsm8mRiqykhffsQA+RNJf4w5gCYwqmpMJ9YaLiYjhUtdG
	8bsnkHmi3wGLA6P+cmUyEzf+SzPSS3ULs6aAzQOdBwpibDIqvODWY+Hlcno5xE4SgV+IeisTSMfFL
	FfPGDLZsCg815VJDJboQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stN4a-00000004Sf8-23jD;
	Wed, 25 Sep 2024 08:08:32 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stN1Z-00000004RwS-1u2m
	for linux-phy@lists.infradead.org;
	Wed, 25 Sep 2024 08:05:26 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4280ca0791bso63112005e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Sep 2024 01:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727251524; x=1727856324; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fmE1UeERqrchW40NVacg6nrSR6Vcco0wZ6da4wq9+7A=;
        b=Bo6Ymumu05RPfTvYpE+xxhsm3NZNxkxORLfriGrFlET03WduyO2Q/AbOfvK8N2B4AZ
         4E5uvft/3iNV3twUCeoKaov/kErW06oNBJ/ZMULmkMOQ24oUIR9idIvU04QyIS03h47/
         tGTEuGe2GDPsH9l5z2/JpnLEj5C0gm/7zsBWYLGjYW8IHBNWNQZssAEz6mvM0Drs0VEd
         fO+pdJdew2vpCBQ5xFAzA0y/xWBKiba0onFvwLyoHgxnPcJWrb3HaroG2JtPNkrp8W1G
         u9mi2RvQ9mwE+EjrAUwXq+4S4xGvAWExTSaKtPLN8yRV40BQrBE12TxVqDuaAQCGz6Tt
         CElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727251524; x=1727856324;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fmE1UeERqrchW40NVacg6nrSR6Vcco0wZ6da4wq9+7A=;
        b=dfDcwX78oEE0H4D9s/Siyw8oULYUQqAQibqIxiYFGyHGcIm6VwWzUMCUKVCBUQaPqn
         vh2ivclpsmeoCWDfzdDhclKUj60U6xxozQUKG4KIvQapZURw1RVs+duRDjmS+0cUmubo
         xA4QqZzN6H7QuVY6/pLXcRmoEFOSHhQ7AsUuL+JC82KBx6uIP/TFexMW0XRk3xMN3GWk
         2BnBOJbA7GRc0CGDKWXAVqja2HfCeheGdT/+yaDeR40eN4mmPoF+H772rqd6t3LbcBXQ
         l3JznMMMlXNIZXw5m91NSUi7+QrcTq6LZ0z3pSUF1nDxLKUjR8hNuyxRgUkhtuxDVOhv
         wpdA==
X-Forwarded-Encrypted: i=1; AJvYcCVt8Qwr2Loga3Uy5X01w5Y93uTfMoRjv8FS8AFNKNcZWrKVVEobkb22XJKNcbrFfxTnxV5+9paoG1c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4c0E4U1s6lCq9Ob8MTVVmyz6IkkJt8r+zYzY/aNpRH9c4nnn0
	e+BuSp/zIDSI+j45ahmxx/KN3iNpG68Cs+lD3EpJVZZF0IhRKZZn2h6GaQDzpg==
X-Google-Smtp-Source: AGHT+IGu+EQFdqJdQRNdKI2O1nnUzgvF8rHWsav7UIwu3lMA5nKO4ePunuX3F80nTqxwvNWJ8lBRwg==
X-Received: by 2002:adf:e7cf:0:b0:374:c64d:5379 with SMTP id ffacd0b85a97d-37cc247945emr1246796f8f.27.1727251523891;
        Wed, 25 Sep 2024 01:05:23 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e90cd8c5asm40971185e9.1.2024.09.25.01.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 01:05:23 -0700 (PDT)
Date: Wed, 25 Sep 2024 10:05:22 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <20240925080522.qwjeyrpjtz64pccx@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
 <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_010525_523628_A8DE0F43 
X-CRM114-Status: GOOD (  17.37  )
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

T24gVHVlLCBTZXAgMjQsIDIwMjQgYXQgMDQ6MjY6MzRQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAyNC4wOS4yMDI0IDEyOjE0IFBNLCBRaWFuZyBZdSB3cm90ZToKPiA+IERlc2Ny
aWJlIFBDSWUzIGNvbnRyb2xsZXIgYW5kIFBIWS4gQWxzbyBhZGQgcmVxdWlyZWQgc3lzdGVtIHJl
c291cmNlcyBsaWtlCj4gPiByZWd1bGF0b3JzLCBjbG9ja3MsIGludGVycnVwdHMgYW5kIHJlZ2lz
dGVycyBjb25maWd1cmF0aW9uIGZvciBQQ0llMy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogUWlh
bmcgWXUgPHF1aWNfcWlhbnl1QHF1aWNpbmMuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IERtaXRyeSBC
YXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiA+IC0tLQo+IAo+IFFpYW5n
LCBNYW5pCj4gCj4gSSBoYXZlIGEgUlRTNTI2MSBtbWMgY2hpcCBvbiBQQ0llMyBvbiB0aGUgU3Vy
ZmFjZSBMYXB0b3AuCgpJcyBpdCBiYXNlZCBvbiB4MWU4MDEwMD8KCj4gQWRkaW5nIHRoZSBnbG9i
YWwgaXJxIGJyZWFrcyBzZGNhcmQgZGV0ZWN0aW9uICh0aGUgY2hpcCBzdGlsbCBjb21lcwo+IHVw
IGZpbmUpIHNvbWVob3cuIFJlbW92aW5nIHRoZSBpcnEgbWFrZXMgaXQgd29yayBhZ2FpbiA6fAo+
IAo+IEkndmUgY29uZmlybWVkIHRoYXQgdGhlIGlycSBudW1iZXIgaXMgY29ycmVjdAo+IAoKWWVh
aCwgSSBkaWQgc2VlIHNvbWUgaXNzdWVzIHdpdGggTVNJIG9uIFNNODI1MCAoUkI1KSB3aGVuIGds
b2JhbCBpbnRlcnJ1cHRzIGFyZQplbmFibGVkIGFuZCBJJ20gd29ya2luZyB3aXRoIHRoZSBodyBm
b2xrcyB0byB1bmRlcnN0YW5kIHdoYXQgaXMgZ29pbmcgb24uIEJ1dApJIGRpZG4ndCBzZWUgdGhl
IHNhbWUgaXNzdWVzIG9uIG5ld2VyIHBsYXRmb3JtcyAoc2E4Nzc1cCBldGMuLi4pLgoKQ2FuIHlv
dSBwbGVhc2UgY29uZmlybSBpZiB0aGUgaXNzdWUgaXMgZHVlIHRvIE1TSSBub3QgYmVpbmcgcmVj
ZWl2ZWQgZnJvbSB0aGUKZGV2aWNlPyBDaGVja2luZyB0aGUgL3Byb2MvaW50ZXJydXRwcyBpcyBl
bm91Z2guCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
