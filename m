Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CE8AD4114C
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 09:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY5QMkfCWYLcZdt0mC9bOU4cmLPf8RF00uSiNHImAG0=; b=EKYfPv3WqJJD8l
	Jhwyp8jWUlvazmnNq/dV12eKMUmozztwDH7lD9p3ZYvF0xujsx1IOhGEu9cJNsGyUQMay2Zv8aUhg
	Akcwc2a5kKmBSfy9nayQw5zKKk7nazJzfdPAh+atDcnZ019SBmZ16MLEKknMwy4ENqBTus/Qs3D27
	yhM3NzP6FEAF5Gx1u7//AQuT28E7SDYARLbKPFEDVjKeV5bgqg/Zzp18/ilsroO7DXqTwpEtYryxk
	YVXqjXt8ltJGAnlxfYWcK7ZR2JNsVQKlZx7CEIDPYixgPKVz1HLZlEBmO/c/+zqzXE6df2uNGSydV
	YeoowyV3CbBm3Z1Ne/VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgJki-0000000C4mp-1OT2;
	Thu, 15 Jan 2026 09:34:52 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgJkf-0000000C4km-1pOf
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 09:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768469687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5CUscDU6UaJzLMrwM7wJMVQOj4YBDvGy2zrior6L6Cw=;
	b=KvNWvnRcWxqYiqCCLA1qbeXHb1InoOe2IZhf5dk3IkrEQtI/HtuuI/D7QypC+xHoNVqLHQ
	iRkFZ3lpdMS1fZnPuOH2EAokXqV5Kih5cIGEGWFhpGPvnGetoUKLE0lfMF9kEwPnsmT4QR
	EwNs3dzB21l7DM0DeK9191BTjSL0ST8=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-152-a9APXeb9OvKpgIjSCb4JbA-1; Thu, 15 Jan 2026 04:34:46 -0500
X-MC-Unique: a9APXeb9OvKpgIjSCb4JbA-1
X-Mimecast-MFC-AGG-ID: a9APXeb9OvKpgIjSCb4JbA_1768469685
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-47d5c7a2f54so11144885e9.1
        for <linux-phy@lists.infradead.org>; Thu, 15 Jan 2026 01:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469685; x=1769074485;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5CUscDU6UaJzLMrwM7wJMVQOj4YBDvGy2zrior6L6Cw=;
        b=UBnc//mNYKtOQWJ7hEk1Jzpw0ATKOMC3SOpjO+MtDiPg/YwTqHTdI/Pljwz8g2Cafm
         0Qr+hPg0ONkxM3n38UrI36xslpiB0c0vjgJwagZuyh4PaQXh/+j9tfoT5FJEoXyLkp/C
         nrb3iILv69EekHQ5YFeTPTx4XfzYkJ0/jxZBNB6r8b4cdbhLS5O56JaqYwVnW7k21U86
         acvDiPw2WuEVNq7RhPAkNmTLoqKpvJXU7feCXsoQEnzRNLATvBoEmNX4YFObabaH5e3A
         +BibTOvkZS5Q1k6LnMgiWoQ2uiRsvRoH0V/tn/7x1Sku4Sb0ay+2L6VyACr/ikdW+2v6
         frAA==
X-Forwarded-Encrypted: i=1; AJvYcCVGQBFaUBQkI/QhiVo3z/Xq5VeoVQWwFu89Xz+XAYkMooqcsdjkWZivaLqO/AX5vNYGND+4I1bVmpY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9qrWjwAWDfPHI/7uhJrj0IdZgpPe7X63E8qnxengm8KhQg3Sg
	afQO8zsf7K1hFFQWTS4Yxjb/czHaX1VQeSxjaaYHVXOngB5M2sASRmbFFh8MuI6tlRtK3aTUQnT
	V0aTBfJhpl3+WUgXt7CeUzdwMcO7wNcHFt+gOPTRALSVnXobPmy2bbDeema6LgFCUebE=
X-Gm-Gg: AY/fxX7a3PAQOqfUQbsgcBTY0unkYPsKf373fsGw20TIKX+8W+q48cPyCpROdnUyEvY
	Yc2povwmkUSuER6glJL0NLIQKMFvEL6BLFX5nQujRk7DNvNtgxGLhyBQsVnpSNxQSBnkAqAl8q3
	5V9OsICdTH4hiLG/jO4Fgb+VqDy/NkFMry5be8Y7tmsiTKANMtE9EWvRObHrjqYRRxU6fmcNfCp
	1UNFgLG4atGEx3PvoGZ0hUNpzTENvIWcYs5ASftNvyUPIL6U8go/U1o+LwhK3yZSVeuSJXoa4Re
	zkq/fRI6xMsiSUEdNiGrif6MkGGdvSHacaeBGpEgD88/v8sVveq2r80ytPaLztYoyWItogKzAMj
	ksiM8VIFPkBtFvQ==
