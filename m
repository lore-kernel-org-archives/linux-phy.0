Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 995C8E668B6
	for <linux-phy@archiver.kernel.org>; Sun, 24 Nov 2024 15:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4jfOKiOfjPsYwwD2oHHz/IZMFmVLhU1aCbQXU+yVuM=; b=rWMk3Gw1/dtPte
	MpwrTkQ+Nq5XlCl2PTCLdaUS85E8aNALpgKjQlYj+tGx5L7TUiFkLfB7KvwoWvavu6KkKzf4xiKxe
	CZtn30MXLZ/3bDbUj2naw8IvjczFBTqRFC7Bb3t2Hm4raGWCbHXDIC+2zXdik6GoeW2y/hwtVwIj+
	qvHNFzAWLP2HwfAEymLgqy+XN6ApXjyWi3IigiC93pXr9eVYnFUhpwhs9q6f8qd/zvuvXMbi0j11Y
	IsRoL2SdCkPnWWNAzUX6xLjSEmzEog7E+mmPcnsnHpL15xz7+aWdPlBsJJX8+Ge1IQ33KyG62ltWE
	xJ3Pp5qNyC3OXQ/2tyCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFE6U-00000006BqV-1yYj;
	Sun, 24 Nov 2024 15:00:50 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFE6S-00000006Bpu-2IOf
	for linux-phy@lists.infradead.org;
	Sun, 24 Nov 2024 15:00:49 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2e9e377aeadso3194103a91.1
        for <linux-phy@lists.infradead.org>; Sun, 24 Nov 2024 07:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732460447; x=1733065247; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uGc1S2wYIhfLQogroy29pKHU2o6lK/gHyYeLMurEVxY=;
        b=pvPsUsmT91gT5GV/O0Mzg6H3VVaaNH+1gAC1AQlk4Er+iUf8fSN8feFjudYGkcTWPY
         RR4E9scrYZvnHixoBQEs2pcKDayWVS8JS/sYp1X+UYwWPsWxGpO6IYRiA2EAMbSXIzx0
         vZ/8lJ+qiQ+k+/LyG3ir+fiTfvfTN9xIzqyHTCNhR41tWgLDju+RR4th3eTkPxdu27/6
         I3M26gmoSgCmr0q9Idiov7Htnakj1R3TwYasu9BAlOw9QjnvyXf5bkw7f/Xj86xYwMt7
         08ZtskJoZZ00xgNM973a8Fqlf2dkdZBTL5+5+fewCk0K15yBop9KiMHqFYG6dgVu9Un9
         H4xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732460447; x=1733065247;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uGc1S2wYIhfLQogroy29pKHU2o6lK/gHyYeLMurEVxY=;
        b=PiowP8kybcRq8r6WsTMSdnIUmAikOUjxI7JIi0nNPpOuaDXXrZ5XXS4581bNIrfxwT
         nWZeBUacFBiYesRRuGqQDsuPVHgS/OXMgH78vKfbT7j8IQzcZ6hrKfreaLs2jZTS0pgO
         SfG7ZKKihGL607cn2VxOEUz33ARBq26xONNqPve/gxLOmTPMyPXcuQsENs9N7mF7twA8
         LkhlWhS1I+L4x7S9gdN+P5rJ5BYY9JeAVmYVSUW0/wCSFhChvY3D4nO3KB+3TVmA/Aao
         zU6wDduolkSTZMF8VvkDF3ABL0lBiK3KTYRlYc7Qhbin3GcCa/dD2e0H/SKqOLBfoGrs
         WNmw==
X-Forwarded-Encrypted: i=1; AJvYcCWHASHVIpcXH9Iah4HpqcgVgjIoVeZWN/Xs0L4pVtwoqnSH8VTgPxsGwmxjel+1oPN/by9q4VYwAXo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrgMYDap+fxzN1EcO1weQgb9VZvHkFPQI9m+9VPBymyiWpWI0w
	QOZ5mkBBEOIehnQWxHd6RX1wsIuJ7OgaiH017lgyWtwqMBXg8FWOtJ55klU4SA==
X-Gm-Gg: ASbGnctjLv4uxR9ouv3YHFq1bdKjk16E6XklKvT9qMNevS6RCh9VFF7ZZ7a514+xt4r
	OFmXTWby++f/EUou2KKQEBMlRs2Vgag1/zza7s94FLd90OV7mr2s15wpL18CcJQ21CPUribo1hB
	rLRh6RKaq527uvcQxWLk3E8CI90boBLlrqc5eEHrVPF4VJRRDUp/vla61kpehXKj78GjnzbNJZ6
	eaJ+CjIpvTltx+IOFGDWYUtyUn2HAFOmdSZXpuohzfQ4mHvlp8FQWOgwQsK
