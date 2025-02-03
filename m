Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B37E5C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4vu957CLo5vnUxUtJEKcObcAGaXkvff2VC3b1WPx7Q=; b=KFMsqozaDp7JV5
	yt/+9sqR84417n55lzjqZaYkd5bCbnYKK7tjlFX+/zW7kyXASO0/TCeOGrLa5u4Kn58I9XpMuxtdr
	nph5VzPNGXcrrM9PcBYMsQ/CMbwt7il2Raqx/vMVff7EYSD9OebkGzPzQ0oz17tauMARZM2vtDWh5
	Qfpe8pnyUC8P7090mrhsBr8V1mLou5P2qxwtuSgl3IBiVPzZ2XHDKrYVdgU6bUmuuXI471JDsb2AQ
	TvY2yIvcekx4Mp+1gM+kRs0gGBI1qkA3djZHYwfSyZlwT+1jkxkOK08kw1nPFJWX0kaDfE5ykJgT8
	mTmAgBmP3gn6FZuUj2cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tez81-0000000Fy42-0OAI;
	Mon, 03 Feb 2025 16:16:53 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tez7z-0000000Fy3B-28AD
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 16:16:52 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-21644aca3a0so107532375ad.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 08:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738599410; x=1739204210; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6flYFTaf2FZxbVF3ZCOxc2I7HjIzsuP1MXEjy7hroyk=;
        b=xniPbG2ztpYmhy4/uy7QF52PKfwNAzqhI4N1RLFEC9LhMy3fJMgAtI7p/0yPlLTHh/
         OArMs0Z2B1XVLMfGMQGtHDgy/INYumQfAbswRaFZxeDiI3eBtl2QMf/Crt4zGTiTdyow
         9/En9G0R+i1JLulKYBs4qRTSJZDEt3Z+MUih04Udw/BOf420/ARIFnE3g7NtpyTGr0Sx
         9g/QH+ncKRvAekAw+ayn2v0ulkGlmUAvXlBJeeXKXNs9Z/1HvxqCPp8NOB5NrUnr6fSi
         JIP2mO+WZCSjGXtLp7HtkOhsSFGXK9p/IJ9CvW/X+mtpuBtKExwr6ZtVyuEkoQv3MBhO
         IajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738599410; x=1739204210;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6flYFTaf2FZxbVF3ZCOxc2I7HjIzsuP1MXEjy7hroyk=;
        b=GbB6kstVfmEKbs0Y6UUJz7viGC+jDcMutYU2eS3JEvUeBJZJrkh/Ri8Js5NhqtCPK2
         NDT8e71WW6wvbjYhWJ/xqOnI4hERMN73aSXdb2pQOMdYtwWEtU4+SGBOrqwFfxoK79wr
         Yh6DbV71fZY44YGeKIIAaWrSxT0M68v3l0Wccu2td6HSm41ByLUnzV0Aiqo0wCnvP7fU
         CmPtFzSSOW0l43spg1/zzxJe18yonDlzHL//3IPDP+1D45MzuyUmwRkLuxSpTfLZUtbb
         wFQtgurOesRt4SDdqcAKcpZtoA/QI7wIQXJqLFp+bzXfyVCjfA0WJPOinuadgPlKk1SA
         yrNA==
X-Forwarded-Encrypted: i=1; AJvYcCVKDNhH2z3KfGokJTHk6rN57Mq9IB5JtPS9JaSUZG7aCrsRF4iq6+j3OxHMVHBqdwcPQMvkj9Wptfk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzvf7EGdL9DyrUZ3V4fT5vS0TDKCzWN6ibgXaRrccqHkPuD+L7y
	JBH2Kvfi7DZfw+RKbj4XJcwrbqaI7wFi8Rn/7+VZLlK5jFJ10xnTqFuDaOsrew==
X-Gm-Gg: ASbGncslverBOPolv6N/OFGz5MJll3B5ApcCW8VRDlhMCxZE8XKas4Vuj1UMsMNvios
	bRLngJKczInVpjr5wGmAWe+ZUSOnZHhtfNmYZ+dOnXK91I3AVyCPnhsKqRF1I5h8bGWAcTWJ1Fz
	N6NjwAeGQzJFDlRd+u87EbuPG+xnYgWomwiq99CqYpBM+UYhv6WRkUCNx8rOiZtkdeIp3Kqy3j5
	EmAOaT+HseSmYPWHzcukP0Xk+9lWz8Wp+gxeTKgxcGceDIMCHEz7lkHV9TJGXS5I8fJmm6FmeON
	GaJwqG/mJXyROPZZyiicUUHRNQ==
