Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 375ACEC047D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 09:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kl+XhCIIh57SZWuf04imWPxAgRQ4AfUr/1cDv2MNFU=; b=LBiLvgjJL7M0Bi
	txpBzX+a2yBnwKhcCeAg8ATNKHdHPWEwntz6pt8WyDLf82Y6K4fDED1t/zMB0p57DbaSgBYRlITx9
	DtPfyjPv11HMQXNrUCvOxdv2boe88bHELHAaTiYNu1tNkoewsd+NCu9IsJRlPnHrXwQIqdzFaZxxo
	eQ/Y9PSyxkLwsKFqINjDjED0TFqbzZpQDAlMsAhnAxLIhdeiBrRhJPEhzNcc+yOlAXb7uHPH1J9Z+
	wRg6llIaTs4qlRPx3H1dZp7PyJtA/Tz05HXIyy1rFL0Gtc/G++mObFjmlIZ+J9NY8Mcf+71AsIfiB
	qC93GyMHi52DGOn4ux1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxM5n-0000000Eshe-40LG;
	Tue, 03 Mar 2026 09:31:03 +0000
Received: from mail-4320.protonmail.ch ([185.70.43.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxM5k-0000000EshG-3bwj
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 09:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxsw.ie;
	s=protonmail3; t=1772530254; x=1772789454;
	bh=H4KXmeQvvJ3KsTAtBp7ROQAX3hjn5yTF3s5cCTcIaVw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=SVhuVLk+rFyIa19JWKiXKyxSxqXkdPJooRSXu6MiAMxFHDuBR/6cwAIZoCs9C+BCR
	 HXFfqCS8Lntj/uvpSFxHMyKPj+XuJpCH+NzfNoYXeZqnsIyCGZd3RQBeqCD8zmE2EZ
	 paBy1tjsEPgtSjpAUN+kXOljg4gV/8131StmMSJRUtGKcqvQc8UlqZV6ONntWxGfkZ
	 9VyBXsgS0nxHwFmm3elnH5vzt6Mly4AG7PNEnKsjfIWrbiGQ6jIwG3VU/O3QMjOLBO
	 nfAGKSPsrEo9rV6A1VOTNRY7xVd+qvuZNlK9oLYADVfG5+Inh5+BzaZx3iggXGjg5L
	 56YDgZFWb1siA==
Date: Tue, 03 Mar 2026 09:30:49 +0000
To: Bryan O'Donoghue <bod@kernel.org>, Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
From: Bryan O'Donoghue <bod@nxsw.ie>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
Message-ID: <676e2a9f-d274-40fa-988f-e9388ba40f71@nxsw.ie>
In-Reply-To: <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org> <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org> <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
Feedback-ID: 54899767:user:proton
X-Pm-Message-ID: d2d0447183497777c7bd74fe9f8c31ac32ae5355
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_013101_867832_A9263271 
X-CRM114-Status: UNSURE (   3.34  )
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

T24gMDMvMDMvMjAyNiAwOToyNywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiAtIE1YQSAtIGZp
cnN0IHRpbWUgSSd2ZSBoZWFyZCBvZiB0aGlzIHJhaWwsIGZyb20gbWVtb3J5IEkgZG9uJ3QgcmVt
ZW1iZXIKPiAgwqDCoMKgwqDCoMKgwqAgaGF2aW5nIHNlZW4gdGhpcyBpbiBpcGNhdCB3aGVuIEkg
Y291bGQgZG8gc28uCgpZZWFoIG5vIE1YQSBpc24ndCBhIHJlcXVpcmVkIHZvdGUuCgpodHRwczov
L2xvcmUua2VybmVsLm9yZy9saW51eC1hcm0tbXNtLzlmZjE2NDVmLWIyYzktNGMxYS1hZTJkLTk2
YWY0MTZiMDhkOUBvc3MucXVhbGNvbW0uY29tLwoKLS0tCmJvZAoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
