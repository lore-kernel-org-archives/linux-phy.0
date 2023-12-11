Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F38A7C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 12:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eLceAVYYfhFcoGZcQ0+AfRRimZG3hyGKiHe60+gcuVo=; b=KLL5V+gONbsBIS
	1AadRtkFte7jjOA/VuL4PgZQZVUEgxEn3JQyetqnfk0pZv6WIYv86zGrOrJ88OBFQStkfm+mO0qHd
	exByVp2FybiWEsWAuJwjgDY0K+437zoHHZnWQyO2/d4SWD58y1myuLDOSSqBnlvREX3jf8snCm7dq
	GquK10yHI4zWvuiEfWJwT5APmRmAqtDrk2kSGYz2DnlIpl8OOD0y4ptqWjMJLcYrND0OfaqMtV3ZU
	TZL8Kbh3m+MBzDwrjySI3dB0LriXeGsK/Zka4cd/E5+7Ihkt6XSt9KqKdBfs+C9sk/ZiucVjBBslN
	pDULaHXW3de066eUtz5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCfT1-004rpw-0m;
	Mon, 11 Dec 2023 12:32:59 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCfSo-004ro1-0L
	for linux-phy@lists.infradead.org;
	Mon, 11 Dec 2023 12:32:55 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6d089e8b1b2so412770b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Dec 2023 04:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702297964; x=1702902764; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fPAVPWVAnFaXRPunJWiaKjsDd+rTNd09tI3XdhhqUCE=;
        b=yB7sagxwhvLewimxOT1r6r3XIZhynOWt4O7oljg/Cdukemi0XXeZ4cXgJKyXS2hUVx
         dQKgpeKhD8DeqGDz+dPVr+jV2zGaTB4s5H4e0wuyeXVfZsP6n6JSNkL2UWFgAYPy5Qc1
         bIn5ZGyqhdLEA0YK18cp5PCXAVBWuvwB45edT2lzt3P+y4EpAcBe+OddTb00REBig5sI
         4LsnJpbX8GlYWf+oIehN+Xbqu0Loo5ZG8fBEWovP4hx3+X4MJz8X+nDOr2/+fITTwPFr
         owZrQC0FmOmIiHhyrNLOMyNvMockl82dxyNqeZVK8effqQmIXxZ45txBioZnF8mwdM6G
         V/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702297964; x=1702902764;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fPAVPWVAnFaXRPunJWiaKjsDd+rTNd09tI3XdhhqUCE=;
        b=K78IDNZalTLhJbD0/eaYwUXnD/eC2tyVginKg3DDRCyrwu1k1zkRxiwzVwfGC1jvHo
         qyb4AzH5V04NK/cqk9Z3yWNpQxg4KmI10p63zSj8O6A3gPgDtd5ZgiSlssu4pL6WsnR/
         6gKCCrWEBPD/vVJQtcFQCoOJLctay4DNboGHfg5zMfXe8GOvuZ5+1BJrN5+hyygr6VEh
         UiWFGhfj9LysHMmlh2duW96WqWslTpL9jJlX9IIIKy+uvhh8aarz5RabCHs5KGDDdZhI
         2yGKP0EpC/++UDx4IKa6wE0rE4sxBARrkB13JDGsXwHuseKCBfQepBN+tenBQkJ0bfre
         vCAA==
X-Gm-Message-State: AOJu0YxoDD3KcH/pU4PlRZmM/DyTaEQv2gLX2c8nTtxwEFdYRpAgaT4e
	JQL0WcbH+TJzBL/X1VMWkEWy
X-Google-Smtp-Source: AGHT+IGAj7mad8cH/r7AaL9JchtXkKhavxCYBULU5Feeu5CuqlFYGtjyc51OnSPI5ahkTCVMWMKpaQ==
X-Received: by 2002:a05:6a00:23c5:b0:6cb:a653:d927 with SMTP id g5-20020a056a0023c500b006cba653d927mr2166554pfc.3.1702297963665;
        Mon, 11 Dec 2023 04:32:43 -0800 (PST)
Received: from thinkpad ([117.207.26.193])
        by smtp.gmail.com with ESMTPSA id p1-20020a056a000a0100b006c06779e593sm6424692pfh.16.2023.12.11.04.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 04:32:43 -0800 (PST)
