Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA8C4C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0C7DicLZpEJYhIH1BF+d0W393XSvK6xKyHe8KaoxCOY=; b=1nZcaKVCPw0bil
	dRb5eBquoq2gCKVBqvXCZ4TRIukZi2QGJ3sbDdtxD1GXUCom+9nNfhlQS+w6njrH70TQm3LOFGXU1
	fEF34D7wgFew3vyLtGvtfiZscHhF6+74kLO9eRJQswT4IgZ+b/0JtWJ8o8FiNR1ZZ+2WMyeUh4oQb
	Vm4ZbxTfkfs1Gv0hFAF+K/o+jPO25DrTMHCsOt3TyK+Jp1sRUVIi3prGZRVu77+DYFw8F30DAiwcG
	Z41w88xT7d+inDrWhaUgsEuHviPi1Vb3ujAgTXB54AHz/iOKZdpZf9ijYH1EHAXtaReSQwJzNfB/D
	tviEL2VBsCYNXY9mxQhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPXN-00000004iZA-2k43;
	Tue, 18 Mar 2025 05:30:49 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPXL-00000004iYn-1vUq
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:30:48 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2243803b776so58383525ad.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742275846; x=1742880646; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vVrlX5/yKFewVW4DNtsi/TcZgSdsi6s244vHzJco34Q=;
        b=fY/QMZeVi1YbWUeFk4Nklan2UDJ4m3zJlARbf51+SwsVmJOssFQ5SZJKTuOVLmP2kz
         gDNUpfvteAH7/xzU8YYN+2aFRu+nGlMSwd8bX1puOetOdjUdQLwXCheajhULh1DLZOen
         l3840xNZ+MltbD2RJbSZe8anJTjYenPo97yxSsbQProugbTWB1PmqzT/4cGYaDxl2kT1
         q0dIOqRG+fDXKYZUIehHSa2T51hiEuMRukJmlcqoBmng+KIUFTbuCOn4/oS8T+8NNOib
         3GUhflwBFxZlwoQaw7ZR5Z4P3vu/hCaQJIrKNiLkqHs05+T85L50mu59CM10twWleyoe
         f8Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275846; x=1742880646;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vVrlX5/yKFewVW4DNtsi/TcZgSdsi6s244vHzJco34Q=;
        b=Rlr3rTi9HXvhyXTK3b4UHqCyVuWfvdCwMoGdBmFPkGVQmiY0cUzBrH5lETbMPOBMvz
         vm/xP/zkKglLWgnEA5BZGi9b59Y+9FswJXI4XNYjqgYSJaDxMGeldcd5d6WbpCfQNvgh
         HctW1u9iDrFfBB5kme6wRDNIyTR3JjXrma5I06niBQfGbA/s3FZF8GV8K2EUuLsUfMQj
         tlS0vF2z/C+/v5ZDStgvc+WvKVxDAlDM+fq2YoehQi3fMuL1eRrjIB5QWQ9s/xZ4Gbas
         bm5O3HkHY+Ot+b78MpWodXfdzgrEAyLA4t4jsXuwyE0FPuKioaqBJQYpiNhJgGkqDB7L
         aEqA==
X-Forwarded-Encrypted: i=1; AJvYcCV517S+XqKcy18Yi+uCTlqhKUuoWn8O2lJXm6fWSZYW/8TmsF3gQaf089oC/axWtH4wpPtKijchyT8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfqqnzoJI78zzgbsOYOs5/CLkLWQojrIatLw/5yx08bVBOC9XQ
	M8AAnIoW7/gdKzyWmB2Ri7P59acxpCn1m6nOGEv5Cvsjqr+KALcPQyCApLyBug==
