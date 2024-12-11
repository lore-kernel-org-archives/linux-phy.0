Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CBE4E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 08:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUPKZpjlBlQOH5RLHPDNn7RjEKnDoWLFtUv/BkKVZVI=; b=l2S0aJv+0B/iSC
	WlmfnmHGGdsCfWtl47C7tUup+N3Awgoe0FO6mlOJGlWnskWXtSr8+CnQlJlLVEf4RwndmzrJex3UY
	nXjUfaTjClWu1Z3S6cAgKvWlPZe5nbpzu0NrQ7rS6XJnn6VF3v+iS/pLiXfeayufn4xCwYlJfSDpc
	/nt2u+g5YEQDyoFySffNHp82+n97F7a3jecQIQGHhtTkIXMlAL+iC7oLqIyP1IFZN9uJ4Ei0OYo4M
	jgAKT+SxLXP7lYcm5MKjSR1R6mB9VZIZ45LwemGg/uxTB5+y94KjKKgwundDr97rBsEvbMHFWSPTV
	Ws1q49U97A35EGNrOR6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLI15-0000000ED9u-3F12;
	Wed, 11 Dec 2024 08:24:19 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLI13-0000000ED8P-0YCc
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 08:24:18 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-7fbc65f6c72so6362362a12.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Dec 2024 00:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733905456; x=1734510256; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xjyvF7kb3Fj9Wqsey0yFF+HNeDsO4egY2+tvcam+GFQ=;
        b=YleK6tI+Jcr2UdnBfqv1W3YAEoKKW1W+n95R4+mE5MZaXvhjPcggDlqtfYiXM7e2xZ
         zPE+9qpSPYGn23wwDmZdr68qB/EgpW3IZ9B2VvYg4sTOQ8REehdP05UZ87eIxVs6+ZON
         qgyjbs1meF1H4m+4QX/u072oxlYxMShN54z6QnX6lXoj8eYqk8eDPcuKyhN/vRA26NDR
         Cp1KQ8W7qyHfYaTBUpY+eTzvy6wfqxT60Nsr2eqtDBBFVFH5rC03pP9sgX4HabvXEauY
         FizPKuV0TOtCqTjUOg3s/3+xcaNK4/UBHICZOZdhuu0pekX/zt4PxitGdzsATH6AJywN
         Dd/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733905456; x=1734510256;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xjyvF7kb3Fj9Wqsey0yFF+HNeDsO4egY2+tvcam+GFQ=;
        b=v6wGI/86rBINKXXR/cUSnqDUVvCNITBkbFu2IMXfVeuhZa0A8gi6F3HBkJBiOmCGEk
         9dBPnO6w4umnnmBXwJ3kOAk/ixqK21wQ6s7RAVJJLB7oSh2VusGyWZOoWB0XOw76W12J
         11QOOy/BQ/8aadgO3BDM0AdnG4IKDRzZlmf/mUnuTv3VcOtfV84BDwSNYc9Hfn4mfjrD
         QsTvUFJ0tPJZft+zDLFRmW3nlSXWyJMugoPPFv4wRionMx+E7+IxoxkuGxvJhGq3BAiY
         zWAGt0RD5iTUC02hAUcgTIRrKtzIUZK0L0HdZ1DT5x8ryrV2qzxrWXlFBCLGFaOXVNgB
         NkMA==
X-Forwarded-Encrypted: i=1; AJvYcCW7SztAgsK0x3I+gS9cwDCyv4H48W279Choc6xwo2DZAri18+yKGq/srS9ZbKXvoEoZNiBfD5WI2kg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfmKdwzVSLdX6VgXduf32F263WNzwi/bmvH7wIEP7APRgFpKfe
	/v0Jshrm+a29xlsoVNU/orKVpTst3da53njljhtVqkAAb2yRYF6JsBXK7m6Dgw==
X-Gm-Gg: ASbGnctonn8XJFuIJCzL8SiG7hglvfx4pxd7JdbFZlSlIBwx2XCltbyElHnpNlzbOHS
	A5jRL7vAPviT2Ew84UqpOZoOitZV6wdneWBVYw2s+iHc8YTufp6+CFn0/shwECpExSRS9eGNGhg
	JjUUKSUDgnmBpeUBBA1zCzSbEQoeDmj4pVDcE15jvx0Q8maKUUmaVWPh5dHN/uS+2ua4pKlzZKY
	2FZ5pISeSkbtA6IjWLk/I9XMY+iKw22YGdtGz2m0r22tXqY8s0cK8g4rEFx/AM=
