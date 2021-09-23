Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20B35C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 15:04:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E43A761216
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 15:04:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E43A761216
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lQn27aUmqy50J8LfCiuoJah7By0QlUjbDexMCZQiVI=; b=bnQnoOKn4xIjAP
	IVmMQFi2z8cISVNITg0/DEDdXPRxHRigBsVcg5x1sAx0kUQ6/1hWxQQT2sR3638YQXaJTB4kL5vhN
	mFah0sYaPDHhlcM7OtS4jvTCiFfonRn6KwY6vX0TxsP+TTSJ1yY5MpIO3VHikeAC2iKB7hxNkmq3K
	eYILQYbxQqlqmrPpxiPjtAKZ8Fm923nes+5T8BEGIn/+ErtwOrJOyao1P/JeCVIRZ4p97hey0KcLV
	cBlI21TwaspaqZ6YWXSdrwZgkBgQ5yaMN6rhiPONdMT86IbzdDYSx6D5KxV1TAn6Kw1/5xMuNLyjY
	lm1Ph1xmNMZ0oVQ+KAYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTQGh-00Byvz-OG; Thu, 23 Sep 2021 15:04:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTQEH-00BxPJ-QM
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 15:01:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D62D60F56
 for <linux-phy@lists.infradead.org>; Thu, 23 Sep 2021 15:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632409301;
 bh=UKPoJ1KZE1z8ljuJANQ6+sZBWeEk8dHbYbTuzdUR2ww=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n8UNhKCHocNI4Vd6NVdaxwcFAvLZr0M+BjoWW+BH2J2WuJgC9FiKTTf6eVgjCUiSi
 owGd6ofoeH3iAIh0t1jQ32QQGuQuh+l8sIketk4PnL1Zg0PcfDAU4IhT21oM+9Hsbz
 i+REr4N4h6lxSnzTxVoCCYN7szueEQlBiXYt8Z1veFo5XtgwKebmTFdPTyMBMhuX6G
 vh0zhlMnY182wEf7eR8Ood6HnwP5//E4xjv//YBOTCvBXwOt5N/RI7qP9d7jgCNguN
 9hrIob1Z4rWjZzEcDJn/Obxuv07MdK2MEvM4FcMVpcDJN9y1cA62O8s9lesiL32QCx
 Sy9wqhz/MgXYA==
Received: by mail-ed1-f53.google.com with SMTP id u27so24317347edi.9
 for <linux-phy@lists.infradead.org>; Thu, 23 Sep 2021 08:01:40 -0700 (PDT)
X-Gm-Message-State: AOAM530eoSBfvthfuJL70EGxXHsyS8Lzr71Xrrd/fpgTdofSHGpMGvZS
 W4K15wVeNyRcLrK2z4iQbD1B3lDu0vRSWYDXHA==
X-Google-Smtp-Source: ABdhPJwz3cvRPhk3j1bboE+QzjGu9L+JPMytRrsRcFKcPa7XTZo0ubf39qz2rIVfw8AMAHTTNj4aJeUftfPkDZLKP+s=
X-Received: by 2002:a17:906:abd1:: with SMTP id
 kq17mr5338261ejb.390.1632409276680; 
 Thu, 23 Sep 2021 08:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-3-zajec5@gmail.com>
 <YUriBVIH/n0p2H+D@google.com>
In-Reply-To: <YUriBVIH/n0p2H+D@google.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 23 Sep 2021 10:01:05 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
Message-ID: <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
To: Lee Jones <lee.jones@linaro.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 devicetree@vger.kernel.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_080141_956320_1E0BCE06 
X-CRM114-Status: UNSURE (   9.92  )
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

T24gV2VkLCBTZXAgMjIsIDIwMjEgYXQgMjo1OCBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgMTMgU2VwIDIwMjEsIFJhZmHFgiBNacWCZWNraSB3
cm90ZToKPgo+ID4gRnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ID4K
PiA+IE5vcnRoc3RhcidzIFVTQiAyLjAgUEhZIGlzIHBhcnQgb2YgdGhlIENSVSBNRkQuCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ID4g
LS0tCj4gPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL2JyY20sY3J1LnlhbWwgICAgICAg
ICB8IDE1ICsrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4KPiBBcHBsaWVkLCB0aGFua3MuCgpIb3BlZnVsbHkgdGhpcyB3
b3JrcyB3aXRob3V0IHBhdGNoIDI/Pz8KClJvYgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
