Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE0E3C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 16:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QW2oht7HcbY3eUTy0HzckCBGxXi8cHZunp2gBL53w4=; b=ca1eKh6ZB8XDdQ
	Vtc2jDH+ZCGz6bi08ASsiMdP8HU1uvdTRUsu1Vi6urRlZeW5gitsY7PdIB2HJvMr3URusGsMlvUHG
	wX5i2qAfXEN9Y1CXaTtQlI4eQLLRfm5JaqcrPJBj0Puokp4Qvp0h/CCkirzh+wArYf1UfkdotiIEc
	2AmazoEg+d49J1tjfCZ3ZCD0Pt2lrgvSbamw1qEYVbf4IvwPKgqADd73qiaK6JqENqs+DzmV7Hy80
	cdX7RPpZPxLqH18Tv4pnud/VBgjXyyQkGM7f9YEkjI4tjpduD4PYAwrx5Q/z+KM82pYy8ESK8jaAI
	Qx4j5MVhK/IRT0Njj85w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tezHH-0000000Fz7l-2TWD;
	Mon, 03 Feb 2025 16:26:27 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tezHE-0000000Fz7D-3X5W
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 16:26:26 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-21649a7bcdcso79460505ad.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Feb 2025 08:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738599984; x=1739204784; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fpVOevLK/nWn6zp5PxG8PfTYQAwpuKIZhTQ2q8JK1sU=;
        b=EqJZnBDmbbf6oD8pBZgNzMPzl1IJ72pFZEjXy7l1nKdW1kqEdKQhISQBn/2zatx3fs
         UWmuXwIOWgvN2/cwjAnxai3VOBBFomtRc3IPgXhVJN6FxoRBIIbKK5a/HlSlAXBekto7
         vmDLFf/gvPZAMRA3MzOphs4YjlBerkDpmbA7jwKU3eazI/mFRFL6FaYD4Ti6iBuhEszq
         R2SLQnxr1RhJeI0pNSdWAJa7wWFYQ2dBecFc7wltXLstZm7qLhW1D408DXszibwHbSK7
         UtSBEkbxat3yMnGIgf56vi26O13HmZKbn1WJCfB+Uzf2Oq+u6F8240d3oAzxJNfcwjv/
         IhGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738599984; x=1739204784;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fpVOevLK/nWn6zp5PxG8PfTYQAwpuKIZhTQ2q8JK1sU=;
        b=OsTsQRnHFy1EFMITSUrk2ETqVdea1FbVzecCtMs+hcC7Y/iPa3ZBgqs4Qg4hFV6PCx
         j6iXuulJy0aYtrwlkHWr7FD26Kh5raYhZOsiDrLwCjA73dLchdZTxZF2PM3QHT3N3QWZ
         5aHyP23tTdWiTxKn3whTD7UAd8l+jNBJ2U45Q7Ib4N7IVqjg8o4edUQklTOxUxWSS5ND
         fiCKYC0U9H9aNrAdxErYWK4Wuy9jixeTYQ+Gt48Tlip2mwkNgOHrl1Bfm9lGqkS2p8ZV
         T+FWAHtGOEYLiOkbWg+Y1yGKp1z8p8qYx/LJlqyhy1+qI9e9FWetBjbmOAkVfmK5Tr12
         9DHg==
X-Forwarded-Encrypted: i=1; AJvYcCUC8X8UIcwBTxG9OGWMatKNtLEIQLmy+M+rG6iCURxQPROEFdpnwMxE0NTDz47pF9nBBAHzfPlqGoY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVm9jcxRHWsI9PgqIhWC89IN1m3oNJusTJp2UR4uCd4E76rUzW
	2299g8jVM5c0Nqt0dWArs47NhsEGP2Wle1UJyIMVtTQiz8AfYEv71KPoB/zEAg==
