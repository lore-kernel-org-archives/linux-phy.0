Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37BB60A2606
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 15:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zPtYFBvm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zY8voig2wNIZsT4phHoLJ9Dmh787jWAZ1kQfglBIWBg=; b=zPtYFBvmDSOLwd8i8it9HNWAXn
	RE7/e16sRr3wAX8zWsOz3oxjtQFSHx+mtnZ9hS8WrXkRqspShm48gYl6ghODf9zO7cUtIAlSm11cB
	UQGDpXJ7UOGnu+eefabGIuSj22sw8XupSzNcVgL7HseuRFbsq1Qdn8pWBf8qgpjRoN6tausLysj2i
	5wIdQJaBnXs2auWFIQZJGAjVbDoYTxFbYjDpLDqJlmUZeVQW2QiCRdljGbor6kHmUwZ1W3Sm74ISE
	DmF6yVGtPx6+aNPWyr/xATGPAIZZqOvwAnHObdwRG87dP1PRGISbXvuz/4NXH31LcBKVaTdDc0U6m
	Lm5St/MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQo0M-00000004QqP-0cOk;
	Tue, 10 Nov 2026 15:43:26 +0000
Received: from mail-pg1-f170.google.com ([209.85.215.170])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQo0J-00000004Qpa-001D
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 15:43:24 +0000
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-cdb9d5c1c8eso1098501a12.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 07:43:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794325401; x=1794930201;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TQtG4o/ML/2sB0MvTtvE7H8moOh6q/FDtaR4iqmNY1g=;
        b=l9YnTc7pkh+LAwwE8I0PB2CvsrNENw2nYplD2SES6x7iu+pABVx5jcGxGng+3I2zVg
         DABRsYQDeq2NyspF4jyz/7y5dw5RgZSkHRqbdvdhrpG/EQawWHv+6a5Snfvc80SuT7WW
         KlxqDr+QIOhmNo0SfBNvspLv8kiZwR1cvc5SvyEXu2wh8Q2SEXL1hwelwZNUwAujq5Ka
         xhkOjgkjj88T5WD4RmCHNcN24VcZsXSVm9wpE5+3BcWU8gfCn2nTpzHLKL3LO6Gwxl8N
         1m4flccqfek6A4GkxJByMmNOR9qmQcrwnfWuzzK/5M8m+dOFA+/nQioPnEfjNuLAte8J
         /Vjw==
X-Forwarded-Encrypted: i=1; AL+hErE6SyJAej5pWbu56Y+6hmU4tSZoPuHzoo0dbmZVc1MtF4hnGjwalc8+keuYFklxHw6ABlWdmS2MWys=@lists.infradead.org
X-Gm-Message-State: APuU4Z9rduyjNeEy+dsmRL9JEuCa3im2JFirllhDOQGszx77kFu70rln
	XuAHYPkLmK5ojPleZYVBUcpfIkSyNc0E60TrhomvlvnI9EuYb9ZKaKVq
X-Gm-Gg: AYBFou0f7Rjn2cIoFVsI+Nobk6n/9IWpjJu0C+qiuymibOqxdDY4XVgTgltrVE7w+fu
	PiQA2iioAqhB5yFH56MJ9NoGlyCXsW3SgC6YyUUNcRLvko8AM4iIinTSPxN+lzhOw++rqJk4i/J
	jwtIT8DDGqAq5tuORSdxD9zk7hG9hD15vE2zez8UQg0HPWtjGe4k808my6krWmtaz/EoxN6MRBA
	6TmwC/OQKGDZodEK8Uyz0DPHwzdGBywDE1uoGKXRQ3jFHl2w2d87bJWoPGkWSQ8TByhmqYVVndB
	5bVxBX8MJr1DHj4HwBlNf0+DJTDM+ttRkwGXbg/saa+ZjypY/RAmCAdSiEbdu3prG1Y1PiXWB1h
	xjyrArYaWP9zj/SY8MKQQpRPfVh2VngAt1yZ7yfm9if6N7Ps2ByQLkWRP1Bofy+k2u3BXseLQmR
	Vd49b7WzE6XRXE+p1IlGSKtuQUJUi71xNXNCH5c+xrsavMgWqvZwtIPjgmKgyKNIuiU7aFCfgKm
	f0gO3RhVHYtq9RflV791p+BbYcTdxUHbLEqwtstQTYjaXWfMHt8gSNbjtPl2ACLtEv9AHvgKeH+
	CZjspZ4EitkVIrgVCElPLY7iZjoQkZUo6B10nVyT2ShyazC73VwX4dw0QLMXoWCREue3BmUW
X-Received: by 2002:a17:90b:288a:b0:3b0:a9de:9886 with SMTP id 98e67ed59e1d1-3b166cc035emr3111438a91.12.1794325401459;
        Tue, 10 Nov 2026 07:43:21 -0800 (PST)
Received: from ?IPV6:2800:a4:890:2c00:14b6:ffbd:f8b2:d9f2? ([2800:a4:890:2c00:14b6:ffbd:f8b2:d9f2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdd8d5e830dsm891469a12.4.2026.11.10.07.43.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 07:43:20 -0800 (PST)
Message-ID: <987c1008-d0ab-4508-82a2-1a26104a47c8@andrewgigena.dev>
Date: Tue, 10 Nov 2026 15:43:13 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] dt-bindings: media: qcom,sm8150-camss: Add SM8150
 CAMSS
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20261106-sm8150-v7.4-rc1-camss-v3-0-0103e8a0bbcd@andrewgigena.dev>
 <20261106-sm8150-v7.4-rc1-camss-v3-2-0103e8a0bbcd@andrewgigena.dev>
 <20261109-slick-transparent-ostrich-28ddad@quoll>
Content-Language: en-US
From: Andrew Gigena <mail@andrewgigena.dev>
In-Reply-To: <20261109-slick-transparent-ostrich-28ddad@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_074323_044114_0320AF2F 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

First of all, apologies for the late reply and for not following your review
advice earlier - that was my mistake, and I should have responded to your v2
comments individually instead of letting them carry over.

I have now gone through your v2 and v3 comments again and addressed most of
them locally in a v4:
- reg/reg-names moved to the top, redundant minItems dropped, property order
  aligned with writing-schema.rst, example cleaned up, ports use
  patternProperties, bus-type dropped from the CAMSS binding, etc.

Regarding your v3 question about the order of reg/reg-names/interrupt-names
(vfe0, csid0, vfe1, csid1, ...): I took it from qcom,sc8280xp-camss.yaml,
which uses the same paired VFE/CSID layout and is the closest reference for
SM8150. The entries are also in ascending register-address order in the SoC DTS.

If you would prefer a different grouping (e.g. all CSIDs then all VFEs, as in
sm8250), I can reorder the binding, DTS and driver resource table. Please let me
know which ordering you prefer. I would like to hear your feedback first so I
can adjust anything needed before sending v4.

Best regards,
Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
