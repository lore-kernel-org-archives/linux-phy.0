Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A8C2D0EE05
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 15:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMkAsQP2F5YBvTm32g5zsEwv8VLcl643MLTKsqrSa9g=; b=AQl7N7+jK1m3hS
	s4W5h4HLm51zDvfO1pwJGbpwazZ+iATMNCaAfBNvzmNZWsLCJoONbz57KthNVaiXcRERkf6mEUqcD
	Pd0FK4FtJMkwP0ie34d8IED7RDApaumCOfLCkcXnEgO5mPWXOu7KamvWhY6XvmALtpj0+5HidgZZv
	oiFcDCkV9/B8XtsqTlbjsf+fzgC3/MK4bdRgq8s+GP70rBz+cqPI1aDyFqKMx2kgqhxdSV4pRB02X
	GVUM/urpQHcKZNP+4PBf7r6U6FkGbQXhKrHOWj+Q4hKaK+UDjDnKy7yK+jxh8xvQKTgHgbwY28CJN
	+b2vsxUAs8nBhNzNeYXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szHnG-0000000Gpz3-3298;
	Fri, 11 Oct 2024 15:43:06 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szHmT-0000000GpgS-1QG4
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 15:42:19 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20b7259be6fso23415515ad.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Oct 2024 08:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728661336; x=1729266136; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FTB9gGHrl3Jgo0ca2thxV5WEisBt66Y4CiZP+f9CMcA=;
        b=kn51lusr+H7Yi+0NTQ6nFFBf9d1vKL1YuIZPFpL0I47uaSxDPmnC0EgdgQkSdAQtIq
         2AwQJeRLQKBo/oSj3Rl06hfj6plIECvQwwnlD7DL7V0IPJD80O07Om1EvqZJHRVy+/kO
         6b+IqN2vy8LLBDwYQys+Yv7xIuEFSt+q8aFXn+fDqDHI4GFuFeDXm7qv+d+RU51b0MYN
         pArkwcIQyXWFvB+wf7n0mTUzydDRra1vhE18iqmIb+VVC5NoCGlDdfhYqm3e10VA6KON
         JPcW1FntWRZ9h98iyH2khq4Ny7AENI2qlf2fquOLhiAm4m9Wq1AfE5s0oPqPaZH0N2PZ
         UPFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728661336; x=1729266136;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FTB9gGHrl3Jgo0ca2thxV5WEisBt66Y4CiZP+f9CMcA=;
        b=GvKnlTKTa9tvh7WJ3NvLWawCN7zXz+6hWhG0L3mejIK54gkmooBtH3cMVQmhS4MYTL
         QgER4jDXhKzpxdH0XDO2VYLKJCRaejDZo65aUH0SQ1FZ+JlGLyKu48t3hbgS6pb/2kY+
         eDFlSVn7TcteWPwVgxFPFZM6RUETi+2VN+8BA4kSG3i3WVmKsNHnuJigjYqDY+qmooZh
         2CoZSXxNi4PD2XShsES5VONOUoRo9nuDDrjLZWewq/0pTE/OFkjNJQtLdyD5rLo2/BNl
         kTUXm2P+XQnUyHGFl4Uxn93ses98wRyu3nus3Xgv7mP0ItnAHefG+PTvH6WX8GehRKgg
         6b+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVYxiscMe1CvqoQl4ZLIaejtoKJv9vcrBIPaMHX4/rxDfSeEHmRSu2euC7Z0yyOpPIAjByrpDZiE1Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8OtE+t9k3A/TwBJ041NN6iCbJY2tWvDq9VYauRslYBv7iIWtJ
	0BP1V28gF+b1va3Ig5a4eYyNdxbwh081XyQ6AHpPF8L1wR4midpC5mXenD43Rg==
X-Google-Smtp-Source: AGHT+IHp+vfQ0g8KOlGcVVFt/8dwQEWB4fGW+orH2uW909xVMHZ0L705DG0vqVSgL8WCAKaDo4xSUw==
X-Received: by 2002:a17:903:1c7:b0:20b:5046:354 with SMTP id d9443c01a7336-20ca16c2c0amr34930705ad.55.1728661335888;
        Fri, 11 Oct 2024 08:42:15 -0700 (PDT)
