Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CEA1C79FB9
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 07:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVAI2qzA0Kz4H9wLVTYCM6gOCvok+Q4TcGL6MmAep6c=; b=TZX+5U0djadWDj
	J1TQz1MdqzqVCZhMT2pMTYaGtqUUmVOEBHrZlIY7oEeaemizt0kQINHyAkYZJHBT4MmPTBQk4fLWJ
	je5MfmpKn1F0BwHfhicaTtOuF8WtXIdPoSc3H1hOFKGcaEUrQhPeLoWXfEwkTUTpAnN8Qr0bmWi38
	B5qPw5Zkhrl5nUnEHytrFbygL6B59WTUe3X/H1YbTtphmfAEtoS92S0gnOC5iNfQ24wSUsE+tDiGC
	ebtgsuMScBPBB+qmR/2zKoxr6IcigPFvpiQ/+ELw6LfDgJyiRFflNCqPdnbJ64F/apera6GHm6GSU
	hDgSi5+1asjmVFoIa/Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZWn-0000000DfTc-3Ri6;
	Thu, 10 Sep 2026 07:49:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ZWm-0000000DfTV-3MHZ
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 07:49:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 335F5600CB;
	Thu, 10 Sep 2026 07:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7C2B1F00898;
	Thu, 10 Sep 2026 07:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789026539;
	bh=MyMUVs+6MvVdb4cJP5EesoKBdbo55iy7aTWW/UgAw90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NrZrurBwpPge5JaquD5kfpba6PnYYwsS86zhBnu5YkyDUETvjQNVGMKXF3RXjeSM2
	 V3FaX+HbrcIU0zXvsrR+a899kTVHXPLZc2i3xoMgbWdAi86ROlkx0DWcnfkJgs054j
	 woQJWfBeVVQkV5DV7HpG6T+nvAnaaBxaln5oIqWohRneyBOLfN/1ux1878PtT8ihvE
	 axbaOpqnbaoacIZIxuMi7sGR9d+oLwJCZ2OoxofpCEv7UdIMKtoUJNLuwle9O/clNy
	 g4KbeSF7/etsCVvntQ3opfMZLqosiFVzRcj34qsJFL14ScsmqLPScdjWAxVlmgnX6R
	 ociAiBjgKRYpA==
Date: Thu, 10 Sep 2026 09:48:51 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, Wenbin Yao <wenbin.yao@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp: Fix alignment in pcs-v8_50 register
 header
Message-ID: <posfu7z7ijluj3go5mgyrb7xsvyoepuslj434eiotvo6fvoyrq@wqel2ccgd7xd>
References: <20260910011500.659353-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260910011500.659353-1-shengchao.guo@oss.qualcomm.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMDk6MTU6MDBBTSArMDgwMCwgU2hhd24gR3VvIHdyb3Rl
Ogo+IEZpeCB1cCB0aGUgd2hpdGVzcGFjZSBzbyBhbGwgb2Zmc2V0cyBhbGlnbi4gTm8gZnVuY3Rp
b25hbCBjaGFuZ2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2hhd24gR3VvIDxzaGVuZ2NoYW8uZ3Vv
QG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxt
YW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
