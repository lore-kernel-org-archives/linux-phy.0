Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F05C982D5
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 13:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JezhBP7oP/7u/3YJjNLt/iBN9DAr5ivJrlkm5YGuTc=; b=YcSEcTSPAY9u0q
	tGaYJbNnZI7UlPXfYGDOP6YUh+jv8UMCR26FXGIJM5svW/Y83aTGLLJeslobs9YDAmcGHtJe6YAwv
	Yb3gkRAI6Lyycr51P2r82hKwCNvit4SmGEdeXRcmAx9q0q7ho3jfYf8s1d8lnkYiNHWpteE0pNv33
	IhunlsL0bxqAu+blck+uGxh2fglry2TyJBC4AQZ6Nl1hnnh9QYRVDfllxebr1XER9GQO8ZCz7IWjW
	9/F7U2wzx/2EvDuN8TzdfHbkgTNKMb1mbQlmZo9TRgj+V9RD6Cyjcpup66R/XCIfMQVu/pqPWu6YQ
	NkqZNUtjsJp7oXak8FPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7C9g-0000000BOqw-41vz;
	Thu, 17 Sep 2026 13:28:00 +0000
Received: from mail-ej2-x10.google.com ([2a00:1450:4864:34::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7C9e-0000000BOqK-0b0K
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 13:27:59 +0000
Received: by mail-ej2-x10.google.com with SMTP id a640c23a62f3a-c2953a01240so144064366b.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 06:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789651676; x=1790256476; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=rajuo6bzngXrBhLYotQd0SgbFpshLprnWII6O4/hths=;
        b=JmdlhDMxoLjTonqk6CrztHg+4ObxWN3OdHINmlkjmJAfTPQvHd5cbL6kKnQyKVGofd
         dKKz79qLytD9DIJ4aDB6YMypov6uH4WXfhecjajEjnSwF4sR8mLUm4TVNQ3lY6FAIoau
         4/dqV6ZLySCrac4jid5oF3JYKk0UFs2tRuLgCqoBmNaeC1QO1r/TqfCeUkjqZ6sX0T+E
         5eJFSep0o6V/owKWqFm8U0N3Ciwm+E6naAhgYDtV4fZFZvU1dIv9Mw5auQPAP+Qehup7
         dZya+bBNIKNyqbw+1Tim+CQKoqGp1sASVlylM2W17urYHJ1TikqgpK4jQhjx1rRj0U1y
         iB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789651676; x=1790256476;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rajuo6bzngXrBhLYotQd0SgbFpshLprnWII6O4/hths=;
        b=auccLyM2Jp6AuMpqaeyCwL5Wj56P5bG+mSEHLQO8z0uJbSyuCvYMlXh8Aa81ZMqv/t
         qH+tnbiwJb5verpplWLgOzb7K8dHHaQijKRezYaSHNNqgmtcJfOJ9Js4vEMOAHB5Anof
         ovFkRX5x2I6ldaLSHpUMCy8kTrp9Kg+Zm+bMfI3tVUZhFR29sk79Kf3rjBL6w83DvIYi
         PZmEIZNVEdG/17NSh8qYsCx+jSSSf9vJMnmpjDj8fW4Y3BKOEBU/+8s87xnfdrdgksNU
         krkdeGtaw3kjUJGxToQKqp3qwGz8LJ692EoJeG5lQXc9lQgjFAiWaqsvSvgU9SfbjwX+
         D4iw==
X-Forwarded-Encrypted: i=1; AKwUvBy1OTj/GnaOTFdgK98q0qiv39kZ6u7YL0uuwTYam++ff/rtErbkZvzyj40Q99QtEjwlDbC/5ypZM04=@lists.infradead.org
X-Gm-Message-State: AFuF++nlWjxehU5mScMBp36rcc0Mx1JMpzsqtV8vpwpCvtOhw1ucR3bg
	yac2qWCEPQW2v0Pf+v1eQEz2GP9fUN4K28IydOwn0gyn90uB+JlvwYI7qpYDUvtccAI=
X-Gm-Gg: AYBFou0RHQfEATyELwrei/XnJ+4BdXxpbt+Ud9wfjYGrBNShze3xQAQs02uvD6ZrEYo
	8EAE78pkDhoi5rGijSOnmoNOV8iPN+psXHU9meWhTfl6ctUbqIqTam3/6f5EEF3kt482H4awLVe
	l/nDEpW8JqDyrkn8epy0s0iuZPbun6qKnh9sqHmgd0rS0cfynjhnflUYw5A0jtWaHI6t65IJQP0
	aB+PDliA43/AXBEKerRs2Ghz48xhX8gjOoVZZ6WwGEpH1fCRSkyo8kxxsaK4sYoyyp3F6QYCAmY
	EqvypchINUZpTYP2wh5k9vTT7F63fbuCBwINjDVtcvvqFOJ5DO89iTK8NpiWpMKJCqQJvcG3I5M
	Phz+NBIEPjxkpbOqYQoA/9Y2IXZIJRV5uGNQ4rsYcGSlAfdnG5t/8VQPFoFu4hAnRidwi0Tu5a6
	s7/oImJpd7gUmCQBlBF02Rko9DMhn7Gl+Dn6iDZlM0c3IKw/QPvGkFuWnaQNy17kNNALwQDOL0o
	da9q4JkeBc=
X-Received: by 2002:a17:907:d0b:b0:c26:19de:9acd with SMTP id a640c23a62f3a-c29e5308381mr463526666b.37.1789651676039;
        Thu, 17 Sep 2026 06:27:56 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.29.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de453f04sm293940366b.15.2026.09.17.06.27.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2026 06:27:55 -0700 (PDT)
Message-ID: <37f182ad-a137-4066-9e94-b06be2cd03da@linaro.org>
Date: Thu, 17 Sep 2026 14:27:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 3/5] phy: core: Add devm_phy_get_by_of_node()
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
 <9e8ae55f-6d95-48a9-bef1-ab653d0f1c7d@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <9e8ae55f-6d95-48a9-bef1-ab653d0f1c7d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_062758_198507_75D5D6FD 
X-CRM114-Status: UNSURE (   6.76  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTcvMDkvMjAyNiAxMzozMiwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+IC3CoMKgwqDCoMKg
wqDCoCBkZXZfZGJnKGRldiwgImZhaWxlZCB0byBjcmVhdGUgZGV2aWNlIGxpbmsgdG8gJXNcbiIs
Cj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRldiwgImZhaWxlZCB0byBjcmVhdGUgZGV2aWNl
IGxpbmsgdG8gJXNcbiIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9uYW1lKHBo
eS0+ZGV2LnBhcmVudCkpOwo+IAo+IFRoaXMgY2hhbmdlIGJlbG9uZ3MgaW4gYW5vdGhlciBwYXRj
aC4KCkRvaCBGcmFuayBnYXZlIG1lIGEgY29tbWVudCBvbiB0aGlzIGFuZCBJIGp1c3QgY2hhbmdl
ZCBpdCB3aXRob3V0IApyZWFsaXNpbmcgdGhpcyBpc24ndCBpbiBteSBzZXJpZXMgYXQgYWxsLgoK
SSdsbCBkcm9wIHRoaXMgYWx0b2dldGhlcgoKLS0tCmJvZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
