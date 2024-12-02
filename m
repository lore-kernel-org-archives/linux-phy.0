Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C921D78326
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 14:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BtH+t1M5N1C48BGK4l2HL1XIbb7NueuEJ53y9K5HPH8=; b=UQACuy5hKR2xEp
	o+aBmfQ6d73YJl7eSUcC0dG678GxM8bKsb/AaqDjuMZ0i+ghRxrflGD4oWCj/2VZDCB4J0bruGUg7
	N0MpAjlUfxEqQQo2wNSz0D3BBC7F0WDr9aQlN13G2GDsVClNw04Zs/3/3t03t4ESezk8Ndn3tWs+Z
	eIf0zmcjPSjmB8TMC8TEJViO1wexWmAZ3Zr7vfGaDlgqKEvH1BFBYYqoEhLleJW58tk53ipR/gNfw
	XgcFidii0/E7vlDZxDCstTFSolaQ3ALqBX4/Q8IWsnqY5sqdzgZLvL0rUtc/wU2UqHpohU8yZfJ+F
	nxSu0FQjloO+zd//MkSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7k4-00000006WT0-1i4S;
	Mon, 02 Dec 2024 14:49:40 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7jJ-00000006WJr-0F4v
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 14:48:54 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-21578cfad81so11431745ad.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 06:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733150932; x=1733755732; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GpKDAl11fDGEFH2u0shHgW2aMBuMgZUzlcce2vSqOBc=;
        b=q4ekNrrEDw4Dl89jwqok8XXCl+qzdQnzcJQbYSl8zQzgdp0uzAU5hOBUxQgPgK58HQ
         MYW7pZwKebZEFaw7KquFvNqDnJKB//DulMv/JJwGuxBSujviTSJCss2rZwXHT5vBu51E
         8QNMM+UwuTZhVKSerQCGtvhiLsLTtWD3Tnyh7NbHFYASbIGD/kI162S/Khz7j220+aoC
         DUE8OBU1YVGlpxSO+3m6LPDSm8IVkuE4CziCQnuMvDbafVsoaZnDSrmxc1bmzV1x+U38
         /10FsxRjj472A1UGHhh59YflbtqPBpcjBQ3NtMA88EcY31zPVV5V2GdI1HbBLK2Xmfs+
         3YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733150932; x=1733755732;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GpKDAl11fDGEFH2u0shHgW2aMBuMgZUzlcce2vSqOBc=;
        b=bOOOXwMNyXf0N9j6YTVeHNUUwDZFvi8UFxNvxoMhj+0qboa0Ju1KH+gIhAgjZ5Dx26
         th5P0ljhnvpZuoik0WPwuC9AJzBKZBBQauOx2ecAo9ii/msrN2KorbyYciYtCSBWRtwx
         X7MA8oCdZXa72NuOdMiQC1esTLJ1rO0aHlUD/1suveCn194ZIHHbEwiJRbTn8yLfv/J0
         8l8a9KC+9lzfarA/dW/EZDS/Edj3futCjN9IaYgL45Y+AlaraPWxv/H/6W05XLR+biMY
         rV6kxcWM2WwkOO3UzvANoBVi2sDq80NUBkIhd9cRtLuRj+vPZSuOyqAtLhy0+3ZWlbfH
         eYMw==
X-Forwarded-Encrypted: i=1; AJvYcCW0dKuj7BLY91wGhEEHdpnYHnMBlAkg/XkxKeEbFp3sR+KYinuXuFazEPFlodBJJVK+K1sD6cGe0k0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjDZKnGqMjH/PFSdD4LYM1UiCe/uP+MjGQ9oekX78IoslTnoF6
	DA5AktVtzSRMUcz7A7yCcFlwwuouh6Is76Lf3atnMOEggZAK/HFMpm3QHsyEXw==
X-Gm-Gg: ASbGncu6whGuZ27UnycCMrNIcXcd+YV6mQgOY+DyVpaIs/T293yyL+YwLktvx4EwZ98
	vxGKVtep2GSAyTeSs2hooIFzEss0G/jvsnSuE1bvctaBsHwih4r6MrWssrbEZx6eoquSgBfI2fI
	iwtrlYro6Qo2I48obAWofeIt1mNoNNmu4gcIiW2JEJm9jRUwtGvbIsaxBOQP/c7G/3SWYt2/SCq
	XPjdP8Gnt4JA2uEm9cEH18EyLD9kGqDl0fKB+7zLL3Wwco3PpJ4S3UwY6rMnw==
X-Google-Smtp-Source: AGHT+IEqa+tt8+8vAVIq3UE9y4O1HQ9UBxGGwNoUbUmxwVoafsrUcqpH/ZT38yQrrxK6IssCIyvowg==
X-Received: by 2002:a17:902:f611:b0:215:3fc6:7994 with SMTP id d9443c01a7336-2153fc67ba5mr207835105ad.49.1733150931824;
        Mon, 02 Dec 2024 06:48:51 -0800 (PST)
Received: from thinkpad ([120.60.140.110])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2154704346asm57084655ad.18.2024.12.02.06.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:48:51 -0800 (PST)
Date: Mon, 2 Dec 2024 20:18:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com, quic_sayalil@quicinc.com,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: qcs615-ride: Enable UFS node
Message-ID: <20241202144844.erqdn5ltsblyhy27@thinkpad>
References: <20241122064428.278752-1-quic_liuxin@quicinc.com>
 <20241122064428.278752-4-quic_liuxin@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241122064428.278752-4-quic_liuxin@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_064853_106239_8652DDD4 
X-CRM114-Status: GOOD (  13.28  )
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

T24gRnJpLCBOb3YgMjIsIDIwMjQgYXQgMDI6NDQ6MjhQTSArMDgwMCwgWGluIExpdSB3cm90ZToK
PiBGcm9tOiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPiAKPiBF
bmFibGUgVUZTIG9uIHRoZSBRdWFsY29tbSBRQ1M2MTUgUmlkZSBwbGF0Zm9ybS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBTYXlhbGkgTG9raGFuZGUgPHF1aWNfc2F5YWxpbEBxdWljaW5jLmNvbT4KPiBS
ZXZpZXdlZC1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29t
Pgo+IENvLWRldmVsb3BlZC1ieTogWGluIExpdSA8cXVpY19saXV4aW5AcXVpY2luYy5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogWGluIExpdSA8cXVpY19saXV4aW5AcXVpY2luYy5jb20+CgpBY2tlZC1i
eTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9y
Zz4KCk9uZSBxdWVzdGlvbiBiZWxvdy4KCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNv
bS9xY3M2MTUtcmlkZS5kdHMgfCAxNiArKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9xY3M2MTUtcmlkZS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LXJp
ZGUuZHRzCj4gaW5kZXggZWU2Y2FiMzkyNGE2Li43OTYzNDY0NjM1MGIgMTAwNjQ0Cj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cwo+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMKPiBAQCAtMjE0LDYgKzIxNCwyMiBAQCAm
dWFydDAgewo+ICAJc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICAKPiArJnVmc19tZW1faGMgewoK
Tm8gJ3Jlc2V0LWdwaW9zJyB0byByZXNldCB0aGUgVUZTIGRldmljZT8KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
