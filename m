Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44D8AD1A428
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 05:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCevSpLpgx2lUUomUI/PoxiHRsGeHds5YnRxFO+yZ84=; b=C8NEjRrnExGqjV
	EFSmLVkNrzm440/4RjF2MW9fFbYoV+mwesb7vEL6JmF8p6dS8lm1fn7rhm9R5M9rsQYqZcqXAaI0u
	zhsfAUMKBFCy+YdsCDAHlPK+3VFnDcdGQR2FsoMKG/wXSwbqG25ayKAa6uvW/l/JYEx9bBkiLyRgF
	H6DLXsDd2XezqPfnYY63CgvtHwlPawvA1mIvlibdHiJDhit/SABOvfojvo94RAZd7PbcHr/MLHVZi
	yr6+vjBPYImqaCqWou+eoIbVzy9FAz/pr7Ss43lHqLfeCsMz8WUxLwIirkusFShq40zCNAbuG0fxv
	t2voHAOPB5K95by6g6kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szUo6-00000000ZpZ-3654;
	Sat, 12 Oct 2024 05:36:50 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szUo3-00000000ZpE-0zcR
	for linux-phy@lists.infradead.org;
	Sat, 12 Oct 2024 05:36:48 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-20ca96a155cso10446185ad.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Oct 2024 22:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728711406; x=1729316206; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MjQuIV6kj3VfwRWddXnrTlmwecAWDBUJYA1PrNxHudo=;
        b=NQ9rwByM0K2l2DoUy187eZOBBY47PVsq3B/9sukiLtnsgshLMe1kVlmY/AWUvvaP0k
         r7sslI7my3puVGdftXOtI60OmCNvbGR2gHrX0S2iNrpUs1CJTKO1PVRX8UUm5wcFXBiM
         5I7Owlyz2w8sNhm8Mttr9Y3fls7YrnuQKZTCHlTFKES5+fhxMk0prFYkN0jejtj69nEx
         q15Dmh01MgUCdBVtxEpkZQ10cizWN1fHZcbptyX1ZR6A/J8LWdHIo/JUsdHIy7BUL8/B
         lR5MeQwwCWYc1GxCk75eUmTg6hQ14ehe0pk2uHUxW2S0YeSwy+UMkWQSZMGaxqK1bPpl
         veIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728711406; x=1729316206;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MjQuIV6kj3VfwRWddXnrTlmwecAWDBUJYA1PrNxHudo=;
        b=fUBBjq1mjCrePo/v5a48bo6u35ON5ZezI5kjIsdEvLR0HfG8b0A46/FRPOtrTk92zw
         /Ky5PnRBPXW3k/f90r8fHS96iMV+IBu1EIM2l8xQktg4N9eOkUwVZSWVYVlAZjn+M5FA
         7Y1OY+UmVuoOyFADPkQGQf2uLu16go2rTdLFd+ogJ2mJBstYyFtd+yqAha2vpyRoVSwr
         fVYsyM02sm8pLvNUBsEt2TQO+IIIsh7AsyhM/bOaCQRbUF8G0KnYAwu0NAPBXBbBPt8j
         kBbo0jozedu6Ta2q3ZmLkM9+K8bfKceqwPsSSxoHFyt0rioY6OPDACXSD/P0yNQJCN4x
         GBBQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/Vl5+QRSvr6IHnEu0YIXzD5fRGX13o3UvTpE/gpVjHVrzslozAWuciSjd78DVrYurLHcTXkPXwxw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxigE8trVL2VxDtNx6vE1AybeFcSANijOMgWredvVm48UUeSnFK
	d8Kk8XgJrDQF1dJOd93YbrMUE+uJdsvfz4/KPTwwUbw2cUXIj29lTgI0peDIDg==
X-Google-Smtp-Source: AGHT+IHqiyyz1xhjY6vqhIqY84FxPaW6G2o/VAwjL/1LFjW/xaek+9WCg+PZY5ymNnouaWkyvQGCag==
X-Received: by 2002:a17:90b:893:b0:2e0:a47a:5eb0 with SMTP id 98e67ed59e1d1-2e2f0da8051mr5652417a91.38.1728711406131;
        Fri, 11 Oct 2024 22:36:46 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2a36417afsm6683894a91.0.2024.10.11.22.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 22:36:45 -0700 (PDT)
