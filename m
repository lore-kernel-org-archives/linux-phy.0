Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E86DCF9C6F
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 14:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S74MgdG4x7zQrwNzmNRkyDv4F/EzcE6XTnmEiiOXROU=; b=nDSMyA+cpAVpWk
	GEZAv36TClO019vPD0GiHE5EDaAv6rcAJPpCMhAKQKN1ocpbORQgef1QYITVrPsFzfYVz22WgFJQX
	8oXfpdOLO1zdczE1WAIVYbw92Xu3ONpxEeM1hDgeJ2wmF3s1P0AFnh+fa5YqL+oTw4PjPv5oKADea
	s0CaABQVeLkOAfE9Jtbae04D6wz71EK2wfYuiwaMObsqDyf56z+ChKS41ur4AQZRaSWAdUTJemAwP
	q9DqMPajFlfHMLsDZGpmpsMFSe1hZR6PjcaFH9jHwTbU9SXlLGG2TRbUrGN/6NEXuT3fdOtQ+kS6A
	FQX9HSrM7OCnSiewKaXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st6Dt-00000002Vbf-0obd;
	Tue, 24 Sep 2024 14:09:01 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st6DQ-00000002VVk-169z
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 14:08:34 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-374d29ad870so3134306f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 07:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727186910; x=1727791710; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=40piiJGTfM7ZQA0UedJryDRvdqrWepuUZqLPtNOH3VQ=;
        b=hQvtBFjZ4q1nOOAYmsiE67ACQRSRJiqjxPociX1R1YnNeG1rI70/oYHKDXU++2V9/S
         OUYgLh6IU7vCi1mqx8K7p5il5JgvhunJGpPews9bpALqje5Hs/ERsU3G7dhNHGUT7zUg
         CekYWkhanqsGP6GMixygtD6CKQn2fMxXmYAno/V71rbZZgeMOWwUAcMDMn2dF+mm806N
         EG6XCA6j5YH9i0h++ivgBLuLxY9gpLYjaoKQZCHhqJLCND1OUPitDdTKF4SvKSCKRKJc
         SFCJ6Axfgvq5qQii8GBp5uzIt3ff7z7ctY5ch8keJP1Ids5B0e12Ok4Kx78dFC3hPVKs
         bAFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727186910; x=1727791710;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=40piiJGTfM7ZQA0UedJryDRvdqrWepuUZqLPtNOH3VQ=;
        b=DXdzFOz6kyP8w85e1zIdeUIliI2DdbSxw3wWJb5Su18HqemcAfbhzBxB1aSR8/yyRx
         EAw3qlRG7Ta4EYwysVe5Q8fH8oyf3o8n3poeUoai6vanMQTao29BKVYL+A/lB0Ebmca+
         s7UOUuWKc/tbGV0CX/RsnUnmpFeiUjJdfS2B1/goVvyJLMpCnyyqWV+WT4gk5OPmXWui
         H+W+ZUuKPTSM1BfA71MrUgTJJ7qIEgYexr7e4F9hY6D4jBskyIpiu0L3htnkqdyiQmZR
         ELw/9lgSqPnsdDRwY3dLFEYG+KDeqR13T2nZ0UtuoKO6AxXv5VoLKtYtDufbB5pZbMBR
         EKPw==
X-Forwarded-Encrypted: i=1; AJvYcCVFintN75EHlmFlowFLsrCJwOSQydZOWlPdVvoBUn7PeMGcmAHoLw6s2wh72Wo7ZsQry4cSL/6j5FM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxovtmU9i4SyfxQPiW3aNoPb03lntUs1oAsHCpmiA/6uOUJbcKw
	fEnfP/CzMrwGvTuOSBZtfRVJ8KJPbDjXcfWVykyc/5FZ2svqFveLZI+8g+8ZDg==
