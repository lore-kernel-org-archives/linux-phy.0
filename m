Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3366DC4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 07:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wi5h7jos9M0ScN4zJc2p/B0W12M6o1WXr/YqYH3Cb3U=; b=DGQPAAxdiArkjh
	uBouYMtVc9NqpYu8tnX7KpoWG0RcCjbo8n2EpRY7b6rNXk0y10JluTiT1/9SbyIlKkfi0a4hCt9oT
	dBAcGxxVj0J6C3uSVImNFTISPGFdXGHwTIqpeXdmIKBg8zM0sCeB7R4VVoatFf5TuOx4XPVlooaw+
	OGcxscUUi5Gedumbaz9bw/fbv3ymuhfXgFh05B9CTMua5sC+FwtZraW5ThoU3EnjPyqCVgTZN6LPH
	PnR56j71M/gkAlMLBdPc4TDwF1CljDv0MkVXD2b/A5DS4qSSG790c6C+DphKycPzg+gUxp+6GtfVa
	29G5+oHXtS7S4eMvNkSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB8XM-00C3b5-2o;
	Thu, 07 Dec 2023 07:11:08 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rB8XJ-00C3aj-0g
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 07:11:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 60496B8266B;
	Thu,  7 Dec 2023 07:11:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2952EC433C7;
	Thu,  7 Dec 2023 07:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1701933062;
	bh=71XowMO1zokcNUVSjk7xgSIelzcj/5YLVU2L9lqlOek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HIE61cPk1suFhoEEtmSEKqDL3oRt5v1fozcF1+3dkUah52fb1aTBg3lMYugNifZu6
	 DSE+OKcVM3mvSSVLZlNV1kg/1SXiemnrQQXMBE/Bm9xQ8CRTJG4I2mR57zgk4rrIuq
	 mItlLbjuyor+w/iZ8mX/+DVlYGma7Nmi1cg8p178=
Date: Thu, 7 Dec 2023 08:10:58 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh@kernel.org>, Jinjie Ruan <ruanjinjie@huawei.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Yang Yingliang <yangyingliang@huawei.com>,
	Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>,
	Roy Luo <royluo@google.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v3 4/4] usb: core: add phy notify connect and disconnect
Message-ID: <2023120724-herring-filled-c32e@gregkh>
References: <20231110054738.23515-1-stanley_chang@realtek.com>
 <20231110054738.23515-4-stanley_chang@realtek.com>
 <4736a6933f3546c48f24a635c15a5e20@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4736a6933f3546c48f24a635c15a5e20@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_231105_410472_FDE25BD7 
X-CRM114-Status: UNSURE (   7.29  )
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

T24gVGh1LCBEZWMgMDcsIDIwMjMgYXQgMDQ6NTA6MTBBTSArMDAwMCwgU3RhbmxleSBDaGFuZ1vm
mIzogrLlvrddIHdyb3RlOgo+IEhpIEdyZWcsCj4gCj4gUGxlYXNlIGhlbHAgcmV2aWV3IHRoaXMg
cGF0Y2guCgpUaGlzIHNlcmllcyBpcyBnb25lIGZyb20gbXkgdHJlZSBhcyBvdGhlcnMgcmV2aWV3
ZWQgaXQgYW5kIGFza2VkIGZvcgpjaGFuZ2VzLiAgSWYgeW91IHRoaW5rIHRob3NlIGNoYW5nZXMg
YXJlIG5vdCBuZWVkZWQsIGZlZWwgZnJlZSB0byByZXNlbmQKaXQgd2l0aCBhbiBleHBsYW5hdGlv
biBvZiB3aHkgdGhhdCBpcyBzby4KCnRoYW5rcywKCmdyZWcgay1oCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
