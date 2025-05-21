Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C072CC54ED0
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 13:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yo9yvhNCfW+ydWTKyCyKCyv0XlxuVeYoD3DJiQDGWrE=; b=pyDb0w8k6w7jYC
	5NsJHBygJvg1bBwWGmLDwvQ2qB31eq5PGW/fdmPECWOERPnZ9uKoNHJljn+kwpytUhhjKIOixAoc1
	eubKZ8i/hrHxeIzmyJuiU/pKpndAcssRHgwX/CMgyEtz0mB1nAYUdgvG5rrFPV3X61FlC8OS5qctX
	9opDhBmSRZVa6vlOHHatiBpAOOFS468YVGhAkjVhOPjx4xWK3Cx8QeEzQgyvZk+v1EUtJvL7und9y
	vHSjZ9TQ7uggN3rsSG0aGHnvRp9yYW6EOGgV2bkAlijoB/uv/hFo9EOIkB11XUcVHrVpAICtCzYZI
	ko47KuMBLFPIGjwkYHGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjmx-0000000FzGe-1zUO;
	Wed, 21 May 2025 13:47:19 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjC9-0000000Ft0A-3s2c
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:09:19 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-742c3d06de3so4409756b3a.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747832957; x=1748437757; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1xxOxxblIZR/yGk+6+Lstv8BrYyIDhp3OhJhwb5LXrY=;
        b=oGJbZ2L5aR/4K6aG4UtFqxbC8cU5sPzO49JBGtGKzkPl6L3MBoU30jAgB39HB5nVD8
         HfbqaJjo+5LUe5Jmp539cpJtBIlLmwhLEcMHgtkkhorY0gVLfEsDfERUlUOFsUbc+Z8X
         qRkfuhbu+WtNB6fMv10J4p4TozHI6csSYkxtpN/J85ZUj1DGYChUNZY8xnwLSAajdAPh
         KeqajVuJRjO/bGV7eLR75VcDG9dI8vIQwra6u8SKKZR9LdTcZEqbCIzD1g0rHgwrG9t0
         dx6PLF97/CIBbsAp1VaWLXACpfrCw8tFCW8oIg8uILShOlTaj1QoxBDaPr0q5pcAn17v
         Y/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747832957; x=1748437757;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1xxOxxblIZR/yGk+6+Lstv8BrYyIDhp3OhJhwb5LXrY=;
        b=aZfGP0F+mvMYPawruF3IIM8Pvy37wzrzfLG6Vd6WU23GgeenQ7gxsobitqc9lhrBQM
         vZKJRFLHSsAUIKLsOPoHk/Us7YJ9Xaxw0lA/daph1aLVFVi9kweuSSwvQXEorHiPGgSL
         V2CGUITM8Km2ARz2V6pwvDpuxLHwAkj+y0QZi1sQR0AjoHSe5ZtOlTPw8Cv6HbNcKdsS
         g4nKv3V+uYl0b/B6vhSM+WCNHF2ees/JSncEA2cIk0MZ0rf8ZCEf15t+KqXwwFj8cfCO
         8t8OJ8L3g9PM7geIpwxuq7WHQ6VOnWTN6Ucd92yizmjp+ajVcSzK31R3TCJiEwtRxBH5
         z7Bw==
X-Forwarded-Encrypted: i=1; AJvYcCXkSf+1JiaqRjkh86I1GoY1dZ183mZRzGSGg2RaxwUgkpcPJCrktGe7OVzy7Wv6zuEkTw3Oxtx9mHE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXqPflb+wdGaqslOrgnPeDxiT/F3k5qqjzkPz+b6mvAv6WyREN
	Bjz3xPkZOrr41QJQqECAnn84XRzGw9V9347Zo2kpRZiBQnwlOXIA47JWozYXTS8knQ==
X-Gm-Gg: ASbGncvmdnyKGEmNI3kpNEajJiX7JtcdH8gLnLmKUYl5TO1D69LiYvGzsoD6utiPnor
	exazlvHxo18gLP23nPG6gaoaZrPp9gXns/OsWQuR3l9CBpbm9nK2MpeEcR1yITGq5UsxlctPAaD
	0hJzX7dd8feH44Kh+M3mHsifmlfZuKADBh8gLVpaRhfOcDDSYNuaDQaWN42ISxFmJ0YRYX7u0tf
	NjMnRjf72JnsCYLFThWfFMGoTBYmjoKGM0vGAK3uw2f1mhqEWuRjniP4snOHoFXhXBhxMxBcB4w
	fLFrADn/JoA/s/I7o6vPKLBEvRHSmPlINf7uD6Uppg52Pc9SgHKRl51cv99l
X-Google-Smtp-Source: AGHT+IFpFHFGRg8NqLbFFAyW6EgtIFf1xfDNczo/VyiKqRIj7rrnxNgs7EuDSZwWQLJYrHrtfNhQGw==
X-Received: by 2002:a05:6a00:3e0b:b0:736:34a2:8a18 with SMTP id d2e1a72fcca58-742acd75e6amr31551655b3a.24.1747832956808;
        Wed, 21 May 2025 06:09:16 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a98a213bsm9505394b3a.159.2025.05.21.06.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:09:16 -0700 (PDT)
