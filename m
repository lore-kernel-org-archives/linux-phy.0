Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14DC9C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 09:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJNHgWSG0LYNOwOdAw4Rn6LP1xgGs1Wy1K0HspPpIZQ=; b=l9SqQQ5DxBl0WY
	58XiJPsDAOVIDYyYELaeMDjSCtRT1gbxwDzAnHEKnmCF6CUqiCV96hjEhFhoiUQ6Z5tm0AIv9MZT0
	D8e0H4RbzAZpRP5b2rdrQIfo5DS8m89XCfhjHMHZlBP+ISvRQc676Q2nSg7PPqvccGk0m4pO0FAeZ
	SqvFHqeJiCiiMB5gsqHwYpOdb9oz/xkJ7CSdNfPnHp1MU7/wURTzVxEmhfjk/cH8XYM5mSugyFjiF
	unmW1WbTMbUP0MV6P6MjnnNWqPOE+ElMUM0eBREuWj1u7A1XdgH1fo4Ro2/1kim70LbR0+OFu1Imf
	zoEECS5XQNGcp9NpT5UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI2Hg-00000000W14-2hZJ;
	Thu, 22 May 2025 09:32:16 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI2Gu-00000000VnF-3rbv
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 09:31:30 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-30ed99132abso4077489a91.3
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 02:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747906288; x=1748511088; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=McRA8GfhRgehXg8MYkY0+SUsda90hxI698ZskmPnmFw=;
        b=O5VSwQSHxN6o97FH6sk7P7gEqV5JvzVMh0FV1GlSJumKStjI4k5XU68VvczMWz7FZc
         OryKk68CYQjyv72rgdYFWHrBk6XW6wzVOPsoK226xnaoOQ17wnJWMP8d0gd+C8nih/M5
         EB6zf4b/RVfJ6RTd05yg9bBV8Gh5QTnzwOjO9BUxrBzSgASAJIhISTbWkSHdD2WXxq9h
         wClLRW4EktqE1ROXbMuKYc9Wo6YcEZqurCN5DKWRTEc7ysWnzWEurn7cZoDc0R2VYYot
         QhAWjWOnHH64kRxvjlU2r5xwsVixYnMe1RoX2kbPORZ3bynVfRjR710NxBTDpn7RLY6/
         Vu9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747906288; x=1748511088;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=McRA8GfhRgehXg8MYkY0+SUsda90hxI698ZskmPnmFw=;
        b=fndNjWOhNPuc7/I1PYD8wBGRyyv5mFvK1O/ZkSRsgo9U3jx2zIEzrcKGAVJ+tb87Kw
         k+2VFFKY9i2gIx+H1dkjP3Q6xDZ1BpXdmoMa+G2xyNUBwBdD2cilvJE2HhgY/91l9GR1
         lDxoWxXE5fDca8rDM0sH50GT0OLMfkebRgR/QqmduRGXGkYJLctJq3ltyYMW5OKwOJH3
         KoUu8A4dWrVWpNPnf6g7OnWHhpx6I8t/Hiv0mbTjMcHJdeXh2aqjsGMVSuWgLlTX2X0j
         wsrw3uxtqVFh9Lbyid9HPjKO/WW6EH8o/+prYrTfdF1R8WX85NGDyxyGy1MhosthgO77
         ZvqA==
X-Forwarded-Encrypted: i=1; AJvYcCU+6S7UDMsMy/05Q35IiJhmT/gVvK6AvRoFxOpX+0ETkeebEfqBwFwJtZLQ8KUJwkM5cwJoBYRX0AE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyAHT3m0ecn7lzRTl1Um+TRwwVg8vbFc18G3iHr3Q1NpWzUPgWx
	jwKCwcduKnraXJbqOsrNgy7Je2tCWAcfAbIOowSsK4R69Y3GMx3bbKLEhnafrLwPGQ==
X-Gm-Gg: ASbGncu4ouptNbmUW2t+x0mkm3plvAAHLJY6tOdKnK6vqxiD3k59UrKJeQ/3AN8FPa2
	JcJqC6mU0bCspG7VcCi5H2dOS0XVPKue/NvVUYYwgmITsYv1TE4O4qb+rNN1INWqOLMoSVM4vpc
	yzziTX1um08/joMPeHASQj+YiDvxajEirG5FKsYlt96tik01y8pm48ngisaUi9lj2W1Xf6JISF/
	asc/tFSgxluXgmGAvmws4pXkaTgtWOU2kyYYuOxzlz9RiNREmz+r5t9W6aWZhYhHKEalSg5b+jR
	qKYg0dL4dg7/G3tID9tsa339KjmWYAw/K/5fsCtqZgDTVz0P3OsBFjtCQZ+mXQ==
X-Google-Smtp-Source: AGHT+IEfA9wKFCWLKzq6OJebXZtbQME9Px6iFLhEXecijsMacaFwVvyT0/nc82hwLeVlFppAYaMfXQ==
X-Received: by 2002:a17:90a:fc4c:b0:310:8d9a:ede1 with SMTP id 98e67ed59e1d1-3108d9aee0fmr9234584a91.4.1747906288204;
        Thu, 22 May 2025 02:31:28 -0700 (PDT)