X-Google-Smtp-Source: AGHT+IFVZMlh6cYlSlFoHEwxzXAOuYn28wRS6kTbfChhspc03x0TeQyb4e1aNIvAKSJnT3jHJ38A8A==
X-Received: by 2002:a17:902:d48a:b0:216:4064:53ad with SMTP id d9443c01a7336-21dd7de20f8mr385506735ad.48.1738599410161;
        Mon, 03 Feb 2025 08:16:50 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-acec0479887sm8145679a12.52.2025.02.03.08.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:16:49 -0800 (PST)
Date: Mon, 3 Feb 2025 21:46:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 3/7] dt-bindings: PCI: qcom: Use sdx55 reg description
 for ipq9574
Message-ID: <20250203161643.n2dmu6yg6rb5lp6u@thinkpad>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-4-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122063411.3503097-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_081651_544019_782A62BF 
X-CRM114-Status: GOOD (  14.86  )
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

T24gV2VkLCBKYW4gMjIsIDIwMjUgYXQgMTI6MDQ6MDdQTSArMDUzMCwgVmFyYWRhcmFqYW4gTmFy
YXlhbmFuIHdyb3RlOgo+IEFsbCBEVCBlbnRyaWVzIGV4Y2VwdCAicmVnIiBpcyBzaW1pbGFyIGJl
dHdlZW4gaXBxNTMzMiBhbmQKPiBpcHE5NTc0LiBpcHE5NTc0IGhhcyA1IHJlZ2lzdGVycyB3aGls
ZSBpcHE1MzMyIGhhcyA2LiBNSEkgaXMgdGhlCj4gYWRkaXRpb25hbCAoaS5lLiBzaXh0aCBlbnRy
eSkuIFNpbmNlIHRoaXMgbWF0Y2hlcyB3aXRoIHRoZQo+IHNkeDU1J3MgInJlZyIgZGVmaW5pdGlv
biB3aGljaCBhbGxvd3MgZm9yIDUgb3IgNiByZWdpc3RlcnMsCj4gY29tYmluZSBpcHE5NTc0IHdp
dGggc2R4NTUuCj4gCj4gVGhpcyBjaGFuZ2UgaXMgdG8gcHJlcGFyZSBpcHE5NTc0IHRvIGJlIHVz
ZWQgYXMgaXBxNTMzMidzCj4gZmFsbGJhY2sgY29tcGF0aWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBWYXJhZGFyYWphbiBOYXJheWFuYW4gPHF1aWNfdmFyYWRhQHF1aWNpbmMuY29tPgoKQWNrZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5v
cmc+CgotIE1hbmkKCj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
Y2kvcWNvbSxwY2llLnlhbWwgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BjaS9xY29tLHBjaWUueWFtbAo+IGluZGV4IGJkODdmNmI0OWQ2OC4uNDEzYzZi
NzZjMjZjIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
Y2kvcWNvbSxwY2llLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGNpL3Fjb20scGNpZS55YW1sCj4gQEAgLTE2NSw3ICsxNjUsNiBAQCBhbGxPZjoKPiAgICAg
ICAgICAgICAgZW51bToKPiAgICAgICAgICAgICAgICAtIHFjb20scGNpZS1pcHE2MDE4Cj4gICAg
ICAgICAgICAgICAgLSBxY29tLHBjaWUtaXBxODA3NC1nZW4zCj4gLSAgICAgICAgICAgICAgLSBx
Y29tLHBjaWUtaXBxOTU3NAo+ICAgICAgdGhlbjoKPiAgICAgICAgcHJvcGVydGllczoKPiAgICAg
ICAgICByZWc6Cj4gQEAgLTIwNiw2ICsyMDUsNyBAQCBhbGxPZjoKPiAgICAgICAgICBjb21wYXRp
YmxlOgo+ICAgICAgICAgICAgY29udGFpbnM6Cj4gICAgICAgICAgICAgIGVudW06Cj4gKyAgICAg
ICAgICAgICAgLSBxY29tLHBjaWUtaXBxOTU3NAo+ICAgICAgICAgICAgICAgIC0gcWNvbSxwY2ll
LXNkeDU1Cj4gICAgICB0aGVuOgo+ICAgICAgICBwcm9wZXJ0aWVzOgo+IC0tIAo+IDIuMzQuMQo+
IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7g
r40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
