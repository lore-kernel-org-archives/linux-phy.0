Return-Path: <SRS0=CLz0=IH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A676AC433E6
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 22:52:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C42964FBC
	for <linux-phy@archiver.kernel.org>; Tue,  9 Mar 2021 22:52:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C42964FBC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WXKtVHzXdhVZFCLpikHt+hdfV2WntGQCqgD2k+mqSp8=; b=He6ViEKeKGwkeyPpf8B21ecGF
	E6B01bZVcoQduNG86j1PXEgK/rQIy195tQ+kzqgdXIo6xAu2nORZAYI0waWiWRmFmBtpmESrL8WJs
	2lmbl1DRWR9iB2PY2gpBTVZUktFmqBJOPpj+hGgEnGUTJgLq+0rtbYlkamwK1Cuy8hDJqwWjQFOM/
	VuniXf+iJb7Y6fcxZ3sGM/NUtTzUPbn/od2ufTbh2jmXbugas/ViNGcfF2S73tzGvLY+ht42zInLd
	WMBy7V5WL9gMhqUTJFEU0b/1Ba80dsCO21NSvIWCffkhpMKn4sGIEjaROhm2syoDZZ0taZX8POzlU
	Yu/KYk1Vw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJlD2-005bNq-Jb; Tue, 09 Mar 2021 22:52:12 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJlCn-005bN9-Sd; Tue, 09 Mar 2021 22:52:00 +0000
Received: by mail-pj1-x1030.google.com with SMTP id gb6so227432pjb.0;
 Tue, 09 Mar 2021 14:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=g89i0HKVVK17ZHojtMfNmi1K2EkjJlXDtcm3OypLR74=;
 b=ely7tZKJEg0V/UnSn+ooeMOHZb1z7GRwJ9YAkSxz+oqF7umX2C4MV5ANe/HdVLrV9L
 7ycy5+Kuya+oQP7mlLgGdkDoiYEF6mDKxZi7uyRBDsazpQ71MvdqZ64WIXU+i56B2q5l
 ptcyAFfGp0Mpe4kysAqMNHuPJNGFppudIe3Q0g0VkzM+RchOSeVT+86a459b7USGu1na
 ckU/lv9KjeWFBKUf/0477AGjn9k1fBjxApVdveKyqA0oQw5JiVS/H2cBzy4K8BR8PSiB
 t9ra90qmyH9C8hS+IHfGiV/9x85wTqgSC1XYuDKJssYljkMfjzbWCOsBH8sa0Yua78tt
 oY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g89i0HKVVK17ZHojtMfNmi1K2EkjJlXDtcm3OypLR74=;
 b=PlfO4Tg5yugDdGGjTtRVntk6mPBkYAGZtRMOfkxFEqJ8TGL64NceJuBKGpujMyWJeA
 bbOfdjmmPdrLdExvbynVQyAZSmsAfwg5TJhtB0okElBRGZk0R+4WhjzxN/u1QNAbRcFo
 1Ne9MHH8hg5kXImRGrH82cB4jCxBfFdHjRlq4I5qVUzOt7hJQz2rm4Jp3+y/AsisvBXY
 R+j0tOAMEGWtKm19m4QleHzJG6CzWdIFQ/ib5/lfEqj05Dd1lpNaeOo11U7FPdIQ6Se3
 d+ewHWC9jbwpzs3dzA1sOu+0RVii+KGlIzUArhR44sFp1rsqDpDb3tyVnuXt0/J8/Cq/
 6yDg==
X-Gm-Message-State: AOAM531K9XFFxRNfOB14V8hYlz9i6mPd6PEd55zHSfdmXV3g088flv1y
 sr9PlZ6N0SqQEngr9v08Y8g=
X-Google-Smtp-Source: ABdhPJziIlNdo9kD1ROvfvgq8d0GCtVAV263bhoLjF+IxX/73q05eTTsdU/EDmxvKM68tO+rFGY9sQ==
X-Received: by 2002:a17:902:d346:b029:e4:c35b:dc0a with SMTP id
 l6-20020a170902d346b02900e4c35bdc0amr295499plk.75.1615330316494; 
 Tue, 09 Mar 2021 14:51:56 -0800 (PST)
Received: from [10.67.49.104] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id b19sm9872696pfo.7.2021.03.09.14.51.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Mar 2021 14:51:56 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: phy: brcm, brcmstb-usb-phy: add power-domains
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Al Cooper <alcooperx@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
References: <20210309182616.25783-1-zajec5@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <ca771a45-4f59-29b5-c4b3-4036e7d7db58@gmail.com>
Date: Tue, 9 Mar 2021 14:51:54 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210309182616.25783-1-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_225158_309914_0AF9AAAE 
X-CRM114-Status: UNSURE (   9.11  )
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

T24gMy85LzIxIDEwOjI2IEFNLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IE9uIEJDTTQ5MDggVVNCIFBIWSBpcyBt
YW5hZ2VkIHVzaW5nIHBvd2VyIGNvbnRyb2xsZXIgc28gaXQgbmVlZHMKPiBkZXNjcmliaW5nIHBy
b3Blcmx5IHVzaW5nIHRoZSBwb3dlci1kb21haW5zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhZmHF
giBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KCkFja2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxp
IDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KClRoaXMgZG9lcyBmaXggdGhlIGZvbGxvd2luZyB3YXJu
aW5nIHdoZW4gYXBwbHlpbmcgeW91ciBsYXRlc3QgcGF0Y2hlczoKCithcmNoL2FybTY0L2Jvb3Qv
ZHRzL2Jyb2FkY29tL2JjbTQ5MDgvYmNtNDkwOC1hc3VzLWd0LWFjNTMwMC5kdC55YW1sOgp1c2It
cGh5QGMyMDA6ICdwb3dlci1kb21haW5zJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4
ZXM6CidwaW5jdHJsLVswLTldKycKClRoYW5rcyEKLS0gCkZsb3JpYW4KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
