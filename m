Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AB4C02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 10:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMKA77wBFaBGXJAigGFqb7XgFR1W9G3qw5vhTpa+Cks=; b=bQQq0b2rz7g5jF
	kQ6oqHPT79tm3ynsUqryq7nx4EP1x5px1Zus4RIK58eZHDBQo/D2syJAXlCh4jH4fxK4O1p2tbJJu
	4BzwQnSZnVHlus2MiDcCPOQFjaw+B5pyA5XUzTtfno/WsRT+8LU6R1LvmrcDh1WhM5ueqh/tjpiDF
	q19yhYWdQWvooALbf2W2GcbZzg5ldepYjBYUg9LJdQCM0MFYZ8Z1OcCROTiNMXwwfy6LVgwzE0MDq
	4yvyunNfVpKbzRcwWyhmdP7CicAsBvYMIfxqDtXHQYBBhm/xGeosGmnKPUpPojPySyifJOL+FoDbg
	S51W/9gj95RLxEXktiVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thQrc-0000000Gxv9-2EqD;
	Mon, 10 Feb 2025 10:18:04 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thQnS-0000000Gx70-0Wo3
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 10:13:47 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-21f49bd087cso51245855ad.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 02:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739182425; x=1739787225; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YVno5Sq7zwbs75yBnVZY8GdclIkXa079v3wSCbF6j08=;
        b=TXmvG5yqMWY4BBQ/o6pp505j/OvsNyR1ozltOlZJFTT/TkNtcIlBqTn3+x4Oho/cDI
         dsK5prf/ZdR7siLHkNGZm/kqB1mLyzUpSEZMHOijUyJQr79E5XrzY5n+HGinA5JgBi0D
         yQHOBofYr6Oy75WtpTcjgHjBybxECa75rIsmdrN7AnFTluBrCMlt7TVPTzqYB+l1sEGR
         VWhdj5nfDM6EyZEvvzbL72FagAeT+lQlP7Aa7baYGyP5eE/ginbT93Q1ym5ZQDHulPZ+
         ynPJrXsdj8am8eImzzNpMuzxUMUxLZ1x1+jC3omIKjonOz+xcrTlhCv/x99vUcYDhucs
         XUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739182425; x=1739787225;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YVno5Sq7zwbs75yBnVZY8GdclIkXa079v3wSCbF6j08=;
        b=tj6tQnEuLQMeBPzk9lcyv9GJiu2HlI8+3yZYpSLMFBhsN6l5aWGxP+oAEDor2iMkgO
         cd9d+5ngwWveg1B6z0aUeelD8x/vbdQdIR0ZSj2uQ1kOPvP6CsjG2zCWmg6Cp6FdY/RJ
         lsLkSS5oKK/lWu/f5egFt2OfZyB+6N0TxQdPTdiKr2ocFQOcqswdgjlh+TqTqpr4lUBV
         Om8QxAJbEKxyuJEySPivYdsq0dXgBHgsORrUAY1UEQB15D8Cso4fruXGClrLDmw3Q1ra
         T5hN3Y6jj3WlMAy6KK7tOMjlamt769Qars0OseTG1iy4QW08jzs8fdBr/M6i0I+8QUdS
         8tKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxZvi9DfHbr9V0L4lj5XZAaxvcu/gs+S1y2y/taRsXXNW05Xz3zDIjIZUmFKs4hrh3BNR4X0ggUCY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVrTrSX7DuknAAgMW5636LNllxXHtzUc+i1NjFgVI/o/5Ui0Fd
	K7cqz9eUNPKyr/nSO+XVsVdc4WNLvG+6HPpPtigh1IwcXsUI2n/vA6/hYaqzwA==
X-Gm-Gg: ASbGncuV3GXDMJwL+T9cnh2dH59AObJCEZVSi+ZcLZFtlGCZf2lo4ouvYHUUpU5K44c
	7WPOoJ9digJhXnfcUN28sOcIkq5n6SmLJKWRyqtDKgySNH1vjsXXRxpmd08SEBBPlCgskmOtxs1
	pfzKJrLLmPJ0iJwiQHDt3qri9if2CBZmf9m2Nwf98yn6iZWEsHZmfiJ9rqcG4vkqVR/B82eFLfI
	jogvWnLFY6j0cHzvt+htBatFHKh4Tw4Ry6ko3FkgL1QbG/RRmLVox33FVFWHKQxg3qSEMdplE8a
	Z5ZGVl57rW142ZTtdgnqz5tfaiL8