Date: Sat, 12 Oct 2024 11:06:37 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 7/8] PCI: qcom: Fix the cfg for X1E80100 SoC
Message-ID: <20241012053637.cu2eyle6d7gbqsth@thinkpad>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-8-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-8-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_223647_336352_23964E8B 
X-CRM114-Status: GOOD (  18.61  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDM6NDE6NDFBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gQ3VycmVudGx5LCB0aGUgY2ZnXzFfOV8wIHdoaWNoIGlzIGJlaW5nIHVzZWQgZm9yIFgxRTgw
MTAwIGhhcyBjb25maWdfc2lkCj4gY2FsbGJhY2sgaW4gaXRzIG9wcyBhbmQgZG9lc24ndCBkaXNh
YmxlIEFTUE0gTDBzLiBIb3dldmVyLCBhcyBzYW1lIGFzCj4gU0M4MjgwWCwgUENJZSBjb250cm9s
bGVycyBvbiBYMUU4MDEwMCBhcmUgY29ubmVjdGVkIHRvIFNNTVV2MyBhbmQgaXQgaXMKCiIuLi5j
b25uZWN0ZWQgdG8gU01NVXYzLCBoZW5jZSBkb2Vzbid0IG5lZWQgY29uZmlnX3NpZCgpIGNhbGxi
YWNrIgoKPiByZWNvbW1lbmRlZCB0byBkaXNhYmxlIEFTUE0gTDBzLiBIZW5jZSByZXVzZSBjZmdf
c2M4MjgweHAgZm9yIFgxRTgwMTAwLgoKIi4uLmFuZCBoYXJkd2FyZSB0ZWFtIGhhcyByZWNvbW1l
bmRlZCB0byBkaXNhYmxlIEwwcyBhcyBpdCBpcyBicm9rZW4gaW4gdGhlCmNvbnRyb2xsZXIuIgoK
PiAKPiBGaXhlczogNmQwYzM5MzI0YzVmICgiUENJOiBxY29tOiBBZGQgWDFFODAxMDAgUENJZSBz
dXBwb3J0IikKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5j
b20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhh
c2l2YW1AbGluYXJvLm9yZz4KCldlIG5lZWQgdG8gYmFja3BvcnQgdGhpcyBwYXRjaCB0byBzdGFi
bGUgdG8gZml4IHRoZSBMMHMgaGFuZGxpbmcuIEJ1dCB3ZSBkb24ndApuZWVkIHRoZSBwcmV2aW91
cyBwYXRjaCBhcyBldmVuIHdpdGhvdXQgdGhhdCBjZmdfc2M4MjgweHAgZGlzYWJsZXMgTDBzLgoK
LSBNYW5pCgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyB8
IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBpbmRleCA0NjhiZDQyNDJl
NjEuLmM1MzNlNjAyNGJhMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLXFjb20uYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNv
bS5jCj4gQEAgLTE4NDcsNyArMTg0Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNl
X2lkIHFjb21fcGNpZV9tYXRjaFtdID0gewo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUt
c204NDUwLXBjaWUwIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0sCj4gIAl7IC5jb21wYXRpYmxlID0g
InFjb20scGNpZS1zbTg0NTAtcGNpZTEiLCAuZGF0YSA9ICZjZmdfMV85XzAgfSwKPiAgCXsgLmNv
bXBhdGlibGUgPSAicWNvbSxwY2llLXNtODU1MCIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+IC0J
eyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUteDFlODAxMDAiLCAuZGF0YSA9ICZjZmdfMV85XzAg
fSwKPiArCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXgxZTgwMTAwIiwgLmRhdGEgPSAmY2Zn
X3NjODI4MHhwIH0sCj4gIAl7IH0KPiAgfTsKPiAgCj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