X-Received: by 2002:a05:600c:3b82:b0:479:13e9:3d64 with SMTP id 5b1f17b1804b1-47f428f7447mr30633375e9.15.1768469684616;
        Thu, 15 Jan 2026 01:34:44 -0800 (PST)
X-Received: by 2002:a05:600c:3b82:b0:479:13e9:3d64 with SMTP id 5b1f17b1804b1-47f428f7447mr30633005e9.15.1768469684215;
        Thu, 15 Jan 2026 01:34:44 -0800 (PST)
Received: from [192.168.88.32] ([212.105.153.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f428afd9csm37134515e9.6.2026.01.15.01.34.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 01:34:43 -0800 (PST)
Message-ID: <33ff22b4-ead6-4703-8ded-1be5b5d0ead0@redhat.com>
Date: Thu, 15 Jan 2026 10:34:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 net-next 05/10] phy: add phy_get_rx_polarity() and
 phy_get_tx_polarity()
To: Vinod Koul <vkoul@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Eric Woudstra <ericwouds@gmail.com>, =?UTF-8?Q?Marek_Beh=C3=BAn?=
 <kabel@kernel.org>, Lee Jones <lee@kernel.org>,
 Patrice Chotard <patrice.chotard@foss.st.com>
References: <20260111093940.975359-1-vladimir.oltean@nxp.com>
 <20260111093940.975359-6-vladimir.oltean@nxp.com>
 <87o6n04b84.fsf@miraculix.mork.no> <20260111141549.xtl5bpjtru6rv6ys@skbuf>
 <aWeV1CEaEMvImS-9@vaman>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <aWeV1CEaEMvImS-9@vaman>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8PZy_9px1QAuul02Gikitviq9-CO77UvVcJIpJC9So4_1768469685
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_013449_545489_BA4B8F5C 
X-CRM114-Status: GOOD (  11.00  )
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

T24gMS8xNC8yNiAyOjEwIFBNLCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDExLTAxLTI2LCAxNjox
NSwgVmxhZGltaXIgT2x0ZWFuIHdyb3RlOgo+PiBPbiBTdW4sIEphbiAxMSwgMjAyNiBhdCAxMjo1
MzoxNVBNICswMTAwLCBCasO4cm4gTW9yayB3cm90ZToKPj4+IFZsYWRpbWlyIE9sdGVhbiA8dmxh
ZGltaXIub2x0ZWFuQG54cC5jb20+IHdyaXRlczoKPj4+Cj4+Pj4gQWRkIGhlbHBlcnMgaW4gdGhl
IGdlbmVyaWMgUEhZIGZvbGRlciB3aGljaCBjYW4gYmUgdXNlZCB1c2luZyAnc2VsZWN0Cj4+Pj4g
R0VORVJJQ19QSFlfQ09NTU9OX1BST1BTJyBmcm9tIEtjb25maWcKPj4+Cj4+PiBUaGUgY29kZSBs
b29rcyBnb29kIHRvIG1lIG5vdy4KPj4+Cj4+PiBCdXQgcmVuYW1pbmcgc3R1ZmYgaXMgaGFyZC4g
TGVmdG92ZXIgb2xkIGNvbmZpZyBzeW1ib2wgaW4gdGhlIGNvbW1pdAo+Pj4gZGVzY3JpcHRpb24g
aGVyZS4gQ291bGQgYmUgZml4ZWQgdXAgb24gbWVyZ2UsIG1heWJlPwo+Pj4KPj4+Cj4+PiBCasO4
cm4KPj4KPj4gVGhpcyBpcyB1bmZvcnR1bmF0ZS4gSSdsbCBsZXQgVmlub3QgY29tbWVudCBvbiB0
aGUgcHJlZmVycmVkIGFwcHJvYWNoLAo+PiBhbHRob3VnaCBJIGFsc28gd291bGRuJ3QgcHJlZmVy
IHJlc2VuZGluZyB0byBmaXggYSBtaW5vciBjb21taXQgbWVzc2FnZQo+PiBtaXN0YWtlLiBUaGFu
a3MgZm9yIHNwb3R0aW5nIGFuZCBmb3IgdGhlIHJldmlldyBpbiBnZW5lcmFsLgo+IAo+IFllcyBm
aXhlZCB0aGF0IHdoaWxlIGFwcGx5aW5nCgpDb3VsZCB5b3UgcGxlYXNlIHNoYXJlIGEgc3RhYmxl
IGJyYW5jaC90YWcsIHNvIHRoYXQgd2UgY2FuIHB1bGwgcGF0Y2hlcwoxLTUgaW50byB0aGUgbmV0
LW5leHQgdHJlZSBmcm9tIHRoZXJlPwoKVGhhbmtzIQoKUGFvbG8KCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
