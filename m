Return-Path: <SRS0=7zeO=IN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81BCC433DB
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:39:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A53564E21
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:39:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A53564E21
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3G8QZmocXDYTqWFlpWPPrb5sKLv65eNrhdRr1JL52BY=; b=ahhSq9JvJ7iDNwFauLUayQHri
	hiqCBremFq+hCJEC11ELub70gDITF4GAc4N0KReBlqewmqqJP9ED1NARvp1cqcx6JLFgvQi3JMyPG
	OmWvrtbC6qRHRISp1QcEw7O0czf36E7KKfO5/N7xh9wogpjN74WsawJEPwyW2D714GhN4YhW+HL3k
	gb46hyfVBaSl7Ke4qQ+wW3rq9zkXDhZvgOxBJH3/4Nt8nCP//dMaVpoor6UMWXkS51pRcHvns2j9L
	ExLKbRQsRQwmXmFCmZdDlpaIuB4sCcQ8mCJOsF2k9nhTF99ZzYDMbqoT47JJ/efsGcngqCTcN8/0o
	2Xw0Ej3qA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLkdM-00FXZQ-MQ; Mon, 15 Mar 2021 10:39:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLkcv-00FXWM-JW; Mon, 15 Mar 2021 10:39:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2659364E0F;
 Mon, 15 Mar 2021 10:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615804748;
 bh=ixuJ/hbKl/yBULFOrVMQ/hAcO3gPFXQKGj4IfM16mAo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S1HKR+90z6xzOYntMsFD8umNZlPh5wTPnj0z3UNbVn4sMJ+3RYFjGXLOSWG6v857r
 ECddgY3N8VuXciMIiES+3MhpwjXZjuGrIT0sWUsznf8JC2K2ZVRytxKI9sW5TnFfkB
 C6ScB0qiuEF4KvNRaMjMt+0r3KrKP0vrdkZler9d6nMNOnkMt1gkIPUkJYAXAbDSvK
 gPJoPsGloGamQYgXBhrFq1xhA+vWAoO3/H/UV7x2uxGFoMQjbdb3Cz16nREYPJbnku
 D94he3rUKK2yF11sIoFQHF1dNqmwznP99f6geEUgzG5MvNmYoZfrUG9nJVzEx1muDP
 PxZqoLY97shLA==
Date: Mon, 15 Mar 2021 16:09:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Al Cooper <alcooperx@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: phy: brcm, brcmstb-usb-phy: add power-domains
Message-ID: <YE85SPdaEbdNNOk9@vkoul-mobl>
References: <20210309182616.25783-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210309182616.25783-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_103910_101242_A0CA5C6D 
X-CRM114-Status: UNSURE (   4.19  )
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

T24gMDktMDMtMjEsIDE5OjI2LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IE9uIEJDTTQ5MDggVVNCIFBIWSBpcyBt
YW5hZ2VkIHVzaW5nIHBvd2VyIGNvbnRyb2xsZXIgc28gaXQgbmVlZHMKPiBkZXNjcmliaW5nIHBy
b3Blcmx5IHVzaW5nIHRoZSBwb3dlci1kb21haW5zLgoKQXBwbGllZCwgdGhhbmtzCgotLSAKflZp
bm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
