Return-Path: <SRS0=7zeO=IN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7C9C433E0
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:29:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE7D764E64
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:29:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE7D764E64
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4DA5n5pjO9Df3SYJS0HtffzdHfMz82mG0BFdnPIixaU=; b=EWXW9MLiKhCeEyOVbwyVMJ7tC
	Ox+LzTyEklf0qW2KbY8HeU5BlQHIk3CB2D/O7bu2C6dWIRBwORGZuy3YhrAakontbnE2WA+xfmPuW
	3vqgFeVrQ/9JswneWJX0q4dCVwu5KM2gBIQCY1IIWI3IKpng4GMwc+vXk0LD9lFpIUx7iu/s6LUvm
	J+v2yoLtVpUNVmi0yxa8MOtj0HQ8T6wTYizlCA2ZeJXTryQOQv5AWcnySSjcvGmVwJg6qafxv1umK
	8N67eCYsr3pcbKUGiBxahGxOKGvQ4Ug3m740NcWzXRaP+86t+9BJb19/ZCBhsc56lWH2kLFY4yten
	1yldHRY5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLkTD-00FWYu-7F; Mon, 15 Mar 2021 10:29:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLkT1-00FWXs-S8
 for linux-phy@lists.infradead.org; Mon, 15 Mar 2021 10:29:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8BF2E60295;
 Mon, 15 Mar 2021 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615804134;
 bh=pvwb+CzCGTmMpJux/9s71StX/nie/Ecx1fzG7IxGapo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t4nBsGeQhrUq7txTRrskUdVSz8Kl/ko6jn5DlUNlpnC35QOh67cCtmHvvlkdhfv1m
 9PFJwZo5PssHW+jW1BjI7Em1Deq03/pIdDjS6kAAna4qnMYa9qwWXB014fMzEsrAho
 pFr9E8laQFYbuT9DpVv1mYQRgYoXDRcLLQDNSPxd4KYRIZLe4V9C5iRDAWg2quFWAB
 65ZJWlMH+WnCt3XXhEVfdth2i6LhDdoRkZ1vyr0E5htexTAowzHduw74jmyWru3RnB
 B81gox2MEiYtXhVPxagvjvgzzJtmVgwI8b29tvllezeUXZidLntvGSi8qM7I2botqA
 IqIZA76X5WGhw==
Date: Mon, 15 Mar 2021 15:58:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>,
 Simon Arlott <simon@octiron.net>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] phy: phy-brcm-usb: select SOC_BRCMSTB on brcmstb only
Message-ID: <YE824oA2saihMSSr@vkoul-mobl>
References: <20210305152406.2588-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305152406.2588-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_102900_535915_E4D87C92 
X-CRM114-Status: UNSURE (   5.05  )
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

T24gMDUtMDMtMjEsIDE2OjI0LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IHBoeS1icmNtLXVzYiBoYXMgc29tZSBj
b25kaXRpb25hbCBpbml0IGNvZGUgcmVxdWlyZWQgb24gc2VsZWN0ZWQgYnJjbXN0Ygo+IGRldmlj
ZXMuIEV4ZWN1dGlvbiBvZiB0aGF0IGNvZGUgZGVwZW5kcyBvbiBmYW1pbHkgLyBwcm9kdWN0IGRl
dGVjdGVkIGJ5Cj4gYnJjbXN0YiBzb2MgY29kZS4KPiAKPiBGb3IgQVJDSF9CQ000OTA4IGJyY21z
dGIgc29jIGNvZGUgYWx3YXlzIHJldHVybiAwIHZhbHVlcyBhcyBpZHMuIERvbid0Cj4gYm90aGVy
IHNlbGVjdGluZyAmIGNvbXBpbGluZyB0aGF0IHJlZHVuZGFudCBkcml2ZXIuCgpBcHBsaWVkLCB0
aGFua3MKCi0tIAp+Vmlub2QKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