Received: from thinkpad ([120.60.130.60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30e9338926esm6340266a91.2.2025.05.22.02.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 02:31:27 -0700 (PDT)
Date: Thu, 22 May 2025 15:01:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 10/11] scsi: ufs: qcom : Introduce phy_power_on/off
 wrapper function
Message-ID: <zelvl7b5ov66lzbgay42ncdbkof3flv7g3gybqexth5hty6mvq@eemod4qy6gqs>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-11-quic_nitirawa@quicinc.com>
 <k37lk3poz6kzrgnby4sikwmz6rg4ysxsticn3opcil4j3njylp@cvmgwiw6nwy5>
 <9092ed42-ef8b-42cc-a423-c5a486d3b998@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9092ed42-ef8b-42cc-a423-c5a486d3b998@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_023128_966767_082BA220 
X-CRM114-Status: GOOD (  26.39  )
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

T24gVGh1LCBNYXkgMjIsIDIwMjUgYXQgMDM6NDg6MjlBTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gCj4gCj4gT24gNS8yMS8yMDI1IDc6MzEgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3
cm90ZToKPiA+IE9uIFRodSwgTWF5IDE1LCAyMDI1IGF0IDA5OjU3OjIxUE0gKzA1MzAsIE5pdGlu
IFJhd2F0IHdyb3RlOgo+ID4gCj4gPiBTdWJqZWN0IHNob3VsZCBtZW50aW9uIHVmc19xY29tX3Bo
eV9wb3dlcl97b24vb2ZmfSBhcyBwaHlfcG93ZXJfe29uL29mZn0gYXJlCj4gPiBnZW5lcmljIEFQ
SXMuCj4gPiAKPiA+ID4gVGhlcmUgY2FuIGJlIHNjZW5hcmlvcyB3aGVyZSBwaHlfcG93ZXJfb24g
aXMgY2FsbGVkIHdoZW4gUEhZIGlzCj4gPiA+IGFscmVhZHkgb24gKHBoeV9jb3VudD0xKS4gRm9y
IGluc3RhbmNlLCB1ZnNfcWNvbV9wb3dlcl91cF9zZXF1ZW5jZQo+ID4gPiBjYW4gYmUgY2FsbGVk
IG11bHRpcGxlIHRpbWVzIGZyb20gdWZzaGNkX2xpbmtfc3RhcnR1cCBhcyBwYXJ0IG9mCj4gPiA+
IHVmc2hjZF9oYmFfZW5hYmxlIGNhbGwgZm9yIGVhY2ggbGluayBzdGFydHVwIHJldHJpZXMobWF4
IHJldHJpZXMgPTMpLAo+ID4gPiBjYXVzaW5nIHRoZSBQSFkgcmVmZXJlbmNlIGNvdW50IHRvIGlu
Y3JlYXNlIGFuZCBsZWFkaW5nIHRvIGluY29uc2lzdGVudAo+ID4gPiBwaHkgYmVoYXZpb3IuCj4g
PiA+IAo+ID4gPiBTaW1pbGFybHksIHRoZXJlIGNhbiBiZSBzY2VuYXJpb3Mgd2hlcmUgcGh5X3Bv
d2VyX29uIG9yIHBoeV9wb3dlcl9vZmYKPiA+ID4gbWlnaHQgYmUgY2FsbGVkIGRpcmVjdGx5IGZy
b20gdGhlIFVGUyBjb250cm9sbGVyIGRyaXZlciB3aGVuIHRoZSBQSFkKPiA+ID4gaXMgYWxyZWFk
eSBwb3dlcmVkIG9uIG9yIG9mZiByZXNwZWN0aWVseSwgY2F1c2luZyBzaW1pbGFyIGlzc3Vlcy4K
PiA+ID4gCj4gPiA+IFRvIGZpeCB0aGlzLCBpbnRyb2R1Y2UgdWZzX3Fjb21fcGh5X3Bvd2VyX29u
IGFuZCB1ZnNfcWNvbV9waHlfcG93ZXJfb2ZmCj4gPiA+IHdyYXBwZXJzIGZvciBwaHlfcG93ZXJf
b24gYW5kIHBoeV9wb3dlcl9vZmYuIFRoZXNlIHdyYXBwZXJzIHdpbGwgdXNlIGFuCj4gPiA+IGlz
X3BoeV9wd3Jfb24gZmxhZyB0byBjaGVjayBpZiB0aGUgUEhZIGlzIGFscmVhZHkgcG93ZXJlZCBv
biBvciBvZmYsCj4gPiA+IGF2b2lkaW5nIHJlZHVuZGFudCBjYWxscy4gUHJvdGVjdCB0aGUgaXNf
cGh5X3B3cl9vbiBmbGFnIHdpdGggYSBtdXRleAo+ID4gPiB0byBlbnN1cmUgc2FmZSB1c2FnZSBh
bmQgcHJldmVudCByYWNlIGNvbmRpdGlvbnMuCj4gPiA+IAo+ID4gCj4gPiBUaGlzIHNtZWxscyBs
aWtlIHRoZSBwaHlfcG93ZXJfe29uL29mZn0gY2FsbHMgYXJlIG5vdCBiYWxhbmNlZCBhbmQgeW91
IGFyZQo+ID4gdHJ5aW5nIHRvIHdvcmthcm91bmQgdGhhdCBpbiB0aGUgVUZTIGRyaXZlci4KPiAK
PiBIaSBNYW5pLAo+IAo+IFllcywgdGhlcmUgY2FuIGJlIHNjZW5hcmlvcyB0aGF0IHdlcmUgbm90
IHByZXZpb3VzbHkgZW5jb3VudGVyZWQgYmVjYXVzZQo+IHBoeV9wb3dlcl9vbiBhbmQgcGh5X3Bv
d2VyX29mZiB3ZXJlIG9ubHkgY2FsbGVkIGR1cmluZyBzeXN0ZW0gc3VzcGVuZAo+IChzcG1fbHZs
ID0gNSkuIEhvd2V2ZXIsIHdpdGggcGh5X3Bvd2VyX29uIG5vdyBtb3ZlZCB0bwo+IHVmc19xY29t
X3NldHVwX2Nsb2NrcywgdGhlcmUgaXMgYSBzbGlnaHRseSBtb3JlIHByb2JhYmlsaXR5IG9mIHBo
eV9wb3dlcl9vbgo+IGJlaW5nIGNhbGxlZCB0d2ljZSwgaS5lLiwgcGh5X3Bvd2VyX29uIGJlaW5n
IGludm9rZWQgd2hlbiB0aGUgUEhZIGlzIGFscmVhZHkKPiBvbi4KPiAKPiBGb3IgaW5zdGFuY2Us
IGlmIHRoZSBQSFkgcG93ZXIgaXMgYWxyZWFkeSBvbiBhbmQgdGhlIFVGUyBkcml2ZXIgY2FsbHMK
PiB1ZnNfcWNvbV9zZXR1cF9jbG9ja3MgZnJvbSBhbiBlcnJvciBoYW5kbGluZyBjb250ZXh0LCBw
aHlfcG93ZXJfb24gY291bGQgYmUKPiBjYWxsZWQgYWdhaW4gd2hpY2ggbWF5IGluY3JlYXNlIHBo
eV9jb3VudCBhbmQgY2FuIGNhdXNlIGluY29uc2lzdGVudCBwaHkKPiBiaGVhdmlvdXIgLiBUaGVy
ZWZvcmUsIHdlIG5lZWQgdG8gaGF2ZSBhIGZsYWcsIGlzX3BoeV9wd3Jfb24sIGluIHRoZQo+IGNv
bnRyb2xsZXIgZHJpdmVyLCBwcm90ZWN0ZWQgYnkgYSBtdXRleCwgdG8gaW5kaWNhdGUgdGhlIHN0
YXRlIG9mCj4gcGh5X3Bvd2VyX29uIGFuZCBwaHlfcG93ZXJfb2ZmLgo+IAoKSWYgcGh5X3Bvd2Vy
X29uKCkgaXMgY2FsbGVkIHR3aWNlIHdpdGhvdXQgcGh5X3Bvd2VyX29mZigpLCB0aGVyZSBjYW4g
YmUgb25seSAyCnBvc3NpYmlsaXRpZXM6CgoxLiBwaHlfcG93ZXJfb2ZmKCkgaXMgbm90IGJhbGFu
Y2VkCjIuIHBoeV9wb3dlcl9vbigpIGlzIGNhbGxlZCBmcm9tIGEgd3JvbmcgcGxhY2UKCj4gVGhp
cyBhcHByb2FjaCBpcyBhbHNvIHByZXNlbnQgaW4gUXVhbGNvbW0gZG93bnN0cmVhbSBVRlMgZHJp
dmVyIGFuZCBzaW1pbGlhcgo+IHNvbHV0aW9uIGluIG10ayB1ZnMgZHJpdmVyIHRvIGhhdmUgZmxh
ZyBpbiBjb250cm9sbGVyIGluZGljdHJpbmcgcGh5IHBvd2VyCj4gc3RhdGUgaW4gdGhlaXIgdXBz
dHJlYW0gVUZTIGRyaXZlcnMuCj4gCgpObywgaGF2aW5nIHRoaXMgY2hlY2sgaW4gdGhlIGhvc3Qg
ZHJpdmVyIGlzIGNsZWFybHkgYSB3b3JrYXJvdW5kIGZvciBhIGJyb2tlbgpiZWhhdmlvci4gSSBk
byBub3Qgd2FudCB0byBjYXJyeSB0aGlzIG1lc3MgYWxsIGFsb25nLgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