Received: from [127.0.0.1] ([36.255.17.48])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bada634sm24786675ad.5.2024.10.11.08.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2024 08:42:15 -0700 (PDT)
Date: Fri, 11 Oct 2024 21:12:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Qiang Yu <quic_qianyu@quicinc.com>
CC: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com,
 dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v6_3/8=5D_dt-bindings=3A_PCI=3A_qc?=
 =?US-ASCII?Q?om=2Cpcie-x1e80100=3A_Add_=27global=27_interrupt?=
User-Agent: K-9 Mail for Android
In-Reply-To: <eyxkgcmgv5mejjifzsevkzm2yqdknilizrvhwryd745pkfalgk@kau4lq4cd7g3>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com> <20241011104142.1181773-4-quic_qianyu@quicinc.com> <eyxkgcmgv5mejjifzsevkzm2yqdknilizrvhwryd745pkfalgk@kau4lq4cd7g3>
Message-ID: <4802B12B-BAC1-4E99-BDFE-A2340F4A8F24@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_084217_413919_77D53AAC 
X-CRM114-Status: UNSURE (   9.45  )
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

CgpPbiBPY3RvYmVyIDExLCAyMDI0IDg6MDM6NTggUE0gR01UKzA1OjMwLCBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQg
MDM6NDE6MzdBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6Cj4+IERvY3VtZW50ICdnbG9iYWwnIFNQ
SSBpbnRlcnJ1cHQgYWxvbmcgd2l0aCB0aGUgZXhpc3RpbmcgTVNJIGludGVycnVwdHMgc28KPj4g
dGhhdCBRQ09NIFBDSWUgUkMgZHJpdmVyIGNhbiBtYWtlIHVzZSBvZiBpdCB0byBnZXQgZXZlbnRz
IHN1Y2ggYXMgUENJZQo+PiBsaW5rIHNwZWNpZmljIGV2ZW50cywgc2FmZXR5IGV2ZW50cywgZXRj
Lgo+Cj5EZXNjcmliZSB0aGUgaGFyZHdhcmUsIG5vdCB3aGF0IHRoZSBkcml2ZXIgd2lsbCBkby4K
Pgo+PiAKPj4gVGhvdWdoIGFkZGluZyBhIG5ldyBpbnRlcnJ1cHQgd2lsbCBicmVhayB0aGUgQUJJ
LCBpdCBpcyByZXF1aXJlZCB0bwo+PiBhY2N1cmF0ZWx5IGRlc2NyaWJlIHRoZSBoYXJkd2FyZS4K
Pgo+VGhhdCdzIHBvb3IgcmVhc29uLiBIYXJkd2FyZSB3YXMgZGVzY3JpYmVkIGFuZCBtaXNzaW5n
IG9wdGlvbmFsIHBpZWNlCj4oYmVjYXVzZSBhY2NvcmRpbmcgdG8geW91ciBkZXNjcmlwdGlvbiBh
Ym92ZSBldmVyeXRoaW5nIHdhcyB3b3JraW5nCj5maW5lKSBpcyBub3QgbmVlZGVkIHRvIGJyZWFr
IEFCSS4KPgoKSGFyZHdhcmUgd2FzIGRlc2NyaWJlZCBidXQgbm90IGNvbXBsZXRlbHkuICdnbG9i
YWwnIElSUSBsZXQncyB0aGUgY29udHJvbGxlciBkcml2ZXIgdG8gaGFuZGxlIFBDSWUgbGluayBz
cGVjaWZpYyBldmVudHMgbGlrZSBMaW5rIHVwLCBMaW5rIGRvd24gZXRjLi4uIFRoZXkgaW1wcm92
ZSB1c2VyIGV4cGVyaWVuY2UgbGlrZSB0aGUgZHJpdmVyIGNhbiB1c2UgdGhvc2UgaW50ZXJydXB0
cyB0byBzdGFydCBidXMgZW51bWVyYXRpb24gb24gaXRzIG93bi4gU28gYnJlYWtpbmcgdGhlIEFC
SSBmb3IgZ29vZCBpbiB0aGlzIGNhc2UuCgo+U29ycnksIGlmIHlvdXIgZHJpdmVyIGNoYW5nZXMg
dGhlIEFCSSBmb3IgdGhpcyBwb29yIHJlYXNvbi4KPgoKSXMgdGhlIGFib3ZlIHJlYXNvbmluZyBz
dWZmaWNpZW50PyAKCi0gTWFuaQoKPk5BSy4KPgo+QmVzdCByZWdhcmRzLAo+S3J6eXN6dG9mCj4K
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
