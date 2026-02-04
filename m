Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F3D4E95367
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 09:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FH5j7xkBD/YmIL5p7eV7Ve38aUDPhUFOxI6FPcBaFiA=; b=4IrGdVOB+JaB9b
	iU6IT5+swPZtHFoLGABY2xyJzUwhPDXPrTzMrGC0eNA6MFHUcCVGJ6B7IsVIqfLcoyOX2g0RHoskR
	jZxzkD6BVwkKgNzsbfi11jFa9YBO6HC54fwIIMDC4aR6jkE45KQ5crHkUOsV2YwbZ/cYejvecoc7H
	pWANVNPYNg8sAcDzblFNa17CjUS9K8ikdYXYXkSW/hxVzSi1Q97mGYoHATwfsyoFNT+7Z6cpfi8iK
	BZEr3HeQklLzM4Tp82vwG2mPTFlXES+yUOa85IGeeknNvPvBbBfKvVar0+QpcV5ea6SjH7W/+T7Bi
	RkJymVAZhPV6snLk/ZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnZIV-00000008Da3-2RrG;
	Wed, 04 Feb 2026 09:35:43 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnZIS-00000008DZY-0wXg
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 09:35:42 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 37E034E423D9;
	Wed,  4 Feb 2026 09:35:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F111160745;
	Wed,  4 Feb 2026 09:35:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 62843119A88F7;
	Wed,  4 Feb 2026 10:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770197733; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=jf4RgzlGdwbUlzDUpBSHMOUi07m+ktoWuB1ArPzud1s=;
	b=gI/B9DSiD6lHoSUUDety76BjmYRcoVrTdad7OK55xLgm9VECyd9yLcCSJfjEWVongW5vHU
	RVB/mmg3SdU526tmo7jeUa7rGi2NU9M6fkDWYiyYB/skpem+AnO9UqdnYzOlJJb+wl29iC
	RI4RUKnAr16Vl0dnEITApJuiAvK/+gc6Beo/DXjMbIiL0dmYgDh7yVUKd0wSj1t1e1nAYE
	LZxhC7Es54T1lRSIVnuwGGRx6iItGi+3wzPbNdzd7yTJjxF2IFyETnPRMZk0QbZhGeaDw/
	fkTbomwvIiTeYgZha5Zv2HudnPMw5xeegeO1m/fZC8Mu3OnqGT3OLBTAky4Pfg==
Mime-Version: 1.0
Date: Wed, 04 Feb 2026 10:35:27 +0100
Message-Id: <DG62Q1L5RK1Y.22BS02J31LJV4@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v6 0/8] Add generic PHY driver used by MACB/GEM on EyeQ5
Cc: <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>, "Conor Dooley" <conor.dooley@microchip.com>,
 "Jerome Brunet" <jbrunet@baylibre.com>, "Andrew Lunn" <andrew@lunn.ch>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vladimir
 Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>, "Neil Armstrong" <neil.armstrong@linaro.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
In-Reply-To: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_013540_417502_55BAD99D 
X-CRM114-Status: UNSURE (   4.85  )
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

T24gVHVlIEphbiAyNywgMjAyNiBhdCA2OjA5IFBNIENFVCwgVGjDqW8gTGVicnVuIHdyb3RlOgo+
IEV5ZVE1IFNvQ3MgaW50ZWdyYXRlIHR3byBHRU0gaW5zdGFuY2VzLiBBIHN5c3RlbS1jb250cm9s
bGVyIHJlZ2lzdGVyCj4gcmVnaW9uIG5hbWVkICJPTEIiIGhhcyBzb21lIGNvbnRyb2wgb3ZlciB0
aGUgRXRoZXJuZXQgUEhZIGludGVncmF0aW9uLgoKSXMgdGhlIHBsYW4gdG8gdGFrZSB0aGlzIGZv
ciB0aGUgdjYuMjAgbWVyZ2Ugd2luZG93IG9yIGF3YWl0IHY3LjA/ClRoZSBkcml2ZXIgaGFzIHNl
bGRvbSBjaGFuZ2VkIHNpbmNlIGl0cyBmaXJzdCByZXZpc2lvbiAzIG1vbnRocyBhZ28uCgpUaGFu
a3MhCkhhdmUgYSBuaWNlIGRheSwKCi0tClRow6lvIExlYnJ1biwgQm9vdGxpbgpFbWJlZGRlZCBM
aW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
