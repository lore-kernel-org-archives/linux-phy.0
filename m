Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FB75C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 04:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1X6cSqZrT4hZNlXcTnqmgN+aQYweCgKYojv1tEb9yJQ=; b=xIdmruu6Gemzd4
	M6fT9VS46kuo6zffZ1JKG7hbKmTpk2BUgtryjrCW5FgfQ3w4NQZ36ic+lGDCM7F62tDaWn6y38g+p
	Q0w9hBbNdiQuQINdJVaxXan9YecjCb3CqeGLqiH/ivFIkLKGTTfYMxkFtiLRQugkHSD5yirr/H59p
	CkKuNJGkPL7IQqolDA5Vj+9iC5rPH95EGPJwwPj4e2c9r17EcyC5zcoFfZclACcrsf5R5iJbNamgY
	kXKK5HyyM4cO3scAs4CoRkgIEKWBxNvNnY4V085sXKR98wl5S47HU2lmCYIG14FMqIVZlr+Mxoq3D
	rkvU+hf6SVsqrU8qZYXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpNnw-000oGY-PA; Tue, 23 Nov 2021 04:53:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpNnv-000oGA-2j
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 04:53:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C715A6023E;
 Tue, 23 Nov 2021 04:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637643194;
 bh=+a1Vb/tWBDONDpB1b5iyeETknv9Hb5W8f50YlA1hl6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kqdZ5UZ8ZSgXuDcoTgVIhxlyvC9YsLVW0cnIu7bjQTj6eMzaRIGBtGrZVKFt5OwO5
 WCKrFtxr7zNROaCACSiBAuqJ88xcpppF8UOmeW6FIZ3En1Uj9yZ+UPJd4TTVQh0kUo
 aXwjCHwU7X8TUFYn/1N6r/9EV/R9h4M6HxSv6hB/8nLUOWc5vhSfRfQuKzvqp3YZqi
 lSPe0JBFpTkUs5JacAjimWJtbH3KyFAMChQfc3j6g7Rz//46dtx0eZ3bGCmFHZh4xp
 ZHc1m3qX3sVk5Y5NxbBObaeypUhVo6Dxs2HyE+EIYUU1GKwaCIX3j7sYsdPyXXAtsb
 wDzecZU8/FQ7w==
Date: Tue, 23 Nov 2021 10:23:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH RESEND] phy: bcm-ns-usb2: support updated DT binding with
 PHY reg space
Message-ID: <YZxztfprgicGUYr1@matsya>
References: <20211026093716.5567-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211026093716.5567-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_205315_160337_3438E945 
X-CRM114-Status: UNSURE (   5.15  )
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

T24gMjYtMTAtMjEsIDExOjM3LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IFVwZGF0ZWQgRFQgYmluZGluZyBtYXBz
IGp1c3QgYSBQSFkncyByZWdpc3RlciBzcGFjZSBpbnN0ZWFkIG9mIHRoZSB3aG9sZQo+IERNVSBi
bG9jay4gQWNjZXNzaW5nIGEgY29tbW9uIENSVSByZWcgaXMgaGFuZGxlZCB1c2luZyBzeXNjb24g
Jgo+IHJlZ21hcC4KPiAKPiBUaGUgb2xkIGJpbmRpbmcgaGFzIGJlZW4gZGVwcmVjYXRlZCBhbmQg
cmVtYWlucyBzdXBwb3J0ZWQgYXMgYSBmYWxsYmFjawo+IG1ldGhvZC4KCkFwcGxpZWQsIHRoYW5r
cwoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
