Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FF14C2BD09
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jul 2024 09:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CcNLFFF2aJrUTGmX1t5HzfuAtyKrngUNrZWTBVn1Rg=; b=vZCITBNmUtx+Z4
	H22MOP79TwO63JeVmr5ZHglSLyLeg/su1TXZnLhwrPOg+lL61BC7NDQkCYGxGwdbVS4q7Q1BTSqCy
	N28OX20+73YDDkpyl1v1XHVU8TRukUSfsbOFNqFE0lCeTjpE7km5J0o4MFnnmsfocO65FowDKvnL8
	x2wQy67GsH19m/8yVudubwaLpEJm2sw0kRgLDzhYKviI/nN2WEnxbmKC6mEUCzhZCBnmIRgxIMNH2
	OPT+H9b8uY1OntgyoWmdgUPPabE2InKRQo1cqEqPZR1UR1fzX9MSD6vVAA0Pva89NXrggreUjpgVJ
	pCmJCFPOqBPXAvXl6+vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSD0V-0000000HCXc-3rqT;
	Fri, 12 Jul 2024 09:56:04 +0000
Received: from mout.web.de ([212.227.15.3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSD0S-0000000HCTa-0bPS;
	Fri, 12 Jul 2024 09:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1720778130; x=1721382930; i=markus.elfring@web.de;
	bh=qA8dZxx5ZAywJE0Ce/DvrSCgak1qKg/qBSRGPZMW8gA=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=dbR6EkqjUFukvLWHaRUTvXDZ9Q3eh2KY+bnr9u0PzwHn8JOXU+2s/bLlAU0nLVe9
	 QvAFPPlYMy/RuXwut44zlkSZ0xzBv5FeQ/LEAsLp2MhVjkOsM2IOGPAC7cAVr9dAK
	 UoCMq5LMERNdaDq6vsLOJ97/1PV8FMtinIrSYNW+2IrFu7yKcIMjjUNLctBZ+Oq+1
	 s9u4qmipSYoPLMlLpF1TZhPZG3T0NK7OU50HjWl4KEh9GysgmBCExnchvh92ppN2y
	 y97jzSqZeZPemiVieJRZ6Idvuxf9PCEe40iY16M5rK6ST4TBgeoPke+jOfwk2+QwO
	 INUGAEyvltYlVPOvQQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.82.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MiuSe-1rpYG625Ei-00aqKn; Fri, 12
 Jul 2024 11:55:30 +0200
Message-ID: <bb82eb1b-e284-45c4-b80f-7bdb65e0449d@web.de>
Date: Fri, 12 Jul 2024 11:55:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Liu Ying <victor.liu@nxp.com>, imx@lists.linux.dev,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 kernel@pengutronix.de
Cc: LKML <linux-kernel@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Francesco Dolcini <francesco@dolcini.it>, Frank Li <Frank.Li@nxp.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>
References: <20240712093243.2108456-10-victor.liu@nxp.com>
Subject: Re: [PATCH v2 09/16] drm/imx: Add i.MX8qxp Display Controller KMS
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240712093243.2108456-10-victor.liu@nxp.com>
X-Provags-ID: V03:K1:x9ykM0EokxdM3FPtkxqlt9BWgSTGc7SN4QMfykDtXMfy4tE/R4V
 VIutO0wDF9pNtFqDiB2Sw/ippBTdON8SV/JXiqxA1GNrH0RlaXK9gPs+v22H8lJRlDFrZYb
 eg/WVdGIfHbFpD7NNh8SnaBSI5Qrdv4LCw8HoDuVRO4NyLTSmzQVpEiuQ4TQ84UTqmKKBCL
 AksP3YqG6upl26uMsoG4Q==
UI-OutboundReport: notjunk:1;M01:P0:cmvPTZFViww=;IPRzr2aMIAI2Eacf50wbgoYbdk5
 TOdtCR+2fvYykEtrSZrVUcSam1mZVyNtKhdnF4hk7dWgpdkejJ2bs+InkkcWWXphjw7vN7DZN
 Aotcw8N015YTbepLD7+93uloalx9djgetGsf1ELc2534uxqcOtZeGcRJt5UfmZNWBbXbnAyka
 geAXRUXxnHONW0Kic+v1ohsrzvxZFcqvTgXD0vXrsxE4hSme/yzlfAXSOaIVS/elAMIFvGC6A
 QzO0IKkcQrXxur/LyOfiv5zmDZJ6t2tYH9W1o7eE8TExFzFVL7g+NzoDOGkFhtG2LFGogPd4U
 IZ9r4lU84oKckhcj+FPv3ezk2tYrXTo4om2BxH6cqdB/LeExUZ6Q1qiDX3b3j38pW4fo+kJlj
 GJtyxvFEwOjFcXOaBsWsFSnUF/Dde4bKFsq5qPjrOzINVBc2xtbdKASuWr4MCxWDFr/DGggof
 +gUR701hj3xIQB8W4YYecYyynry81nAMDZ93ePD6h08My9PEAewu/jSgZumsa1NthBYX0aKEe
 f1A2WDyeclq67htJ4zOPjtq6SL5vzQT8S6NTIQjSUkEVEVEDAeAMyGzfM97lUxgK9op2adFJp
 yBYYzn033Rxe82PAImS+59rZ1HQCSfkqZVIpvaCKC3gbIoVyk0sASyUB0deNpejYtZSmvO+S8
 aaWSd8ckIIwyqtJ0o2jCDyqdRUk17b//UpHyGdVM5NTyE9Od2sJkCO7EPcPg1ZHs9i/dr9kn1
 gkhTdVRhOUtL7HSlfgLYblcS5DrolohfLnnEDDke/+St7e2CBw5M6yc+0CttQ7AvQSlHqdwwk
 CvIIwV8Mh+WKgvGJ80U/In0g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_025600_475915_70E03DC1 
X-CRM114-Status: UNSURE (   5.49  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2lteC9kYy9kYy1jcnRjLmMKPiBAQCAtMCwwICsx
LDU3OCBAQArigKYKPiArc3RhdGljIHZvaWQgZGNfY3J0Y19xdWV1ZV9zdGF0ZV9ldmVudChzdHJ1
Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gK3t0Z2x4QGxpbnV0cm9uaXguZGUK4oCm
Cj4gKwlzcGluX2xvY2tfaXJxKCZjcnRjLT5kZXYtPmV2ZW50X2xvY2spOwo+ICsJaWYgKGNydGNf
c3RhdGUtPmV2ZW50KSB7CuKApgo+ICsJfQo+ICsJc3Bpbl91bmxvY2tfaXJxKCZjcnRjLT5kZXYt
PmV2ZW50X2xvY2spOwo+ICt9CuKApgoKVW5kZXIgd2hpY2ggY2lyY3Vtc3RhbmNlcyB3b3VsZCB5
b3UgYmVjb21lIGludGVyZXN0ZWQgdG8gYXBwbHkgYSBzdGF0ZW1lbnQKbGlrZSDigJxndWFyZChz
cGlubG9ja19pcnEpKCZjcnRjLT5kZXYtPmV2ZW50X2xvY2spO+KAnT8KaHR0cHM6Ly9lbGl4aXIu
Ym9vdGxpbi5jb20vbGludXgvdjYuMTAtcmM3L3NvdXJjZS9pbmNsdWRlL2xpbnV4L3NwaW5sb2Nr
LmgjTDU2NwoKUmVnYXJkcywKTWFya3VzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
