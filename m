Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C04BBC28B2F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bVdDnNa6kipLvMIKsmEXhvrYO4T4S/H2jv1mFBAsvM=; b=sgEwLoIcNrGt0L
	EAEm856xjfMnyBNv0SxYwBtF1RdmR59/nFHC+vrokmaVuZ5ewQWC1IGheSDx7CvctcYxO3KHQM9vU
	9pgJh4Q3JeiluowTJI8dav3QEJG1I70RuuCwnUGA6vje5bU1v/BC+Ah3BChxP3vWwL8rOxL4Cz1Qx
	oCfVx9eWSq+rAg+gpRNJYw8y8RZI8liigVQvUf6kRB0drkyjroF8n2kW3OMtNq3IBwm+WNlZ698ve
	qYojayGV5SQqiLoktqxYrAVPzx5VmL1UWrFpz5xC/FqepHZxZQ9vXUk9X3otAV0OOHOO3rWf/od0P
	yg6zq8eJZlAc+lKNSmng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPQg-00000004i5L-1QvU;
	Tue, 18 Mar 2025 05:23:54 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPQd-00000004i4m-3fGW
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:23:53 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2ff6e91cff5so4156567a91.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742275431; x=1742880231; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I3MFhv4iXPFGACGN68O6T+ndaCiilLWF8mxkeGzp5Wk=;
        b=JAIbm9rrSp7ezGtdtWNoEOGWXjLZ2ll7vXCBsdMJsMuzP6JFHBMZqM5c/69zn4sfAy
         nur9bPReVF+6IKvdHP87jKHOtMzqNav0uYABlWeDg4xhjHi7LrHynOdxtconbuGG+lyp
         b/sFM/589cILYRx5YOUvv6K9LZs3JWWDafXXv/MqJkJXvmXKcvgk/w6EqpGtNzRXLk+e
         lN3FlpCv38kULBNc480B4hAjnram8BUW452gODk0s8xd5tCJd7ijL7D7LaED4yIf/2is
         CpKqF5MZC4oX3k9jwGKucpOZRZfU/FdUkQIYfe467tabRF618UGO9hyWpk9TCzVOAReV
         autQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275431; x=1742880231;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3MFhv4iXPFGACGN68O6T+ndaCiilLWF8mxkeGzp5Wk=;
        b=H1Q2cMlWZcqyfldcS3fyamMp9KQR0Jk8RePJEGT8Ub+RqC1vHCwwIa3cFmF2UD6hi9
         A5A+nf3GK0wnj14PL7ogpKUZViuBHmjbiyItmqP6Phkej5Fk3aparGdN6FqwqxW0rNKg
         Pc0k3ydZkK9Sz+9KJYtXmc6ygU6LJnLFbsPZoeDPfvSh0Z97s/zhR2ukdGc8POhogc/w
         gBLUTdt39qXu2cHBHU/shY3X7SxnUjqra8aAYURx0mpUrWsAlQRQRftvaU2HFgYaHfdc
         FpHDf2JIVBgMjUjgcLkiAVodDIn5/k72Y3RO/QBrAqT+UEQfY24gHIfb/RKCQMnRIMUN
         PkMg==
X-Forwarded-Encrypted: i=1; AJvYcCWdcDsvDz/7t6HIa+x4Rsv5uqlq7L4petvb1RlQOWjJHp8lh3/9E0q/Uhxqgn6acvGlEZN5dG/kwyE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzfWBAvLNbGxUVkbLB96Ts3TF0B0dnLL0ghq2oeY4skbztA1PkM
	EpzGikXjNhdei4NNKehO91a8UdtUzZKV+PtT9xdT6VLrSrm9X9nEzBLpoJOB0A==
