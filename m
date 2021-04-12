Return-Path: <SRS0=mHkV=JJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E36FC433ED
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 05:05:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B315161209
	for <linux-phy@archiver.kernel.org>; Mon, 12 Apr 2021 05:05:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B315161209
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kBAgeUMb2+e08tQ7H95OURo8e2p2Eo3t0AcV2lRzxps=; b=i+0F5gz3R2+6WuglbXVGTN8am
	y3sfJH2FneK/vRwq7Fq76r5dhEqE1SnxWRvZxVEeHl8ZO4cwAwBGFWX45R9cNLuCTd97M6WW2gqL3
	YehECgDSdoDakVgIndj0qvp/KcDZFw8FTUJzCJ3zvvJydi/tlCyEiuqtHt/KMwhbx4AMw2buFWgu1
	AkLx3yjV9y/L5F3H5crNipDKPp5hcVnD1tCjnS24DYCnaebjjYl5hdVBv7mjkw9753kShoGKuyBtk
	u6o47MFKMhR28WLFVnSu15wKBypDTclKna8HdjduDyWicQnttbj4FYWKb/y8xy76iqWiIrZz4VUgx
	7IbUG/OOg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVolb-005iDR-Or; Mon, 12 Apr 2021 05:05:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVolZ-005iCy-4G
 for linux-phy@desiato.infradead.org; Mon, 12 Apr 2021 05:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=4h69nikMAhghy52gPEhLa6uftfFEqDidDpJBra5/QyU=; b=kRM8Ci1mDOHMTyg4Gm5Afr/t4/
 n8JoMe2GXNl8HjbJ216WJGG2+ZcmTVsfoentjR4/EzYPKHJPONpJBIU0pROK+9Aw4zulrRITXx+W9
 BIlN9F4BuntoLoPVG/MJDQHZ5Bxur4yPbu/APlgnqocPeSHHVceVhxHGnnZJmsREB9StTuy2Kc1rQ
 ymNW9F+KFgL3LAz7feSoDn3NGS9pB3CFJBNTg9MdmPe1SIr5JlJfW10ToNVbRqM1EtkSe1WJtKIAA
 7Hjd2d+bn3yUyRnp5Uy6r4I2N7+thHEPHjq26cxTDTijXNGoNql6worvzLbtxL2csbHJktybcd+5R
 y3mhEC+g==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVolW-005sap-Pg
 for linux-phy@lists.infradead.org; Mon, 12 Apr 2021 05:05:39 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 74E2E610C8;
 Mon, 12 Apr 2021 05:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618203938;
 bh=yeXv1VrFrrOxwBupLJbnw2n2xCQ5E67r16qIw0dYYSk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u3pykSZJ5Ssw7LwCjs0/vZ8En/M3f8VQiU94Ll1EgAJuG5SWYoc6eXG+E4v+yNC+F
 YgcEBg2U8qVllVAAWtNgMa9/ZJe+uiCFoLvr3Mb6EYxEBR+ALrNU0k4TBZ4XjZ5AiK
 X88gNl4T5UZeRlECUSClEzIa9MPECviXjRCfcdeYjoi67FP8ENW95kXdHpfMNUzNjh
 cuiUUMezLB5XKsH/MfzMmN0aH3kk4/U/ReX0mTfYEJbwsp3wCTkUrwUZJlRHR40CxR
 5ovBHDVccc3MtdJoIfvd3t7OPPnHZJxWjDG2mtq5uIUeDJI2Of/GOyTqKMnhHoM2Kw
 /ZUzLI/CNokxw==
Date: Mon, 12 Apr 2021 10:35:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shixin Liu <liushixin2@huawei.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] phy: ti: j721e-wiz: Add missing include linux/slab.h
Message-ID: <YHPVHkayrZFAsq+X@vkoul-mobl.Dlink>
References: <20210408012829.432938-1-liushixin2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210408012829.432938-1-liushixin2@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_220538_874027_5F3F2978 
X-CRM114-Status: UNSURE (   5.45  )
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

T24gMDgtMDQtMjEsIDA5OjI4LCBTaGl4aW4gTGl1IHdyb3RlOgo+IFdoZW4gY29tcGlsaW5nIHdp
dGggQ09ORklHX1BIWV9KNzIxRV9XSVosIEh1bGsgUm9ib3QgcmVwb3J0ZWQ6Cj4gCj4gZHJpdmVy
cy9waHkvdGkvcGh5LWo3MjFlLXdpei5jOiBJbiBmdW5jdGlvbiDigJh3aXpfbXV4X2Nsa19yZWdp
c3RlcuKAmToKPiBkcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmM6NjU5OjE3OiBlcnJvcjog
aW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYa3phbGxvY+KAmTsgZGlkIHlvdSBt
ZWFuIOKAmHZ6YWxsb2PigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9u
XQo+ICAgNjU5IHwgIHBhcmVudF9uYW1lcyA9IGt6YWxsb2MoKHNpemVvZihjaGFyICopICogbnVt
X3BhcmVudHMpLCBHRlBfS0VSTkVMKTsKPiAgICAgICB8ICAgICAgICAgICAgICAgICBefn5+fn5+
Cj4gICAgICAgfCAgICAgICAgICAgICAgICAgdnphbGxvYwo+IGRyaXZlcnMvcGh5L3RpL3BoeS1q
NzIxZS13aXouYzo2NTk6MTU6IHdhcm5pbmc6IGFzc2lnbm1lbnQgdG8g4oCYY29uc3QgY2hhciAq
KuKAmSBmcm9tIOKAmGludOKAmSBtYWtlcyBwb2ludGVyIGZyb20gaW50ZWdlciB3aXRob3V0IGEg
Y2FzdCBbLVdpbnQtY29udmVyc2lvbl0KPiAgIDY1OSB8ICBwYXJlbnRfbmFtZXMgPSBremFsbG9j
KChzaXplb2YoY2hhciAqKSAqIG51bV9wYXJlbnRzKSwgR0ZQX0tFUk5FTCk7Cj4gICAgICAgfCAg
ICAgICAgICAgICAgIF4KPiBkcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmM6Njk3OjI6IGVy
cm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhrZnJlZeKAmTsgZGlkIHlv
dSBtZWFuIOKAmHZmcmVl4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlv
bl0KPiAgIDY5NyB8ICBrZnJlZShwYXJlbnRfbmFtZXMpOwo+ICAgICAgIHwgIF5+fn5+Cj4gICAg
ICAgfCAgdmZyZQoKQXBwbGllZCwgdGhhbmtzCgotLSAKflZpbm9kCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