X-Google-Smtp-Source: AGHT+IGSIxvkw6uzHJU66ROMlaDDTKSfeX3BN4E33A4cnjvrKqZLF5VEOAWjCg4WJIQuCYjdbk/27w==
X-Received: by 2002:a17:90b:3a88:b0:2ea:47f1:7a03 with SMTP id 98e67ed59e1d1-2eb0e87c077mr12722997a91.30.1732460447156;
        Sun, 24 Nov 2024 07:00:47 -0800 (PST)
Received: from thinkpad ([36.255.17.192])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2eb0cfe448esm4893619a91.8.2024.11.24.07.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 07:00:46 -0800 (PST)
Date: Sun, 24 Nov 2024 20:30:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	bhelgaas@google.com, kw@linux.com, lpieralisi@kernel.org,
	quic_qianyu@quicinc.com, conor+dt@kernel.org,
	neil.armstrong@linaro.org, andersson@kernel.org,
	konradybcio@kernel.org, quic_tsoni@quicinc.com,
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
	quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
	quic_aiquny@quicinc.com, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: Re: [PATCH v2 4/6] PCI: qcom: Add QCS615 PCIe support
Message-ID: <20241124150039.cjp5g6pnulf5xnp5@thinkpad>
References: <20241122023314.1616353-1-quic_ziyuzhan@quicinc.com>
 <20241122023314.1616353-5-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122023314.1616353-5-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241124_070048_585751_00F59768 
X-CRM114-Status: GOOD (  16.83  )
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

T24gRnJpLCBOb3YgMjIsIDIwMjQgYXQgMTA6MzM6MTJBTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gRnJvbTogS3Jpc2huYSBjaGFpdGFueWEgY2h1bmRydSA8cXVpY19rcmljaGFpQHF1aWNp
bmMuY29tPgo+IAo+IEFkZCB0aGUgY29tcGF0aWJsZSBhbmQgdGhlIGRyaXZlciBkYXRhIGZvciBR
Q1M2MTUgUENJZSBjb250cm9sbGVyLgo+IAo+IFRoZXJlIGlzIG9ubHkgb25lIGNvbnRyb2xsZXIg
aW5zdGFuY2UgZm91bmQgb24gdGhpcyBwbGF0Zm9ybSwgb3V0IG9mIHdoaWNoCgonb3V0IG9mIHdo
aWNoJz8geW91IHNhaWQgdGhlcmUgaXMgb25seSBvbmUgaW5zdGFuY2UuCgo+IGlzIEdlbjMgd2l0
aCBzcGVlZHMgb2YgdXAgdG8gOC4wR1Qvcy4KPiAKPiBUaGUgdmVyc2lvbiBvZiB0aGUgY29udHJv
bGxlciBpcyAxLjM4LjAgZm9yIGFsbCBpbnN0YW5jZXMsIGJ1dCB0aGV5IGFyZQoKQWdhaW4sIG9u
bHkgb25lIGluc3RhbmNlLgoKPiBjb21wYXRpYmxlIHdpdGggMS45LjAgY29uZmlnLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEtyaXNobmEgY2hhaXRhbnlhIGNodW5kcnUgPHF1aWNfa3JpY2hhaUBxdWlj
aW5jLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBaaXl1ZSBaaGFuZyA8cXVpY196aXl1emhhbkBxdWlj
aW5jLmNvbT4KCldpdGggYWJvdmUgZml4ZWQsCgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0K
PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAxICsKPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1xY29tLmMKPiBpbmRleCBlZjQ0YTgyYmUwNTguLmRhNzIwMGI1NmIxZSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ICsrKyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gQEAgLTE4MzAsNiArMTgzMCw3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHFjb21fcGNpZV9tYXRjaFtdID0gewo+ICAJ
eyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtaXBxODA3NC1nZW4zIiwgLmRhdGEgPSAmY2ZnXzJf
OV8wIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1tc204OTk2IiwgLmRhdGEgPSAm
Y2ZnXzJfM18yIH0sCj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNpZS1xY3M0MDQiLCAuZGF0
YSA9ICZjZmdfMl80XzAgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAicWNvbSxwY2llLXFjczYxNSIs
IC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29tLHBjaWUtc2E4
NTQwcCIsIC5kYXRhID0gJmNmZ19zYzgyODB4cCB9LAo+ICAJeyAuY29tcGF0aWJsZSA9ICJxY29t
LHBjaWUtc2E4Nzc1cCIsIC5kYXRhID0gJmNmZ18xXzM0XzB9LAo+ICAJeyAuY29tcGF0aWJsZSA9
ICJxY29tLHBjaWUtc2M3MjgwIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0sCj4gLS0gCj4gMi4zNC4x
Cj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCu
ruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
