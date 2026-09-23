Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B9CC98304
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMjPKVQ6J4AsXFm0t9qxcO2UERSDnPAhxdCRbRsuuIY=; b=vp9IGx0nKbcPhv
	ZpnrE6s4r9jaHzMyvfgWDSY7njgHZRr3VJtSEHPM6QXSGzHAhF+lV8qlOEv8yg+y7hZWwTWKYzwAf
	PlP54fQNzHOosPsgio2gtp7x7xcVRzT1/RkS47L/HXUcvfQb+Paz9f0X+FrEhQ4AQnt/xFZm5YB/p
	Ox7dETLSK8VrnaQjQoOITjBoZrX2m0AhNP2oSVe3SWG19Xe7sy/uOdDWAyUCnneUpRz5LLd34R9Zc
	8bc720J1vTlD6OM2Tcl+0NkS+duL25fBGWy8auvl9B58d4PN6OWBrGnf/rPn8pd5EkFMHe/nobm3g
	O8AIRB3vUmbSl/Owd1LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rjp-00000009CfS-3mY0;
	Wed, 23 Sep 2026 18:30:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rjn-00000009CdR-0JpT
	for linux-phy@bombadil.infradead.org;
	Wed, 23 Sep 2026 18:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=cTauSR6H/8NKinLJSb31gMD112liycecOTxKay+MW1Y=; b=XvjEvmTGhRGTv/Qag8AmSf7AOA
	cqkqV1MguexqAfEkLFoczwgOLIAJ+ij7oqVemLclV7nGOLPLCcE+4TPwQnre58woh5QE6yMWXQ9RW
	ZkSCPEEokF5Sa7qCTYZgMbd7cD3AUdKvQSj1LdO7k/ychI9X8XSgBqPLmErKYASpfoqJe4nYjSsot
	Dqd4u0TpcYoebX0nBFaD+J3buB6LyMp7jC/Un6Kofv11DqwpGr13p1hS0MdQBd2mqPEFAzS4btgx9
	kY0rO4CdveNfTDeOkqJNhm/2OKzIOYj3hosSt811+kfls9flYFS/Lod79ei4v7T3re+a0u83Ohq5z
	CLcVa1Vg==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9Rjk-0000000F9r4-0c4U
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:30:33 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482f633ece3so1037029f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 11:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790188231; x=1790793031; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=cTauSR6H/8NKinLJSb31gMD112liycecOTxKay+MW1Y=;
        b=ARiPHiOPLxCHq+MOf6ddw8HUMBfzgVhHutxZji33tbqpAo2GySjC67I4lxHvpSjSFa
         c2P6IhwlqMWtvzBS/0m6w5Iyk7lTgjkU9sE3i0vhZHlBh1hnWRVOv7jE6e4hvxGjATT5
         eoQdrbyB3/zx9xbf6ttRsS6+scYr8QhLHLLQ7y9vizKe423sp9uIWeBdcGpN9YkeZf/A
         xy5w67qAs12MbM1HqQnFeOBhaT65rMYSBcsC5Xw/rCrh6COy7hH22Ccvb1+wHxTWi4yr
         OV6T16qjBrMA2m6n4NnV+Mn89fcPpjFiUMmgcPPJ/yrzeiAQDcsLTLeNfq1wfr3Z/oZu
         kDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790188231; x=1790793031;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cTauSR6H/8NKinLJSb31gMD112liycecOTxKay+MW1Y=;
        b=wfR5FUUpl3rWdfrOQ4Q8495tqzCZlwDZXRfQPrbO5gd/isih655XckSHt07sx7Fdzh
         cZT0/4qWOCghmCy4Jm8zPnyXfHRTo1fdjIvxDzGQnlGlm+plvt3bsqf1x9eiTEW1JDQl
         LQZmfyualzw4U7N2tLjUmDfx07pDUtk0i4HA9sixnh3fh8w0t7SZESIlbA9ryYWKCVWB
         ccoZrtSmY6TMJiVXwGAw9K8X0clurssbPUDzAFbxZGxUa1V4YyPCXAmVEHuSno0DY9su
         3Oja9IZ6LqkENaoLLO72lirUloU8qJlNmtT6fgxjFIKOcTN7I9s9T1KfkHfPpeOR1ZUX
         wJxw==
