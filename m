Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4637EB64DC
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 17:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6j7/YqRXfjOn8Sdus63vmtEerbc7ElnA+E2MP2/q8dI=; b=wvGs1iKuzKXJSx
	J0Ri3P0WJ+bVF1c4AKpgU7qlQB7a0TSbjIzm2e9iTKwNv9twTVfMLuBqnCA9VLC1R/BLIM4X38fLc
	CExiwv3DdQklAzrXAxEejJ5K0mK1RepuP7bdihgpb/jRArCQuGKJH81pmI1fjexbAfyRL6irvtpvR
	Q6REslzwVR5UD+oGZc8/e0s97qLb9Ltj4rOF/eoe2qn/lCTX3iw3LnBw0iNy42ozwxWi2jRaQuiU+
	5V9s4W/iIQfAAi8kIeDuIOAigp+Uj/A6+UNkRU8jtMfEzGxLEfux9tQ0T4VOKMoA953IhzgncVNvn
	sTj9bFpLLT+n9KI/zUYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1zU-00FI7o-0b;
	Wed, 21 Jun 2023 17:51:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1z5-00FHiy-1c
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 17:51:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C97CE61658;
	Wed, 21 Jun 2023 17:51:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFA13C433C8;
	Wed, 21 Jun 2023 17:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687369869;
	bh=z8h5oRBpUjD/vlwParcejf7w/puARjba0CWI1Xgexlo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WwMLAntWMTm/M6O4PJW+igS7jgGz/1ryrqDjyXu5qAXqnJPBX1FQSMK72Rcldeh76
	 Q02OMMFAk6mf6wBL0XXJ9KR64/sG79ftm+ChTD2vFp3ZtJ+ak021wDR4h45Vpip+h7
	 Ct3PCAflYVr+/CdW8MivG0ScPVd/mEw0oE9d/XPianpQB6s/z8GYk3k+IAMnPJmeip
	 ZAtHEJ1r47JAxpHhoNKw208JnOLTC6y0daD7NDGFhdG1OmgvDQ81E3ZBR/CTG19XlQ
	 Fvbq+GCFKFhxkD9XexNj2wQyP0hUdKHKhzyrDExpm/AYbQ7YGk/tO6GQTZeLCv+gEV
	 ShR9bRZy/C5UQ==
Date: Wed, 21 Jun 2023 23:21:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcin Wierzbicki <mawierzb@cisco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	xe-linux-external@cisco.com, danielwa@cisco.com, olicht@cisco.com,
	Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Subject: Re: [PATCH v3] phy: cadence: Sierra: Add single link SGMII register
 configuration
Message-ID: <ZJM4iUrlMIVwlfK+@matsya>
References: <20230522172415.1668975-1-mawierzb@cisco.com>
 <ZJM1uQbXM7rciJ3l@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZJM1uQbXM7rciJ3l@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_105111_597581_64107EA0 
X-CRM114-Status: UNSURE (   8.61  )
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

T24gMjEtMDYtMjMsIDIzOjA5LCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDIyLTA1LTIzLCAxNzoy
NCwgTWFyY2luIFdpZXJ6Ymlja2kgd3JvdGU6Cj4gPiBBZGQgc2luZ2xlIGxpbmsgU0dNSUkgcmVn
aXN0ZXIgY29uZmlndXJhdGlvbiBmb3Igbm8gU1NDIGZvcgo+ID4gY2RucyxzaWVycmEtcGh5LXQw
IGNvbXBhdGliaWxpdHkgc3RyaW5nLgo+ID4gVGhlIGNvbmZpZ3VyYXRpb24gaXMgYmFzZWQgb24g
U2llcnJhIFByb2dyYW1tZXIncyBHdWlkZSBhbmQKPiA+IHZhbGlkYXRlZCBpbiBDaXNjbyBDcmF5
QVIgU29DLgo+IAo+IEFwcGxpZWQsIHRoYW5rcwoKVGhpcyBicmVha3MgYnVpbGQgZm9yIG1lLCBz
byBkcm9wcGVkLiBUaGlzIGlzIHdpdGggYXJtNjQgYWxsbW9kY29uZmlnCmFuZCBnY2MtYWFyY2g0
IHRvb2xjaGFpbgoKZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS1zaWVycmEuYzoyNTU2
OjMyOiBlcnJvcjogaW5pdGlhbGl6ZWQgZmllbGQgb3ZlcndyaXR0ZW4gWy1XZXJyb3I9b3ZlcnJp
ZGUtaW5pdF0KIDI1NTYgfCAgICAgICAgICAgICAgICAgW1RZUEVfU0dNSUldID0gewogICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCmRyaXZlcnMvcGh5L2NhZGVuY2UvcGh5
LWNhZGVuY2Utc2llcnJhLmM6MjU1NjozMjogbm90ZTogKG5lYXIgaW5pdGlhbGl6YXRpb24gZm9y
IOKAmGNkbnNfbWFwX3NpZXJyYS5wbWFfY21uX3ZhbHNbM13igJkpCmRyaXZlcnMvcGh5L2NhZGVu
Y2UvcGh5LWNhZGVuY2Utc2llcnJhLmM6MjU5OTozMjogZXJyb3I6IGluaXRpYWxpemVkIGZpZWxk
IG92ZXJ3cml0dGVuIFstV2Vycm9yPW92ZXJyaWRlLWluaXRdCiAyNTk5IHwgICAgICAgICAgICAg
ICAgIFtUWVBFX1NHTUlJXSA9IHsKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXgpkcml2ZXJzL3BoeS9jYWRlbmNlL3BoeS1jYWRlbmNlLXNpZXJyYS5jOjI1OTk6MzI6IG5v
dGU6IChuZWFyIGluaXRpYWxpemF0aW9uIGZvciDigJhjZG5zX21hcF9zaWVycmEucG1hX2xuX3Zh
bHNbM13igJkpCmNjMTogYWxsIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCgotLSAK
flZpbm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
