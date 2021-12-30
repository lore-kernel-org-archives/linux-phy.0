Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11146C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 30 Dec 2021 19:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTWnWEHCVQeVgBB1LvaUUdUVk2fMEokTDkvNxR6dYhs=; b=dCUWEtLCUmo4QJ
	RQmf11v9/ZZ2RVj39NJ3QawF6KphQ4H3tX5mb5fxy267jA1w/1cR51XCOCDM6B3i1rNuMsmSaYeJ1
	B+FvGTMtKBxBn1B8eFO3Bn4ZmfWvpVDgyqOesM4Cz3m4ha3ct4EfIxmsrefKUNRw86Ahp3vgjZ1Fq
	yxpkoOtQC/Hjjzu0ulv77edTeRNy9dTDqsC1lawmmgzpCSINjYvtrPLUeEK41LalSGTKRcZSWHCzJ
	z3gHhS1oehqfvNaXHc0v0mF4Jrw4x3hfUAKNF1CDb5rmaIcAynyVuq4f2vxw92Fu5suCJPtwxzSeE
	Yq9Jd7g3nOLhJ0pDeMrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n31NU-00590s-OY; Thu, 30 Dec 2021 19:46:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n318k-00526W-9K
 for linux-phy@lists.infradead.org; Thu, 30 Dec 2021 19:31:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3115BB81D11;
 Thu, 30 Dec 2021 19:31:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D588C36AE7;
 Thu, 30 Dec 2021 19:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640892661;
 bh=dtTrthTvBSPwJgL6XaRrz30cUIyoex8Wjl2eI6c057Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E7C0Avrj9leUPQScUDdjsnBXWjA7yl23WpJRS0q0LQv54PrTaYlRfTOqA9F0QYffe
 tK7FQgGhWaphC+1KHoYSi37ADGBXz6jMYSo7HouyzLwMxlz6v2jqi31Gjt8hTJ5OJj
 LBGcrfo5mm2KdN2YkQJ56Vp/Oqe36XwK8rnpVZaR/oRdMLN9n/gVKi/xmY+EEISSYD
 eB2blLW8bsA/V9nEgIrUsDjzVWMiUP6pnpa+R7zVkn5Rd2GBQFLn6ThmNOej5EGfL0
 MEQN3qWlkQdr+I3yOoKjDX9XrP8sD7lSRJqxiUyjcQsW0dRHrfgElGJHAcfP9snFzV
 xretT3C/jBnxA==
Date: Thu, 30 Dec 2021 20:30:56 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Pali =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, Kishon
 Vijay Abraham I <kishon@ti.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20211230203056.28bf36fc@thinkpad>
In-Reply-To: <20211227125616.ivwqfdtcshtgatpr@pali>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-3-kabel@kernel.org> <YcRuVCdXztTTrJs7@matsya>
 <20211223132102.lgne4vsdjeqqudwc@pali> <YcmWFtjBke3LDY79@matsya>
 <20211227135010.594ad684@thinkpad>
 <20211227125616.ivwqfdtcshtgatpr@pali>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211230_113106_528480_E49AA658 
X-CRM114-Status: UNSURE (   8.58  )
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

T24gTW9uLCAyNyBEZWMgMjAyMSAxMzo1NjoxNiArMDEwMApQYWxpIFJvaMOhciA8cGFsaUBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gUGVyZmVjdCEgQW55d2F5LCBJIHRoaW5rIHRoYXQgdGhlcmUgaXMg
YSB0eXBvIGluIG5hbWUuIEl0IGlzIFJFRmVyZW5jZQo+IEZSRVF1ZW5jeSBTRUxlY3QsIG5vdCBm
cmVGdWVuY3kuCgpUaGF0IG1heSBiZSwgYnV0IHRoZSBGaWVsZCBOYW1lIGluIHRoZSBzcGVjaWZp
Y2F0aW9uIGlzIFJFRl9GUkVGX1NFTC4KTGV0cyBrZWVwIGl0IHRoYXQgd2F5IHNvIHRoYXQgcGVv
cGxlIG1heSBmaW5kIGl0IGJ5IHRoaXMgbmFtZSBpbiB0aGUKc3BlY2lmaWNhdGlvbi4KCk1hcmVr
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