X-Forwarded-Encrypted: i=1; AKwUvBwBkYbFT/1DyFE5RMRIycdoRXb74msjJKeWIR4FVPxnHiwZq7eRTwsn7Uncr9fZ2KMiQDSr3HenQNY=@lists.infradead.org
X-Gm-Message-State: AFuF++mD4HxM+kzuaXWoNrlW9akCCNwpooULA8k2zrTMv1yEx0AjZ59z
	z5aytPLTtwIyOzvz3SYBODSfPKGIkOk5vV6EC46FkFVMBvtzCOFd3zdb
X-Gm-Gg: AYBFou3Xp1VyG99HYAarMOZFfzKozOcm7hCPYAY4gjVyQDoKdsOu7YLtZkQ9kdinQzh
	z6eVBXqqvfq+poe83dF4tehEce7+FGvuLpKLYlnPFq0sDCrKvGzCha9q/CW68mq0wWHtxC7gMVQ
	I/jh21NQDi+HqxwkMqB+kqPkfIg9KDmiL8Wxr4FPSbzzH7RDUeQFJtw72VpvDaProL2G8M1ql5K
	oQCBxVJOGmhGFpLi05GMtqXBGmzN37b7huFpE4+18tKLaFN61SFUjRwfrgDy9H444lwp+VtADY5
	Jb6f49lZCu7Nfehy82igB79sun4wJBzKV/nBc6y4EEG48oXdN0urzuFMw8ZMmLUiKec/9K2/TU5
	ag1b+Woig7hlB+f5aIb0pnTV0CdOYxDuX+UxOcJbmnB+KdPObUm//OV0b9002ZtysqalJC5o5Eo
	fEW9gtwFHJyuXPVByw/i8A5t/JrW0QUcx/yHGj+oKkN21E1zbozjEn6pova74VvQaoC4dkMXtCg
	pUndNxpqpmLRfiO
X-Received: by 2002:a05:600c:3511:b0:49d:17d4:d6ad with SMTP id 5b1f17b1804b1-49fe66fca74mr955715e9.23.1790188230531;
        Wed, 23 Sep 2026 11:30:30 -0700 (PDT)
Received: from [192.168.0.2] ([197.250.51.38])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fe5cd3d5csm4711835e9.14.2026.09.23.11.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 11:30:30 -0700 (PDT)
From: =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Date: Wed, 23 Sep 2026 21:28:58 +0300
Subject: [PATCH v12 12/12] ARM: dts: zte: Declare zx297520v3 CRM device
 nodes
MIME-Version: 1.0
Message-Id: <20260923-zx29clk-v12-12-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
In-Reply-To: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Brian Masney <bmasney@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>, 
 Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, mfd@lists.linux.dev, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5992;
 i=stefandoesinger@gmail.com; h=from:subject:message-id;
 bh=nf0EyPFH35tSBIK5oZ5/jJ+smy+BLU/nT0Pmxgc+7L8=;
 b=owEBiQJ2/ZANAwAIAT0TvMhUTxoiAcsmYgBqtBpu3JRLG91BIUi3oCJuTumCMec0ZWhqcpJPh
 P78Khtbk0mJAk8EAAEIADkWIQRDFvS2qgVbJ5UyXWw9E7zIVE8aIgUCarQabhsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMiwyLDIACgkQPRO8yFRPGiKuPxAAoXY2IxIgFRL+DH+XhDc+HjVDfbf9qAE
 ecqWNdsYcAc5XYgZNBixnxFcVWWKFxIoCw8kOta8KLN8eoFlbkKJwFbxwzhUmfV1YgeSQ9d6cN7
 7pEOgO78Z1KDl8scfTC76/87e5PpbbI/QiEGisnb6Y28VU1hvWZlnspKnBN69PpPwFz6YbxKAeW
 4a8m3houAA7uA6GXXBeUiUnuTKqAHlmKs3KX1yfyK9kPYzlon39u09euzsimwhtQ/yE5CdI9QwL
 jDbJwexmlZmWGV1LYZTV6+/zVVp82yQ9m1NwFNxC43i1Kd3s0wnhJgLvCTRj+3XWZ5eLw6u8tCH
 fm0LD8B3V+d1pZ+bLYe1luaiEtH1kqJ4P3nQRgggU3OQ6yq9wgYocGeGPqyFLhPOO31zCqvVGBc
 +Aakk7EfTsK4fV4lH3Xous0pQuK/YLprIV4CWWeyM48kgfh19GVEUmmc/iaLjsESwWsJtWrWkV8
 JBPjJq/ZLM7vJ2kLvSFiGFcblEwVfEOP2ghm+OKnf+QrejirhEUTZg4NpBakM9bVMLG+KXa4C20
 Ae86y81FycBnrcIXXsIT3N9F20Z8SRTsa3TKzT4JASsmGKadfu01FuPgqO0qDLQKjIIz7TrzS7v
 Fil1kcBuX0Hq5VrX9yejrcu/V/biOEYgHqxM/XqSN2ZISKOhArQU=