X-Google-Smtp-Source: AGHT+IGUVt1XLeTQyYh8zx2PixPGHrQEZjH5CD8Qy4yBx4PREyPgzsVLxt7fw++6KdqziWtaewNdvA==
X-Received: by 2002:a05:6a20:d705:b0:1ed:a72f:dab5 with SMTP id adf61e73a8af0-1ee03b64561mr26246724637.36.1739182425181;
        Mon, 10 Feb 2025 02:13:45 -0800 (PST)
Received: from thinkpad ([220.158.156.173])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ad54e4a0049sm2072320a12.63.2025.02.10.02.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 02:13:44 -0800 (PST)
Date: Mon, 10 Feb 2025 15:43:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: neil.armstrong@linaro.org, quic_cang@quicinc.com
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Melody Olvera <quic_molvera@quicinc.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Nitin Rawat <quic_nitirawa@quicinc.com>,
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
Message-ID: <20250210101338.boziqlrxl2cei775@thinkpad>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
 <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_021346_171853_6F9BC44F 
X-CRM114-Status: GOOD (  30.87  )
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

KyBDYW4gKGZvciB0aGUgTUNRIHF1ZXJ5KQoKT24gTW9uLCBGZWIgMTAsIDIwMjUgYXQgMTA6Mzk6
MDRBTSArMDEwMCwgbmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPiBPbiAwOS8wMi8y
MDI1IDE2OjIxLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBGcmksIEZlYiAw
NywgMjAyNSBhdCAxMTo0NzoxMlBNICswMTAwLCBLb25yYWQgRHliY2lvIHdyb3RlOgo+ID4gPiBP
biAxMy4wMS4yMDI1IDEwOjQ2IFBNLCBNZWxvZHkgT2x2ZXJhIHdyb3RlOgo+ID4gPiA+IEFkZCBV
RlMgc3VwcG9ydCBmb3IgU004NzUwIFNvQ3MuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogTWVsb2R5IE9sdmVyYSA8cXVpY19tb2x2ZXJhQHF1aWNpbmMuY29tPgo+ID4gPiA+IC0tLQo+
ID4gPiA+IE5pdGluIFJhd2F0ICg1KToKPiA+ID4gPiAgICAgICAgZHQtYmluZGluZ3M6IHBoeTog
cWNvbSxzYzgyODB4cC1xbXAtdWZzLXBoeTogRG9jdW1lbnQgdGhlIFNNODc1MCBRTVAgVUZTIFBI
WQo+ID4gPiA+ICAgICAgICBwaHk6IHFjb20tcW1wLXVmczogQWRkIFBIWSBDb25maWd1cmF0aW9u
IHN1cHBvcnQgZm9yIFNNODc1MAo+ID4gPiA+ICAgICAgICBkdC1iaW5kaW5nczogdWZzOiBxY29t
OiBEb2N1bWVudCB0aGUgU004NzUwIFVGUyBDb250cm9sbGVyCj4gPiA+ID4gICAgICAgIGFybTY0
OiBkdHM6IHFjb206IHNtODc1MDogQWRkIFVGUyBub2RlcyBmb3IgU004NzUwIFNvQwo+ID4gPiA+
ICAgICAgICBhcm02NDogZHRzOiBxY29tOiBzbTg3NTA6IEFkZCBVRlMgbm9kZXMgZm9yIFNNODc1
MCBRUkQgYW5kIE1UUCBib2FyZHMKPiA+ID4gCj4gPiA+IFlvdSBzdGlsbCBuZWVkIHRoZSBzYW1l
IHdvcmthcm91bmQgODU1MC84NjUwIGhhdmUgaW4gdGhlIFVGUyBkcml2ZXIKPiA+ID4gKFVGU0hD
RF9RVUlSS19CUk9LRU5fTFNEQlNfQ0FQKSBmb3IgaXQgdG8gd29yayByZWxpYWJseSwgb3IgYXQg
bGVhc3QKPiA+ID4gdGhhdCB3YXMgdGhlIGNhc2UgZm9yIG1lIG9uIGEgODc1MCBRUkQuCj4gPiA+
IAo+ID4gPiBQbGVhc2UgY2hlY2sgd2hldGhlciB3ZSBjYW4gbWFrZSB0aGF0IHF1aXJrIGFwcGx5
IGJhc2VkIG9uIGN0cmwKPiA+ID4gdmVyc2lvbiBvciBzbywgc28gdGhhdCB3ZSBkb24ndCBoYXZl
IHRvIGtlZXAgZ3Jvd2luZyB0aGUgY29tcGF0aWJsZQo+ID4gPiBsaXN0IGluIHRoZSBkcml2ZXIu
Cj4gPiA+IAo+ID4gCj4gPiBUaGF0IHdvdWxkIGJlIGEgYml6YXJyZS4gV2hlbiBJIGFkZGVkIHRo
ZSBxdWlyaywgSSB3YXMgdG9sZCB0aGF0IGl0IHdvdWxkIGFmZmVjdAo+ID4gb25seSBTTTg1NTAg
YW5kIFNNODY1MCAodGhpcyBvbmUgSSBsZWFybmVkIGxhdGVyKS4gSSdtIG5vdCBhZ2FpbnN0IGFw
cGx5aW5nIHRoZQo+ID4gcXVpcmsgYmFzZWQgb24gVUZTSEMgdmVyc2lvbiBpZiB0aGUgYnVnIGlz
IGNhcnJpZWQgZm9yd2FyZCwgYnV0IHRoYXQgd291bGQgYmUgYW4KPiA+IGluZGljYXRpb24gb2Yg
YmFkIGRlc2lnbi4KPiAKPiBJc24ndCA4NzUwIGNhcGFibGUgb2YgdXNpbmcgTUNRIG5vdyA/IGJl
Y2F1c2UgdGhpcyBpcyB0aGUgd2hvbGUgaXNzdWUgYmVoaW5kCj4gdGhpcyBVRlNIQ0RfUVVJUktf
QlJPS0VOX0xTREJTX0NBUCwgaXQncyBzdXBwb3NlZCB0byB1c2UgTUNRIGJ5IGRlZmF1bHQuLi4g
YnV0Cj4gd2UgZG9uJ3QuCj4gCj4gSXMgdGhlcmUgYW55IG5ld3MgYWJvdXQgdGhhdCA/IEl0J3Mg
YSBjbGVhciByZWdyZXNzaW9uIGFnYWluc3QgZG93bnN0cmVhbSwgbm90Cj4gaGF2aW5nIE1DUSBt
YWtlcyB0aGUgVUZTIGRyaXZlciBzdHJ1Z2dsZSB0byByZWFjaCBoaWdoIGJhbmR3aWR0aCB3aGVu
IHRoZSBzeXN0ZW0KPiBpcyBidXN5IGJlY2F1c2Ugd2UgY2FuJ3Qgc3ByZWFkIHRoZSBsb2FkIG92
ZXIgYWxsIENQVXMgYW5kIHdlIGhhdmUgb25seSBzaW5nbGUKPiBxdWV1ZSB0byBzdWJtaXQgcmVx
dWVzdHMuCj4gCgpUaGVyZSBhcmUgaGFyZHdhcmUgaXNzdWVzIG9uIFNNODU1MCBhbmQgU004NjUw
KD8pIGZvciB0aGUgTUNRIGZlYXR1cmUuCkFwcGFyZW50bHksIFFjb20gY2FycmllcyB0aGUgd29y
a2Fyb3VuZCBpbiBkb3duc3RyZWFtLCBidXQgSSBnb3QgdGlyZWQgb2YKcHVzaGluZyB0aGVtIHRv
IHVwc3RyZWFtIHRoZSBmaXgoZXMpLgoKTWF5YmUgQ2FuIEd1byBjYW4gc2hhcmUgd2hhdCBpcyB0
aGUgbGF0ZXN0IHVwZGF0ZSBvbiB0aGlzLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