Date: Mon, 11 Dec 2023 18:02:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231211123232.GD2894@thinkpad>
References: <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <20231206131009.GD12802@thinkpad>
 <ZXGVjY9gYMD6-xFJ@hovoldconsulting.com>
 <20231207101252.GJ2932@thinkpad>
 <ZXHDCNosx8PCUzao@hovoldconsulting.com>
 <20231207132032.GL2932@thinkpad>
 <ZXHKcToXzTgoDCLW@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZXHKcToXzTgoDCLW@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_043246_552862_F9F39871 
X-CRM114-Status: GOOD (  29.20  )
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

T24gVGh1LCBEZWMgMDcsIDIwMjMgYXQgMDI6MzY6NDlQTSArMDEwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IE9uIFRodSwgRGVjIDA3LCAyMDIzIGF0IDA2OjUwOjMyUE0gKzA1MzAsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+IE9uIFRodSwgRGVjIDA3LCAyMDIzIGF0IDAyOjA1OjEy
UE0gKzAxMDAsIEpvaGFuIEhvdm9sZCB3cm90ZToKPiA+ID4gT24gVGh1LCBEZWMgMDcsIDIwMjMg
YXQgMDM6NDI6NTJQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+ID4gPiA+
IE9uIFRodSwgRGVjIDA3LCAyMDIzIGF0IDEwOjUxOjA5QU0gKzAxMDAsIEpvaGFuIEhvdm9sZCB3
cm90ZToKPiAKPiA+ID4gPiA+IFNob3VsZG4ndCB0aGF0IGJlCj4gPiA+ID4gPiAKPiA+ID4gPiA+
IAlxY29tLGJyb2tlbi1jbGtyZXEKPiA+ID4gPiA+IAo+ID4gPiA+ID4gc2luY2UgaXRzIHRoZSBD
TEtSRVEjIHNpZ25hbCB1c2VkIHRvIHJlcXVlc3QgUkVGQ0xLIHRoYXQgaXMgYnJva2VuLCBub3QK
PiA+ID4gPiA+IHRoZSBSRUZDTEsgaXRzZWxmPwo+ID4gPiA+ID4gCj4gPiA+ID4gCj4gPiA+ID4g
RGFybi4uLiBZb3UgYXJlIHJpZ2h0LiBJIGdvdCBjYXJyaWVkIGF3YXkgYnkgdGhlIGluaXRpYWwg
cHJvcGVydHkgbmFtZS4gVGhhbmtzCj4gPiA+ID4gZm9yIHNwb3R0aW5nIQo+ID4gPiAKPiA+ID4g
VGhpbmtpbmcgc29tZSBtb3JlIG9uIHRoaXMgYWZ0ZXIgaGl0dGluZyBzZW5kOiBJdCBtYXkgc3Rp
bGwgYmUgd3JvbmcKPiA+ID4gd2l0aCBhICdicm9rZW4tY2xrcmVxJyBwcm9wZXJ0eSBpbiB0aGUg
UEhZIGluc3RlYWQgb2YgaW4gdGhlIGNvbnRyb2xsZXIKPiA+ID4gKG9yIGVuZHBvaW50KS4KPiA+
ID4gCj4gPiA+IENvdWxkIHRoZXJlIG5vdCBiZSBvdGhlciB3YXlzIHRvIGhhbmRsZSBhIGJyb2tl
biBjbGtyZXEgc2lnbmFsIHNvIHRoYXQKPiA+ID4gdGhpcyByZWFsbHkgc2hvdWxkIGJlIGEgZGVj
aXNpb24gbWFkZSBieSB0aGUgT1MsIGZvciBleGFtcGxlLCB0byBkaXNhYmxlCj4gPiA+IEwxIHN1
YnN0YXRlcyBhbmQgY2xvY2sgUE0/Cj4gPiAKPiA+IE9uZSBoYXMgdG8gd2VpZ2ggdGhlIHBvd2Vy
IGNvbnN1bXB0aW9uIGJldHdlZW4ga2VlcGluZyByZWZjbGsgYWx3YXlzIG9uIGFuZAo+ID4gZGlz
YWJsaW5nIEwxU1MuIENoYWl0YW55YSwgY2FuIHlvdSBtZWFzdXJlIHBvd2VyIGNvbnN1bXB0aW9u
IGluIGJvdGggY2FzZXM/Cj4gCj4gU3VyZSwgbXkgcG9pbnQgd2FzIGp1c3QgdGhhdCB0aGF0J3Mg
YSBwb2xpY3kgZGVjaXNpb24gYW5kIG5vdCBzb21ldGhpbmcKPiB0aGF0IHNob3VsZCBiZSBlbmNv
ZGVkIGluIHRoZSBkZXZpY2V0cmVlIChhcyB3YXMgaW5pdGlhbGx5IHByb3Bvc2VkKS4KPiAKPiBB
bmQgdGhhdCB0aGUgcmlnaHQgcGxhY2UgZm9yIHRoZSByZW5hbWVkIHByb3BlcnR5IGlzIG5vdCBu
ZWNlc3NhcmlseSBpbgo+IHRoZSBQSFkgbm9kZSBlaXRoZXIuCj4gCj4gPiA+IFNpbXBseSBsZWF2
aW5nIHRoZSByZWZjbGsgYWx3YXlzIG9uIGluIHRoZSBQSFkgc2VlbXMgbGlrZSBhIGJpdCBvZiBh
Cj4gPiA+IGhhY2sgYW5kIEknbSBub3QgZXZlbiBzdXJlIHRoYXQgY2FuIGJlIGNvbnNpZGVyZWQg
Y29ycmVjdC4KPiA+IAo+ID4gSSB3b3VsZG4ndCBhZ3JlZSBpdCBpcyBhIGhhY2ssIGV2ZW4gdGhv
dWdoIGl0IG1heSBzb3VuZCBsaWtlIG9uZS4gVGhlIG9wdGlvbiB0bwo+ID4ga2VlcCByZWZjbGsg
YWx3YXlzIG9uIGluIHRoZSBQSFkgaXMgcHJlY2lzZWx5IHRoZXJlIGZvciB1c2VjYXNlIGxpa2Ug
dGhpcy4KPiAKPiBJIGp1c3Qgc2tpbW1lZCB0aGUgc3BlYyBzbyBwZXJoYXBzIEknbSBtaXNzaW5n
IHNvbWV0aGluZywgYnV0IHRoZXJlJ3MKPiBkZWZpbml0ZWx5IHdvcmRpbmdzIGluIHRoZXJlIHRo
YXQgZXhwbGljaXRseSBzYXlzIHRoYXQgTDEgUE0gc3Vic3RhdGVzCj4gbXVzdCBub3QgYmUgZW5h
YmxpbmcgdW5sZXNzIHlvdSBoYXZlIGEgZnVuY3Rpb25pbmcgQ0xLUkVRIyBzaWduYWwuCj4gCgpJ
IGNoZWNrZWQgJ1BDSSBFeHByZXNzIEJhc2Ugc3BlYyA0LjAnLCBhbmQgdGhlcmUgaXMgYSB3b3Jk
aW5nIGluICdTZWN0aW9uIDUuNQpMMSBQTSBTdWJzdGF0ZXMnOgoKRm9yIEwxIFBNIC4uLiBlYWNo
IHBvcnQgbXVzdCBoYXZlIGEgdW5pcXVlIGluc3RhbmNlIG9mIHRoZSBzaWduYWwgKENMS1JFUSMp
IGFuZAp0aGUgdXBzdHJlYW0gYW5kIGRvd25zdHJlYW0gcG9ydCBDTEtSRVEjIHNpZ25hbHMgbXVz
dCBiZSBjb25uZWN0ZWQuCgpTbyB5ZXMsIHdlIHNob3VsZCBub3QgZW5hYmxlIEwxIFBNIHN1YnN0
YXRlcyBpbiB0aGlzIGNhc2UuIEFuZCBhbHNvIGl0IGFwcGVhcnMKdG8gbWUgdGhhdCB0aGUgcHJv
cGVydHkgc2hvdWxkIGJlIHBhcnQgb2YgdGhlIGNvbnRyb2xsZXIgbm9kZSwgc2luY2UgQ0xLUkVR
IyBpcwpoYW5kbGVkIGJ5IHRoZSBjb250cm9sbGVyIGluc3RhbmNlLgoKLSBNYW5pCgo+IEpvaGFu
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