X-Gm-Gg: ASbGnctn0zpHEaTVg730ZXwnF6ScAbF1vD8ZfE+dYy4aUVLjIMCuvUg8DlcKPKuHXkN
	1sznyugQj5OqLN1V35XwFDwagv/bXTE8x8i/V7ith1rtCSJWDeqCktGvcIfcMGOMHnRxPPvVp+t
	/kkqtUIfn24c+D/5zyvc1DFGuX6jn+vR0m+pJ9ZvnmbmyQBHgzPWevBZGIKc8Y2NLuQeN+Xudrc
	cNkFST7gdqJ+thWgGC6Zz4S+xv32RhENM8c2BbB2Dr+hO9fGZbYj9AN9VomjWxNkDSszL9Tyj5o
	S5yM+LO0MvnmnMIdpFQPq6OCIw==
X-Google-Smtp-Source: AGHT+IFOuXKAdtxhNw7CHCzZkSB+L34XynX4lNUCqGi6tRRgVguTo3ptD/9ETnLqXyet7OFZO69Avw==
X-Received: by 2002:a17:902:f68a:b0:21a:8769:302e with SMTP id d9443c01a7336-21dd7c65746mr352286105ad.14.1738599983682;
        Mon, 03 Feb 2025 08:26:23 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21de31ee1fasm78854315ad.44.2025.02.03.08.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 08:26:23 -0800 (PST)
Date: Mon, 3 Feb 2025 21:56:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Praveenkumar I <quic_ipkumar@quicinc.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v7 6/7] arm64: dts: qcom: ipq5332: Add PCIe related nodes
Message-ID: <20250203162617.sstmdvv7d3k53izf@thinkpad>
References: <20250122063411.3503097-1-quic_varada@quicinc.com>
 <20250122063411.3503097-7-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250122063411.3503097-7-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_082624_881934_8A1E6E9F 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCBKYW4gMjIsIDIwMjUgYXQgMTI6MDQ6MTBQTSArMDUzMCwgVmFyYWRhcmFqYW4gTmFy
YXlhbmFuIHdyb3RlOgo+IEZyb206IFByYXZlZW5rdW1hciBJIDxxdWljX2lwa3VtYXJAcXVpY2lu
Yy5jb20+Cj4gCj4gQWRkIHBoeSBhbmQgY29udHJvbGxlciBub2RlcyBmb3IgcGNpZTBfeDEgYW5k
IHBjaWUxX3gyLgo+IAo+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lv
QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUHJhdmVlbmt1bWFyIEkgPHF1aWNf
aXBrdW1hckBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWYXJhZGFyYWphbiBOYXJheWFu
YW4gPHF1aWNfdmFyYWRhQHF1aWNpbmMuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgpPbmUgbWlub3IgY29t
bWVudCBiZWxvdy4KCgpbLi4uXQoKPiArCQkJYXNzaWduZWQtY2xvY2tzID0gPCZnY2MgR0NDX1BD
SUUzWDJfQVVYX0NMSz4sCj4gKwkJCQkJPCZnY2MgR0NDX1BDSUUzWDJfQVhJX01fQ0xLPiwKPiAr
CQkJCQk8JmdjYyBHQ0NfUENJRTNYMl9BWElfU19CUklER0VfQ0xLPiwKPiArCQkJCQk8JmdjYyBH
Q0NfUENJRTNYMl9BWElfU19DTEs+LAo+ICsJCQkJCTwmZ2NjIEdDQ19QQ0lFM1gyX1JDSEdfQ0xL
PjsKPiArCj4gKwkJCWFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDIwMDAwMDA+LAo+ICsJCQkJCQk8
MjY2NjY2NjY2PiwKPiArCQkJCQkJPDI0MDAwMDAwMD4sCj4gKwkJCQkJCTwyNDAwMDAwMDA+LAo+
ICsJCQkJCQk8MTAwMDAwMDAwPjsKPiArCgpEb2VzIHRoZSBkcml2ZXJzIHJlYWxseSBuZWVkIHRv
IHNldCBjbG9jayByYXRlIGZvciB0aGVzZSBtYW55IGNsb2Nrcz8KCk5vLCBhcyBwZXIgdGhlIHJl
cGx5IHRvIG15IHNpbWlsYXIgcXVlc3Rpb24gdG8gSVBRNTQyNDoKaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtYXJtLW1zbS85MjA2ZTQ0Yy1kYTRmLTRiZGItODUwZi1mYWM1MTFmNGRkYzdA
cXVpY2luYy5jb20vCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