X-Google-Smtp-Source: AGHT+IH4WW0ZIOSHklIzJiL/X3r6M9oWzL4NBPDdU5VWxfP/mCN0bTHEJd5jEIb+qLxFYKJld/AuBQ==
X-Received: by 2002:a5d:6189:0:b0:371:c518:6f54 with SMTP id ffacd0b85a97d-37a422c02acmr8022006f8f.29.1727186910055;
        Tue, 24 Sep 2024 07:08:30 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cbc3187e6sm1684265f8f.92.2024.09.24.07.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 07:08:29 -0700 (PDT)
Date: Tue, 24 Sep 2024 16:08:28 +0200
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
Subject: Re: [PATCH v4 2/6] dt-bindings: PCI: qcom: Move OPP table to
 qcom,pcie-common.yaml
Message-ID: <20240924140828.mz5vjcicygsj4eb4@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-3-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240924101444.3933828-3-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_070832_327551_A7C84BFE 
X-CRM114-Status: GOOD (  14.85  )
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

T24gVHVlLCBTZXAgMjQsIDIwMjQgYXQgMDM6MTQ6NDBBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cgo+IE9QUCB0YWJsZSBpcyBhIGdlbmVyaWMgcHJvcGVydHkgdGhhdCBpcyBhbHNvIHJlcXVpcmVk
IGJ5IG90aGVyIHFjb20KPiBwbGF0Zm9ybXMuIEhlbmNlIG1vdmUgdGhpcyBwcm9wZXJ0eSB0byBx
Y29tLHBjaWUtY29tbW9uLnlhbWwgc28gdGhhdCBQQ0llCj4gb24gb3RoZXIgcWNvbSBwbGF0Zm9y
bXMgaXMgYWJsZSB0byBhZGp1c3QgcG93ZXIgZG9tYWluIHBlcmZvcm1hbmNlIHN0YXRlCj4gYW5k
IElDQyBwZWFrIGJ3IGFjY29yZGluZyB0byBQQ0llIGdlbiBzcGVlZCBhbmQgbGluayB3aWR0aC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+CgpS
ZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1A
bGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9xY29tLHBjaWUtY29tbW9uLnlhbWwgfCA0ICsrKysKPiAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtc204NDUwLnlhbWwgfCA0IC0tLS0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxw
Y2llLWNvbW1vbi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9x
Y29tLHBjaWUtY29tbW9uLnlhbWwKPiBpbmRleCA3MDRjMGY1OGVlYTUuLjNjNjQzMGZlOTMzMSAx
MDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20s
cGNpZS1jb21tb24ueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9wY2kvcWNvbSxwY2llLWNvbW1vbi55YW1sCj4gQEAgLTc4LDYgKzc4LDEwIEBAIHByb3BlcnRp
ZXM6Cj4gICAgICBkZXNjcmlwdGlvbjogR1BJTyBjb250cm9sbGVkIGNvbm5lY3Rpb24gdG8gV0FL
RSMgc2lnbmFsCj4gICAgICBtYXhJdGVtczogMQo+ICAKPiArICBvcGVyYXRpbmctcG9pbnRzLXYy
OiB0cnVlCj4gKyAgb3BwLXRhYmxlOgo+ICsgICAgdHlwZTogb2JqZWN0Cj4gKwo+ICByZXF1aXJl
ZDoKPiAgICAtIHJlZwo+ICAgIC0gcmVnLW5hbWVzCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNtODQ1MC55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtc204NDUwLnlhbWwKPiBp
bmRleCA0NmJkNTllZWZhZGIuLjZlMGE2ZDhmMGVkMCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS1zbTg0NTAueWFtbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNtODQ1MC55
YW1sCj4gQEAgLTcwLDEwICs3MCw2IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgIC0gY29uc3Q6IG1z
aTcKPiAgICAgICAgLSBjb25zdDogZ2xvYmFsCj4gIAo+IC0gIG9wZXJhdGluZy1wb2ludHMtdjI6
IHRydWUKPiAtICBvcHAtdGFibGU6Cj4gLSAgICB0eXBlOiBvYmplY3QKPiAtCj4gICAgcmVzZXRz
Ogo+ICAgICAgbWF4SXRlbXM6IDEKPiAgCj4gLS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
