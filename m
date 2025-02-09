Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E5EC02199
	for <linux-phy@archiver.kernel.org>; Sun,  9 Feb 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvLgdEJD3uzIHeydTjhMW4onjtx9yvQzwbHwOQyeW7k=; b=uKoZbrlHiM4uux
	fw6Tfkag1pJ8tSrXuNQc3MS2zQGixvwQNY0W1sYmiIV6MxFjti7Y/FWwqJBpxW9NDetPdt0pc8wBb
	mSuGhWfayaAw0wDzHAMQi8porf4gl1KbxID7A1Eujgdkv4Fsw64B5LLZTKvEtklg/3HBoKZomNM80
	prTSJxjD0Fo5cXN+1AfT4mDAiHQZ27sy3L1zlR1Y+m2K6rQq/0F8wKPy5j9JnD7v3QKS5BARmngld
	JQ7lFm78UPqcLgSkSP2hOz/zAEo+tmdTomCfs3Qfl7VbmRbOjLZuv+bsIsfIASnq6Xky3YB734SuE
	WiyXkMFN8EpxM2lpzvTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1th985-0000000F5QH-2J7s;
	Sun, 09 Feb 2025 15:21:53 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1th982-0000000F5Pr-2ajr
	for linux-phy@lists.infradead.org;
	Sun, 09 Feb 2025 15:21:51 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2f9b9c0088fso5587707a91.0
        for <linux-phy@lists.infradead.org>; Sun, 09 Feb 2025 07:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739114509; x=1739719309; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JljyH7L9Kp4vXvGrsHV+BTlHpLmdgYdjpTOUSBHWabo=;
        b=CxEw8hW8mRHQsCyIUymPJD4vUvKHGeKJF4+vfdU3KInYrZlNhvq1wgJ/u05fw54+0a
         17W4v4q1nsSqZLjh8f+U//wrx2Ciwp3FZe2sER29YBJX1/zHXE0pnjYj/Tif62Av6qxK
         R2egeYeo8olK8lDEibhdCwNOaM5wB2RtYnkkz6ec+u2SZIPJFQBVJOPkzI5cGlMZxuXT
         iRkMkGM+YSLNRRWxpI7ghVtpkEOStuewM3l4LuBmG0Uz+B04u3VPFmGniLLKPExlWl57
         xqb4fbO9qLAIvs/CUPmsrhzr+2/vd6ZzOf2lLWeREFzRtSmIyXdbhF7F3tQqyujRFR/O
         jNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739114509; x=1739719309;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JljyH7L9Kp4vXvGrsHV+BTlHpLmdgYdjpTOUSBHWabo=;
        b=GHNMqiGRN24VfbuHqH9cild0KzdM07ZM21PzOeKVCElFNDJpzSkP3Ka5+06YHAjp1X
         /PYlONDSI0WTDlFezo+Na03pSfg2TtfZWJxcLUV9t6sMS0DSm1/i6zOGBCyDWetRpb/0
         Q88jk8dqUzk7I4KYob07zSDPdKTyPydMDdPRjM4uErnRTmMep0XR/lDNkigXXal4kP5E
         gpayJfjjgosT0+7YMIesb3EkTV4/0TikWM7fa5BpSE8Xy/IZB/yP8YjbQ2LNODqAG8Ss
         MXI6+4SCd9nCIwn0wRArLCw+9Xm1ieB12dCEthIDbItj4bZ+iL0ASR+LDgCQelYip3X9
         BKPA==
X-Forwarded-Encrypted: i=1; AJvYcCXw4Nx09PJcF6PfvSc9j1vuVhoauG+nfvDnKbycH+3HwxaGB9G6c7glADojcu008vKIKCMJjfqho0w=@lists.infradead.org
X-Gm-Message-State: AOJu0YylylkS5MPKffNpqhHErBKtgsBMOj0q5Wdxjpzo1762z57/NkYi
	9bopaIcyTSAaJxNU4D+TiXpxOvHCI6EQ74A8/PveOvutcwVarfVqGjC/svigvw==
X-Gm-Gg: ASbGnctHBkvKOuh5qpW5t/siZnq7dokq9aG8V6opjq2aQWM9SKuZ0E8DQYacf5UESE1
	CydrHdLPjJ1+GoRHggLgzlim0qcFXoy7+wr1Cvl5NxehF3DtZhzZMJ/N85SfPB2K7nccczQ9VDe
	n3I0+HRKn2ty9ZbEFw78jDsZVNLViCFWQN0lI0Y0sv5tKHQ8oPjhwU1N1BzCeemHVPz88uHgDpV
	K1fV/JPqp+tmDyIDvxyuoqUWDsyZ1RfscaAErGr9Mc6EocLyuDtwKmpgfeP7Tp/+LchCHPIBdBS
	SnGyLECPCtLKLpc5RErWZr2B2nNy
