Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C75C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 25 Nov 2021 05:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tLDA4eTydvRY+9yXRPLHY87ZL9tCtiMJngZ77gzQ9A=; b=SCB1jOsrhMg91r
	hJpEjVbuACbvLAXChg3D2Oa1gf+q4woFv4nU64gEjfZ+b4Gx+EUEYsbkns+bl8RWgSHSkpUQbNjNM
	ESeVPxtn734Lx3uXv5IaxbVdI6aHjdI6GXT2Wu2K5sDM7rPC4inG3VM0rarot3l6rqzP9gtvNLemR
	GmOg9F/E/OyM3WAe0hLSJf21j9LzHxtHm/SIiJyr+nVgPpDZeitSfC/3J3qhk0zUI7G7SjQi6s8BH
	k6ix5s1gbmakMBWq8IEiaKVsXjz50E1mCBD/DtFaSgvcIMUy1haYN0BRoPVreo72ZE0cn+6hcSPLQ
	aCqbkOjZV5btmhBS8O4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq76O-006OBn-AS; Thu, 25 Nov 2021 05:15:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq76L-006OBN-VD
 for linux-phy@lists.infradead.org; Thu, 25 Nov 2021 05:15:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 72FAB610A7;
 Thu, 25 Nov 2021 05:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637817317;
 bh=8WnTTf7wIGY+LiUzXXymSSvKok8AiEypwUCaX5IKuKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HyRsCiO+K8TJDWJIbnFeJnsIU2pbvYfX1sfIsShsHpMtT4ZEQyBTqXF1vSG5kuaQ+
 43d/sZ07FWzfcBaP61xqQ1+vzLIR5B9qLE9bAV1MJPcg2YVQ4qcWd99TeOGqKeDSnh
 qrS0CaZE9QsgzuvkK+sXrH9wCd1UJ7F+VfCfOqJwPT1Vm2MD0Bo4cZcEjiZkCv8tJj
 5PKLZcbUUKd/Vba+1hRNdTaaOnYMgowmX84dJjPDfPXUdPR9TLxZ7OFt37MPOlXMdW
 Bcv0WRQcoeYFZh94a2+sJfCiN0e4KP5PtLtShQXgylOAJ8kMaLIBtV4yp5Vba7w/1B
 eqqx8y3WeHPlA==
Date: Thu, 25 Nov 2021 10:45:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] phy: bcm-ns-usb2: improve printing ref clk errors
Message-ID: <YZ8b4HxLL3EjjTd6@matsya>
References: <20211123094823.25445-1-zajec5@gmail.com>
 <20211123221521.25323-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123221521.25323-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_211518_048594_C51D04EE 
X-CRM114-Status: UNSURE (   4.66  )
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

T24gMjMtMTEtMjEsIDIzOjE1LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IEltcHJvdmUgbWVzc2FnZSAmIHVzZSBk
ZXZfZXJyX3Byb2JlKCkgaGVscGVyIHdoaWNoIHByaW50cyBhY3R1YWwgZXJyb3IKPiAoaGVscGZ1
bCBmb3IgZGVidWdnaW5nKSBhbmQgZGVhbHMgd2l0aCAtRVBST0JFX0RFRkVSLgoKQXBwbGllZCwg
dGhhbmtzCgotLSAKflZpbm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
