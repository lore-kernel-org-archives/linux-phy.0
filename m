Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27C7AC433DB
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 12:22:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5440061994
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 12:22:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5440061994
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MpBmmCl6X1s5J5KpOirowKX7dqHSXcUMolZRX3paSgA=; b=WFgNmBEWgqK4ohWoFyMAEAgEd
	jRzOceSwvX2jm/WKPdJKDJyssl+Znpjr4RHkFIoaebieYEpWaPBxBd6giTzOgna8oyw7vQEXrH8Ff
	aqd7XFQS6/wPbHAvLg2uzgsqMfbzVkS3ruQd8iE1GddVW5ZtXhHkFIaXSrkD/NE9r/uM564BthfxL
	PjEI3uns4amvrBSFZrU7aOM0rWZXBzGaW9p38uUUDflGuWeFV6hFu+8yboyZuVYMYC87omboSxHLV
	HKW4m34kpBD/+HbJ3Unc6uCROSq1dJcZHrEBlvxzHMBkNbi8wF9c1zB8SbC+j8YB85SJgxrmYmEQZ
	l+85Vgrtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRZs1-006YdB-NR; Wed, 31 Mar 2021 12:22:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRZry-006Yc9-7u
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 12:22:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33E7961957;
 Wed, 31 Mar 2021 12:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617193362;
 bh=gJTho7AuGFFFAJl8wlStQngdixhxfmauQbNHuuaUbko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kr9wIPBeiO0uy8xcnynppg+1oc6KWEc1/d3Ie9CTFJH2iH9sdnb8eI7lZ2LuR4b+d
 WbH4Wo09d5xSnFNghdVzZBfkEsB0eHR3oA34vygvsDgCA1YpQp6YYoGC5wJ2rhE7uE
 SKBXOTSD69gowflZ7vtEK3KarMytuAg0ML95oK2BTThSKieJIPNnuBPdhvG7twU3BA
 8epbwpVni32vcdMrjRyMJOTqZMPbQC/ac7Pyrqvb4j+e7gEvwZOmU0gGQNy6782+T6
 7SBNCEPhkc8hGx6FITv34jGX6GdgAKLXlZ/FciEA62gFh63M3kYyRavqkuQvOAxONr
 LNkhiBvlH80xg==
Date: Wed, 31 Mar 2021 17:52:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb2-phy: convert to yaml
Message-ID: <YGRpjVaL4/vRjoKy@vkoul-mobl.Dlink>
References: <20210329165041.31574-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329165041.31574-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_132246_653478_87E30B0B 
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

T24gMjktMDMtMjEsIDE4OjUwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IDEuIENvbnZlcnQgZnJvbSB0eHQgdG8g
eWFtbAo+IDIuIERyb3AgIkRyaXZlciBmb3IiIGZyb20gdGhlIHRpdGxlCj4gMy4gRG9jdW1lbnQg
IiNwaHktY2VsbHMiCj4gNC4gRml4IGV4YW1wbGUgbm9kZSBuYW1lIChub3RpY2VkIGJ5IGR0X2Jp
bmRpbmdfY2hlY2spCj4gNS4gQWRkICNpbmNsdWRlIHRvIGV4YW1wbGUgKG5vdGljZWQgYnkgZHRf
YmluZGluZ19jaGVjaykKPiA2LiBTcGVjaWZ5IGxpY2Vuc2UKCkFwcGxpZWQsIHRoYW5rcwoKLS0g
Cn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