X-Google-Smtp-Source: AGHT+IGWNpvwwkvO1VPlAyxGXl/1r1Q1NAlHKL3FT+xI1xaRL3g54LRlf6f/W3+YFvSs2/+0N4SfAQ==
X-Received: by 2002:a17:90b:3847:b0:2fa:603e:905c with SMTP id 98e67ed59e1d1-2fa603e909emr5034546a91.2.1739114509226;
        Sun, 09 Feb 2025 07:21:49 -0800 (PST)
Received: from thinkpad ([220.158.156.173])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa0b9c5872sm3020467a91.0.2025.02.09.07.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 07:21:48 -0800 (PST)
Date: Sun, 9 Feb 2025 20:51:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
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
Message-ID: <20250209152140.cyry6g7ltccxcmyj@thinkpad>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250209_072150_680726_656CB438 
X-CRM114-Status: GOOD (  19.66  )
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

T24gRnJpLCBGZWIgMDcsIDIwMjUgYXQgMTE6NDc6MTJQTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAxMy4wMS4yMDI1IDEwOjQ2IFBNLCBNZWxvZHkgT2x2ZXJhIHdyb3RlOgo+ID4g
QWRkIFVGUyBzdXBwb3J0IGZvciBTTTg3NTAgU29Dcy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
TWVsb2R5IE9sdmVyYSA8cXVpY19tb2x2ZXJhQHF1aWNpbmMuY29tPgo+ID4gLS0tCj4gPiBOaXRp
biBSYXdhdCAoNSk6Cj4gPiAgICAgICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNjODI4MHhwLXFt
cC11ZnMtcGh5OiBEb2N1bWVudCB0aGUgU004NzUwIFFNUCBVRlMgUEhZCj4gPiAgICAgICBwaHk6
IHFjb20tcW1wLXVmczogQWRkIFBIWSBDb25maWd1cmF0aW9uIHN1cHBvcnQgZm9yIFNNODc1MAo+
ID4gICAgICAgZHQtYmluZGluZ3M6IHVmczogcWNvbTogRG9jdW1lbnQgdGhlIFNNODc1MCBVRlMg
Q29udHJvbGxlcgo+ID4gICAgICAgYXJtNjQ6IGR0czogcWNvbTogc204NzUwOiBBZGQgVUZTIG5v
ZGVzIGZvciBTTTg3NTAgU29DCj4gPiAgICAgICBhcm02NDogZHRzOiBxY29tOiBzbTg3NTA6IEFk
ZCBVRlMgbm9kZXMgZm9yIFNNODc1MCBRUkQgYW5kIE1UUCBib2FyZHMKPiAKPiBZb3Ugc3RpbGwg
bmVlZCB0aGUgc2FtZSB3b3JrYXJvdW5kIDg1NTAvODY1MCBoYXZlIGluIHRoZSBVRlMgZHJpdmVy
Cj4gKFVGU0hDRF9RVUlSS19CUk9LRU5fTFNEQlNfQ0FQKSBmb3IgaXQgdG8gd29yayByZWxpYWJs
eSwgb3IgYXQgbGVhc3QKPiB0aGF0IHdhcyB0aGUgY2FzZSBmb3IgbWUgb24gYSA4NzUwIFFSRC4K
PiAKPiBQbGVhc2UgY2hlY2sgd2hldGhlciB3ZSBjYW4gbWFrZSB0aGF0IHF1aXJrIGFwcGx5IGJh
c2VkIG9uIGN0cmwKPiB2ZXJzaW9uIG9yIHNvLCBzbyB0aGF0IHdlIGRvbid0IGhhdmUgdG8ga2Vl
cCBncm93aW5nIHRoZSBjb21wYXRpYmxlCj4gbGlzdCBpbiB0aGUgZHJpdmVyLgo+IAoKVGhhdCB3
b3VsZCBiZSBhIGJpemFycmUuIFdoZW4gSSBhZGRlZCB0aGUgcXVpcmssIEkgd2FzIHRvbGQgdGhh
dCBpdCB3b3VsZCBhZmZlY3QKb25seSBTTTg1NTAgYW5kIFNNODY1MCAodGhpcyBvbmUgSSBsZWFy
bmVkIGxhdGVyKS4gSSdtIG5vdCBhZ2FpbnN0IGFwcGx5aW5nIHRoZQpxdWlyayBiYXNlZCBvbiBV
RlNIQyB2ZXJzaW9uIGlmIHRoZSBidWcgaXMgY2FycmllZCBmb3J3YXJkLCBidXQgdGhhdCB3b3Vs
ZCBiZSBhbgppbmRpY2F0aW9uIG9mIGJhZCBkZXNpZ24uCgotIE1hbmkKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
