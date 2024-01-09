Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2529C46CD2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 11:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHxzmWaNNmxWW9Tx1Smi9SwZaN+xCSNJ+I9B4OwiTIQ=; b=fTyKH8QTD0m6HD
	FSvLEZbeQtrmlm3Q8BFfKvKRKrm7MZnB0PA8sgE5xXuJJPbFSFMjAAZn2E9002Gs+WANelR4e5bhl
	f7eGF9BtBzNOYuOXxGOr/VhyCzZ7KjdiL+nBRBgXruvW5faofMNPX+Jao2allquRtxapkivzC1EMk
	A718sElCe2+/bLdtFseoXE/aKHA8eZezmv8phGGlxzboviEVRsKUTlDZy/71GFeGBfjEQ5HO02Ftr
	Nz6WkHavvlSuDgQW00AF95cRP0z4TkltDzFKR0KBoBwen90V6z3dElmlrFHyyUySgJvKI83VuiL0s
	EhHmowEiC4PZKWvuj1WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNAXa-0082VX-2K;
	Tue, 09 Jan 2024 11:45:06 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNAXX-0082Sh-2P
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 11:45:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C8A3DCE117F;
	Tue,  9 Jan 2024 11:45:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC48CC433C7;
	Tue,  9 Jan 2024 11:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1704800699;
	bh=ZHek6cnUD/06G1ff9DHO+IrMfmDIWNNJ3OElbgXKZgk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QA0hOQoZdvG+WySnNIvWkgT88AHPzZr7yQU3E1sn49Tk+Qsvq3qJN4RpQYU+no2rN
	 ZlsayES1RLtYXz0X2zQaiphsEuOhr0UAVwx2iRNrfNHwvlJ/8aprhL2YQygSNMMUTb
	 0ejbhQHt85PRQsgNTm64r5KQ9qrJY9pGGGFVGWL0=
Date: Tue, 9 Jan 2024 12:44:56 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh@kernel.org>, Jinjie Ruan <ruanjinjie@huawei.com>,
	Alan Stern <stern@rowland.harvard.edu>, Roy Luo <royluo@google.com>,
	Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>,
	Flavio Suligoi <f.suligoi@asem.it>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v4 4/4] usb: core: add phy notify connect and disconnect
Message-ID: <2024010925-splendid-thorn-3221@gregkh>
References: <20231213031203.4911-1-stanley_chang@realtek.com>
 <20231213031203.4911-4-stanley_chang@realtek.com>
 <bdb2c10798124e228b8562576d73b881@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bdb2c10798124e228b8562576d73b881@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_034503_969066_8556D0D7 
X-CRM114-Status: GOOD (  10.19  )
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

T24gVHVlLCBKYW4gMDksIDIwMjQgYXQgMDI6MDg6NTdBTSArMDAwMCwgU3RhbmxleSBDaGFuZ1vm
mIzogrLlvrddIHdyb3RlOgo+IEhpIEdyZWcsCj4gCj4gUGxlYXNlIGhlbHAgcmV2aWV3IHRoZXNl
IHNlcmllcyBvZiBwYXRjaGVzLgoKSSB3YXMgaG9waW5nIHRoYXQgc29tZW9uZSBlbHNlIHdvdWxk
IHJldmlldyB0aGVzZSwgd2hpY2ggZGlkbid0IHNlZW0gdG8KaGFwcGVuIGF0IGFsbCwgd2hpY2gg
aXMgb2RkIGZvciBzb21ldGhpbmcgdGhhdCBJIHRob3VnaHQgbWFueSBvdGhlcnMKd2FudGVkIHRv
IHNlZSBtZXJnZWQuCgpJdCB3aWxsIGhhdmUgdG8gd2FpdCB1bnRpbCBhZnRlciA2LjgtcmMxIGlz
IG91dC4gIFRvIGFsc28gaGVscCB0aGlzIG91dCwKcGxlYXNlIGhlbHAgcmV2aWV3IG90aGVyIGNo
YW5nZXMgdGhhdCBhcmUgc3VibWl0dGVkIHRvIHRoZSBsaXN0cyBhcyB0aGF0CndpbGwgcmVkdWNl
IHRoZSBtYWludGFpbmVyIGxvYWQgaGVyZS4KCkFuZCBhZ2FpbiwgaWYgYW55b25lIGVsc2UgY2Fy
ZXMgdG8gc2VlIHRoZXNlIG1lcmdlZCwgcGxlYXNlIGhlbHAgcmV2aWV3CnRoZW0sIHRoZSBDYzog
bGlzdCBoZXJlIGlzIHZlcnkgbG9uZy4uLgoKdGhhbmtzLAoKZ3JlZyBrLWgKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