X-Gm-Gg: ASbGncs/Tuw/UvE9bXaRTaFAm3Yubjqtlyb9Z0SuZIhaDYoDqfL4WFwchdw2KXHdAJh
	16Uoexz7aLLsaRo0pym/YA5nzBDIXyc9ES/j0ZsgnVEj6DYEd8nIAg2TRarDaDDscrR4KoxVH2/
	gs49CNRzkGvUnHY/iRCKA+r0NKgWxdLbnWbVr64lAmobteVb7sZPMuwiqA1DhkB2H7bTHWBVyis
	3Urth1W7f9/wdNWS+i2Q53VVyRBOLEIDODUZEKvhlDXDUdtZWFma0D57Fkzs6EvLYn3smo2KOem
	MvXSjWUXwQ8Yk2SyaORNAj4gbMDBFttC3MW2E2HX9vUCZBmnkybVDhRPRC2zgf9lraI=
X-Google-Smtp-Source: AGHT+IEtt4J+fZu9T/XWxc1ZJtom12OamyfKq1wK8CZ3f3/gBNHUNIaz9zHfTwn3v99uwCqK19+WIQ==
X-Received: by 2002:a17:902:db0a:b0:220:faa2:c911 with SMTP id d9443c01a7336-2262c53587bmr23587095ad.14.1742275846568;
        Mon, 17 Mar 2025 22:30:46 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6bbffc2sm85375845ad.162.2025.03.17.22.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:30:46 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:00:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: sm8750: Add UFS nodes for
 SM8750 MTP
Message-ID: <20250318053038.k25p26qsxqozqyvb@thinkpad>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-5-0dfdd6823161@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310-sm8750_ufs_master-v2-5-0dfdd6823161@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_223047_495465_86FA8CA8 
X-CRM114-Status: GOOD (  12.83  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MTI6MzNQTSAtMDcwMCwgTWVsb2R5IE9sdmVyYSB3
cm90ZToKPiBGcm9tOiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPiAK
PiBBZGQgVUZTIGhvc3QgY29udHJvbGxlciBhbmQgUEhZIG5vZGVzIGZvciBTTTg3NTAgTVRQIGJv
YXJkLgo+IAo+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+Cj4gUmV2aWV3ZWQtYnk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZC5k
eWJjaW9Ab3NzLnF1YWxjb21tLmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6IE1hbmlzaCBQYW5kZXkg
PHF1aWNfbWFwYUBxdWljaW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYW5pc2ggUGFuZGV5IDxx
dWljX21hcGFAcXVpY2luYy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNf
bml0aXJhd2FAcXVpY2luYy5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC1tdHAuZHRzIHwgMTggKysrKysrKysrKysrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg3NTAtbXRwLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9zbTg3NTAtbXRwLmR0cwo+IGluZGV4IDllM2FhY2FkN2JkYWI2ODQ4ZTg2Zjhl
NDVlMDQ5MDdlMWM3NTJhMDcuLjlkMzQxNTllNzM5NDhlN2YzZjkzOTU5M2QxYWNlNDQ0Y2M1ZGNk
MTUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC1tdHAuZHRz
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODc1MC1tdHAuZHRzCj4gQEAgLTc5
MiwzICs3OTIsMjEgQEAgJnRsbW0gewo+ICAmdWFydDcgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+
ICB9Owo+ICsKPiArJnVmc19tZW1fcGh5IHsKPiArCXZkZGEtcGh5LXN1cHBseSA9IDwmdnJlZ19s
MWpfMHA5MT47Cj4gKwl2ZGRhLXBsbC1zdXBwbHkgPSA8JnZyZWdfbDNnXzFwMj47Cj4gKwo+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJnVmc19tZW1faGMgewo+ICsJcmVzZXQtZ3Bp
b3MgPSA8JnRsbW0gMjE1IEdQSU9fQUNUSVZFX0xPVz47Cj4gKwo+ICsJdmNjLXN1cHBseSA9IDwm
dnJlZ19sMTdiXzJwNT47Cj4gKwl2Y2MtbWF4LW1pY3JvYW1wID0gPDEzMDAwMDA+Owo+ICsJdmNj
cS1zdXBwbHkgPSA8JnZyZWdfbDFkXzFwMj47Cj4gKwl2Y2NxLW1heC1taWNyb2FtcCA9IDwxMjAw
MDAwPjsKPiArCj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gCj4gLS0gCj4gMi40Ni4xCj4g
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