X-Gm-Gg: ASbGnctjw5gvBsiQXLMD1hO/Z0BMfZlzH5clcn0gTfr/jrEHSH6YMDQUupxZ1/wRQGx
	1+T5ANYk9V2iASj2l0/OpLmJB5oGU0hS1LYyvsrAacytUb0h0MKegSqJPmaTRpr+tnDjNpZ4V9b
	tTY+pVbkb6FtIE74j4mJXZL+GOhjJCxZdGoWFMYGacGNAk8IHNIzOwn2ERduoOycysNEj25luhx
	KYN+fRuQCrP0Q780xxLv3h5UDiDEx60c93LZqeQxIvrE+7XgGU+gkkqdbMqkdVYC3wf5cOtnx1D
	UVuI9azygDRFIFz/UZ88kXqIPm8mURiX4TVo+bLz5g7BISn+a04Xqmqb
X-Google-Smtp-Source: AGHT+IHfQA8coXckUEYvZiBZ+6HlXKMz1xOJjAr8oflE+640yjM8m0J94JHhMX0+3laFnw472xG0Dg==
X-Received: by 2002:a17:90b:1e4b:b0:2fa:15ab:4dff with SMTP id 98e67ed59e1d1-301a5b99192mr1208448a91.31.1742275430993;
        Mon, 17 Mar 2025 22:23:50 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-301539d3f40sm7168928a91.4.2025.03.17.22.23.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:23:50 -0700 (PDT)
Date: Tue, 18 Mar 2025 10:53:43 +0530
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
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 3/6] dt-bindings: ufs: qcom: Document the SM8750 UFS
 Controller
Message-ID: <20250318052343.do36phv6qxhimpab@thinkpad>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-3-0dfdd6823161@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310-sm8750_ufs_master-v2-3-0dfdd6823161@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_222351_924291_6B5CE133 
X-CRM114-Status: GOOD (  12.35  )
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MTI6MzFQTSAtMDcwMCwgTWVsb2R5IE9sdmVyYSB3
cm90ZToKPiBGcm9tOiBOaXRpbiBSYXdhdCA8cXVpY19uaXRpcmF3YUBxdWljaW5jLmNvbT4KPiAK
PiBEb2N1bWVudCB0aGUgVUZTIENvbnRyb2xsZXIgb24gdGhlIFNNODc1MCBQbGF0Zm9ybS4KPiAK
PiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgo+IFNp
Z25lZC1vZmYtYnk6IE5pdGluIFJhd2F0IDxxdWljX25pdGlyYXdhQHF1aWNpbmMuY29tPgoKUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxp
bmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy91ZnMvcWNvbSx1ZnMueWFtbCB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdWZzL3Fjb20sdWZzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dWZzL3Fjb20sdWZzLnlhbWwKPiBpbmRleCBhMDNmZmY1ZGY1ZWYyYzcwNjU5MzcxYmYzMDJjNTli
NTk0MGJlOTg0Li42YzYwNDNkOTgwOWUxZDZiZjQ4OTE1M2FiMGFlYTUxODZkMzU2M2NjIDEwMDY0
NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSx1ZnMu
eWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcWNvbSx1
ZnMueWFtbAo+IEBAIC00Myw2ICs0Myw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgICAgICAtIHFj
b20sc204NDUwLXVmc2hjCj4gICAgICAgICAgICAtIHFjb20sc204NTUwLXVmc2hjCj4gICAgICAg
ICAgICAtIHFjb20sc204NjUwLXVmc2hjCj4gKyAgICAgICAgICAtIHFjb20sc204NzUwLXVmc2hj
Cj4gICAgICAgIC0gY29uc3Q6IHFjb20sdWZzaGMKPiAgICAgICAgLSBjb25zdDogamVkZWMsdWZz
LTIuMAo+ICAKPiBAQCAtMTU4LDYgKzE1OSw3IEBAIGFsbE9mOgo+ICAgICAgICAgICAgICAgIC0g
cWNvbSxzbTg0NTAtdWZzaGMKPiAgICAgICAgICAgICAgICAtIHFjb20sc204NTUwLXVmc2hjCj4g
ICAgICAgICAgICAgICAgLSBxY29tLHNtODY1MC11ZnNoYwo+ICsgICAgICAgICAgICAgIC0gcWNv
bSxzbTg3NTAtdWZzaGMKPiAgICAgIHRoZW46Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAg
ICAgY2xvY2tzOgo+IAo+IC0tIAo+IDIuNDYuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCu
o+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
