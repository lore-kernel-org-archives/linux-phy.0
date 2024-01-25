Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86895C48260
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 13:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+1ZO64RJxCEAqyk00+AyR0Qa/Yc1aUBeJLJCq7VBPk=; b=r+Ie7pOpH6pTJn
	vphf5CPIGTDFQmN7HLRiEpyiONW1l8+JGPhstXylAQlzkxee6Y11XpyAPRW7lACiwiWcIPMNE/5/r
	sIF19voJ+F6bWtvZVXeCRvHMyrrRhuGOyBj6X/ZnoTN9k745Cs7eOauY71fJN5YusvnjFYAILGamp
	ptOnRXdbVwYjDcaA4qm+z4MoD+7qSq+7WvF1jRrEPYnc87PGy+vaUQy9+9oG1BayaBvA49T7FiDo8
	eizUlPa20sqvnGK2QGKucG/aI0KNvnxCBll7fvhBvHCjEPROhwDsdgZTqsKUF/O6T81Q4z/F8d2r6
	WcDzAGDD7U418b7lBgaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSzqQ-000000003DR-47vv;
	Thu, 25 Jan 2024 13:32:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSzqN-000000003Au-3NZy
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 13:32:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B7627621C4;
	Thu, 25 Jan 2024 13:32:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED323C43390;
	Thu, 25 Jan 2024 13:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706189554;
	bh=KxLZlbCo3u1vof5nxjef2s7Hno6q6TkxdPQGhqT/7a4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EFpAGx/z7gIAqn0gkdd/exC+5TMy9ncA9amTLW/b6wd/iw1OLhLajYpiIIb2BHgDR
	 RnpKO5X3UO+ejyKlC+LhcotXtpvHWJUSZixm3U7GI05HMyYpWGiRpGEMynYsL+4VLE
	 xF37fiN47+NQLj0mjEQiVGqOm2QzRwnqOdGyWz+ekOMxdWKfS79My8glaEZ99JO9Od
	 /fOaYaoqoGzL/txcXDPVQkpmhUy/JFTIgPvXnklUzGE6aInGsK9d1o3jNgA6UWuMZT
	 nobuHUOGIo0PimuUWmjQH/bBsqZdJDFx1OvhTJe/gGBDxNFWxYjlKL5A+nNjOAzMkL
	 vY9lMZLfKg/Ag==
From: Lee Jones <lee@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-1-73b2da7691c5@linaro.org>
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
 <20240116-usbc-phy-vls-clamp-v1-1-73b2da7691c5@linaro.org>
Subject: Re: (subset) [PATCH 1/6] dt-bindings: mfd: qcom,tcsr: Add
 compatibles for QCM2290 and SM6115
Message-Id: <170618955168.1465157.430419163826466989.b4-ty@kernel.org>
Date: Thu, 25 Jan 2024 13:32:31 +0000
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_053235_907876_6D4E8E66 
X-CRM114-Status: UNSURE (   5.14  )
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

T24gVHVlLCAxNiBKYW4gMjAyNCAwMzowODoyNyArMDIwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90
ZToKPiBBZGQgcWNvbSxxY20yMjkwLXRjc3IgYW5kIHFjb20sc202MTE1LXRjc3IsIGNvbXBhdGli
bGVzIGZvciBUQ1NSIGJsb2Nrcwo+IG9uIHRoZSBjb3JyZXNwb25kaW5nIHBsYXRmb3Jtcy4KPiAK
PiAKCkFwcGxpZWQsIHRoYW5rcyEKClsxLzZdIGR0LWJpbmRpbmdzOiBtZmQ6IHFjb20sdGNzcjog
QWRkIGNvbXBhdGlibGVzIGZvciBRQ00yMjkwIGFuZCBTTTYxMTUKICAgICAgY29tbWl0OiBjZDg0
ZTZiZDMzMWZkNTU2MTE2ZWM0ODg5ZGMyODJiMDdjMzkyZTQyCgotLQpMZWUgSm9uZXMgW+adjueQ
vOaWr10KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