X-Google-Smtp-Source: AGHT+IHAA8av2ZjtMDzhDwJWK9BDEonm49fwB5KzeIRHQyFoeoJaUDA8Pre4/aT4K/XkNchmbfmmOQ==
X-Received: by 2002:a05:6a20:72a4:b0:1e1:9f57:eac1 with SMTP id adf61e73a8af0-1e1c126f5d5mr4443839637.8.1733905456230;
        Wed, 11 Dec 2024 00:24:16 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fd2f40dc81sm6568577a12.64.2024.12.11.00.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:24:15 -0800 (PST)
Date: Wed, 11 Dec 2024 13:54:04 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,qmp-pcie: add optional
 current load properties
Message-ID: <20241211082404.p7fbmhooikmipxvm@thinkpad>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-2-quic_ziyuzhan@quicinc.com>
 <qvjtwilukxbeaxnbyzfkdsfkktm6p4yv3sgx3rbugpb6qkcbjy@rohvixslizhh>
 <20241211062053.vxdpovlmetvyx3za@thinkpad>
 <33697bd9-02f4-4a9a-b8c0-4930d7fdaee2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33697bd9-02f4-4a9a-b8c0-4930d7fdaee2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_002417_170096_B0D1D5BA 
X-CRM114-Status: GOOD (  22.82  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMDk6MDk6MThBTSArMDEwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAxMS8xMi8yMDI0IDA3OjIwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
d3JvdGU6Cj4gPiBPbiBUaHUsIERlYyAwNSwgMjAyNCBhdCAxMToyMzoxMUFNICswMTAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4+IE9uIFdlZCwgRGVjIDA0LCAyMDI0IGF0IDA2OjUy
OjQ3UE0gKzA4MDAsIFppeXVlIFpoYW5nIHdyb3RlOgo+ID4+PiBPbiBzb21lIHBsYXRmb3Jtcywg
dGhlIHBvd2VyIHN1cHBseSBmb3IgUENJZSBQSFkgaXMgbm90IGFibGUgdG8gcHJvdmlkZQo+ID4+
PiBlbm91Z2ggY3VycmVudCB3aGVuIGl0IHdvcmtzIGluIExQTSBtb2RlLiBIZW5jZSwgUENJZSBQ
SFkgZHJpdmVyIG5lZWRzIHRvCj4gPj4+IHNldCBjdXJyZW50IGxvYWQgdG8gdm90ZSB0aGUgcmVn
dWxhdG9yIHRvIEhQTSBtb2RlLgo+ID4+Pgo+ID4+PiBEb2N1bWVudCB0aGUgY3VycmVudCBsb2Fk
IGFzIHByb3BlcnRpZXMgZm9yIGVhY2ggcG93ZXIgc3VwcGx5IFBDSWUgUEhZCj4gPj4+IHJlcXVp
cmVkLCBuYW1lbHkgdmRkYS1waHktbWF4LW1pY3JvYW1wLCB2ZGRhLXBsbC1tYXgtbWljcm9hbXAg
YW5kCj4gPj4+IHZkZGEtcXJlZi1tYXgtbWljcm9hbXAsIHJlc3BlY3RpdmVseS5QQ0llIFBIWSBk
cml2ZXIgc2hvdWxkIHBhcnNlIHRoZW0gdG8KPiA+Pj4gc2V0IGFwcHJvcHJpYXRlIGN1cnJlbnQg
bG9hZCBkdXJpbmcgUEhZIHBvd2VyIG9uLgo+ID4+Pgo+ID4+PiBUaGlzIHRocmVlIHByb3BlcnRp
ZXMgYXJlIG9wdGlvbmFsIGFuZCBub3QgbWFuZGF0b3J5IGZvciB0aG9zZSBwbGF0Zm9ybXMKPiA+
Pj4gdGhhdCBQQ0llIFBIWSBjYW4gc3RpbGwgd29yayB3aXRoIHBvd2VyIHN1cHBseS4KPiA+Pgo+
ID4+Cj4gPj4gVWggdWgsIHNvIHRoZSBkb3duc3RyZWFtIGNvbWVzIGZpbmFsbHkhCj4gPj4KPiA+
PiBObyBzb3JyeSBndXlzLCB1c2UgZXhpc3RpbmcgcmVndWxhdG9yIGJpbmRpbmdzIGZvciB0aGlz
Lgo+ID4+Cj4gPiAKPiA+IE1heWJlIHRoZXkgZ290IGluc3BpcmVkIGJ5IHVwc3RyZWFtIFVGUyBi
aW5kaW5ncz8KPiA+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvdWZzLWNv
bW1vbi55YW1sOgo+ID4gCj4gPiB2Y2MtbWF4LW1pY3JvYW1wCj4gPiB2Y2NxLW1heC1taWNyb2Ft
cAo+ID4gdmNjcTItbWF4LW1pY3JvYW1wCj4gCj4gQW5kIGl0IGlzIGFscmVhZHkgYW4gQUJJLCBz
byB3ZSBjYW5ub3QgZG8gYW55dGhpbmcgYWJvdXQgaXQuCj4gCj4gPiAKPiA+IFJlZ3VsYXRvciBi
aW5kaW5nIG9ubHkgZGVzY3JpYmVzIHRoZSBtaW4vbWF4IGxvYWQgZm9yIHRoZSByZWd1bGF0b3Jz
IGFuZCBub3QKPiAKPiBObywgaXQgZXhhY3RseSBkZXNjcmliZXMgbWluL21heCBjb25zdW1lcnMg
Y2FuIHVzZS4gTGV0J3MgcXVvdGU6Cj4gImxhcmdlc3QgY3VycmVudCBjb25zdW1lcnMgbWF5IHNl
dCIKPiBJdCBpcyBhbGwgYWJvdXQgY29uc3VtZXJzLgo+IAo+ID4gY29uc3VtZXJzLiBXaGF0IGlm
IHRoZSBjb25zdW1lcnMgbmVlZCB0byBzZXQgdmFyaWFibGUgbG9hZCBwZXIgcGxhdGZvcm0/IFNo
b3VsZAo+IAo+IFRoZW4gZWFjaCBwbGF0Zm9ybSB1c2VzIHJlZ3VsYXRvciBBUEkgb3IgcmVndWxh
dG9yIGJpbmRpbmdzIHRvIHNldCBpdD8gSQo+IGRvbid0IHNlZSB0aGUgcHJvYmxlbSBoZXJlLgo+
IAo+ID4gdGhleSBoYXJkY29kZSB0aGUgbG9hZCBpbiBkcml2ZXI/IChldmVuIHNvLCB0aGUgbG9h
ZCBzaG91bGQgbm90IHZhcnkgZm9yIGVhY2gKPiA+IGJvYXJkKS4KPiAKPiBUaGUgbG9hZCBtdXN0
IHZhcnkgcGVyIGJvYXJkLCBiZWNhdXNlIHJlZ3VsYXRvcnMgdmFyeSBwZXIgYm9hcmQuIE9mCj4g
Y291cnNlIGluIHByYWN0aWNlIG1vc3QgZGVzaWducyBjb3VsZCBiZSB0aGUgc2FtZSwgYnV0IHJl
Z3VsYXRvcnMgYW5kCj4gdGhlaXIgbGltaXRzIGFyZSBhbHdheXMgcHJvcGVydGllcyBvZiB0aGUg
Ym9hcmQsIG5vdCB0aGUgU29DLgo+IAoKSG93IHRoZSBjb25zdW1lciBkcml2ZXJzIGFyZSBzdXBw
b3NlZCB0byBrbm93IHRoZSBvcHRpbXVtIGxvYWQ/CgpJIGRvbid0IHNlZSBob3cgdGhlIGNvbnN1
bWVyIGRyaXZlcnMgY2FuIHNldCB0aGUgbG9hZCB3aXRob3V0IGhhcmRjb2RpbmcgdGhlCnZhbHVl
cy4gQW5kIEkgY291bGQgc2VlIGZyb20gVUZTIHByb3BlcnRpZXMgdGhhdCBlYWNoIGJvYXJkIGhh
cyBkaWZmZXJlbnQKdmFsdWVzLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p
4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
