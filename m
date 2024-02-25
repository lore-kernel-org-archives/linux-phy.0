Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EE6EC47DD9
	for <linux-phy@archiver.kernel.org>; Sun, 25 Feb 2024 16:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqftRZfU4SJoSSIQ6NHcSBCCj9Cs7J/KiZixYBhU3dQ=; b=h5yg1E1QWE2sB4
	MMPQnngfnzTen43QBP/cKq0jm01nKLyDqYmrZ7ec4eflFi883NNQPtR9Zuex4zj+C4KvhHDh3y9oL
	Ep62QNwGF4wzGJRU2yGyML0o7wSL+/+7Jj7f2EUAkyw3+6DTu730nc+DHb8/ybILJUJJxm7x3IqB1
	8bQijiCzvaaS7qTtCl1SLn1CA/l0ZcjdPeAzuIY+Hnw8yq0ofpjUNvKG+uOydX440t3F4xA3QwDAS
	AKMOQTKLVEnK+2/iwsIg4/i4xE0Qe+iIXxHNlcujqYPGRu8EaZgcz1GHygVx8hm/wUJ5WTQ9G33PF
	zRdYaNGsEKNF79Z6r1Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reHcI-0000000FK9E-2k1e;
	Sun, 25 Feb 2024 16:44:42 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reHcF-0000000FK8B-1upj
	for linux-phy@lists.infradead.org;
	Sun, 25 Feb 2024 16:44:40 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-55a035669d5so4010619a12.2
        for <linux-phy@lists.infradead.org>; Sun, 25 Feb 2024 08:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708879476; x=1709484276; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x2LR7m57gltzERdPSagukEx7QYq4BUtqRMwywoeDves=;
        b=YmPlYJ9F8hEmR8pHPecF+ofFW4mSA3ZzEEWmfN+n580BOU+Zrw9SlcQ886VNKrkaBs
         A/HK9+VXycLeedTEXykkVMLvzwpVnFu9H1RQyIEPUr2wDum59krIZcsVazm5PS0pY4i2
         MnbSbjTGGcAGBxep7w/01+nE0pG/ZvYSdYsUhwqu8LSb05zZBJuljzznE+Qq0IvlOqPh
         WEV4o32iDZygJyGbknGmPlUDROoD2jcifia9kuOrV9gIbtW1X9JaexUQZTOM7DFjUs2+
         j5cW0U/5T59Rx9oZawoZlmyr1Oh2+wKTWr/6dXr+1UxeP+RDjuNt9j7WGTcB7w8+EsMs
         geNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708879476; x=1709484276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x2LR7m57gltzERdPSagukEx7QYq4BUtqRMwywoeDves=;
        b=dqf8XOUu5NYwcUIeASMQ8c1DMRbX9SedMk1iHdPyID4f1dGvQ3O16xjIk3s/fJ86cB
         3NJu9TqUvlO0m/WiKm3f/dk+d/+4/flH8rpyChHxkxOwz/ew41Qii3+eShSir3sQ0BLj
         DTJ4KfrenbBrRwFEq/euwKMUF/n6TyPgnPZhGhVQ8YFzzsQFzA9BAVbeRuDvQmvjebXS
         pAiBFRw913B2x8iWrSLF8rtbP56VcZS9kdus77RtQeZoU4RXMn66CR/AJpbFA+nkKUg/
         x8h2dxlF6f1TYls/ioH9iDBjscJ+mNw+6MWfLIh5bo5vLxRRTGsKLiWoD3Hrrs91rxX6
         VpRw==
X-Forwarded-Encrypted: i=1; AJvYcCWM5Hy6TXJog8uuza290EvFJvSRVD76q9TjzT6op31ecGKX6hLVNbeTZZqJ2lYnzvrS2IkPkoCvR6C0kgVLGNXGto5WToDTeR71CW3/FQ==
X-Gm-Message-State: AOJu0Yz2ostIcCrlljRx25ZG/8z6CgGDYBkG7BNnFfp9DhbHqvEhf6Na
	JSLkl3DsoBMUXoSaBQrbRfIQBSi8fuJp6VXCdOx8diYvQfWku6kU
X-Google-Smtp-Source: AGHT+IE6CDIehKL7+CVs5s2qsBHULZbUv6aeQGB26C2IM3i1REtVjhwoyj4s1QPfqrxh3062yElbtg==
X-Received: by 2002:a05:6402:340d:b0:565:7b62:9eac with SMTP id k13-20020a056402340d00b005657b629eacmr2897273edc.22.1708879476102;
        Sun, 25 Feb 2024 08:44:36 -0800 (PST)
Received: from [192.168.20.170] (57657817.catv.pool.telekom.hu. [87.101.120.23])
        by smtp.gmail.com with ESMTPSA id fd13-20020a056402388d00b00562d908daf4sm1537101edb.84.2024.02.25.08.44.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Feb 2024 08:44:35 -0800 (PST)
Message-ID: <fba360e1-6111-4208-890c-f86b671a5b7c@gmail.com>
Date: Sun, 25 Feb 2024 17:44:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: m31: match requested regulator name with dt
 schema
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Sricharan Ramabadhran <quic_srichara@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
 <ZdiGL/TryPVrbDWp@hu-varada-blr.qualcomm.com>
Content-Language: hu
From: Gabor Juhos <j4g8y7@gmail.com>
In-Reply-To: <ZdiGL/TryPVrbDWp@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240225_084439_524772_A5B132C0 
X-CRM114-Status: UNSURE (   7.62  )
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

MjAyNC4gMDIuIDIzLiAxMjo0OSBrZWx0ZXrDqXNzZWwsIFZhcmFkYXJhamFuIE5hcmF5YW5hbiDD
rXJ0YToKPiBPbiBUdWUsIEZlYiAyMCwgMjAyNCBhdCAwODoxMzo0N1BNICswMTAwLCBHYWJvciBK
dWhvcyB3cm90ZToKPj4gQWNjb3JkaW5nIHRvIHRoZSAncWNvbSxpcHE1MzMyLXVzYi1oc3BoeS55
YW1sJyBzY2hlbWEsIHRoZSA1Vgo+PiBzdXBwbHkgcmVndWxhdG9yIG11c3QgYmUgZGVmaW5lZCB2
aWEgdGhlICd2ZGQtc3VwcGx5JyBwcm9wZXJ0eS4KPj4gVGhlIGRyaXZlciBob3dldmVyIHJlcXVl
c3RzIGZvciB0aGUgJ3ZkZGEtcGh5JyByZWd1bGF0b3Igd2hpY2gKPj4gcmVzdWx0cyBpbiB0aGUg
Zm9sbG93aW5nIG1lc3NhZ2Ugd2hlbiB0aGUgZHJpdmVyIGlzIHByb2JlZCBvbgo+PiBhIElQUTUw
MTggYmFzZWQgYm9hcmQgd2l0aCBhIGRldmljZSB0cmVlIG1hdGNoaW5nIHRvIHRoZSBzY2hlbWE6
Cj4+Cgo8c25pcD4KCj4gUmV2aWV3ZWQtYnk6IFZhcmFkYXJhamFuIE5hcmF5YW5hbiA8cXVpY192
YXJhZGFAcXVpY2luYy5jb20+CgpUaGFuayB5b3UgZm9yIHRoZSByZXZpZXchCgpSZWdhcmRzLApH
YWJvcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
