Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98182C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzvNKsxz47mCBVtsDAuXCBFpExgQECzSU0sdx8kfqwk=; b=qXr1EQaUrqcEs4
	Y9hELgER3LN40FMzdNLSRbTBO8rVPLSSyGh5RBvg63CLyDidDBnvu8HRYvPIBxPz8Ht5nkCtE7JV1
	FQO94wy9dRj+rSi2ho4/5bEqELDo/TkiOB+QDEzFqEUhvbE/EsAyRmloIVcIlFPtKBP0Jep/AAE3H
	vFgtDjlNzp2T7cfm4fheXWUjMb4FXd56yDIeL4G3EG8lehBxbXb/lc0yquR7slQgjYzAjCifgJNFz
	79rAPA6kFz9cOk/3q6fibP6VjKjO8HqoBTdJ3OWK2H15j1fH8201UaCJRMtqAPoRyGAi9nutvnCe+
	iIFEdkQ8IpMr82xnXXow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPhv-00000004k47-1Z2V;
	Tue, 18 Mar 2025 05:41:43 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPhs-00000004k3i-3M2I
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:41:41 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2243803b776so58543925ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276500; x=1742881300; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dFhxTV9vQHoJcyDhkGjeDrqWSmMQ/bwgeo19wSWQ6dA=;
        b=lUHck1A4P1B8/GDahsRlN9PgEgamzWkq17m+HZ/Cvrgg97T8vg3X/oDJTfbZyIPrn9
         2XvFSaGPMecOMO+lh+dLVaE6F6NVBjyRTQLJgoMhe3XjeK/Jb60CsxKoduU7IWIIoCrX
         Y7cqgf5sEM/3iyIGl95JzUR06LxrUrbcbuEPynX23hqmInDBYbjnxnXcgE+Q9ug1GUcG
         tl11dN3QQVlaEcBlY1FS+sjOPnDOL+PXQ8nNTrxRJe99zjNBrf0yOULt41hEgqXhOeyQ
         yy4E2HhpageEkIMb6riYDAti/qyLsrlVe5l4VD3OjZOM+/iKbByBbmomPDB/VazcV8x7
         nSkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276500; x=1742881300;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dFhxTV9vQHoJcyDhkGjeDrqWSmMQ/bwgeo19wSWQ6dA=;
        b=vFOOGRgJbwEf44Dq+J2pEURlroOLSR7dGDFUJCXEL7QUsEndwXoVKQshMXYbihxusY
         CPI3KwpGRAKvl8RVEbr3969xe3jUTUmZxGjoJPoYLsGQBCs0KTDfd/Snzvt1QfE0XHx7
         D+oGa6A0B2Biq4UrKJ5hQwE7c91ZzcW2wbVXv1l9ylpv/QvhgcPcZH/IznUH6wH18F1D
         BkOGV8uDhkyP1ha/jbI7YoD/OigCDLGwSWipamwFbCCoHfcntgqxWN48JX1Gs+x6H3ev
         9h5E4O7yEGXPCNc8BNvDDJxucXYod2y2OPjmmCDWZn7/+tn50F088Pq/nHwmFRf8RyuX
         LMdg==
X-Forwarded-Encrypted: i=1; AJvYcCV2At54pQQLxaOZSQoNUPdNW6QuIrSDBmYrAjL6RraF91USPzmC3smSIVXaURnPvxXuFp1vW6vJt/M=@lists.infradead.org
X-Gm-Message-State: AOJu0YwAxINlB6d9JX32UaVgrjAjm4WoWXA47NwfwM8/H3Psn1OvxotJ
	kUla3FOXXqp86kNuqwHdM8H178FMadYWyCmb9I8kXlwDqO7FuNdw4mglxKQcsA==
X-Gm-Gg: ASbGncth+RVmMt64lYXeXmnDeIY0oau86OO1DRaVfofNOn9rtZFmNWcSsew+vJWKplV
	IWOGAKBK+RZOmZSJ/6TGSvLU7aa0dpljWmpCgAt1nfxkr8Uz+NM1DFDQbf93xeTA19TR1zYhs1E
	pe+HnZXic+LIMvEZZyAJHRp/ZzqZnrP750TxywbaPdCKRJJzEECJ3vDaznhgKw6lO6YESdNjVUc
	VpuJvYL19DvOOvP1Fic6ALF922GIWP3LNjDYKuI0iYs5jaO+Siff4yV9HyC8tuuVVIfK621GWxg
	sqpZpi6Rnkz39SoabwHNLZajH5Sr6omu2T5xTjTB6k/J4BzBrnTk0g9kFt3ZSebzs8w=
X-Google-Smtp-Source: AGHT+IFrbYeRnivYWhqthfQc3eWy+MTQ83guEmTp8doGdlxwXja1s1CeoiHOQzGg4CwnkxsA7aHQYA==
X-Received: by 2002:a17:902:f708:b0:223:90ec:80f0 with SMTP id d9443c01a7336-2262c55fcafmr33444765ad.22.1742276499952;
        Mon, 17 Mar 2025 22:41:39 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c68883f2sm85528595ad.7.2025.03.17.22.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:41:39 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:11:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/8] dt-bindings: PCI: qcom,pcie-sa8775p: document
 qcs8300
Message-ID: <20250318054133.zrobaf5tvu2m4x2f@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310063103.3924525-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_224140_836461_03BC70D1 
X-CRM114-Status: GOOD (  12.76  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MzA6NThQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIGNvbXBhdGlibGUgZm9yIHFjczgzMDAgcGxhdGZvcm0uCgouLi53aXRoIHNhODc3
NXAgYXMgdGhlIGZhbGxiYWNrLgoKPiAKPiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgKEFybSkgPHJv
YmhAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196aXl1emhh
bkBxdWljaW5jLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2
YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+ICAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbCAgICAgICAgIHwgNyArKysr
KystCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29t
LHBjaWUtc2E4Nzc1cC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9xY29tLHBjaWUtc2E4Nzc1cC55YW1sCj4gaW5kZXggZWZkZTQ5ZDFiZWY4Li4xOWUzZWUxYjM4
MGQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9x
Y29tLHBjaWUtc2E4Nzc1cC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9xY29tLHBjaWUtc2E4Nzc1cC55YW1sCj4gQEAgLTE2LDcgKzE2LDEyIEBAIGRl
c2NyaXB0aW9uOgo+ICAKPiAgcHJvcGVydGllczoKPiAgICBjb21wYXRpYmxlOgo+IC0gICAgY29u
c3Q6IHFjb20scGNpZS1zYTg3NzVwCj4gKyAgICBvbmVPZjoKPiArICAgICAgLSBjb25zdDogcWNv
bSxwY2llLXNhODc3NXAKPiArICAgICAgLSBpdGVtczoKPiArICAgICAgICAgIC0gZW51bToKPiAr
ICAgICAgICAgICAgICAtIHFjb20scGNpZS1xY3M4MzAwCj4gKyAgICAgICAgICAtIGNvbnN0OiBx
Y29tLHBjaWUtc2E4Nzc1cAo+ICAKPiAgICByZWc6Cj4gICAgICBtaW5JdGVtczogNgo+IC0tIAo+
IDIuMzQuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
