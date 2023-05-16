Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60C64C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fEZq7LXF1RnvkS1lcFSzuJLctwyXk/aE5/03UYy8zGg=; b=LIiFLxq9hVCf+T
	3nbLjX48mJjn1It7tEICY/e4042RaNIZItPEpmjNa7j4qB//Cbtda8cwH0wUKczVHq0N2NBTNYpXi
	roOSTc7+2t5UGGGSxDK7Enj4tzL8jyNh+ACUiSCKb2HBIt4Imn7Y9WfbUdPVW9piN/gwzmzJ+fpkH
	BCQuMI8dLUXiEVhTPPRK0WboemJXqFDdyIeEqrp96IkAssjSFN5/kRP+cZnY8V/h623k/j3Bcf84D
	VoC8LQnxpL5jHYJA+8viSnpaNj96cNp4MzCqt6JWhyoTHFV/lvvs1tWLGTn1/8MHTB9yPrpuftwWh
	EfnDu3jtPKt+2LDuRGEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvVW-0063Vc-30;
	Tue, 16 May 2023 14:18:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvVT-0063UZ-22;
	Tue, 16 May 2023 14:18:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0886E63018;
	Tue, 16 May 2023 14:18:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7AB6C4339C;
	Tue, 16 May 2023 14:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684246706;
	bh=YXhBO9eG7UWbqzuiSK1fn6Kv4L06SYxCu/Poh/mJHwQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T5Z7Rp6T/k00U4NfiIA60xzvdndp67Bi9eF0AXmi1sA/kR32HdVQVykmsjg7jpBY3
	 hrl4quu7TpWXEaSdRD0/00cH3TVaDAnwl2GzwGDu/KBVuCWG4cHEfGl4PnPaqHFV23
	 LLvsveTXCqPOThx9ey11JL9f2wLczR0XpLfjr4NIsqGSxKDVbXUhbEyRLLeeqQbetu
	 jR3zKAFkY1IEEACvliEdA3dTw7DcVNYSPZ4BsYy80UReKX36g/7iAKu+ooov0hPAi8
	 HeuJcT7z/GMYo4dw+9UmllPbFYrEXcAXcQmm/Q7XXFNwa16RX/sKMXFVOM8q+BiSVI
	 cbMpIcnnQaU5w==
Date: Tue, 16 May 2023 19:48:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
	chunfeng.yun@mediatek.com, kishon@kernel.org,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: mediatek: rework the floating point comparisons
 to fixed point
Message-ID: <ZGOQroo9KB0IKeu1@matsya>
References: <20230502145005.2927101-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230502145005.2927101-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_071827_710187_B74FDB73 
X-CRM114-Status: UNSURE (   9.29  )
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

T24gMDItMDUtMjMsIDEwOjUwLCBUb20gUml4IHdyb3RlOgo+IGdjYyBvbiBhYXJjaDY0IHJlcG9y
dHMKPiBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmM6IEluIGZ1bmN0
aW9uIOKAmG10a19oZG1pX3BsbF9zZXRfcmF0ZeKAmToKPiBkcml2ZXJzL3BoeS9tZWRpYXRlay9w
aHktbXRrLWhkbWktbXQ4MTk1LmM6MjQwOjUyOiBlcnJvcjog4oCYLW1nZW5lcmFsLXJlZ3Mtb25s
eeKAmQo+ICAgaXMgaW5jb21wYXRpYmxlIHdpdGggdGhlIHVzZSBvZiBmbG9hdGluZy1wb2ludCB0
eXBlcwo+ICAgMjQwIHwgICAgICAgICBlbHNlIGlmICh0bWRzX2NsayA+PSA1NCAqIE1FR0EgJiYg
dG1kc19jbGsgPCAxNDguMzUgKiBNRUdBKQo+IAo+IEZsb2F0aW5nIHBvaW50IHNob3VsZCBub3Qg
YmUgdXNlZCwgc28gcmV3b3JrIHRoZSBmbG9hdGluZyBwb2ludCBjb21wYXJpc29ucwo+IHRvIGZp
eGVkIHBvaW50LgoKQXBwbGllZCwgdGhhbmtzCgotLSAKflZpbm9kCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