X-Developer-Key: i=stefandoesinger@gmail.com; a=openpgp;
 fpr=4F9C2C8728019633893EBBB98CB81F9A72BBA155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_193032_312620_DA7F1378 
X-CRM114-Status: GOOD (  15.44  )
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

VGhpcyBwYXRjaCBhZGRzIERUIG5vZGVzIGZvciB0aGUgbWFpbiBjbG9jayBhbmQgcmVzZXQgY29u
dHJvbGxlcnMgb24gdGhlCnp4Mjk3NTIwdjMgYm9hcmQuIEl0IHJlcGxhY2VzIHRoZSB0ZW1wb3Jh
cnkgcGxhY2Vob2xkZXIgVUFSVCBjbG9ja3Mgd2l0aAp0aGUgcHJvcGVyIGNsb2NrcyBleHBvcnRl
ZCBieSB0b3Bjcm0gYW5kIGxzcGNybS4KClJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+ClNpZ25lZC1vZmYtYnk6IFN0
ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+Ci0tLQoKVmVyc2lvbiAx
MTogSW1wcm92ZWQgdGhlIGFib3ZlIHRoZSBsaW5lIGNvbW1pdCBkZXNjcmlwdGlvbiwgcmVtb3Zp
bmcKcmVmZXJlbmNlcyB0byAicHJldmlvdXMgcGF0Y2hlcyIgdGhhdCB3b24ndCBtYWtlIHNlbnNl
IHdoZW4gcmVhZGluZyBpdAppbiB0aGUga2VybmVsIGNvbW1pdCBsb2cuCgpWZXJzaW9uIDEwOiBG
aXggaXNzdWVzIHdpdGggZHQtY2hlY2stc3R5bGUgLS1tb2RlPXN0cmljdCBpbiBuZXdseSBhZGRl
ZApjb2RlLCBidXQgbGVmdCBpc3N1ZXMgaW4gZXhpc3Rpbmcgbm9kZXMgYWxvbmUuCgpWZXJzaW9u
IDk6ClNvcnQgbmV3IG5vZGVzIGJ5IG1taW8gYWRkcmVzcwpyZW5hbWUgc3lzY29uLXJlYm9vdCB0
byAicmVib290IgphZGp1c3QgdG8gY2hhbmdlcyBpbiBiaW5kaW5ncwoKVmVyc2lvbiA3OgpBZGQg
cGh5IG5vZGVzIHRvIHRvcGNybQpSZW1vdmUgc3lzY29uIGZyb20gbWF0cml4Y2xrIGFnYWluCkFk
YXB0IHJlbW92ZSBub3ctcmVtb3ZlZCBleHRyYSBjbGsgaW5wdXRzIGZyb20gbWF0cml4CkFkZCBy
ZXNldCB0byBMU1AKb3NjMjZtIC0+IGNsb2NrLTI2bSBmb3IgdGhlIGZpeGVkIHJhdGUgY2xvY2tz
LCBsaWtld2lzZSBmb3IgMzJrCgpWZXJzaW9uIDY6CkFkZCBzeXNjb24gdG8gbWF0cml4Y2xrCgpW
ZXJzaW9uIDU6ClJlLW5hbWUgZnJvbSAqY2xrIHRvICpjcm0KQWRkIHRoZSBzeXNjb24tcmVib290
IG5vZGUgaGVyZSBiZWNhdXNlIHRoZSBiaW5kaW5nIHJlcXVpcmVzIGl0ClJlLWFkZCBhY2NpZGVu
dGFsbHkgZHJvcHBlZCB1YXJ0MiBJUlEKLS0tCiBhcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1
MjB2My5kdHNpIHwgMTAxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpIGIvYXJjaC9hcm0vYm9vdC9k
dHMvenRlL3p4Mjk3NTIwdjMuZHRzaQppbmRleCBhMTZjMzBhMTY0YmIuLmViYWMzY2QxMzdkZiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvenRlL3p4Mjk3NTIwdjMuZHRzaQorKysgYi9h
cmNoL2FybS9ib290L2R0cy96dGUvengyOTc1MjB2My5kdHNpCkBAIC0zLDEyICszLDI2IEBACiAg
KiBDb3B5cmlnaHQgKGMpIDIwMjYgU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdt
YWlsLmNvbT4KICAqLwogCisjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIw
djMtY2xrLmg+CiAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJt
LWdpYy5oPgorI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3p0ZSx6eDI5NzUyMHYzLXJlc2V0
Lmg+CiAKIC8gewogCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCSNzaXplLWNlbGxzID0gPDE+Owog
CisJb3NjMjZtOiBjbG9jay0yNm0geworCQljb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKKwkJ
I2Nsb2NrLWNlbGxzID0gPDA+OworCQljbG9jay1mcmVxdWVuY3kgPSA8MjYwMDAwMDA+OworCX07
CisKKwlvc2MzMms6IGNsb2NrLTMyayB7CisJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwor
CQkjY2xvY2stY2VsbHMgPSA8MD47CisJCWNsb2NrLWZyZXF1ZW5jeSA9IDwzMjc2OD47CisJfTsK
KwogCWNwdXMgewogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkJI3NpemUtY2VsbHMgPSA8MD47
CkBAIC0yMCwxNSArMzQsNiBAQCBjcHVAMCB7CiAJCX07CiAJfTsKIAotCS8qIEJhc2UgYnVzIGNs
b2NrIGFuZCBkZWZhdWx0IGZvciB0aGUgVUFSVC4gSXQgd2lsbCBiZSByZXBsYWNlZCBvbmNlIGEg
Y2xvY2sgZHJpdmVyIGhhcwotCSAqIGJlZW4gYWRkZWQuCi0JICovCi0JdWFydGNsazogdWFydGNs
ay0yNjAwMDAwMCB7Ci0JCSNjbG9jay1jZWxscyA9IDwwPjsKLQkJY29tcGF0aWJsZSA9ICJmaXhl
ZC1jbG9jayI7Ci0JCWNsb2NrLWZyZXF1ZW5jeSA9IDwyNjAwMDAwMD47Ci0JfTsKLQogCXRpbWVy
IHsKIAkJY29tcGF0aWJsZSA9ICJhcm0sYXJtdjctdGltZXIiOwogCQlpbnRlcnJ1cHRzID0gPEdJ
Q19QUEkgMTMgSVJRX1RZUEVfTEVWRUxfTE9XPiwKQEAgLTc1LDE4ICs4MCw4NyBAQCB1YXJ0MDog
c2VyaWFsQDEzMTAwMCB7CiAJCQlhcm0scHJpbWVjZWxsLXBlcmlwaGlkID0gPDB4MDAxOGMwMTE+
OwogCQkJcmVnID0gPDB4MDAxMzEwMDAgMHgxMDAwPjsKIAkJCWludGVycnVwdHMgPSA8R0lDX1NQ
SSAwIElSUV9UWVBFX0xFVkVMX0hJR0g+OwotCQkJY2xvY2tzID0gPCZ1YXJ0Y2xrPiwgPCZ1YXJ0
Y2xrPjsKKwkJCWNsb2NrcyA9IDwmdG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBfV0NMSz4sCisJCQkJ
IDwmdG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBfUENMSz47CiAJCQljbG9jay1uYW1lcyA9ICJ1YXJ0
Y2xrIiwgImFwYl9wY2xrIjsKKwkJCXJlc2V0cyA9IDwmdG9wY3JtIFpYMjk3NTIwVjNfVUFSVDBf
UkVTRVQ+OworCiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCXRvcGNybTogY2xv
Y2stY29udHJvbGxlckAxM2IwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2My10
b3Bjcm0iLCAic3lzY29uIjsKKwkJCXJlZyA9IDwweDAwMTNiMDAwIDB4NDAwPjsKKwkJCSNjbG9j
ay1jZWxscyA9IDwxPjsKKwkJCWNsb2NrcyA9IDwmb3NjMjZtPiwgPCZvc2MzMms+OworCQkJY2xv
Y2stbmFtZXMgPSAib3NjMjZtIiwgIm9zYzMyayI7CisJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
NDIgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAorCQkJCSAgICAgPEdJQ19TUEkgNDMgSVJRX1RZUEVf
RURHRV9SSVNJTkc+LAorCQkJCSAgICAgPEdJQ19TUEkgNDUgSVJRX1RZUEVfRURHRV9SSVNJTkc+
LAorCQkJCSAgICAgPEdJQ19TUEkgNDYgSVJRX1RZUEVfRURHRV9SSVNJTkc+OworCQkJaW50ZXJy
dXB0LW5hbWVzID0gInVzYi11cCIsICJ1c2ItZG93biIsCisJCQkJCSAgImhzaWMtdXAiLCAiaHNp
Yy1kb3duIjsKKwkJCSNwaHktY2VsbHMgPSA8MT47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisK
KwkJCXJlYm9vdCB7CisJCQkJY29tcGF0aWJsZSA9ICJzeXNjb24tcmVib290IjsKKwkJCQltYXNr
ID0gPDB4MT47CisJCQkJb2Zmc2V0ID0gPDB4MD47CisJCQkJdmFsdWUgPSA8MHgxPjsKKwkJCX07
CisJCX07CisKKwkJbWF0cml4Y3JtOiBjbG9jay1jb250cm9sbGVyQDEzMDYwMDAgeworCQkJY29t
cGF0aWJsZSA9ICJ6dGUsengyOTc1MjB2My1tYXRyaXhjcm0iOworCQkJcmVnID0gPDB4MDEzMDYw
MDAgMHg0MDA+OworCQkJI2Nsb2NrLWNlbGxzID0gPDE+OworCQkJY2xvY2tzID0gPCZvc2MyNm0+
LCA8Jm9zYzMyaz4sCisJCQkJIDwmdG9wY3JtIFpYMjk3NTIwVjNfQUhCX1BDTEs+LAorCQkJCSA8
JnRvcGNybSBaWDI5NzUyMFYzX01QTEw+LAorCQkJCSA8JnRvcGNybSBaWDI5NzUyMFYzX01QTExf
RDU+LAorCQkJCSA8JnRvcGNybSBaWDI5NzUyMFYzX0RQTEw+LAorCQkJCSA8JnRvcGNybSBaWDI5
NzUyMFYzX0dQTEw+LAorCQkJCSA8JnRvcGNybSBaWDI5NzUyMFYzX0dQTExfRDI+LAorCQkJCSA8
JnRvcGNybSBaWDI5NzUyMFYzX0dBVEVEX09TQzI2TT47CisJCQljbG9jay1uYW1lcyA9ICJvc2My
Nm0iLCAib3NjMzJrIiwgImFoYiIsICJtcGxsIiwKKwkJCQkgICAgICAibXBsbC1kNSIsICJkcGxs
IiwgImdwbGwiLCAiZ3BsbC1kMiIsCisJCQkJICAgICAgIndjbGstb3NjMjZtIjsKKwkJCSNod2xv
Y2stY2VsbHMgPSA8MT47CisJCQkjcmVzZXQtY2VsbHMgPSA8MT47CisJCX07CisKKwkJbHNwY3Jt
OiBjbG9jay1jb250cm9sbGVyQDE0MDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJ6dGUsengyOTc1
MjB2My1sc3Bjcm0iOworCQkJcmVnID0gPDB4MDE0MDAwMDAgMHgxMDA+OworCQkJI2Nsb2NrLWNl
bGxzID0gPDE+OworCQkJY2xvY2tzID0gPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9E
NV9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9ENF9XQ0xLPiwK
KwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9ENl9XQ0xLPiwKKwkJCQkgPCZt
YXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfTVBMTF9EOF9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0g
WlgyOTc1MjBWM19MU1BfTVBMTF9EMTJfV0NMSz4sCisJCQkJIDwmbWF0cml4Y3JtIFpYMjk3NTIw
VjNfTFNQX09TQzI2TV9XQ0xLPiwKKwkJCQkgPCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfT1ND
MzJLX1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBaWDI5NzUyMFYzX0xTUF9QQ0xLPiwKKwkJCQkg
PCZtYXRyaXhjcm0gWlgyOTc1MjBWM19MU1BfVERNX1dDTEs+LAorCQkJCSA8Jm1hdHJpeGNybSBa
WDI5NzUyMFYzX0xTUF9EUExMX0Q0X1dDTEs+OworCQkJY2xvY2stbmFtZXMgPSAibXBsbC1kNSIs
ICJtcGxsLWQ0IiwgIm1wbGwtZDYiLAorCQkJCSAgICAgICJtcGxsLWQ4IiwgIm1wbGwtZDEyIiwg
Im9zYzI2bSIsICJvc2MzMmsiLAorCQkJCSAgICAgICJwY2xrIiwgInRkbS13Y2xrIiwgImRwbGwt
ZDQiOworCQkJI3Jlc2V0LWNlbGxzID0gPDE+OworCQkJcmVzZXRzID0gPCZtYXRyaXhjcm0gWlgy
OTc1MjBWM19MU1BfUkVTRVQ+OworCQl9OworCiAJCXVhcnQxOiBzZXJpYWxAMTQwODAwMCB7CiAJ
CQljb21wYXRpYmxlID0gImFybSxwbDAxMSIsICJhcm0scHJpbWVjZWxsIjsKIAkJCWFybSxwcmlt
ZWNlbGwtcGVyaXBoaWQgPSA8MHgwMDE4YzAxMT47CiAJCQlyZWcgPSA8MHgwMTQwODAwMCAweDEw
MDA+OwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEgSVJRX1RZUEVfTEVWRUxfSElHSD47Ci0J
CQljbG9ja3MgPSA8JnVhcnRjbGs+LCA8JnVhcnRjbGs+OworCQkJY2xvY2tzID0gPCZsc3Bjcm0g
WlgyOTc1MjBWM19VQVJUMV9XQ0xLPiwKKwkJCQkgPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMV9Q
Q0xLPjsKIAkJCWNsb2NrLW5hbWVzID0gInVhcnRjbGsiLCAiYXBiX3BjbGsiOworCQkJcmVzZXRz
ID0gPCZsc3Bjcm0gWlgyOTc1MjBWM19VQVJUMV9SRVNFVD47CisKIAkJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7CiAJCX07CiAKQEAgLTk1LDggKzE2OSwxMSBAQCB1YXJ0Mjogc2VyaWFsQDE0MGQwMDAg
ewogCQkJYXJtLHByaW1lY2VsbC1wZXJpcGhpZCA9IDwweDAwMThjMDExPjsKIAkJCXJlZyA9IDww
eDAxNDBkMDAwIDB4MTAwMD47CiAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMiBJUlFfVFlQRV9M
RVZFTF9ISUdIPjsKLQkJCWNsb2NrcyA9IDwmdWFydGNsaz4sIDwmdWFydGNsaz47CisJCQljbG9j
a3MgPSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQyX1dDTEs+LAorCQkJCSA8JmxzcGNybSBaWDI5
NzUyMFYzX1VBUlQyX1BDTEs+OwogCQkJY2xvY2stbmFtZXMgPSAidWFydGNsayIsICJhcGJfcGNs
ayI7CisJCQlyZXNldHMgPSA8JmxzcGNybSBaWDI5NzUyMFYzX1VBUlQyX1JFU0VUPjsKKwogCQkJ
c3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAl9OwoKLS0gCjIuNTUuMAoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
