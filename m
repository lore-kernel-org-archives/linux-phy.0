Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D93FC36010
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 12:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zk48yOkk+Ur7pB9mZKmdE7uq0IVmvj0ShPUkXyi5GiU=; b=241iTp2+BXSopd
	VCRsxBO+1/zHahv30B7SDSwbLw4Oo1DJIkt4yJWgRok7D//GS3YLDSYTmu5nvS082QispEBBEx+bU
	uu6aAisyYZbRu8iv9awy2C8XsGR347HRw+ghdNUUvKae9TDI/3wiybTag/PBBT8NS9A9y9sjv1s56
	862ix7nfnowHcQhpCWDwpKdrdS26ll6LY9Skndf1AHXz7l18uraanqxUZnnAKT0wjLxL8G5Bq/hNe
	XfVsUtIbCphpXz6dUPwfGkZD6zomVyHcqAtN1WFIadKYTxVdusPPhtjrLZcPTvp1+iNv2vYI95DFQ
	qh7Mtw04Ntd+H41ZY07A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzb3i-00000003LZW-3Szg;
	Tue, 01 Apr 2025 12:49:38 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzame-00000003G8g-1wHw
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 12:32:02 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4445E441A4;
	Tue,  1 Apr 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1743510714;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e8Pt8SAdt8WiGEQXf1RN9YG6UNRDRbEDoi032Y4NLh4=;
	b=PESru5/KuLmCSyA7z95d84dFOw+XqBOHg4HrRwYpqL4B78A4zKJ8+DRiPP16jtgW70GimD
	DOBiaWr8ksa4mJv7XAsKZLUoo7+VXQzYEQiJPI1pUb5yZMdIPUhu0FtT/vOY0cBKRL6PG4
	U1f6J6yLK4/JC3BNbqHFXePIgt6r2Wl55C1VKVholpJoNHHvDe5GM36dcA3j2Z2lu3X41l
	eqOYLOIccbUGGYTj0PrF6vwBhdY6E9anazrDWJttESNzU7BmQu0XxTlNGvO8kb0tdHW3WF
	UiVErrsX2RpO5tFzcK6yx0ZwL+Fr5dNu5eNog0lyzOIX8F/CLBhG64GlBqvW7w==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: <shao.mingyin@zte.com.cn>
Cc: <jckuo@nvidia.com>,  <vkoul@kernel.org>,  <kishon@kernel.org>,
  <linux-phy@lists.infradead.org>,  <linux-kernel@vger.kernel.org>,
  <thierry.reding@gmail.com>,  <jonathanh@nvidia.com>,
  <linux-tegra@vger.kernel.org>,  <yang.yang29@zte.com.cn>,
  <xu.xin16@zte.com.cn>,  <ye.xingchen@zte.com.cn>,  <xie.ludan@zte.com.cn>
Subject: Re: [PATCH 1/2] phy: marvell: a3700-comphy:
 =?utf-8?Q?Use=C2=A0devm=5Fplatform=5Fioremap=5Fresource=5Fbyname?=
In-Reply-To: <20250401193836885cYSO33OlICvYYYmEMlB5J@zte.com.cn> (shao
	mingyin's message of "Tue, 1 Apr 2025 19:38:36 +0800 (CST)")
References: <20250401193836885cYSO33OlICvYYYmEMlB5J@zte.com.cn>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Tue, 01 Apr 2025 14:31:52 +0200
Message-ID: <87cydwt64n.fsf@bootlin.com>
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddukedvjeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhephffvvefujghffgffkfggtgfgsehtqhertddtreejnecuhfhrohhmpefoihhquhgvlhcutfgrhihnrghluceomhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepffeghfejtdefieeguddukedujeektdeihfelleeuieeuveehkedvleduheeivdefnecukfhppeelvddrudekgedruddutddrudelfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeelvddrudekgedruddutddrudelfedphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomhepmhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepudefpdhrtghpthhtohepshhhrghordhmihhnghihihhnseiithgvrdgtohhmrdgtnhdprhgtphhtthhopehjtghkuhhosehnvhhiughirgdrtghomhdprhgtphhtthhopehvkhhouhhlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkihhshhhonheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqphhhhieslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrr
 dhkvghrnhgvlhdrohhrghdprhgtphhtthhopehthhhivghrrhihrdhrvgguihhnghesghhmrghilhdrtghomhdprhgtphhtthhopehjohhnrghthhgrnhhhsehnvhhiughirgdrtghomh
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_053200_821705_3B390E74 
X-CRM114-Status: UNSURE (   3.97  )
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

T24gMDEvMDQvMjAyNSBhdCAxOTozODozNiArMDgsIDxzaGFvLm1pbmd5aW5AenRlLmNvbS5jbj4g
d3JvdGU6Cgo+IEZyb206IFhpZSBMdWRhbiA8eGllLmx1ZGFuQHp0ZS5jb20uY24+Cj4KPiBJbnRy
b2R1Y2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZSgpIHRvIHNpbXBsaWZ5
IHJlc291cmNlCj4gcmV0cmlldmFsIGFuZCBtYXBwaW5nLlRoaXMgbmV3IGZ1bmN0aW9uIGNvbnNv
bGlkYXRlcwo+IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUoKSBhbmQgZGV2bV9pb3JlbWFw
X3Jlc291cmNlKCkgaW50bwo+IGEgc2luZ2xlIGNhbGwsIGltcHJvdmluZyBjb2RlIHJlYWRhYmls
aXR5IGFuZCByZWR1Y2luZyBBUEkgY2FsbCBvdmVyaGVhZC4KPgo+IFNpZ25lZC1vZmYtYnk6IFhp
ZSBMdWRhbiA8eGllLmx1ZGFuQHp0ZS5jb20uY24+Cj4gU2lnbmVkLW9mZi1ieTogU2hhbyBNaW5n
eWluIDxzaGFvLm1pbmd5aW5AenRlLmNvbS5jbj4KClJldmlld2VkLWJ5OiBNaXF1ZWwgUmF5bmFs
IDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPgoKVGhhbmtzLApNaXF1w6hsCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