Date: Wed, 21 May 2025 14:09:09 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 02/11] phy: qcom-qmp-ufs: Rename qmp_ufs_enable and
 qmp_ufs_power_on
Message-ID: <drtwqawkyrtfxgw4gbegybzs2yt7sucvvmralppmjpptu7sdzu@5zu6gdzefz7e>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_060917_962496_B8F5DD31 
X-CRM114-Status: GOOD (  15.35  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MTNQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gUmVuYW1lIHFtcF91ZnNfZW5hYmxlIHRvIHFtcF91ZnNfcG93ZXJfb24gYW5kIHFtcF91
ZnNfcG93ZXJfb24gdG8KPiBxbXBfdWZzX3BoeV9jYWxpYnJhdGUgdG8gYmV0dGVyIHJlZmxlY3Qg
dGhlaXIgZnVuY3Rpb25hbGl0eS4gQWxzbwo+IHVwZGF0ZSBmdW5jdGlvbiBjYWxscyBhbmQgc3Ry
dWN0dXJlIGFzc2lnbm1lbnRzIGFjY29yZGluZ2x5Lgo+IAo+IFJldmlld2VkLWJ5OiBEbWl0cnkg
QmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFsY29tbS5jb20+Cj4gQ28tZGV2ZWxv
cGVkLWJ5OiBSYW0gS3VtYXIgRHdpdmVkaSA8cXVpY19yZHdpdmVkaUBxdWljaW5jLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBSYW0gS3VtYXIgRHdpdmVkaSA8cXVpY19yZHdpdmVkaUBxdWljaW5jLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNv
bT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFz
aXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9xdWFsY29tbS9w
aHktcWNvbS1xbXAtdWZzLmMgfCA4ICsrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29t
LXFtcC11ZnMuYwo+IGluZGV4IGIzM2UyZTJiNTAxNC4uYTY3Y2YwYTY0Zjc0IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+IEBAIC0xODM4LDcgKzE4MzgsNyBA
QCBzdGF0aWMgaW50IHFtcF91ZnNfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIAlyZXR1cm4gMDsK
PiAgfQo+ICAKPiAtc3RhdGljIGludCBxbXBfdWZzX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkK
PiArc3RhdGljIGludCBxbXBfdWZzX3BoeV9jYWxpYnJhdGUoc3RydWN0IHBoeSAqcGh5KQo+ICB7
Cj4gIAlzdHJ1Y3QgcW1wX3VmcyAqcW1wID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gIAljb25z
dCBzdHJ1Y3QgcW1wX3BoeV9jZmcgKmNmZyA9IHFtcC0+Y2ZnOwo+IEBAIC0xODk5LDcgKzE4OTks
NyBAQCBzdGF0aWMgaW50IHFtcF91ZnNfZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCj4gIAlyZXR1cm4g
MDsKPiAgfQo+ICAKPiAtc3RhdGljIGludCBxbXBfdWZzX2VuYWJsZShzdHJ1Y3QgcGh5ICpwaHkp
Cj4gK3N0YXRpYyBpbnQgcW1wX3Vmc19wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4gIHsKPiAg
CWludCByZXQ7Cj4gIAo+IEBAIC0xOTA3LDcgKzE5MDcsNyBAQCBzdGF0aWMgaW50IHFtcF91ZnNf
ZW5hYmxlKHN0cnVjdCBwaHkgKnBoeSkKPiAgCWlmIChyZXQpCj4gIAkJcmV0dXJuIHJldDsKPiAg
Cj4gLQlyZXQgPSBxbXBfdWZzX3Bvd2VyX29uKHBoeSk7Cj4gKwlyZXQgPSBxbXBfdWZzX3BoeV9j
YWxpYnJhdGUocGh5KTsKPiAgCWlmIChyZXQpCj4gIAkJcW1wX3Vmc19leGl0KHBoeSk7Cj4gIAo+
IEBAIC0xOTQxLDcgKzE5NDEsNyBAQCBzdGF0aWMgaW50IHFtcF91ZnNfc2V0X21vZGUoc3RydWN0
IHBoeSAqcGh5LCBlbnVtIHBoeV9tb2RlIG1vZGUsIGludCBzdWJtb2RlKQo+ICB9Cj4gIAo+ICBz
dGF0aWMgY29uc3Qgc3RydWN0IHBoeV9vcHMgcWNvbV9xbXBfdWZzX3BoeV9vcHMgPSB7Cj4gLQku
cG93ZXJfb24JPSBxbXBfdWZzX2VuYWJsZSwKPiArCS5wb3dlcl9vbgk9IHFtcF91ZnNfcG93ZXJf
b24sCj4gIAkucG93ZXJfb2ZmCT0gcW1wX3Vmc19kaXNhYmxlLAo+ICAJLnNldF9tb2RlCT0gcW1w
X3Vmc19zZXRfbW9kZSwKPiAgCS5vd25lcgkJPSBUSElTX01PRFVMRSwKPiAtLSAKPiAyLjQ4LjEK
PiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
